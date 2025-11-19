void DOCItemCollectionLoadingView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_activity);
}

id DOCItemCollectionLoadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionLoadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void UITableView.doc_scrollToItemIfNeeded(at:)()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  if (v2 >= [v0 numberOfSections] || (v3 = IndexPath.item.getter(), v3 >= objc_msgSend(v0, sel_numberOfRowsInSection_, IndexPath.section.getter())))
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    type metadata accessor for OS_os_log();
    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v1 rectForRowAtIndexPath_];
    v28 = v6;
    v29 = v5;
    v8 = v7;
    v10 = v9;

    [v1 _effectiveContentInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v1 contentOffset];
    v20 = v14 + v19;
    [v1 contentOffset];
    v22 = v12 + v21;
    [v1 bounds];
    v23 = CGRectGetWidth(v32) - v14 - v18;
    [v1 bounds];
    v34.size.height = CGRectGetHeight(v33) - v12 - v16;
    v34.origin.x = v20;
    v34.origin.y = v22;
    v34.size.width = v23;
    *&v35.origin.x = v29;
    v35.origin.y = v28;
    v35.size.width = v8;
    v35.size.height = v10;
    if (!CGRectContainsRect(v34, v35))
    {

      [v1 scrollRectToVisible:0 animated:{*&v29, v28, v8, v10}];
    }
  }
}

unint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath()
{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log[0];
  if (!lazy cache variable for type metadata for OS_os_log[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

char *DOCColumnInfoViewController.__allocating_init(configuration:nodes:documentManager:actionManager:)(void *a1, unint64_t a2, char *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized DOCColumnInfoViewController.init(configuration:nodes:documentManager:actionManager:)(a1, a2, a3, a4);

  return v10;
}

uint64_t DOCColumnInfoViewController.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCColumnInfoViewController.actionReporting.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
    v3 = v1;
    v2();
    swift_unknownObjectRelease();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

void (*DOCColumnInfoViewController.actionReporting.modify(uint64_t **a1))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = DOCBrowserContainedViewController.actionReporting.modify(v3);
  return DOCColumnInfoViewController.actionReporting.modify;
}

void DOCColumnInfoViewController.actionReporting.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v4) + 0xE8);
      v7 = v5;
      v6();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

char *DOCColumnInfoViewController.init(configuration:nodes:documentManager:actionManager:)(void *a1, unint64_t a2, char *a3, void *a4)
{
  v7 = specialized DOCColumnInfoViewController.init(configuration:nodes:documentManager:actionManager:)(a1, a2, a3, a4);

  return v7;
}

void DOCColumnInfoViewController.init(configuration:documentManager:actionManager:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCColumnInfoViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCColumnInfoViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCColumnInfoViewController.observeEditingStateChanged(notification:)(NSNotification notification)
{
  if ([(objc_class *)notification.super.isa object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    outlined destroy of Any?(v12);
    return;
  }

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = [v1 viewIfLoaded];
  if (v2)
  {
    v3 = v2;
    v4 = [v9 viewIfLoaded];
    v5 = [v4 window];

    v6 = [v3 window];
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIWindow);
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v6)
      {
LABEL_14:
        [v3 setHidden_];

        return;
      }
    }
  }
}

Swift::Void __swiftcall DOCColumnInfoViewController.viewDidLoad()()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for DOCColumnInfoViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  [v0 doc:v2 addChildViewController:0 addSubviewBlock:?];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAutoresizingMask_];

    v5 = [v2 view];
    if (v5)
    {
      v6 = [v0 view];
      if (v6)
      {
        v7 = v6;
        [v6 frame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame_];
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t DOCColumnInfoViewController.actionsForCurrentActivityViewController.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController))
  {
    swift_beginAccess();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So23UIDocumentBrowserActionCTt0g5Tf4g_n(v2);
  }
}

void DOCColumnInfoViewController.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController);
}

id DOCColumnInfoViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCColumnInfoViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized DOCColumnInfoViewController.updateOverlay(animated:)()
{
  v1 = v0;
  result = [v0 doc:sel__doc_performLiveResizeSkipped_updateOverlay scheduleHandlerIfInLiveResize:?];
  if (result)
  {
    return result;
  }

  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x198))();
  if (!result)
  {
    return result;
  }

  v4 = result;
  [result setLargeTitleDisplayMode_];
  [v4 setHidesSearchBarWhenScrolling_];
  v5 = [v4 set:0 alternateLargeTitles:?];
  v6 = *((*v3 & *v0) + 0x250);
  v7 = (v6)(v5);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 == 1)
  {
    result = (v6)(v9);
    if (result >> 62)
    {
      v13 = result;
      v14 = __CocoaSet.count.getter();
      result = v13;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((result & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](0);
        goto LABEL_11;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(result + 32);
        swift_unknownObjectRetain();
LABEL_11:

        v11 = [v10 displayName];
        if (!v11)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = MEMORY[0x24C1FAD20](v12);
        }

        [v4 setTitle_];
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  result = _DocumentManagerBundle();
  if (!result)
  {
    goto LABEL_28;
  }

  v15 = result;
  v30._object = 0x8000000249BDC110;
  v16._countAndFlagsBits = 0x6D65744920756C25;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v16._object = 0xE900000000000073;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD00000000000003ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249B9A480;
  v20 = v6();
  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v22;
  *(v19 + 32) = v21;
  v23 = static String.localizedStringWithFormat(_:_:)();
  v25 = v24;

  v11 = MEMORY[0x24C1FAD20](v23, v25);

  [v4 setTitle_];
LABEL_22:

  v26 = (*((*v3 & *v1) + 0x1B0))([v4 setHidesBackButton_]);
  specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v26, 0);

  v28 = (*((*v3 & *v1) + 0x1C8))(v27);
  specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(v28, 0);
}

char *specialized DOCColumnInfoViewController.init(configuration:nodes:documentManager:actionManager:)(void *a1, unint64_t a2, char *a3, void *a4)
{
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController) = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_nodes) = a2;
  v9 = a4;

  v10 = a1;
  v57 = a3;
  v59 = a3;
  v11 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v10, a3, a4);
  if (a2 >> 62)
  {
LABEL_46:
    v55 = v11;
    v12 = __CocoaSet.count.getter();
    v11 = v55;
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = a2 & 0xC000000000000001;
  v11 = v11;
  v58 = v11;
  v14 = 0;
  do
  {
    v15 = v14;
    if (v12 == v14)
    {
      break;
    }

    if (v13)
    {
      v16 = MEMORY[0x24C1FC540](v14, a2);
      if (__OFADD__(v15, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v16 = *(a2 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v15, 1))
      {
        goto LABEL_12;
      }
    }

    v17 = [v16 isFolder];
    v11 = swift_unknownObjectRelease();
    v14 = v15 + 1;
  }

  while (!v17);
  v56 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager;
  v18 = *&v58[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
  v19 = objc_allocWithZone(type metadata accessor for DOCItemInfoContentViewController());

  v20 = v10;
  v21 = v57;
  v22 = v58;
  v23 = v18;
  v24 = v20;
  v10 = v58;
  v25 = DOCItemInfoContentViewController.init(configuration:nodes:allowOpenButton:documentManager:actionManager:actionDelegate:)(v24, a2, v12 == v15, v59, v18);
  v26 = v22;
  v27 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController;
  v28 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController];
  *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController] = v25;

  v29 = *&v22[v27];
  if (v29 && (v30 = *((*MEMORY[0x277D85000] & *v22) + 0xD0), v31 = v29, v59 = v26, v30(), v33 = v32, v34 = &v31[OBJC_IVAR___DOCItemInfoContentViewController_eventReporting], swift_beginAccess(), *(v34 + 1) = v33, swift_unknownObjectWeakAssign(), v31, swift_unknownObjectRelease(), (v35 = *&v26[v27]) != 0) && (v36 = v35, v37 = DOCItemInfoContentViewController.metadataView.getter(), (*((*MEMORY[0x277D85000] & *v37) + 0xE0))(0), v36, v37, v26 = v59, (v38 = *&v59[v27]) != 0))
  {
    v11 = v38;
    v57 = v11;
    if (v12)
    {
      v39 = 0;
      v10 = &selRef_initWithFrame_;
      while (1)
      {
        if (v13)
        {
          v40 = MEMORY[0x24C1FC540](v39, a2);
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v39 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v40 = *(a2 + 8 * v39 + 32);
          swift_unknownObjectRetain();
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        if ([v40 isTrashed])
        {
          break;
        }

        v42 = [v40 fpfs_fpItem];
        if (v42)
        {
          v43 = v42;
          v44 = [v42 isCollaborationInvitation];

          v11 = swift_unknownObjectRelease();
          if (v44)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v11 = swift_unknownObjectRelease();
        }

        ++v39;
        if (v41 == v12)
        {
          v45 = 1;
          goto LABEL_35;
        }
      }

      swift_unknownObjectRelease();
LABEL_33:
      v45 = 0;
LABEL_35:
      v10 = v58;
    }

    else
    {
LABEL_31:
      v45 = 1;
    }

    v46 = OBJC_IVAR___DOCItemInfoContentViewController_showsShareButton;
    swift_beginAccess();
    v47 = v57[v46];
    v57[v46] = v45;
    v48 = MEMORY[0x277D85000];
    if (v45 != v47)
    {
      v49 = DOCItemInfoContentViewController.shareButton.getter();
      [v49 setHidden_];

      v50 = DOCItemInfoContentViewController.actionsView.getter();
      if (v50)
      {
        v51 = v50;
        (*((*v48 & *v50) + 0x100))(v57[v46]);
      }

      DOCItemInfoContentViewController.updateRootContentViewElementSpacing()();
    }

    v26 = v59;
  }

  else
  {
  }

  v52 = &(*(v10 + v56))[OBJC_IVAR___DOCActionManager_actionManagerDelegate];
  swift_beginAccess();
  *(v52 + 8) = &protocol witness table for DOCColumnInfoViewController;
  swift_unknownObjectWeakAssign();
  v53 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for DOCItemCollectionViewDidChangeEditMode != -1)
  {
    swift_once();
  }

  [v53 addObserver:v26 selector:? name:? object:?];

  return v26;
}

void specialized DOCColumnInfoViewController.previewController(_:viewFor:_:)(void (*a1)(id))
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController);
  if (v3)
  {
    v4 = v3;
    v5 = DOCItemInfoContentViewController.thumbnailView.getter();
    v6 = [v5 window];

    if (v6)
    {

      v7 = *&v4[OBJC_IVAR___DOCItemInfoContentViewController____lazy_storage___thumbnailView];
      v8 = *((*MEMORY[0x277D85000] & *v7) + 0x138);
      v9 = v7;
      v10 = v8();
    }

    else
    {
      v10 = 0;
    }

    a1(v10);
  }

  else
  {
    a1(0);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = dispatch thunk of Collection.count.getter();
  if (!v22)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v44 = v22;
  v48 = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v44);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.doc_allKeys(forValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  v15[11] = a6;
  v15[12] = a1;

  v15[14] = Dictionary.filter(_:)();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v10 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable();
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in Dictionary<>.doc_allKeys(forValue:), v15, v10, a3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  return v13;
}

uint64_t closure #2 in Dictionary<>.doc_allKeys(forValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2, v9);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1, TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v12, a2);
  return (*(*(a3 - 8) + 8))(&v12[v14], a3);
}

uint64_t Dictionary<>.inverted()()
{
  Dictionary.init()();
  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
  return v1;
}

void logIfAlreadyContainsEntry #1 <A, B>(_:in:) in Dictionary<>.inverted()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v29 - v18;
  MEMORY[0x24C1FAB50](a1, a2, a4, a3, a6, v17);
  LODWORD(a3) = (*(*(a3 - 8) + 48))(v19, 1, a3);
  (*(v15 + 8))(v19, v14);
  if (a3 != 1)
  {
    (*(v11 + 16))(v13, a1, a4);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v30);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_2493AC000, v24, v25, "Dictionary invert encountered duplicate entry for: (%s). Dropping from results.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in Dictionary<>.inverted()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29[1] = a1;
  v10 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v29 - v12;
  v29[0] = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v29 - v21;
  logIfAlreadyContainsEntry #1 <A, B>(_:in:) in Dictionary<>.inverted()(a2 + *(v23 + 48), *a1, a3, a4, v30, v31);
  v24 = *(v15 + 16);
  v24(v22, a2, TupleTypeMetadata2);
  v30 = *(TupleTypeMetadata2 + 48);
  v24(v18, a2, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(a3 - 8);
  (*(v26 + 32))(v13, v18, a3);
  (*(v26 + 56))(v13, 0, 1, a3);
  v27 = v29[0];
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  (*(*(v27 - 8) + 8))(&v18[v25], v27);
  return (*(v26 + 8))(v22, a3);
}

void DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData);
  swift_beginAccess();
  v8 = *v7;
  v24 = v7[1];
  *v7 = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;

  outlined consume of OutlineColumnData?(v8, v24);
  v9 = *(v3 + 16);
  if (v9 >= 2)
  {
    v10 = 32;
    v11 = &unk_2810DF000;
    do
    {
      if (*(v3 + v10) == 0.0)
      {
        if (v11[150] != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.UI);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v25 = v16;
          *v15 = 136315138;
          v17 = MEMORY[0x24C1FB0D0](v3, MEMORY[0x277D85048]);
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_2493AC000, v13, v14, "0 size for outline sizes could cause resize issues %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          v20 = v16;
          v11 = &unk_2810DF000;
          MEMORY[0x24C1FE850](v20, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
        }
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v21 = [v23 _invalidationContextForRefreshingVisibleElementAttributes];
  if (v21)
  {
    v22 = v21;
    [v23 invalidateLayoutWithContext_];
  }

  else
  {
    __break(1u);
  }
}

id DOCCollectionViewCompositionalLayout.__allocating_init(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v9[3] = &block_descriptor_105;
  v6 = _Block_copy(v9);
  v7 = [v5 initWithSectionProvider_];
  _Block_release(v6);

  return v7;
}

uint64_t key path setter for DOCItemCollectionViewLayoutAttributes.columnData : DOCItemCollectionViewLayoutAttributes(uint64_t *a1, void **a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x60);
  outlined copy of OutlineColumnData?(v9[0], v2);
  return v7(v9);
}

void *DOCItemCollectionViewLayoutAttributes.copyWithZone(zone:)(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  objc_msgSendSuper2(&v11, sel_copyWithZone_, a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v3 = swift_dynamicCast();
  v4 = *&v7[0];
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v9, v3);
  v7[0] = v9[0];
  v7[1] = v9[1];
  v8 = v10;
  (*((*v5 & *v4) + 0x60))(v7);
  return v4;
}

uint64_t DOCItemCollectionViewLayoutAttributes.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v22);
  if (!v23)
  {
    outlined destroy of Any?(v22);
    goto LABEL_13;
  }

  v2 = type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  v3 = v17;
  v25.receiver = v1;
  v25.super_class = v2;
  if (!objc_msgSendSuper2(&v25, sel_isEqual_, v17))
  {

    goto LABEL_13;
  }

  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v22);
  v6 = v22[0];
  v7 = v22[1];
  v8 = v22[2];
  v9 = v23;
  v10 = v24;
  (*((*v4 & *v17) + 0x58))(&v17, v5);
  v11 = v17;
  v12 = v18;
  if (!v7)
  {

    if (!v12)
    {
      outlined consume of OutlineColumnData?(v6, 0);
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_12;
  }

  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = v10;
  if (!v18)
  {
    outlined copy of OutlineColumnData?(v6, v7);

LABEL_12:
    outlined consume of OutlineColumnData?(v6, v7);
    outlined consume of OutlineColumnData?(v11, v12);
    goto LABEL_13;
  }

  LOBYTE(v15[0]) = v17 & 1;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v21;
  outlined copy of OutlineColumnData?(v6, v7);
  v13 = specialized static OutlineColumnData.== infix(_:_:)(v16, v15);

  outlined consume of OutlineColumnData?(v6, v7);
  return v13 & 1;
}

id DOCItemCollectionViewLayoutAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCItemCollectionViewLayoutAttributes.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables37DOCItemCollectionViewLayoutAttributes_columnData];
  v2 = type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id DOCItemCollectionViewLayoutAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCItemCollectionViewLayoutAttributes.columnData.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  return outlined copy of OutlineColumnData?(v5, v6);
}

uint64_t DOCItemCollectionViewLayoutAttributes.columnData.setter(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = v2 + *a2;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v8;
  *(v5 + 32) = v4;
  return outlined consume of OutlineColumnData?(v6, v7);
}

uint64_t DOCCollectionViewCompositionalLayout.outlineDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCCollectionViewCompositionalLayout.outlineDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate;
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

Swift::Void __swiftcall DOCCollectionViewCompositionalLayout.prepare()()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_prepareLayout);
  swift_endAccess();
  v2 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    v4 = swift_getObjectType();
    (*(v3 + 8))(v4, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCCollectionViewCompositionalLayout.setWidthAttributes(attributes:)(UICollectionViewLayoutAttributes *attributes)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v5) = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v5)
    {
      type metadata accessor for DOCItemCollectionViewLayoutAttributes();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        v9 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData);
        swift_beginAccess();
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[2];
        v13 = v9[3];
        v14 = v9[4];
        v17[0] = v10;
        v17[1] = v11;
        v17[2] = v12;
        v17[3] = v13;
        v17[4] = v14;
        v15 = *((*MEMORY[0x277D85000] & *v8) + 0x60);
        v16 = attributes;
        outlined copy of OutlineColumnData?(v10, v11);
        v15(v17);
      }
    }
  }
}

id DOCCollectionViewCompositionalLayout.layoutAttributesForItem(at:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v20, sel_layoutAttributesForItemAtIndexPath_, isa);

  if (v4)
  {
    v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      v7 = swift_getObjectType();
      LOBYTE(v6) = (*(v6 + 16))(v7, v6);
      swift_unknownObjectRelease();
      if (v6)
      {
        type metadata accessor for DOCItemCollectionViewLayoutAttributes();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = v8;
          v10 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
          swift_beginAccess();
          v11 = *v10;
          v12 = v10[1];
          v13 = v10[2];
          v14 = v10[3];
          v15 = v10[4];
          v19[0] = v11;
          v19[1] = v12;
          v19[2] = v13;
          v19[3] = v14;
          v19[4] = v15;
          v16 = *((*MEMORY[0x277D85000] & *v9) + 0x60);
          v17 = v4;
          outlined copy of OutlineColumnData?(v11, v12);
          v16(v19);
        }
      }
    }
  }

  return v4;
}

Swift::Bool __swiftcall DOCCollectionViewCompositionalLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  height = forBoundsChange.size.height;
  width = forBoundsChange.size.width;
  y = forBoundsChange.origin.y;
  x = forBoundsChange.origin.x;
  ObjectType = swift_getObjectType();
  v7 = [v1 collectionView];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    return 1;
  }

  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_shouldInvalidateLayoutForBoundsChange_, x, y, width, height);
}

Swift::OpaquePointer_optional __swiftcall DOCCollectionViewCompositionalLayout.layoutAttributesForElements(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v36.receiver = v1;
  v36.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v36, sel_layoutAttributesForElementsInRect_, x, y, width, height);
  if (!v6)
  {
    goto LABEL_21;
  }

  v8 = v6;
  type metadata accessor for UICollectionViewLayoutAttributes();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout;
  swift_beginAccess();
  outlined init with copy of DOCItemCollectionCoreFooterAwareLayout(&v1[v10], v34);
  v12 = DOCItemCollectionCoreFooterAwareLayout._updateLayoutAttributesIfNecessary(_:)(v9, v11);

  outlined destroy of DOCItemCollectionCoreFooterAwareLayout(v34);
  if (!v12)
  {
    v6 = 0;
    goto LABEL_21;
  }

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_18:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_5:
  v35 = MEMORY[0x277D84F90];
  v6 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate];
    v15 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
    v16 = v12 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v17 = 0;
    v31 = v13;
    v32 = v12;
    v30 = v14;
    v29 = v12 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v18 = MEMORY[0x24C1FC540](v17, v12);
      }

      else
      {
        v18 = *(v12 + 8 * v17 + 32);
      }

      v19 = v18;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        LOBYTE(v20) = (*(v20 + 16))(ObjectType, v20);
        swift_unknownObjectRelease();
        if (v20)
        {
          type metadata accessor for DOCItemCollectionViewLayoutAttributes();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v24 = *(v15 + 1);
            v26 = *(v15 + 2);
            v25 = *(v15 + 3);
            v27 = *(v15 + 4);
            v34[0] = *v15;
            v23 = v34[0];
            v34[1] = v24;
            v34[2] = v26;
            v34[3] = v25;
            v34[4] = v27;
            v33 = *((*MEMORY[0x277D85000] & *v22) + 0x60);
            v28 = v19;
            v13 = v31;
            v12 = v32;
            outlined copy of OutlineColumnData?(v23, v24);
            v33(v34);
            v14 = v30;

            v16 = v29;
          }
        }
      }

      ++v17;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v13 != v17);

    v6 = v35;
  }

LABEL_21:
  result.value._rawValue = v6;
  result.is_nil = v7;
  return result;
}

uint64_t DOCCollectionViewCompositionalLayout.layoutAttributesForSupplementaryView(ofKind:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x24C1FAD20](a1, a2);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v29.receiver = v3;
  v29.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v29, sel_layoutAttributesForSupplementaryViewOfKind_atIndexPath_, v7, isa);

  if (!v9)
  {
    return 0;
  }

  v10 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    v12 = swift_getObjectType();
    LOBYTE(v11) = (*(v11 + 16))(v12, v11);
    swift_unknownObjectRelease();
    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewLayoutAttributes();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        v15 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
        swift_beginAccess();
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = v15[4];
        v27[0] = v16;
        v27[1] = v17;
        v27[2] = v18;
        v27[3] = v19;
        v27[4] = v20;
        v26 = *((*MEMORY[0x277D85000] & *v14) + 0x60);
        v21 = v9;
        outlined copy of OutlineColumnData?(v16, v17);
        v26(v27);
      }
    }
  }

  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout;
  swift_beginAccess();
  outlined init with copy of DOCItemCollectionCoreFooterAwareLayout(&v3[v22], v28);
  v23 = v9;
  v24 = DOCItemCollectionCoreFooterAwareLayout.updateLayoutAttributesIfNecessary(_:)(v9);

  outlined destroy of DOCItemCollectionCoreFooterAwareLayout(v28);
  return v24;
}

uint64_t DOCItemCollectionCoreFooterAwareLayout.updateLayoutAttributesIfNecessary(_:)(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v1;
  v3 = v1;
  v5 = DOCItemCollectionCoreFooterAwareLayout._updateLayoutAttributesIfNecessary(_:)(inited, v4);

  if (!v5)
  {
LABEL_11:

    return 0;
  }

  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1FC540](0, v5);
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

id DOCCollectionViewCompositionalLayout.__allocating_init(section:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSection_];

  return v3;
}

id DOCCollectionViewCompositionalLayout.init(section:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithSection_, a1);

  return v6;
}

id DOCCollectionViewCompositionalLayout.__allocating_init(section:configuration:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSection:a1 configuration:a2];

  return v5;
}

id DOCCollectionViewCompositionalLayout.init(section:configuration:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithSection_configuration_, a1, a2);

  return v8;
}

id DOCCollectionViewCompositionalLayout.init(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_3_5;
  v8 = _Block_copy(aBlock);

  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithSectionProvider_, v8);

  _Block_release(v8);
  return v9;
}

id DOCCollectionViewCompositionalLayout.__allocating_init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v11[4] = a1;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v11[3] = &block_descriptor_6_5;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithSectionProvider:v8 configuration:a3];

  _Block_release(v8);

  return v9;
}

id DOCCollectionViewCompositionalLayout.init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout];
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_9_8;
  v11 = _Block_copy(aBlock);

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithSectionProvider_configuration_, v11, a3);

  _Block_release(v11);
  return v12;
}

id DOCCollectionViewCompositionalLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCCollectionViewCompositionalLayout.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id DOCCollectionViewCompositionalLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t DOCItemCollectionCoreFooterAwareLayout._updateLayoutAttributesIfNecessary(_:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    v24 = MEMORY[0x277D84F90];
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      do
      {
        v6 = 0;
        v23 = v3 & 0xC000000000000001;
        v7 = 0x8000000249BC5E50;
        while (1)
        {
          if (v23)
          {
            v8 = MEMORY[0x24C1FC540](v6, v3);
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_23;
            }

            v8 = *(v3 + 8 * v6 + 32);
          }

          v9 = v8;
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v11 = [v8 representedElementKind];
          if (v11)
          {
            v12 = v4;
            v13 = v11;
            v14 = v7;
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v2 = v16;

            v17 = v15;
            v7 = v14;
            if (v17 == 0xD000000000000024 && v14 == v2)
            {

LABEL_19:
              v2 = &v24;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              a1 = specialized ContiguousArray._endMutation()();
              v4 = v12;
              goto LABEL_6;
            }

            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_19;
            }

            v4 = v12;
          }

          else
          {
          }

LABEL_6:
          ++v6;
          if (v10 == v5)
          {
            v20 = v24;
            v2 = v22[4];
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        a1 = __CocoaSet.count.getter();
        v5 = a1;
      }

      while (a1);
    }

    v20 = MEMORY[0x277D84F90];
LABEL_26:
    MEMORY[0x28223BE20](a1, a2);
    v22[2] = v2;
    specialized Sequence.forEach(_:)(partial apply for closure #2 in DOCItemCollectionCoreFooterAwareLayout._updateLayoutAttributesIfNecessary(_:), v22, v20);
  }

  return v3;
}

void DOCItemCollectionCoreFooterAwareLayout.footerFrame(for:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v3 = Strong;
  v4 = [Strong collectionView];
  if (!v4)
  {
    v5 = v3;
LABEL_9:

LABEL_10:
    [a1 frame];
    return;
  }

  v5 = v4;
  [a1 size];
  if (v6 <= 1.0)
  {

    goto LABEL_9;
  }

  [v3 collectionViewContentSize];
  v8 = v7;
  [a1 frame];
  v9 = v5;
  [v9 bounds];
  Height = CGRectGetHeight(v15);
  [v9 safeAreaInsets];
  v12 = Height - v11;
  [v9 safeAreaInsets];
  v14 = v13;

  if (v8 < v12 - v14)
  {
    [a1 size];
  }
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionCoreFooterAwareLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionCoreFooterAwareLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?)()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id partial apply for closure #2 in DOCItemCollectionCoreFooterAwareLayout._updateLayoutAttributesIfNecessary(_:)(void **a1)
{
  v1 = *a1;
  DOCItemCollectionCoreFooterAwareLayout.footerFrame(for:)(*a1);
  return [v1 setFrame_];
}

id DOCEverywhereSearchScope.__allocating_init(displayName:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership] = 1;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v7[v8] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id DOCFileProviderSearchScope.__allocating_init(displayName:providerDomainIdentifier:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch;
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch] = 0;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership] = 1;
  v14 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName];
  *v14 = a1;
  v14[1] = a2;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_providerDomainIdentifier] = a3;
  v11[v12] = a4;
  *&v11[v13] = a5;
  v16.receiver = v11;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

id DOCItemCollectionSearchScope.__allocating_init(displayName:source:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
  v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
  *v17 = a3;
  v17[8] = a4 & 1;
  v13[v14] = a5;
  *&v13[v15] = a6;
  v19.receiver = v13;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

void UIViewController.doc_manuallyHiddenForSearch.setter(char a1)
{
  v2 = v1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v4) + 0x60))(v11);

  if (LOBYTE(v11[0]) == 2)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  else if ((v11[0] & 1) == (a1 & 1))
  {
    return;
  }

  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v2, static UIViewController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  LOBYTE(v11[0]) = a1 & 1;
  (*((*v5 & *v6) + 0x68))(v11, KeyPath);

  v8 = [v2 view];
  if (v8)
  {
    v9 = v8;
    v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v2, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v5 & *v10) + 0x60))(v11);

    [v9 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

BOOL static DOCSearchPresentationState.== infix(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if ((a2 - 2) < 3u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCSearchPresentationState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t DOCEverywhereSearchScope.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName);

  return v1;
}

id DOCEverywhereSearchScope.init(displayName:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership] = 1;
  v5 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v3[v4] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for DOCEverywhereSearchScope();
  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCEverywhereSearchScope.configuredSearchQuery.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC64B0]) initWithSearchScope_];
  [v1 setTrashedItemsMembership_];
  return v1;
}

id DOCEverywhereSearchScope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for DOCSearchScope.displayName.getter in conformance DOCEverywhereSearchScope()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName);

  return v1;
}

id DOCItemCollectionSearchScope.Source.additionalItemFilteringPredicate.getter(void *a1, char a2)
{
  if (a2)
  {
    return [a1 itemFilteringPredicate];
  }

  else
  {
    return 0;
  }
}

id DOCItemCollectionSearchScope.Source.scopedSearchQuery()(void *a1, char a2)
{
  v2 = &selRef_scopedSearchQuery;
  if ((a2 & 1) == 0)
  {
    v2 = &selRef_scopedSearchQueryUnderItem;
  }

  v3 = [a1 *v2];

  return v3;
}

uint64_t DOCItemCollectionSearchScope.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName);

  return v1;
}

id DOCItemCollectionSearchScope.additionalItemFilteringPredicate.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source + 8) == 1)
  {
    return [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source) itemFilteringPredicate];
  }

  else
  {
    return 0;
  }
}

id DOCItemCollectionSearchScope.init(displayName:source:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
  v9 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
  *v10 = a3;
  v10[8] = a4 & 1;
  v6[v7] = a5;
  *&v6[v8] = a6;
  v12.receiver = v6;
  v12.super_class = type metadata accessor for DOCItemCollectionSearchScope();
  return objc_msgSendSuper2(&v12, sel_init);
}

id DOCItemCollectionSearchScope.configuredSearchQuery.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source + 8))
  {
    v1 = &selRef_scopedSearchQuery;
  }

  else
  {
    v1 = &selRef_scopedSearchQueryUnderItem;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source) *v1];
  [v2 setShouldPerformServerSearch_];
  [v2 setTrashedItemsMembership_];
  return v2;
}

uint64_t protocol witness for DOCSearchScope.displayName.getter in conformance DOCItemCollectionSearchScope()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName);

  return v1;
}

uint64_t DOCFileProviderSearchScope.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName);

  return v1;
}

id DOCFileProviderSearchScope.init(displayName:providerDomainIdentifier:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch] = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership] = 1;
  v8 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName];
  *v8 = a1;
  v8[1] = a2;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_providerDomainIdentifier] = a3;
  v5[v6] = a4;
  *&v5[v7] = a5;
  v10.receiver = v5;
  v10.super_class = type metadata accessor for DOCFileProviderSearchScope();
  return objc_msgSendSuper2(&v10, sel_init);
}

id DOCFileProviderSearchScope.configuredSearchQuery.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC64B0]) initWithSearchScope_];
  [v1 setProviderDomainID_];
  [v1 setShouldPerformServerSearch_];
  [v1 setTrashedItemsMembership_];
  return v1;
}

uint64_t protocol witness for DOCSearchScope.displayName.getter in conformance DOCFileProviderSearchScope()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName);

  return v1;
}

id DOCPlaceholderSearchController.init(searchResultsController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithSearchResultsController_, a1);

  return v3;
}

id DOCPlaceholderSearchController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x24C1FAD20]();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id DOCPlaceholderSearchController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t DOCSearchController.dismissingAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_dismissingAssertion;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCSearchController.searchPresentationState.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchController.searchPresentationState.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x1B8))(v4);
  (*((*v5 & *v6) + 0xB8))(*(v1 + v3));
}

void (*DOCSearchController.searchPresentationState.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCSearchController.searchPresentationState.modify;
}

void DOCSearchController.searchPresentationState.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x1B8))(v4);
    (*((*v7 & *v8) + 0xB8))(*(v5 + v6));
  }

  free(v3);
}

id DOCSearchController.stackedSearchLayout.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  }

  else
  {
    v4 = type metadata accessor for DOCSearchControllerStackedLayout();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton] = 1;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState] = 4;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton] = 0;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] = 0;
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id DOCSearchControllerStackedLayout.__allocating_init(for:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState] = 4;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] = 0;
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

void DOCSearchController.stackedSearchLayout.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout) = a1;
}

void (*DOCSearchController.stackedSearchLayout.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCSearchController.stackedSearchLayout.getter();
  return DOCSearchController.stackedSearchLayout.modify;
}

void DOCSearchController.stackedSearchLayout.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout) = v2;
}

BOOL DOCSearchController.suggestionsPlacement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v2 = [v1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != 1)
  {
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0xE80))(0);
    (*((*v4 & *v1) + 0xA30))(1);
  }

  v5 = v3 != 1;
  if (v5 != *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement))
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement) = v5;
    DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
  }

  return v3 != 1;
}

uint64_t DOCSearchController.searchFieldHasFocus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchController.searchFieldHasFocus.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
  }
}

void (*DOCSearchController.searchFieldHasFocus.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSearchController.searchFieldHasFocus.modify;
}

void DOCSearchController.searchFieldHasFocus.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
  }

  free(v1);
}

id DOCSearchController.suggestionsTableViewController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  }

  else
  {
    v4 = closure #1 in DOCSearchController.suggestionsTableViewController.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCSearchController.suggestionsTableViewController.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DOCSuggestionsTableViewController()) init];
  result = [v2 view];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v6 = *MEMORY[0x277D06138];
    v7 = v4;
    [v5 setAccessibilityIdentifier_];
    [v5 setContentInsetAdjustmentBehavior_];
    v8 = [v5 widthAnchor];

    v9 = [v8 constraintEqualToConstant_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v9;

    v11 = v9;
    DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(2);

    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint);
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint) = v11;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSearchController.suggestionsTableViewController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController) = a1;
}

void (*DOCSearchController.suggestionsTableViewController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCSearchController.suggestionsTableViewController.getter();
  return DOCSearchController.suggestionsTableViewController.modify;
}

void DOCSearchController.suggestionsTableViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController) = v2;
}

void DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  v4 = v3;
  if (v3)
  {
    goto LABEL_19;
  }

  v5 = *((*v2 & *v0) + 0x208);
  v6 = v5();
  v7 = [v6 tableView];

  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = [v7 superview];

  if (v8)
  {

LABEL_19:
    v68 = (*((*v2 & *v1) + 0x208))(v3);
    v69 = [v68 tableView];

    if (v69)
    {
      [v69 setHidden_];

      DOCSearchController.updateSearchResultsContentUnavailableUIAllowed(expectsCollectionUpdate:)(0);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  v9 = v5();
  v10 = [v9 tableView];

  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v71 = v4;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView) setTranslatesAutoresizingMaskIntoConstraints_];
  v73 = v11;
  v12 = *(v1 + v11);
  v13 = v5();
  v14 = [v13 tableView];

  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v5;
  [v12 addSubview_];

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints;
  v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints);
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);
  *(v17 + 24) = 0;
  *(v17 + 32) = 1;

  DOCSizeCategoryDependantConstraints.activeSizeClass.didset(v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;

  v72 = v15;
  v22 = (v15)(v21);
  v23 = [v22 tableView];

  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = [v23 centerXAnchor];

  v25 = [*(v1 + v73) centerXAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(inited + 32) = v26;
  DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(2);

  swift_setDeallocating();
  swift_arrayDestroy();
  v70 = v16;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_249BA1010;

  v29 = (v72)(v28);
  v30 = [v29 tableView];

  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = [v30 leadingAnchor];

  v32 = [*(v1 + v73) leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v27 + 32) = v33;
  v34 = v72();
  v35 = [v34 tableView];

  if (!v35)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = [v35 trailingAnchor];

  v37 = [*(v1 + v73) trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v27 + 40) = v38;
  DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(1);

  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_249BA0470;
  v40 = [*(v1 + v73) widthAnchor];
  v41 = v72();
  v42 = [v41 tableView];

  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = [v42 widthAnchor];

  v44 = [v40 constraintGreaterThanOrEqualToAnchor:v43 multiplier:1.0];
  *(v39 + 32) = v44;
  v45 = [*(v1 + v73) topAnchor];
  v46 = v72();
  v47 = [v46 tableView];

  if (!v47)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v48 = [v47 topAnchor];

  v49 = [v45 constraintGreaterThanOrEqualToAnchor_];
  *(v39 + 40) = v49;
  v50 = [*(v1 + v73) bottomAnchor];
  v51 = v72();
  v52 = [v51 tableView];

  if (!v52)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v53 = [v52 bottomAnchor];

  v54 = [v50 constraintGreaterThanOrEqualToAnchor_];
  *(v39 + 48) = v54;
  v55 = [*(v1 + v73) heightAnchor];
  v56 = v72();
  v57 = [v56 tableView];

  if (v57)
  {
    v58 = objc_opt_self();
    v59 = [v57 heightAnchor];

    v60 = [v55 constraintGreaterThanOrEqualToAnchor:v59 multiplier:1.0];
    *(v39 + 56) = v60;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v58 activateConstraints_];

    v2 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v1) + 0x3A8))() & 1) != 0 && (v62 = (*((*v2 & *v1) + 0x278))()) != 0)
    {
      v63 = [v62 traitCollectionExpectedForSearchPresentation];
      swift_unknownObjectRelease();
    }

    else
    {
      v74.receiver = v1;
      v74.super_class = type metadata accessor for DOCSearchController();
      v63 = objc_msgSendSuper2(&v74, sel_traitCollection);
    }

    v4 = v71;
    v64 = *(v1 + v70);

    v65 = [v63 horizontalSizeClass];
    v66 = *(v64 + 24);
    v67 = *(v64 + 32);
    *(v64 + 24) = v65;
    *(v64 + 32) = 0;
    DOCSizeCategoryDependantConstraints.activeSizeClass.didset(v66, v67);

    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
}

uint64_t DOCSearchController.searchDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSearchController.searchDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate;
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

uint64_t DOCSearchController.presentationDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for disableWorkaroundFor92855726 != -1)
  {
    swift_once();
  }

  if (!disableWorkaroundFor92855726 && swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v1 = [v0 presentingViewController];
    if (v1)
    {
    }

    else
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0x3B0))(1);
    }
  }

  return swift_unknownObjectRelease();
}

void (*DOCSearchController.presentationDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_presentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCSearchController.presentationDelegate.modify;
}

void DOCSearchController.presentationDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
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
    if (one-time initialization token for disableWorkaroundFor92855726 != -1)
    {
      swift_once();
    }

    if (!disableWorkaroundFor92855726 && swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[4];
      swift_unknownObjectRelease();
      v5 = [v4 presentingViewController];
      if (v5)
      {
      }

      else
      {
        (*((*MEMORY[0x277D85000] & *v3[4]) + 0x3B0))(1);
      }
    }
  }

  free(v3);
}

uint64_t DOCSearchController.isDeactiveTemporary.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchController.isDeactiveTemporary.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOCSearchController.suggesters.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
  if (v2)
  {
    v4 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
    v5 = v2;
    v4(a1);
  }

  else
  {
    __break(1u);
  }
}

void DOCSearchController.suggesters.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xB8);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void (*DOCSearchController.suggesters.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager;
  *(result + 1) = v1;
  *(result + 2) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = result;
    v5 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);
    v6 = v3;
    v7 = v5();

    *v4 = v7;
    return DOCSearchController.suggesters.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSearchController.suggesters.modify(uint64_t *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = *a1;
      v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
      v7 = v2;
      v6(v5);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);

  v7 = v2;
  v4(v3);

LABEL_6:
}

void *DOCSearchController.searchQuery.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery);
  if (!v2)
  {
    DOCSearchController.determineSearchQuery()();
    v2 = *(v0 + v1);
  }

  v3 = v2;
  return v2;
}

uint64_t DOCSearchController.selectedScopeIndex.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchController.selectedScopeIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x277D85000] & *v1) + 0x4C0))(v4);
  DOCSearchController.filterTokensForSelectedScope()();
  return DOCSearchController.filterSuggestionsForSelectedScopeIfNeeded()();
}

uint64_t (*DOCSearchController.selectedScopeIndex.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSearchController.selectedScopeIndex.modify;
}

uint64_t DOCSearchController.selectedScopeIndex.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x4C0))(result);
    DOCSearchController.filterTokensForSelectedScope()();
    return DOCSearchController.filterSuggestionsForSelectedScopeIfNeeded()();
  }

  return result;
}

uint64_t DOCSearchController.confirmedSuggestions.getter()
{
  v1 = [v0 searchBar];
  v2 = [v1 searchTextField];

  v3 = [v2 tokens];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_21:
    v10 = MEMORY[0x277D84F90];
LABEL_22:

    return v10;
  }

LABEL_20:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v7 representedObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (!*(&v13 + 1))
    {
      break;
    }

    type metadata accessor for DOCSearchSuggestion();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    MEMORY[0x24C1FB090]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v6;
    if (v9 == v5)
    {
      v10 = v15;
      goto LABEL_22;
    }
  }

  outlined destroy of CharacterSet?(v14, &_sypSgMd);
LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL DOCSearchController.isInputEmpty.getter()
{
  v1 = [v0 searchBar];
  v2 = [v1 text];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v2 = (v3 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v2;
  }

  if (v6)
  {
    return 0;
  }

  v8 = [v0 searchBar];
  v9 = [v8 searchTextField];

  v10 = [v9 tokens];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12 == 0;
}

uint64_t DOCSearchController.init(configuration:resultCollectionViewController:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_dismissingAssertion] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager] = 0;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState] = 4;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController] = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints;
  type metadata accessor for DOCSizeCategoryDependantConstraints();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F98];
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *&v3[v7] = v8;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource] = 0;
  v10 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration];
  *v10 = 0;
  v10[2] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions] = v9;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] = a2;
  objc_allocWithZone(type metadata accessor for DOCSearchBar());
  v11 = a1;
  v12 = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__searchBar] = specialized DOCSearchBar.init(configuration:)(v11);
  v20.receiver = v3;
  v20.super_class = type metadata accessor for DOCSearchController();
  v13 = objc_msgSendSuper2(&v20, sel_initWithSearchResultsController_, v12);
  [v13 setObscuresBackgroundDuringPresentation_];
  [v13 _dci_setIgnoresSearchSuggestionsForStackedSearch_];
  v14 = *(*&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v14)
  {
    v15 = *((*MEMORY[0x277D85000] & *v14) + 0x1A8);
    v16 = v14;
    v17 = v15();

    if (v17)
    {
      v18 = [v17 itemFilteringPredicate];

      swift_unknownObjectWeakAssign();
      DOCSearchController.doc_commonInit()();

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id DOCSearchController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DOCSearchController.viewDidLoad()()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for DOCSearchController();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAccessibilityIdentifier_];

    v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_configuration);
    v5 = objc_allocWithZone(type metadata accessor for DOCSuggesterManager());
    v6 = MEMORY[0x277D84F90];
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_suggesters] = MEMORY[0x277D84F90];
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_gatheredSuggestions] = v6;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v4;
    v25.receiver = v5;
    v25.super_class = type metadata accessor for DOCSuggester();
    v7 = v4;
    v8 = objc_msgSendSuper2(&v25, sel_init);
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager;
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager) = v8;
    v11 = v8;

    v12 = MEMORY[0x277D85000];
    v13 = *((*MEMORY[0x277D85000] & *v11) + 0x68);
    v14 = swift_unknownObjectRetain();
    v13(v14, &protocol witness table for DOCSearchController);

    v15 = *(v1 + v9);
    if (v15)
    {
      v16 = *((*v12 & *v15) + 0x118);
      v17 = v15;
      v18 = v16(v7);

      v19 = (*((*v12 & *v1) + 0x2B0))(v18);
      v20 = (*((*v12 & *v1) + 0x208))(v19);
      v21 = *((*v12 & *v20) + 0x70);
      v22 = swift_unknownObjectRetain();
      v21(v22, &protocol witness table for DOCSearchController);

      DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
      (*((*v12 & *v1) + 0x3D8))(v23, v24);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall DOCSearchController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DOCSearchController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 readableContentGuide];

      [v5 layoutFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v15.origin.x = v7;
      v15.origin.y = v9;
      v15.size.width = v11;
      v15.size.height = v13;
      [v2 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

void DOCSearchController.updateForTraitCollectionChange(from:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x3A8))() & 1) != 0 && (v5 = (*((*v4 & *v1) + 0x278))()) != 0)
  {
    v6 = [v5 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
  }

  else
  {
    v11.receiver = v1;
    v11.super_class = type metadata accessor for DOCSearchController();
    v6 = objc_msgSendSuper2(&v11, sel_traitCollection);
  }

  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v9 = static UITraitCollection.Traits.hSizeClass;
  v10 = qword_27EEE9C60;

  v7 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v9, a1);

  if (v7)
  {
    DOCSearchController.updateForCurrentTraitCollection()();
  }

  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v9 = static UITraitCollection.Traits.sizeCategory;
  v10 = qword_27EEE9CC0;

  v8 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v9, a1);

  if (v8)
  {
    DOCSearchController.reloadSuggestionIconsForSizeCategoryChange()();
    (*((*v4 & *v2) + 0x328))();
  }
}

Swift::Void __swiftcall DOCSearchController.updateStackedLayoutAppMenuButtonIfNecessary()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  (*((*v1 & *v2) + 0x110))();
}

Swift::Void __swiftcall DOCSearchController.updateStackedLayoutMenuIfNecessary()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  (*((*v1 & *v2) + 0xC8))();
}

unint64_t DOCSearchController.currentSearchScope.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(v0, ObjectType, v4);
    v7 = swift_unknownObjectRelease();
    v8 = *((*v1 & *v0) + 0x2D8);
    if ((v8)(v7) >= *(v6 + 16))
    {

      return 0;
    }

    else
    {
      result = v8();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v6 + 16))
      {
        v9 = *(v6 + 16 * result + 32);
        swift_unknownObjectRetain();

        return v9;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t DOCSearchController.currentSearchQueryString.getter()
{
  v1 = [v0 searchBar];
  v2 = [v1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCSearchController.deactivateIfNecessary(andThen:animated:)(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  v4 = v3;
  result = (*((*MEMORY[0x277D85000] & *v3) + 0x1A0))();
  if ((result - 2) >= 3u)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss;
    swift_beginAccess();
    v11 = *&v4[v10];
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *&v4[v10] = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:);
    v15[5] = v9;
    *&v4[v10] = v11;
    swift_endAccess();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    v17 = v4;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22[0] = v21;
      *v20 = 136315650;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BEB200, v22);
      *(v20 + 12) = 1024;
      *(v20 + 14) = a3 & 1;
      *(v20 + 18) = 2048;
      *(v20 + 20) = *(*&v4[v10] + 16);

      _os_log_impl(&dword_2493AC000, v18, v19, "%s animated: %{BOOL}d blocks to run: %ld", v20, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }

    else
    {
    }

    result = [v17 setActive_];
    if ((a3 & 1) == 0)
    {
      return DOCSearchController.performBlocksToDismissAfterDeactivate()();
    }
  }

  else if (a1)
  {
    return a1();
  }

  return result;
}

id DOCSearchController.deactivate(alongsideContainingTransitionCoordinator:)(void *a1)
{
  result = [v1 setActive_];
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled) = 1;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = partial apply for closure #1 in DOCSearchController.deactivate(alongsideContainingTransitionCoordinator:);
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v7[3] = &block_descriptor_106;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v1;

    [a1 animateAlongsideTransition:0 completion:v5];
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCSearchController.activateSearch()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v29 - v20;
  if ([v1 isActive])
  {
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v32 = v3;
  [v1 loadViewIfNeeded];
  DOCSearchController.forceReloadScopeBar()();
  [v1 setActive_];
  if ([v1 isActive])
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v31 = *(v13 + 8);
    v31(v16, v12);
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in DOCSearchController.activateSearch();
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_10_1;
    v29 = _Block_copy(aBlock);
    v23 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v29;
    v25 = v30;
    MEMORY[0x24C1FB940](v21, v11, v6, v29);
    _Block_release(v24);

    (*(v32 + 8))(v6, v2);
    (*(v34 + 8))(v11, v33);
    v31(v21, v12);
    return;
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_7:
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249B9A480;
  *(v26 + 56) = type metadata accessor for DOCSearchController();
  *(v26 + 64) = lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DOCSearchController and conformance NSObject, v27, type metadata accessor for DOCSearchController);
  *(v26 + 32) = v1;
  v28 = v1;
  os_log(_:dso:log:type:_:)();
}

void closure #1 in DOCSearchController.activateSearch()(void *a1)
{
  v1 = [a1 searchBar];
  [v1 becomeFirstResponder];
}

Swift::Void __swiftcall DOCSearchController.activate(withSearchQueryString:)(Swift::String withSearchQueryString)
{
  object = withSearchQueryString._object;
  countAndFlagsBits = withSearchQueryString._countAndFlagsBits;
  (*((*MEMORY[0x277D85000] & *v1) + 0x368))();

  DOCSearchController.setSearchQueryStringAndUpdate(_:)(countAndFlagsBits, object);
}

void DOCSearchController.updateForCurrentTraitCollection()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x3A8))() & 1) != 0 && (v3 = (*((*v2 & *v0) + 0x278))()) != 0)
  {
    v4 = [v3 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
  }

  else
  {
    v13.receiver = v0;
    v13.super_class = type metadata accessor for DOCSearchController();
    v4 = objc_msgSendSuper2(&v13, sel_traitCollection);
  }

  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v11 = static UITraitCollection.Traits.hSizeClass;
  v12 = qword_27EEE9C60;

  v5 = UITraitCollection.doc_hasSpecified(_:)(&v11);

  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints);

    v7 = [v4 horizontalSizeClass];
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    *(v6 + 24) = v7;
    *(v6 + 32) = 0;
    DOCSizeCategoryDependantConstraints.activeSizeClass.didset(v8, v9);

    (*((*v2 & *v1) + 0x3D8))(v10);
  }
}

id @objc DOCSearchController.delegate.getter(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DOCSearchController();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

uint64_t DOCSearchController._currentTraitCollectionSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchController._currentTraitCollectionSource.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

void DOCSearchController.currentTraitCollectionSource.setter(char a1)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x3A8))() & 1) != 0 && (v4 = (*((*v3 & *v1) + 0x278))()) != 0)
  {
    v5 = [v4 traitCollectionExpectedForSearchPresentation];
    v6 = swift_unknownObjectRelease();
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11.receiver = v1;
    v11.super_class = type metadata accessor for DOCSearchController();
    v6 = objc_msgSendSuper2(&v11, sel_traitCollection);
    v5 = v6;
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = (*((*v3 & *v1) + 0x278))(v6);
  if (v7)
  {
    v8 = [v7 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

LABEL_8:
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCSearchController();
  v8 = objc_msgSendSuper2(&v10, sel_traitCollection);
LABEL_9:
  (*((*v3 & *v1) + 0x398))(a1 & 1);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITraitCollection);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v9 = v5;
    DOCSearchController.updateForTraitCollectionChange(from:)(v5);

    v8 = v9;
  }
}

void (*DOCSearchController.currentTraitCollectionSource.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*((*MEMORY[0x277D85000] & *v1) + 0x390))() & 1;
  return DOCSearchController.currentTraitCollectionSource.modify;
}

uint64_t DOCSearchController.LayoutConfiguration.automaticallyShowsCancelButton.getter()
{
  if (!v0[1])
  {
    return 1;
  }

  if (v0[1] == 1)
  {
    return (*v0 ^ 1) & 1;
  }

  return 0;
}

uint64_t DOCSearchController.layoutConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration);
  result = swift_beginAccess();
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t DOCSearchController.layoutConfiguration.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration;
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  v10 = v2 == v7 && v3 == v8;
  if (!v10 || ((v4 ^ v9) & 1) != 0)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x3E0))(result);
  }

  return result;
}

void (*DOCSearchController.layoutConfiguration.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  return DOCSearchController.layoutConfiguration.modify;
}

void DOCSearchController.layoutConfiguration.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 41);
  v5 = *(*a1 + 42);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v9 = v3 == v6 && v4 == v7;
  if (!v9 || ((v5 ^ v8) & 1) != 0)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x3E0))();
  }

  free(v1);
}

Swift::Void __swiftcall DOCSearchController.updateLayoutConfiguration()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x3A8))() & 1) != 0 && (v2 = (*((*v1 & *v0) + 0x278))()) != 0)
  {
    v3 = [v2 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCSearchController();
    v3 = objc_msgSendSuper2(&v12, sel_traitCollection);
  }

  v4 = [v3 horizontalSizeClass];
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_configuration);
  v6 = [v5 isPickerUI];
  if (v4 != 1)
  {
    v8 = [v0 searchBarPlacement] == 1;
    goto LABEL_9;
  }

  v7 = [v5 isPickerUI];
  v8 = [v0 searchBarPlacement] == 1;
  if (!v7)
  {
LABEL_9:
    v9 = v6;
    v10 = [v0 searchBarPlacement] == 1;
    goto LABEL_10;
  }

  v9 = v6;
  v10 = 2;
LABEL_10:
  v11 = v8;
  (*((*v1 & *v0) + 0x3C8))(&v9);
}

Swift::Void __swiftcall DOCSearchController.applyLayoutConfiguration()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x3C0);
  v2((&v5 + 6));
  (v2)((&v5 + 3), [v0 setHidesNavigationBarDuringPresentation_]);
  if (BYTE4(v5))
  {
    if (BYTE4(v5) == 1)
    {
      v3 = BYTE3(v5) ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = (*((*v1 & *v0) + 0x1B8))([v0 setAutomaticallyShowsCancelButton_]);
  v2(&v5);
  (*((*v1 & *v4) + 0xA0))(BYTE1(v5) != 2);
}

Swift::Void __swiftcall DOCSearchController.willPresentSearchController(_:)(UISearchController *a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x278))(a1);
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      [v3 willPresentSearchController_];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCSearchController.didPresentSearchController(_:)(UISearchController *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x3B0))(0);
  v4 = (*((*v2 & *v1) + 0x278))(v3);
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 didPresentSearchController_];
    }

    swift_unknownObjectRelease();
  }

  DOCSearchController.updateSearchResultsControllerVisibility()();
}

uint64_t DOCSearchController.performBlocksToDismissAfterDeactivate()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (!v4)
  {
  }

  v5 = 0;
  v6 = v3 + 40;
  while (v5 < *(v3 + 16))
  {
    ++v5;
    v7 = *(v6 - 8);

    v7(v8);

    v6 += 16;
    if (v4 == v5)
    {
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCSearchController.searchBarShouldBeginEditing(_:)(UISearchBar *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled))
  {
    return 0;
  }

  else
  {
    return [(UISearchBar *)a1 isEnabled];
  }
}

Swift::Void __swiftcall DOCSearchController.searchBarTextDidBeginEditing(_:)(UISearchBar *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1F8))(1);
  (*((*v3 & *v1) + 0x4C0))(v4);
  v5 = [(UISearchBar *)a1 text];
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

  (*((*v3 & *v1) + 0x448))(a1, v7, v9);
}

uint64_t DOCSearchController.updateSuggestions(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BEBBE0, &v26);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s. searchBar: %@", v8, 0x16u);
    outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v12 = [v5 text];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  result = String.count.getter();
  if (result < 1)
  {

    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions) = MEMORY[0x277D84F90];

    DOCSearchController.displayedSuggestions.didset();
  }

  else
  {
    v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    v19 = v18;
    v20 = String.doc_searchEscapedString.getter(v14, v16);
    v22 = v21;

    v24 = MEMORY[0x277D85000];
    v25 = (*((*MEMORY[0x277D85000] & *v2) + 0x2F0))(v23);
    (*((*v24 & *v19) + 0x120))(v20, v22, v25);
  }

  return DOCSearchController.updateSearchResultsControllerVisibility()();
}

void DOCSearchController.scheduleSuggestionsTypingTimeout()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BEBBB0, &v21);
    *(v5 + 12) = 2080;
    v7 = [v2 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    aBlock = v9;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s search text: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer;
  [*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] invalidate];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = partial apply for closure #1 in DOCSearchController.scheduleSuggestionsTypingTimeout();
  v27 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v25 = &block_descriptor_210_0;
  v18 = _Block_copy(&aBlock);

  v19 = [v16 scheduledTimerWithTimeInterval:0 repeats:v18 block:0.1];
  _Block_release(v18);
  v20 = *&v2[v15];
  *&v2[v15] = v19;
}

void closure #1 in DOCSearchController.scheduleSuggestionsTypingTimeout()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCSearchController.handleSuggestionsTypingTimeout()();
  }
}

void DOCSearchController.handleSuggestionsTypingTimeout()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BEBB80, &v14);
    *(v5 + 12) = 2080;
    v7 = [v2 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s search text: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] = 0;

  v13 = [v2 searchBar];
  DOCSearchController.updateSuggestions(_:)(v13);
}

uint64_t closure #1 in DOCSearchController.searchBarTextDidEndEditing(_:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x1F8))(0);
  result = (*((*v2 & *a1) + 0x260))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCSearchController.doc_commonInit()()
{
  v1 = v0;
  v2 = [v0 searchBar];
  [v2 setDelegate_];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCSearchController();
  objc_msgSendSuper2(&v8, sel_setDelegate_, v1);
  [v1 setSearchResultsUpdater_];
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController)) + 0xAA0);
  v5 = swift_unknownObjectRetain();
  v6 = v4(v5, &protocol witness table for DOCSearchController);
  return (*((*v3 & *v1) + 0x3D8))(v6);
}

id DOCSearchController.updateSearchResultsControllerVisibility()()
{
  if (([v0 isActive] & 1) == 0)
  {
    result = [v0 doc_hasAppearedOrIsAppearing];
    if (!result)
    {
      return result;
    }
  }

  v2 = DOCSearchController.isInputEmpty.getter();
  if ((v2 ^ [v0 showsSearchResultsController]))
  {

    return [v0 setShowsSearchResultsController_];
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  v5 = v4;
  if (v2)
  {
    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        [v5 willDismissSearchResultsController_];
      }

      swift_unknownObjectRelease();
    }

    result = (*((*v3 & *v0) + 0x278))([v0 setShowsSearchResultsController_]);
    if (result)
    {
      v6 = result;
      if ([result respondsToSelector_])
      {
        [v6 didDismissSearchResultsController_];
      }

LABEL_22:

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        [v5 willPresentSearchResultsController_];
      }

      swift_unknownObjectRelease();
    }

    result = (*((*v3 & *v0) + 0x278))([v0 setShowsSearchResultsController_]);
    if (result)
    {
      v7 = result;
      if ([result respondsToSelector_])
      {
        [v7 didPresentSearchResultsController_];
      }

      goto LABEL_22;
    }
  }

  return result;
}

void DOCSearchController.setSearchQueryStringAndUpdate(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 searchBar];
  v6 = MEMORY[0x24C1FAD20](a1, a2);
  [v5 setText_];

  v12 = [v2 searchBar];
  v7 = [v2 searchBar];
  v8 = [v7 text];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  (*((*MEMORY[0x277D85000] & *v2) + 0x448))(v12, v9, v11);
}

unint64_t DOCSearchController.blankSearchQueryForSelectedScope()()
{
  v1 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x260))())
  {
LABEL_14:
    v19 = objc_allocWithZone(MEMORY[0x277CC64B0]);

    return [v19 initWithSearchScope_];
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(v0, ObjectType, v3);
  v6 = swift_unknownObjectRelease();
  v7 = *(v5 + 16);
  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = *((*v1 & *v0) + 0x2D8);
  if ((v8)(v6) < 0 || v8() >= v7)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = v0;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v8();

      *(v17 + 12) = 2048;
      v18 = *(v5 + 16);

      *(v17 + 14) = v18;

      _os_log_impl(&dword_2493AC000, v15, v16, "Tried to get out-of-bounds index %ld of searchScopes (array size is %ld", v17, 0x16u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_14;
  }

  result = v8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v5 + 16))
  {
    v10 = *(v5 + 16 * result + 40);
    swift_unknownObjectRetain();

    v11 = swift_getObjectType();
    v12 = (*(v10 + 16))(v11, v10);
    swift_unknownObjectRelease();
    return v12;
  }

  __break(1u);
  return result;
}

void DOCSearchController.determineSearchQuery()()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!DOCSearchController.isInputEmpty.getter())
  {
    v129 = v6;
    v130 = v3;
    v8 = DOCSearchController.blankSearchQueryForSelectedScope()();
    v9 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v9)
    {
      __break(1u);
LABEL_106:

      __break(1u);
      goto LABEL_107;
    }

    v10 = v8;
    v11 = *((*MEMORY[0x277D85000] & *v9) + 0x1A8);
    v12 = v9;
    v13 = v11();

    if (!v13)
    {
      goto LABEL_113;
    }

    v128 = v2;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPQueryCollection);
    v14 = [v13 isKindOfClass_];

    v15 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion];
    v133 = v1;
    v134 = v10;
    v131 = v14;
    if (v15)
    {
      v16 = *((*MEMORY[0x277D85000] & *v15) + 0xF8);
      v17 = v15;
      v16();
      if (!v18)
      {
        goto LABEL_15;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v138[0]._countAndFlagsBits = v25;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v138[0]._countAndFlagsBits);
        *(v23 + 12) = 2112;
        *(v23 + 14) = v20;
        *v24 = v15;
        v26 = v20;
        _os_log_impl(&dword_2493AC000, v21, v22, "%s suggestion: %@", v23, 0x16u);
        outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x24C1FE850](v25, -1, -1);
        v1 = v133;
        v10 = v134;
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      type metadata accessor for DOCSearchSuggestion();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        (*((*MEMORY[0x277D85000] & *v27) + 0x1D8))(v10);
        LODWORD(v132) = 1;
      }

      else
      {
LABEL_15:
        LODWORD(v132) = 0;
      }
    }

    else
    {
      LODWORD(v132) = 0;
    }

    v28 = [v1 searchBar];
    v29 = [v28 searchTextField];

    v30 = [v29 tokens];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v31 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v33 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x24C1FC540](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v34 = *(v31 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if ([v34 representedObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v136 = 0;
          v137 = 0;
        }

        v138[0] = v136;
        v138[1] = v137;
        if (!v137._object)
        {
          goto LABEL_110;
        }

        type metadata accessor for DOCSearchSuggestion();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_111;
        }

        v37 = v135;
        (*((*MEMORY[0x277D85000] & *v135) + 0x1D8))(v134);

        ++v33;
        if (v36 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v38 = v133;
    v39 = v134;
    if (v132)
    {
      goto LABEL_67;
    }

    v40 = [v133 searchBar];
    v41 = [v40 text];

    if (!v41)
    {
      goto LABEL_67;
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = String.doc_searchEscapedString.getter(v42, v44);
    v47 = v46;

    if (String.count.getter() >= 1)
    {
      v48 = [objc_opt_self() semanticSearch];
      v49 = [v48 isEnabled];

      v50 = [v39 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL;
      if (v49)
      {
        if (!v50)
        {
          goto LABEL_56;
        }

        v51 = [v39 providerDomainID];
        if (!v51)
        {
LABEL_45:
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          __swift_project_value_buffer(v55, static Logger.UI);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v138[0]._countAndFlagsBits = v59;
            *v58 = 136315138;
            *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v138[0]._countAndFlagsBits);
            _os_log_impl(&dword_2493AC000, v56, v57, "%s [SEMANTIC SEARCH] Semantic Search enabled", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x24C1FE850](v59, -1, -1);
            MEMORY[0x24C1FE850](v58, -1, -1);
          }

          [v39 setShouldPerformSemanticSearch_];
          v60 = MEMORY[0x24C1FAD20](v45, v47);

          [v39 setUserQueryString_];
          goto LABEL_57;
        }

        v52 = [v39 providerDomainID];
        if (!v52)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v53 = v52;
        if (!DOCProviderDomainIDIsExternalDevice())
        {
          v54 = DOCProviderDomainIDIsSharedServerDomainID();

          if ((v54 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_56:
          v60 = MEMORY[0x24C1FAD20](v45, v47);

          [v39 setFilename_];
LABEL_57:

LABEL_67:
          v86 = [v39 scopeFragment];
          if (!v86)
          {
            goto LABEL_76;
          }

          v87 = [v39 providerDomainID];
          if (!v87)
          {
            goto LABEL_73;
          }

          v88 = [v39 providerDomainID];
          if (!v88)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v89 = v88;
          if (DOCProviderDomainIDIsExternalDevice())
          {

            goto LABEL_76;
          }

          v90 = DOCProviderDomainIDIsSharedServerDomainID();

          if ((v90 & 1) == 0)
          {
LABEL_73:
            [v39 setShouldPerformServerSearch_];
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_249B9A480;
            *(v91 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileProviderSearchQuery);
            *(v91 + 64) = lazy protocol witness table accessor for type NSFileProviderSearchQuery and conformance NSObject();
            *(v91 + 32) = v39;
            v92 = v39;
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();
          }

LABEL_76:
          if (![objc_opt_self() protectedAppsEnabled])
          {
LABEL_98:
            v111 = UIKeyboardGetCurrentInputMode();
            if (!v111)
            {
LABEL_104:
              v124 = *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery];
              *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery] = v39;

              return;
            }

            v0 = v111;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_249B9FA70;
            *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 40) = v113;
            *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 56) = v114;
            v115 = MEMORY[0x24C1FD910](v0);
            if (v115)
            {
              v116 = v115;
              v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v119 = v118;

              v138[0]._countAndFlagsBits = v117;
              v138[0]._object = v119;
              MEMORY[0x28223BE20](v120, v121);
              j = v138;
              v122 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v127 - 4), inited);
              swift_setDeallocating();
              swift_arrayDestroy();

              v123 = MEMORY[0x24C1FD900](v0);

              if (v123)
              {
                if ((v122 & 1) == 0)
                {
                  [v39 setKeyboardLanguage_];
                }
              }

              goto LABEL_104;
            }

            goto LABEL_106;
          }

          if (v131)
          {
            v93 = [objc_opt_self() sharedManager];
            v94 = specialized DOCAppProtectionManager.appsHiddenFromSearchScopeFragment.getter();
            v96 = v95;

            if (v96)
            {
              v97 = HIBYTE(v96) & 0xF;
              if ((v96 & 0x2000000000000000) == 0)
              {
                v97 = v94 & 0xFFFFFFFFFFFFLL;
              }

              if (v97)
              {
                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v98 = type metadata accessor for Logger();
                __swift_project_value_buffer(v98, static Logger.UI);

                v99 = Logger.logObject.getter();
                v100 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v99, v100))
                {
                  v101 = swift_slowAlloc();
                  v102 = swift_slowAlloc();
                  v138[0]._countAndFlagsBits = v102;
                  *v101 = 136315394;
                  *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v138[0]._countAndFlagsBits);
                  *(v101 + 12) = 2080;
                  *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v138[0]._countAndFlagsBits);
                  _os_log_impl(&dword_2493AC000, v99, v100, "%s [PROTECTED APPS] Filtering search results. Created filter query clause %s", v101, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C1FE850](v102, -1, -1);
                  MEMORY[0x24C1FE850](v101, -1, -1);
                }

                v103._countAndFlagsBits = v94;
                v103._object = v96;
                NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(v103);

                goto LABEL_98;
              }
            }

            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v110 = type metadata accessor for Logger();
            __swift_project_value_buffer(v110, static Logger.UI);
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v105, v106))
            {
              goto LABEL_97;
            }

            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v138[0]._countAndFlagsBits = v108;
            *v107 = 136315138;
            *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v138[0]._countAndFlagsBits);
            v109 = "%s [PROTECTED APPS] No hidden apps to filter search results.";
          }

          else
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v104 = type metadata accessor for Logger();
            __swift_project_value_buffer(v104, static Logger.UI);
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v105, v106))
            {
              goto LABEL_97;
            }

            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v138[0]._countAndFlagsBits = v108;
            *v107 = 136315138;
            *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v138[0]._countAndFlagsBits);
            v109 = "%s [PROTECTED APPS] Not filtering search results item collection does not support predicates.";
          }

          _os_log_impl(&dword_2493AC000, v105, v106, v109, v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x24C1FE850](v108, -1, -1);
          MEMORY[0x24C1FE850](v107, -1, -1);
LABEL_97:

          goto LABEL_98;
        }

LABEL_55:

        goto LABEL_56;
      }

      if (!v50)
      {
        goto LABEL_56;
      }

      v61 = [v39 providerDomainID];
      if (v61)
      {

        v62 = [v39 providerDomainID];
        if (!v62)
        {
LABEL_109:
          __break(1u);
LABEL_110:
          outlined destroy of CharacterSet?(v138, &_sypSgMd);
LABEL_111:
          v126 = 0;
          for (j = 944; ; j = 361)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_113:
            v126 = 0;
          }
        }

        v53 = v62;
        if (DOCProviderDomainIDIsExternalDevice())
        {
          goto LABEL_55;
        }

        v63 = DOCProviderDomainIDIsSharedServerDomainID();

        if (v63)
        {
          goto LABEL_56;
        }
      }

      v138[0]._countAndFlagsBits = 10786;
      v138[0]._object = 0xE200000000000000;
      v64 = String.doc_searchEscapedString.getter(v45, v47);
      MEMORY[0x24C1FAEA0](v64);

      MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
      v136._countAndFlagsBits = v45;
      v136._object = v47;
      v65 = v129;
      CharacterSet.init()();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v67 = v66;
      (*(v130 + 8))(v65, v128);

      if (v67)
      {
        v68 = 1952741219;
      }

      else
      {
        v68 = 0x7473647763;
      }

      if (v67)
      {
        v69 = 0xE400000000000000;
      }

      else
      {
        v69 = 0xE500000000000000;
      }

      MEMORY[0x24C1FAEA0](v68, v69);

      object = v138[0]._object;
      countAndFlagsBits = v138[0]._countAndFlagsBits;
      v138[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138[0]._object = v72;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v73 = v138[0]._object;
      v132 = v138[0]._countAndFlagsBits;
      v138[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138[0]._object = v74;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v129 = v138[0]._object;
      v130 = v138[0]._countAndFlagsBits;
      v138[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138[0]._object = v75;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v76 = v138[0]._object;
      v128 = v138[0]._countAndFlagsBits;
      v138[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138[0]._object = v77;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v78 = v138[0]._object;
      v127 = v138[0]._countAndFlagsBits;
      v138[0]._countAndFlagsBits = 0;
      v138[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v138[0]._countAndFlagsBits = v79;
      v138[0]._object = v81;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x24C1FAEA0](v82);

      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);

      v83 = v138[0]._object;
      v84 = v138[0]._countAndFlagsBits;
      v138[0]._countAndFlagsBits = 0;
      v138[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v138[0]._countAndFlagsBits = 40;
      v138[0]._object = 0xE100000000000000;
      MEMORY[0x24C1FAEA0](v132, v73);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v130, v129);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v128, v76);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v127, v78);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      v85 = v84;
      v38 = v133;
      v39 = v134;
      MEMORY[0x24C1FAEA0](v85, v83);

      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
      NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(v138[0]);
    }

    goto LABEL_67;
  }

  v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery] = 0;
}

Swift::Void __swiftcall NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = [v1 scopeFragment];
  if (v5)
  {

    v6 = [v1 scopeFragment];
    if (!v6)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
    v10 = String.init<A>(_:)();
    v11 = v8;
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v10;
    object = v11;
  }

  else
  {
  }

  v9 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

LABEL_7:
  [v2 setScopeFragment_];
}

Swift::Void __swiftcall DOCSearchController.reloadScopeBar()()
{
  v1 = [v0 searchBar];
  v2 = [v1 isFirstResponder];

  if (v2)
  {

    DOCSearchController.forceReloadScopeBar()();
  }
}

uint64_t DOCSearchController.forceReloadScopeBar()()
{
  v1 = v0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(v0, ObjectType, v4);
    v7 = *(v6 + 16);
    if (v7 < 2)
    {

      v19 = [v0 searchBar];
      [v19 setScopeButtonTitles_];
    }

    else
    {
      v20 = [v0 searchBar];
      v21 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = (v6 + 40);
      do
      {
        v9 = *v8;
        v10 = swift_getObjectType();
        v11 = *(v9 + 8);
        swift_unknownObjectRetain();
        v12 = v11(v10, v9);
        v14 = v13;
        swift_unknownObjectRelease();
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        }

        *(v21 + 16) = v16 + 1;
        v17 = v21 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v8 += 2;
        --v7;
      }

      while (v7);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 setScopeButtonTitles_];

      v19 = [v1 searchBar];
      [v19 setSelectedScopeButtonIndex_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id DOCSearchController.filterTokensForSelectedScope()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))();
  v30 = v3;
  v28 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_39:
    v29 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      v4 = v27;
      v32 = __CocoaSet.count.getter();
      v3 = __CocoaSet.count.getter();
      v31 = v3;
      goto LABEL_4;
    }
  }

  else
  {
    v29 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v31;
LABEL_4:
      v5 = 0;
      v6 = *v2 & *v1;
      v2 = (v30 & 0xC000000000000001);
      v7 = *(v6 + 608);
      while (1)
      {
        v8 = v4 - 1;
        if (__OFSUB__(v4, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v32 != v4)
        {
          goto LABEL_10;
        }

        if (!v28)
        {
          break;
        }

        v3 = __CocoaSet.count.getter();
        v5 = v3 - 1;
        if (__OFSUB__(v3, 1))
        {
          goto LABEL_36;
        }

LABEL_11:
        if (v8 < 0 || v8 >= v31)
        {
          goto LABEL_37;
        }

        if (v2)
        {
          v10 = MEMORY[0x24C1FC540](v4 - 1, v30);
        }

        else
        {
          if (v8 >= *(v29 + 16))
          {
            goto LABEL_38;
          }

          v10 = *(v30 + 32 + 8 * v8);
        }

        v11 = v10;
        if (v7())
        {
          v13 = v12;
          ObjectType = swift_getObjectType();
          v15 = (*(v13 + 8))(v1, ObjectType, v13);
          swift_unknownObjectRelease();
          v16 = *(v15 + 16);

          if (v16)
          {
            v17 = DOCSearchController.blankSearchQueryForSelectedScope()();
            if (([v17 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL) == 0)
            {
              v20 = v17;
              goto LABEL_28;
            }

            v18 = [v17 providerDomainID];
            if (v18)
            {

              result = [v17 providerDomainID];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v20 = result;
              if (DOCProviderDomainIDIsExternalDevice())
              {

LABEL_28:
LABEL_33:
                type metadata accessor for DOCQueryFragmentSuggestion();
                if (swift_dynamicCastClass())
                {
                  v25 = [v1 searchBar];
                  v26 = [v25 searchTextField];

                  [v26 removeTokenAtIndex_];
                }

                goto LABEL_5;
              }

              v21 = DOCProviderDomainIDIsSharedServerDomainID();

              if (v21)
              {
                goto LABEL_33;
              }
            }

            else
            {
            }
          }
        }

        if (v7())
        {
          v23 = v22;
          v24 = swift_getObjectType();
          LOBYTE(v23) = (*(v23 + 16))(v1, v24, v23);
          swift_unknownObjectRelease();
          if ((v23 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_5:

        v4 = v8;
        if (!v8)
        {
          goto LABEL_41;
        }
      }

      v5 = *(v29 + 16);
LABEL_10:
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }
  }

LABEL_41:

  return DOCSearchController.updateSearchResultsControllerVisibility()();
}

uint64_t DOCSearchController.filterSuggestionsForSelectedScopeIfNeeded()()
{
  v1 = v0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if ((result & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions;
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions);
    v25 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
LABEL_35:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v23 = v3;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v10 = *((*MEMORY[0x277D85000] & *v1) + 0x260);
        v3 = (*MEMORY[0x277D85000] & *v1) + 608;
        if (!v10())
        {
          goto LABEL_22;
        }

        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 8))(v1, ObjectType, v12);
        swift_unknownObjectRelease();
        v15 = *(v14 + 16);

        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = DOCSearchController.blankSearchQueryForSelectedScope()();
        if (([v16 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          goto LABEL_19;
        }

        v17 = [v16 providerDomainID];
        if (!v17)
        {

LABEL_22:
          if (!v10())
          {
            goto LABEL_6;
          }

          v20 = v19;
          v21 = swift_getObjectType();
          LOBYTE(v20) = (*(v20 + 16))(v1, v21, v20);
          swift_unknownObjectRelease();
          if (v20)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }

        result = [v16 providerDomainID];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v18 = result;
        if (DOCProviderDomainIDIsExternalDevice())
        {
          break;
        }

        v24 = DOCProviderDomainIDIsSharedServerDomainID();

        if ((v24 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_24:
        type metadata accessor for DOCQueryFragmentSuggestion();
        if (swift_dynamicCastClass())
        {

          goto LABEL_7;
        }

LABEL_6:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v6;
        if (v9 == v5)
        {
          v22 = v25;
          v3 = v23;
          goto LABEL_30;
        }
      }

LABEL_19:
      goto LABEL_24;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_30:

    *(v1 + v3) = v22;

    DOCSearchController.displayedSuggestions.didset();

    return DOCSearchController.updateSearchResultsControllerVisibility()();
  }

  return result;
}

void DOCSearchController.suggester(_:didDeliver:forSearchId:input:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v28 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_29:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v27 = v5;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, a2);
        }

        else
        {
          if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = *((*MEMORY[0x277D85000] & *v3) + 0x260);
        if (!v10())
        {
          goto LABEL_21;
        }

        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 8))(v3, ObjectType, v12);
        swift_unknownObjectRelease();
        v15 = *(v14 + 16);

        if (!v15)
        {
          goto LABEL_21;
        }

        v16 = DOCSearchController.blankSearchQueryForSelectedScope()();
        if (([v16 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          break;
        }

        v17 = [v16 providerDomainID];
        if (!v17)
        {

LABEL_21:
          if (!v10())
          {
            goto LABEL_4;
          }

          v21 = v20;
          v22 = swift_getObjectType();
          LOBYTE(v21) = (*(v21 + 16))(v3, v22, v21);
          swift_unknownObjectRelease();
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        v18 = [v16 providerDomainID];
        if (!v18)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v19 = v18;
        if (DOCProviderDomainIDIsExternalDevice())
        {

LABEL_18:
          goto LABEL_23;
        }

        v26 = DOCProviderDomainIDIsSharedServerDomainID();

        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_23:
        type metadata accessor for DOCQueryFragmentSuggestion();
        if (swift_dynamicCastClass())
        {

          goto LABEL_5;
        }

LABEL_4:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_5:
        ++v6;
        if (v9 == v27)
        {
          goto LABEL_30;
        }
      }

      v19 = v16;
      goto LABEL_18;
    }
  }

LABEL_30:

  v28 = specialized Array._copyToContiguousArray()(v23, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(&v28);

  v24 = v28;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    type metadata accessor for DOCSuggestion();

    v25 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for DOCSuggestion();
    v25 = v24;
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions) = v25;

  DOCSearchController.displayedSuggestions.didset();
}

void DOCSearchController.suggestionsTableViewController(_:didConfirmSuggestion:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion) = a2;
  v4 = a2;

  DOCSearchController.updateSearchQueryWithSelectedSuggestion()();
}

uint64_t DOCSearchController.suggestionsTableViewControllerDidChangeSize(_:)()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if ((result & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView);
    v5 = *((*v1 & *v3) + 0xE80);
    v6 = v4;
    return v5(v4);
  }

  return result;
}

void DOCSearchController.reloadSuggestionIconsForSizeCategoryChange()()
{
  v1 = [v0 searchBar];
  v2 = [v1 searchTextField];

  v3 = [v2 tokens];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = MEMORY[0x277D84F90];
  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v4 >> 62)
  {
LABEL_49:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = 0;
  do
  {
    v9 = v8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v4);
      }

      else
      {
        if (v9 >= v5[2])
        {
          goto LABEL_46;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if ([v10 representedObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v26 = 0u;
        v27 = 0u;
      }

      v28[0] = v26;
      v28[1] = v27;
      if (*(&v27 + 1))
      {
        break;
      }

      outlined destroy of CharacterSet?(v28, &_sypSgMd);
LABEL_7:
      ++v9;
      if (v8 == v6)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for DOCSearchSuggestion();
    if ((swift_dynamicCast() & 1) == 0 || !v29)
    {
      goto LABEL_7;
    }

    MEMORY[0x24C1FB090]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = v30;
  }

  while (v8 != v6);
LABEL_23:

  if (v7 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v12 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, v7);
      }

      else
      {
        if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      (*((*v5 & *v13) + 0x180))();

      ++v12;
      if (v15 == v4)
      {
        goto LABEL_34;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_34:
  if (v7 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      goto LABEL_44;
    }

LABEL_36:
    *&v28[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = objc_opt_self();
      v18 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x24C1FC540](v18, v7);
        }

        else
        {
          v19 = *(v7 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        v21 = (*((*v5 & *v19) + 0x178))();
        v22 = (*((*v5 & *v20) + 0xE0))();
        v23 = MEMORY[0x24C1FAD20](v22);

        v24 = [v17 tokenWithIcon:v21 text:v23];

        [v24 setRepresentedObject_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v16 != v18);
      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_36;
    }

LABEL_44:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setTokens_];
  }
}

void DOCSearchController.displayedSuggestions.didset()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x9F8))();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions;
  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions];
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_7;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_7;
  }

  if ((*((*v3 & *v0) + 0x1E8))() & 1) == 0 && ((*((*v3 & *v0) + 0x1F0))())
  {
    (*((*v3 & *v2) + 0xA30))(0);
  }

LABEL_7:
  v6 = (*((*v3 & *v0) + 0x208))();
  v7 = *((*v3 & *v6) + 0x88);

  v7(v8);

  v9 = *&v1[v4];
  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      DOCSuggestion.asInlineSuggestionItem.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UISearchSuggestion_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSearchSuggestions_];
}

uint64_t DOCSearchController.updateSearchResultsContentUnavailableUIAllowed(expectsCollectionUpdate:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x9F8))();
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions);
  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
LABEL_7:
      v7 = 1;
LABEL_8:
      if (a1)
      {
        return result;
      }

      return (*((*v4 & *v3) + 0xA30))(v7 & 1);
    }
  }

  result = (*((*v4 & *v1) + 0x1E8))();
  if (result)
  {
    goto LABEL_7;
  }

  result = (*((*v4 & *v1) + 0x1F0))();
  v7 = result ^ 1;
  if ((result ^ 1))
  {
    goto LABEL_8;
  }

  return (*((*v4 & *v3) + 0xA30))(v7 & 1);
}

void DOCSearchController.updateSearchQueryWithSelectedSuggestion()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion];
  if (v1)
  {
    v2 = v0;
    v3 = MEMORY[0x277D85000];
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v21 = v1;
    v5 = v4();
    if (v6)
    {
      DOCSearchController.setSearchQueryStringAndUpdate(_:)(v5, v6);
    }

    else
    {
      v7 = [v0 searchBar];
      v8 = [v7 searchTextField];

      v9 = [v2 searchBar];
      v10 = [v9 searchTextField];

      v11 = [v10 textualRange];
      v12 = (*((*v3 & *v21) + 0x178))();
      v13 = (*((*v3 & *v21) + 0xE0))();
      v14 = MEMORY[0x24C1FAD20](v13);

      v15 = [objc_opt_self() tokenWithIcon:v12 text:v14];

      [v15 setRepresentedObject_];
      v16 = [v2 searchBar];
      v17 = [v16 searchTextField];

      v18 = [v17 tokens];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v19 >> 62)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v8 replaceTextualPortionOfRange:v11 withToken:v15 atIndex:v20];

      DOCSearchController.updateSearchResultsControllerVisibility()();
    }
  }
}

id DOCSearchController.__allocating_init(searchResultsController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSearchResultsController_];

  return v3;
}

id DOCSearchControllerStackedLayout.init(for:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton] = 1;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState] = 4;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSearchControllerStackedLayout();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t DOCSearchControllerStackedLayout.canShowAppMenuButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchControllerStackedLayout.canShowAppMenuButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCSearchControllerStackedLayout.searchPresentationState.didset(int a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  switch(v5)
  {
    case 2:
      if (a1 == 2)
      {
        return result;
      }

      break;
    case 3:
      if (a1 == 3)
      {
        return result;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        return result;
      }

      v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible;
      v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible) = 0;
      if (v7 != 1)
      {
        return result;
      }

      result = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(result);
      goto LABEL_16;
    default:
      if ((a1 - 2) >= 3u && ((v5 ^ a1) & 1) == 0)
      {
        return result;
      }

      break;
  }

  v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible);
  v9 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x98))(result);
  v10 = *v6;
  *v6 = result & 1;
  if ((result & 1) != v10)
  {
    result = (*((*v9 & *v1) + 0x110))();
  }

  if (v8)
  {
LABEL_16:
    if (*v6 == 1 && (*(v1 + v3) & 0xFE) != 2)
    {
      return (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(result);
    }
  }

  return result;
}

uint64_t DOCSearchControllerStackedLayout.searchPresentationState.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchControllerStackedLayout.searchPresentationState.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return DOCSearchControllerStackedLayout.searchPresentationState.didset(v4);
}

void (*DOCSearchControllerStackedLayout.searchPresentationState.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSearchControllerStackedLayout.searchPresentationState.modify;
}

void DOCSearchControllerStackedLayout.searchPresentationState.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  DOCSearchControllerStackedLayout.searchPresentationState.didset(v5);

  free(v1);
}

Swift::Void __swiftcall DOCSearchControllerStackedLayout.updateAppMenu()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = MEMORY[0x277D85000];
  v16 = Strong;
  if (!(*((*MEMORY[0x277D85000] & *Strong) + 0x260))())
  {
    v14 = v16;
LABEL_10:

    return;
  }

  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton);
  if (v4)
  {
    v5 = v3;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = v4;
    v9 = v7(v16, ObjectType, v5);
    v10 = *((*v2 & *v8) + 0x60);
    v11 = v9;
    v10(v9);
    v12 = v8;
    if (!v9 || (v13 = [v11 accessibilityIdentifier]) == 0)
    {
      v13 = 0;
    }

    [v12 setAccessibilityIdentifier_];

    swift_unknownObjectRelease();
    v14 = v15;
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCSearchControllerStackedLayout.updateAppMenuButtonIfNecessary()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible;
    if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] == 1)
    {
      v26 = Strong;
      v25 = [Strong searchBar];
      v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton;
      v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton];
      if (v4)
      {
        v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton];
        v6 = v5;
      }

      else
      {
        v6 = [objc_allocWithZone(type metadata accessor for DOCSearchAppMenuButton()) init];
        v5 = 0;
        v4 = *&v0[v3];
      }

      *&v0[v3] = v6;
      v9 = v6;
      v10 = v5;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      *(v12 + 24) = v9;
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in DOCSearchControllerStackedLayout.updateAppMenuButtonIfNecessary();
      *(v13 + 24) = v12;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_20_2;
      v14 = _Block_copy(aBlock);
      v15 = v9;
      v16 = v0;

      [v11 performWithoutAnimation_];
      _Block_release(v14);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if (v11)
      {
        __break(1u);
      }

      else
      {
        v18 = MEMORY[0x277D85000];
        v19 = (*((*MEMORY[0x277D85000] & *v15) + 0x58))(v17);
        if (v19)
        {

          v20 = v25;
          [v20 _setSearchFieldContainerLayoutCustomizationDelegate_];
          [v15 frame];
          Width = CGRectGetWidth(v30);
          v22 = _UISolariumEnabled();
          v23 = 24.0;
          if (v22)
          {
            v23 = 16.0;
          }

          [v20 _setAdditionalPaddingForCancelButtonAtLeadingEdge_];
        }

        else
        {
          v24 = v0[v2];
          v0[v2] = 0;
          if (v24 == 1)
          {
            (*((*v18 & *v16) + 0x110))();
          }

          v20 = v25;
          [v20 _setSearchFieldContainerLayoutCustomizationDelegate_];
          [v20 _setAdditionalPaddingForCancelButtonAtLeadingEdge_];
        }
      }
    }

    else
    {
      v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton];
      if (v7)
      {
        v27 = Strong;
        v8 = v7;
        [v8 removeFromSuperview];

        Strong = v27;
      }
    }
  }
}

Swift::Void __swiftcall DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:)(UISearchBar_optional *_, UIView_optional *searchFieldContainer, __C::CGRect searchTextFieldFrame, __C::CGRect cancelButtonFrame)
{
  v5 = *(&v4->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton);
  if (v5)
  {
    width = searchTextFieldFrame.size.width;
    height = searchTextFieldFrame.size.height;
    if (_)
    {
      v7 = cancelButtonFrame.size.height;
      v8 = cancelButtonFrame.size.width;
      y = cancelButtonFrame.origin.y;
      x = cancelButtonFrame.origin.x;
      v12 = searchTextFieldFrame.origin.x;
      v13 = searchTextFieldFrame.origin.y;
      v14 = v5;
      v15 = [(UISearchBar_optional *)_ effectiveUserInterfaceLayoutDirection];
      isEscapingClosureAtFileLocation = v14;
      [isEscapingClosureAtFileLocation sizeToFit];
      [isEscapingClosureAtFileLocation frame];
      v58 = v18;
      v59 = v17;
      v20 = v19;
      v22 = v21;
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v8;
      v67.size.height = v7;
      if (CGRectIsEmpty(v67))
      {
        [(UISearchBar_optional *)_ _additionalPaddingForCancelButtonAtLeadingEdge];
        v24 = v23 + -8.0;
        if (v15 == 1)
        {
          if (!searchFieldContainer)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v24 = -v24;
          [(UIView_optional *)searchFieldContainer bounds];
          MinX = CGRectGetMinX(v68);
        }

        else
        {
          if (!searchFieldContainer)
          {
LABEL_33:
            __break(1u);
            return;
          }

          [(UIView_optional *)searchFieldContainer bounds];
          MinX = CGRectGetMaxX(v69);
        }

        x = MinX + v24;
        v70.origin.x = v12;
        v70.origin.y = v13;
        v70.size.width = width;
        v70.size.height = height;
        y = CGRectGetMidY(v70);
        v8 = 0.0;
        v7 = 0.0;
      }

      v26 = v8;
      v27 = v22;
      if (_UISolariumEnabled())
      {
        v28 = 16.0;
      }

      else
      {
        v28 = 24.0;
      }

      width = y;
      height = v7;
      v29 = x;
      v30 = y;
      v31 = v26;
      v32 = v7;
      if (v15 == 1)
      {
        v33 = v28 + CGRectGetMaxX(*&v29);
        v34 = v58;
      }

      else
      {
        v35 = CGRectGetMinX(*&v29) - v28;
        v34 = v58;
        v71.origin.x = v59;
        v71.origin.y = v20;
        v71.size.width = v58;
        v71.size.height = v27;
        v33 = v35 - CGRectGetWidth(v71);
      }

      v72.origin.x = v59;
      v72.origin.y = v20;
      v72.size.width = v34;
      v72.size.height = v27;
      MinY = CGRectGetMinY(v72);
      v73.origin.x = v59;
      v73.origin.y = v20;
      v73.size.width = v34;
      v73.size.height = v27;
      v37 = CGRectGetWidth(v73);
      v74.origin.y = v20;
      v38 = v37;
      v74.origin.x = v59;
      v74.size.width = v34;
      v74.size.height = v27;
      v39 = CGRectGetHeight(v74);
      v75.origin.x = x;
      v57 = x;
      v75.origin.y = width;
      v75.size.width = v26;
      v75.size.height = height;
      v59 = CGRectGetMinY(v75);
      v76.origin.x = x;
      v76.origin.y = width;
      v76.size.width = v26;
      v76.size.height = height;
      v40 = CGRectGetHeight(v76);
      v77.origin.x = v33;
      v77.origin.y = MinY;
      v77.size.width = v38;
      v77.size.height = v39;
      v41 = v59 + (v40 - CGRectGetHeight(v77)) * 0.5;
      v78.origin.x = v33;
      v78.origin.y = MinY;
      v78.size.width = v38;
      v78.size.height = v39;
      v42 = CGRectGetMinX(v78);
      v79.origin.x = v33;
      v79.origin.y = MinY;
      v79.size.width = v38;
      v79.size.height = v39;
      v43 = CGRectGetWidth(v79);
      v80.origin.x = v33;
      v80.origin.y = MinY;
      v80.size.width = v38;
      v80.size.height = v39;
      v63 = v42;
      v64 = v41;
      v65 = v43;
      v66 = CGRectGetHeight(v80);
      if (searchFieldContainer)
      {
        [(UIView_optional *)searchFieldContainer bounds];
        v82.origin.x = v57;
        v82.origin.y = width;
        v82.size.height = height;
        v82.size.width = v26;
        v44 = CGRectContainsRect(v81, v82);
        v45 = [isEscapingClosureAtFileLocation window];

        if (v45)
        {
        }

        MEMORY[0x28223BE20](v46, v47);
        v52[2] = isEscapingClosureAtFileLocation;
        v53 = v44;
        v54 = &v63;
        v55 = v4;
        v56 = searchFieldContainer;
        if (v45)
        {
          v48 = 0.0;
          if (v44)
          {
            v48 = 1.0;
          }

          [isEscapingClosureAtFileLocation setAlpha_];
          [isEscapingClosureAtFileLocation setFrame_];
          v49 = [isEscapingClosureAtFileLocation superview];
          if (v49)
          {

LABEL_28:
            return;
          }
        }

        else
        {
          v50 = objc_opt_self();
          v4 = swift_allocObject();
          v4[2].super.isa = partial apply for closure #1 in DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:);
          v4[3].super.isa = v52;
          searchFieldContainer = swift_allocObject();
          searchFieldContainer->value._constraintsExceptingSubviewAutoresizingConstraints = partial apply for thunk for @escaping @callee_guaranteed () -> ();
          searchFieldContainer->value._cachedTraitCollection = v4;
          aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
          aBlock[5] = searchFieldContainer;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_30;
          v51 = _Block_copy(aBlock);

          [v50 performWithoutAnimation_];

          _Block_release(v51);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
        }

        if (*(&v4->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible))
        {
          [(UIView_optional *)searchFieldContainer addSubview:isEscapingClosureAtFileLocation];
          [(UIView_optional *)searchFieldContainer bringSubviewToFront:isEscapingClosureAtFileLocation];
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

void closure #1 in DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:)(void *a1, char a2, double *a3, uint64_t a4, void *a5)
{
  v9 = 0.0;
  if (a2)
  {
    v9 = 1.0;
  }

  [a1 setAlpha_];
  [a1 setFrame_];
  v10 = [a1 superview];
  if (v10)
  {
  }

  else if (*(a4 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible))
  {
    if (a5)
    {
      [a5 addSubview_];

      [a5 bringSubviewToFront_];
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCEverywhereSearchScope.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *DOCSearchController.itemCollectionViewController(_:responderForAction:sender:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v2 = v1;
  return v1;
}

void *protocol witness for DOCItemCollectionViewControllerInteractionDelegate.itemCollectionViewController(_:responderForAction:sender:) in conformance DOCSearchController()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v2 = v1;
  return v1;
}

void one-time initialization function for disableWorkaroundFor92855726()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BEBD80);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor92855726 = v2;
}

void DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v13 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v7);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v12;
  swift_endAccess();
  if ((*(v2 + 32) & 1) == 0 && *(v12 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(*(v2 + 24));
    if (v9)
    {
      v10 = objc_opt_self();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 activateConstraints_];
    }
  }
}

void DOCSizeCategoryDependantConstraints.activeSizeClass.didset(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (*(*(v2 + 16) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v4)
      {
        v5 = objc_opt_self();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v5 deactivateConstraints_];
      }
    }
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v7 = *(v2 + 24);
    swift_beginAccess();
    if (*(*(v2 + 16) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v8)
      {
        v9 = objc_opt_self();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);

        v10 = Array._bridgeToObjectiveC()().super.isa;

        [v9 activateConstraints_];
      }
    }
  }
}

uint64_t DOCSizeCategoryDependantConstraints.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UISearchController.doc_activateWithKeyboardFocus()()
{
  [v0 setActive_];
  v1 = [v0 searchBar];
  [v1 becomeFirstResponder];
}

uint64_t UIViewController.doc_manuallyHiddenForSearch.getter()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x60))(&v3);

  return v3 & 1;
}

void (*UIViewController.doc_manuallyHiddenForSearch.modify(uint64_t *a1))(uint64_t a1)
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
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v5) + 0x60))();

  *(v4 + 32) = *(v4 + 33) & 1;
  return UIViewController.doc_manuallyHiddenForSearch.modify;
}

void UIViewController.doc_manuallyHiddenForSearch.modify(uint64_t a1)
{
  v1 = *a1;
  UIViewController.doc_manuallyHiddenForSearch.setter(*(*a1 + 32));

  free(v1);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_86:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    v93 = *(v10 + 2);
    if (v93 >= 2)
    {
      while (*v6)
      {
        v94 = v10;
        v10 = (v93 - 1);
        v95 = *&v94[16 * v93];
        v96 = *&v94[16 * v93 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v96 < v95)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
        }

        if (v93 - 2 >= *(v94 + 2))
        {
          goto LABEL_112;
        }

        v97 = &v94[16 * v93];
        *v97 = v95;
        *(v97 + 1) = v96;
        specialized Array.remove(at:)(v93 - 1);
        v10 = v94;
        v93 = *(v94 + 2);
        if (v93 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v9 = (v9 + 1);
    if (v9 < v8)
    {
      v107 = v8;
      v104 = v10;
      v12 = *(*v6 + 8 * v9);
      v100 = 8 * v11;
      v13 = (*v6 + 8 * v11);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & *v12) + 0x1B8);
      v18 = v12;
      v19 = v15;
      v111 = v17();
      v109 = (*((*v16 & *v19) + 0x1B8))();

      v102 = v11;
      v20 = (v11 + 2);
      while (1)
      {
        v9 = v107;
        if (v107 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = MEMORY[0x277D85000];
        v23 = *((*MEMORY[0x277D85000] & **v14) + 0x1B8);
        v24 = *v14;
        v25 = v21;
        v26 = v23();
        LOBYTE(v21) = (*((*v22 & *v25) + 0x1B8))();

        v20 = (v20 + 1);
        ++v14;
        if (v111 < v109 == v26 >= v21)
        {
          v9 = (v20 - 1);
          break;
        }
      }

      v6 = a3;
      v27 = v100;
      v10 = v104;
      v7 = a1;
      v11 = v102;
      if (v111 < v109)
      {
        if (v9 < v102)
        {
          goto LABEL_115;
        }

        if (v102 < v9)
        {
          v28 = 8 * v9 - 8;
          v29 = v9;
          v30 = v102;
          do
          {
            v29 = (v29 - 1);
            if (v30 != v29)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v31 = *(v32 + v27);
              *(v32 + v27) = *(v32 + v28);
              *(v32 + v28) = v31;
            }

            v30 = (v30 + 1);
            v28 -= 8;
            v27 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = v6[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_114;
      }

      if (v9 - v11 < a4)
      {
        v34 = (v11 + a4);
        if (__OFADD__(v11, a4))
        {
          goto LABEL_116;
        }

        if (v34 >= v33)
        {
          v34 = v6[1];
        }

        if (v34 < v11)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v9 != v34)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v9 < v11)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v47];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v7;
    if (!*v7)
    {
      goto LABEL_123;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_55:
          if (v55)
          {
            goto LABEL_102;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_105;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_109;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_69:
        if (v73)
        {
          goto LABEL_104;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_107;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_76:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v90 = *&v10[16 * v89 + 32];
        v91 = *&v10[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v91 < v90)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v92 = &v10[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        specialized Array.remove(at:)(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_100;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_101;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_103;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_106;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_110;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_86;
    }
  }

  v103 = v11;
  v105 = v10;
  v101 = v5;
  v35 = *v6;
  v36 = *v6 + 8 * v9 - 8;
  v37 = v11 - v9;
  v108 = v34;
LABEL_28:
  v112 = v36;
  v113 = v9;
  v38 = *(v35 + 8 * v9);
  v110 = v37;
  while (1)
  {
    v39 = *v36;
    v40 = MEMORY[0x277D85000];
    v41 = *((*MEMORY[0x277D85000] & *v38) + 0x1B8);
    v42 = v38;
    v43 = v39;
    LODWORD(v41) = v41();
    LOBYTE(v39) = (*((*v40 & *v43) + 0x1B8))();

    if (v41 >= v39)
    {
LABEL_27:
      v9 = (v9 + 1);
      v36 = v112 + 8;
      v37 = v110 - 1;
      if ((v113 + 1) != v108)
      {
        goto LABEL_28;
      }

      v9 = v108;
      v6 = a3;
      v5 = v101;
      v10 = v105;
      v7 = a1;
      v11 = v103;
      goto LABEL_35;
    }

    if (!v35)
    {
      break;
    }

    v44 = *v36;
    v38 = *(v36 + 8);
    *v36 = v38;
    *(v36 + 8) = v44;
    v36 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v13;
    }

    v40 = &a4[v9];
    v14 = a4;
    if (v7 < 8)
    {
LABEL_10:
      v5 = v6;
      goto LABEL_37;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v38 = v6;
      v18 = *v14;
      v19 = MEMORY[0x277D85000];
      v20 = *((*MEMORY[0x277D85000] & **v5) + 0x1B8);
      v21 = *v5;
      v22 = v18;
      LODWORD(v20) = v20();
      LOBYTE(v18) = (*((*v19 & *v22) + 0x1B8))();

      if (v20 < v18)
      {
        break;
      }

      v15 = v14;
      v16 = v38;
      v17 = v38 == v14++;
      if (!v17)
      {
        goto LABEL_13;
      }

LABEL_14:
      v6 = v16 + 1;
      if (v14 >= v40)
      {
        goto LABEL_10;
      }
    }

    v15 = v5;
    v16 = v38;
    v17 = v38 == v5++;
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v16 = *v15;
    goto LABEL_14;
  }

  v14 = a4;
  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, 8 * v12);
  }

  v40 = &v14[v12];
  if (v10 >= 8 && v5 > v6)
  {
    v39 = v6;
LABEL_26:
    v36 = v5;
    v23 = v5 - 1;
    v24 = v4 - 1;
    v25 = v40;
    v37 = v5 - 1;
    do
    {
      v26 = v14;
      v27 = v24;
      v28 = (v24 + 1);
      v29 = *--v25;
      v30 = *v23;
      v31 = *((*MEMORY[0x277D85000] & *v29) + 0x1B8);
      v32 = v29;
      v33 = v30;
      v34 = v31();
      LOBYTE(v30) = (*((*MEMORY[0x277D85000] & *v33) + 0x1B8))();

      if (v34 < v30)
      {
        v4 = v27;
        if (v28 != v36)
        {
          *v27 = *v37;
        }

        v14 = v26;
        if (v40 <= v26 || (v5 = v37, v37 <= v39))
        {
          v5 = v37;
          goto LABEL_37;
        }

        goto LABEL_26;
      }

      if (v28 != v40)
      {
        *v27 = *v25;
      }

      v24 = v27 - 1;
      v40 = v25;
      v14 = v26;
      v23 = v37;
    }

    while (v25 > v26);
    v40 = v25;
    v5 = v36;
  }

LABEL_37:
  if (v5 != v14 || v5 >= (v14 + ((v40 - v14 + (v40 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v14, 8 * (v40 - v14));
  }

  return 1;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void specialized DOCSearchController.searchBar(_:textDidChange:)(void *a1)
{
  v3 = [v1 presentingViewController];
  if (v3)
  {
    v13 = v3;
    if (([v3 doc_hasDisappearedOrIsDisappearing] & 1) == 0)
    {
      [v1 loadViewIfNeeded];
      v4 = [a1 text];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 0;
        v8 = 0xE000000000000000;
      }

      v10 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v10 = v9;
      }

      if (v10)
      {
        DOCSearchController.scheduleSuggestionsTypingTimeout()();
      }

      else
      {
        v11 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer];
        *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] = 0;

        v12 = [v1 searchBar];
        DOCSearchController.updateSuggestions(_:)(v12);
      }
    }
  }
}

uint64_t specialized DOCAppProtectionManager.appsHiddenFromSearchScopeFragment.getter()
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedManager];
  v1 = specialized DOCAppProtectionManager.appContainerOIDsToHideFromSearch.getter();

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 2);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      _StringGuts.grow(_:)(28);

      MEMORY[0x24C1FAEA0](v4, v5);
      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = 0xD000000000000019;
      *(v8 + 40) = 0x8000000249BEBCA0;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

void specialized DOCSearchController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_dismissingAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager) = 0;
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState) = 4;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController) = 0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints;
  type metadata accessor for DOCSizeCategoryDependantConstraints();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F98];
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v0 + v2) = v3;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource) = 0;
  v5 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration;
  *v5 = 0;
  *(v5 + 2) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions) = v4;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id specialized DOCSearchController.willDismissSearchController(_:)()
{
  type metadata accessor for DOCAssertion();
  v1 = swift_allocObject();
  *(v1 + 32) = 1;
  *(v1 + 40) = MEMORY[0x277D84F90];
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x8000000249BEBCC0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  v4 = (*((*v2 & *v0) + 0x278))(v3);
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 willDismissSearchController_];
    }

    swift_unknownObjectRelease();
  }

  return [v0 setShowsSearchResultsController_];
}

uint64_t specialized DOCSearchController.didDismissSearchController(_:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      [v4 didDismissSearchController_];
    }

    v3 = swift_unknownObjectRelease();
  }

  v5 = (*((*v2 & *v1) + 0x120))(v3);
  if (v5)
  {
    (*(*v5 + 160))(v5);
  }

  (*((*v2 & *v1) + 0x128))(0);

  return DOCSearchController.performBlocksToDismissAfterDeactivate()();
}

uint64_t specialized DOCSearchController.searchBarTextDidEndEditing(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCSearchController.searchBarTextDidEndEditing(_:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_219;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

void specialized DOCSearchController.updateSearchResults(for:selecting:)(void *a1)
{
  if ([a1 representedObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    type metadata accessor for DOCSuggestion();
    v2 = swift_dynamicCast();
    v3 = v6;
    if (!v2)
    {
      v3 = 0;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v9, &_sypSgMd);
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion) = v3;
  v5 = v3;

  DOCSearchController.updateSearchQueryWithSelectedSuggestion()();
}

void specialized DOCSearchController.updateSearchResults(for:)()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery) = 0;

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x2C0))();
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v7 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v7)
    {
      v8 = v4;
      v9 = *((*v3 & *v7) + 0x1A8);
      v10 = v7;
      v11 = v9();

      if (!v11)
      {
        goto LABEL_74;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
      }

      v13 = *(v5 + v6);
      if (v13)
      {
        v14 = *((*v3 & *v13) + 0x1A8);
        v15 = v13;
        v16 = v14();

        if (!v16)
        {
          goto LABEL_74;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        v69 = v17;
        if (v17)
        {
          if (!v12)
          {
            v70 = v17;
            goto LABEL_13;
          }
        }

        else
        {

          if (!v12)
          {
            goto LABEL_74;
          }
        }

        v70 = v12;
LABEL_13:
        v18 = one-time initialization token for UI;
        v68 = v12;
        if (v18 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_249B9A480;
        *(v19 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileProviderSearchQuery);
        *(v19 + 64) = lazy protocol witness table accessor for type NSFileProviderSearchQuery and conformance NSObject();
        *(v19 + 32) = v8;
        v20 = v8;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v21 = MEMORY[0x277D84F90];
        v71 = MEMORY[0x277D84F90];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v23 = Strong;
          MEMORY[0x24C1FB090]();
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v21 = v71;
        }

        if (!(*((*v3 & *v1) + 0x260))())
        {
          goto LABEL_27;
        }

        v25 = v24;
        ObjectType = swift_getObjectType();
        v27 = (*(v25 + 8))(v1, ObjectType, v25);
        v28 = swift_unknownObjectRelease();
        if (!*(v27 + 16))
        {

          goto LABEL_27;
        }

        v29 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D8))(v28);
        if ((v29 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v29 < *(v27 + 16))
        {
          v30 = *(v27 + 16 * v29 + 40);
          swift_unknownObjectRetain();

          v31 = swift_getObjectType();
          v32 = (*(v30 + 24))(v31, v30);
          swift_unknownObjectRelease();
          if (v32)
          {
            v21 = v32;
            MEMORY[0x24C1FB090]();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_25:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v21 = v71;
              goto LABEL_27;
            }

LABEL_62:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_25;
          }

LABEL_27:
          v33 = [v70 searchQuery];
          v34 = v20;
          if (v33)
          {
            v35 = static NSObject.== infix(_:_:)();

            if (v35)
            {
              v36 = *(v5 + v6);
              if (!v36)
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              v37 = *((*MEMORY[0x277D85000] & *v36) + 0x1A8);
              v38 = v36;
              v39 = v37();

              if (!v39)
              {
                goto LABEL_74;
              }

              v40 = [v39 itemFilteringPredicate];

              if (v40)
              {
              }

              else if (v21 >> 62)
              {
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_44;
                }
              }

              else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v41 = *(v5 + v6);
              if (!v41)
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v42 = *((*MEMORY[0x277D85000] & *v41) + 0x1A8);
              v43 = v41;
              v44 = v42();

              if (!v44)
              {
                goto LABEL_74;
              }

              v45 = [v44 itemFilteringPredicate];

              if (!v45)
              {
LABEL_38:

                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v46 = type metadata accessor for Logger();
                __swift_project_value_buffer(v46, static Logger.UI);
                v47 = v34;
                v48 = Logger.logObject.getter();
                v49 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v48, v49))
                {
                  v50 = swift_slowAlloc();
                  v51 = swift_slowAlloc();
                  *v50 = 138412290;
                  *(v50 + 4) = v47;
                  *v51 = v8;
                  v52 = v47;
                  _os_log_impl(&dword_2493AC000, v48, v49, "Not triggering a new observation, since search query object or predicate(s) haven't changed: %@", v50, 0xCu);
                  outlined destroy of CharacterSet?(v51, &_sSo8NSObjectCSgMd);
                  MEMORY[0x24C1FE850](v51, -1, -1);
                  MEMORY[0x24C1FE850](v50, -1, -1);

                  swift_unknownObjectRelease();

                  v48 = v52;
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                goto LABEL_58;
              }

              if (v21 >> 62)
              {
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_38;
                }
              }

              else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }
            }
          }

LABEL_44:
          v53 = *(v5 + v6);
          if (v53)
          {
            v54 = MEMORY[0x277D85000];
            v55 = *((*MEMORY[0x277D85000] & *v53) + 0x1A8);
            v56 = v53;
            v57 = v55();

            if (!v57)
            {
              goto LABEL_74;
            }

            [v57 stopObserving];

            [v70 setSearchQuery_];
            v58 = *(v5 + v6);
            if (v58)
            {
              v59 = *((*v54 & *v58) + 0x1A8);
              v60 = v58;
              v61 = v59();

              if (!v61)
              {
                goto LABEL_74;
              }

              if (v21 >> 62)
              {
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_50;
                }
              }

              else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_50:
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSPredicate);
                isa = Array._bridgeToObjectiveC()().super.isa;
                v63 = [objc_opt_self() andPredicateWithSubpredicates_];

                goto LABEL_55;
              }

              v63 = 0;
LABEL_55:
              [v61 setItemFilteringPredicate_];

              v64 = *(v5 + v6);
              if (v64)
              {
                v65 = *((*v54 & *v64) + 0x1A8);
                v66 = v64;
                v67 = v65();

                if (v67)
                {
                  [v67 startObserving];

                  swift_unknownObjectRelease();
LABEL_58:

                  return;
                }

                while (1)
                {
LABEL_74:
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }
              }

              goto LABEL_71;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_69;
  }
}

id partial apply for closure #1 in DOCSearchControllerStackedLayout.updateAppMenuButtonIfNecessary()()
{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xC8))();

  return [v1 sizeToFit];
}

unint64_t lazy protocol witness table accessor for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement()
{
  result = lazy protocol witness table cache variable for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement;
  if (!lazy protocol witness table cache variable for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource()
{
  result = lazy protocol witness table cache variable for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource;
  if (!lazy protocol witness table cache variable for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSearchController.LayoutConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

unint64_t lazy protocol witness table accessor for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement()
{
  result = lazy protocol witness table cache variable for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement;
  if (!lazy protocol witness table cache variable for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSFileProviderSearchQuery and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSFileProviderSearchQuery and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSFileProviderSearchQuery and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSFileProviderSearchQuery);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileProviderSearchQuery and conformance NSObject);
  }

  return result;
}

void __swiftcall DOCItemCollectionViewController.configuredSaveButton()(UIBarButtonItem *__return_ptr retstr)
{
  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = *(*((*MEMORY[0x277D85000] & *v1) + 0x1908))();
  v6 = (*(v4 + 432))(v49);
  v7 = *(v5 + 8);
  if (v7)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v9 = v5;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v50.value.super.isa = 0;
    UIBarButtonItem.init(title:image:primaryAction:menu:)(v12, 0, v50, 0, v11);
    v14 = v13;
    [v13 setStyle_];
    v15 = *(v9 + 8);
    *(v9 + 8) = v14;
    v16 = v14;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249BA0290;
    *(v17 + 32) = v16;
    v8 = v16;
    v18 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v19 = *v9;
    *v9 = v18;

    v7 = 0;
  }

  v20 = v7;
  v6(v49, 0);

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  v22 = (*((*v3 & *v2) + 0xC70))();
  if (v22)
  {
    v23 = v22;
    v24 = (*((*v3 & *v2) + 0xE8))();
    if (v24)
    {
      v25 = v24;
      v26 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
      if ([v26 interactionMode] == 2 || objc_msgSend(v26, sel_interactionMode) == 3)
      {
        v27 = [v25 pickerOperationTitleFor:v23 useShortTitle:1];
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v29;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
LABEL_21:
        v44 = v8;
        v45 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

        [v44 setTitle_];

        [v44 setEnabled_];

        return;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v31 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v31 interactionMode] == 2)
  {
    v32 = _DocumentManagerBundle();
    if (v32)
    {
      v33 = v32;
      v48 = 0x8000000249BEBDA0;
      v34 = 0x617A696C61636F4CLL;
      v35 = 0xEB00000000656C62;
      v36 = 1702256979;
LABEL_15:
      v37 = 0xE400000000000000;
      v38.super.isa = v33;
      v39 = 0;
      v40 = 0xE000000000000000;
LABEL_19:
      v42 = 0xD00000000000001ALL;
LABEL_20:
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, *&v34, v38, *&v39, *(&v48 - 1));
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (getter of pickerOp #1 in DOCItemCollectionViewController.configuredSaveButton()(v21, v2) == 1)
  {
    v41 = _DocumentManagerBundle();
    if (v41)
    {
      v33 = v41;
      v48 = 0x8000000249BD74E0;
      v34 = 0x617A696C61636F4CLL;
      v35 = 0xEB00000000656C62;
      v36 = 0xD00000000000001BLL;
      v37 = 0x8000000249BD74C0;
      v38.super.isa = v33;
      v39 = 2037411651;
      v40 = 0xE400000000000000;
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = [v31 forPickingFolders];
  v47 = _DocumentManagerBundle();
  v33 = v47;
  if (v46)
  {
    if (v47)
    {
      v48 = 0x8000000249BD7490;
      v34 = 0x617A696C61636F4CLL;
      v35 = 0xEB00000000656C62;
      v42 = 0xD000000000000026;
      v36 = 1852141647;
      v37 = 0xE400000000000000;
      v38.super.isa = v33;
      v39 = 0;
      v40 = 0xE000000000000000;
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (v47)
  {
    v48 = 0x8000000249BD7470;
    v34 = 0x617A696C61636F4CLL;
    v35 = 0xEB00000000656C62;
    v36 = 1702260557;
    goto LABEL_15;
  }

LABEL_30:
  __break(1u);
}

void closure #1 in closure #1 in DOCItemCollectionViewController.configuredSaveButton()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
  }
}

id getter of pickerOp #1 in DOCItemCollectionViewController.configuredSaveButton()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *a2) + 0xC70))();
    if (v6)
    {
      v7 = v6;
      v8 = (*((*v5 & *a2) + 0xE8))();
      if (v8)
      {
        v2 = [v8 pickerOperationFor_];
        swift_unknownObjectRelease();
      }

      else
      {
        v2 = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v2 = 0;
    }

    swift_beginAccess();
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
  }

  return v2;
}

Swift::Int __swiftcall String.doc_editDistance(from:)(Swift::String from)
{
  v4 = v2;
  v5 = v1;
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v8 = String.count.getter();
  v9 = String.count.getter();
  if (v9 < 1)
  {

    return String.count.getter();
  }

  v10 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v10 < 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v11 = v9;
  v54 = v8;
  if (v8 == -1)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = v10;
    bzero((v12 + 32), 8 * v8 + 8);
  }

  v55 = v11;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_90;
  }

  v57 = v5;
  v58 = v4;
  v3 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(v12, v11 + 1);

  if (v11 + 1 < 1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_92:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v14 = v54;
  v15 = 0;
  while (1)
  {
    v16 = v3[2];
    if (v15 >= v16)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v17 = &v3[v15];
    v18 = v17[4];
    if (!*(v18 + 16))
    {
      goto LABEL_80;
    }

    v19 = *(v18 + 32);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_81;
    }

    if (v15 + 1 >= v16)
    {
      goto LABEL_82;
    }

    v21 = v17[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[5] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if (!*(v21 + 2))
    {
      goto LABEL_23;
    }

LABEL_20:
    *(v21 + 4) = v20;
    if (v55 == ++v15)
    {
      goto LABEL_24;
    }
  }

  v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
  v17[5] = v21;
  if (*(v21 + 2))
  {
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  if (v10 == 1)
  {
LABEL_35:
    v27 = HIBYTE(object) & 0xF;
    v60[0] = countAndFlagsBits;
    v60[1] = object;
    if ((object & 0x2000000000000000) == 0)
    {
      v27 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v60[2] = 0;
    v60[3] = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (v10)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_27:
        v23 = 0;
        while (v3[2])
        {
          v10 = v3[4];
          if (v23 >= *(v10 + 16))
          {
            goto LABEL_84;
          }

          v24 = *(v10 + 8 * v23 + 32);
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_85;
          }

          v26 = swift_isUniquelyReferenced_nonNull_native();
          v3[4] = v10;
          if ((v26 & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            v3[4] = v10;
          }

          if (v23 + 1 >= *(v10 + 16))
          {
            goto LABEL_86;
          }

          *(v10 + 8 * v23++ + 40) = v25;
          if (v14 == v23)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_83;
      }

LABEL_98:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      goto LABEL_27;
    }

    __break(1u);
LABEL_94:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  object = v60;
  v28 = String.Iterator.next()();
  if (v28.value._object)
  {
    v10 = v28.value._countAndFlagsBits;
    countAndFlagsBits = v28.value._object;
    v29 = 0;
    v30 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v30 = v57 & 0xFFFFFFFFFFFFLL;
    }

    v56 = v30;
    v31 = v3 + 4;
    do
    {
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_87;
      }

      v59[0] = v57;
      v59[1] = v58;
      v59[2] = 0;
      v59[3] = v56;

      object = v59;
      v36 = String.Iterator.next()();
      v35 = v36.value._object;
      v34 = v36.value._countAndFlagsBits;
      if (v36.value._object)
      {
        v37 = 0;
        while (1)
        {
          if (v34 == v10 && v35 == countAndFlagsBits)
          {

            v38 = 0;
          }

          else
          {
            object = v35;
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v38 = (v39 & 1) == 0;
          }

          v40 = v3[2];
          if (v29 >= v40)
          {
            break;
          }

          v41 = v31[v29];
          if (v37 + 1 >= *(v41 + 16))
          {
            goto LABEL_72;
          }

          v42 = v41 + 8 * v37;
          v43 = *(v42 + 40);
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_73;
          }

          if (v33 >= v40)
          {
            goto LABEL_74;
          }

          object = v31[v33];
          if (v37 >= *(object + 16))
          {
            goto LABEL_75;
          }

          v46 = *(object + 8 * v37 + 32);
          v44 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v44)
          {
            goto LABEL_76;
          }

          v48 = *(v42 + 32);
          v44 = __OFADD__(v48, v38);
          v49 = v48 + v38;
          if (v44)
          {
            goto LABEL_77;
          }

          if (v47 < v45)
          {
            v45 = v47;
          }

          if (v49 >= v45)
          {
            v14 = v45;
          }

          else
          {
            v14 = v49;
          }

          v50 = swift_isUniquelyReferenced_nonNull_native();
          v31[v33] = object;
          if ((v50 & 1) == 0)
          {
            object = specialized _ArrayBuffer._consumeAndCreateNew()(object);
            v31[v33] = object;
          }

          if (v37 + 1 >= *(object + 16))
          {
            goto LABEL_78;
          }

          *(object + 8 * v37 + 40) = v14;
          object = v59;
          v51 = String.Iterator.next()();
          v35 = v51.value._object;
          v34 = v51.value._countAndFlagsBits;
          ++v37;
          if (!v51.value._object)
          {
            goto LABEL_42;
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
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

LABEL_42:

      object = v60;
      v32 = String.Iterator.next()();
      v10 = v32.value._countAndFlagsBits;
      countAndFlagsBits = v32.value._object;
      ++v29;
    }

    while (v32.value._object);
  }

  if (v55 >= v3[2])
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_96;
  }

  v52 = v3[v55 + 4];
  if (v54 >= *(v52 + 16))
  {
    goto LABEL_97;
  }

  v53 = *(v52 + 8 * v54 + 32);

  return v53;
}

uint64_t String.doc_localizedQuotedString.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = Locale.quotationBeginDelimiter.getter();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 34;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  v13 = Locale.quotationEndDelimiter.getter();
  v42 = v11;
  v43 = v12;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 34;
  }

  v33 = v15;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE100000000000000;
  }

  v40 = a1;
  v41 = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v40 = StringProtocol.decomposedStringWithCanonicalMapping.getter();
  v41 = v17;
  v38 = 10844;
  v39 = 0xE200000000000000;
  v36 = 42;
  v37 = 0xE100000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v20 = v19;

  v40 = v18;
  v41 = v20;
  v38 = 10076;
  v39 = 0xE200000000000000;
  v36 = 39;
  v37 = 0xE100000000000000;
  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;

  v40 = v21;
  v41 = v23;
  v38 = 8796;
  v39 = 0xE200000000000000;
  v36 = 34;
  v37 = 0xE100000000000000;
  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v26 = v25;

  v40 = v24;
  v41 = v26;
  v38 = 23644;
  v39 = 0xE200000000000000;
  v36 = 92;
  v37 = 0xE100000000000000;
  v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v29 = v28;

  MEMORY[0x24C1FAEA0](v27, v29);

  MEMORY[0x24C1FAEA0](v33, v16);

  v30 = v42;
  (*(v34 + 8))(v7, v35);
  return v30;
}

uint64_t String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v23 - v6;
  v26 = a1;
  v27 = a2;
  v24 = 124;
  v25 = 0xE100000000000000;
  v23[1] = lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v24;
    v11 = objc_opt_self();
    v23[0] = v8;
    v12 = (v8 + 40);
    do
    {
      v13 = *v12;
      v26 = *(v12 - 1);
      v27 = v13;

      v14 = [v11 currentLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for Locale();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      v16 = StringProtocol.folding(options:locale:)();
      v18 = v17;
      outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd);

      v24 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v10 = v24;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v12 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t String.doc_sanitizedForComparison.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v12 - v6;
  v12[0] = a1;
  v12[1] = a2;
  v8 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.folding(options:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd);
  return v10;
}

Swift::String __swiftcall String.fileSuffixChain()()
{
  v0 = String.fileSuffix()();
  if (String.isKnownExtension()())
  {

    v1 = MEMORY[0x24C1FAF30](v0._countAndFlagsBits, v0._object);

    v2 = specialized BidirectionalCollection.dropLast(_:)(v1);
    v4 = v3;
    v6 = v5;
    v8 = v7;

    MEMORY[0x24C1FAE00](v2, v4, v6, v8);

    v9 = String.fileSuffixChain()();

    MEMORY[0x24C1FAEA0](v0._countAndFlagsBits, v0._object);

    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
  }

  else
  {

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t String.doc_searchEscapedString.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - v6;
  v38 = a1;
  v39 = a2;
  v28 = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = StringProtocol.decomposedStringWithCanonicalMapping.getter();
  v39 = v8;
  v36 = 92;
  v37 = 0xE100000000000000;
  v34 = 23644;
  v35 = 0xE200000000000000;
  v32 = a1;
  v33 = a2;
  v9 = a1;
  v29 = a1;
  v30 = v38;
  v31 = v8;
  v10 = type metadata accessor for Locale();
  v26 = *(*(v10 - 8) + 56);
  v27 = v10;
  v26(v7, 1, 1, v10);
  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd);
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = v12;

  v38 = v11;
  v39 = v13;
  v36 = 34;
  v37 = 0xE100000000000000;
  v34 = 8796;
  v35 = 0xE200000000000000;
  v31 = v13;
  v32 = v9;
  v14 = v28;
  v33 = v28;
  v30 = v11;
  v15 = v10;
  v16 = v26;
  v26(v7, 1, 1, v15);

  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd);

  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v38 = v17;
  v39 = v19;
  v36 = 39;
  v37 = 0xE100000000000000;
  v33 = v14;
  v34 = 10076;
  v35 = 0xE200000000000000;
  v31 = v19;
  v32 = v29;
  v30 = v17;
  v20 = v27;
  v16(v7, 1, 1, v27);

  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd);

  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;

  v38 = v21;
  v39 = v23;
  v36 = 42;
  v37 = 0xE100000000000000;
  v34 = 10844;
  v35 = 0xE200000000000000;
  v32 = v29;
  v33 = v28;
  v30 = v21;
  v31 = v23;
  v16(v7, 1, 1, v20);

  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd);

  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v24;
}

uint64_t String.doc_searchQueryValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 10786;
  v17 = 0xE200000000000000;
  v9 = String.doc_searchEscapedString.getter(a1, a2);
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
  v15[0] = a1;
  v15[1] = a2;
  CharacterSet.init()();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v12 = 1952741219;
  }

  else
  {
    v12 = 0x7473647763;
  }

  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v12, v13);

  return v16;
}

uint64_t String.subscript.getter()
{
  String.index(_:offsetBy:)();

  return String.subscript.getter();
}

{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

unint64_t String.subscript.getter()
{
  v0 = String.index(_:offsetBy:)();
  result = String.index(_:offsetBy:)();
  if (result >> 14 < v0 >> 14)
  {
    __break(1u);
  }

  else
  {
    v2 = String.subscript.getter();
    v3 = MEMORY[0x24C1FAE00](v2);

    return v3;
  }

  return result;
}

Swift::String __swiftcall String.fileSuffix()()
{
  v0 = MEMORY[0x24C1FAD20]();
  v1 = [v0 pathExtension];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x24C1FAEA0](v2, v4);

    v5 = 46;
    v4 = 0xE100000000000000;
  }

  v7 = v4;
  result._object = v7;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Bool __swiftcall String.isKnownExtension()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21 - v13;
  v21 = v3;
  v22 = v2;

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  result = String.hasPrefix(_:)(v15);
  if (!result)
  {
LABEL_7:
    v19 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v19 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      static UTType.data.getter();
      UTType.init(filenameExtension:conformingTo:)();
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v14, v7, v8);
        v20 = (UTType.isDeclared.getter() & 1) != 0 || UTType.isClaimed(for:handlerRank:)(0, *MEMORY[0x277CC1F20]);
        (*(v9 + 8))(v14, v8);

        return v20;
      }

      outlined destroy of CharacterSet?(v7, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    }

    else
    {
    }

    return 0;
  }

  v17 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v17 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    result = specialized Collection.first.getter(v3, v2);
    if (v18)
    {

      specialized RangeReplaceableCollection.removeFirst(_:)(1);
      v3 = v21;
      v2 = v22;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}