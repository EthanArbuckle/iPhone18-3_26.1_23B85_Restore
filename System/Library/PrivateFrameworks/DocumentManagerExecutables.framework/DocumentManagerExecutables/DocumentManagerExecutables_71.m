uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  v8(v7);

  return outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
}

void _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nSo016DOCTabbedBrowsereF0C_Tt1g5Tm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 newTrashCollection];

  v16 = [objc_allocWithZone(MEMORY[0x277D06210]) initWithItemCollection_];
  [a1 setTrashObserver_];
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a5;
  v17[5] = v13;
  v20[4] = a6;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed [FPItem]) -> ();
  v20[3] = a7;
  v18 = _Block_copy(v20);

  v19 = [v16 addSubscriber_];
  _Block_release(v18);
  [a1 setTrashSubscriber_];
}

id specialized static DOCTabbedBrowserViewController.connectToServerAllowed(for:)(void *a1)
{
  v2 = [objc_opt_self() defaultPermission];
  if ([v2 isNetworkDriveAllowed] && objc_msgSend(a1, sel_supportsRemovableFileProviders) && (objc_msgSend(a1, sel_isPickerUI) & 1) == 0)
  {
    v5 = *MEMORY[0x277D06100];
    v3 = [v2 canHostAppPerformAction:0 bundleIdentifier:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() providerDomainWithID:a1 cachePolicy:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id specialized DOCTabbedBrowserViewController.performConnectToServer(_:)()
{
  v2[0] = 0xD000000000000038;
  v2[1] = 0x8000000249BC9EA0;
  v2[2] = 0;
  v2[3] = 0;
  v3 = 3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v2, static DOCAnalyticsManager.shared);
  outlined destroy of DOCAnalyticsConnectToServerShownEvent(v2);
  return [v0 presentConnectToServer_];
}

uint64_t specialized DOCTabbedBrowserViewController.performScanDocuments(_:)()
{
  v1 = [v0 effectiveFullBrowser];
  v2 = [v1 currentViewController];

  v3 = type metadata accessor for DOCSidebarViewController(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &protocol witness table for DOCSidebarViewController;
  }

  else
  {

    v6 = [v0 effectiveFullBrowser];
    v3 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController);
    v4 = v6;
    v5 = &protocol witness table for DOCFullDocumentManagerViewController;
  }

  v8[3] = v3;
  v8[4] = v5;
  v8[0] = v4;
  __swift_project_boxed_opaque_existential_1(v8, v3);
  (v5[1])();
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t objectdestroyTm_17()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id partial apply for closure #1 in closure #1 in DOCTabbedBrowserViewController.performGoToNamedLocation(_:completion:)(id result, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(v2 + 24);
    v4 = result;
    result = [*(v2 + 16) switchToTab_];
    if (v3)
    {
      return v3(v4);
    }
  }

  return result;
}

uint64_t objectdestroy_80Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void UIStackView.doc_addFlexiblySpacedArrangedSubviews(_:minSpacing:maxSpacing:)(unint64_t a1, double a2, double a3)
{
  v8 = a1;
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_75;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return;
  }

  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v11 = *(v8 + 32);
    }

    v5 = v11;
    if (a2 < 0.0)
    {
      a2 = 0.0;
    }

    if (a2 > a3)
    {
      v12 = a2;
    }

    else
    {
      v12 = a3;
    }

    if (a3 >= 0.0)
    {
      a3 = v12;
    }

    else
    {
      a3 = 1.79769313e308;
    }

    [v3 addArrangedSubview_];
    v49 = MEMORY[0x277D84F90];
    if (v10 < 0)
    {
      goto LABEL_91;
    }

    if (v9)
    {
      if (v8 < 0)
      {
        v4 = v8;
      }

      else
      {
        v4 = (v8 & 0xFFFFFFFFFFFFFF8);
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_79;
      }

      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_79;
      }
    }

    if (v13 < v10)
    {
      goto LABEL_80;
    }

    if ((v8 & 0xC000000000000001) == 0 || v10 == 1)
    {

      if (!v9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);

      v14 = 1;
      do
      {
        v15 = v14 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v14);
        v14 = v15;
      }

      while (v10 != v15);
      if (!v9)
      {
LABEL_29:
        v4 = (v8 & 0xFFFFFFFFFFFFFF8);
        v16 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
        v17 = 1;
        goto LABEL_32;
      }
    }

    v4 = _CocoaArrayWrapper.subscript.getter();
    v16 = v18;
    v17 = v19;
    v10 = v20 >> 1;
LABEL_32:
    v9 = v3;
    v8 = MEMORY[0x277D84F90];
    v21 = v10 - v17;
    if (v10 != v17)
    {
      v45 = v5;
      if (v10 <= v17)
      {
        v22 = v17;
      }

      else
      {
        v22 = v10;
      }

      v5 = (v22 - v17);
      v23 = (v16 + 8 * v17);
      while (v5)
      {
        v24 = *v23;
        v25 = newSpacer #1 () in UIStackView.doc_addFlexiblySpacedArrangedSubviews(_:minSpacing:maxSpacing:)(a2, a3);
        MEMORY[0x24C1FB090]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v3 = &v49;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v49;
        [v9 addArrangedSubview_];
        [v9 addArrangedSubview_];

        --v5;
        ++v23;
        if (!--v21)
        {
          v5 = v45;
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_42:
    swift_unknownObjectRelease();

    v4 = (v8 >> 62);
    if (!(v8 >> 62))
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      goto LABEL_44;
    }

LABEL_81:
    if (!__CocoaSet.count.getter())
    {
LABEL_82:

LABEL_83:

      return;
    }

LABEL_44:
    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    v26 = MEMORY[0x24C1FC540](0, v8);
LABEL_47:
    v47 = v26;
    if (v4)
    {
      v28 = __CocoaSet.count.getter();
      if (v28 < 0)
      {
        goto LABEL_92;
      }

      v9 = v28;
      v27 = v28 != 0;
      if (__CocoaSet.count.getter() < v27)
      {
        goto LABEL_87;
      }

      if (__CocoaSet.count.getter() < v9)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v9 != 0;
      if (v9 < v27)
      {
        goto LABEL_87;
      }
    }

    if ((v8 & 0xC000000000000001) != 0 && v9 > 1)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);

      v29 = v27;
      do
      {
        v30 = (v29 + 1);
        _ArrayBuffer._typeCheckSlowPath(_:)(v29);
        v29 = v30;
      }

      while (v9 != v30);
      if (v4)
      {
LABEL_60:

        _CocoaArrayWrapper.subscript.getter();
        v31 = v32;
        v27 = v33;
        v9 = (v34 >> 1);
        goto LABEL_61;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_60;
      }
    }

    v31 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_61:
    v35 = v9 - v27;
    if (__OFSUB__(v9, v27))
    {
      goto LABEL_89;
    }

    if (!v35)
    {
      swift_unknownObjectRelease();
LABEL_72:
      v43 = objc_opt_self();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v43 activateConstraints_];

      goto LABEL_83;
    }

    v46 = v5;
    v48 = MEMORY[0x277D84F90];
    v3 = &v48;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (v27 <= v9)
    {
      v36 = v9;
    }

    else
    {
      v36 = v27;
    }

    v5 = v36 - v27;
    v37 = (v31 + 8 * v27);
    v4 = &selRef_setNavigationTitleForTagListInInfoPanel_;
    while (v5)
    {
      v38 = *v37++;
      v39 = v38;
      v40 = [v39 widthAnchor];
      v41 = [v47 widthAnchor];
      v42 = [v40 constraintEqualToAnchor_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v48 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = &v48;
      specialized ContiguousArray._endMutation()();
      --v5;
      if (!--v35)
      {
        swift_unknownObjectRelease();
        v5 = v46;
        goto LABEL_72;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      return;
    }
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v8 + 32);
    goto LABEL_47;
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

id newSpacer #1 () in UIStackView.doc_addFlexiblySpacedArrangedSubviews(_:minSpacing:maxSpacing:)(double a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1144750080;
  [v4 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BA37E0;
  v9 = [v4 heightAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant_];

  *(v8 + 32) = v10;
  v11 = [v4 widthAnchor];
  v12 = [v11 constraintGreaterThanOrEqualToConstant_];

  *(v8 + 40) = v12;
  v13 = [v4 widthAnchor];
  v14 = [v13 constraintLessThanOrEqualToConstant_];

  *(v8 + 48) = v14;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints_];

  return v4;
}

uint64_t @objc UIStackView.doc_addFlexiblySpacedArrangedSubviews(_:minSpacing:maxSpacing:)(void *a1, double a2, double a3)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  UIStackView.doc_addFlexiblySpacedArrangedSubviews(_:minSpacing:maxSpacing:)(v6, a2, a3);
}

uint64_t DOCNavigationController.docNavigationBar.getter()
{
  v1 = [v0 navigationBar];
  type metadata accessor for DOCNavigationBar();

  return swift_dynamicCastClassUnconditional();
}

BOOL DOCButton.invalidateIntrinsicSizeWhenContentSizeCategoryChanges.getter()
{
  if (one-time initialization token for disableWorkaroundFor86478051 != -1)
  {
    swift_once();
  }

  return !disableWorkaroundFor86478051;
}

id DOCButton.hoverEffectsAllowedIfInteractionDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton_hoverEffectsAllowedIfInteractionDisabled;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v7 = [v1 isUserInteractionEnabled];
    v8 = v1[v4];
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton__userInteractionStateDeterminesLayerHitTestState_override;
    v1[OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton__userInteractionStateDeterminesLayerHitTestState_override] = 2;
    [v1 setUserInteractionEnabled_];
    [v1 setUserInteractionEnabled_];
    v1[v9] = (v1[v4] & 1) == 0;
    return [v1 setUserInteractionEnabled_];
  }

  return result;
}

uint64_t DOCViewController.appearStateTracker.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id UITraitCollection.preferredNavigationBarStyle.getter@<X0>(BOOL *a1@<X8>)
{
  result = DOCUsePadIdiomForTraits();
  v4 = 0;
  if (result)
  {
    result = [v1 horizontalSizeClass];
    if (result == 2)
    {
      v4 = 1;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t DOCCollectionView.offsetAdjustmentBehaviors.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors);
  }

  else
  {
    type metadata accessor for DOCOffsetAdjustmentBehaviors();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::Void __swiftcall DOCCollectionView.beginDisablingAutomaticAdjustments()()
{
  v0 = DOCCollectionView.offsetAdjustmentBehaviors.getter();
  (*(*v0 + 152))(v0);
}

Swift::Void __swiftcall DOCCollectionView.endDisablingAutomaticAdjustments()()
{
  v0 = DOCCollectionView.offsetAdjustmentBehaviors.getter();
  (*(*v0 + 160))(v0);
}

void DOCViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  type metadata accessor for DOCAppearStateTracker();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void DOCViewController.init(nibName:bundle:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  type metadata accessor for DOCAppearStateTracker();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCViewController.init()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCViewController_appearStateTracker;
  type metadata accessor for DOCAppearStateTracker();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void @objc DOCViewController.viewWillAppear(_:)(void *a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v9 = a1;
  v10 = v8();
  v12 = a4;
  (*(*v10 + 184))(v9, &v12);

  v11.receiver = v9;
  v11.super_class = type metadata accessor for DOCViewController();
  objc_msgSendSuper2(&v11, *a5, a3);
}

id DOCCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id DOCCollectionViewController.init(collectionViewLayout:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCCollectionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, a1);

  return v3;
}

id DOCCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id DOCCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors] = 0;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for DOCCollectionView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v11;
}

id DOCCollectionView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCCollectionView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCNavigationController.init()()
{
  type metadata accessor for DOCNavigationBar();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCNavigationController();
  return objc_msgSendSuper2(&v3, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, 0);
}

id DOCNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id DOCNavigationController.init(rootViewController:)(void *a1)
{
  type metadata accessor for DOCNavigationBar();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCNavigationController();
  v4 = objc_msgSendSuper2(&v10, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_249BA0290;
  *(v5 + 32) = a1;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v6 = v4;
  v7 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setViewControllers_];

  return v6;
}

id DOCNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

DocumentManagerExecutables::DOCNavigationBar::Style_optional __swiftcall DOCNavigationBar.Style.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

id DOCNavigationBarStyle.__allocating_init(style:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCNavigationBarStyle_style] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCNavigationBarStyle.init(style:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCNavigationBarStyle_style] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCNavigationBarStyle();
  return objc_msgSendSuper2(&v3, sel_init);
}

id @objc UITraitCollection.preferredNavigationBarStyle_objc.getter(void *a1)
{
  v1 = a1;
  v2 = DOCUsePadIdiomForTraits() && [v1 horizontalSizeClass] == 2;
  v3 = type metadata accessor for DOCNavigationBarStyle();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCNavigationBarStyle_style] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id UITraitCollection.preferredNavigationBarStyle_objc.getter()
{
  v1 = DOCUsePadIdiomForTraits() && [v0 horizontalSizeClass] == 2;
  v2 = type metadata accessor for DOCNavigationBarStyle();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCNavigationBarStyle_style] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCNavigationBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCNavigationBar.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCNavigationBar.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCNavigationBar();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

double DOCNavigationBar.titlePositionAdjustment.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCNavigationBar.titlePositionAdjustment.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = [v1 standardAppearance];
  [v4 setTitlePositionAdjustment_];
}

void (*DOCNavigationBar.titlePositionAdjustment.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_titlePositionAdjustment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCNavigationBar.titlePositionAdjustment.modify;
}

void DOCNavigationBar.titlePositionAdjustment.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = [v4 standardAppearance];
    [v6 setTitlePositionAdjustment_];
  }

  free(v3);
}

uint64_t DOCNavigationBar.chromelessAppearanceDisabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCNavigationBar.chromelessAppearanceDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled;
  swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    DOCNavigationBar.overrideScrollEdgeAppearance.setter([objc_allocWithZone(MEMORY[0x277D75788]) init]);
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance] = 0;
    if (v4)
    {
      [v1 setScrollEdgeAppearance_];
    }
  }
}

void (*DOCNavigationBar.chromelessAppearanceDisabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_chromelessAppearanceDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCNavigationBar.chromelessAppearanceDisabled.modify;
}

void DOCNavigationBar.chromelessAppearanceDisabled.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    if (*(v4 + *(v3 + 32)) == 1)
    {
      DOCNavigationBar.overrideScrollEdgeAppearance.setter([objc_allocWithZone(MEMORY[0x277D75788]) init]);
    }

    else
    {
      v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance);
      *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance) = 0;
      if (v5)
      {
        [*(v3 + 24) setScrollEdgeAppearance_];
      }
    }
  }

  free(v3);
}

void DOCNavigationBar.overrideScrollEdgeAppearance.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance;
  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCNavigationBar_overrideScrollEdgeAppearance] = a1;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    v11 = v4;
    v6 = 0;
    a1 = 0;
    goto LABEL_9;
  }

  v11 = v4;
  if (!v4)
  {
    v6 = a1;
LABEL_9:
    v10 = a1;
    [v1 setScrollEdgeAppearance_];

    v9 = v11;
    goto LABEL_10;
  }

  v5 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UINavigationBarAppearance);
  v6 = a1;
  v7 = v11;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v1 = v5;
    a1 = *&v5[v3];
    goto LABEL_9;
  }

  v9 = v7;
LABEL_10:
}

id one-time initialization function for symbolImageConfiguration()
{
  result = [objc_opt_self() configurationWithScale_];
  static DOCNavButtonMetrics.symbolImageConfiguration = result;
  return result;
}

uint64_t *DOCNavButtonMetrics.symbolImageConfiguration.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolImageConfiguration != -1)
  {
    swift_once();
  }

  return &static DOCNavButtonMetrics.symbolImageConfiguration;
}

id static DOCNavButtonMetrics.symbolImageConfiguration.getter()
{
  if (one-time initialization token for symbolImageConfiguration != -1)
  {
    swift_once();
  }

  v1 = static DOCNavButtonMetrics.symbolImageConfiguration;

  return v1;
}

Swift::Void __swiftcall UIViewController.doc_updateBarButtonTrackingViewsIfNecessary()()
{
  v1 = [v0 parentViewController];
  [v1 doc_updateBarButtonTrackingViewsIfNecessary];
}

id DOCStackView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCView.init(frame:)(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id @objc DOCView.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id DOCTableView.__allocating_init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithFrame:a1 style:{a2, a3, a4, a5}];
}

id DOCTableView.init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v12.receiver = v5;
  v12.super_class = type metadata accessor for DOCTableView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_style_, a1, a2, a3, a4, a5);
}

void DOCButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton_hoverEffectsAllowedIfInteractionDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton__userInteractionStateDeterminesLayerHitTestState_override) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *DOCButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton_hoverEffectsAllowedIfInteractionDisabled] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton__userInteractionStateDeterminesLayerHitTestState_override] = 2;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for DOCButton();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x60);
  v11 = v9;
  if (v10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9A480;
    v13 = type metadata accessor for UITraitPreferredContentSizeCategory();
    v14 = MEMORY[0x277D74DB8];
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t DOCButton.hoverEffectsAllowedIfInteractionDisabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton_hoverEffectsAllowedIfInteractionDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCButton.hoverEffectsAllowedIfInteractionDisabled.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton_hoverEffectsAllowedIfInteractionDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCButton.hoverEffectsAllowedIfInteractionDisabled.modify;
}

void DOCButton.hoverEffectsAllowedIfInteractionDisabled.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCButton.hoverEffectsAllowedIfInteractionDisabled.setter(v3);
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
      v8 = v2[4];
      v9 = [v7 isUserInteractionEnabled];
      v10 = v7[v8];
      v11 = OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton__userInteractionStateDeterminesLayerHitTestState_override;
      v7[OBJC_IVAR____TtC26DocumentManagerExecutables9DOCButton__userInteractionStateDeterminesLayerHitTestState_override] = 2;
      [v7 setUserInteractionEnabled_];
      [v7 setUserInteractionEnabled_];
      v7[v11] = (v7[v8] & 1) == 0;
      [v7 setUserInteractionEnabled_];
    }
  }

  free(v2);
}

id DOCViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void one-time initialization function for disableWorkaroundFor86478051()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BFEFF0);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor86478051 = v2;
}

unint64_t lazy protocol witness table accessor for type DOCNavigationBar.Style and conformance DOCNavigationBar.Style()
{
  result = lazy protocol witness table cache variable for type DOCNavigationBar.Style and conformance DOCNavigationBar.Style;
  if (!lazy protocol witness table cache variable for type DOCNavigationBar.Style and conformance DOCNavigationBar.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCNavigationBar.Style and conformance DOCNavigationBar.Style);
  }

  return result;
}

Swift::Int DOCICloudRootNode.DOCICloudRootNodeError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

void DOCICloudRootNode.deferredCreationNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_deferredCreationNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOCICloudRootNode.observerBlock : DOCICloudRootNode@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
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

uint64_t key path setter for DOCICloudRootNode.observerBlock : DOCICloudRootNode(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x98);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCICloudRootNode.observerBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_observerBlock);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCICloudRootNode.observerBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_observerBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

id DOCICloudRootNode.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCICloudRootNode.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_deferredCreationNode) = 0;
  v2 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_observerBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) = 0;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer) = 0;

  type metadata accessor for DOCICloudRootNode();
  swift_deallocPartialClassInstance();
  return 0;
}

void closure #1 in DOCICloudRootNode.getContainers()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v37[13] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v37[10] = *(v9 - 8);
  v37[11] = v9;
  MEMORY[0x28223BE20](v9, v10);
  v37[9] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchTime();
  v37[12] = *(v38 - 8);
  v13 = MEMORY[0x28223BE20](v38, v12);
  v37[8] = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v37[14] = v37 - v16;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v37[4] = v5;
    v37[5] = v1;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v37[7] = __swift_project_value_buffer(v24, static Logger.Enumeration);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2493AC000, v25, v26, "DOCICloudRootNode Managed: building containers...", v27, 2u);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    v37[2] = v6;
    v37[3] = v4;
    v37[6] = v0;

    static os_signpost_type_t.begin.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v28 = *(v18 + 8);
    v28(v21, v17);
    v29 = objc_opt_self();
    v30 = [v29 dataSeparatedICloudDefaultContainer];
    v31 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer] = v30;

    v32 = [v29 dataSeparatedICloudLibrariesContainer];
    v33 = *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer];
    *&v23[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_appLibrariesContainer] = v32;

    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v28(v21, v17);
    DOCICloudRootNode.createUnderlyingNode()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2493AC000, v34, v35, "DOCICloudRootNode Managed: finished building containers...", v36, 2u);
      MEMORY[0x24C1FE850](v36, -1, -1);
    }
  }
}

void closure #1 in closure #1 in DOCICloudRootNode.getContainers()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCICloudRootNode.getContainers()();
  }
}

id DOCICloudRootNode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCICloudRootNode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCICloudRootNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

FINode __swiftcall DOCICloudRootNode.fileOpNode()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

id DOCICloudRootNode.fileParent.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) fileParent];

  return v1;
}

id DOCICloudRootNode.parent.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) parent];

  return v1;
}

void DOCICloudRootNode.identifier.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v3)
  {
    v4 = [v3 identifier];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v7, a1);
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_providerDomain) identifier];
    type metadata accessor for FPProviderDomainID(0);
    *(a1 + 24) = v6;
    *a1 = v5;
  }
}

uint64_t DOCICloudRootNode.identifierKey.getter()
{
  v1 = [v0 identifier];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return swift_dynamicCast();
}

id DOCICloudRootNode.fpfs_fpItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) fpfs_fpItem];

  return v1;
}

uint64_t DOCICloudRootNode.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v17 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v13)
  {
    v14 = [v13 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v4 + 32);
    v15(v12, v7, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
    return (v15)(a1, v12, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3, v10);
    static UTType.item.getter();
    result = (*(v4 + 48))(v12, 1, v3);
    if (result != 1)
    {
      return outlined destroy of CharacterSet?(v12, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    }
  }

  return result;
}

uint64_t DOCICloudRootNode.typeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (!v1)
  {
    return 0x692E63696C627570;
  }

  v2 = [v1 typeIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCICloudRootNode.fileSize.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) fileSize];

  return v1;
}

id DOCICloudRootNode.childItemCount.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) childItemCount];

  return v1;
}

id DOCICloudRootNode.providerDomainID.getter(SEL *a1, SEL *a2)
{
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer))
  {
    v3 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) *a1];
  }

  else
  {
    v3 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_providerDomain) *a2];
  }

  return v3;
}

id @objc DOCICloudRootNode.contentType.getter(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - v11;
  v13 = a1;
  a4();

  v14 = a5();
  (*(v9 + 8))(v12, v8);

  return v14;
}

uint64_t DOCICloudRootNode.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v19 - v11;
  v13 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer];
  if (v13)
  {
    v14 = [v13 creationDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v4 + 32);
    v15(v12, v7, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
    return (v15)(a1, v12, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3, v10);
    v17 = type metadata accessor for DOCICloudRootNode();
    v19.receiver = v1;
    v19.super_class = v17;
    v18 = objc_msgSendSuper2(&v19, sel_creationDate);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = (*(v4 + 48))(v12, 1, v3);
    if (result != 1)
    {
      return outlined destroy of CharacterSet?(v12, &_s10Foundation4DateVSgMd);
    }
  }

  return result;
}

uint64_t DOCICloudRootNode.filename.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 filename];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t DOCICloudRootNode.isFolder.getter(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer))
  {
    return [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) *a1];
  }

  else
  {
    return 1;
  }
}

id DOCICloudRootNode.downloadingProgress.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) downloadingProgress];

  return v1;
}

id DOCICloudRootNode.uploadingProgress.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) uploadingProgress];

  return v1;
}

id @objc DOCICloudRootNode.downloadingError.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v4)
  {
    v4 = [v4 *a3];
    if (v4)
    {
      v5 = v4;
      v6 = _convertErrorToNSError(_:)();

      v4 = v6;
    }

    v3 = vars8;
  }

  return v4;
}

id DOCICloudRootNode.downloadingError.getter(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer))
  {
    return [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) *a1];
  }

  else
  {
    return 0;
  }
}

id DOCICloudRootNode.copyingProgress.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) copyingProgress];

  return v1;
}

id DOCICloudRootNode.isActionable.getter(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer))
  {
    return [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer) *a1];
  }

  else
  {
    return 0;
  }
}

uint64_t DOCICloudRootNode.ownerNameComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v16 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (v8)
  {
    v9 = [v8 ownerNameComponents];
    if (v9)
    {
      v10 = v9;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for PersonNameComponents();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v15 = type metadata accessor for PersonNameComponents();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    return outlined init with take of (key: URL, value: FPItem)(v7, a1, &_s10Foundation20PersonNameComponentsVSgMd);
  }

  else
  {
    v12 = type metadata accessor for PersonNameComponents();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t DOCICloudRootNode.itemDecorations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = [v1 itemDecorations];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemDecoration);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id DOCICloudRootNode.tags.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (result)
  {
    result = [result tags];
    if (result)
    {
      v2 = result;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag);
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  return result;
}

id DOCICloudRootNode.localizedStandardTagsCompare(node:)(uint64_t a1, SEL *a2)
{
  result = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (result)
  {
    return [result *a2];
  }

  return result;
}

id @objc DOCICloudRootNode.localizedStandardTagsCompare(node:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (result)
  {
    return [result *a4];
  }

  return result;
}

id DOCICloudRootNode.nodeIs(_:error:)(uint64_t a1, uint64_t a2)
{
  result = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (result)
  {
    return [result nodeIs:a1 error:a2];
  }

  return result;
}

id DOCICloudRootNode.volumeIs(_:error:)(uint64_t a1, uint64_t a2)
{
  result = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (result)
  {
    return [result volumeIs:a1 error:a2];
  }

  return result;
}

uint64_t DOCICloudRootNode.nodePermissions(_:error:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCICloudRootNode_iCloudContainer);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  LODWORD(a2) = [v6 nodePermissions:a1 error:a2];

  return a2 & 0xFFEDDC04;
}

void *specialized static DOCICloudRootNode.iCloudRootNode(for:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (one-time initialization token for rootNodes != -1)
  {
    a1 = swift_once();
  }

  v3 = static DOCICloudRootNode.rootNodes;
  MEMORY[0x28223BE20](a1, a2);
  v9[2] = v2;
  v4 = *(*v3 + 160);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCICloudRootNodeCSgMd);
  v4(&v10, partial apply for closure #1 in static DOCICloudRootNode.iCloudRootNode(for:), v9, v5);
  result = v10;
  if (!v10)
  {
    v7 = [objc_opt_self() shared];
    [v7 startIfNeeded];

    v8 = objc_allocWithZone(type metadata accessor for DOCICloudRootNode());
    return DOCICloudRootNode.init(for:)(v2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError()
{
  result = lazy protocol witness table cache variable for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError;
  if (!lazy protocol witness table cache variable for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError;
  if (!lazy protocol witness table cache variable for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCICloudRootNode.DOCICloudRootNodeError and conformance DOCICloudRootNode.DOCICloudRootNodeError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCICloudRootNode.ThreadSafeRootNodes(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCICloudRootNode.ThreadSafeRootNodes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL static DOCProcessPlatform.PlatformType.== infix(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCProcessPlatform.PlatformType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t DOCProcessPlatform.init()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = *(*static DOCProcessPlatform.cache + 168);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCProcessPlatformV0E4TypeOSgMd);
  (v0)(&v7, protocol witness for OptionSet.init(rawValue:) in conformance DOCValueChangePacer<A>.Behaviors, 0, v1);
  v2 = v7;
  if (v7 == 3)
  {
    active_platform = dyld_get_active_platform();
    v5 = MEMORY[0x28223BE20](active_platform, v4);
    v2 = 2;
    v0(partial apply for closure #2 in static DOCProcessPlatform.getPlatformType(), v5);
  }

  return v2 | (specialized static DOCProcessPlatform.getHostProcessPlatformType()() << 8);
}

void *one-time initialization function for cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA18DOCProcessPlatformV5Cache33_A0057727599915ADA50051B1EF7494F3LLVGMd);
  swift_allocObject();
  result = specialized DOCThreadSafeState.init(_:)(0x303u);
  static DOCProcessPlatform.cache = result;
  return result;
}

uint64_t specialized static DOCProcessPlatform.getHostProcessPlatformType()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = *(*static DOCProcessPlatform.cache + 168);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCProcessPlatformV0E4TypeOSgMd);
  (v0)(&v22, closure #1 in static DOCProcessPlatform.getHostProcessPlatformType(), 0, v1);
  result = v22;
  if (v22 == 3)
  {
    v3 = [objc_opt_self() defaultPermission];
    v4 = [v3 hostIdentifier];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v5 == v10 && v7 == v12)
      {

LABEL_9:

LABEL_12:
        v19 = MEMORY[0x28223BE20](v14, v15);
        v21 = v20;
        v0(partial apply for closure #2 in static DOCProcessPlatform.getHostProcessPlatformType(), v19);
        return v21;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_9;
      }
    }

    v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v17 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v5, v7, 0);
    if (!v17)
    {
      return 3;
    }

    v18 = v17;
    [v17 platform];

    goto LABEL_12;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCProcessPlatform(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for DOCProcessPlatform(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for DOCProcessPlatform.Cache(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 65283;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_16;
        }

        return (*a1 | (v4 << 16)) - 65283;
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 65283;
      }
    }
  }

LABEL_16:
  v6 = *a1;
  if (*a1 >= 2u)
  {
    v7 = (v6 & 0xFE) + 2147483646;
    if ((v7 & 0x7FFFFFFE) != 0)
    {
      return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for DOCProcessPlatform.Cache(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t static DOCActionManager.canImport(in:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized static DOCActionManager.canImport(in:)(a1);
}

id DOCActionManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = [objc_opt_self() defaultManager];
  v2 = [objc_opt_self() defaultPermission];
  v3 = [v0 initWithItemManager:v1 managedPermission:v2];

  return v3;
}

id DOCActionContext.__allocating_init(appearance:configuration:presentingViewController:performer:transitionProxy:actionReporting:userInfo:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v15[OBJC_IVAR___DOCActionContext_appearance] = a1;
  *&v15[OBJC_IVAR___DOCActionContext_configuration] = a2;
  *&v15[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v15[OBJC_IVAR___DOCActionContext_transitionProxy] = a5;
  *&v15[OBJC_IVAR___DOCActionContext_actionReporting] = a6;
  *&v15[OBJC_IVAR___DOCActionContext_userInfo] = a7;
  v21.receiver = v15;
  v21.super_class = v8;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  swift_unknownObjectRelease();
  return v19;
}

uint64_t DOCActionManager.allActions.getter()
{
  v1 = [v0 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v0 associatedActionManagers];
  type metadata accessor for DOCActionManager(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Sequence.flatMap<A>(_:)(v4);

  specialized Array.append<A>(contentsOf:)(v5);
  return v2;
}

id DOCLazyActionManager.__allocating_init(actionsConstructor:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = objc_opt_self();

  v8 = [v7 defaultManager];
  v9 = [objc_opt_self() defaultPermission];
  v12.receiver = v5;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_initWithItemManager_managedPermission_, v8, v9);

  return v10;
}

id DOCItemCollectionViewController.actionContext(from:)()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x8D8))();
  if (v4)
  {

    v5 = (*((*v3 & *v0) + 0x8F0))();
    if (v5)
    {
      v6 = v5;
      if ((*((*v3 & *v5) + 0x78))() && (swift_getObjectType(), v7 = DOCNode.fpfs_syncFetchFPItem()(), swift_unknownObjectRelease(), v7))
      {
        v20 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
        *&v19 = v7;
        outlined init with take of Any(&v19, v18);
        v8 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000039, 0x8000000249BF1650, isUniquelyReferenced_nonNull_native);
      }

      else
      {
      }
    }
  }

  v10 = [v1 effectiveAppearance];
  v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v12 = (*((*v3 & *v1) + 0xE8))();
  v13 = type metadata accessor for DOCActionContext();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v14[OBJC_IVAR___DOCActionContext_appearance] = v10;
  *&v14[OBJC_IVAR___DOCActionContext_configuration] = v11;
  *&v14[OBJC_IVAR___DOCActionContext_presentingViewController] = v1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v14[OBJC_IVAR___DOCActionContext_transitionProxy] = v1;
  *&v14[OBJC_IVAR___DOCActionContext_actionReporting] = v12;
  *&v14[OBJC_IVAR___DOCActionContext_userInfo] = v2;
  v21.receiver = v14;
  v21.super_class = v13;
  v15 = v1;
  v16 = v11;
  return objc_msgSendSuper2(&v21, sel_init);
}

void DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a3);
  if (All)
  {
    v10 = All;
    if (a4)
    {
      swift_getObjectType();
      v11 = DOCNode.fpfs_syncFetchFPItem()();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(a1, a2, v10, v11, a5);
  }
}

uint64_t DOCAppProtectionManager.firstNodeRequiringAuthenticationToRunActions(in:completion:)(unint64_t a1, unint64_t a2, uint64_t a3)
{

  specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(a1, 1, 1, a2, a3);
}

NSObject *DOCActionManager.canMoveHere(in:alertPresenting:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  result = DOCNode.fpfs_syncFetchFPItem()();
  if (result)
  {
    v4 = result;
    v5 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(result, a2, 1);

    return (v5 > 0);
  }

  return result;
}

Swift::Bool __swiftcall DOCActionManager.canShare(_:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

LABEL_3:
  v3 = [v1 shareAction];
  v4 = [v3 filteringPredicate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo7DOCNode_pGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x7365646F4E636F64;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo7DOCNode_pGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_SaySo7DOCNode_pGtMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 evaluateWithObject_];

  return v7;
}

void specialized Set.formUnion<A>(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t DOCActionManager.previewPanelActions(for:in:currentConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [v4 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

unint64_t DOCActionManager.collaborationActions(for:presentingViewController:availability:)(unint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    while (1)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](0, result);
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v7 = *(result + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      DOCNode.collaborationType.getter(&v20);
      v8 = MEMORY[0x277D84F90];
      if (v20 == 2)
      {
        v10 = &selRef_returnToSenderActionsFor_presentingViewController_;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
        if (v20 == 3)
        {
          goto LABEL_11;
        }

        v10 = &selRef_sharedWithYouActionsFor_presentingViewController_;
      }

      v11 = [v4 *v10];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_11:
      v19 = v8;
      if (v9 >> 62)
      {
        result = __CocoaSet.count.getter();
        v12 = result;
        if (!result)
        {
LABEL_31:
          v15 = MEMORY[0x277D84F90];
LABEL_32:

          swift_unknownObjectRelease();
          return v15;
        }
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_31;
        }
      }

      v4 = 0;
      a2 = v9 & 0xC000000000000001;
      v18 = v7;
      while (1)
      {
        if (a2)
        {
          result = MEMORY[0x24C1FC540](v4, v9);
        }

        else
        {
          if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          result = *(v9 + 8 * v4 + 32);
        }

        v13 = result;
        v14 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ((a3 & ~[result availability]) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          a2 = v9 & 0xC000000000000001;
        }

        ++v4;
        if (v14 == v12)
        {
          v15 = v19;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v16 = result;
      if (__CocoaSet.count.getter() == 1)
      {
        v17 = __CocoaSet.count.getter();
        result = v16;
        if (v17)
        {
          continue;
        }
      }

      return MEMORY[0x277D84F90];
    }
  }

  return MEMORY[0x277D84F90];
}

id static NSPredicate.validateAction(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = partial apply for closure #1 in static NSPredicate.validateAction(_:);
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v9[3] = &block_descriptor_170;
  v5 = _Block_copy(v9);
  v6 = objc_opt_self();

  v7 = [v6 predicateWithBlock_];
  _Block_release(v5);

  return v7;
}

uint64_t static DOCActionManager.canCreateNewFile(in:)(void *a1)
{
  v2 = *MEMORY[0x277CC6028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = a1;
  swift_unknownObjectRetain();
  LOBYTE(v2) = specialized static DOCActionManager.canPerform(_:on:)(v2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v2)
  {
    return [a1 isTrashed] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, int a2, int a3, uint64_t (*a4)(unint64_t), unint64_t a5)
{
  v51 = a2;
  v52 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() sharedManager];
  v21 = [v20 hasAnyProtectedApps];

  if (!v21)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  v45 = a4;
  v41 = v13;
  v42 = v11;
  v43 = v12;
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v46 = a5;
  v40 = v16;
  v44 = v8;
  v16 = MEMORY[0x277D84F90];
  if (v22)
  {
    v23 = 0;
    v8 = 0;
    a4 = (a1 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x24C1FC540](v23, a1);
        a5 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_16:
          __break(1u);
          return a4(MEMORY[0x277D84F90]);
        }
      }

      else
      {
        if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_26:
          v22 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        v24 = *(a1 + 8 * v23 + 32);
        swift_unknownObjectRetain();
        a5 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_16;
        }
      }

      v55 = v24;
      closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(&v55, &v54);
      v25 = swift_unknownObjectRelease();
      if (v54)
      {
        MEMORY[0x24C1FB090](v25);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = aBlock[0];
      }

      ++v23;
    }

    while (a5 != v22);
  }

  if (!(v16 >> 62))
  {
    v28 = v45;
    v27 = v46;
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_28:

    return v28(MEMORY[0x277D84F90]);
  }

  v39 = __CocoaSet.count.getter();
  v28 = v45;
  v27 = v46;
  if (!v39)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v52)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v30 = v47;
    v29 = v48;
    v31 = v49;
    (*(v48 + 104))(v47, *MEMORY[0x277D851B8], v49);
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v29 + 8))(v30, v31);
    v33 = swift_allocObject();
    *(v33 + 16) = v16;
    *(v33 + 24) = v51 & 1;
    *(v33 + 32) = v28;
    *(v33 + 40) = v27;
    aBlock[4] = partial apply for closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_6_9;
    v34 = _Block_copy(aBlock);

    v35 = v40;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v36 = v42;
    v37 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v35, v36, v34);
    _Block_release(v34);

    (*(v50 + 8))(v36, v37);
    (*(v41 + 8))(v35, v43);
  }

  else
  {
    v38 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v16, v51 & 1);

    v28(v38);
  }
}

uint64_t DOCActionManager.menuActions(for:in:currentConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v3 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA0290;
  *(v7 + 32) = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v3 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t static DOCActionManager.canCreateNewFolder(in:)(void *a1)
{
  swift_getObjectType();

  return specialized static DOCActionManager.canCreateNewFolder(in:)(a1);
}

uint64_t specialized closure #1 in static NSPredicate.validateAction(_:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.renameAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, specialized static DOCActionManager.nodesHaveAllSameSharedByState(nodes:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.duplicateAction(targetNode:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.folderCustomizationAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.addToDockAction(useAlternateTitle:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.openWithAppAction(node:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #1 in static UIDocumentBrowserAction.shareActionPredicate());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in DOCItemInfoContentViewController.iCloudLinkAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.unfavoriteAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.showOfflineFolder());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.renameAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.evictAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.downloadAction(recursively:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.unPinAction(targetNode:currentItemIsTarget:itemCount:));
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.quickLookAction());
}

{
  return specialized closure #1 in static NSPredicate.validateAction(_:)(a1, a2, closure #2 in static UIDocumentBrowserAction.quickLookEditingAction(identifier:title:unlocalizedTitle:image:));
}

uint64_t specialized closure #1 in static NSPredicate.validateAction(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  outlined init with copy of Any?(a1, v9);
  if (!v10)
  {
    outlined destroy of CharacterSet?(v9, &_sypSgMd);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!*(v8 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365646F4E636F64, 0xE800000000000000), (v5 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v4, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  v6 = a3();

  return v6 & 1;
}

BOOL specialized closure #1 in static NSPredicate.validateAction(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (!v7)
  {
    outlined destroy of CharacterSet?(v6, &_sypSgMd);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v5 + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365646F4E636F64, 0xE800000000000000), (v2 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v1, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v3 - 1) < 0x3E8;
}

uint64_t specialized closure #1 in static NSPredicate.validateAction(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v14);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    if (swift_dynamicCast())
    {
      if (!*(v13 + 16))
      {
        goto LABEL_24;
      }

      v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365646F4E636F64, 0xE800000000000000);
      if ((v2 & 1) == 0)
      {
        goto LABEL_24;
      }

      outlined init with copy of Any(*(v13 + 56) + 32 * v1, v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
      if (swift_dynamicCast())
      {
        if (v13 >> 62)
        {
          goto LABEL_27;
        }

        v3 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          while (1)
          {
            v4 = 0;
            v5 = *MEMORY[0x277CC6338];
            while ((v13 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x24C1FC540](v4);
              v7 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_15:
              v8 = [v6 fpfs_fpItem];
              if (v8 && (v9 = v8, v10 = [v8 capabilities], v9, (v5 & v10) != 0))
              {
                v11 = [v6 isInTrash];
                swift_unknownObjectRelease();
                if ((v11 & 1) == 0)
                {

                  return 1;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              ++v4;
              if (v7 == v3)
              {
                goto LABEL_24;
              }
            }

            if (v4 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_27:
            v3 = __CocoaSet.count.getter();
            if (!v3)
            {
              goto LABEL_24;
            }
          }

          v6 = *(v13 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_23;
          }

          goto LABEL_15;
        }

LABEL_24:
      }
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v14, &_sypSgMd);
  }

  return 0;
}

uint64_t closure #1 in static NSPredicate.validateAction(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  outlined init with copy of Any?(a1, v9);
  if (!v10)
  {
    outlined destroy of CharacterSet?(v9, &_sypSgMd);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!*(v8 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365646F4E636F64, 0xE800000000000000), (v5 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v4, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  v6 = a3();

  return v6 & 1;
}

id UIDocumentBrowserAction.uiAction.getter()
{
  v1 = [v0 uiActionDescriptor];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identifier];
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x24C1FAD20](v4);
  }

  v5 = [v2 uiActionProviderIdentifier];
  v6 = [v2 fileProviderIdentifier];
  v7 = [v2 displayName];
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x24C1FAD20](v8);
  }

  v9 = [v2 predicate];
  v10 = [v2 displayInline];
  v11 = [objc_allocWithZone(MEMORY[0x277CC64C0]) initWithIdentifier:v3 uiActionProviderIdentifier:v5 fileProviderIdentifier:v6 displayName:v7 predicate:v9 displayInline:v10];

  return v11;
}

void UIDocumentBrowserAction.isValidForNodes(nodes:)(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = [v2 uiActionDescriptor];
    if (!v5)
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v7 = [v6 providerDomainID];
    swift_unknownObjectRelease();
    v8 = [v2 uiActionProviderDomain];
    if (!v8)
    {
LABEL_27:

      return;
    }

    v9 = v8;
    v10 = [v8 identifier];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1FC540](v2, a1);
      v17 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        goto LABEL_28;
      }

LABEL_22:
      v18 = [v16 providerDomainID];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        swift_unknownObjectRelease();

        if ((v24 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      ++v2;
      if (v17 == i)
      {
        goto LABEL_27;
      }
    }

    if (v2 >= *(v25 + 16))
    {
      goto LABEL_29;
    }

    v16 = *(a1 + 8 * v2 + 32);
    swift_unknownObjectRetain();
    v17 = (v2 + 1);
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t UIAction.actionWillStart()@<X0>(uint64_t a1@<X8>)
{
  return UIAction.actionWillStart()(a1);
}

{
  v3 = swift_allocObject();
  *(v3 + 32) = 0u;
  *(v3 + 16) = 0u;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = v1;

  DOCRunInMainThreadSync(_:)();

  swift_beginAccess();
  outlined init with copy of Any?(v3 + 16, a1);
}

id @objc UIAction.actionWillStart()(void *a1)
{
  return @objc UIAction.actionWillStart()(a1);
}

{
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = a1;

  DOCRunInMainThreadSync(_:)();

  swift_beginAccess();
  outlined init with copy of Any?(v2 + 16, v14);

  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6, v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t UIAction.actionDidFinish(_:)(uint64_t a1)
{
  return UIAction.actionDidFinish(_:)(a1);
}

{
  outlined init with copy of Any?(a1, v6);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v6[1];
  *(v2 + 24) = v6[0];
  *(v2 + 40) = v3;
  v4 = v1;
  DOCRunInMainThread(_:)();
}

uint64_t @objc UIAction.actionDidFinish(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  return @objc UIAction.actionDidFinish(_:)(a1, a2, a3);
}

{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = a1;
  }

  outlined init with copy of Any?(v11, v10);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v10[1];
  *(v6 + 24) = v10[0];
  *(v6 + 40) = v7;
  v8 = a1;
  DOCRunInMainThread(_:)();

  return outlined destroy of CharacterSet?(v11, &_sypSgMd);
}

uint64_t closure #1 in performerActionWillStart(_:)(uint64_t a1, uint64_t a2)
{
  v15 = &unk_285D7D500;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    v5 = [v4 attributes];
    type metadata accessor for UIMenuElementAttributes(0);
    v13 = v6;
    v12 = v5;
    swift_beginAccess();
    outlined assign with take of Any?(&v12, a2 + 16);
    [v4 setAttributes_];
    return swift_unknownObjectRelease();
  }

  v14 = &unk_285CFF990;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain();
    v9 = [v8 action_isEnabled];
    v13 = MEMORY[0x277D839B0];
    LOBYTE(v12) = v9;
    swift_beginAccess();
    outlined assign with take of Any?(&v12, a2 + 16);
    [v8 setAction:0 isEnabled:?];
    return swift_unknownObjectRelease();
  }

  _StringGuts.grow(_:)(97);
  MEMORY[0x24C1FAEA0](0xD00000000000005FLL, 0x8000000249BFFB60);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd);
  v11 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in performerActionDidFinish(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = &unk_285D7D500;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    outlined init with copy of Any?(a2, &v23);
    if (v24)
    {
      type metadata accessor for UIMenuElementAttributes(0);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        [v5 setAttributes_];
LABEL_9:
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v25 = &unk_285CFF990;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (!v6)
    {
      _StringGuts.grow(_:)(97);
      MEMORY[0x24C1FAEA0](0xD00000000000005FLL, 0x8000000249BFFB00);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd);
      v20 = String.init<A>(describing:)();
      MEMORY[0x24C1FAEA0](v20);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v7 = v6;
    outlined init with copy of Any?(a2, &v23);
    if (v24)
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        [v7 setAction:LOBYTE(v21[0]) isEnabled:?];
        goto LABEL_9;
      }

      goto LABEL_11;
    }
  }

  swift_unknownObjectRetain();
  outlined destroy of CharacterSet?(&v23, &_sypSgMd);
LABEL_11:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  outlined init with copy of Any?(a2, &v23);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v21[0] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    outlined init with copy of Any?(&v23, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of CharacterSet?(&v23, &_sypSgMd);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_2493AC000, v9, v10, "performerActionDidFinish called with invalid parameter: %{public}s, parameter: %{public}s. Expected UIMenuElement.Attributes", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v23, &_sypSgMd);
  }
}

void *DOCActionContext.appearance.getter()
{
  v1 = *(v0 + OBJC_IVAR___DOCActionContext_appearance);
  v2 = v1;
  return v1;
}

uint64_t DOCActionContext.performer.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCActionContext.performer.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___DOCActionContext_performer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

uint64_t DOCActionContext.popoverPresentationSourceItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id DOCActionContext.init(appearance:configuration:presentingViewController:performer:transitionProxy:actionReporting:userInfo:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v7[OBJC_IVAR___DOCActionContext_appearance] = a1;
  *&v7[OBJC_IVAR___DOCActionContext_configuration] = a2;
  *&v7[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR___DOCActionContext_transitionProxy] = a5;
  *&v7[OBJC_IVAR___DOCActionContext_actionReporting] = a6;
  *&v7[OBJC_IVAR___DOCActionContext_userInfo] = a7;
  v19.receiver = v7;
  v19.super_class = type metadata accessor for DOCActionContext();
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  swift_unknownObjectRelease();
  return v17;
}

id static DOCActionContext.mockContext(configuration:presentingViewController:performer:actionReporting:userInfo:)(void *a1, void *a2)
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = type metadata accessor for DOCActionContext();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v6[OBJC_IVAR___DOCActionContext_appearance] = 0;
  *&v6[OBJC_IVAR___DOCActionContext_configuration] = a1;
  *&v6[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v6[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v6[OBJC_IVAR___DOCActionContext_userInfo] = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = a1;
  v8 = a2;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall DOCActionContext.updateWithPropertiesFrom(triggeringAction:)(UIAction *triggeringAction)
{
  v2 = [(UIAction *)triggeringAction presentationSourceItem];
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xB0);

  v3(v2);
}

id DOCActionContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCActionContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path getter for DOCActionManager.associatedActionManagers : DOCActionManager(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 associatedActionManagers];
  type metadata accessor for DOCActionManager(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void key path setter for DOCActionManager.associatedActionManagers : DOCActionManager(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for DOCActionManager(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setAssociatedActionManagers_];
}

void key path getter for DOCActionManager.actions : DOCActionManager(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void key path setter for DOCActionManager.actions : DOCActionManager(uint64_t a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setActions_];
}

uint64_t DOCActionManager.allForbiddenActionIdentifiers.getter()
{
  v1 = OBJC_IVAR___DOCActionManager_forbiddenActionIdentifiers;
  swift_beginAccess();
  v20 = *&v0[v1];

  v2 = [v0 associatedActionManagers];
  type metadata accessor for DOCActionManager(v2);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = DOCActionManager.allForbiddenActionIdentifiers.getter();

      v11 = *(v10 + 16);
      v12 = *(v6 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v6 + 3) >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v6);
        if (*(v10 + 16))
        {
LABEL_19:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v11)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v16 = *(v6 + 2);
            v17 = __OFADD__(v16, v11);
            v18 = v16 + v11;
            if (v17)
            {
              goto LABEL_29;
            }

            *(v6 + 2) = v18;
          }

          goto LABEL_5;
        }
      }

      if (v11)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v5;
      if (v9 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_32:

  specialized Array.append<A>(contentsOf:)(v6);
  return v20;
}

uint64_t DOCActionManager.actionManagerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___DOCActionManager_actionManagerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCActionManager.actionManagerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___DOCActionManager_actionManagerDelegate;
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

id DOCActionManager.init(itemManager:managedPermission:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithItemManager:a1 managedPermission:a2];

  return v4;
}

id DOCActionManager.init(itemManager:managedPermission:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___DOCActionManager_forbiddenActionIdentifiers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___DOCActionManager_associatedActionManagers] = v5;
  *&v2[OBJC_IVAR___DOCActionManager_actions] = v5;
  *&v2[OBJC_IVAR___DOCActionManager_actionManagerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___DOCActionManager_fpItemManager] = a1;
  *&v2[OBJC_IVAR___DOCActionManager_managedPermission] = a2;
  v7.receiver = v2;
  v7.super_class = DOCActionManager;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t DOCActionManager.navigationBarActions(for:with:currentLocationSupportsVersioning:currentConfiguration:)(void *a1, uint64_t a2, int a3, void *a4)
{
  v81 = a4;
  LODWORD(v99) = a3;
  v98 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v80 - v8;
  v101 = type metadata accessor for UTType();
  v85 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v10);
  v100 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v93 = &v80 - v15;
  v16 = [v4 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = [v4 associatedActionManagers];
  type metadata accessor for DOCActionManager(v18);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = specialized Sequence.flatMap<A>(_:)(v19);

  v103 = v17;
  specialized Array.append<A>(contentsOf:)(v20);
  v21 = v103;
  v103 = MEMORY[0x277D84F90];
  v95 = v21;
  if (v21 >> 62)
  {
    goto LABEL_104;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v23 = MEMORY[0x277D84F90];
    v84 = a2 >> 62;
    v89 = v9;
    v24 = v98;
    if (i)
    {
      v9 = 0;
      v25 = v95 & 0xC000000000000001;
      v26 = v95 & 0xFFFFFFFFFFFFFF8;
      v27 = v95 + 32;
      v28 = (a2 < 0 ? a2 : a2 & 0xFFFFFFFFFFFFFF8);
      v94 = v28;
      v102 = (a2 & 0xC000000000000001);
      v96 = v95 + 32;
      v97 = (v95 & 0xFFFFFFFFFFFFFF8);
      do
      {
        while (1)
        {
          if (v25)
          {
            v29 = MEMORY[0x24C1FC540](v9, v95);
          }

          else
          {
            if (v9 >= *(v26 + 16))
            {
              goto LABEL_98;
            }

            v29 = *(v27 + 8 * v9);
          }

          v30 = v29;
          if (__OFADD__(v9++, 1))
          {
            goto LABEL_97;
          }

          if ([v29 availability] & 2) != 0 && objc_msgSend(v30, sel_navigationSide) == v24 && (!objc_msgSend(v30, sel_requiresVersioning) || (v99))
          {
            break;
          }

          if (v9 == i)
          {
            goto LABEL_35;
          }
        }

        v32 = v25;
        if ([v30 requiresFullyFormedItems])
        {
          if (v84)
          {
            v33 = __CocoaSet.count.getter();
          }

          else
          {
            v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v34 = 0;
          while (v33 != v34)
          {
            if (v102)
            {
              v35 = MEMORY[0x24C1FC540](v34, a2);
              if (__OFADD__(v34, 1))
              {
                goto LABEL_99;
              }
            }

            else
            {
              if (v34 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v35 = *(a2 + 8 * v34 + 32);
              swift_unknownObjectRetain();
              if (__OFADD__(v34, 1))
              {
                goto LABEL_99;
              }
            }

            v36 = [v35 isFullyFormed];
            swift_unknownObjectRelease();
            ++v34;
            if ((v36 & 1) == 0)
            {

              goto LABEL_31;
            }
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_31:
        v26 = v97;
        v24 = v98;
        v25 = v32;
        v27 = v96;
      }

      while (v9 != i);
LABEL_35:
      v37 = v103;
      v9 = v89;
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    v38 = *(v37 + 16);
    if (!v38)
    {
      goto LABEL_106;
    }

LABEL_40:
    v103 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      __break(1u);
    }

    else
    {
      v39 = v103;
      if (!v84)
      {
        v40 = a2 & 0xFFFFFFFFFFFFFF8;
        v90 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_43;
      }
    }

    v40 = a2 & 0xFFFFFFFFFFFFFF8;
    v78 = v39;
    v79 = __CocoaSet.count.getter();
    v39 = v78;
    v90 = v79;
LABEL_43:
    v41 = 0;
    v42 = v37;
    v88 = v37 & 0xC000000000000001;
    v83 = v37 + 32;
    v82 = *MEMORY[0x277D05FF0];
    v91 = (v85 + 32);
    v92 = (v85 + 48);
    if (a2 < 0)
    {
      v43 = a2;
    }

    else
    {
      v43 = v40;
    }

    v80 = v43;
    v98 = a2;
    v99 = a2 & 0xC000000000000001;
    v97 = (v85 + 8);
    v86 = v38;
    v87 = v37;
    while (1)
    {
      if (v41 >= v38)
      {
        goto LABEL_101;
      }

      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v96 = v39;
      if (v88)
      {
        v45 = MEMORY[0x24C1FC540](v41);
      }

      else
      {
        if (v41 >= *(v42 + 16))
        {
          goto LABEL_103;
        }

        v45 = *(v83 + 8 * v41);
      }

      v95 = v44;
      if (v90 < 1)
      {
        a2 = 0;
      }

      else
      {
        v94 = v45;
        if (([v45 supportsMultipleItems] & 1) != 0 || v90 == 1)
        {
          v46 = [v94 identifier];
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          if (v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50)
          {

            goto LABEL_62;
          }

          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v51)
          {
LABEL_62:
            v52 = [v81 documentContentTypes];
            v102 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!v84)
            {
              goto LABEL_63;
            }

LABEL_77:
            v53 = __CocoaSet.count.getter();
          }

          else
          {
            v54 = [v94 supportedContentTypes];
            v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v56 = *(v55 + 16);
            if (v56)
            {
              a2 = 0;
              v57 = v55 + 40;
              v102 = MEMORY[0x277D84F90];
              do
              {
                if (a2 >= *(v55 + 16))
                {
                  goto LABEL_96;
                }

                UTType.init(_:)();
                v58 = v101;
                if ((*v92)(v9, 1, v101) == 1)
                {
                  outlined destroy of CharacterSet?(v9, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
                }

                else
                {
                  v59 = *v91;
                  (*v91)(v93, v9, v58);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102[2] + 1, 1, v102);
                  }

                  v61 = v102[2];
                  v60 = v102[3];
                  if (v61 >= v60 >> 1)
                  {
                    v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1, v102);
                  }

                  v62 = v102;
                  v102[2] = v61 + 1;
                  (v59)(v62 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v61, v93);
                  v9 = v89;
                }

                ++a2;
                v57 += 16;
              }

              while (v56 != a2);
            }

            else
            {
              v102 = MEMORY[0x277D84F90];
            }

            if (v84)
            {
              goto LABEL_77;
            }

LABEL_63:
            v53 = *(v40 + 16);
          }

          v9 = 0;
          while (1)
          {
            a2 = v53 == v9;
            if (v53 == v9)
            {
LABEL_88:

              v9 = v89;
              goto LABEL_89;
            }

            if (v99)
            {
              v63 = MEMORY[0x24C1FC540](v9, v98);
              if (__OFADD__(v9, 1))
              {
                goto LABEL_94;
              }
            }

            else
            {
              if (v9 >= *(v40 + 16))
              {
                goto LABEL_95;
              }

              v63 = *(v98 + v9 + 4);
              swift_unknownObjectRetain();
              if (__OFADD__(v9, 1))
              {
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }
            }

            v64 = [v63 contentType];
            v65 = v100;
            static UTType._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UTType._bridgeToObjectiveC()().super.isa;
            v67 = v40;
            v68 = v101;
            v69 = Array._bridgeToObjectiveC()().super.isa;
            v70 = [(objc_class *)isa doc_conformsToAnyInContentTypes:v69];
            swift_unknownObjectRelease();

            v71 = v68;
            v40 = v67;
            (*v97)(v65, v71);
            ++v9;
            if ((v70 & 1) == 0)
            {
              goto LABEL_88;
            }
          }
        }

        a2 = 0;
LABEL_89:
        v45 = v94;
      }

      v39 = v96;
      v103 = v96;
      v73 = *(v96 + 16);
      v72 = *(v96 + 24);
      if (v73 >= v72 >> 1)
      {
        v75 = v45;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
        v45 = v75;
        v39 = v103;
      }

      *(v39 + 16) = v73 + 1;
      v74 = v39 + 16 * v73;
      *(v74 + 32) = v45;
      *(v74 + 40) = a2;
      v41 = v95;
      v38 = v86;
      v42 = v87;
      if (v95 == v86)
      {
        v76 = v39;

        return v76;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    ;
  }

  v38 = __CocoaSet.count.getter();
  if (v38)
  {
    goto LABEL_40;
  }

LABEL_106:

  return MEMORY[0x277D84F90];
}

id DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)(char **a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int64_t a6)
{
  v7 = v6;
  v76 = a4;
  v78 = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16DOCActionManagerC08DocumentB11ExecutablesE20_filteredMenuActions33_542532BBC9EBA8FBFB700485A97196BFLL3for22availabilityIdentifier2in20currentConfiguration19sortOverrideHandlerSaySo23UIDocumentBrowserActionCGSaySo7DOCNode_pG_So0vwX12AvailabilityVSoAN_pSgSo16DOCConfigurationCSbAL_ALSbyXEtcSgtF9LazyItemsL_CySaySo6FPItemCGSgGMd);
  inited = swift_initStackObject();
  inited[3] = v12;
  inited[4] = 1;
  inited[2] = partial apply for implicit closure #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:);
  v79 = inited;

  v14 = [v6 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [v7 associatedActionManagers];
  type metadata accessor for DOCActionManager(v16);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = 0;
  v19 = specialized Sequence.flatMap<A>(_:)(v17);

  v83 = v15;
  specialized Array.append<A>(contentsOf:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v77 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v80 = a3;
  v21 = [v7 builtinActionsForNodes:isa inNode:a3 currentConfiguration:v76];

  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Array.append<A>(contentsOf:)(v22);
  v23 = v83;
  v81[0] = MEMORY[0x277D84F90];
  if (v83 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v74 = a5;
    v75 = a6;
    v25 = 0;
    a6 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C1FC540](v25, v23);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v82 = v26;
      if (closure #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)(&v82, v23, v80, v77, v7, v78, v79))
      {
        v76 = 0;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a5 = v23;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v25;
      if (v28 == i)
      {
        v29 = v81[0];
        a5 = v74;
        a6 = v75;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_18:

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

  v81[0] = specialized Array._copyToContiguousArray()(v30);
  specialized MutableCollection<>.sort(by:)(v81, a5, a6);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

  v31 = v81[0];
  LODWORD(v32) = v81[0] < 0 || (v81[0] & 0x4000000000000000) != 0;
  if (v32)
  {
    goto LABEL_59;
  }

  for (j = *(v81[0] + 16); ; j = __CocoaSet.count.getter())
  {
    v34 = MEMORY[0x277D84F90];
    if (j)
    {
      v81[0] = MEMORY[0x277D84F90];
      v35 = v81;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, j & ~(j >> 63), 0);
      if (j < 0)
      {
        __break(1u);
LABEL_61:
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), a6, 1, v36);
LABEL_37:
        *(v36 + 2) = a6;
        v56 = &v36[16 * a5];
        v57 = v36;
        *(v56 + 4) = v29;
        *(v56 + 5) = v35;
        if (!*(v36 + 2))
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      LODWORD(v80) = v32;
      a6 = 0;
      v38 = v81[0];
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x24C1FC540](a6, v31);
        }

        else
        {
          v39 = *(v31 + 8 * a6 + 32);
        }

        v40 = v39;
        v41 = [v40 identifier];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v81[0] = v38;
        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
          v38 = v81[0];
        }

        ++a6;
        *(v38 + 16) = v46 + 1;
        v47 = v38 + 16 * v46;
        *(v47 + 32) = v42;
        *(v47 + 40) = v44;
      }

      while (j != a6);
      LODWORD(v32) = v80;
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

    v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v38);

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = specialized Set.contains(_:)(v49, v50, v48);

    if (v51)
    {
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a6 = specialized Set.contains(_:)(v52, v53, v48);

      if (a6)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v54;
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        a5 = *(v55 + 2);
        v37 = *(v55 + 3);
        v36 = v55;
        a6 = a5 + 1;
        if (a5 < v37 >> 1)
        {
          goto LABEL_37;
        }

        goto LABEL_61;
      }
    }

    else
    {
    }

    v57 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_38:

      return v31;
    }

LABEL_41:
    v80 = v18;
    v82 = v34;
    v18 = v57;
    if (!v32)
    {
      break;
    }

    v29 = __CocoaSet.count.getter();
    if (!v29)
    {
      goto LABEL_55;
    }

LABEL_45:
    a5 = 0;
    v77 = v31;
    v78 = v31 & 0xC000000000000001;
    while (1)
    {
      if (v78)
      {
        v59 = MEMORY[0x24C1FC540](a5, v31);
      }

      else
      {
        if (a5 >= *(v31 + 16))
        {
          goto LABEL_58;
        }

        v59 = *(v31 + 8 * a5 + 32);
      }

      v32 = v59;
      v60 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      v61 = v29;
      v62 = v18;

      v63 = [v32 identifier];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      a6 = &v73;
      v81[0] = v64;
      v81[1] = v66;
      MEMORY[0x28223BE20](v67, v68);
      v72[2] = v81;
      v69 = v18;
      v70 = v80;
      LOBYTE(v63) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v72, v69);
      v80 = v70;

      v18 = v62;

      if (v63)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v29 = v61;
      ++a5;
      v58 = v60 == v61;
      v31 = v77;
      if (v58)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v29 = *(v31 + 16);
  if (v29)
  {
    goto LABEL_45;
  }

LABEL_55:

  return v82;
}

unint64_t closure #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)(id *a1, unint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v102 = a4;
  v95 = a7;
  v98 = a6;
  v99 = a5;
  v100 = a3;
  v105[9] = *MEMORY[0x277D85DE8];
  v97 = type metadata accessor for UTType();
  v94 = *(v97 - 8);
  v10 = MEMORY[0x28223BE20](v97, v9);
  v96 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *a1;
  v12 = [v101 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (a2 >> 62)
  {
LABEL_44:
    v104 = a2 & 0xFFFFFFFFFFFFFF8;
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v104 = a2 & 0xFFFFFFFFFFFFFF8;
    v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = 0;
  v35 = a2;
  v36 = a2 & 0xC000000000000001;
  while (v33 != v34)
  {
    if (v36)
    {
      v37 = MEMORY[0x24C1FC540](v34, v35);
    }

    else
    {
      if (v34 >= *(v104 + 16))
      {
        goto LABEL_43;
      }

      v37 = *(v35 + 8 * v34 + 32);
    }

    v38 = v37;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v39 = [v37 identifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v41;

    if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v42)
    {

      goto LABEL_110;
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v34;
    if (a2)
    {
LABEL_110:
      LOBYTE(v60) = 0;
      return v60 & 1;
    }
  }

LABEL_6:
  v18 = v101;
  v19 = [v101 identifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    v26 = v102;
LABEL_32:

    goto LABEL_33;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v26 = v102;
  if (v25)
  {
    goto LABEL_33;
  }

  v27 = [v18 identifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
    goto LABEL_32;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_33:
  if (!v100)
  {
    if (v26 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_46;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
LABEL_115:
      MEMORY[0x24C1FC540](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        if (__CocoaSet.count.getter() > 1)
        {
          goto LABEL_110;
        }

        goto LABEL_52;
      }

      swift_unknownObjectRetain();
    }
  }

  swift_unknownObjectRetain();
  v44 = [swift_unknownObjectRetain() providerDomainID];
  v45 = DOCProviderDomainIDIsSharedServerDomainID();

  swift_unknownObjectRelease();
  if (v45)
  {
    swift_unknownObjectRelease();
    goto LABEL_110;
  }

LABEL_46:
  v46 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6050], v26);
  swift_unknownObjectRelease();
  if ((v46 & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_47:
  v47 = DOCActionManager.allForbiddenActionIdentifiers.getter();
  v48 = [v18 identifier];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v105[0] = v49;
  v105[1] = v51;
  MEMORY[0x28223BE20](v52, v53);
  *(&v94 - 2) = v105;
  v54 = v103;
  LOBYTE(v48) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v94 - 4), v47);
  v13 = v54;

  v103 = v54;
  if (v48)
  {
    goto LABEL_110;
  }

  v55 = [v18 availability];
  if ((v98 & ~v55) != 0)
  {
    goto LABEL_110;
  }

  if ([v18 supportsMultipleItems])
  {
    goto LABEL_52;
  }

  if (v26 >> 62)
  {
    goto LABEL_118;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_110;
  }

LABEL_52:
  if (![v18 requiresFullyFormedItems])
  {
    goto LABEL_65;
  }

  v18 = (v26 & 0xFFFFFFFFFFFFFF8);
  if (v26 >> 62)
  {
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v56 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = 0;
  v58 = v26 & 0xC000000000000001;
  v26 = v102;
  while (1)
  {
    if (v56 == v57)
    {
      goto LABEL_65;
    }

    if (v58)
    {
      break;
    }

    if (v57 >= v18[2])
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v59 = v26[v57 + 4];
    swift_unknownObjectRetain();
    if (__OFADD__(v57, 1))
    {
      goto LABEL_64;
    }

LABEL_60:
    v13 = [v59 isFullyFormed];
    swift_unknownObjectRelease();
    LOBYTE(v60) = 0;
    ++v57;
    if ((v13 & 1) == 0)
    {
      return v60 & 1;
    }
  }

  v59 = MEMORY[0x24C1FC540](v57, v26);
  if (!__OFADD__(v57, 1))
  {
    goto LABEL_60;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  v61 = v101;
  if ([v101 requiresVersioning])
  {
    v18 = (v26 & 0xFFFFFFFFFFFFFF8);
    if (v26 >> 62)
    {
      v62 = __CocoaSet.count.getter();
    }

    else
    {
      v62 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = 0;
    v64 = v26 & 0xC000000000000001;
    v26 = &selRef_initWithFrame_;
    do
    {
      v65 = v63;
      if (v62 == v63)
      {
        break;
      }

      if (v64)
      {
        v66 = MEMORY[0x24C1FC540](v63, v102);
        if (__OFADD__(v65, 1))
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v63 >= v18[2])
        {
          goto LABEL_114;
        }

        v66 = v102[v63 + 4];
        swift_unknownObjectRetain();
        if (__OFADD__(v65, 1))
        {
LABEL_78:
          __break(1u);
LABEL_79:
          v71 = v13;
          v72 = _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unknownObjectRelease();
          v103 = 0;
          break;
        }
      }

      v61 = [v66 providerDomainID];
      v67 = objc_opt_self();
      v105[0] = 0;
      v68 = [v67 providerDomainWithID:v61 cachePolicy:3 error:v105];
      v13 = v105[0];
      if (!v68)
      {
        goto LABEL_79;
      }

      v69 = v68;
      v70 = v105[0];

      v13 = [v69 isiCloudDriveProvider];
      swift_unknownObjectRelease();
      v63 = v65 + 1;
    }

    while ((v13 & 1) != 0);
    v73 = 0;
    v26 = &selRef_setCancelsTouchesInView_;
    while (v62 != v73)
    {
      if (v64)
      {
        v74 = MEMORY[0x24C1FC540](v73, v102);
        if (__OFADD__(v73, 1))
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v73 >= v18[2])
        {
          goto LABEL_113;
        }

        v74 = v102[v73 + 4];
        swift_unknownObjectRetain();
        if (__OFADD__(v73, 1))
        {
LABEL_89:
          __break(1u);
          break;
        }
      }

      v75 = [v74 isInTrash];
      swift_unknownObjectRelease();
      LOBYTE(v60) = 0;
      ++v73;
      if (v75)
      {
        return v60 & 1;
      }
    }

    if (v62 == v65)
    {
      v61 = v101;
      v26 = v102;
      goto LABEL_92;
    }

    goto LABEL_110;
  }

LABEL_92:
  v76 = [v61 filteringPredicate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo7DOCNode_pGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x7365646F4E636F64;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v26;

  v60 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo7DOCNode_pGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_SaySo7DOCNode_pGtMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v76 evaluateWithObject_];

  if (!v13)
  {
    goto LABEL_110;
  }

  v79 = UIDocumentBrowserAction.uiAction.getter();
  if (v79)
  {
    v60 = v79;
    UIDocumentBrowserAction.isValidForNodes(nodes:)(v26);
    if ((v80 & 1) == 0 || !specialized items.getter in LazyItems #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)())
    {
LABEL_109:

      goto LABEL_110;
    }

    v81 = objc_opt_self();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v13 = Array._bridgeToObjectiveC()().super.isa;

    v82 = [v81 isAction:v60 eligibleForItems:v13];

    if ((v82 & 1) == 0)
    {
      goto LABEL_110;
    }
  }

  if (v26 >> 62)
  {
    v83 = __CocoaSet.count.getter();
    if (v83)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v83 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v83)
    {
LABEL_99:
      v84 = 0;
      v104 = v26 & 0xC000000000000001;
      v100 = v26 & 0xFFFFFFFFFFFFFF8;
      v85 = (v94 + 8);
      v26 = v83;
      while (1)
      {
        if (v104)
        {
          v86 = MEMORY[0x24C1FC540](v84, v102);
          v87 = (v84 + 1);
          if (__OFADD__(v84, 1))
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v84 >= *(v100 + 16))
          {
            goto LABEL_117;
          }

          v86 = v102[v84 + 4];
          swift_unknownObjectRetain();
          v87 = (v84 + 1);
          if (__OFADD__(v84, 1))
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }
        }

        v88 = [v86 contentType];
        v18 = v96;
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = [v101 supportedContentTypes];
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x28223BE20](v90, v91);
        *(&v94 - 2) = v18;
        v92 = v103;
        v60 = specialized Sequence.contains(where:)(partial apply for closure #5 in closure #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:), (&v94 - 4), v13);
        v103 = v92;

        swift_unknownObjectRelease();
        (*v85)(v18, v97);
        if (v60)
        {
          ++v84;
          if (v87 != v26)
          {
            continue;
          }
        }

        return v60 & 1;
      }
    }
  }

  LOBYTE(v60) = 1;
  return v60 & 1;
}

uint64_t closure #5 in closure #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v11 - v2;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  UTType.init(_:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of CharacterSet?(v3, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
    v9 = 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = UTType.conforms(to:)();
    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned UIDocumentBrowserAction, @unowned UIDocumentBrowserAction, @unowned @callee_unowned @convention(block) () -> (@unowned ObjCBool)) -> (@unowned ObjCBool)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v15[4] = partial apply for thunk for @callee_guaranteed () -> (@unowned Bool);
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v15[3] = &block_descriptor_158_2;
  v11 = _Block_copy(v15);
  v12 = *(a5 + 16);

  v13 = v12(a5, a1, a2, v11);
  _Block_release(v11);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

objc_class *DOCActionManager.builtinActions(for:in:currentConfiguration:)(unint64_t a1, id a2, void *a3)
{
  v145 = *MEMORY[0x277D85DE8];
  v144 = MEMORY[0x277D84F90];
  if (a2)
  {
    v3 = a1;
    v4 = [a2 isWritable];
    a1 = v3;
    v119 = v4;
  }

  else
  {
    v119 = 0;
    v4 = 1;
  }

  v128 = v4;
  v142 = a1;
  v141 = specialized static DOCActionManager.eligibleActions(for:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8FPActionaGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BBFE60;
  v6 = *MEMORY[0x277CC6058];
  *(inited + 32) = *MEMORY[0x277CC6058];
  v140 = inited + 32;
  v7 = *MEMORY[0x277CC6078];
  v8 = *MEMORY[0x277CC6010];
  *(inited + 40) = *MEMORY[0x277CC6078];
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CC5FE0];
  v10 = *MEMORY[0x277CC6040];
  *(inited + 56) = *MEMORY[0x277CC5FE0];
  *(inited + 64) = v10;
  v11 = *MEMORY[0x277CC6048];
  v12 = *MEMORY[0x277CC6018];
  *(inited + 72) = *MEMORY[0x277CC6048];
  *(inited + 80) = v12;
  v13 = *MEMORY[0x277CC5FD0];
  v14 = *MEMORY[0x277CC6060];
  *(inited + 88) = *MEMORY[0x277CC5FD0];
  *(inited + 96) = v14;
  v129 = *MEMORY[0x277CC6050];
  v131 = *MEMORY[0x277CC6008];
  v15 = *MEMORY[0x277CC6008];
  *(inited + 104) = *MEMORY[0x277CC6050];
  *(inited + 112) = v15;
  v16 = *MEMORY[0x277CC5FE8];
  v135 = *MEMORY[0x277CC5FF8];
  v17 = *MEMORY[0x277CC5FF8];
  *(inited + 120) = *MEMORY[0x277CC5FE8];
  *(inited + 128) = v17;
  v133 = *MEMORY[0x277CC6038];
  v137 = *MEMORY[0x277CC6070];
  v18 = *MEMORY[0x277CC6070];
  *(inited + 136) = *MEMORY[0x277CC6038];
  *(inited + 144) = v18;
  v116 = v6;
  v19 = v7;
  v20 = v8;
  v121 = v9;
  v21 = v10;
  v115 = v11;
  v22 = v12;
  v122 = v13;
  v123 = v14;
  v23 = v129;
  v124 = v131;
  v117 = v16;
  v125 = v135;
  v126 = v133;
  v127 = v137;
  v24 = specialized _NativeSet.genericIntersection<A>(_:)(inited, v141);
  swift_setDeallocating();
  type metadata accessor for FPAction(0);
  swift_arrayDestroy();
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.UI);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    inited = swift_slowAlloc();
    *inited = 0;
    _os_log_impl(&dword_2493AC000, v26, v27, "Shortcuts Contextual Actions enabled", inited, 2u);
    MEMORY[0x24C1FE850](inited, -1, -1);
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D79EA0]) initWithSurface_];
  v29 = [objc_opt_self() standardClient];
  v143 = 0;
  v30 = [v29 contextualActionsForContext:v28 error:&v143];

  v31 = v143;
  i = v142;
  v136 = v24;
  if (v30)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for WFContextualAction);
    v138 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v31;
  }

  else
  {
    v141 = v20;
    v34 = v143;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    inited = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_249B9A480;
    v37 = _convertErrorToNSError(_:)();
    v11 = &lazy cache variable for type metadata for NSError;
    v7 = 0x277CCA9B8;
    *(v36 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v36 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v36 + 32) = v37;
    os_log(_:dso:log:type:_:)();

    v138 = 0;
    v20 = v141;
  }

  v38 = specialized Set.contains(_:)(v20, v24);
  v39 = MEMORY[0x277D84F90];
  v40 = v142 >> 62;
  v130 = MEMORY[0x277D84F90];
  v132 = v142 >> 62;
  if (v38)
  {
    if (v40)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_16;
      }
    }

    else if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      if ((v142 & 0xC000000000000001) != 0)
      {
        goto LABEL_242;
      }

      if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(v142 + 32);
        swift_unknownObjectRetain();
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_244;
    }

    v39 = MEMORY[0x277D84F90];
  }

  while (2)
  {
    v114 = v39;
    v7 = (i & 0xFFFFFFFFFFFFFF8);
    if (v40)
    {
      goto LABEL_234;
    }

    v45 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
    v46 = 0;
    v47 = i & 0xC000000000000001;
    do
    {
      v48 = v46;
      if (v45 == v46)
      {
        break;
      }

      if (v47)
      {
        v49 = MEMORY[0x24C1FC540](v46, i);
        if (__OFADD__(v48, 1))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v46 >= v7[2])
        {
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          v45 = __CocoaSet.count.getter();
          goto LABEL_31;
        }

        v49 = *(i + 8 * v46 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v48, 1))
        {
          goto LABEL_40;
        }
      }

      v50 = [v49 doc_isCollaborationInvitation];
      swift_unknownObjectRelease();
      v46 = v48 + 1;
    }

    while (!v50);
    v118 = v28;
    v140 = i & 0xC000000000000001;
    v141 = v45;
    if (!v45)
    {
      goto LABEL_60;
    }

    v28 = 0;
    while (v47)
    {
      v51 = MEMORY[0x24C1FC540](v28, i);
      i = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_59;
      }

LABEL_48:
      v52 = v7;
      swift_getObjectType();
      v53 = [v51 providerDomainID];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v58 = v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57;
      if (v58)
      {
      }

      else
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v59 & 1) == 0)
        {
          swift_unknownObjectRelease();
          v45 = v141;
          goto LABEL_44;
        }
      }

      v60 = DOCNode.doc_isAppContainerRoot.getter();
      swift_unknownObjectRelease();
      v45 = v141;
      if (v60)
      {
        i = v142;
        inited = v136;
        v28 = v138;
        v62 = a2;
        v20 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        LODWORD(v11) = v128;
        v7 = v52;
        goto LABEL_67;
      }

LABEL_44:
      ++v28;
      v58 = i == v45;
      i = v142;
      v7 = v52;
      v47 = v140;
      if (v58)
      {
        goto LABEL_60;
      }
    }

    if (v28 >= v7[2])
    {
      goto LABEL_230;
    }

    v51 = *(i + 8 * v28 + 32);
    swift_unknownObjectRetain();
    i = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      goto LABEL_48;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v58 = v45 == v48;
    inited = v136;
    v28 = v138;
    v62 = a2;
    v20 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    LODWORD(v11) = v128;
    if (v58)
    {
      if (v132)
      {
        v61 = __CocoaSet.count.getter();
      }

      else
      {
        v61 = v7[2];
      }

      v63 = specialized static UIDocumentBrowserAction.copyAction(numberOfItems:)(v61);
      if (v114 >> 62 && __CocoaSet.count.getter() < 0)
      {
        __break(1u);
LABEL_242:
        v41 = MEMORY[0x24C1FC540](0, i);
LABEL_19:
        v42 = [v41 providerDomainID];
        v43 = DOCProviderDomainIDIsSharedServerDomainID();

        if (v43)
        {
          swift_unknownObjectRelease();
          v39 = MEMORY[0x277D84F90];
        }

        else
        {
          v44 = specialized DOCActionManager.shouldShowAddToSubmenu(for:)(i);
          specialized static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(v44 & 1);
          MEMORY[0x24C1FB090]();
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized static UIDocumentBrowserAction.unfavoriteAction()();
          MEMORY[0x24C1FB090]();
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v39 = v144;
        }

        v40 = v132;
        continue;
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v63);
    }

    break;
  }

LABEL_67:
  if (specialized DOCActionManager.canDuplicate(nodes:in:)(i, v62))
  {
    specialized static UIDocumentBrowserAction.duplicateAction(targetNode:)(v62);
    MEMORY[0x24C1FB090]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!v62)
  {
    specialized static UIDocumentBrowserAction.revealAction()();
    MEMORY[0x24C1FB090]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (specialized Set.contains(_:)(v121, inited) & 1) != 0 || (specialized Set.contains(_:)(v116, inited))
  {
    specialized static UIDocumentBrowserAction.mixedDeleteAction()();
    MEMORY[0x24C1FB090]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if ((specialized Set.contains(_:)(v122, inited) & v11 & 1) == 0)
  {
    goto LABEL_89;
  }

  if (v62)
  {
LABEL_87:
    specialized static UIDocumentBrowserAction.archiveAction(targetNode:currentNodeIsTarget:)(v62, v62 != 0);
    MEMORY[0x24C1FB090]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_239;
    }

    goto LABEL_88;
  }

  if (v132)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_84;
    }

    goto LABEL_87;
  }

  if (v7[2] == 1)
  {
    goto LABEL_87;
  }

LABEL_84:
  if (specialized Set.contains(_:)(v123, inited))
  {
    goto LABEL_91;
  }

  while (1)
  {
    v62 = v140;
    if (specialized Set.contains(_:)(v124, inited))
    {
      specialized static UIDocumentBrowserAction.evictAction()();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (specialized Set.contains(_:)(v125, inited))
    {
      v64 = 1;
    }

    else
    {
      if ((specialized Set.contains(_:)(v117, inited) & 1) == 0)
      {
        goto LABEL_109;
      }

      v64 = 0;
    }

    specialized static UIDocumentBrowserAction.downloadAction(recursively:)(v64);
    MEMORY[0x24C1FB090]();
    if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_109:
    if (specialized Set.contains(_:)(v126, inited))
    {
      if (v132)
      {
        v65 = __CocoaSet.count.getter();
      }

      else
      {
        v65 = v7[2];
      }

      specialized static UIDocumentBrowserAction.pinAction(targetNode:currentItemIsTarget:itemCount:)(v65);
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v66 = specialized Set.contains(_:)(v127, inited);
    inited = v132;
    if (v66)
    {
      if (v132)
      {
        v67 = __CocoaSet.count.getter();
      }

      else
      {
        v67 = v7[2];
      }

      specialized static UIDocumentBrowserAction.unPinAction(targetNode:currentItemIsTarget:itemCount:)(v67);
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        inited = v132;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v68 = inited ? __CocoaSet.count.getter() : v7[2];
    v69 = v141 && v68 == 1;
    v70 = !v69;
    LODWORD(v132) = v70;
    if (v69)
    {
      break;
    }

LABEL_142:
    if (v11)
    {
      v72 = 0;
      LODWORD(v11) = v141;
      do
      {
        v73 = v141 == v72;
        if (v141 == v72)
        {
          break;
        }

        if (v140)
        {
          v74 = MEMORY[0x24C1FC540](v72, i);
          if (__OFADD__(v72, 1))
          {
            goto LABEL_152;
          }
        }

        else
        {
          if (v72 >= v7[2])
          {
            goto LABEL_231;
          }

          v74 = *(i + 8 * v72 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v72, 1))
          {
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }
        }

        inited = [v74 v20[261]];
        swift_unknownObjectRelease();
        ++v72;
      }

      while ((inited & 1) != 0);
    }

    else
    {
LABEL_153:
      v73 = 0;
    }

    if (([a3 isPickerUI] & 1) != 0 || objc_msgSend(a3, sel_isFilesApp))
    {
      specialized static UIDocumentBrowserAction.quickLookAction()();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        inited = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (!v73)
      {
LABEL_180:

        if (v119)
        {
          goto LABEL_185;
        }

        goto LABEL_189;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
      inited = static UIDocumentBrowserAction.markupAction()();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      static UIDocumentBrowserAction.trimAction()();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        inited = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else if (!v73)
    {
      goto LABEL_180;
    }

    if (v28)
    {
      v24 = v28 & 0xFFFFFFFFFFFFFF8;
      if (v28 >> 62)
      {
LABEL_244:
        v75 = __CocoaSet.count.getter();
      }

      else
      {
        v75 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v76 = v7;
      swift_unknownObjectRetain();
      if (v75)
      {
        inited = 0;
        v7 = (v28 & 0xC000000000000001);
        do
        {
          if (v7)
          {
            v77 = MEMORY[0x24C1FC540](inited, v28);
          }

          else
          {
            if (inited >= *(v24 + 16))
            {
              goto LABEL_233;
            }

            v77 = *(v28 + 8 * inited + 32);
          }

          v20 = v77;
          v28 = inited + 1;
          if (__OFADD__(inited, 1))
          {
            goto LABEL_232;
          }

          LODWORD(v11) = specialized static UIDocumentBrowserAction.shortcutsAction(contextualAction:targetNode:currentNodeIsTarget:)(v77, a2, a2 != 0);
          MEMORY[0x24C1FB090]();
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            i = v142;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          ++inited;
          v58 = v28 == v75;
          v28 = v138;
        }

        while (!v58);
      }

      swift_unknownObjectRelease();
      v7 = v76;
      v62 = v140;
      if (!v119)
      {
        goto LABEL_189;
      }

LABEL_185:
      if (specialized static DOCActionManager.canPerform(_:on:)(v115, i))
      {
        specialized static UIDocumentBrowserAction.newFolderWithSelectionAction(parent:nodes:currentNodeIsTarget:)(a2, i);
        MEMORY[0x24C1FB090]();
        if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          inited = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_189;
    }

    if (v119)
    {
      goto LABEL_185;
    }

LABEL_189:
    if (v132)
    {
      goto LABEL_212;
    }

    if (v62)
    {
      goto LABEL_237;
    }

    if (v7[2])
    {
      v78 = *(i + 32);
      swift_unknownObjectRetain();
      goto LABEL_193;
    }

    __break(1u);
LABEL_239:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_88:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_89:
    if (specialized Set.contains(_:)(v123, inited) & v11)
    {
      if (!v62)
      {
LABEL_91:
        if (v132)
        {
          if (__CocoaSet.count.getter() != 1)
          {
            continue;
          }
        }

        else if (v7[2] != 1)
        {
          continue;
        }
      }

      specialized static UIDocumentBrowserAction.unarchiveAction(targetNode:currentNodeIsTarget:)(v62, v62 != 0);
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (v140)
  {
    v71 = MEMORY[0x24C1FC540](0, i);
    goto LABEL_137;
  }

  if (v7[2])
  {
    v71 = *(i + 32);
    swift_unknownObjectRetain();
LABEL_137:
    if ([v71 isPinnedSubitem])
    {
      inited = specialized static UIDocumentBrowserAction.showOfflineFolder()();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    swift_unknownObjectRelease();
    goto LABEL_142;
  }

  __break(1u);
LABEL_237:
  v78 = MEMORY[0x24C1FC540](0, i);
LABEL_193:
  v79 = [v78 cachedDomain];
  if (!v79)
  {
    goto LABEL_211;
  }

  v80 = v79;
  v81 = [v79 isiCloudDriveProvider];

  if (!v81)
  {
    goto LABEL_211;
  }

  v82 = [v78 isFolder];
  result = _DocumentManagerBundle();
  v84 = result;
  if (!v82)
  {
    if (!result)
    {
      goto LABEL_246;
    }

    v113 = 0x8000000249BFF4B0;
    v85 = 0x617A696C61636F4CLL;
    v86 = 0xEB00000000656C62;
    v87 = 0xD000000000000025;
    v88 = 0x8000000249BFF460;
    v90 = 0x8000000249BFF490;
    v91 = 0xD00000000000004ALL;
    v92.super.isa = v84;
    v89 = 0xD000000000000012;
LABEL_200:
    v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v87, *&v85, v92, *&v89, *&v91);

    v94 = [objc_opt_self() driveRSA];
    v95 = [v94 isEnabled];

    if (v95)
    {
      specialized static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized static UIDocumentBrowserAction.manageShareAction(with:)(v93._countAndFlagsBits, v93._object);

      MEMORY[0x24C1FB090](v96);
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)();
      MEMORY[0x24C1FB090]();
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      specialized static UIDocumentBrowserAction.manageShareAction(with:)(v93._countAndFlagsBits, v93._object);

      MEMORY[0x24C1FB090](v97);
      if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_211:
    swift_unknownObjectRelease();
LABEL_212:
    v143 = MEMORY[0x277D84F90];
    v98 = 1 << *(v136 + 32);
    v99 = -1;
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    v100 = v99 & *(v136 + 56);
    v101 = (v98 + 63) >> 6;

    v103 = 0;
    v7 = &lazy cache variable for type metadata for UIDocumentBrowserAction;
    v28 = 0x277D05F28uLL;
    for (i = &lazy protocol witness table cache variable for type FPAction and conformance FPAction; v100; v102 = v136)
    {
LABEL_221:
      while (1)
      {
        v105 = __clz(__rbit64(v100));
        v100 &= v100 - 1;
        v106 = *(*(v102 + 48) + ((v103 << 9) | (8 * v105)));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v108 = [v134 additionalBuiltInActionsFor_];

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
        v109 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v109 + 16))
        {
          v110 = specialized __RawDictionaryStorage.find<A>(_:)(v106);
          if (v111)
          {
            break;
          }
        }

        v102 = v136;
        if (!v100)
        {
          goto LABEL_217;
        }
      }

      v112 = *(*(v109 + 56) + 8 * v110);

      MEMORY[0x24C1FB090]();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v130 = v143;
    }

LABEL_217:
    while (1)
    {
      v104 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v104 >= v101)
      {

        specialized Array.append<A>(contentsOf:)(v130);

        return v144;
      }

      v100 = *(v136 + 56 + 8 * v104);
      ++v103;
      if (v100)
      {
        v103 = v104;
        goto LABEL_221;
      }
    }

    __break(1u);
    goto LABEL_229;
  }

  if (result)
  {
    v113 = 0x8000000249BFF530;
    v85 = 0x617A696C61636F4CLL;
    v86 = 0xEB00000000656C62;
    v87 = 0xD000000000000027;
    v88 = 0x8000000249BFF500;
    v89 = 0xD000000000000014;
    v90 = 0x8000000249BE1170;
    v91 = 0xD00000000000004CLL;
    v92.super.isa = v84;
    goto LABEL_200;
  }

  __break(1u);
LABEL_246:
  __break(1u);
  return result;
}

id DOCActionManager.shareAction()()
{
  v1 = [v0 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [v0 associatedActionManagers];
  type metadata accessor for DOCActionManager(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Sequence.flatMap<A>(_:)(v4);

  aBlock[0] = v2;
  specialized Array.append<A>(contentsOf:)(v5);
  v6 = v2;
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        return v10;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {

        return v10;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v19 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v20 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  v21 = MEMORY[0x24C1FAD20](0, 0xE000000000000000);
  aBlock[4] = DOCGridLayout.specIconWidth.modify;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [URL]) -> ();
  aBlock[3] = &block_descriptor_122_1;
  v22 = _Block_copy(aBlock);
  v10 = [v19 initWithIdentifier:v20 localizedTitle:v21 availability:1 handler:v22];

  _Block_release(v22);

  return v10;
}

void DOCActionManager.lookupAndPerform(actionWithIdentifier:on:in:actionContext:)(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  v6 = v5;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a2;
  v15 = v12 == a1 && v13 == a2;
  v16 = (a3 >> 62);
  v47 = a1;
  v48 = v14;
  if (v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v16)
  {
LABEL_36:
    if (__CocoaSet.count.getter() > 1000)
    {
      return;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1000)
  {
    return;
  }

LABEL_10:
  v18 = [v6 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [v6 associatedActionManagers];
  type metadata accessor for DOCActionManager(v20);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = specialized Sequence.flatMap<A>(_:)(v21);

  v49 = v19;
  specialized Array.append<A>(contentsOf:)(v22);
  v23 = v19;

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v6 builtinActionsForNodes:isa inNode:a4 currentConfiguration:*(a5 + OBJC_IVAR___DOCActionContext_configuration)];

  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v23;
  specialized Array.append<A>(contentsOf:)(v26);
  v27 = v23;
  v43 = v16;
  v44 = a5;
  if (!(v23 >> 62))
  {
    v6 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    oslog = a3;
    if (v6)
    {
      goto LABEL_14;
    }

LABEL_40:

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.UI);

    osloga = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v49);
      _os_log_impl(&dword_2493AC000, osloga, v39, "Cannot find action for identifier: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1FE850](v41, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    else
    {
    }

    return;
  }

  v6 = __CocoaSet.count.getter();
  oslog = a3;
  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_14:
  v28 = 0;
  a5 = v23 & 0xC000000000000001;
  a3 = v23 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (a5)
    {
      v29 = MEMORY[0x24C1FC540](v28, v27);
    }

    else
    {
      if (v28 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v29 = *(v27 + 8 * v28 + 32);
    }

    a4 = v29;
    v16 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v30 = [v29 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == v47 && v33 == v48)
    {
      break;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_28;
    }

    ++v28;
    if (v16 == v6)
    {
      goto LABEL_40;
    }
  }

LABEL_28:

  v36 = oslog;

  if (v43)
  {
    v37 = _bridgeCocoaArray<A>(_:)();

    v36 = v37;
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  specialized DOCActionManager.perform(_:on:actionContext:)(a4, v36, v44);
}

uint64_t closure #1 in continueRunningAction #1 () in DOCActionManager.perform(_:on:actionContext:)(int a1, id a2, void *a3)
{
  v4 = [a2 resolvedHandler];
  v16[3] = type metadata accessor for DOCActionContext();
  v16[0] = a3;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCItemBookmark);
  v5 = a3;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  outlined init with copy of Any?(v16, v14);
  v7 = v15;
  if (v15)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8, v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  v4[2](v4, v6.super.isa, v12);

  _Block_release(v4);
  swift_unknownObjectRelease();
  return outlined destroy of CharacterSet?(v16, &_sypSgMd);
}

void closure #1 in DOCActionManager.perform(_:on:actionContext:)(uint64_t a1, void *a2, unint64_t a3, void *a4, double a5)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, aBlock);
    *(v13 + 12) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2048;
    *(v13 + 24) = Current - a5;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s Finished checking for any nodes in protected locations. Found %s. Took: %f", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  if (a1)
  {
    swift_unknownObjectRetain();
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315650;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, aBlock);
      v56 = a3;
      *(v21 + 12) = 2080;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2080;
      v26 = v18;
      v27 = [v26 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);
      a3 = v56;

      *(v21 + 24) = v31;
      _os_log_impl(&dword_2493AC000, v19, v20, "%s node %s requires authentication! Auth before running action: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);
    }

    v32 = [objc_opt_self() sharedManager];
    v33 = swift_allocObject();
    v33[2] = v18;
    v33[3] = a3;
    v33[4] = a4;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCActionManager.perform(_:on:actionContext:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_395_0;
    v34 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v35 = v18;

    v36 = a4;

    [v32 authenticateLocationWithNoUI:a1 completion:v34];
    _Block_release(v34);

    swift_unknownObjectRelease_n();
  }

  else
  {
    v37 = a2;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, aBlock);
      *(v40 + 12) = 2080;
      v42 = v37;
      v43 = a3;
      v44 = [v42 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      a3 = v43;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, aBlock);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_2493AC000, v38, v39, "%s no nodes are protected. Skip auth and running action: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v41, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }

    if ([v37 requiresResolvedItems])
    {
      v49 = swift_allocObject();
      *(v49 + 16) = v37;
      *(v49 + 24) = a4;
      v50 = v37;
      v51 = a4;
      specialized static DOCActionManager.resolve(_:completionBlock:)(a3, closure #1 in continueRunningAction #1 () in DOCActionManager.perform(_:on:actionContext:)partial apply, v49);
    }

    else
    {
      v52 = [v37 unresolvedHandler];
      if (v52)
      {
        v53 = v52;
        v54 = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        isa = Array._bridgeToObjectiveC()().super.isa;
        (v53)[2](v53, isa, v54);

        _Block_release(v53);
      }
    }
  }
}

void closure #1 in closure #1 in DOCActionManager.perform(_:on:actionContext:)(char a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.UI);
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      osloga = a4;
      v13 = swift_slowAlloc();
      v46 = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, &v46);
      *(v12 + 12) = 2080;
      v14 = v9;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v46);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v10, v11, "%s auth success! Running action: %s", v12, 0x16u);
      swift_arrayDestroy();
      v20 = v13;
      a4 = osloga;
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    if ([v9 requiresResolvedItems])
    {
      v21 = swift_allocObject();
      *(v21 + 16) = v9;
      *(v21 + 24) = a5;
      v22 = v9;
      v23 = a5;
      specialized static DOCActionManager.resolve(_:completionBlock:)(a4, closure #1 in continueRunningAction #1 () in DOCActionManager.perform(_:on:actionContext:)partial apply, v21);

      return;
    }

    v41 = [v9 unresolvedHandler];
    if (!v41)
    {
      return;
    }

    v42 = v41;
    oslog = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v42)[2](v42, isa, oslog);

    _Block_release(v42);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    v26 = a3;
    v27 = a2;
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315650;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, &v46);
      *(v29 + 12) = 2080;
      v31 = v26;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v46);

      *(v29 + 14) = v36;
      *(v29 + 22) = 2080;
      v37 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v38 = String.init<A>(describing:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v46);

      *(v29 + 24) = v40;
      _os_log_impl(&dword_2493AC000, oslog, v28, "%s auth before running action failed! Not running action: %s error: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);

      return;
    }
  }
}

void closure #1 in static DOCActionManager.resolve(_:completionBlock:)(void *a1, int a2, uint64_t a3, dispatch_group_t group, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = a1;
    MEMORY[0x24C1FB090]();
    if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v9 = swift_allocObject();
    *(v9 + 16) = group;
    v17[4] = partial apply for closure #4 in DOCItemCollectionViewController.notifyContentDidLoad();
    v17[5] = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v17[3] = &block_descriptor_290_2;
    v10 = _Block_copy(v17);
    v11 = group;

    [v8 prepareForMode:1 usingBookmark:0 completionBlock:v10];
    _Block_release(v10);
  }

  else
  {
    dispatch_group_leave(group);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249B9FA70;
    *(v13 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v14;
    *(v13 + 32) = 0xD00000000000001BLL;
    *(v13 + 40) = 0x8000000249BFFBC0;
    if (a3)
    {
      v15 = _convertErrorToNSError(_:)();
      v16 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
      v14 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    }

    else
    {
      *(v13 + 80) = 0xEB0000000029726FLL;
      v15 = 0x727265206C696E28;
      v16 = MEMORY[0x277D837D0];
    }

    *(v13 + 96) = v16;
    *(v13 + 104) = v14;
    *(v13 + 72) = v15;
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t @objc static DOCActionManager.canCreateNewFolder(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  ObjectType = swift_getObjectType();
  v7 = swift_unknownObjectRetain();
  LOBYTE(a4) = a4(v7, ObjCClassMetadata, ObjectType);
  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t static DOCActionManager.canMove(_:to:)(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = specialized static DOCActionManager.canPerform(_:on:)(*a3, a1);
  v5 = (a2 == 0) & v4;
  if (a2 && (v4 & 1) != 0)
  {
    v6 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = a2;
    swift_unknownObjectRetain();
    v5 = specialized static DOCActionManager.canPerform(_:on:)(v6, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  return v5 & 1;
}

uint64_t @objc static DOCActionManager.canMove(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *a5;
  swift_unknownObjectRetain();
  v9 = specialized static DOCActionManager.canPerform(_:on:)(v8, v7);

  if (a4)
  {
    if (v9)
    {
      v10 = *MEMORY[0x277CC6028];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = a4;
      swift_unknownObjectRetain();
      v9 = specialized static DOCActionManager.canPerform(_:on:)(v10, inited);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:)(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, int a6)
{
  v68 = a5;
  v69 = a2;
  v70 = a1;
  v9 = type metadata accessor for DispatchTimeInterval();
  isa = v9[-1].isa;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v58 - v21;
  v23 = swift_allocObject();
  v71 = a4;
  v72 = v23;
  *(v23 + 16) = 0;
  v67 = a6;
  v65 = isa;
  v66 = v9;
  v63 = v15;
  v64 = v14;
  v59 = (v23 + 16);
  v60 = v13;
  v61 = v18;
  v62 = v22;
  if ((a6 & 1) == 0)
  {

    v28 = a3;
    v29 = a3;
    a3 = v70;
    goto LABEL_27;
  }

  v24 = a3 >> 62;
  v58 = a3 >> 62;
  if (a3 >> 62)
  {
    while (1)
    {
      v30 = (a3 & 0x8000000000000000) != 0 ? a3 : a3 & 0xFFFFFFFFFFFFFF8;
      v56 = __CocoaSet.count.getter();
      if (__CocoaSet.count.getter() < 0)
      {
        break;
      }

      v25 = a3;
      if (v56 >= 5)
      {
        v57 = 5;
      }

      else
      {
        v57 = v56;
      }

      if (v56 >= 0)
      {
        v27 = v57;
      }

      else
      {
        v27 = 5;
      }

      result = __CocoaSet.count.getter();
      if (result < v27)
      {
        goto LABEL_47;
      }

LABEL_7:
      if ((v25 & 0xC000000000000001) != 0 && v27)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider);

        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v27 != 1)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v27 != 2)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
            if (v27 != 3)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(3);
              if (v27 != 4)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(4);
                if (v27 != 5)
                {
                  _ArrayBuffer._typeCheckSlowPath(_:)(5);
                  _ArrayBuffer._typeCheckSlowPath(_:)(6);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      if (v58)
      {

        v14 = v25;
        v9 = _CocoaArrayWrapper.subscript.getter();
        v30 = v32;
        v24 = v33;
        if ((v33 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v30 = 0;
        v14 = v25;
        v9 = (v25 & 0xFFFFFFFFFFFFFF8);
        v31 = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
        v24 = (2 * v27) | 1;
      }

      a3 = v31;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {
        swift_unknownObjectRelease();
        v35 = MEMORY[0x277D84F90];
      }

      v36 = *(v35 + 16);

      if (__OFSUB__(v24 >> 1, v30))
      {
        goto LABEL_38;
      }

      if (v36 != (v24 >> 1) - v30)
      {
        goto LABEL_39;
      }

      v28 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a3 = v70;
      v29 = v14;
      if (!v28)
      {
        swift_unknownObjectRelease();
        v28 = MEMORY[0x277D84F90];
      }

LABEL_27:
      v37 = dispatch_semaphore_create(0);
      v70 = objc_opt_self();
      v38 = swift_allocObject();
      v14 = v68;
      v39 = v69;
      *(v38 + 16) = v28;
      *(v38 + 24) = v14;
      *(v38 + 32) = v39;
      *(v38 + 40) = a3;
      *(v38 + 48) = v67 & 1;
      v40 = v72;
      *(v38 + 56) = 5;
      *(v38 + 64) = v40;
      *(v38 + 72) = v29;
      *(v38 + 80) = v37;
      v24 = swift_allocObject();
      *(v24 + 16) = partial apply for closure #1 in DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:);
      *(v24 + 24) = v38;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_54_0;
      v41 = _Block_copy(aBlock);
      v42 = v14;
      v43 = v39;
      v44 = a3;

      v9 = v37;

      [v70 _performAsDataOwner_block_];
      _Block_release(v41);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v46 = v61;
        static DispatchTime.now()();
        v47 = v60;
        *v60 = 5;
        v49 = v65;
        v48 = v66;
        (*(v65 + 13))(v47, *MEMORY[0x277D85188], v66);
        v50 = v62;
        MEMORY[0x24C1FAA90](v46, v47);
        (*(v49 + 1))(v47, v48);
        v51 = *(v63 + 8);
        v52 = v46;
        v53 = v64;
        v51(v52, v64);
        MEMORY[0x24C1FBB60](v50);
        v51(v50, v53);
        LOBYTE(v48) = static DispatchTimeoutResult.== infix(_:_:)();

        if (v48)
        {
          v54 = 0;
        }

        else
        {
          v55 = v59;
          swift_beginAccess();
          v54 = *v55;
        }

        return v54;
      }

      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease();
    v31 = a3;
LABEL_20:
    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v31, v30, v24);
    v28 = v34;
    swift_unknownObjectRelease();
    a3 = v70;
    v29 = v14;
    goto LABEL_27;
  }

  v25 = a3;
  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v27 = 5;
  }

  else
  {
    v27 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v27)
  {
    goto LABEL_7;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t closure #1 in DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(void *a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  v3 = [v2 itemProviders];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
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
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      NSItemProvider.typeToRequest.getter();
      if (v10)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v11 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  *a1 = v11;
}

void closure #2 in DOCActionManager.externalItemUTIs(in:with:)(uint64_t a1, uint64_t a2, char **a3)
{
  v163 = a3;
  v180 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v171 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v154 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v182 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v199 = &v154 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v157 = &v154 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v178 = &v154 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v198 = &v154 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v155 = &v154 - v29;
  v30 = type metadata accessor for DOCDragPasteboardType();
  v170 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, a1);
  v191 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v195 = &v154 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v194 = &v154 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v205 = &v154 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v154 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v169 = &v154 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v203 = &v154 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v186 = &v154 - v53;
  MEMORY[0x28223BE20](v54, v55);
  v193 = &v154 - v56;
  MEMORY[0x28223BE20](v57, v58);
  v192 = &v154 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v204 = &v154 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v66 = &v154 - v65;
  MEMORY[0x28223BE20](v67, v68);
  v161 = &v154 - v69;
  MEMORY[0x28223BE20](v70, v71);
  v200 = &v154 - v73;
  v168 = v72;
  if (v72 >> 62)
  {
    goto LABEL_151;
  }

  v74 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v201 = v11;
  while (v74)
  {
    v176 = 0;
    v167 = v72 & 0xC000000000000001;
    v166 = 0x8000000249BFFAE0;
    v159 = v72 & 0xFFFFFFFFFFFFFF8;
    v158 = v72 + 32;
    v160 = (v12 + 48);
    v11 = v12 + 32;
    v196 = (v12 + 8);
    v12 = 0;
    v165 = 0xD00000000000001DLL;
    v185 = "ntManager.FINode.File";
    v184 = "com.apple.icloud.applecorporate";
    v189 = "ntManager.FPItem.File";
    v190 = "ntManager.FINode.Location";
    v188 = "ntManager.FPItem.Location";
    v162 = xmmword_249BA08D0;
    v156 = v10;
    v164 = v74;
    v202 = v44;
    v187 = v66;
    v197 = v11;
    while (1)
    {
      if (v167)
      {
        v75 = MEMORY[0x24C1FC540](v12);
        v76 = v201;
        v10 = MEMORY[0x277D837D0];
      }

      else
      {
        v76 = v201;
        v10 = MEMORY[0x277D837D0];
        if (v12 >= *(v159 + 16))
        {
          goto LABEL_150;
        }

        v75 = *(v158 + 8 * v12);
      }

      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v174 = v12;
      v78 = v75;
      v79 = [v75 registeredTypeIdentifiers];
      v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v206[0] = v165;
      v206[1] = v166;
      MEMORY[0x28223BE20](v80, v81);
      *(&v154 - 2) = v206;
      v10 = v176;
      LOBYTE(v79) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v154 - 4), v66);
      v176 = v10;

      v11 = MEMORY[0x277D837D0];
      v179 = v78;
      if ((v79 & 1) == 0)
      {
        v12 = [v78 registeredTypeIdentifiers];
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v172 = *(v10 + 16);
        if (v172)
        {
          v82 = 0;
          v173 = v10 + 32;
          v175 = v10;
          while (1)
          {
            if (v82 >= *(v10 + 16))
            {
              goto LABEL_149;
            }

            v177 = v82;
            v83 = (v173 + 16 * v82);
            v84 = *v83;
            v85 = v83[1];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd);
            v86 = *(v170 + 72);
            v87 = (*(v170 + 80) + 32) & ~*(v170 + 80);
            v88 = swift_allocObject();
            *(v88 + 16) = v162;
            v183 = v88;
            v89 = v88 + v87;
            *(v88 + v87) = 0;
            swift_storeEnumTagMultiPayload();
            *(v89 + v86) = 1;
            swift_storeEnumTagMultiPayload();
            *(v89 + 2 * v86) = 0;
            swift_storeEnumTagMultiPayload();
            *(v89 + 3 * v86) = 1;
            swift_storeEnumTagMultiPayload();

            v90._countAndFlagsBits = v84;
            v90._object = v85;
            v91 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of closure #2 in DOCActionManager.externalItemUTIs(in:with:), v90);
            v181 = v85;
            if (v91 == 1)
            {
              break;
            }

            v92 = 0;
            v66 = v187;
            if (!v91)
            {
              goto LABEL_21;
            }

            v93._countAndFlagsBits = v84;
            v93._object = v85;
            v94 = _findStringSwitchCase(cases:string:)(&outlined read-only object #1 of closure #2 in DOCActionManager.externalItemUTIs(in:with:), v93);
            if (v94 <= 2)
            {
              v95 = v161;
              *v161 = v94;
              goto LABEL_22;
            }

            v66 = v156;
            UTType.init(_:)();
            if ((*v160)(v66, 1, v76) != 1)
            {
              v117 = *v197;
              v118 = v155;
              (*v197)(v155, v66, v76);
              v119 = v161;
              v117(v161, v118, v76);
              v95 = v119;
              v66 = v187;
              goto LABEL_22;
            }

            v12 = v183;
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            outlined destroy of CharacterSet?(v66, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
LABEL_71:
            v82 = v177 + 1;
            v11 = MEMORY[0x277D837D0];
            v10 = v175;
            if ((v177 + 1) == v172)
            {
              goto LABEL_76;
            }
          }

          v92 = 1;
          v66 = v187;
LABEL_21:
          v95 = v161;
          *v161 = v92;
LABEL_22:
          swift_storeEnumTagMultiPayload();
          outlined init with take of DOCDragPasteboardType(v95, v200);
          v11 = 4;
          while (2)
          {
            outlined init with copy of DOCDragPasteboardType(v89, v66);
            outlined init with copy of DOCDragPasteboardType(v200, v204);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              v97 = v201;
              if (EnumCaseMultiPayload == 1)
              {
                v98 = v66;
                v99 = *v204;
                v12 = v193;
                outlined init with copy of DOCDragPasteboardType(v98, v193);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  if (v99 == 1)
                  {
                    v100 = v189;
                  }

                  else
                  {
                    v100 = v188;
                  }

                  if (v99)
                  {
                    v101 = 0xD000000000000029;
                  }

                  else
                  {
                    v101 = 0xD000000000000025;
                  }

                  if (!v99)
                  {
                    v100 = v190;
                  }

                  v12 = v100 | 0x8000000000000000;
                  if (*v193 == 1)
                  {
                    v102 = v189;
                  }

                  else
                  {
                    v102 = v188;
                  }

                  if (*v193)
                  {
                    v103 = 0xD000000000000029;
                  }

                  else
                  {
                    v103 = 0xD000000000000025;
                  }

                  if (*v193)
                  {
                    v104 = v102;
                  }

                  else
                  {
                    v104 = v190;
                  }

                  v44 = v202;
                  v66 = v104 | 0x8000000000000000;
                  if (v101 == v103 && v12 == v66)
                  {
                    goto LABEL_145;
                  }

                  v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v66 = v187;
                  outlined destroy of DOCDragPasteboardType(v187);
                  if (v105)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_25;
                }
              }

              else
              {
                v112 = *v197;
                (*v197)(v198, v204, v201);
                v113 = v66;
                v98 = v66;
                v114 = v186;
                outlined init with copy of DOCDragPasteboardType(v113, v186);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  v115 = v178;
                  v112(v178, v114, v97);
                  v12 = UTType.conforms(to:)();
                  v116 = *v196;
                  (*v196)(v115, v97);
                  v116(v198, v97);
                  outlined destroy of DOCDragPasteboardType(v98);
                  v66 = v98;
                  v44 = v202;
                  if (v12)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_25;
                }

                (*v196)(v198, v97);
                v12 = v114;
              }
            }

            else
            {
              v98 = v66;
              v106 = *v204;
              v12 = v192;
              outlined init with copy of DOCDragPasteboardType(v98, v192);
              if (!swift_getEnumCaseMultiPayload())
              {
                if (v106)
                {
                  v107 = 0xD000000000000029;
                }

                else
                {
                  v107 = 0xD000000000000025;
                }

                if (v106)
                {
                  v108 = v185;
                }

                else
                {
                  v108 = v184;
                }

                v12 = v108 | 0x8000000000000000;
                if (*v192)
                {
                  v109 = 0xD000000000000029;
                }

                else
                {
                  v109 = 0xD000000000000025;
                }

                if (*v192)
                {
                  v110 = v185;
                }

                else
                {
                  v110 = v184;
                }

                v66 = v110 | 0x8000000000000000;
                if (v107 == v109 && v12 == v66)
                {
                  v44 = v202;
LABEL_145:

                  outlined destroy of DOCDragPasteboardType(v187);
LABEL_146:

                  outlined destroy of DOCDragPasteboardType(v200);

LABEL_5:

                  goto LABEL_6;
                }

                v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v66 = v187;
                outlined destroy of DOCDragPasteboardType(v187);
                v44 = v202;
                if (v111)
                {
                  goto LABEL_146;
                }

LABEL_25:
                v89 += v86;
                if (!--v11)
                {

                  outlined destroy of DOCDragPasteboardType(v200);
                  v76 = v201;
                  goto LABEL_71;
                }

                continue;
              }
            }

            break;
          }

          outlined destroy of DOCDragPasteboardType(v98);
          outlined destroy of DOCDragPasteboardType(v12);
          v66 = v98;
          v44 = v202;
          goto LABEL_25;
        }

LABEL_76:

        v78 = v179;
      }

      v120 = [v78 registeredTypeIdentifiers];
      v121 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v171;
      v172 = *(v121 + 16);
      if (!v172)
      {
LABEL_4:

        goto LABEL_5;
      }

      v122 = 0;
      v177 = v121 + 32;
      v173 = v121;
      while (1)
      {
        if (v122 >= *(v121 + 16))
        {
          __break(1u);
          goto LABEL_148;
        }

        v123 = v11;
        v124 = (v177 + 16 * v122);
        v125 = *v124;
        v10 = v124[1];

        v126._countAndFlagsBits = v125;
        v126._object = v10;
        v127 = _findStringSwitchCase(cases:string:)(&outlined read-only object #2 of closure #2 in DOCActionManager.externalItemUTIs(in:with:), v126);
        v183 = v10;
        v175 = v125;
        v181 = v122;
        if (v127 == 1)
        {
          v128 = 1;
          goto LABEL_84;
        }

        if (!v127)
        {
          v128 = 0;
LABEL_84:
          v10 = v169;
          *v169 = v128;
          goto LABEL_85;
        }

        v141._countAndFlagsBits = v125;
        v141._object = v10;
        v142 = _findStringSwitchCase(cases:string:)(&outlined read-only object #3 of closure #2 in DOCActionManager.externalItemUTIs(in:with:), v141);
        if (v142 > 2)
        {

          UTType.init(_:)();
          if ((*v160)(v12, 1, v76) == 1)
          {

            outlined destroy of CharacterSet?(v12, &_s22UniformTypeIdentifiers6UTTypeVSgMd);
            v11 = v123;
            goto LABEL_131;
          }

          v143 = v12;
          v144 = *v197;
          v66 = v157;
          (*v197)(v157, v143, v76);
          v10 = v169;
          v144(v169, v66, v76);
        }

        else
        {
          v10 = v169;
          *v169 = v142;
        }

LABEL_85:
        swift_storeEnumTagMultiPayload();
        outlined init with take of DOCDragPasteboardType(v10, v203);
        v129 = *(v180 + 16);
        if (v129)
        {
          break;
        }

LABEL_130:
        outlined destroy of DOCDragPasteboardType(v203);

        v12 = v171;
        v11 = MEMORY[0x277D837D0];
        v121 = v173;
        v122 = v181;
LABEL_131:
        if (++v122 == v172)
        {
          goto LABEL_4;
        }
      }

      v130 = v180 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v11 = *(v170 + 72);
      while (1)
      {
        outlined init with copy of DOCDragPasteboardType(v130, v44);
        outlined init with copy of DOCDragPasteboardType(v203, v205);
        v131 = swift_getEnumCaseMultiPayload();
        if (!v131)
        {
          break;
        }

        if (v131 == 1)
        {
          v10 = *v205;
          v66 = v195;
          outlined init with copy of DOCDragPasteboardType(v44, v195);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_88;
          }

          if (v10 == 1)
          {
            v132 = v189;
          }

          else
          {
            v132 = v188;
          }

          if (v10)
          {
            v133 = 0xD000000000000029;
          }

          else
          {
            v133 = 0xD000000000000025;
          }

          if (!v10)
          {
            v132 = v190;
          }

          v66 = v132 | 0x8000000000000000;
          if (*v195 == 1)
          {
            v134 = v189;
          }

          else
          {
            v134 = v188;
          }

          if (*v195)
          {
            v135 = 0xD000000000000029;
          }

          else
          {
            v135 = 0xD000000000000025;
          }

          if (*v195)
          {
            v136 = v134;
          }

          else
          {
            v136 = v190;
          }

          goto LABEL_123;
        }

        v138 = *v197;
        (*v197)(v199, v205, v76);
        v10 = v191;
        outlined init with copy of DOCDragPasteboardType(v44, v191);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*v196)(v199, v76);
          v66 = v10;
LABEL_88:
          outlined destroy of DOCDragPasteboardType(v44);
          outlined destroy of DOCDragPasteboardType(v66);
          goto LABEL_89;
        }

        v139 = v199;
        v140 = v182;
        v138(v182, v10, v76);
        v66 = UTType.conforms(to:)();
        v10 = *v196;
        (*v196)(v140, v76);
        v44 = v202;
        (v10)(v139, v76);
        outlined destroy of DOCDragPasteboardType(v44);
        if (v66)
        {
          goto LABEL_139;
        }

LABEL_89:
        v130 += v11;
        if (!--v129)
        {
          goto LABEL_130;
        }
      }

      v10 = *v205;
      v66 = v194;
      outlined init with copy of DOCDragPasteboardType(v44, v194);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_88;
      }

      if (v10)
      {
        v133 = 0xD000000000000029;
      }

      else
      {
        v133 = 0xD000000000000025;
      }

      if (v10)
      {
        v137 = v185;
      }

      else
      {
        v137 = v184;
      }

      v66 = v137 | 0x8000000000000000;
      if (*v194)
      {
        v135 = 0xD000000000000029;
      }

      else
      {
        v135 = 0xD000000000000025;
      }

      if (*v194)
      {
        v136 = v185;
      }

      else
      {
        v136 = v184;
      }

LABEL_123:
      if (v133 != v135 || v66 != (v136 | 0x8000000000000000))
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of DOCDragPasteboardType(v44);
        v76 = v201;
        if (v10)
        {
          goto LABEL_139;
        }

        goto LABEL_89;
      }

      outlined destroy of DOCDragPasteboardType(v44);
LABEL_139:
      outlined destroy of DOCDragPasteboardType(v203);

      v145 = v163;
      v146 = *v163;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v145 = v146;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
        *v163 = v146;
      }

      v149 = *(v146 + 2);
      v148 = *(v146 + 3);
      v66 = v149 + 1;
      if (v149 >= v148 >> 1)
      {
        v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v149 + 1, 1, v146);
        *v163 = v153;
      }

      v150 = *v163;
      *(v150 + 2) = v66;
      v151 = &v150[16 * v149];
      v152 = v183;
      *(v151 + 4) = v175;
      *(v151 + 5) = v152;
LABEL_6:
      v12 = v174;
      if (v174 == v164)
      {
        return;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v74 = __CocoaSet.count.getter();
    v72 = v168;
    v201 = v11;
  }
}

uint64_t closure #1 in DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:)(unint64_t a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  *(v17 + 64) = a9;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in closure #1 in DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:);
  *(v18 + 24) = v17;
  v19 = a3;
  v20 = a4;

  v21 = a9;

  _sSo14NSItemProviderC26DocumentManagerExecutablesE30nodesFromItemProvidersWithInfo_12itemContexts15alertPresenting04loadG4URLs17completionHandlerySayABG_SayxGSo16UIViewControllerCSgSbySayx0L7Context_So7DOCNode_p4nodetGctlFZAB_Tt4g5(a1, a1, a2, 1, partial apply for closure #1 in static NSItemProvider.nodesFromItemProviders(_:alertPresenting:loadFromURLs:completionHandler:), v18);
}

Swift::Int closure #1 in closure #1 in DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v51 = MEMORY[0x277D84F90];
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_36:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v10 != v11)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v11, a1);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_35;
      }

      swift_unknownObjectRetain();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    swift_getObjectType();
    v14 = DOCNode.fpfs_syncFetchFPItem()();
    v15 = swift_unknownObjectRelease();
    ++v11;
    if (v14)
    {
      MEMORY[0x24C1FB090](v15);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = v51;
      v11 = v13;
    }
  }

  v16 = [objc_opt_self() defaultManager];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = [v16 eligibleActionsForDroppingItems:isa underItem:a2];

  type metadata accessor for FPAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_22;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_23:
    v30 = 1;
    goto LABEL_24;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    goto LABEL_22;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_23;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
LABEL_22:

    goto LABEL_23;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v30 = v41 & 1;
LABEL_24:
  v31 = v12 >> 62;
  if (v12 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_26;
    }

LABEL_38:
    v35 = 1;
    goto LABEL_39;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_26:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x24C1FC540](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_57;
    }

    v32 = *(v12 + 32);
  }

  v33 = v32;
  v34 = [objc_opt_self() defaultPermission];
  v35 = [v34 canNode:v33 performAction:v30 node:a2];

LABEL_39:
  v42 = specialized Set.contains(_:)(a3, v19);

  if (v42 & 1) != 0 && (v35)
  {
    if ((a4 & 1) == 0 || (v31 ? (v43 = __CocoaSet.count.getter()) : (v43 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10)), v43 != a5))
    {
      if (v31)
      {
        v44 = __CocoaSet.count.getter();
      }

      else
      {
        v44 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_53;
    }

    if (!(a7 >> 62))
    {
      v44 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
      swift_beginAccess();
      *(a6 + 16) = v44;
      return OS_dispatch_semaphore.signal()();
    }

LABEL_57:
    v44 = __CocoaSet.count.getter();
    goto LABEL_53;
  }

  return OS_dispatch_semaphore.signal()();
}

id DOCColumnInfoViewController.actionContext(from:)()
{
  v1 = [v0 effectiveAppearance];
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = type metadata accessor for DOCActionContext();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v6[OBJC_IVAR___DOCActionContext_appearance] = v1;
  *&v6[OBJC_IVAR___DOCActionContext_configuration] = v2;
  *&v6[OBJC_IVAR___DOCActionContext_presentingViewController] = v0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v6[OBJC_IVAR___DOCActionContext_actionReporting] = v3;
  *&v6[OBJC_IVAR___DOCActionContext_userInfo] = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = v2;
  v8 = v0;
  return objc_msgSendSuper2(&v10, sel_init);
}

id DOCColumnInfoViewController.createActionContext(for:)()
{
  v1 = [v0 actionContextFrom_];

  return v1;
}

id protocol witness for DOCActionManagerDelegate.createActionContext(for:) in conformance DOCColumnInfoViewController()
{
  v1 = [v0 actionContextFrom_];

  return v1;
}

size_t DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v36 = a4;
  v42 = type metadata accessor for URL();
  v10 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v41 = static DOCLog.UI;
  v40 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA08C0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v39 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22FPSandboxingURLWrapperCGMd);
  *(v14 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [FPSandboxingURLWrapper] and conformance [A], &_sSaySo22FPSandboxingURLWrapperCGMd);
  *(v14 + 72) = a3;

  v15 = [v6 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v6;
  v17 = [v6 associatedActionManagers];
  type metadata accessor for DOCActionManager(v17);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = specialized Sequence.flatMap<A>(_:)(v18);

  v43 = v16;
  specialized Array.append<A>(contentsOf:)(v19);
  v20 = v43;
  *(v14 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23UIDocumentBrowserActionCGMd);
  *(v14 + 144) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [UIDocumentBrowserAction] and conformance [A], &_sSaySo23UIDocumentBrowserActionCGMd);
  *(v14 + 112) = v20;
  os_log(_:dso:log:type:_:)();

  if (a3 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    goto LABEL_15;
  }

  v43 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v41 = a2;
    v24 = 0;
    v22 = v43;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C1FC540](v24, a3);
      }

      else
      {
        v25 = *(a3 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = [v25 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
        v22 = v43;
      }

      ++v24;
      *(v22 + 16) = v29 + 1;
      (*(v10 + 32))(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v13, v42);
    }

    while (v21 != v24);
    a2 = v41;
LABEL_15:
    v30 = v39;
    v31 = swift_allocObject();
    v32 = v36;
    v33 = v37;
    v31[2] = v37;
    v31[3] = v32;
    v31[4] = v38;
    v31[5] = v30;
    v31[6] = a2;

    v34 = v33;

    fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(v22, partial apply for closure #2 in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:), v31, v30, a2);
  }

  __break(1u);
  return result;
}

uint64_t fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = a4;
  v98 = a5;
  v76 = a3;
  v73 = a2;
  v80 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v6);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v103 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v96 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v95 = &v69 - v13;
  v104 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v70 = &v69 - v17;
  v107 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v107, v18);
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D84F90];
  v101 = v27;
  *(v27 + 16) = MEMORY[0x277D84F90];
  v29 = *(a1 + 16);
  v105 = a1;
  v106 = v29;
  specialized Array.reserveCapacity(_:)(v29);
  v94 = objc_opt_self();
  v72 = [v94 defaultManager];
  v100 = dispatch_group_create();
  v30 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v23 + 104))(v26, *MEMORY[0x277D85268], v22);
  v31 = v8;
  static DispatchQoS.unspecified.getter();
  aBlock = v28;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v74 = v21;
  v71 = v30;
  v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = v70;
  v99 = v32;
  v34 = v106;
  if (v106)
  {
    v93 = *(v103 + 16);
    v35 = *(v103 + 80);
    v36 = v105 + ((v35 + 32) & ~v35);
    v92 = *(v103 + 72);
    v91 = (v35 + 16) & ~v35;
    v90 = (v104 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v103 + 32);
    v105 = v35;
    v84 = (v35 + 17) & ~v35;
    v83 = (v104 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = &v112;
    v103 += 16;
    v81 = (v103 - 8);
    v108 = v8;
    v37 = v93;
    do
    {
      v106 = v34;
      v107 = v36;
      v37(v33, v36, v31);
      v38 = v100;
      dispatch_group_enter(v100);
      v39 = v95;
      v37(v95, v33, v31);
      v40 = v86;
      v41 = swift_allocObject();
      v104 = *v85;
      v104(v41 + v91, v39, v31);
      v42 = (v41 + v90);
      v43 = v98;
      *v42 = v97;
      v42[1] = v43;
      v44 = v99;
      *(v41 + v89) = v99;
      v45 = v101;
      *(v41 + v88) = v102;
      *(v41 + v87) = v38;
      *(v41 + v40) = v45;

      v46 = v44;

      v47 = v38;

      v48 = URL.startAccessingSecurityScopedResource()();
      v49 = [v94 defaultManager];
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      v53 = v96;
      v37(v96, v33, v108);
      v54 = v83;
      v55 = swift_allocObject();
      *(v55 + 16) = v48;
      v104(v55 + v84, v53, v108);
      v56 = (v55 + v54);
      *v56 = partial apply for closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:);
      v56[1] = v41;
      v114 = partial apply for closure #1 in FPItemManager.doc_fetchItem(for:completionHandler:);
      v115 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v111 = 1107296256;
      v112 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v113 = &block_descriptor_225;
      v57 = _Block_copy(&aBlock);

      [v49 fetchItemForURL:v52 completionHandler:v57];
      v58 = v57;
      v31 = v108;
      _Block_release(v58);

      (*v81)(v33, v31);
      v36 = v107 + v92;
      v34 = v106 - 1;
    }

    while (v106 != 1);
  }

  v59 = static OS_dispatch_queue.main.getter();
  v60 = swift_allocObject();
  v61 = v76;
  v60[2] = v73;
  v60[3] = v61;
  v62 = v101;
  v60[4] = v102;
  v60[5] = v62;
  v114 = partial apply for closure #2 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:);
  v115 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v113 = &block_descriptor_231;
  v63 = _Block_copy(&aBlock);

  v64 = v74;
  static DispatchQoS.unspecified.getter();
  v109 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v65 = v78;
  v66 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v67 = v100;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v63);

  (*(v79 + 8))(v65, v66);
  (*(v75 + 8))(v64, v77);
}

void closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t isEscapingClosureAtFileLocation, uint64_t a7, NSObject *a8, uint64_t a9)
{
  if (a1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a9 + 16;
    *(v12 + 24) = a1;
    v13 = swift_allocObject();
    v13[2] = partial apply for closure #2 in closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:);
    v13[3] = v12;
    v36 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v37 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_251;
    v14 = _Block_copy(&aBlock);
    v15 = a1;

    dispatch_sync(isEscapingClosureAtFileLocation, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      dispatch_group_leave(a8);

      return;
    }

    __break(1u);
  }

  else
  {
    v15 = a5;
    v14 = a4;
    v13 = a2;
    group = a8;
    v30 = a7;
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA08D0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 64) = v17;
  *(v16 + 32) = 0xD000000000000023;
  *(v16 + 40) = 0x8000000249BFF950;
  URL._bridgeToObjectiveC()(0xD000000000000023);
  v19 = v18;
  *(v16 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
  *(v16 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
  *(v16 + 72) = v19;
  if (v13)
  {
    v20 = _convertErrorToNSError(_:)();
    v21 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    v22 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
  }

  else
  {
    *(v16 + 120) = 0xEB0000000029726FLL;
    v20 = 0x727265206C696E28;
    v21 = MEMORY[0x277D837D0];
    v22 = v17;
  }

  *(v16 + 136) = v21;
  *(v16 + 144) = v22;
  *(v16 + 112) = v20;
  *(v16 + 176) = MEMORY[0x277D837D0];
  *(v16 + 184) = v17;
  *(v16 + 152) = v14;
  *(v16 + 160) = v15;

  os_log(_:dso:log:type:_:)();

  if (!v13)
  {
    goto LABEL_11;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v30 + 16;
  *(v23 + 24) = v13;
  v24 = swift_allocObject();
  v25 = partial apply for closure #1 in closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:);
  *(v24 + 16) = partial apply for closure #1 in closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:);
  *(v24 + 24) = v23;
  v36 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v37 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_241_1;
  v26 = _Block_copy(&aBlock);
  v27 = v13;
  v28 = v13;

  dispatch_sync(isEscapingClosureAtFileLocation, v26);

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  v29 = group;
  if (v26)
  {
    __break(1u);
LABEL_11:
    v25 = 0;
    v29 = group;
  }

  dispatch_group_leave(v29);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25);
}

id closure #1 in closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(void **a1, void *a2)
{
  swift_beginAccess();
  v4 = *a1;
  *a1 = a2;

  return a2;
}

uint64_t closure #2 in closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x24C1FB090]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t closure #2 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(void (*a1)(uint64_t, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = 0;
  v8 = *(a3 + 16);
  if (!v8)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
  }

  v9 = v8;
  a1(v7, v8);
}

void runAction #1 (_:on:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(void))
{
  v6 = a4;
  v8 = &a4[OBJC_IVAR___DOCActionManager_actionManagerDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 8))(v6, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = a3;
    v12 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
    v13 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
    v14 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v16 = type metadata accessor for DOCActionContext();
    v17 = objc_allocWithZone(v16);
    swift_unknownObjectWeakInit();
    *&v17[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v17[OBJC_IVAR___DOCActionContext_appearance] = v12;
    *&v17[OBJC_IVAR___DOCActionContext_configuration] = v13;
    *&v17[OBJC_IVAR___DOCActionContext_presentingViewController] = v14;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v17[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v17[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v17[OBJC_IVAR___DOCActionContext_userInfo] = v15;
    v50.receiver = v17;
    v50.super_class = v16;
    v11 = objc_msgSendSuper2(&v50, sel_init);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9FA70;
    v19 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = 0xD000000000000010;
    *(v18 + 40) = 0x8000000249BFFA20;
    *(v18 + 96) = v19;
    *(v18 + 104) = v20;
    *(v18 + 64) = v20;
    *(v18 + 72) = a1;
    *(v18 + 80) = a2;

    os_log(_:dso:log:type:_:)();

    a3 = v45;
  }

  if (!swift_unknownObjectWeakLoadStrong() || (v21 = *(v8 + 1), v22 = swift_getObjectType(), v23 = (*(v21 + 16))(v6, v22, v21), swift_unknownObjectRelease(), !v23))
  {
    if (a3 >> 62)
    {
      goto LABEL_37;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      while (1)
      {
        v26 = *(v11 + OBJC_IVAR___DOCActionContext_configuration);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v28 = [v6 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = a5;
        v44 = v11;
        v46 = a3;
        if (v29 >> 62)
        {
          v30 = __CocoaSet.count.getter();
          if (!v30)
          {
LABEL_42:

            a5 = v47;
            v11 = v44;
LABEL_43:
            if (one-time initialization token for UI == -1)
            {
LABEL_44:
              static os_log_type_t.error.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_249B9FA70;
              v41 = MEMORY[0x277D837D0];
              *(v40 + 56) = MEMORY[0x277D837D0];
              v42 = lazy protocol witness table accessor for type String and conformance String();
              *(v40 + 32) = 0xD000000000000010;
              *(v40 + 40) = 0x8000000249BFFA20;
              *(v40 + 96) = v41;
              *(v40 + 104) = v42;
              *(v40 + 64) = v42;
              *(v40 + 72) = a1;
              *(v40 + 80) = a2;

              os_log(_:dso:log:type:_:)();

              a5(0);
              goto LABEL_45;
            }

LABEL_46:
            swift_once();
            goto LABEL_44;
          }
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v30)
          {
            goto LABEL_42;
          }
        }

        v11 = 0;
        a3 = v29 & 0xC000000000000001;
        a5 = (v29 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (a3)
          {
            v31 = MEMORY[0x24C1FC540](v11, v29);
          }

          else
          {
            if (v11 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v31 = *(v29 + 8 * v11 + 32);
          }

          v6 = v31;
          v32 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v33 = [v31 identifier];
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          if (v34 == a1 && v36 == a2)
          {

LABEL_31:

            a5 = v47;
            v11 = v44;
            a3 = v46;
            goto LABEL_32;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_31;
          }

          ++v11;
          if (v32 == v30)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        if (__CocoaSet.count.getter() < 1)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _bridgeCocoaArray<A>(_:)();
      }
    }

    if (one-time initialization token for UI == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (!*(v23 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v25 & 1) == 0))
  {

    goto LABEL_43;
  }

  v6 = *(*(v23 + 56) + 8 * v24);

LABEL_32:

  v39 = v6;
  if (a3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v43 = _bridgeCocoaArray<A>(_:)();

    a3 = v43;
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  specialized DOCActionManager.perform(_:on:actionContext:)(v6, a3, v11);

  a5(1);

LABEL_45:
}

uint64_t DOCLazyActionManager._lazyActions.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions);
  }

  else
  {
    v2 = (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure))();
    *(v0 + v1) = v2;
  }

  return v2;
}

id DOCLazyActionManager.init(actionsConstructor:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = objc_opt_self();

  v8 = [v7 defaultManager];
  v9 = [objc_opt_self() defaultPermission];
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithItemManager_managedPermission_, v8, v9);

  return v10;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased NSArray)(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_249AB3AD0()
{
}

void (*DOCLazyActionManager.actions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = DOCLazyActionManager._lazyActions.getter();
  return DOCLazyActionManager.actions.modify;
}

void DOCLazyActionManager.actions.modify(uint64_t a1, char a2)
{
  if (a2)
  {

    specialized DOCLazyActionManager.actions.setter();
  }

  specialized DOCLazyActionManager.actions.setter();
}

id DOCLazyActionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCLazyActionManager.__allocating_init(itemManager:managedPermission:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 managedPermission:a2];

  return v5;
}

id DOCLazyActionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in DOCAppProtectionManager.firstNodeRequiringAuthenticationToRunActions(in:completion:)(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = a1 >> 62;
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_13;
  }

  v3 = swift_slowAlloc();
  v4 = swift_slowAlloc();
  v26 = v4;
  *v3 = 136315394;
  *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, 0x8000000249BFFC90, &v26);
  *(v3 + 12) = 2080;
  if (!v11)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_11:
    v16 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  v23 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = a2;
    v14 = *(a1 + 32);
    swift_unknownObjectRetain();
    while (1)
    {
      v15 = [v14 description];
      swift_unknownObjectRelease();
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      a2 = v13;
LABEL_12:
      v24 = v16;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v26);

      *(v3 + 14) = v21;
      _os_log_impl(&dword_2493AC000, v9, v10, "%s found first node requiring auth: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v4, -1, -1);
      MEMORY[0x24C1FE850](v3, -1, -1);
LABEL_13:

      if (v11)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_19:
          v22 = 0;
          goto LABEL_20;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(a1 + 32);
        swift_unknownObjectRetain();
        goto LABEL_20;
      }

      __break(1u);
LABEL_23:
      v13 = a2;
      v14 = MEMORY[0x24C1FC540](0, a1);
    }

    v22 = MEMORY[0x24C1FC540](0, a1);
LABEL_20:
    a2(v22);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 isFolder];
  if (result)
  {
    v25[2] = &unk_285DA8AC8;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v5 = one-time initialization token for UI;
      swift_unknownObjectRetain();
      if (v5 != -1)
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
        v10 = swift_slowAlloc();
        v25[0] = v10;
        *v9 = 136315394;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000249BFFC50, v25);
        *(v9 + 12) = 2080;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12FIAppLibrary_pMd);
        v11 = String.init<A>(describing:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v25);

        *(v9 + 14) = v13;
        _os_log_impl(&dword_2493AC000, v7, v8, "%s FINode is an app library: %s", v9, 0x16u);
        swift_arrayDestroy();
        v14 = v10;
LABEL_7:
        MEMORY[0x24C1FE850](v14, -1, -1);
        MEMORY[0x24C1FE850](v9, -1, -1);

        swift_unknownObjectRelease();
LABEL_15:
        *a2 = v3;
        return swift_unknownObjectRetain();
      }

      goto LABEL_14;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v15 = result;
      swift_unknownObjectRetain();
      v16 = [v15 fp_appContainerBundleIdentifier];
      if (v16)
      {

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.UI);
        swift_unknownObjectRetain();
        v7 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v7, v18))
        {
          v9 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v25[0] = v24;
          *v9 = 136315394;
          *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000249BFFC50, v25);
          *(v9 + 12) = 2080;
          swift_unknownObjectRetain();
          v19 = [v15 description];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
          swift_unknownObjectRelease();

          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v25);

          *(v9 + 14) = v23;
          _os_log_impl(&dword_2493AC000, v7, v18, "%s FPItem is an app container: %s", v9, 0x16u);
          swift_arrayDestroy();
          v14 = v24;
          goto LABEL_7;
        }

LABEL_14:
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      result = swift_unknownObjectRelease();
    }
  }

  *a2 = 0;
  return result;
}