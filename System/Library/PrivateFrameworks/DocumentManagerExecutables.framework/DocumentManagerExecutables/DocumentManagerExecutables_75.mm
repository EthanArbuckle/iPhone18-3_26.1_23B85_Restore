void closure #1 in UIBarButtonItem.configureOverflowRepresentationAsInlineMenu()(void (*a1)(unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong menu], v3, v4))
  {
    v5 = [v4 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      if (__CocoaSet.count.getter() >= 1)
      {
        goto LABEL_5;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_5:
      a1(v6);

      return;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2493AC000, v12, v13, "ERROR: attempt represent in overflow as inline menu elements, but no menu elements present", v14, 2u);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    a1(MEMORY[0x277D84F90]);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2493AC000, v8, v9, "ERROR: attempt represent in overflow as inline menu elements, but no menu present", v10, 2u);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    a1(MEMORY[0x277D84F90]);
  }
}

id DOCItemCollectionViewController.currentLocationIsWritable.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isWritable];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t DOCItemCollectionViewController.moveCancelButtonToLeadingButtons.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  result = [v1 isPickerUI];
  if (result)
  {
    v3 = [v0 splitViewController];
    if (v3 && (v4 = v3, v5 = [v3 doc_splitViewState], v4, LOBYTE(v4) = objc_msgSend(v5, sel_isSidebarShown), v5, (v4 & 1) != 0))
    {
      return 0;
    }

    else if ([v1 forPickingFolders])
    {
      return 1;
    }

    else
    {
      return [v1 forSavingDocuments];
    }
  }

  return result;
}

id DOCItemCollectionViewController.selectAllButton(forItemGroup:)(char a1)
{
  if (![v1 isEditing])
  {
    return 0;
  }

  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x148))())
  {
    return 0;
  }

  v4 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  if (DOCUsePadIdiomForTraits())
  {
    v5 = [v4 horizontalSizeClass];

    if (v5 == 2)
    {
      if (!a1)
      {
        return 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (a1)
  {
    return 0;
  }

LABEL_10:
  v7 = (*((*v3 & *v1) + 0x1338))();
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = (*((*v3 & *v1) + 0xEE8))(v9);
  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < v11)
  {
    return DOCItemCollectionViewController.selectAllButton.getter();
  }

  if (v11 < 1)
  {
    return 0;
  }

  return DOCItemCollectionViewController.deselectAllButton.getter();
}

uint64_t DOCItemCollectionViewController.actionButtons(for:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
  v6 = *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v7 = v6;

  if (v6)
  {
    v8 = [v7 isiCloudDriveProvider];
  }

  else
  {
    v8 = 0;
  }

  v9 = (*((*v4 & *v2) + 0x1338))();
  v10 = DOCActionManager.navigationBarActions(for:with:currentLocationSupportsVersioning:currentConfiguration:)(a1, v9, v8, *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration));

  v11 = *(v10 + 16);
  if (v11)
  {
    v21 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v13 = 0;
    v14 = (v10 + 40);
    while (v13 < *(v10 + 16))
    {
      ++v13;
      v15 = *(v14 - 1);
      v16 = *v14;
      v14 += 16;
      v20[3] = type metadata accessor for DOCItemCollectionViewController(0);
      v20[0] = v2;
      v17 = v15;
      v18 = v2;
      v19 = specialized static UIDocumentBrowserActionBarButton.button(from:target:selector:)(v17, v20, sel_actionBarButtonTriggeredWithActionBarButton_);
      __swift_destroy_boxed_opaque_existential_0(v20);
      [v19 setEnabled_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v11 == v13)
      {

        return v21;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t DOCItemCollectionViewController.selectModeDoneButtonPosition.getter()
{
  if (DOCItemCollectionViewController.useCompactBarOverlayLayout()())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t appendSelectModeIfNecessary #1 (to:) in DOCItemCollectionViewController.createTrailingButtons()(void *a1, char *a2)
{
  if ([a2 isEditing])
  {
    v4 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *a2) + 0x148))() & 1) == 0 && !DOCItemCollectionViewController.useCompactBarOverlayLayout()())
    {
      v5 = (*((*v4 & *a2) + 0x1908))();
      v7 = (*(*v5 + 192))(v32);
      v8 = *(v6 + 8);
      if (!v8)
      {
        v17 = v6;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v19 = static UIBarButtonItem.doc_endEditingModeButton(withAction:)(v18);

        v20 = *(v17 + 8);
        *(v17 + 8) = v19;
        v21 = v19;

        type metadata accessor for DOCBarButtonItemGroup();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_249BA0290;
        *(v22 + 32) = v21;
        v23 = v21;
        v24 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

        v25 = *v17;
        *v17 = v24;

        v8 = 0;
      }

      v26 = v8;
      v7(v32, 0);

      MEMORY[0x24C1FB090](v27);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v28 = DOCItemCollectionViewController.actionButtons(for:)(2);
    return specialized Array.append<A>(contentsOf:)(v28);
  }

  v9 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  if ([v9 isPickerUI])
  {
    result = [v9 forPickingDocuments];
    if (!result)
    {
      return result;
    }

    result = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
    if (!result)
    {
      return result;
    }
  }

  v11 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *a2) + 0x968))() != 1)
  {
    result = DOCItemCollectionViewController.useCompactBarOverlayLayout()();
    if (result)
    {
      return result;
    }

    v12 = DOCItemCollectionViewController.selectButton.getter();
    v32[3] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v32[0] = v12;
    v13 = (*((*v11 & *a2) + 0xCB8))();
    if (v13 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    outlined init with copy of Any(v32, v31);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarItem);
    if (swift_dynamicCast() || (outlined init with copy of Any(v32, v31), type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIControl), (swift_dynamicCast() & 1) != 0))
    {
      v15 = v14 != 0;
      v16 = v30;
      [v30 setEnabled_];
    }

    else
    {
      outlined init with copy of Any(v32, v31);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      if (!swift_dynamicCast())
      {
        goto LABEL_19;
      }

      v29 = v14 == 0;
      v16 = v30;
      [v30 setAttributes_];
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v32);
    DOCItemCollectionViewController.selectButton.getter();
    goto LABEL_20;
  }

  DOCItemCollectionViewController.multiselectActionStatusPendingIndicatorButton(ensureAnimating:)(1);
LABEL_20:
  MEMORY[0x24C1FB090]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

Swift::Bool __swiftcall DOCItemCollectionViewController.shouldShowSelectionButton()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (![v1 isPickerUI])
  {
    goto LABEL_5;
  }

  LODWORD(v2) = [v1 forPickingDocuments];
  if (v2)
  {
    v2 = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
    if (v2)
    {

LABEL_5:
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

id DOCItemCollectionViewController.multiselectActionStatusPendingIndicatorButton(ensureAnimating:)(char a1)
{
  v3 = *(*((*MEMORY[0x277D85000] & *v1) + 0x1908))();
  v5 = (*(v3 + 384))(v18);
  v6 = *(v4 + 8);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = v4;
    v9 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v10 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

    v11 = *(v8 + 8);
    *(v8 + 8) = v10;
    v12 = v10;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249BA0290;
    *(v13 + 32) = v12;
    v7 = v12;
    v14 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v15 = *v8;
    *v8 = v14;
  }

  v5(v18, 0);

  if ((a1 & 1) == 0)
  {
    return v7;
  }

  result = [v7 customView];
  if (result)
  {
    v17 = result;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() startAnimating];

    return v7;
  }

  __break(1u);
  return result;
}

id DOCItemCollectionViewController.selectButton.getter()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v3 = (*(v1 + 288))(v32);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
LABEL_5:
    v30 = v4;
    v3(v32, 0);

    return v5;
  }

  v6 = v2;
  result = _DocumentManagerBundle();
  if (result)
  {
    v8 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    swift__string._object = 0x8000000249C015E0;
    v9._countAndFlagsBits = 0x5B207463656C6553;
    v9._object = 0xED00005D756E656DLL;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 0x7463656C6553;
    v11._object = 0xE600000000000000;
    swift__string._countAndFlagsBits = 0xD000000000000027;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, swift__string);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v33.value.super.isa = 0;
    UIBarButtonItem.init(title:image:primaryAction:menu:)(v13, 0, v33, 0, v12);
    v15 = v14;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_249BA0290;
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.selectButton.getter;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_121;
    v19 = _Block_copy(aBlock);

    v20 = [v17 elementWithUncachedProvider_];
    _Block_release(v19);
    *(preferredElementSize + 32) = v20;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v34.value.super.isa = 0;
    v34.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, v21, 0, v34, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
    v24 = v23;
    [v15 setMenuRepresentation_];

    v25 = *(v6 + 8);
    *(v6 + 8) = v15;
    v26 = v15;

    type metadata accessor for DOCBarButtonItemGroup();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_249BA0290;
    *(v27 + 32) = v26;
    v5 = v26;
    v28 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v29 = *v6;
    *v6 = v28;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

BOOL appendSelectAllButtonIfNecessary #1 (to:spacer:) in DOCItemCollectionViewController.createTrailingButtons()(void *a1, void *a2)
{
  v4 = DOCItemCollectionViewController.selectAllButton(forItemGroup:)(1);
  if (v4)
  {
    if (a2)
    {
      v5 = a2;
      MEMORY[0x24C1FB090]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v6 = v4;
    MEMORY[0x24C1FB090]();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return v4 != 0;
}

uint64_t specialized Array.split(prefixMaxLength:)(unint64_t a1, uint64_t a2)
{
  v9 = a2;
  v10 = a2 >> 62;
  if (!(a2 >> 62))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
        v3 = a1;
      }

      else
      {
        v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_6;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (a2 < 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = a1;
  v31 = __CocoaSet.count.getter();
  if (v31 < v3)
  {
    v3 = v31;
  }

  if (v3 < 0)
  {
    goto LABEL_72;
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (__CocoaSet.count.getter() < v3)
  {
    __break(1u);
    goto LABEL_72;
  }

LABEL_6:
  v7 = v9 & 0xC000000000000001;
  if ((v9 & 0xC000000000000001) != 0 && v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

    v11 = 0;
    do
    {
      v12 = v11 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v11);
      v11 = v12;
    }

    while (v3 != v12);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!v10)
    {
LABEL_11:
      v2 = 0;
      i = v9 & 0xFFFFFFFFFFFFFF8;
      v13 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v5 = (2 * v3) | 1;
      goto LABEL_15;
    }
  }

  i = _CocoaArrayWrapper.subscript.getter();
  v2 = v14;
  v5 = v15;
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v8 = v13;
  v6 = type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v5 >> 1, v2))
  {
    goto LABEL_77;
  }

  if (v18 != (v5 >> 1) - v2)
  {
    goto LABEL_78;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v19 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v10)
  {
    goto LABEL_24;
  }

LABEL_21:
  for (i = *(v19 + 16); ; i = __CocoaSet.count.getter())
  {
    if (i >= v3)
    {
      v20 = v3;
    }

    else
    {
      v20 = i;
    }

    if (i < 0)
    {
      v20 = v3;
    }

    if (v3)
    {
      v3 = v20;
    }

    else
    {
      v3 = 0;
    }

    if (i < v3)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v10)
    {
      if (v9 < 0)
      {
        v5 = v9;
      }

      else
      {
        v5 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      if (__CocoaSet.count.getter() < v3)
      {
        goto LABEL_74;
      }

      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 < v3)
      {
        goto LABEL_74;
      }
    }

    if (v21 >= i)
    {
      break;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_unknownObjectRelease();
    v13 = v8;
LABEL_14:
    specialized _copyCollectionToContiguousArray<A>(_:)(i, v13, v2, v5);
    v2 = v16;
LABEL_23:
    swift_unknownObjectRelease();
    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (!v10)
    {
      goto LABEL_21;
    }

LABEL_24:
    ;
  }

  if (i < 0)
  {
    goto LABEL_76;
  }

  if (!v7 || v3 == i)
  {

    if (!v10)
    {
      goto LABEL_51;
    }

LABEL_54:

    v9 = _CocoaArrayWrapper.subscript.getter();
    v3 = v25;
    i = v26;
    if (v26)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v3 >= i)
  {
    __break(1u);
    goto LABEL_79;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

  v22 = v3;
  do
  {
    v23 = v22 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v23;
  }

  while (i != v23);
  if (v10)
  {
    goto LABEL_54;
  }

LABEL_51:
  v9 &= 0xFFFFFFFFFFFFFF8uLL;
  v24 = v9 + 32;
  i = (2 * i) | 1;
  if ((i & 1) == 0)
  {
LABEL_55:
    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v24, v3, i);
    goto LABEL_61;
  }

LABEL_56:
  v6 = v24;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(i >> 1, v3))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v28 != (i >> 1) - v3)
  {
LABEL_80:
    swift_unknownObjectRelease();
    v24 = v6;
    goto LABEL_55;
  }

  v29 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v29)
  {
LABEL_61:
    swift_unknownObjectRelease();
  }

  return v2;
}

Swift::tuple_prefix_OpaquePointer_suffix_OpaquePointer __swiftcall Array.split(prefixMaxLength:)(Swift::Int prefixMaxLength)
{
  MEMORY[0x24C1FB170]();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(upTo:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  v1 = Array.init<A>(_:)();

  Collection.dropFirst(_:)();
  v2 = Array.init<A>(_:)();
  v3 = v1;
  result.suffix._rawValue = v2;
  result.prefix._rawValue = v3;
  return result;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.shouldShowDisplayModePicker()()
{
  v1 = [objc_opt_self() modernToolbar];
  v2 = [v1 isEnabled];

  if (!v2 || ![v0 isEditing])
  {
    return 1;
  }

  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x148);

  return v3();
}

id DOCItemCollectionViewController.displayModeButton.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *(*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v4 = (*(v2 + 336))(v17);
  v5 = *(v3 + 8);
  if (v5)
  {
    v6 = *(v3 + 8);
  }

  else
  {
    v7 = v3;
    v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:0 style:0 target:0 action:0];
    v9 = (*((*v1 & *v0) + 0xBD8))();
    specialized DOCItemCollectionViewController.applyDisplayMode(_:toMenuButton:)(v9, v8);
    v10 = *(v7 + 8);
    *(v7 + 8) = v8;
    v11 = v8;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249BA0290;
    *(v12 + 32) = v11;
    v6 = v11;
    v13 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v14 = *v7;
    *v7 = v13;

    v5 = 0;
  }

  v15 = v5;
  v4(v17, 0);

  return v6;
}

uint64_t DOCItemCollectionViewController.newFolderBarItemAvailability.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v2 isPickerUI] && (objc_msgSend(v2, sel_forSavingDocuments) & 1) == 0 && !objc_msgSend(v2, sel_forPickingFolders) || DOCItemCollectionViewController.useCompactBarOverlayLayout()())
  {
    return 2;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  v5 = (*((*v3 & *v0) + 0xA68))();
  v6 = [v0 isEditing];
  v7 = [objc_opt_self() modernToolbar];
  v8 = [v7 isEnabled];

  if (v8 && v6)
  {
    goto LABEL_7;
  }

  if (((*((*v3 & *v1) + 0xF18))() & 1) == 0)
  {
    if (v4)
    {
      v16 = v6 ^ 1;
      v11 = v4;
      goto LABEL_16;
    }

LABEL_20:

    return 2;
  }

  (*((*v3 & *v1) + 0xA50))(v18);
  v9 = v19;
  v10 = v19;
  outlined destroy of DOCItemCollectionConfiguration(v18);
  if (!v9)
  {
LABEL_7:

LABEL_8:
    swift_unknownObjectRelease();
    return 2;
  }

  v11 = [v10 node];

  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_20;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = DOCNode.sourceIdentifier.getter();
  DOCItemCollectionViewController.getSource(for:)(v13, v12);
  v15 = v14;

  swift_unknownObjectRelease();
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = 0;
  v5 = v15;
LABEL_16:
  swift_getObjectType();
  if (![v11 isFolder])
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  DOCNode.newFolderButtonMode(for:)(v5, v18);
  swift_unknownObjectRelease();

  if (LOBYTE(v18[0]) != 2)
  {
    return v18[0] & v16 & 1;
  }

  return 2;
}

uint64_t DOCItemCollectionViewController.newDocumentBarItemAvailability.getter()
{
  if (([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forMovingDocuments] & 1) == 0 && (!objc_msgSend(v0, sel_enclosedInUIPDocumentLanding) || !objc_msgSend(v0, sel_enclosingDocumentLandingMode)))
  {
    v1 = [v0 effectiveAppearance];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 showsCreateButton];

      if (v3)
      {
        if (([objc_opt_self() _UIPTabInfrastructureEnabled] & 1) != 0 || (objc_msgSend(v0, sel_isEditing) & 1) == 0)
        {
          if (([v0 isEditing] & 1) == 0)
          {
            v5 = MEMORY[0x277D85000];
            v6 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
            if (v6)
            {
              v7 = v6;
              v8 = *MEMORY[0x277CC6028];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_249BA0290;
              *(inited + 32) = v7;
              swift_unknownObjectRetain();
              LOBYTE(v8) = specialized static DOCActionManager.canPerform(_:on:)(v8, inited);
              swift_setDeallocating();
              swift_arrayDestroy();
              if (v8)
              {
                v10 = [v7 isTrashed];
                swift_unknownObjectRelease();
                v11 = v10 ^ 1;
                return v11 & 1;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              (*((*v5 & *v0) + 0xA50))(v20);
              v12 = v21;
              v13 = v21;
              outlined destroy of DOCItemCollectionConfiguration(v20);
              if (v12)
              {
                v14 = v13;
                v15 = [v14 sourceIdentifier];
                v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v18 = v17;
                if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
                {
                  v11 = 1;
                }

                else
                {
                  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                return v11 & 1;
              }
            }
          }

          v11 = 0;
          return v11 & 1;
        }
      }
    }
  }

  return 2;
}

id DOCItemCollectionViewController.newFolderButton.getter()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v3 = (*(v1 + 264))(v15);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = closure #1 in DOCItemCollectionViewController.newFolderButton.getter(v0);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
    v9 = v7;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249BA0290;
    *(v10 + 32) = v9;
    v5 = v9;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = *v6;
    *v6 = v11;

    v4 = 0;
  }

  v13 = v4;
  v3(v15, 0);

  return v5;
}

id DOCItemCollectionViewController.legacyOverflowButton.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = *(v1 + 136);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for DOCLegacyOverflowBarButtonItem()) init];
    *(v1 + 136) = v4;
    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249BA0290;
    *(v5 + 32) = v4;
    v3 = v4;
    v6 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v7 = *(v1 + 128);
    *(v1 + 128) = v6;

    v2 = 0;
  }

  swift_endAccess();
  v8 = v2;

  return v3;
}

id DOCItemCollectionViewController.createDocumentButton.getter()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v3 = (*(v1 + 312))(v15);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = closure #1 in DOCItemCollectionViewController.createDocumentButton.getter(v0);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;
    v9 = v7;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249BA0290;
    *(v10 + 32) = v9;
    v5 = v9;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = *v6;
    *v6 = v11;

    v4 = 0;
  }

  v13 = v4;
  v3(v15, 0);

  return v5;
}

id DOCItemCollectionViewController.pickerIsLoadingIndicatorItem.getter()
{
  v1 = *(*((*MEMORY[0x277D85000] & *v0) + 0x1908))();
  v3 = (*(v1 + 408))(v16);
  v4 = *(v2 + 8);
  if (v4)
  {
    v5 = *(v2 + 8);
  }

  else
  {
    v6 = v2;
    v7 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

    v9 = *(v6 + 8);
    *(v6 + 8) = v8;
    v10 = v8;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_249BA0290;
    *(v11 + 32) = v10;
    v5 = v10;
    v12 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v13 = *v6;
    *v6 = v12;

    v4 = 0;
  }

  v14 = v4;
  v3(v16, 0);

  return v5;
}

void closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(unint64_t a1, void *a2)
{
  v72 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v71 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v69 = v14;
    v19 = (*((*MEMORY[0x277D85000] & *Strong) + 0xAE8))();
    if (v19)
    {
      v70 = v18;
      v20 = v19;
      v21 = [v19 effectiveFullBrowser];

      v67 = v21;
      if (!v21)
      {

        return;
      }

      v59 = v13;
      v60 = v12;
      v63 = v8;
      v66 = swift_allocObject();
      *(v66 + 16) = a1;
      *&aBlock = MEMORY[0x277D84F90];
      v65 = v3;
      v64 = v4;
      v62 = v7;
      v61 = v9;
      if (a1 >> 62)
      {
LABEL_27:
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      v68 = MEMORY[0x277D84F90];
      v24 = v70;
      while (v22 != v23)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x24C1FC540](v23, a1);
        }

        else
        {
          if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v25 = *(a1 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v28 = [v25 node];

        ++v23;
        if (v28)
        {
          MEMORY[0x24C1FB090]();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v68 = aBlock;
          v23 = v27;
        }
      }

      v29 = type metadata accessor for DOCRelatedNodeMatcher();
      v30 = *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
      v31 = *&v24[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
      outlined init with copy of Any?(v72, v79);
      outlined init with copy of Any?(v79, v78);
      v32 = swift_allocObject();
      v33 = v66;
      v34 = v68;
      *(v32 + 16) = v66;
      *(v32 + 24) = v34;
      v35 = v67;
      *(v32 + 32) = v67;
      v36 = v79[1];
      *(v32 + 40) = v79[0];
      *(v32 + 56) = v36;
      swift_retain_n();
      v37 = v31;

      v38 = v35;
      if ([v37 supportsRelatedFilesInPicker])
      {

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v39 = *MEMORY[0x277D851B8];
        v72 = v38;
        v40 = v69;
        v41 = v29;
        v42 = v71;
        v43 = v34;
        v44 = v59;
        (*(v69 + 104))(v71, v39, v59);
        v45 = static OS_dispatch_queue.global(qos:)();
        v67 = v37;
        v46 = v45;
        (*(v40 + 8))(v42, v44);
        v47 = swift_allocObject();
        v47[2] = v30;
        v47[3] = v43;
        v47[4] = v41;
        v47[5] = partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter;
        v47[6] = v32;
        v76 = partial apply for closure #1 in static DOCRelatedNodeMatcher.findRelatedNodes(for:currentNodeCollection:configuration:completion:);
        v77 = v47;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v75 + 1) = &block_descriptor_154_0;
        v48 = _Block_copy(&aBlock);
        v49 = v30;

        v50 = v60;
        static DispatchQoS.unspecified.getter();
        v73 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v51 = v62;
        v52 = v65;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v50, v51, v48);
        _Block_release(v48);

        (*(v64 + 8))(v51, v52);
        (*(v61 + 8))(v50, v63);
        outlined destroy of CharacterSet?(v78, &_sypSgMd);

        return;
      }

      Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(MEMORY[0x277D84F90]);

      if (Available >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        v54 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v54 = Available;
      }

      v18 = v70;
      outlined init with copy of Any?(v78, &aBlock);
      v55 = swift_allocObject();
      *(v55 + 16) = v33;
      *(v55 + 24) = v34;
      *(v55 + 32) = Available;
      *(v55 + 40) = v38;
      v56 = v75;
      *(v55 + 48) = aBlock;
      *(v55 + 64) = v56;

      v57 = v38;
      specialized static DOCActionManager.resolve(_:completionBlock:)(v54, partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter, v55);

      outlined destroy of CharacterSet?(v78, &_sypSgMd);
    }
  }
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(a1);

  if (Available >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v10 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v10 = Available;
  }

  outlined init with copy of Any?(a5, v15);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = Available;
  *(v11 + 40) = a4;
  v12 = v15[1];
  *(v11 + 48) = v15[0];
  *(v11 + 64) = v12;

  v13 = a4;
  specialized static DOCActionManager.resolve(_:completionBlock:)(v10, closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getterpartial apply, v11);
}

uint64_t closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v10);
  swift_endAccess();
  Available = specialized Array<A>.fpfs_syncFetchAvailableFPItems()(a3);

  specialized Array.append<A>(contentsOf:)(v11);
  v12 = Available;
  outlined init with copy of Any?(a6, v17);
  v13 = swift_allocObject();
  v14 = v17[1];
  *(v13 + 16) = v17[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = a5;
  *(v13 + 56) = a2;
  v15 = a5;

  specialized DOCFullDocumentManagerViewController.download(items:completion:)(v12, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter, v13);
}

void closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a3;
    v7 = a1;
    v8 = a3;
    DOCRunInMainThread(_:)();

    $defer #1 () in closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(a2);
  }

  else
  {
    v9 = objc_opt_self();
    swift_beginAccess();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCItemBookmark);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v9 documentsURLsForItemBookmarks_];

    type metadata accessor for URL();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = v12;
    v14 = a3;
    DOCRunInMainThread(_:)();

    $defer #1 () in closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(a2);
  }
}

void $defer #1 () in closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (v7)
  {
    type metadata accessor for DOCActionContext();
    if (swift_dynamicCast())
    {
      v1 = *&v5[OBJC_IVAR___DOCActionContext_presentingViewController];
      type metadata accessor for DOCItemCollectionViewController(0);
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        v3 = *((*MEMORY[0x277D85000] & *v2) + 0x970);
        v4 = v1;
        v3(2);
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v6, &_sypSgMd);
  }
}

void closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(uint64_t a1)
{
  if (a1)
  {
    v1 = _convertErrorToNSError(_:)();
    DOCPresentAlertForError();
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.multiSelectionOpenAction.getter(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      type metadata accessor for URL();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v3 documentBrowser:a1 didPickDocumentsAtURLs:isa];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id floatingBarLayoutRulesWidth #1 () in DOCItemCollectionViewController.useCompactBarOverlayLayout()(void *a1)
{
  v2 = [a1 splitViewController];
  if (!v2 || (v3 = v2, v4 = [v2 doc_splitViewState], v3, LOBYTE(v3) = objc_msgSend(v4, sel_isSidebarShown), v4, (v3 & 1) == 0))
  {
    if ([a1 enclosingTabSwitcherStyle] == 2)
    {
      goto LABEL_7;
    }
  }

  if ([objc_opt_self() _UIPTabInfrastructureEnabled])
  {
    result = [a1 splitViewController];
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = [result doc_splitViewState];

    LODWORD(v6) = [v7 isSidebarShownInOverlay];
    if (v6)
    {
LABEL_7:
      v8 = [a1 viewIfLoaded];
      if ((*((*MEMORY[0x277D85000] & *a1) + 0xBD8))() == 3)
      {
        if (!v8)
        {
          return 0;
        }

        v9 = [v8 window];

        v8 = v9;
        if (!v9)
        {
          return 0;
        }

LABEL_13:
        [v8 bounds];
        Width = CGRectGetWidth(v11);

        return *&Width;
      }

      if (v8)
      {
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t DOCItemCollectionViewController.userToggledSelectionMode()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x190))(0xD000000000000014, 0x8000000249C015C0);
  v3 = [v0 isEditing] ^ 1;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  v5 = *((*v1 & *v0) + 0xBB8);
  v6 = v0;

  v8 = v5(v7);
  if (v8)
  {
    v9 = *((*v1 & *v8) + 0x360);
    v10 = v8;

    v9(partial apply for closure #1 in DOCItemCollectionViewController.userToggledSelectionMode(), v4, 1);
  }

  else
  {
    v11 = (*((*v1 & *v6) + 0xE8))();
    if (v11)
    {
      [v11 didToggleEditStateWithEditing:v3 in:v6];
      swift_unknownObjectRelease();
    }

    (*(*v2 + 160))([v6 setEditing:v3 animated:1]);
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.userToggledSelectionMode()(void *a1, char a2, uint64_t a3)
{
  v6 = (*((*MEMORY[0x277D85000] & *a1) + 0xE8))();
  if (v6)
  {
    [v6 didToggleEditStateWithEditing:a2 & 1 in:a1];
    swift_unknownObjectRelease();
  }

  return (*(*a3 + 160))([a1 setEditing:a2 & 1 animated:1]);
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.toggleSelectModeButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 184);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.toggleSelectModeButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.toggleSelectModeButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.selectAllButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 208);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.selectAllButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.selectAllButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.deselectAllButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 232);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.deselectAllButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.deselectAllButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.newFolderButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 256);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.newFolderButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.newFolderButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.selectButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 280);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.selectButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.selectButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.createDocumentButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 304);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.createDocumentButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.createDocumentButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.displayModeButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 328);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.displayModeButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.displayModeButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.multiselectActionStatusPendingIndicatorButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 376);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.multiselectActionStatusPendingIndicatorButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.multiselectActionStatusPendingIndicatorButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.pickerIsLoadingIndicatorItem : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 400);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.pickerIsLoadingIndicatorItem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.pickerIsLoadingIndicatorItem.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t key path setter for DOCItemCollectionViewController.BBIStorage.saveButton : DOCItemCollectionViewController.BBIStorage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 424);
  v5 = v3;
  v6 = v2;
  return v4(v2, v3);
}

void *DOCItemCollectionViewController.BBIStorage.saveButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = v1;
  v4 = v2;
  return v1;
}

void DOCItemCollectionViewController.BBIStorage.saveButton.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 176);
  v6 = *(v2 + 184);
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

double DOCItemCollectionViewController.BBIStorage.init()()
{
  result = 0.0;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

void DOCItemCollectionViewController.BBIStorage.__ivar_destroyer()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  v5 = *(v0 + 88);

  v6 = *(v0 + 104);
  v7 = *(v0 + 120);

  v8 = *(v0 + 136);
  v9 = *(v0 + 152);

  v10 = *(v0 + 168);
  v11 = *(v0 + 184);
}

uint64_t DOCItemCollectionViewController.BBIStorage.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  v5 = *(v0 + 88);

  v6 = *(v0 + 104);
  v7 = *(v0 + 120);

  v8 = *(v0 + 136);
  v9 = *(v0 + 152);

  v10 = *(v0 + 168);
  v11 = *(v0 + 184);

  return v0;
}

uint64_t DOCItemCollectionViewController.BBIStorage.__deallocating_deinit()
{
  DOCItemCollectionViewController.BBIStorage.deinit();

  return swift_deallocClassInstance();
}

id closure #1 in DOCItemCollectionViewController.selectAllButton.getter(void *a1)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v20._object = 0x8000000249C01480;
    v4._countAndFlagsBits = 0x41207463656C6553;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v4._object = 0xEA00000000006C6CLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0xD000000000000032;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v20);

    v8 = type metadata accessor for DOCItemCollectionViewController(0);
    v19[3] = v8;
    v19[0] = a1;
    v9 = a1;
    v10 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

    if (v8)
    {
      v11 = __swift_project_boxed_opaque_existential_1(v19, v8);
      v12 = *(v8 - 8);
      v13 = MEMORY[0x28223BE20](v11, v11);
      v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v8);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v18 = [v17 initWithTitle:v10 style:0 target:v16 action:{sel_selectAllItems, v19[0]}];

    swift_unknownObjectRelease();
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCItemCollectionViewController.deselectAllButton.getter(void *a1)
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v20._object = 0x8000000249C01440;
    v4._countAndFlagsBits = 0x7463656C65736544;
    v4._object = 0xEC0000006C6C4120;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0xD000000000000034;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v20);

    v8 = type metadata accessor for DOCItemCollectionViewController(0);
    v19[3] = v8;
    v19[0] = a1;
    v9 = a1;
    v10 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

    if (v8)
    {
      v11 = __swift_project_boxed_opaque_existential_1(v19, v8);
      v12 = *(v8 - 8);
      v13 = MEMORY[0x28223BE20](v11, v11);
      v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v8);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v18 = [v17 initWithTitle:v10 style:0 target:v16 action:{sel_deselectAllItems, v19[0]}];

    swift_unknownObjectRelease();
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.selectButton.getter(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = DOCItemCollectionViewController.actionForSelect()();
    if (v4)
    {
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_249BA0290;
      *(v6 + 32) = v5;
      v7 = v5;
      a1(v6);
    }

    else
    {
      a1(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    a1(MEMORY[0x277D84F90]);
  }
}

id DOCItemCollectionViewController.actionForSelect()()
{
  if ([v0 isEditing])
  {
    return 0;
  }

  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  if (![v2 isPickerUI])
  {
LABEL_7:
    result = _DocumentManagerBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v22._object = 0x8000000249C015E0;
    v5._countAndFlagsBits = 0x5B207463656C6553;
    v5._object = 0xED00005D756E656DLL;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7._countAndFlagsBits = 0x7463656C6553;
    v22._countAndFlagsBits = 0xD000000000000027;
    v7._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v3, v7, v22);

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v8;
    v9 = v0;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v11 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BCF180);
    v12 = [objc_opt_self() systemImageNamed_];

    [v10 setImage_];
    v21[3] = v4;
    v21[0] = v10;
    v13 = *((*MEMORY[0x277D85000] & *v9) + 0xCB8);
    v14 = v10;
    v15 = v13();
    if (v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    outlined init with copy of Any(v21, v20);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarItem);
    if (swift_dynamicCast() || (outlined init with copy of Any(v21, v20), type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIControl), (swift_dynamicCast() & 1) != 0))
    {
      v17 = v19;
      [v19 setEnabled_];
    }

    else
    {
      outlined init with copy of Any(v21, v20);
      if (!swift_dynamicCast())
      {
        goto LABEL_14;
      }

      v17 = v19;
      [v19 setAttributes_];
    }

LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v21);
    return v14;
  }

  if (![v2 forPickingDocuments])
  {
    return 0;
  }

  result = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
  if (result)
  {

    goto LABEL_7;
  }

  return result;
}

id closure #1 in DOCItemCollectionViewController.newFolderButton.getter(uint64_t a1)
{
  if (one-time initialization token for symbolImageConfiguration != -1)
  {
    swift_once();
  }

  v2 = static DOCNavButtonMetrics.symbolImageConfiguration;
  v3 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BFD360);
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v4 style:0 target:a1 action:sel_wantsToCreateNewFolder];
  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v13._object = 0x8000000249BFD330;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0x646C6F462077654ELL;
    v10._countAndFlagsBits = 0xD000000000000019;
    v10._object = 0x8000000249BFD310;
    v13._countAndFlagsBits = 0xD000000000000024;
    v9._object = 0xEA00000000007265;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v8, v7, v9, v13);

    v12 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

    [v5 setTitle_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCItemCollectionViewController.createDocumentButton.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = MEMORY[0x24C1FAD20](1937075312, 0xE400000000000000);
  v4 = [v2 __systemImageNamedSwift_];

  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v4 style:0 target:0 action:0];
  [v5 setTarget_];
  [v5 setAction_];
  v6 = v5;
  v7 = [a1 effectiveAppearance];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionCreateButtonTitle];

    if (!v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = MEMORY[0x24C1FAD20](v10);
    }
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle_];

  [v6 setEnabled_];
  [v6 setAccessibilityIdentifier_];

  return v6;
}

id DOCLegacyOverflowBarButtonItem.init()()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = [static DOCInterface.general ellipsisMenuItemImageName];
  if (one-time initialization token for symbolImageConfiguration != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:static DOCNavButtonMetrics.symbolImageConfiguration];

  v9.receiver = v0;
  v9.super_class = type metadata accessor for DOCLegacyOverflowBarButtonItem();
  v3 = objc_msgSendSuper2(&v9, sel_init);
  [v3 setImage_];
  [v3 setStyle_];
  v4 = objc_opt_self();
  v5 = MEMORY[0x24C1FAD20](0x73697370696C6C45, 0xE800000000000000);
  v6 = [v4 itemCollectionMenuButtonShowing_];

  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x24C1FAD20](v7);
  }

  [v3 setAccessibilityIdentifier_];

  return v3;
}

uint64_t DOCItemCollectionViewController.actionForNewFolder()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (![v2 isPickerUI] || (objc_msgSend(v2, sel_forSavingDocuments) & 1) != 0 || objc_msgSend(v2, sel_forPickingFolders))
  {
    v3 = MEMORY[0x277D85000];
    result = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
    if (!result)
    {
      return result;
    }

    v5 = result;
    swift_getObjectType();
    if ([v5 isFolder] && (objc_msgSend(v5, sel_isAnyParentTrashed) & 1) == 0)
    {
      type metadata accessor for DOCActionManager(0);
      v6 = swift_unknownObjectRetain();
      v7 = specialized static DOCActionManager.canCreateNewFolder(in:)(v6);
      swift_unknownObjectRelease();
      if ([v1 isEditing])
      {
        v8 = (*((*v3 & *v1) + 0x1338))();
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

      if (specialized DOCItemCollectionViewController.nodesSupportMove(nodes:)(v8))
      {
        if (v8 >> 62)
        {
          v10 = __CocoaSet.count.getter();
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          __break(1u);
          goto LABEL_23;
        }

        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else
      {
        v9 = 0;
      }

      while (1)
      {
        v10 = _DocumentManagerBundle();
        if (v10)
        {
          break;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        v9 = v10;
      }

      v11 = v10;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v23._object = 0x8000000249BD64A0;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0xD00000000000002ELL;
      v13._object = 0x8000000249BD6470;
      v23._countAndFlagsBits = 0xD000000000000034;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D83E88];
      *(v15 + 16) = xmmword_249B9A480;
      v17 = MEMORY[0x277D83ED0];
      *(v15 + 56) = v16;
      *(v15 + 64) = v17;
      *(v15 + 32) = v9;
      static String.localizedStringWithFormat(_:_:)();

      v18 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BFD360);
      v19 = [objc_opt_self() systemImageNamed_];

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v21 setAttributes_];
      v22 = [v1 isEditing];
      swift_unknownObjectRelease();
      if ((v22 & 1) == 0)
      {
        return v21;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id DOCItemCollectionViewController.actionForConnectingToServer()()
{
  if ([v0 isEditing])
  {
    return 0;
  }

  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  v2 = objc_opt_self();
  v3 = [v1 sceneIdentifier];
  v4 = [v2 globalTabbedBrowserControllerForIdentifier_];

  if (!v4)
  {
    return 0;
  }

  if ((specialized static DOCTabbedBrowserViewController.connectToServerAllowed(for:)(v1) & 1) == 0)
  {

    return 0;
  }

  v5 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BC9D20);
  v6 = [objc_opt_self() systemImageNamed_];

  result = _DocumentManagerBundle();
  if (result)
  {
    v8 = result;
    v13._object = 0x8000000249BC9D50;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._object = 0x8000000249BC9CC0;
    v13._countAndFlagsBits = 0xD00000000000003FLL;
    v10._countAndFlagsBits = 0xD000000000000011;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v13);

    MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BC9D90);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v12 = swift_allocObject();
    *(v12 + 16) = 2;
    *(v12 + 24) = v4;
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCItemCollectionViewController.handleDisplayModeAction(_:)(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      v39 = 0;
      v11 = specialized _parseInteger<A, B>(ascii:radix:)(v3, v5, 10);
      v29 = v37;
      goto LABEL_63;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      v38[0] = v3;
      v38[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v3 == 43)
      {
        if (v6)
        {
          if (--v6)
          {
            v11 = 0;
            v21 = v38 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_77:
        __break(1u);
        return;
      }

      if (v3 != 45)
      {
        if (v6)
        {
          v11 = 0;
          v26 = v38;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v6)
      {
        if (--v6)
        {
          v11 = 0;
          v15 = v38 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = _StringObject.sharedUTF8.getter();
      }

      v10 = *v9;
      if (v10 == 43)
      {
        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            v11 = 0;
            if (v9)
            {
              v18 = v9 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_61;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_61;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_61;
                }

                ++v18;
                if (!--v6)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_76;
      }

      if (v10 != 45)
      {
        if (v7)
        {
          v11 = 0;
          if (v9)
          {
            while (1)
            {
              v24 = *v9 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_61;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_61;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v11 = 0;
        LOBYTE(v6) = 1;
        goto LABEL_62;
      }

      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v11 = 0;
          if (v9)
          {
            v12 = v9 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_61;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_61;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_61;
              }

              ++v12;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v6) = 0;
LABEL_62:
          v39 = v6;
          v29 = v6;
LABEL_63:

          if ((v29 & 1) == 0)
          {
            v30 = specialized DOCUSBEraseOperation.State.init(rawValue:)(v11);
            if ((v31 & 1) == 0)
            {
              v32 = v30;
              if (one-time initialization token for UI != -1)
              {
                swift_once();
              }

              static os_log_type_t.debug.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_249B9FA70;
              *(v33 + 56) = type metadata accessor for DOCItemCollectionViewController(0);
              v34 = lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance NSObject, type metadata accessor for DOCItemCollectionViewController);
              *(v33 + 32) = v1;
              v35 = MEMORY[0x277D83C10];
              *(v33 + 96) = MEMORY[0x277D83B88];
              *(v33 + 104) = v35;
              *(v33 + 64) = v34;
              *(v33 + 72) = v32;
              v36 = v1;
              os_log(_:dso:log:type:_:)();

              DOCItemCollectionViewController.displayOption(changeTo:)(v32);
            }
          }

          return;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }
}

void closure #4 in DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:)(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = 0xEC00000065746144;
  v10 = 0x745364756F6C6369;
  v11 = *a1;
  v12 = *a1;
  if (v12 > 8)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (a2 > 8u)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_7:
  v51[2] = v12;
  if (DOCItemSortMode.isDateMode.getter() & 1) == 0 || (specialized == infix<A>(_:_:)(v12, a2))
  {
    if (a4 == 10)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v16 = 0;
  if ((a3 & 1) != 0 || a4 == 10)
  {
LABEL_79:
    *a7 = v16;
    return;
  }

  if ((specialized == infix<A>(_:_:)(v12, a4) & 1) == 0)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_79;
  }

LABEL_10:
  if (specialized == infix<A>(_:_:)(v12, a4))
  {
    v50[1] = byte_249BC1512[v11];
    v50[0] = 1;
    DOCItemSortMode.DisplayableMode.localizedName(for:)(v50);
    goto LABEL_13;
  }

LABEL_12:
  v51[1] = v12;
  v51[0] = 1;
  DOCItemSortMode.localizedName(for:)(v51);
LABEL_13:
  v15 = specialized == infix<A>(_:_:)(a5, v12);
  if (v12 > 4)
  {
    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v9 = 0xE400000000000000;
        v10 = 1684957547;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x7942646572616873;
      }
    }

    else if (v12 == 7)
    {
      v10 = 0x6E6F697461657263;
    }

    else
    {
      v9 = 0xEC00000073757461;
      if (v12 == 8)
      {
        v10 = 0x6564644165746164;
        v9 = 0xE900000000000064;
      }
    }
  }

  else if (v12 <= 1)
  {
    if (v12)
    {
      v10 = 0x646573557473616CLL;
    }

    else
    {
      v10 = 0xD000000000000010;
      v9 = 0x8000000249BC5DF0;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    if (v12 == 2)
    {
      v10 = 1701667182;
    }

    else if (v12 == 3)
    {
      v10 = 1936154996;
    }

    else
    {
      v10 = 1702521203;
    }
  }

  v17 = MEMORY[0x24C1FAD20](v10, v9);

  if (!(a6 >> 62))
  {
    if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_43:
    v20 = 0;
    goto LABEL_44;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_43;
  }

LABEL_37:
  if ((a6 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x24C1FC540](0, a6);
    goto LABEL_40;
  }

  if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a6 + 32);
LABEL_40:
    v19 = v18;
    v20 = [v18 ascending];

LABEL_44:
    v44 = v15;
    v46 = v20;
    v42 = v15 & 1;
    if (v15)
    {
      if (_UISolariumEnabled())
      {
        if (v20)
        {
          v50[2] = a5;
          DOCItemSortMode.localizedOrderedAscendingString.getter();
        }

        else
        {
          v50[3] = a5;
          DOCItemSortMode.localizedOrderedDescendingString.getter();
        }

        v21 = 0;
      }

      else
      {
        if (v20)
        {
          v22 = 0xEA00000000007075;
        }

        else
        {
          v22 = 0xEC0000006E776F64;
        }

        v23 = [objc_opt_self() configurationWithScale_];
        v24 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, v22);

        v21 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];
      }
    }

    else
    {
      v21 = 0;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v21;
    v26 = v17;
    v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    if (v12 > 4)
    {
      v28 = 0xEB00000000646574;
      v29 = 0x6165724365746164;
      v34 = 0x6564644165746164;
      v35 = 0xE900000000000064;
      if (v12 != 8)
      {
        v34 = 0x745364756F6C6369;
        v35 = 0xEC00000073757461;
      }

      if (v12 != 7)
      {
        v29 = v34;
        v28 = v35;
      }

      v31 = 0xE400000000000000;
      v32 = 1684957547;
      if (v12 != 5)
      {
        v32 = 0x7942646572616873;
        v31 = 0xE800000000000000;
      }

      v33 = v12 <= 6;
    }

    else
    {
      v28 = 0xE400000000000000;
      v29 = 1701667182;
      v30 = 1936154996;
      if (v12 != 3)
      {
        v30 = 1702521203;
      }

      if (v12 != 2)
      {
        v29 = v30;
        v28 = 0xE400000000000000;
      }

      v31 = 0xEC00000064656966;
      v32 = 0x69646F4D65746164;
      if (v12)
      {
        v32 = 0x7473614C65746164;
        v31 = 0xEE0064656E65704FLL;
      }

      v33 = v12 <= 1;
    }

    if (v33)
    {
      v36 = v32;
    }

    else
    {
      v36 = v29;
    }

    if (v33)
    {
      v37 = v31;
    }

    else
    {
      v37 = v28;
    }

    v38 = objc_opt_self();
    v16 = v27;
    v39 = MEMORY[0x24C1FAD20](v36, v37);

    v40 = [v38 sortByMenuButtonForSortIdentifier:v39 ascending:v46 active:{v44 & 1, 0, 0, v42, partial apply for closure #1 in closure #4 in DOCItemCollectionViewController.createSortOptionsMenu(sortDescriptorToShowActive:), v25}];

    if (!v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = MEMORY[0x24C1FAD20](v41);
    }

    [v16 setAccessibilityIdentifier_];

    goto LABEL_79;
  }

  __break(1u);
}

void closure #1 in closure #4 in DOCItemCollectionViewController.createDisplayModeMenu(displayModeToSelect:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void DOCItemCollectionViewController.handleSortOptionAction(_:)(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  DOCItemSortMode.init(rawValue:)(v6);
  v7 = v13;
  if (v13 != 10)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = 0xEC00000065746144;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9FA70;
    *(v9 + 56) = type metadata accessor for DOCItemCollectionViewController(0);
    *(v9 + 64) = lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance NSObject, type metadata accessor for DOCItemCollectionViewController);
    *(v9 + 32) = v1;
    if (v7 > 4)
    {
      if (v7 <= 6)
      {
        if (v7 == 5)
        {
          v8 = 0xE400000000000000;
          v10 = 1684957547;
        }

        else
        {
          v8 = 0xE800000000000000;
          v10 = 0x7942646572616873;
        }
      }

      else if (v7 == 7)
      {
        v10 = 0x6E6F697461657263;
      }

      else if (v7 == 8)
      {
        v8 = 0xE900000000000064;
        v10 = 0x6564644165746164;
      }

      else
      {
        v8 = 0xEC00000073757461;
        v10 = 0x745364756F6C6369;
      }
    }

    else if (v7 <= 1)
    {
      if (v7)
      {
        v10 = 0x646573557473616CLL;
      }

      else
      {
        v8 = 0x8000000249BC5DF0;
        v10 = 0xD000000000000010;
      }
    }

    else
    {
      v8 = 0xE400000000000000;
      if (v7 == 2)
      {
        v10 = 1701667182;
      }

      else if (v7 == 3)
      {
        v10 = 1936154996;
      }

      else
      {
        v10 = 1702521203;
      }
    }

    *(v9 + 96) = MEMORY[0x277D837D0];
    *(v9 + 104) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 72) = v10;
    *(v9 + 80) = v8;
    v11 = v1;
    os_log(_:dso:log:type:_:)();

    v12 = v7;
    DOCItemCollectionViewController.sortOption(changeTo:)(&v12);
  }
}

void closure #1 in DOCItemCollectionViewController.action(for:enabled:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    DOCItemCollectionViewController.groupOption(changeTo:)(&v6);
  }
}

uint64_t DOCItemCollectionViewController.groupBySubmenu(withNoneOption:options:)(char a1, NSString *a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0xF20))() & 1) == 0)
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_71:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.UI);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v83 = v37;
        *v36 = 136315138;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249C01650, &v83);
        _os_log_impl(&dword_2493AC000, v34, v35, "%s grouping by section not supported. Not adding Use Groups menu item", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C1FE850](v37, -1, -1);
        MEMORY[0x24C1FE850](v36, -1, -1);
      }

      return 0;
    }

LABEL_118:
    swift_once();
    goto LABEL_71;
  }

  v7 = *((*v6 & *v2) + 0xA68);
  v8 = v7();
  v9 = (*((*v6 & *v8) + 0x218))();

  v10 = *(v9 + 16);

  if (!v10)
  {
    return 0;
  }

  v79 = a1;
  v12 = (v7)(v11);
  v13 = (*((*v6 & *v12) + 0x218))();

  (*((*v6 & *v3) + 0xCE8))(&v83);
  v14 = *(v13 + 16);
  v78.value = a2;
  if (!v14)
  {
    goto LABEL_102;
  }

  v15 = 0;
  v16 = v83;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_118;
    }

    if (v16 != 10)
    {
      break;
    }

LABEL_6:
    if (v14 == ++v15)
    {
      v16 = 10;
      v32 = *(v13 + 16);
      if (!v32)
      {
        goto LABEL_102;
      }

      goto LABEL_77;
    }
  }

  v18 = *(v13 + v15 + 32);
  if (v18 > 4)
  {
    if (*(v13 + v15 + 32) <= 6u)
    {
      if (v18 == 5)
      {
        v22 = 1684957547;
      }

      else
      {
        v22 = 0x7942646572616873;
      }

      if (v18 == 5)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v16 <= 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v18 == 7)
      {
        v22 = 0x6E6F697461657263;
        v27 = 1702125892;
      }

      else
      {
        if (v18 == 8)
        {
          v23 = 0xE900000000000064;
          v22 = 0x6564644165746164;
          if (v16 <= 4)
          {
            goto LABEL_25;
          }

          goto LABEL_50;
        }

        v22 = 0x745364756F6C6369;
        v27 = 1937077345;
      }

      v23 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v16 <= 4)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v19 = 1702521203;
    if (v18 == 3)
    {
      v19 = 1936154996;
    }

    if (v18 == 2)
    {
      v19 = 1701667182;
    }

    v20 = 0xD000000000000010;
    if (*(v13 + v15 + 32))
    {
      v20 = 0x646573557473616CLL;
    }

    v21 = 0xEC00000065746144;
    if (!*(v13 + v15 + 32))
    {
      v21 = 0x8000000249BC5DF0;
    }

    if (*(v13 + v15 + 32) <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    if (*(v13 + v15 + 32) <= 1u)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v16 <= 4)
    {
LABEL_25:
      if (v16 <= 1)
      {
        v25 = 0x646573557473616CLL;
        v26 = 0xEC00000065746144;
        if (!v16)
        {
          v25 = 0xD000000000000010;
          v26 = 0x8000000249BC5DF0;
        }
      }

      else
      {
        v24 = 1702521203;
        if (v16 == 3)
        {
          v24 = 1936154996;
        }

        if (v16 == 2)
        {
          v25 = 1701667182;
        }

        else
        {
          v25 = v24;
        }

        v26 = 0xE400000000000000;
      }

      goto LABEL_65;
    }
  }

LABEL_50:
  v28 = 0xE900000000000064;
  v29 = 0x745364756F6C6369;
  if (v16 == 8)
  {
    v29 = 0x6564644165746164;
  }

  else
  {
    v28 = 0xEC00000073757461;
  }

  if (v16 == 7)
  {
    v29 = 0x6E6F697461657263;
    v28 = 0xEC00000065746144;
  }

  v30 = 0x7942646572616873;
  if (v16 == 5)
  {
    v30 = 1684957547;
  }

  v31 = 0xE800000000000000;
  if (v16 == 5)
  {
    v31 = 0xE400000000000000;
  }

  if (v16 <= 6)
  {
    v25 = v30;
  }

  else
  {
    v25 = v29;
  }

  if (v16 <= 6)
  {
    v26 = v31;
  }

  else
  {
    v26 = v28;
  }

LABEL_65:
  if (v22 != v25 || v23 != v26)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_68;
    }

    goto LABEL_6;
  }

LABEL_68:
  v32 = *(v13 + 16);
  if (!v32)
  {
LABEL_102:

    v54 = MEMORY[0x277D84F90];
    goto LABEL_104;
  }

LABEL_77:
  v82 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v80 = objc_opt_self();
  v39 = 32;
  while (2)
  {
    v40 = *(v13 + v39);
    v41 = *(v13 + v39);
    if (v16 != 10)
    {
      specialized == infix<A>(_:_:)(v16, *(v13 + v39));
    }

    v81[1] = byte_249BC1512[v40];
    v81[0] = 0;
    DOCItemSortMode.DisplayableMode.localizedName(for:)(v81);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    v77._rawValue = 0;
    v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    if (v41 <= 4)
    {
      if (v41 <= 2)
      {
        if (v41 >= 2)
        {
          v45 = 0xE400000000000000;
          v46 = 1701667182;
          goto LABEL_99;
        }

LABEL_87:
        v45 = 0xE400000000000000;
        v46 = 1702125924;
        goto LABEL_99;
      }

      v47 = v41 == 3;
      if (v41 == 3)
      {
        v46 = 6775156;
      }

      else
      {
        v46 = 1702521203;
      }

      v48 = 0xE300000000000000;
      v49 = 0xE400000000000000;
LABEL_96:
      if (v47)
      {
        v45 = v48;
      }

      else
      {
        v45 = v49;
      }

      goto LABEL_99;
    }

    if (v41 <= 6)
    {
      v47 = v41 == 5;
      if (v41 == 5)
      {
        v46 = 1684957547;
      }

      else
      {
        v46 = 0x7942646572616873;
      }

      v48 = 0xE400000000000000;
      v49 = 0xE800000000000000;
      goto LABEL_96;
    }

    if ((v41 - 7) < 2)
    {
      goto LABEL_87;
    }

    v46 = 0x732064756F6C6369;
    v45 = 0xED00007375746174;
LABEL_99:
    v50 = v44;
    v51 = MEMORY[0x24C1FAD20](v46, v45);

    v52 = [v80 groupByMenuItemForGrouping_];

    if (!v52)
    {
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = MEMORY[0x24C1FAD20](v53);
    }

    [v50 setAccessibilityIdentifier_];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v39;
    if (--v32)
    {
      continue;
    }

    break;
  }

  v54 = v82;
LABEL_104:
  v83 = v54;
  if ((v79 & 1) == 0)
  {
    goto LABEL_113;
  }

  if (v54 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_113;
    }

LABEL_107:
    result = _DocumentManagerBundle();
    if (!result)
    {
      goto LABEL_124;
    }

    v55 = result;
    swift__string._object = 0x8000000249BFAEE0;
    swift__string._countAndFlagsBits = 0xD00000000000003FLL;
    v56._countAndFlagsBits = 1701736270;
    v56._object = 0xE400000000000000;
    v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v57.value._object = 0xEB00000000656C62;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, swift__string);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = 10;
    v77._rawValue = 0;
    v61 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v62 = objc_opt_self();
    v63 = v61;
    v64 = MEMORY[0x24C1FAD20](1701736302, 0xE400000000000000);
    v65 = [v62 groupByMenuItemForGrouping_];

    if (!v65)
    {
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = MEMORY[0x24C1FAD20](v66);
    }

    [v63 setAccessibilityIdentifier_];

    if (!(v54 >> 62) || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v63);

      goto LABEL_113;
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    return result;
  }

  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_107;
  }

LABEL_113:
  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_123;
  }

  v67 = result;
  swift__stringa._object = 0x8000000249BE0C90;
  v68._countAndFlagsBits = 0x79422070756F7247;
  swift__stringa._countAndFlagsBits = 0xD00000000000003CLL;
  v68._object = 0xE90000000000003ALL;
  v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v69.value._object = 0xEB00000000656C62;
  v70._countAndFlagsBits = 0x79422070756F7247;
  v70._object = 0xE90000000000003ALL;
  v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, swift__stringa);

  v72 = v83;
  if (v83 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v72;
  }

  v74 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  v84.value.super.isa = 0;
  v84.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v74, v71, 0, v84, v78, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v77);
  v76 = v75;

  return v76;
}

void closure #1 in DOCItemCollectionViewController.actionForNewFolder()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x18F0))();
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.toggleSelectModeButton.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t DOCItemCollectionViewController.displayOption(changeTo:)(uint64_t a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9FA70;
  *(v3 + 56) = type metadata accessor for DOCItemCollectionViewController(0);
  v4 = lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance NSObject, type metadata accessor for DOCItemCollectionViewController);
  *(v3 + 32) = v1;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 96) = MEMORY[0x277D83B88];
  *(v3 + 104) = v5;
  *(v3 + 64) = v4;
  *(v3 + 72) = a1;
  v6 = v1;
  os_log(_:dso:log:type:_:)();

  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v6) + 0x100))(v7);
  if (v9)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = (*((*v8 & *v6) + 0xA68))();
    v14 = [v13 identifier];

    (*(v11 + 16))(a1, v14, ObjectType, v11);
    v9 = swift_unknownObjectRelease();
  }

  return specialized DOCItemCollectionViewController.updateOverlay(animated:)(v9);
}

id DOCItemCollectionViewController.makeViewOptionsViewController(attachedTo:)(uint64_t a1)
{
  v2 = v1;
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1920))();
  v5 = objc_allocWithZone(type metadata accessor for DOCViewOptionsViewController());
  v6 = DOCViewOptionsViewController.init(viewModel:)(v4);
  [v6 setModalPresentationStyle_];
  v7 = [v6 popoverPresentationController];
  [v7 setSourceItem_];

  v8 = [v6 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setPermittedArrowDirections_];
  }

  v10 = [v6 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setDelegate_];
  }

  v12 = [v6 popoverPresentationController];

  if (v12)
  {
    v13 = [v12 adaptiveSheetPresentationController];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249BA0290;
    *(v14 + 32) = [objc_opt_self() mediumDetent];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setDetents_];

    [v13 setSelectedDetentIdentifier_];
  }

  return v6;
}

void closure #1 in DOCItemCollectionViewController.toggleViewOptions()(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v2, "ViewOptionsViewController dismissed", v3, 2u);
    MEMORY[0x24C1FE850](v3, -1, -1);
  }
}

void closure #2 in DOCItemCollectionViewController.toggleViewOptions()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1948))();
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v3;
      v5 = v1;
      v6 = v3;
      DOCRunInMainThread(_:)();
    }

    else
    {
    }
  }
}

void closure #1 in closure #2 in DOCItemCollectionViewController.toggleViewOptions()(void *a1, uint64_t a2)
{
  v5[4] = closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController.toggleViewOptions();
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_126_1;
  v4 = _Block_copy(v5);
  [a1 presentViewController:a2 animated:1 completion:v4];
  _Block_release(v4);
}

void closure #1 in closure #1 in closure #2 in DOCItemCollectionViewController.toggleViewOptions()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.UI);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v1, "ViewOptionsViewController presented", v2, 2u);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }
}

uint64_t DOCItemCollectionViewController.viewOptions(_:didSelectSizeSetting:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x100))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*((*v4 & *v2) + 0xA68))();
    v10 = [v9 identifier];

    (*(v7 + 32))(a2, v10, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.changeSizeSetting(to:)(DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting to)
{
  v2 = to;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x100))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*((*v3 & *v1) + 0xA68))();
    v8 = [v7 identifier];

    (*(v5 + 32))(v2, v8, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t DOCItemCollectionViewController.viewOptions(_:didSelectSizeSliderValue:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x100))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*((*v4 & *v2) + 0xA68))();
    v10 = [v9 identifier];

    (*(v7 + 40))(a2, v10, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCItemCollectionViewController.toggleShowAllFilenameExtensions()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xD10))(v3);
  *v2 = !*v2;
  v1(v3, 0);
  specialized DOCItemCollectionViewController.updateOverlay(animated:)();
}

uint64_t protocol witness for DOCViewOptionsForwardingDelegate.viewOptions(_:didSelectSizeSetting:) in conformance DOCItemCollectionViewController(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x100))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*((*v4 & *v2) + 0xA68))();
    v10 = [v9 identifier];

    (*(v7 + 32))(a2, v10, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for DOCViewOptionsForwardingDelegate.viewOptions(_:didSelectSizeSliderValue:) in conformance DOCItemCollectionViewController(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x100))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*((*v4 & *v2) + 0xA68))();
    v10 = [v9 identifier];

    (*(v7 + 40))(a2, v10, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.prepareForPopoverPresentation(_:)(UIPopoverPresentationController a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x1118))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 popoverPresentationController];

    if (v7)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPopoverPresentationController);
      v8 = a1.super.super.isa;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        v10 = (*((*v4 & *v2) + 0x1130))();
        [(objc_class *)v8 setSourceItem:v10];
      }
    }
  }

  v11 = (*((*v4 & *v2) + 0x1948))();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 popoverPresentationController];

    if (v13)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPopoverPresentationController);
      v14 = a1.super.super.isa;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = DOCItemCollectionViewController.displayModeButton.getter();
        v17 = [v16 _doc_ipi_view];

        if (v17)
        {
          v18 = [v17 window];

          if (v18)
          {

            v19 = DOCItemCollectionViewController.displayModeButton.getter();
            [(objc_class *)v14 setBarButtonItem:v19];
          }
        }
      }
    }
  }
}

void *UIDocumentBrowserActionBarButton.docAction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for UIDocumentBrowserActionBarButton.docAction : UIDocumentBrowserActionBarButton(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id UIDocumentBrowserActionBarButton.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIDocumentBrowserActionBarButton();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UIDocumentBrowserActionBarButton.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIDocumentBrowserActionBarButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCActionToolBarItem.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id DOCItemCollectionViewController.performAction(action:actionContext:)(void *a1, void *a2)
{
  v3 = v2;
  v59 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v9);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for DispatchTime();
  v53 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v52 = &v49 - v21;
  v58 = a1;
  v22 = [a1 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = MEMORY[0x277D85000];
  if (v23 == v26 && v25 == v27)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      v31 = v28;
      v33 = 0;
      goto LABEL_8;
    }
  }

  v31 = v28;
  result = (*((*v28 & *v3) + 0x968))(v29);
  if (result != 2)
  {
    return result;
  }

  v33 = 1;
LABEL_8:
  v34 = (*((*v31 & *v3) + 0x1338))();
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v34);

  if (!All)
  {
    return result;
  }

  v49 = v6;
  v36 = v5;
  v37 = All >> 62;
  if (!v33 || ![*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingFolders])
  {
    goto LABEL_13;
  }

  if (v37)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_21;
    }

LABEL_13:

    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v38 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v38 = All;
    }

    v39 = v36;

    specialized DOCActionManager.perform(_:on:actionContext:)(v58, v38, v59);

    v40 = v49;
    if (!v33)
    {
      return [v3 setEditing:0 animated:{1, v49}];
    }

    goto LABEL_16;
  }

  if (*((All & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_21:

  DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
  v39 = v36;
  v40 = v49;
LABEL_16:
  (*((*v31 & *v3) + 0x970))(0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v59 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v14 = 500;
  v42 = v50;
  v41 = v51;
  (*(v50 + 104))(v14, *MEMORY[0x277D85178], v51);
  v43 = v52;
  MEMORY[0x24C1FAA90](v17, v14);
  (*(v42 + 8))(v14, v41);
  v58 = *(v53 + 8);
  (v58)(v17, v60);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.performAction(action:actionContext:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32_4;
  v45 = _Block_copy(aBlock);

  v46 = v54;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v47 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = v59;
  MEMORY[0x24C1FB940](v43, v46, v47, v45);
  _Block_release(v45);

  (*(v40 + 8))(v47, v39);
  (*(v55 + 8))(v46, v57);
  (v58)(v43, v60);
  return [v3 setEditing:0 animated:{1, v49}];
}

void closure #1 in DOCItemCollectionViewController.performAction(action:actionContext:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x968))();

    if (!v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        (*((*v2 & *v4) + 0x970))(1);
      }

      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 1;
        v8 = [v6 viewIfLoaded];
        v9 = [v8 window];

        if (v9)
        {

          DOCBrowserContainedViewController.updateOverlayIfNeeded()();
        }

        else
        {
          DOCBrowserContainedViewController.applyOverlaySearchSettings()();
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updateCustomActions()()
{
  v1 = [v0 actionManager];
  v2 = [v0 customActions];
  if (!v2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v2 = isa;
  }

  v4 = v2;
  [v1 setActions_];
}

void closure #1 in DOCFullDocumentManagerViewController.download(items:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (!a2)
  {
    a3(0);
    return;
  }

  v4 = _convertErrorToNSError(_:)();
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v5 = swift_allocObject();
  v14[1] = 2;
  *(v5 + 16) = xmmword_249B9A480;
  *(v5 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
  *(v5 + 64) = lazy protocol witness table accessor for type NSError and conformance NSObject();
  *(v5 + 32) = v4;
  v16 = v4;
  os_log(_:dso:log:type:_:)();

  v6 = [v16 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_11:
      v15 = v16;
      a3(v16);

      v13 = v15;
      goto LABEL_12;
    }
  }

  if ([v16 code] != 3072)
  {
    goto LABEL_11;
  }

  static os_log_type_t.error.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = *v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = 0xD00000000000001BLL;
  *(v12 + 40) = 0x8000000249C01420;
  os_log(_:dso:log:type:_:)();

  v13 = v16;
LABEL_12:
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = (v2 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v3 & 1;
}

uint64_t specialized LazyFilterSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v5 = a2;
  if (a2 < a1)
  {
    v23 = -1;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v21 = a1;
      if ((a3 & 0x4000000000000000) != 0)
      {
        goto LABEL_36;
      }

LABEL_10:
      v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      v7 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v17)
      {
        result = 0;
        v9 = a3 & 0xC000000000000001;
        v20 = a3;
        v10 = a3 + 32;
        while (1)
        {
          v12 = __OFADD__(result, v23);
          v13 = result + v23;
          if (v12)
          {
            break;
          }

          if (v5 == v22)
          {
            goto LABEL_32;
          }

          v24 = v13;
          while (1)
          {
            v11 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            if (v11 == i)
            {
              break;
            }

            if (v9)
            {
              v14 = MEMORY[0x24C1FC540](v5 + 1, v20);
            }

            else
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_29;
              }

              if (v11 >= *(v7 + 16))
              {
                goto LABEL_30;
              }

              v14 = *(v10 + 8 * v11);
              swift_unknownObjectRetain();
            }

            v25 = v14;
            v15 = a4(&v25);
            swift_unknownObjectRelease();
            ++v5;
            if (v15)
            {
              goto LABEL_15;
            }
          }

          v11 = i;
LABEL_15:
          v5 = v11;
          result = v24;
          if (v11 == v21)
          {
            return result;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v16 = a3;
        v17 = __CocoaSet.count.getter();
        a3 = v16;
      }
    }

    v21 = a1;
LABEL_36:
    v18 = a3;
    v19 = __CocoaSet.count.getter();
    a3 = v18;
    v22 = v19;
    goto LABEL_11;
  }

  if (a1 != a2)
  {
    v23 = 1;
    if ((a3 & 0x8000000000000000) != 0)
    {
      v21 = a2;
      v5 = a1;
    }

    else
    {
      v21 = a2;
      v5 = a1;
      if ((a3 & 0x4000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

char *specialized static UIDocumentBrowserActionBarButton.button(from:target:selector:)(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_11;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_11:
    type metadata accessor for UIDocumentBrowserActionBarButton();
    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v23 = [v22 initWithBarButtonSystemItem:16 target:_bridgeAnythingToObjectiveC<A>(_:)() action:a3];
LABEL_12:
    swift_unknownObjectRelease();
    v19 = v23;
    goto LABEL_13;
  }

  v13 = [a1 image];
  if (!v13)
  {
    v28 = [a1 localizedTitle];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = [a1 style];
    outlined init with copy of Any(a2, v41);
    v33 = MEMORY[0x24C1FAD20](v29, v31);

    v34 = v42;
    if (v42)
    {
      v35 = __swift_project_boxed_opaque_existential_1(v41, v42);
      v36 = *(v34 - 8);
      v37 = MEMORY[0x28223BE20](v35, v35);
      v39 = v41 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v39, v37);
      v40 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v36 + 8))(v39, v34);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    else
    {
      v40 = 0;
    }

    type metadata accessor for UIDocumentBrowserActionBarButton();
    v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v33 style:v32 target:v40 action:a3];

    goto LABEL_12;
  }

  v14 = v13;
  type metadata accessor for UIDocumentBrowserActionBarButton();
  v15 = v14;
  v16 = [a1 style];
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = [v17 initWithImage:v15 style:v16 target:_bridgeAnythingToObjectiveC<A>(_:)() action:a3];

  swift_unknownObjectRelease();
  v19 = v18;
  v20 = [a1 localizedTitle];
  if (!v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = MEMORY[0x24C1FAD20](v21);
  }

  [v19 setTitle_];

LABEL_13:
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction;
  swift_beginAccess();
  v25 = *&v19[v24];
  *&v19[v24] = a1;
  v26 = a1;

  return v19;
}

void specialized DOCItemCollectionViewController.applyDisplayMode(_:toMenuButton:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for symbolImageConfiguration != -1)
  {
LABEL_35:
    swift_once();
  }

  v4 = static DOCNavButtonMetrics.symbolImageConfiguration;
  v5 = DOCDisplayMode.image.getter(a1);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 imageWithConfiguration_];
  }

  else
  {
    v7 = 0;
  }

  [a2 setImage_];
  if (_UISolariumEnabled())
  {
    goto LABEL_29;
  }

  v25 = a1;
  v26 = v7;
  v8 = 0;
  v27 = a2;
  v9 = -1.0;
  a1 = 0x277D75000uLL;
  while (2)
  {
    if (v8 <= 4)
    {
      a2 = 4;
    }

    else
    {
      a2 = v8;
    }

    v10 = v8;
    while (1)
    {
      if (a2 == v10)
      {
        __break(1u);
        goto LABEL_35;
      }

      v11 = outlined read-only object #0 of DOCItemCollectionViewController.applyDisplayMode(_:toMenuButton:)[v10 + 4];
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          goto LABEL_20;
        }

        if (v11 != 3)
        {
          goto LABEL_36;
        }

        v13 = 0x8000000249BE99D0;
        v12 = 0xD000000000000013;
      }

      else
      {
        if (v11)
        {
          if (v11 != 1)
          {
LABEL_36:
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return;
          }

LABEL_20:
          v12 = 0x6C75622E7473696CLL;
          v13 = 0xEB0000000074656CLL;
          goto LABEL_21;
        }

        v12 = 0x672E657261757173;
        v13 = 0xEF3278322E646972;
      }

LABEL_21:
      v14 = MEMORY[0x24C1FAD20](v12, v13);
      v15 = [objc_opt_self() systemImageNamed_];

      if (v15)
      {
        v16 = [v15 imageWithConfiguration_];

        [v16 size];
        v18 = v17;

        if (v18 > v9)
        {
          break;
        }
      }

      if (++v10 == 4)
      {
        v18 = v9;
        goto LABEL_26;
      }
    }

    v8 = v10 + 1;
    v9 = v18;
    if (v10 != 3)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v7 = v26;
  a2 = v27;
  a1 = v25;
  if (v18 > 0.0 && v26)
  {
    v19 = v26;
    [v19 size];
    [v27 setImageInsets_];
  }

LABEL_29:
  v21 = objc_opt_self();
  v22 = DOCDisplayMode.title.getter(a1);
  v23 = MEMORY[0x24C1FAD20](v22);

  v28 = [v21 itemCollectionMenuButtonShowing_];

  if (!v28)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = MEMORY[0x24C1FAD20](v24);
  }

  [a2 setAccessibilityIdentifier_];
}

BOOL specialized DOCItemCollectionViewController.nodesSupportMove(nodes:)(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_15:
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  v4 = 0;
  v5 = *MEMORY[0x277CC6048];
  do
  {
    v6 = v3 == v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v4, a1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v4, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    v8 = [v7 canPerform_];
    swift_unknownObjectRelease();
    ++v4;
  }

  while ((v8 & 1) != 0);
  return v6;
}

void *specialized static UIBarButtonItem.createActionToolBarItem(descriptor:itemViewController:containerTraits:imagesOnly:)(void *a1, unsigned int a2, uint64_t a3, void *a4, char a5)
{
  if (a1)
  {
    v10 = [a1 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v14 == v13)
    {

      goto LABEL_12;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
LABEL_12:

      if ((a5 & 1) == 0 && [a4 horizontalSizeClass] == 2)
      {
        goto LABEL_14;
      }

      if (DOCScreenSizeSEPhone() && [a4 verticalSizeClass] == 1)
      {
        v22 = [objc_opt_self() configurationWithScale_];
        v23 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BDD060);
        v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

        type metadata accessor for DOCActionToolBarItem();
        v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v24 style:0 target:a3 action:sel_barButtonTappedWithSender_];

LABEL_22:
        v28 = MEMORY[0x277D85000];
        v29 = *((*MEMORY[0x277D85000] & *v21) + 0x68);
        v30 = v21;
        v31 = a1;
        v29(a1);
        v32 = *((*v28 & *v30) + 0x80);
        v33 = v30;
        v32((a2 >> 8) & 1);
        [v33 setEnabled_];

        v34 = [v31 localizedTitle];
        if (!v34)
        {
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = MEMORY[0x24C1FAD20](v35);
        }

        [v33 setTitle_];

        return v33;
      }

      v25 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BDD060);
      v26 = [objc_opt_self() systemImageNamed_];
LABEL_21:
      v27 = v26;

      type metadata accessor for DOCActionToolBarItem();
      v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v27 style:0 target:a3 action:sel_barButtonTappedWithSender_];

      goto LABEL_22;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v36 == v13)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v42 == v13)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 & 1) == 0)
          {
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v46 == v13)
            {
            }

            else
            {
              v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v47 & 1) == 0)
              {
LABEL_14:
                v19 = [a1 localizedTitle];
                if (!v19)
                {
                  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v19 = MEMORY[0x24C1FAD20](v20);
                }

                type metadata accessor for DOCActionToolBarItem();
                v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v19 style:0 target:a3 action:sel_barButtonTappedWithSender_];

                goto LABEL_22;
              }
            }

            if ((a5 & 1) == 0 && [a4 horizontalSizeClass] == 2)
            {
              goto LABEL_14;
            }

            if (DOCScreenSizeSEPhone())
            {
              [a4 verticalSizeClass];
            }

            v48 = [objc_opt_self() modernToolbar];
            v49 = [v48 isEnabled];

            if (v49)
            {
              v25 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
              v26 = [objc_opt_self() systemImageNamed_];
              goto LABEL_21;
            }

            type metadata accessor for DOCActionToolBarItem();
            v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:16 target:a3 action:sel_barButtonTappedWithSender_];
            goto LABEL_40;
          }
        }

        if ((a5 & 1) == 0 && [a4 horizontalSizeClass] == 2)
        {
          goto LABEL_14;
        }

        if (DOCScreenSizeSEPhone())
        {
          [a4 verticalSizeClass];
        }

        v44 = [objc_opt_self() modernToolbar];
        v45 = [v44 isEnabled];

        if (v45)
        {
          v25 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDCBF0);
          v26 = [objc_opt_self() systemImageNamed_];
          goto LABEL_21;
        }

        type metadata accessor for DOCActionToolBarItem();
        v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:9 target:a3 action:sel_barButtonTappedWithSender_];
LABEL_40:
        v21 = v41;
        goto LABEL_22;
      }
    }

    if ((a5 & 1) == 0 && [a4 horizontalSizeClass] == 2)
    {
      goto LABEL_14;
    }

    if (DOCScreenSizeSEPhone())
    {
      [a4 verticalSizeClass];
    }

    v39 = [objc_opt_self() modernToolbar];
    v40 = [v39 isEnabled];

    if (v40)
    {
      v25 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
      v26 = [objc_opt_self() systemImageNamed_];
      goto LABEL_21;
    }

    type metadata accessor for DOCActionToolBarItem();
    v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:10 target:a3 action:sel_barButtonTappedWithSender_];
    goto LABEL_40;
  }

  v17 = [objc_opt_self() flexibleSpaceItem];

  return v17;
}

UIBarButtonItem *specialized DOCItemCollectionViewController.createMoreButton(containerTraits:itemViewController:imageOnly:)(void *a1, char a2)
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & v3->super.super.isa) + 0x1130);
  v8 = v7();
  if (v8)
  {

    v9 = v7();
    if (v9)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v17 = result;
    v25._object = 0x8000000249C014E0;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v19._countAndFlagsBits = 0xA680E265726F4DLL;
    v20._object = 0x8000000249C014C0;
    v25._countAndFlagsBits = 0xD000000000000046;
    v20._countAndFlagsBits = 0xD000000000000011;
    v19._object = 0xA700000000000000;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v18, v17, v19, v25);

    v2 = MEMORY[0x24C1FAD20](v21._countAndFlagsBits, v21._object);

    v22 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v2 style:0 target:0 action:0];

    v23 = (*((*v6 & v3->super.super.isa) + 0x1138))(v22);
    v9 = (v7)(v23);
    if (v9)
    {
LABEL_3:
      v2 = v9;
      DOCItemCollectionViewController.attachContextMenuToMoreButton(_:)(v9);
      if ((a2 & 1) == 0 && [a1 horizontalSizeClass] == 2)
      {
        [(UIBarButtonItem *)v2 setImage:0];
        return v2;
      }

      if (DOCScreenSizeSEPhone() && [a1 verticalSizeClass] == 1)
      {
        v10 = one-time initialization token for general;
        v3 = v2;
        if (v10 != -1)
        {
          swift_once();
        }

LABEL_10:
        swift_beginAccess();
        v11 = [static DOCInterface.general ellipsisMenuItemSmallImageName];
        v12 = [objc_opt_self() systemImageNamed_];
LABEL_21:
        v24 = v12;

        [(UIBarButtonItem *)v3 setImage:v24];
        return v2;
      }

      v13 = _UISolariumEnabled();
      v14 = one-time initialization token for general;
      v3 = v2;
      v15 = v14 == -1;
      if (v13)
      {
        if (v14 != -1)
        {
          swift_once();
        }

        goto LABEL_10;
      }

LABEL_18:
      if (!v15)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = [static DOCInterface.general ellipsisMenuItemImageName];
      v12 = [objc_opt_self() systemImageNamed_];
      goto LABEL_21;
    }

LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

char *specialized DOCItemCollectionViewController.updateOverlayForInlineSearchIfNecessary(animated:)()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF18))())
  {
    return 0;
  }

  result = (*((*v1 & *v0) + 0xBB8))();
  if (result)
  {
    v3 = result;
    (*((*v1 & *result) + 0x3C0))(&v20);
    if (BYTE1(v20))
    {
      v4 = *((*v1 & *v0) + 0xBC0);
      v5 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
      v6 = v4();
      if (v6 - 2) >= 3u && (v6)
      {
        v7 = *((*v1 & *v0) + 0x198);
        v8 = v5;
        v9 = v7();
        v10 = (*((*v1 & *v8) + 0x1A0))(v9);
        v11 = (*((*v1 & *v0) + 0x1B0))(v10);
        v12 = (*((*v1 & *v8) + 0x1B8))(v11);
        v13 = (*((*v1 & *v0) + 0x1C8))(v12);
        (*((*v1 & *v8) + 0x1D0))(v13);
        v14 = *((*v1 & *v8) + 0xD8);
        v15 = swift_unknownObjectRetain();
        v14(v15, &protocol witness table for DOCItemCollectionViewController);
        v16 = 1;
      }

      else
      {
        v17 = *((*v1 & *v5) + 0x1A0);
        v18 = v5;
        v17(0);
        v19 = MEMORY[0x277D84F90];
        (*((*v1 & *v18) + 0x1B8))(MEMORY[0x277D84F90]);
        (*((*v1 & *v18) + 0x1D0))(v19);
        (*((*v1 & *v18) + 0xD8))(0, 0);
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v5 = v3;
    }

    return v16;
  }

  return result;
}

void specialized DOCItemCollectionViewController.updateOverlay(animated:)()
{
  v1 = v0;
  if (([v0 doc:sel__doc_performLiveResizeSkipped_updateOverlay scheduleHandlerIfInLiveResize:?] & 1) == 0 && (specialized DOCItemCollectionViewController.updateOverlayForInlineSearchIfNecessary(animated:)() & 1) == 0)
  {
    v2 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
    if (one-time initialization token for hSizeClass != -1)
    {
LABEL_48:
      swift_once();
    }

    v52 = static UITraitCollection.Traits.hSizeClass;
    v53 = qword_27EEE9C60;
    if (UITraitCollection.doc_hasSpecified(_:)(&v52))
    {
      v3 = DOCItemCollectionViewController.createLeadingButtons()();
      *&v52 = v3;
      v4 = DOCItemCollectionViewController.createTrailingButtons()();
      v5 = DOCItemCollectionViewController.createFixedTrailingButtons()();
      v6 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v1) + 0x15B8))();
      if ([v1 isEditing])
      {
        DOCItemCollectionViewController.updateToolBarItems()();
      }

      else
      {
        v8 = (*((*v6 & *v1) + 0x1B0))();
        specialized Array.append<A>(contentsOf:)(v8);
        v3 = v52;
      }

      specialized Array.append<A>(contentsOf:)(v9);

      specialized Array.append<A>(contentsOf:)(v10);
      DOCItemCollectionViewController.validateBarButtonItems(_:)(v3);

      v12 = (*((*v6 & *v1) + 0x198))(v11);
      if (v12)
      {
        v13 = v12;
        v51 = v2;
        if ((*((*v6 & *v1) + 0x100))())
        {
          v15 = v14;
          ObjectType = swift_getObjectType();
          v2 = (*(v15 + 56))(ObjectType, v15);
          swift_unknownObjectRelease();
        }

        else
        {
          v2 = MEMORY[0x277D84F90];
        }

        v46 = v13;
        v47 = v3;
        v48 = v5;
        v49 = v4;
        if (v2 >> 62)
        {
          v17 = __CocoaSet.count.getter();
        }

        else
        {
          v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = 0;
        do
        {
          v19 = v18;
          if (v17 == v18)
          {
            break;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x24C1FC540](v18, v2);
          }

          else
          {
            if (v18 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v20 = *(v2 + 8 * v18 + 32);
          }

          v21 = v20;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_46;
          }

          v22 = (*((*v6 & *v20) + 0x98))();

          v18 = v19 + 1;
        }

        while ((v22 & 1) == 0);
        if ([v1 enclosedInUIPDocumentLanding])
        {
          v23 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
          v24 = DOCTabIdentifier.tab.getter();
          v26 = v25;

          if (v17 == v19 && (v26 & 1) == 0 && v24 != 2)
          {

            v2 = MEMORY[0x277D84F90];
          }
        }

        if (v2 >> 62)
        {
          v27 = __CocoaSet.count.getter();
          if (v27)
          {
LABEL_34:
            v28 = 0;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v30 = MEMORY[0x24C1FC540](v28, v2);
              }

              else
              {
                if (v28 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_45;
                }

                v30 = *(v2 + 8 * v28 + 32);
              }

              v31 = v30;
              v32 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if ([v1 isEditing])
              {
                v29 = (*((*v6 & *v1) + 0x148))();
              }

              else
              {
                v29 = 1;
              }

              (*((*v6 & *v31) + 0x88))(v29 & 1);

              ++v28;
              if (v32 == v27)
              {
                goto LABEL_52;
              }
            }

            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            goto LABEL_34;
          }
        }

        v2 = MEMORY[0x277D84F90];
LABEL_52:
        if (v2 >> 62)
        {
          v33 = __CocoaSet.count.getter();
        }

        else
        {
          v33 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        [v46 setLeftItemsSupplementBackButton_];
        [v46 setHidesBackButton_];
        if (v2 >> 62)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

          v35 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v34 = v35;
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);

          v34 = v2;
        }

        specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v47, v34);

        specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(v49, v48);

        v2 = v51;
      }

      else
      {
      }

      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
      DOCItemCollectionViewController.applyOverlayTitleSettings()();
      v36 = [v1 splitViewController];
      if (v36)
      {
        v37 = v36;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = [v38 sidebarViewController];
          v40 = [v39 navigationItem];
          DOCSidebarViewController.titleSettings.getter();
          v42 = v41;
          v44 = v43;

          if (v44)
          {
            v45 = MEMORY[0x24C1FAD20](v42, v44);
          }

          else
          {
            v45 = 0;
          }

          [v40 setBackButtonTitle_];

          v37 = v45;
        }
      }

      DOCItemCollectionViewController.applyOverlayPopoverPresentationItem()();
      (*((*v6 & *v1) + 0x1198))(2);
    }

    else
    {
      v7 = [objc_opt_self() standardUserDefaults];
      v50 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
      [v7 BOOLForKey_];
    }
  }
}

uint64_t outlined destroy of DOCDocumentSourceIdentifier(uint64_t a1)
{
  type metadata accessor for DOCDocumentSourceIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized DOCFullDocumentManagerViewController.download(items:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CC63C0]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithItems_];

  [v7 setQualityOfService_];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v11[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.download(items:completion:);
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem], @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_93_0;
  v9 = _Block_copy(v11);

  [v7 setDownloadCompletionBlock_];
  _Block_release(v9);
  v10 = [objc_opt_self() defaultManager];
  [v10 scheduleAction_];
}

uint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type DOCActionToolBarItem.Variant and conformance DOCActionToolBarItem.Variant()
{
  result = lazy protocol witness table cache variable for type DOCActionToolBarItem.Variant and conformance DOCActionToolBarItem.Variant;
  if (!lazy protocol witness table cache variable for type DOCActionToolBarItem.Variant and conformance DOCActionToolBarItem.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCActionToolBarItem.Variant and conformance DOCActionToolBarItem.Variant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemCollectionViewController.OverlayItemGroup and conformance DOCItemCollectionViewController.OverlayItemGroup()
{
  result = lazy protocol witness table cache variable for type DOCItemCollectionViewController.OverlayItemGroup and conformance DOCItemCollectionViewController.OverlayItemGroup;
  if (!lazy protocol witness table cache variable for type DOCItemCollectionViewController.OverlayItemGroup and conformance DOCItemCollectionViewController.OverlayItemGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemCollectionViewController.OverlayItemGroup and conformance DOCItemCollectionViewController.OverlayItemGroup);
  }

  return result;
}

void specialized DOCItemCollectionViewController.handleViewOptionsAction(_:)()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.UI);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2493AC000, v1, v2, "View Options UIAction tapped", v3, 2u);
    MEMORY[0x24C1FE850](v3, -1, -1);
  }

  DOCItemCollectionViewController.toggleViewOptions()();
}

uint64_t objectdestroy_147Tm()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t static DOCTipsFamilyTip.hasFamilyWithAdultMember.getter(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v3, a2);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v5;
}

uint64_t static DOCTipsFamilyTip.hasSharedFolderWithAdultFamilyMember.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v4, a3);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t DOCTipsFamilyTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - v3;
  v5 = type metadata accessor for Tips.UsesConstellation();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v20 - v14;
  MEMORY[0x24C1F99F0](1, v13);
  v16 = MEMORY[0x277CE1A00];
  MEMORY[0x24C1F99B0](v9, v5, MEMORY[0x277CE1A00]);
  (*(v6 + 8))(v9, v5);
  v20 = v5;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x24C1F99D0](v15, v10, OpaqueTypeConformance2);
  v20 = v10;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v15, v10);
  return v18;
}

uint64_t one-time initialization function for $hasSharedFolderWithAdultFamilyMember()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_allocate_value_buffer(v0, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x24C1FAD20](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = *MEMORY[0x277D05E40];
    [v6 BOOLForKey_];
  }

  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t (*static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember.modify())()
{
  if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t (*static DOCTipsFamilyTip.hasSharedFolderWithAdultFamilyMember.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static DOCTipsFamilyTip.hasSharedFolderWithAdultFamilyMember.modify;
}

uint64_t one-time initialization function for $hasFamilyWithAdultMember()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_allocate_value_buffer(v0, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
  __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t (*static DOCTipsFamilyTip.$hasFamilyWithAdultMember.modify())()
{
  if (one-time initialization token for $hasFamilyWithAdultMember != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t (*static DOCTipsFamilyTip.hasFamilyWithAdultMember.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $hasFamilyWithAdultMember != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static DOCTipsFamilyTip.hasFamilyWithAdultMember.modify;
}

uint64_t one-time initialization function for $isAdult()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_allocate_value_buffer(v0, static DOCTipsFamilyTip.$isAdult);
  __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$isAdult);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static DOCTipsFamilyTip.$isAdult.modify())()
{
  if (one-time initialization token for $isAdult != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$isAdult);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember : DOCTipsFamilyTip.Type@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t key path setter for static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember : DOCTipsFamilyTip.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  (*(*(v8 - 8) + 24))(v9, a1, v8);
  return swift_endAccess();
}

uint64_t key path getter for static DOCTipsFamilyTip.hasSharedFolderWithAdultFamilyMember : DOCTipsFamilyTip.Type@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  result = swift_endAccess();
  *a3 = v7;
  return result;
}

uint64_t key path setter for static DOCTipsFamilyTip.hasSharedFolderWithAdultFamilyMember : DOCTipsFamilyTip.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  __swift_project_value_buffer(v7, a6);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t (*static DOCTipsFamilyTip.isAdult.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $isAdult != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static DOCTipsFamilyTip.$isAdult);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static DOCTipsFamilyTip.hasFamilyWithAdultMember.modify;
}

void static DOCTipsFamilyTip.hasSharedFolderWithAdultFamilyMember.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t closure #4 in DOCTipsFamilyTip.rules.getter@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v15 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - v11;
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v16 = v15;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
  a2[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for Tip.options.getter in conformance DOCTipsFamilyTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC17UsesConstellationVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v20 - v3;
  v5 = type metadata accessor for Tips.UsesConstellation();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC17UsesConstellationVQo_Md);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v20 - v14;
  MEMORY[0x24C1F99F0](1, v13);
  v16 = MEMORY[0x277CE1A00];
  MEMORY[0x24C1F99B0](v9, v5, MEMORY[0x277CE1A00]);
  (*(v6 + 8))(v9, v5);
  v20 = v5;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x24C1F99D0](v15, v10, OpaqueTypeConformance2);
  v20 = v10;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v15, v10);
  return v18;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id specialized DOCTipsFamilyTip.title.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v5._object = 0x8000000249C01810;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x8000000249C017F0;
    v5._countAndFlagsBits = 0xD000000000000027;
    v3._countAndFlagsBits = 0xD000000000000017;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v5);

    lazy protocol witness table accessor for type String and conformance String();
    return Text.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized DOCTipsFamilyTip.message.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v5._object = 0x8000000249C01780;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x8000000249C01740;
    v5._countAndFlagsBits = 0xD000000000000061;
    v3._countAndFlagsBits = 0xD000000000000032;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v5);

    lazy protocol witness table accessor for type String and conformance String();
    return Text.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static Tips.ActionBuilder.buildFinalResult(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  MEMORY[0x28223BE20](v33, v7);
  v32 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - v11;
  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v13 = v34;
  v31 = *(a1 + 16);
  if (v31)
  {
    v14 = 0;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v17 = *(v15 + 56);
    v29 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v30 = v16;
    v18 = a1 + v29;
    v27 = (v15 + 16);
    v28 = v17;
    do
    {
      v19 = v32;
      v20 = *(v33 + 48);
      *v32 = v14;
      v21 = v15;
      v30(v19 + v20, v18, v2);
      outlined init with take of (offset: Int, element: Tips.Action)(v19, v12);
      Tips.Action.with(index:)();
      outlined destroy of (offset: Int, element: Tips.Action)(v12);
      v34 = v13;
      v22 = v2;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v13 = v34;
      }

      ++v14;
      *(v13 + 16) = v24 + 1;
      v25 = v28;
      (*v27)(v13 + v29 + v24 * v28, v6, v22);
      v18 += v25;
      v2 = v22;
      v15 = v21;
    }

    while (v31 != v14);
  }

  return v13;
}

id specialized DOCTipsFamilyTip.actions.getter()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _DocumentManagerBundle();
  if (result)
  {
    v6 = result;
    v15._object = 0x8000000249C016F0;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v8._countAndFlagsBits = 0xD000000000000016;
    v8._object = 0x8000000249C016D0;
    v15._countAndFlagsBits = 0xD000000000000040;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v15);

    v14 = v10;
    lazy protocol witness table accessor for type String and conformance String();
    Tips.Action.init<A>(id:title:perform:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9A480;
    (*(v1 + 32))(v12 + v11, v4, v0);
    v13 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v12);
    swift_setDeallocating();
    (*(v1 + 8))(v12 + v11, v0);
    swift_deallocClassInstance();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DOCTipsFamilyTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Tips.Rule();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
  swift_beginAccess();
  v11 = *(v1 + 16);
  v11(v4, v10, v0);
  Tips.Rule.init<A>(_:_:)();
  v17 = static Tips.RuleBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v9, v5);
  if (one-time initialization token for $hasFamilyWithAdultMember != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
  swift_beginAccess();
  v11(v4, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v5);
  if (one-time initialization token for $isAdult != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, static DOCTipsFamilyTip.$isAdult);
  swift_beginAccess();
  v11(v4, v14, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v5);

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v15 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v15;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t outlined init with take of (offset: Int, element: Tips.Action)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (offset: Int, element: Tips.Action)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id UIScrollView.doc_translateContent(dx:dy:animated:)(char a1, double a2, double a3)
{
  [v3 contentOffset];
  v8 = v7 + a2;
  v10 = v9 + a3;

  return [v3 setContentOffset:a1 & 1 animated:{v8, v10}];
}

uint64_t UIScrollView.doc_isMoving.getter()
{
  if ([v0 isDragging] & 1) != 0 || (objc_msgSend(v0, sel_isDecelerating))
  {
    return 1;
  }

  else
  {
    return [v0 isTracking];
  }
}

uint64_t DOCWeakArray.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for DOCWeakArray.WeakElement();
  *(v0 + 16) = static Array._allocateUninitialized(_:)();
  return v0;
}

uint64_t DOCWeakArray.WeakElement.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t DOCWeakArray.count.getter()
{
  DOCWeakArray.purgeNilElements()();
  swift_beginAccess();
  v0 = type metadata accessor for DOCWeakArray.WeakElement();

  v2 = MEMORY[0x24C1FB170](v1, v0);

  return v2;
}

uint64_t DOCWeakArray.append(_:)()
{
  DOCWeakArray.purgeNilElements()();
  type metadata accessor for DOCWeakArray.WeakElement();
  specialized DOCWeakArray.WeakElement.__allocating_init(element:)();
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t DOCWeakArray.remove(_:)()
{
  DOCWeakArray.purgeNilElements()();
  swift_beginAccess();
  type metadata accessor for DOCWeakArray.WeakElement();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
  return swift_endAccess();
}

uint64_t DOCWeakArray.contains(_:)()
{
  DOCWeakArray.purgeNilElements()();
  swift_beginAccess();
  type metadata accessor for DOCWeakArray.WeakElement();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v0 = Sequence.contains(where:)();

  return v0 & 1;
}

uint64_t DOCWeakArray.forEachElement(_:)()
{
  DOCWeakArray.purgeNilElements()();
  swift_beginAccess();
  type metadata accessor for DOCWeakArray.WeakElement();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Sequence.forEach(_:)();
}

uint64_t DOCWeakArray.purgeNilElements()()
{
  swift_beginAccess();
  type metadata accessor for DOCWeakArray.WeakElement();
  type metadata accessor for Array();

  swift_getWitnessTable();
  *(v0 + 16) = _ArrayProtocol.filter(_:)();
}

uint64_t DOCWeakArray.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCWeakArray.init()()
{
  type metadata accessor for DOCWeakArray.WeakElement();
  *(v0 + 16) = static Array._allocateUninitialized(_:)();
  return v0;
}

uint64_t specialized DOCWeakArray.WeakElement.__allocating_init(element:)()
{
  type metadata accessor for DOCWeakArray.WeakElement();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t partial apply for closure #1 in DOCWeakArray.remove(_:)()
{
  return partial apply for closure #1 in DOCWeakArray.remove(_:)() & 1;
}

{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == v1;
  }

  return result;
}

uint64_t partial apply for closure #1 in DOCWeakArray.forEachElement(_:)()
{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata completion function for DOCWeakArray()
{
  return type metadata completion function for DOCWeakArray();
}

{
  return swift_initClassMetadata2();
}

BOOL partial apply for closure #1 in DOCWeakArray.purgeNilElements()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

void static DOCUserInterfaceStateStore.retrieveDefaultSortMode(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedStore];
  v5 = [v4 interfaceStateForConfiguration_];

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [v5 sortingMode];

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

LABEL_12:

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v10, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

    goto LABEL_16;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_16:

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v15, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  countAndFlagsBits = v20._countAndFlagsBits;
  DOCItemSortMode.init(rawValue:)(v20);
  if (v21[0] != 10)
  {
    LOBYTE(v20._countAndFlagsBits) = v21[0];
    DOCItemSortDescriptor.init(type:isReversed:)(&v20, countAndFlagsBits, v21);
    v19 = v23;
    *a2 = v21[0];
    *(a2 + 8) = v22;
    *(a2 + 24) = v19;
    return;
  }

LABEL_13:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void specialized static DOCUserInterfaceStateStore.saveDefaultSortMode(_:configuration:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = 0xEC00000065746144;
  v4 = *a1;
  if (v4 > 4)
  {
    v7 = 0x6E6F697461657263;
    v8 = 0xE900000000000064;
    v9 = 0x6564644165746164;
    if (v4 != 8)
    {
      v9 = 0x745364756F6C6369;
      v8 = 0xEC00000073757461;
    }

    if (v4 != 7)
    {
      v7 = v9;
      v3 = v8;
    }

    v10 = 0xE400000000000000;
    v11 = 1684957547;
    if (v4 != 5)
    {
      v11 = 0x7942646572616873;
      v10 = 0xE800000000000000;
    }

    if (*a1 <= 6u)
    {
      v6 = v11;
    }

    else
    {
      v6 = v7;
    }

    if (*a1 <= 6u)
    {
      v5 = v10;
    }

    else
    {
      v5 = v3;
    }
  }

  else if (*a1 <= 1u)
  {
    if (*a1)
    {
      v6 = 0x646573557473616CLL;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*a1)
    {
      v5 = 0xEC00000065746144;
    }

    else
    {
      v5 = 0x8000000249BC5DF0;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 == 2)
    {
      v6 = 1701667182;
    }

    else if (v4 == 3)
    {
      v6 = 1936154996;
    }

    else
    {
      v6 = 1702521203;
    }
  }

  v12 = a1[24];
  v13 = objc_opt_self();
  v14 = [v13 sharedStore];
  v15 = [v14 interfaceStateForConfiguration_];

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v17;
    *(inited + 48) = v6;
    *(inited + 56) = v5;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v18;
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 96) = v12;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setSortingMode_];

    v20 = [v13 sharedStore];
    [v20 updateInterfaceState:v15 forConfiguration:a2];
  }

  else
  {
  }
}

void specialized static DOCUserInterfaceStateStore.saveDefaultGroupingBehavior(_:for:configuration:)(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v41 = objc_opt_self();
  v7 = [v41 sharedStore];
  v42 = a3;
  v8 = [v7 interfaceStateForConfiguration_];

  if (v8)
  {
    v9 = specialized static DOCUserInterfaceStateStore.groupingBehaviorStateIdentifier(for:)(a2);
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v13;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v5 != 10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
    if (v5 != 10)
    {
      v14 = 0xEC00000065746144;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v5 > 4)
      {
        if (v5 <= 6)
        {
          if (v5 == 5)
          {
            v14 = 0xE400000000000000;
            v18 = 1684957547;
          }

          else
          {
            v14 = 0xE800000000000000;
            v18 = 0x7942646572616873;
          }
        }

        else if (v5 == 7)
        {
          v18 = 0x6E6F697461657263;
        }

        else if (v5 == 8)
        {
          v14 = 0xE900000000000064;
          v18 = 0x6564644165746164;
        }

        else
        {
          v14 = 0xEC00000073757461;
          v18 = 0x745364756F6C6369;
        }
      }

      else if (v5 <= 1)
      {
        if (v5)
        {
          v18 = 0x646573557473616CLL;
        }

        else
        {
          v14 = 0x8000000249BC5DF0;
          v18 = 0xD000000000000010;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v5 == 2)
        {
          v18 = 1701667182;
        }

        else if (v5 == 3)
        {
          v18 = 1936154996;
        }

        else
        {
          v18 = 1702521203;
        }
      }

      v45 = MEMORY[0x277D837D0];
      *&v44 = v18;
      *(&v44 + 1) = v14;
      outlined init with take of Any(&v44, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v15, v17, isUniquelyReferenced_nonNull_native);
    }

    v20 = [v8 groupingBehaviors];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = MEMORY[0x24C1FAD20](v9, v11);
    [v20 setValue:isa forKey:v22];

    if (one-time initialization token for StateStore != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.StateStore);
    v24 = a2;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v44 = v39;
      *v27 = 136315906;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000249C018E0, &v44);
      v40 = v8;
      *(v27 + 12) = 2080;
      LOBYTE(v43[0]) = v5;
      v28 = String.init<A>(describing:)();
      v30 = v9;
      v31 = a2;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v44);

      *(v27 + 14) = v32;
      *(v27 + 22) = 2080;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v11, &v44);

      *(v27 + 24) = v33;
      *(v27 + 32) = 2080;
      v8 = v40;
      v6 = &selRef_setNavigationTitleForTagListInInfoPanel_;
      *&v43[0] = v31;
      v34 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v44);

      *(v27 + 34) = v37;
      _os_log_impl(&dword_2493AC000, v25, v26, "%s saving new value: %s to defaults: %s for identifier: %s", v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {
    }

    v38 = [v41 v6[142]];
    [v38 updateInterfaceState:v8 forConfiguration:v42];
  }
}

id DOCSidebarCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCSidebarCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue] = 0;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for DOCSidebarCollectionView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);
  [v11 _setAdjustsContentInsetWhenScrollDisabled_];

  return v11;
}

id DOCSidebarCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCSidebarCollectionView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v21 = 0;
  v11 = objc_opt_self();
  (*(v8 + 16))(&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = &v21;
  *(v13 + 3) = v3;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  (*(v8 + 32))(&v13[v12], &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:);
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_178;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  [v11 performWithoutAnimation_];
  _Block_release(v15);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v18 = v21;
    if (v21)
    {

      return v18;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:)(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x24C1FAD20](a3, a4);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10.receiver = a2;
  v10.super_class = type metadata accessor for DOCSidebarCollectionView();
  v8 = objc_msgSendSuper2(&v10, sel_dequeueReusableCellWithReuseIdentifier_forIndexPath_, v6, isa);

  v9 = *a1;
  *a1 = v8;
}

void partial apply for closure #1 in DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:)()
{
  type metadata accessor for IndexPath();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  closure #1 in DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:)(v1, v2, v3, v4);
}

void DOCSidebarCollectionView.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount;
  v4 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount] = v6;
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v11.receiver = v2;
    v11.super_class = type metadata accessor for DOCSidebarCollectionView();
    objc_msgSendSuper2(&v11, sel_touchesEnded_withEvent_, isa, a2);

    v9 = *&v2[v3];
    v5 = __OFSUB__(v9, 1);
    v10 = v9 - 1;
    if (!v5)
    {
      *&v2[v3] = v10;
      return;
    }
  }

  __break(1u);
}

uint64_t DOCSidebarCollectionView.requireCanBecomeFocusedTrue.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSidebarCollectionView.requireCanBecomeFocusedTrue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCSidebarCollectionView.selectionFollowsFocus.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarCollectionView();
  return objc_msgSendSuper2(&v2, sel_selectionFollowsFocus);
}

id DOCSidebarCollectionView.selectionFollowsFocus.setter(char a1)
{
  v3 = type metadata accessor for DOCSidebarCollectionView();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_selectionFollowsFocus);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setSelectionFollowsFocus_, a1 & 1);
  result = [v1 selectionFollowsFocus];
  if (v4 != result)
  {
    result = [v1 selectionFollowsFocus];
    if (result)
    {
      return [v1 setNeedsFocusUpdate];
    }
  }

  return result;
}

uint64_t DOCSidebarCollectionView.canBecomeFocused.getter()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x80))())
  {
    return 1;
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarCollectionView();
  return objc_msgSendSuper2(&v2, sel_canBecomeFocused);
}

id DOCSidebarCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCItemCollectionConfiguration.init(source:configuration:context:initialLocation:defaultSorting:searchStartLocation:viewAccessibilityIdentifier:isBrowsingTrash:)(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, char *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v100 = *a3;
  v101 = *a5;
  v15 = a6;
  v16 = a1;
  v17 = a2;
  v102 = a4;
  v99 = [a4 node];
  v105 = v16;
  v18 = [v105 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    v26 = a6;
    v25 = v17;
    goto LABEL_8;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    v25 = v17;

    v26 = a6;
LABEL_8:
    v27 = v105;

    v28 = [objc_opt_self() defaultManager];
    v29 = [v28 newTrashCollection];

    v30 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
    v31 = DOCNodeCollection.init(itemCollection:observedNode:)(v29, 0);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v33 = [v105 identifier];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    v26 = a6;
    goto LABEL_16;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v26 = a6;
  if ((v38 & 1) == 0)
  {

    v27 = v105;
    if ((*(v105 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) & 1) == 0)
    {
      v25 = v17;

      v32 = v99;
      if (v99)
      {

        v31 = 0;
        goto LABEL_11;
      }

      v64 = *(v105 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v64)
      {
        v65 = v64;
        if (FPProviderDomain.shouldUseDSEnumeration.getter())
        {
          v66 = specialized static DOCRootNode.rootNode(for:)(v65);
          if (!v66)
          {

            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            __swift_project_value_buffer(v88, static Logger.UI);
            v89 = v65;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = 138412290;
              *(v92 + 4) = v89;
              *v93 = v64;
              v94 = v89;
              _os_log_impl(&dword_2493AC000, v90, v91, "Getting nil rootNode for %@", v92, 0xCu);
              outlined destroy of NSObject?(v93);
              MEMORY[0x24C1FE850](v93, -1, -1);
              v95 = v92;
              v25 = v17;
              MEMORY[0x24C1FE850](v95, -1, -1);
            }

            else
            {
            }

            v31 = 0;
            v32 = 0;
            v27 = v105;
            goto LABEL_11;
          }

          v31 = _s26DocumentManagerExecutables17DOCNodeCollectionC3for13configuration6source12extraOptionsACSo0D0_p_So16DOCConfigurationCSgAA21DOCFileProviderSourceCSgSo016NodeNotificationJ0VSgtcfCTf4ennnn_nSo6FINodeC_Tt3g5(v66, 0, v105, 0x100000000uLL);

          v27 = v105;
        }

        else
        {

          v85 = [objc_opt_self() defaultManager];
          v86 = [v85 rootCollectionForProviderDomain_];

          objc_allocWithZone(type metadata accessor for DOCNodeCollection());
          v87 = v86;
          v31 = DOCNodeCollection.init(itemCollection:observedNode:)(v87, 0);

          v25 = v17;
          v27 = v105;
        }
      }

      else
      {

        v31 = 0;
      }

LABEL_10:
      v32 = 0;
LABEL_11:
      *a9 = v27;
      *(a9 + 8) = v25;
      *(a9 + 16) = v100;
      *(a9 + 24) = v102;
      *(a9 + 32) = v101;
      *(a9 + 33) = a10 & 1;
      *(a9 + 40) = a7;
      *(a9 + 48) = a8;
      *(a9 + 56) = v26;
      *(a9 + 64) = v32;
      *(a9 + 72) = v31;
      return;
    }

    v47 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
    v48 = v17;
    v49 = [v17 hostIdentifier];
    if (!v49)
    {
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = MEMORY[0x24C1FAD20](v50);
    }

    [v47 setHostIdentifier_];

    v51 = [v17 maximumNumberOfItemsToFetch];
    v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v98 = *((*MEMORY[0x277D85000] & *v105) + 0x278);
    v53 = v98();
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
    if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
    {

LABEL_43:
      [v47 setMaximumNumberOfItems_];
      v71 = [v48 recentDocumentsContentTypes];
LABEL_44:
      isa = v71;
      if (!isa)
      {
        type metadata accessor for UTType();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      [v47 setAllowedContentTypes_];
      goto LABEL_47;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;
      if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
      {

        goto LABEL_42;
      }

      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v80 & 1) == 0)
      {
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;
        if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
        {
        }

        else
        {
          v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v96 & 1) == 0)
          {
            [v47 setMaximumNumberOfItems_];
            v48 = v17;
            v71 = [v17 documentContentTypes];
            goto LABEL_44;
          }
        }

        v48 = v17;
        v97 = [v17 recentDocumentsContentTypes];
        if (!v97)
        {
          type metadata accessor for UTType();
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = Array._bridgeToObjectiveC()().super.isa;
        }

        [v47 setAllowedContentTypes_];

        if ([v17 maximumNumberOfItemsToFetch] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v47 setMaximumNumberOfItems_];
          goto LABEL_48;
        }

        isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        [v47 setMaximumNumberOfItems_];
LABEL_47:

LABEL_48:
        v73 = [objc_opt_self() defaultManager];
        v74 = v98();

        v75 = [v48 supportsRemovableFileProviders];
        v76 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(v74, v47, v75);

        v77 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
        v78 = v76;
        v25 = v17;
        v79 = v78;
        v31 = DOCNodeCollection.init(itemCollection:observedNode:)(v78, 0);

        goto LABEL_9;
      }
    }

LABEL_42:
    v48 = v17;
    goto LABEL_43;
  }

LABEL_16:
  v27 = v105;
  if (v26)
  {
    v39 = [v15 sourceIdentifier];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
    {

      v25 = v17;
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        v45 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
        v58 = [objc_opt_self() defaultManager];
        v59 = (*((*MEMORY[0x277D85000] & *v105) + 0x278))();

        v60 = [v17 supportsRemovableFileProviders];
        v46 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(v59, v45, v60);

        v25 = v17;
        goto LABEL_30;
      }

      v25 = v17;
    }

    v45 = [objc_opt_self() defaultManager];
    v46 = [v45 newSearchTrashCollection];
LABEL_30:

    v61 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
    v62 = v46;
    v31 = DOCNodeCollection.init(itemCollection:observedNode:)(v62, 0);

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t DOCItemCollectionContext.init(browserViewContext:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 0)
  {
    if (result == 1)
    {
      v2 = 3;
      goto LABEL_6;
    }

    if (result == 2 || result == 3)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

LABEL_10:
    v3 = result;
    type metadata accessor for DOCBrowserViewContext(0);
    v5[3] = v4;
    v5[0] = v3;
    doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(v5);
  }

  if (result)
  {
    goto LABEL_10;
  }

  v2 = 2;
LABEL_6:
  *a2 = v2;
  return result;
}

id specialized DOCNode.fpfs_syncFetchFPItemResult()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = [v0 fpfs_fpItem];
  if (!result)
  {
    v7[0] = 0;
    v2 = [v0 syncFetchFPItem_];
    if (v2)
    {
      v3 = v2;
      v4 = v7[0];
      return v3;
    }

    else
    {
      v5 = v7[0];
      v6 = _convertNSErrorToError(_:)();

      swift_willThrow();
      return v6;
    }
  }

  return result;
}

BOOL static DOCItemCollectionContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 2)
  {
    return (v3 - 2) >= 3;
  }

  return v3 == 2;
}

id static DOCItemCollectionContext.recentsItemCollectionContext(for:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 forPickingDocuments];
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemCollectionContext(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 2)
      {
        if (v3 != 2)
        {
          return 0;
        }
      }

      else if ((v3 - 2) < 3)
      {
        return 0;
      }

      return 1;
    }

    if (v3 == 3)
    {
      return 1;
    }
  }

  return 0;
}

void *DOCItemCollectionConfiguration.initialLocation.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t DOCItemCollectionConfiguration.viewAccessibilityIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void *DOCItemCollectionConfiguration.searchStartLocation.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *DOCItemCollectionConfiguration.defaultCollection.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *_s26DocumentManagerExecutables17DOCNodeCollectionC3for13configuration6source12extraOptionsACSo0D0_p_So16DOCConfigurationCSgAA21DOCFileProviderSourceCSgSo016NodeNotificationJ0VSgtcfCTf4ennnn_nSo6FINodeC_Tt3g5(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v45[1] = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v8 = [a1 cachedDomain_];
  if (v8)
  {
    v9 = v45[0];
    v10 = v8;
    if (FPProviderDomain.shouldUseDSEnumeration.getter())
    {
      v11 = objc_allocWithZone(type metadata accessor for DOCFileSystemCollection());
      v12 = a3;
      v13 = v7;
      v14 = a2;
      v15 = specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(v13, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v11);

      v16 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
      v17 = DOCNodeCollection.init(fileSystemCollection:)(v15);

      goto LABEL_15;
    }

    v33 = v8;
  }

  else
  {
    v18 = v45[0];
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.Enumeration);
    v21 = v7;
    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v43 = v24;
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v25 = 136446722;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, v45);
      *(v25 + 12) = 2082;
      v26 = [v21 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v45);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2114;
      v31 = v19;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v32;
      *v42 = v32;
      _os_log_impl(&dword_2493AC000, v23, v43, "%{public}s Init DOCNodeCollection with DOCNode failed to get a cached domain for %{public}s. Error: %{public}@. Falling back to using an FPItem (if available).", v25, 0x20u);
      outlined destroy of NSObject?(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    else
    {
    }

    v33 = 0;
  }

  FPItem = specialized DOCNode.fpfs_syncFetchFPItemResult()();
  if (v35)
  {
    v36 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
    v7 = v7;
    v17 = specialized DOCNodeCollection.init(failure:domain:error:)(v7, v33, FPItem, v36);
  }

  else
  {
    v37 = [objc_opt_self() defaultManager];
    v38 = [v37 collectionForFolderItem_];

    v39 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
    v40 = v38;
    outlined copy of Result<FPItem, Error>(FPItem);
    v17 = DOCNodeCollection.init(itemCollection:observedNode:)(v40, FPItem);

    outlined consume of Result<FPItem, Error>(FPItem);
  }

  v10 = a2;
LABEL_15:

  return v17;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UITraitCollection.tabBarBlurAvoidanceTopOffset.getter()
{
  lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();

  return UITraitCollection.subscript.getter();
}

BOOL @objc UITabBarController.usingVariableBlurBottomBar.getter(void *a1)
{
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  v3 = a1;
  v4 = [v2 tabBar];
  v5 = [v4 _backgroundView];

  if (v5)
  {
    type metadata accessor for DOCTabBarVariableBlurBackgroundView();
    v6 = swift_dynamicCastClass() != 0;

    v3 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL UITabBarController.usingVariableBlurBottomBar.getter()
{
  v0 = [swift_dynamicCastObjCProtocolUnconditional() tabBar];
  v1 = [v0 _backgroundView];

  if (!v1)
  {
    return 0;
  }

  type metadata accessor for DOCTabBarVariableBlurBackgroundView();
  v2 = swift_dynamicCastClass() != 0;

  return v2;
}

void @objc UITabBarController.usingVariableBlurBottomBar.setter(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  if ([v4 usingVariableBlurBottomBar] != a3)
  {
    if (a3)
    {
      UITabBarController.attachVariableBlurView()();
    }

    else
    {
      [v4 detatchVariableBlurView];
    }
  }
}

void UITabBarController.usingVariableBlurBottomBar.setter(char a1)
{
  if ([v1 usingVariableBlurBottomBar] != (a1 & 1))
  {
    if (a1)
    {

      UITabBarController.attachVariableBlurView()();
    }

    else
    {

      [v1 detatchVariableBlurView];
    }
  }
}

void UITabBarController.attachVariableBlurView()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = [swift_dynamicCastObjCProtocolUnconditional() tabBar];
  v5 = [objc_allocWithZone(type metadata accessor for DOCTabBarVariableBlurBackgroundView()) init];
  v6 = [v4 _setBackgroundView_];
  v7 = (*((*MEMORY[0x277D85000] & *v5) + 0x70))(v6);
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    (*(*v7 + 280))();

    UIViewController.traitOverrides.getter();
    lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
    UITraitOverrides.subscript.setter();
    UIViewController.traitOverrides.setter();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall UITabBarController.detatchVariableBlurView()()
{
  v0 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = [swift_dynamicCastObjCProtocolUnconditional() tabBar];
  v3 = [swift_dynamicCastObjCProtocolUnconditional() tabBar];
  v4 = [v3 _backgroundView];

  if (v4)
  {
    type metadata accessor for DOCTabBarVariableBlurBackgroundView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = [v2 _setBackgroundView_];
      v8 = *(*((*MEMORY[0x277D85000] & *v6) + 0x70))(v7);
      (*(v8 + 288))();
    }

    else
    {
    }
  }

  UIViewController.traitOverrides.getter();
  lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
  UITraitOverrides.subscript.setter();
  UIViewController.traitOverrides.setter();
}

void @objc UITabBarController.detatchVariableBlurView()(void *a1)
{
  v1 = a1;
  UITabBarController.detatchVariableBlurView()();
}

uint64_t static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name.getter()
{
  swift_beginAccess();
  v0 = static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name;

  return v0;
}

uint64_t static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name = a1;
  off_27EEF2D70 = a2;
}

uint64_t key path setter for static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name : UITraitCollection.DOCTabBarBlurAvoidanceTrait.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name = v2;
  off_27EEF2D70 = v1;
}

uint64_t static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue.setter(double a1)
{
  result = swift_beginAccess();
  static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue = *&a1;
  return result;
}

double protocol witness for static UITraitDefinition.defaultValue.getter in conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue;
  *a1 = static UITraitCollection.DOCTabBarBlurAvoidanceTrait.defaultValue;
  return result;
}

uint64_t protocol witness for static UITraitDefinition.name.getter in conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait()
{
  swift_beginAccess();
  v0 = static UITraitCollection.DOCTabBarBlurAvoidanceTrait.name;

  return v0;
}

double DOCAutoBarHidingTabBarController._edgeInsets(forChildViewController:insetsAreAbsolute:)(uint64_t a1, uint64_t a2)
{
  v7.super_class = DOCAutoBarHidingTabBarController;
  objc_msgSendSuper2(&v7, sel__edgeInsetsForChildViewController_insetsAreAbsolute_, a1, a2);
  v4 = v3;
  v5 = [v2 traitCollection];
  lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
  UITraitCollection.subscript.getter();

  return v4;
}

uint64_t key path setter for MoveItemsIntent.destinationFolder : MoveItemsIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t MoveItemsIntent.destinationFolder.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

uint64_t (*MoveItemsIntent.entities.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t (*MoveItemsIntent.destinationFolder.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t (*MoveItemsIntent.overwriteConflicts.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t static MoveItemsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables15MoveItemsIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables15MoveItemsIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249C01AB0;
  v4._countAndFlagsBits = 0xD000000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables15MoveItemsIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables15MoveItemsIntentV10AppIntents0H9ParameterCyAC12FINodeEntityVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t closure #1 in static MoveItemsIntent.parameterSummary.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249BA0290;
  *(v1 + 32) = v0;

  return v2;
}

uint64_t static MoveItemsIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static MoveItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static MoveItemsIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static MoveItemsIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MoveItemsIntent.authenticationPolicy.modify())()
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v0, static MoveItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static MoveItemsIntent.authenticationPolicy : MoveItemsIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static MoveItemsIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static MoveItemsIntent.authenticationPolicy : MoveItemsIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static MoveItemsIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static MoveItemsIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  static MoveItemsIntent.openAppWhenRun = a1;
  return result;
}

uint64_t MoveItemsIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  v4[22] = swift_task_alloc();
  v5 = type metadata accessor for FINodeEntity();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](MoveItemsIntent.perform(), 0, 0);
}

uint64_t MoveItemsIntent.perform()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "[MoveItemsIntent] Performing MoveItemsIntent", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  IntentParameter.wrappedValue.getter();
  v5 = *(*(v0 + 96) + 16);

  if (!v5)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2493AC000, v15, v16, "[MoveItemsIntent] Asked for values", v17, 2u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    v18 = *(v0 + 176);

    IntentParameter.projectedValue.getter();
    v19 = type metadata accessor for IntentDialog();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    type metadata accessor for AppIntentError();
    _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_1(&lazy protocol witness table cache variable for type AppIntentError and conformance AppIntentError, MEMORY[0x277CB9BB0]);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    outlined destroy of IntentDialog?(v18);
    goto LABEL_31;
  }

  IntentParameter.wrappedValue.getter();
  v6 = *(v0 + 104);
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v51 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    do
    {
      v12 = *(v0 + 224);
      outlined init with copy of FINodeEntity(v10, v12);
      v13 = *(v12 + *(v9 + 32));
      outlined destroy of FINodeEntity(v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      --v7;
    }

    while (v7);

    v14 = v51;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *(v0 + 240) = v14;
  v20 = v14 >> 62;

  if (v14 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v21 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v21 = v14;
  }

  v22 = *(v0 + 232);
  v23 = *(v0 + 184);
  IntentParameter.wrappedValue.getter();
  v24 = *(v22 + *(v23 + 32));
  outlined destroy of FINodeEntity(v22);
  LOBYTE(v22) = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6048], v21);

  if (v22)
  {
    v25 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v24;
    v27 = v24;
    v28 = specialized static DOCActionManager.canPerform(_:on:)(v25, inited);

    swift_setDeallocating();
    swift_arrayDestroy();
    if (v20)
    {
LABEL_18:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v29 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_21;
    }
  }

  else
  {

    v28 = 0;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v29 = v14;
LABEL_21:
  v30 = *(v0 + 216);
  IntentParameter.wrappedValue.getter();
  v31 = *(v30 + *(v23 + 32));
  outlined destroy of FINodeEntity(v30);
  LOBYTE(v30) = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC5FD8], v29);

  if (v30)
  {
    v32 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_249BA0290;
    *(v33 + 32) = v31;
    v34 = v31;
    v35 = specialized static DOCActionManager.canPerform(_:on:)(v32, v33);

    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v28 & 1) == 0)
    {
      if (v35)
      {
        v36 = *(v0 + 200);
        v37 = [objc_opt_self() defaultManager];
        *(v0 + 288) = v37;
        IntentParameter.wrappedValue.getter();
        v38 = *(v36 + *(v23 + 32));
        *(v0 + 296) = v38;
        v39 = v38;
        outlined destroy of FINodeEntity(v36);
        IntentParameter.wrappedValue.getter();
        LOBYTE(v36) = *(v0 + 329);
        v40 = ":bounceOnCollision:)";
        v41 = swift_task_alloc();
        *(v0 + 304) = v41;
        *(v41 + 16) = v37;
        *(v41 + 24) = v14;
        *(v41 + 32) = v39;
        *(v41 + 40) = (v36 & 1) == 0;
        v42 = swift_task_alloc();
        *(v0 + 312) = v42;
        *v42 = v0;
        v42[1] = MoveItemsIntent.perform();
        v43 = MEMORY[0x277D84F78];
        v44 = partial apply for closure #1 in FPItemManager.copyItems(_:into:bounceOnCollision:);
LABEL_27:

        return MEMORY[0x2822008A0](v42, 0, 0, 0xD000000000000024, v40 | 0x8000000000000000, v44, v41, v43 + 8);
      }

      goto LABEL_30;
    }

LABEL_26:
    v45 = *(v0 + 208);
    v46 = [objc_opt_self() defaultManager];
    *(v0 + 248) = v46;
    IntentParameter.wrappedValue.getter();
    v47 = *(v45 + *(v23 + 32));
    *(v0 + 256) = v47;
    v48 = v47;
    outlined destroy of FINodeEntity(v45);
    IntentParameter.wrappedValue.getter();
    LOBYTE(v45) = *(v0 + 328);
    v40 = " to DOCActionOperationKind";
    v41 = swift_task_alloc();
    *(v0 + 264) = v41;
    *(v41 + 16) = v46;
    *(v41 + 24) = v14;
    *(v41 + 32) = v48;
    *(v41 + 40) = (v45 & 1) == 0;
    v42 = swift_task_alloc();
    *(v0 + 272) = v42;
    *v42 = v0;
    v42[1] = MoveItemsIntent.perform();
    v43 = MEMORY[0x277D84F78];
    v44 = partial apply for closure #1 in FPItemManager.moveItems(_:into:bounceOnCollision:);
    goto LABEL_27;
  }

  if (v28)
  {
    goto LABEL_26;
  }

LABEL_30:

  lazy protocol witness table accessor for type MoveItemsIntentError and conformance MoveItemsIntentError();
  swift_allocError();
LABEL_31:
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = MoveItemsIntent.perform();
  }

  else
  {

    v2 = MoveItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 256);

  IntentParameter.wrappedValue.getter();
  *(v0 + 120) = *(v0 + 112);
  IntentParameter.wrappedValue.getter();
  *(v0 + 136) = specialized RevealItemsIntent.init(targets:)(*(v0 + 128));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  static IntentResult.result<A, B>(value:opensIntent:)();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[32];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = MoveItemsIntent.perform();
  }

  else
  {

    v2 = MoveItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 296);

  IntentParameter.wrappedValue.getter();
  *(v0 + 120) = *(v0 + 112);
  IntentParameter.wrappedValue.getter();
  *(v0 + 136) = specialized RevealItemsIntent.init(targets:)(*(v0 + 128));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  static IntentResult.result<A, B>(value:opensIntent:)();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[37];
  v2 = v0[36];

  v3 = v0[1];

  return v3();
}

uint64_t default argument 0 of MoveItemsIntent.init(entities:destinationFolder:overwriteConflicts:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v23 - v15;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  v17 = type metadata accessor for LocalizedStringResource();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v23[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  if (one-time initialization token for needsInputItemsDialog != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for IntentDialog();
  v19 = __swift_project_value_buffer(v18, static MoveItemsIntent.needsInputItemsDialog);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v12, v19, v18);
  v21 = *(v20 + 56);
  v21(v12, 0, 1, v18);
  v21(v8, 1, 1, v18);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_1(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t default argument 1 of MoveItemsIntent.init(entities:destinationFolder:overwriteConflicts:)()
{
  v28 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v27 - v18;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v20 = type metadata accessor for LocalizedStringResource();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for FINodeEntity();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  if (one-time initialization token for needsDestinationDialog != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for IntentDialog();
  v23 = __swift_project_value_buffer(v22, static MoveItemsIntent.needsDestinationDialog);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v11, v23, v22);
  v25 = *(v24 + 56);
  v25(v11, 0, 1, v22);
  v25(v7, 1, 1, v22);
  (*(v0 + 104))(v3, *MEMORY[0x277CBA308], v28);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_1(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t default argument 2 of MoveItemsIntent.init(entities:destinationFolder:overwriteConflicts:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v34 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v33 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v29 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v30 = type metadata accessor for LocalizedStringResource();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v22);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v13 + 104);
  v24(v16, v23, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v16, v23, v12);
  v25 = v32;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v25, 0, 1, v30);
  v38 = 0;
  v26 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  return IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance MoveItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();

  return MEMORY[0x28210BFE8](a1, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance MoveItemsIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return MoveItemsIntent.perform()(a1, v4, v5, v6);
}

uint64_t protocol witness for AppIntent.init() in conformance MoveItemsIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized MoveItemsIntent.init()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance MoveItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MoveItemsIntent and conformance MoveItemsIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t MoveItemsIntentError.localizedStringResource.getter()
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
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

Swift::Int MoveItemsIntentError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance MoveItemsIntentError()
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
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static MoveItemsIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssistantSchema();
  v3 = __swift_project_value_buffer(v2, static MoveItemsIntent.__assistantSchemaIntent);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t specialized MoveItemsIntent.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v63 = v54 - v2;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v62 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v58 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v59 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v73 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v57 = v54 - v18;
  v19 = type metadata accessor for InputConnectionBehavior();
  v76 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v75 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v69 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v54 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = v54 - v31;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd);
  v33 = *(v13 + 56);
  v71 = v32;
  v72 = v13 + 56;
  v74 = v12;
  v70 = v33;
  v33(v32, 1, 1, v12);
  v78 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  v35 = *(*(type metadata accessor for UTType() - 8) + 72);
  v54[2] = v34;
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  v54[1] = v35;
  static UTType.folder.getter();
  if (one-time initialization token for needsInputItemsDialog != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for IntentDialog();
  v37 = __swift_project_value_buffer(v36, static MoveItemsIntent.needsInputItemsDialog);
  v38 = *(v36 - 8);
  v54[0] = *(v38 + 16);
  (v54[0])(v28, v37, v36);
  v39 = *(v38 + 56);
  v39(v28, 0, 1, v36);
  v67 = v38 + 56;
  v68 = v39;
  v39(v69, 1, 1, v36);
  v40 = *(v76 + 104);
  v66 = *MEMORY[0x277CBA308];
  v41 = v28;
  v76 += 104;
  v65 = v40;
  v40(v75);
  _s26DocumentManagerExecutables12FINodeEntityVAC10AppIntents12_IntentValueAAWlTm_1(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  v64 = v19;
  v42 = v71;
  v56 = v41;
  v55 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  v70(v42, 1, 1, v74);
  v43 = type metadata accessor for FINodeEntity();
  (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  if (one-time initialization token for needsDestinationDialog != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v36, static MoveItemsIntent.needsDestinationDialog);
  v45 = v56;
  (v54[0])(v56, v44, v36);
  v46 = v68;
  v68(v45, 0, 1, v36);
  v46(v69, 1, 1, v36);
  v65(v75, v66, v64);
  v47 = v71;
  v69 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48 = *MEMORY[0x277CC9110];
  v49 = v61;
  v50 = *(v60 + 104);
  v51 = v62;
  v50(v62, v48, v61);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50(v51, v48, v49);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v70(v47, 0, 1, v74);
  v77 = 0;
  v52 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
  v68(v45, 1, 1, v36);
  v65(v75, v66, v64);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v55;
}