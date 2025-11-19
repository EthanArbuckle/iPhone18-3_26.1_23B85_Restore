id UIViewController.doc_addChildViewController(_:addSubview:)(void *a1, void (*a2)(void))
{
  v3 = v2;
  [v2 addChildViewController_];
  if (!a2)
  {
    result = [v2 view];
    if (result)
    {
      v8 = result;
      result = [a1 view];
      if (result)
      {
        v9 = result;
        [v8 addSubview_];

        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  a2();

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
LABEL_7:

  return [a1 didMoveToParentViewController_];
}

Swift::Void __swiftcall UIViewController.doc_addChildWithEqualAutoresizingFrame(_:)(UIViewController *a1)
{
  v3 = [(UIViewController *)a1 view];
  if (v3)
  {
    v14 = v3;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [(UIView *)v14 setFrame:v7, v9, v11, v13];
      [(UIView *)v14 setAutoresizingMask:18];
      [v1 doc:a1 addChildViewController:0 addSubviewBlock:?];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t static UIViewController.__doc_perform(deferredTransitionsAndAnimationsDisabled:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:);
  *(v6 + 24) = v5;
  v9[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_13_3;
  v7 = _Block_copy(v9);

  [v4 _performWithoutDeferringTransitions_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:)partial apply;
  *(v8 + 24) = v7;
  v11[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_24_0;
  v9 = _Block_copy(v11);

  [v6 _performWithoutDeferringTransitions_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    return a2();
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for thunk for @callee_guaranteed () -> ();
  *(v8 + 24) = v7;
  v10[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_70_3;
  v9 = _Block_copy(v10);

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void removeFromSuperview #1 () in UIViewController._doc_removeFromParentViewController(removeSubview:)(void *a1, void (*a2)(void))
{
  v4 = [a1 viewIfLoaded];
  v5 = [v4 superview];

  if (!v5)
  {
    return;
  }

  if (a2)
  {

    v6 = [a1 view];
    if (v6)
    {
      v7 = v6;
      a2();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v8 = [a1 view];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  [v8 removeFromSuperview];
}

uint64_t UIViewController.liveResizeDidEndHandlers.getter()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(&v3);

  return v3;
}

uint64_t closure #1 in UIViewController._doc_liveResizeDidEnd()(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:a1 name:*MEMORY[0x277D776B8] object:0];

  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(a1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x78))(&v11);

  if (v11)
  {
    v5 = v11;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(a1, static UIViewController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v11 = 0;
  (*((*v4 & *v6) + 0x80))(&v11, KeyPath);

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = a1;
  v9 = a1;
  DOCRunInMainThread(_:)();
}

void *closure #1 in closure #1 in UIViewController._doc_liveResizeDidEnd()(void *result, id a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = result + 4;
    do
    {
      v5 = *v4++;
      result = [a2 performSelector_];
      --v2;
    }

    while (v2);
  }

  return result;
}

void key path getter for UIViewController.liveResizeDidEndHandlers : UIViewController(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v3, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v4) + 0x78))(&v5);

  *a2 = v5;
}

void key path setter for UIViewController.liveResizeDidEndHandlers : UIViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = one-time initialization token for associatedObjectStorageKey;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v3, static UIViewController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v7 = v2;
  (*((*MEMORY[0x277D85000] & *v5) + 0x80))(&v7, KeyPath);
}

uint64_t static UIViewController.associatedObjectStorageKey.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static UIViewController.associatedObjectStorageKey;
  return result;
}

uint64_t static UIViewController.associatedObjectStorageKey.setter(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static UIViewController.associatedObjectStorageKey = v1;
  return result;
}

uint64_t (*static UIViewController.associatedObjectStorageKey.modify())()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t specialized static UIView.doc_performAllowingAnimations(_:block:)(char a1, uint64_t a2)
{
  v8[2] = a2;
  if (a1)
  {
    v2 = *(a2 + 16);

    return v2(a2);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
    *(v5 + 24) = v8;
    v6 = swift_allocObject();
    *(v6 + 16) = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    *(v6 + 24) = v5;
    aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_60;
    v7 = _Block_copy(aBlock);

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

void DOCSplitBrowserViewController.sidebarViewController(_:didSelect:)(uint64_t a1, DOCConcreteLocation *a2)
{
  v4 = [v2 doc_splitViewState];
  v5 = [v4 isSidebarShownInOverlay];

  if (v5)
  {
    [v2 toggleSidebarShown];
  }

  DOCSplitBrowserViewController.updateLocation(_:)(a2);
}

Swift::Void __swiftcall DOCSplitBrowserViewController.updateLocation(_:)(DOCConcreteLocation *a1)
{
  if (one-time initialization token for restorableSettingsCache != -1)
  {
    swift_once();
  }

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  static DOCItemCollectionViewController.restorableSettingsCache = v3;

  if ([(DOCConcreteLocation *)a1 isFPV2])
  {
    v4 = [v1 fullDocumentManagerViewController];
    v5 = [v4 hierarchyController];

    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, a1, [v1 isCollapsed], 1, 0, 0, 0);
  }

  else
  {
    v5 = [v1 sourceObserver];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v1;
    aBlock[4] = partial apply for closure #1 in DOCSplitBrowserViewController.updateLocation(_:);
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_89;
    v7 = _Block_copy(aBlock);
    v8 = a1;
    v9 = v1;

    [v5 retrieveAllSourcesCompletionBlock_];
    _Block_release(v7);
  }
}

void DOCSplitBrowserViewController.sidebarViewController(_:wantsToReveal:)(int a1, id a2)
{
  v3 = [a2 node];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 fullDocumentManagerViewController];
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v4, 1, DOCGridLayout.specIconWidth.modify, 0, v5);
    swift_unknownObjectRelease();
  }
}

id DOCSplitBrowserViewController.sidebarViewController(isCollapsed:)()
{
  v1 = [v0 doc_splitViewState];
  v2 = [v1 isCollapsed];

  return v2;
}

void DOCSplitBrowserViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [v3 fullDocumentManagerViewController];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  [v6 importScannedDocumentAt:v8 presentingController:a2 importToCurrentLocation:a3 & 1];
}

void DOCSplitBrowserViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = [v4 fullDocumentManagerViewController];
  [v9 didSelectItem:a1 atParentLocation:a2 wasAlreadySelected:a3 & 1 onlyRevealIfColumn:a4 & 1];
}

id DOCSplitBrowserViewController.pickerOperation(for:)(uint64_t a1)
{
  v3 = [v1 fullDocumentManagerViewController];
  v4 = [v3 pickerOperationFor_];

  return v4;
}

uint64_t DOCSplitBrowserViewController.pickerOperationTitle(for:useShortTitle:)(uint64_t a1, char a2)
{
  v5 = [v2 fullDocumentManagerViewController];
  v6 = [v5 pickerOperationTitleFor:a1 useShortTitle:a2 & 1];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

void DOCSplitBrowserViewController.didConfirmPick(in:)(uint64_t a1, SEL *a2)
{
  v5 = [v2 fullDocumentManagerViewController];
  [v5 *a2];
}

void @objc DOCSplitBrowserViewController.didTapLocation(of:)(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  v8 = a1;
  v7 = [v8 fullDocumentManagerViewController];
  [v7 *a4];
}

Swift::Void __swiftcall DOCSplitBrowserViewController.didIndicateCancelPicker()()
{
  v1 = [v0 fullDocumentManagerViewController];
  [v1 didIndicateCancelPicker];
}

id DOCSplitBrowserViewController.didToggleEditState(editing:in:)(char a1, uint64_t a2)
{
  v5 = [v2 fullDocumentManagerViewController];
  [v5 didToggleEditStateWithEditing:a1 & 1 in:a2];

  return [v2 updateTraitCollectionTabBarSetting];
}

id DOCSplitBrowserViewController.isBrowserCurrentLocation(_:)(uint64_t a1)
{
  v3 = [v1 fullDocumentManagerViewController];
  v4 = [v3 isBrowserCurrentLocation_];

  return v4;
}

void DOCSplitBrowserViewController.didPick(document:shouldImport:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [v3 fullDocumentManagerViewController];
  v11 = [v3 fullDocumentManagerViewController];
  v12 = [v11 delegate];

  if (v12)
  {
    v35 = &unk_285D09428;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      swift_unknownObjectRetain();
      if (a2)
      {
        if ([v13 respondsToSelector_])
        {
          if ([v13 respondsToSelector_])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
            v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_249B9A480;
            (*(v7 + 16))(v15 + v14, a1, v6);
            swift_unknownObjectRetain();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v13 documentBrowser:v34 didPickImportedURLs:isa];

            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();

            return;
          }

          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        goto LABEL_11;
      }
    }

    else if (a2)
    {
LABEL_11:
      if (([v12 respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();

        goto LABEL_18;
      }

      v32 = [v34 documentManager];
      (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
      v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v31 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v33 = a1;
      v20 = swift_allocObject();
      (*(v7 + 32))(v20 + v18, v10, v6);
      v21 = v32;
      *(v20 + v31) = v3;
      *(v20 + v19) = v12;
      *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
      v22 = v21;
      v23 = *((*MEMORY[0x277D85000] & *v21) + 0x118);
      swift_unknownObjectRetain();
      v24 = v3;
      v25 = v34;
      v23(v33, 1, partial apply for closure #1 in DOCSplitBrowserViewController.didPick(document:shouldImport:), v20);

      goto LABEL_16;
    }

    if ([v12 respondsToSelector_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
      v26 = a1;
      v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_249B9A480;
      (*(v7 + 16))(v28 + v27, v26, v6);
      swift_unknownObjectRetain();
      v29 = Array._bridgeToObjectiveC()().super.isa;

      [v12 documentBrowser:v34 didPickDocumentsAtURLs:v29];

      swift_unknownObjectRelease_n();
LABEL_18:
      swift_unknownObjectRelease();
      return;
    }

LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v17 = v34;
}

void closure #1 in DOCSplitBrowserViewController.didPick(document:shouldImport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_249B9FA70;
    URL._bridgeToObjectiveC()(&unk_249B9F000);
    v21 = v20;
    *(v19 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
    *(v19 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
    *(v19 + 32) = v21;
    v22 = _convertErrorToNSError(_:)();
    *(v19 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v19 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v19 + 72) = v22;
    os_log(_:dso:log:type:_:)();

    v23 = _DocumentManagerBundle();
    if (v23)
    {
      v24 = v23;
      v40._object = 0x8000000249BE7A40;
      v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v25.value._object = 0xEB00000000656C62;
      v26._object = 0x8000000249BE7A20;
      v40._countAndFlagsBits = 0xD00000000000002BLL;
      v26._countAndFlagsBits = 0xD000000000000015;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v40);

      v29 = _convertErrorToNSError(_:)();
      v38 = MEMORY[0x24C1FAD20](v28._countAndFlagsBits, v28._object);

      DOCPresentAlertForErrorWithForceHandler();

      v30 = v38;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    outlined init with copy of URL?(a1, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      outlined destroy of URL?(v13);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_249B9A480;
      URL._bridgeToObjectiveC()(&off_249B9A000);
      v33 = v32;
      *(v31 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
      *(v31 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL);
      *(v31 + 32) = v33;
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
      if (a5 && ([a5 respondsToSelector_] & 1) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
        v34 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_249B9A480;
        (*(v15 + 16))(v35 + v34, v18, v14);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [a5 documentBrowser:a6 didPickDocumentsAtURLs:isa];
      }

      (*(v15 + 8))(v18, v14);
    }
  }
}

void closure #1 in DOCSplitBrowserViewController.updateLocation(_:)(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    v7 = _convertErrorToNSError(_:)();
    *(v6 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError);
    *(v6 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError);
    *(v6 + 32) = v7;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v35 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
LABEL_27:

    return;
  }

  v9 = a1;
  v32 = a4;
  if (a1 >> 62)
  {
LABEL_31:
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_26:
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_249B9A480;
    v28 = [a3 sourceIdentifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log);
    v35 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_27;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_5:
  v11 = 0;
  v34 = v9 & 0xFFFFFFFFFFFFFF8;
  v36 = (v9 & 0xC000000000000001);
  v33 = a3;
  while (v36)
  {
    v12 = MEMORY[0x24C1FC540](v11, v9);
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v14 = v9;
    v15 = v10;
    v4 = v12;
    v10 = [v12 identifier];
    v5 = [a3 sourceIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v20 = v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19;
    if (v20)
    {
      goto LABEL_20;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_21;
    }

    ++v11;
    v10 = v15;
    v20 = v13 == v15;
    a3 = v33;
    v9 = v14;
    if (v20)
    {
      goto LABEL_26;
    }
  }

  if (v11 >= *(v34 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v12 = *(v9 + 8 * v11 + 32);
  v13 = (v11 + 1);
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:

LABEL_21:
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    a3 = v33;
    goto LABEL_26;
  }

  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v32;
  v25 = v4;
  v26 = v32;
  DOCRunInMainThread(_:)();
}

void closure #2 in closure #1 in DOCSplitBrowserViewController.updateLocation(_:)(void *a1, id a2)
{
  v4 = [a2 configuration];
  v5 = type metadata accessor for DOCPickerViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_placeholderViewController] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_source] = a1;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCPickerViewController_configuration] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  v9 = *((*MEMORY[0x277D85000] & *v8) + 0x90);
  v10 = swift_unknownObjectRetain();
  v9(v10, &protocol witness table for DOCSplitBrowserViewController);
  [v8 setModalPresentationStyle_];
  [a2 presentViewController:v8 animated:1 completion:0];
}

void partial apply for closure #1 in DOCSplitBrowserViewController.didPick(document:shouldImport:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCSplitBrowserViewController.didPick(document:shouldImport:)(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t DOCLoadingViewController.task.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v2, v3);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task))
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task);
  }

  else
  {
    aBlock[4] = closure #1 in DOCLoadingViewController.task.getter;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_90;
    _Block_copy(aBlock);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v5 = DispatchWorkItem.init(flags:block:)();
    *(v1 + v4) = v5;
  }

  return v5;
}

void closure #1 in DOCLoadingViewController.task.getter()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.UI);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v1, "PERF: The empty DOCLoadingViewController is visible for more than 5 seconds", v2, 2u);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }
}

Swift::Void __swiftcall DOCLoadingViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for DOCLoadingViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1);
  DOCLoadingViewController.task.getter();
  v14 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if ((v14 & 1) == 0)
  {
    type metadata accessor for OS_dispatch_queue();
    v15 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v17 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task];

    MEMORY[0x24C1FB950](v12, v17);

    v16(v12, v4);
  }
}

Swift::Void __swiftcall DOCLoadingViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCLoadingViewController();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  DOCLoadingViewController.task.getter();
  dispatch thunk of DispatchWorkItem.cancel()();
}

void DOCLoadingViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCLoadingViewController();
  objc_msgSendSuper2(&v6, sel_effectiveAppearanceDidChange_, a1);
  v3 = [v1 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 backgroundColor];
    [v4 setBackgroundColor_];
  }
}

id DOCLoadingViewController.__allocating_init(configuration:documentManager:actionManager:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task] = 0;
  return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);
}

id DOCLoadingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCLoadingViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCLoadingViewController____lazy_storage___task] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCLoadingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCLoadingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCLoadingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(type metadata accessor for Column(0) - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = MEMORY[0x277D84F90];
  v9 = *(v6 + 72);
  while (1)
  {
    closure #5 in DOCItemRowView.update(with:)(v7, a2, &v13);
    if (v2)
    {
      break;
    }

    if (v14)
    {
      outlined init with take of DOCGoToFolderCandidate(&v13, v15);
      outlined init with take of DOCGoToFolderCandidate(v15, &v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      }

      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
      }

      v8[2] = v11 + 1;
      outlined init with take of DOCGoToFolderCandidate(&v13, &v8[5 * v11 + 4]);
    }

    else
    {
      outlined destroy of CharacterSet?(&v13, &_s26DocumentManagerExecutables11ViewSizable_pSgMd);
    }

    v7 += v9;
    if (!--v3)
    {
      return v8;
    }
  }

  return v8;
}

void OutlineScrollContext.init(screenWidth:scrollXOffset:safeAreaInsets:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

id key path getter for UIScrollView.contentSize : DOCItemRenameTextView@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void DOCItemRowView.cell.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCItemRowView.cell.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cell;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void *DOCItemRowView.headerMaskView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemRowView.headerMaskView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCItemRowView.containerView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemRowView.containerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for DOCItemRowView.columnData : DOCItemRowView(uint64_t *a1, void **a2)
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
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x1C8);
  outlined copy of OutlineColumnData?(v9[0], v2);
  return v7(v9);
}

uint64_t DOCItemRowView.columnData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return outlined copy of OutlineColumnData?(v4, v5);
}

uint64_t outlined copy of OutlineColumnData?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t DOCItemRowView.columnData.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnData;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v7;
  *(v4 + 32) = v3;
  return outlined consume of OutlineColumnData?(v5, v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemRowView.ColumnCacheKey()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  ColumnType.hash(into:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCItemRowView.ColumnCacheKey(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ColumnType.hash(into:)();
  specialized Set.hash(into:)(a1, v3);

  return specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemRowView.ColumnCacheKey()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  ColumnType.hash(into:)();
  specialized Set.hash(into:)(v4, v1);
  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t DOCItemRowView.columnGenerationCount.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnGenerationCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemRowView.columnGenerationCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnGenerationCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemRowView.displaySortButtons.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons;
  swift_beginAccess();
  return *(v0 + v1);
}

void *DOCItemRowView.displaySortButtons.setter(int a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = MEMORY[0x277D85000];
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1 && ((v5 ^ a1) & 1) != 0)
  {
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x3C0))(v4);
  }

  result = (*((*v6 & *v1) + 0x1C0))(&v10, v4);
  v8 = v11;
  if (v11)
  {
    v9 = v10;
    LOBYTE(v10) = v10 & 1;
    (*((*v6 & *v1) + 0x3E0))(&v10);
    return outlined consume of OutlineColumnData?(v9, v8);
  }

  return result;
}

void (*DOCItemRowView.displaySortButtons.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemRowView.displaySortButtons.modify;
}

void DOCItemRowView.displaySortButtons.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  v7 = v2[3];
  if (a2)
  {
    if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) & (v5 ^ v6))
    {
      a1 = (*((*MEMORY[0x277D85000] & *v7) + 0x3C0))();
      v7 = v2[3];
    }

    v9 = *v7;
    v8 = MEMORY[0x277D85000];
  }

  else
  {
    v8 = MEMORY[0x277D85000];
    if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) & (v5 ^ v6))
    {
      a1 = (*((*MEMORY[0x277D85000] & *v7) + 0x3C0))();
      v7 = v2[3];
    }

    v9 = *v7;
  }

  (*((*v8 & v9) + 0x1C0))(&v13, a1);
  v10 = v14;
  if (v14)
  {
    v11 = v2[3];
    v12 = v13;
    LOBYTE(v13) = v13 & 1;
    (*((*v8 & *v11) + 0x3E0))(&v13);
    outlined consume of OutlineColumnData?(v12, v10);
  }

  free(v2);
}

uint64_t DOCItemRowView.customNameTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DOCItemRowView.customNameTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) != 1)
  {
  }

  if (v7 == a1 && v6 == a2)
  {
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0x3C0))(result);
  }

  return result;
}

void (*DOCItemRowView.customNameTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return DOCItemRowView.customNameTitle.modify;
}

void DOCItemRowView.customNameTitle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    DOCItemRowView.customNameTitle.setter(v3, v4);
LABEL_10:

    goto LABEL_11;
  }

  v5 = v2[5];
  v6 = (v5 + v2[6]);
  v8 = *v6;
  v7 = v6[1];
  *v6 = v3;
  v6[1] = v4;
  if (*(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v8 && v4 == v7)
  {
    goto LABEL_10;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v2[5]) + 0x3C0))(v11);
  }

LABEL_11:

  free(v2);
}

void DOCItemRowView.leadingThumbnailView.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v6 = v4;
  v5(v4);
  v7 = *(v1 + v3);
  if (v7)
  {
    v8 = v7;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249BAD7D0;
    v10 = [v8 centerXAnchor];
    v11 = [v2 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    v13 = [v8 centerYAnchor];
    v14 = [v2 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v9 + 40) = v15;
    v16 = [v2 bottomAnchor];
    v17 = [v8 bottomAnchor];
    v18 = [v16 constraintGreaterThanOrEqualToAnchor_];

    *(v9 + 48) = v18;
    v19 = [v2 trailingAnchor];
    v20 = [v8 trailingAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor_];

    *(v9 + 56) = v21;
    v22 = [v8 topAnchor];
    v23 = [v2 topAnchor];
    v24 = [v22 constraintGreaterThanOrEqualToAnchor_];

    *(v9 + 64) = v24;
    v25 = [v8 leadingAnchor];

    v26 = [v2 leadingAnchor];
    v27 = [v25 constraintGreaterThanOrEqualToAnchor_];

    *(v9 + 72) = v27;
    v28 = objc_opt_self();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints_];
  }
}

void *DOCItemRowView.leadingThumbnailView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemRowView.leadingThumbnailView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCItemRowView.leadingThumbnailView.didset();
}

void (*DOCItemRowView.leadingThumbnailView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemRowView.leadingThumbnailView.modify;
}

void DOCItemRowView.leadingThumbnailView.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemRowView.leadingThumbnailView.didset();
  }
}

void *DOCItemRowView.cellContent.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemRowView.cellContent.setter(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v4 = a1;
    a1 = v4;
    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_8:
    (*((*MEMORY[0x277D85000] & *v1) + 0x3C0))(v4);

    goto LABEL_9;
  }

  v6 = v1;
  type metadata accessor for DOCItemCollectionCellContent(0);
  a1 = a1;
  v7 = v5;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v1 = v6;
    goto LABEL_8;
  }

  v5 = v7;
LABEL_9:
}

void (*DOCItemRowView.cellContent.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemRowView.cellContent.modify;
}

void DOCItemRowView.cellContent.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v7 = *(v6 + v5);
    *(v6 + v5) = v3;
    if (v7)
    {
      if (v3)
      {
        type metadata accessor for DOCItemCollectionCellContent(0);
        v3 = v3;
        v8 = v7;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {

          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_11;
      }

      v3 = v3;
    }

    (*((*MEMORY[0x277D85000] & *v2[4]) + 0x3C0))();

    v3 = v7;
    goto LABEL_10;
  }

  v4 = v3;
  DOCItemRowView.cellContent.setter(v3);
  v3 = v2[3];
LABEL_10:

LABEL_11:

  free(v2);
}

void *DOCItemRowView.menuButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_menuButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemRowView.menuButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_menuButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

__n128 DOCItemRowView.scrollContext.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_scrollContext;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

id DOCItemRowView.scrollContext.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_scrollContext];
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 4) = v3;
  *(v5 + 5) = v4;
  if (v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader] == 1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id (*DOCItemRowView.scrollContext.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemRowView.scrollContext.modify;
}

id DOCItemRowView.scrollContext.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = *(a1 + 24);
    if (*(result + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1)
    {

      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t key path getter for DOCItemRowView.headerToggleAction : DOCItemRowView@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2C8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for closure #1 in closure #1 in closure #1 in _DOCBrowserHistoryDataSourceBase.performPendingMutations(_:);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCItemRowView.headerToggleAction : DOCItemRowView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout _DOCBrowserHistoryDataSourceBase.ThreadSafeState) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x2D0);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCItemRowView.headerToggleAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerToggleAction);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCItemRowView.headerToggleAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerToggleAction);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t DOCItemRowView.identationLevel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemRowView.identationLevel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x3C0))(result);
  }

  return result;
}

void (*DOCItemRowView.identationLevel.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCItemRowView.identationLevel.modify;
}

void DOCItemRowView.identationLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[4]) + 0x3C0))();
  }

  free(v1);
}

uint64_t key path setter for DOCItemRowView.sortDescriptor : DOCItemRowView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x318);
  outlined copy of DOCItemSortDescriptor?(v8[0], v2);
  return v6(v8);
}

void *DOCItemRowView.sortDescriptor.didset(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = v5[24];
  if (v7)
  {
    outlined copy of DOCItemSortDescriptor?(v6, v7);
    if (v3)
    {
      outlined copy of DOCItemSortDescriptor?(v2, v3);
      outlined copy of DOCItemSortDescriptor?(v6, v7);
      v9 = specialized == infix<A>(_:_:)(v6, v2);
      outlined consume of DOCItemSortDescriptor?(v2, v3);

      result = outlined consume of DOCItemSortDescriptor?(v6, v7);
      if ((v9 & 1) != 0 && ((v8 ^ v4) & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    outlined copy of DOCItemSortDescriptor?(v2, 0);
    outlined copy of DOCItemSortDescriptor?(v6, v7);
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v6, 0);
    if (!v3)
    {
      outlined copy of DOCItemSortDescriptor?(v2, 0);
      return outlined consume of DOCItemSortDescriptor?(v6, 0);
    }

    outlined copy of DOCItemSortDescriptor?(v2, v3);
  }

  outlined consume of DOCItemSortDescriptor?(v6, v7);
  result = outlined consume of DOCItemSortDescriptor?(v2, v3);
LABEL_10:
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1)
  {
    v11 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v1) + 0x3C0))(result);
    result = (*((*v11 & *v1) + 0x1C0))(&v17, v12);
    v13 = *(&v17 + 1);
    if (*(&v17 + 1))
    {
      v14 = v17;
      v15 = v18;
      v16 = v19;
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      (*((*v11 & *v1) + 0x1C8))(&v17);
      LOBYTE(v17) = v14 & 1;
      *(&v17 + 1) = v13;
      v18 = v15;
      v19 = v16;
      (*((*v11 & *v1) + 0x3E0))(&v17);
      return outlined consume of OutlineColumnData?(v14, v13);
    }
  }

  return result;
}

uint64_t DOCItemRowView.sortDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  return outlined copy of DOCItemSortDescriptor?(v4, v5);
}

uint64_t DOCItemRowView.sortDescriptor.setter(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = v9;
  *(v4 + 16) = v2;
  LOBYTE(v2) = *(v4 + 24);
  *(v4 + 24) = v3;
  outlined copy of DOCItemSortDescriptor?(v5, v6);
  outlined consume of DOCItemSortDescriptor?(v5, v6);
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v2;
  DOCItemRowView.sortDescriptor.didset(v10);
  return outlined consume of DOCItemSortDescriptor?(v5, v6);
}

void (*DOCItemRowView.sortDescriptor.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  outlined copy of DOCItemSortDescriptor?(v7, v8);
  return DOCItemRowView.sortDescriptor.modify;
}

void DOCItemRowView.sortDescriptor.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7] + (*a1)[8];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v10 = *v4;
  v9 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  if (a2)
  {
    outlined copy of DOCItemSortDescriptor?(v5, v6);
    outlined copy of DOCItemSortDescriptor?(v10, v9);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    DOCItemRowView.sortDescriptor.didset(&v15);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v13 = *v3;
    v14 = v3[1];
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v10, v9);
    outlined consume of DOCItemSortDescriptor?(v10, v9);
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    DOCItemRowView.sortDescriptor.didset(&v15);
    v13 = v10;
    v14 = v9;
  }

  outlined consume of DOCItemSortDescriptor?(v13, v14);

  free(v3);
}

uint64_t DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void *DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3 && (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) & 1) != 0)
  {
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x3C0))(result);
    result = (*((*v7 & *v1) + 0x1C0))(&v13, v8);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      v10 = v13;
      v11 = v14;
      v12 = v15;
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      (*((*v7 & *v1) + 0x1C8))(&v13);
      LOBYTE(v13) = v10 & 1;
      *(&v13 + 1) = v9;
      v14 = v11;
      v15 = v12;
      (*((*v7 & *v1) + 0x3E0))(&v13);
      return outlined consume of OutlineColumnData?(v10, v9);
    }
  }

  return result;
}

void (*DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.modify;
}

void DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCItemRowView.shouldHeaderPreserveSpaceForDisclosureButton.setter(v3);
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
      if (*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1)
      {
        v8 = MEMORY[0x277D85000];
        v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x3C0))();
        (*((*v8 & *v7) + 0x1C0))(&v15, v9);
        v10 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v11 = v15;
          v12 = v16;
          v13 = v17;
          v14 = v2[3];
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
          (*((*v8 & *v14) + 0x1C8))(&v15);
          LOBYTE(v15) = v11 & 1;
          *(&v15 + 1) = v10;
          v16 = v12;
          v17 = v13;
          (*((*v8 & *v14) + 0x3E0))(&v15);
          outlined consume of OutlineColumnData?(v11, v10);
        }
      }
    }
  }

  free(v2);
}

uint64_t DOCItemRowView.statusViewIsInitialized.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemRowView.statusViewIsInitialized.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCItemRowView.statusView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  }

  else
  {
    type metadata accessor for DOCItemStatusView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setOpaque_];
    v5 = MEMORY[0x277D85000];
    v6 = v0;
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x348))(1);
    (*((*v5 & *v4) + 0xA8))(v7);
    v8 = *(v0 + v1);
    *(v6 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void DOCItemRowView.statusView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView) = a1;
}

void (*DOCItemRowView.statusView.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemRowView.statusView.getter();
  return DOCItemRowView.statusView.modify;
}

void DOCItemRowView.statusView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView) = v2;
}

uint64_t DOCItemRowView.icloudColumnStatusViewIsInitialized.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemRowView.icloudColumnStatusViewIsInitialized.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCItemRowView.statusViewForIcloudColumn.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  }

  else
  {
    type metadata accessor for DOCItemStatusView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setOpaque_];
    v5 = MEMORY[0x277D85000];
    v6 = v0;
    v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x378))(1);
    (*((*v5 & *v4) + 0xA8))(v7);
    v8 = *(v0 + v1);
    *(v6 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void DOCItemRowView.statusViewForIcloudColumn.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn) = a1;
}

void (*DOCItemRowView.statusViewForIcloudColumn.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemRowView.statusViewForIcloudColumn.getter();
  return DOCItemRowView.statusViewForIcloudColumn.modify;
}

void DOCItemRowView.statusViewForIcloudColumn.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn) = v2;
}

char *DOCItemRowView.init(isHeader:)(char a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnCache;
  v5 = MEMORY[0x277D84F90];
  *&v1[v4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say26DocumentManagerExecutables11ViewSizable_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnViews] = v5;
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnData];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  *&v1[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AC0I0OTt0g5Tf4g_n(v5);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnGenerationCount] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_visibleColumns] = v5;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons] = 1;
  v8 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState;
  type metadata accessor for OutlineExpansionState(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 20) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  ObservationRegistrar.init()();
  *&v1[v9] = v10;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  type metadata accessor for OutlineProgressState(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView] = 0;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView;
  type metadata accessor for DOCImageViewContainerView();
  *&v1[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_menuButton] = 0;
  v14 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_scrollContext];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = *(MEMORY[0x277D768C8] + 16);
  *(v14 + 1) = *MEMORY[0x277D768C8];
  *(v14 + 2) = v15;
  v16 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerToggleAction];
  *v16 = 0;
  v16[1] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dividerViews] = v5;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel] = 0;
  v17 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor];
  v17[24] = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton] = 0;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView;
  v19 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v19 setOpaque_];
  [v19 setSpacing_];
  [v19 setAlignmentOffset_];
  *&v1[v18] = v19;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView2;
  v21 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v21 setOpaque_];
  [v21 setSpacing_];
  [v21 setAlignmentOffset_];
  *&v1[v20] = v21;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader] = a1;
  type metadata accessor for DateCache();
  v22 = swift_allocObject();
  *(v22 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(v5);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache] = v22;
  v38.receiver = v1;
  v38.super_class = type metadata accessor for DOCItemRowView();
  v23 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249B9A480;
  v25 = type metadata accessor for UITraitUserInterfaceStyle();
  v26 = MEMORY[0x277D74BF0];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = v23;
  MEMORY[0x24C1FBD00](v24, sel_colorChanged);
  swift_unknownObjectRelease();

  v28 = *&v27[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = *(*v28 + 384);

  v30(partial apply for closure #1 in DOCItemRowView.init(isHeader:), v29);

  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  swift_beginAccess();
  [v27 addSubview_];
  v32 = v27;
  if (a1)
  {
    type metadata accessor for OutlineGradientView();
    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v34 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView;
    swift_beginAccess();
    v35 = *&v27[v34];
    *&v27[v34] = v33;
    v32 = v33;

    v36 = *&v27[v31];
    [v36 setMaskView_];
  }

  return v27;
}

void closure #1 in DOCItemRowView.init(isHeader:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x148))();
    if (v3)
    {
      v4 = v3;
      if ((*((*v2 & *v3) + 0xE8))())
      {
        v6 = v5;
        ObjectType = swift_getObjectType();
        (*(v6 + 64))(v4, ObjectType, v6);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

id DOCItemRowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCItemRowView.setDateCache(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache) = a1;
}

Swift::Void __swiftcall DOCItemRowView.clearColumnCache()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F98];
}

uint64_t DOCItemRowView.updateWithoutReset(with:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *MEMORY[0x277D85000] & *v1;
  v5 = a1[3];
  v6 = a1[4];
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v5;
  v9[4] = v6;
  v7 = *(v4 + 456);

  return v7(v9);
}

uint64_t DOCItemRowView.leadingView()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1A8))();
  if (*(v1 + 16))
  {
    outlined init with copy of DOCSidebarItemIconProvider(v1 + 32, v6);

    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMd);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}

void DOCItemRowView.update(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v414 = v409 - v6;
  v418 = type metadata accessor for UIButton.Configuration();
  v417 = *(v418 - 8);
  MEMORY[0x28223BE20](v418, v7);
  v429 = v409 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v413 = type metadata accessor for UIHoverAutomaticEffect();
  MEMORY[0x28223BE20](v413, v9);
  v412 = v409 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v425 = v409 - v13;
  v424 = type metadata accessor for UIHoverLiftEffect();
  MEMORY[0x28223BE20](v424, v14);
  v423 = v409 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = type metadata accessor for DragIndicator(0);
  MEMORY[0x28223BE20](v422, v16);
  v421 = v409 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMd);
  MEMORY[0x28223BE20](v432, v18);
  v431 = (v409 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v21);
  v427 = v409 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v433 = (v409 - v25);
  MEMORY[0x28223BE20](v26, v27);
  v428 = v409 - v28;
  v449 = type metadata accessor for Column(0);
  v447 = *(v449 - 8);
  MEMORY[0x28223BE20](v449, v29);
  v31 = v409 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v440 = (v409 - v34);
  MEMORY[0x28223BE20](v35, v36);
  v448 = v409 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v444 = (v409 - v40);
  MEMORY[0x28223BE20](v41, v42);
  v441 = (v409 - v43);
  MEMORY[0x28223BE20](v44, v45);
  v445 = (v409 - v46);
  MEMORY[0x28223BE20](v47, v48);
  v446 = v409 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v53 = (v409 - v52);
  MEMORY[0x28223BE20](v54, v55);
  v57 = v409 - v56;
  v60.n128_f64[0] = MEMORY[0x28223BE20](v58, v59);
  v62 = v409 - v61;
  *&v437 = *a1;
  v63 = a1[2];
  *(&v437 + 1) = a1[1];
  v439 = v63;
  v64 = a1[4];
  v442 = a1[3];
  v438 = v64;
  v65 = MEMORY[0x277D85000];
  v66 = *((*MEMORY[0x277D85000] & *v2) + 0x148);
  v416 = (*MEMORY[0x277D85000] & *v2) + 328;
  v415 = v66;
  v67 = v66(v60);
  if (v67)
  {
    v68 = v67;
    v69 = (*((*v65 & *v67) + 0x3A8))();

    if (v69)
    {
      return;
    }
  }

  v70 = *((*v65 & *v2) + 0x280);
  v71 = (*v65 & *v2) + 640;
  v72 = v70();
  if (v72)
  {
    v73 = v72;
    (*((*v65 & *v72) + 0xAA0))(&v453);

    v74 = v453;
  }

  else
  {
    v74 = 2;
  }

  v75 = v70();
  v443 = v53;
  v435 = v57;
  v434 = v62;
  v426 = v71;
  if (!v75)
  {
    goto LABEL_10;
  }

  v436 = v75;
  v76 = (*((*v65 & *v2) + 0x340))();
  if ((v76 & 1) == 0 && v74 == 2)
  {

LABEL_10:
    v411 = 0;
    goto LABEL_24;
  }

  v453 = xmmword_249BAFCA0;
  MEMORY[0x28223BE20](v76, v77);
  v407 = &v453;
  v78 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v406, v442);
  v411 = 0;
  if (v78)
  {
    v79 = (*((*v65 & *v2) + 0x388))();
  }

  else
  {
    v79 = 0;
  }

  v80 = *((*v65 & *v2) + 0x358);
  v81 = v80();
  LOBYTE(v453) = v74;
  (*((*v65 & *v81) + 0xD0))(&v453);

  if (v79)
  {
    LOBYTE(v453) = v74;
    v82 = *((*v65 & *v79) + 0xD0);
    v83 = v79;
    v82(&v453);
    v57 = v435;
    v65 = MEMORY[0x277D85000];
  }

  if (v74 == 1 && ((*((*v65 & *v436) + 0x800))() & 1) == 0)
  {
    v88 = v80();
    (*((*v65 & *v88) + 0x170))(1);

    if (v79)
    {
      v85 = *((*v65 & *v79) + 0x170);
      v86 = v79;
      v87 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v84 = v80();
    (*((*v65 & *v84) + 0x170))(0);

    if (v79)
    {
      v85 = *((*v65 & *v79) + 0x170);
      v86 = v79;
      v87 = 0;
LABEL_22:
      v85(v87);

      goto LABEL_24;
    }
  }

LABEL_24:
  v419 = v70;
  v89 = v70();
  if (v89)
  {
    v90 = v89;
    (*((*v65 & *v89) + 0x640))();
  }

  else if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) != 1)
  {
    return;
  }

  (*((*v65 & *v2) + 0x1C0))(&v453, v89);
  v91 = *(&v453 + 1);
  if (*(&v453 + 1))
  {
    v92 = v453;
    v93 = v454;
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v442, v455))
    {
      v94 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v439, v93);
      outlined consume of OutlineColumnData?(v92, v91);
      if (v94)
      {
        v95 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
        swift_beginAccess();
        v57 = v435;
        if (*(*(v2 + v95) + 16))
        {
LABEL_326:
          v453 = v437;
          v454 = v439;
          v455 = v442;
          v456 = v438;
          v405 = *((*v65 & *v2) + 0x1C8);

          v405(&v453);
          [v2 setNeedsLayout];
          return;
        }

        goto LABEL_34;
      }
    }

    else
    {
      outlined consume of OutlineColumnData?(v92, v91);
    }

    v57 = v435;
  }

LABEL_34:
  v453 = v437;
  v454 = v439;
  v455 = v442;
  v456 = v438;
  v96 = *((*v65 & *v2) + 0x1C8);

  v97 = v96(&v453);
  (*((*v65 & *v2) + 0x3C0))(v97);
  v98 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnCache;
  v99 = swift_beginAccess();
  if (*(*(v2 + v98) + 16))
  {
    goto LABEL_64;
  }

  v100 = v434;
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v99 = static Column.allCases;
  v101 = *(static Column.allCases + 16);
  if (!v101)
  {
    goto LABEL_64;
  }

  v102 = static Column.allCases + ((*(v447 + 80) + 32) & ~*(v447 + 80));
  v430 = *(v447 + 72);
  v420 = (v57 + 8);
  v410 = static Column.allCases;

  do
  {
    outlined init with copy of Column(v102, v100, type metadata accessor for Column);
    outlined init with copy of Column(v100, v57, type metadata accessor for Column);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v436 = v101;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v104 = 0xE600000000000000;
        v105 = 0x726564616568;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v104 = 0xE400000000000000;
        v105 = 1936154996;
      }

      else
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v105 = 0x6956737574617473;
        v104 = 0xEA00000000007765;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined destroy of Column(v57, type metadata accessor for Column);
        v104 = 0xE600000000000000;
        v105 = 0x676E69727473;
      }

      else
      {

        outlined consume of LeadingBadge?(*(v57 + 1), *(v57 + 2), *(v57 + 3), *(v57 + 4), *(v57 + 5), *(v57 + 6));
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
        v109 = v108[16];

        outlined destroy of Column(&v57[v109], type metadata accessor for LeadingTitle);
        v105 = 0x56676E696461656CLL;
        v104 = 0xEB00000000776569;
      }
    }

    else
    {
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

      outlined consume of ColumnType(*&v57[*(v106 + 64)], *&v57[*(v106 + 64) + 8]);
      v107 = type metadata accessor for Date();
      (*(*(v107 - 8) + 8))(v57, v107);
      v104 = 0xE400000000000000;
      v105 = 1702125924;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v452 = *(v2 + v98);
    v111 = v452;
    *(v2 + v98) = 0x8000000000000000;
    v113 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v104);
    v114 = *(v111 + 16);
    v115 = (v112 & 1) == 0;
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      goto LABEL_242;
    }

    v117 = v112;
    if (*(v111 + 24) >= v116)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v120 = v452;
        if (v112)
        {
          goto LABEL_39;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v120 = v452;
        if (v117)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v116, isUniquelyReferenced_nonNull_native);
      v118 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v104);
      if ((v117 & 1) != (v119 & 1))
      {
        goto LABEL_338;
      }

      v113 = v118;
      v120 = v452;
      if (v117)
      {
LABEL_39:
        *(v120[7] + 8 * v113) = MEMORY[0x277D84F90];

        goto LABEL_40;
      }
    }

    v120[(v113 >> 6) + 8] |= 1 << v113;
    v121 = (v120[6] + 16 * v113);
    *v121 = v105;
    v121[1] = v104;
    *(v120[7] + 8 * v113) = MEMORY[0x277D84F90];
    v122 = v120[2];
    v123 = __OFADD__(v122, 1);
    v124 = v122 + 1;
    if (v123)
    {
      goto LABEL_244;
    }

    v120[2] = v124;
LABEL_40:
    *(v2 + v98) = v120;
    swift_endAccess();
    v100 = v434;
    outlined destroy of Column(v434, type metadata accessor for Column);
    v102 += v430;
    v101 = v436 - 1;
    v57 = v435;
  }

  while (v436 != 1);

LABEL_64:
  v125 = (*MEMORY[0x277D85000] & *v2) + 424;
  v410 = *((*MEMORY[0x277D85000] & *v2) + 0x1A8);
  v409[1] = v125;
  v126 = v410(v99);
  v127 = *(v126 + 16);
  if (v127)
  {
    *&v452 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127, 0);
    v128 = v452;
    v129 = v126 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v129, &v453);
      v130 = v455;
      v131 = v456;
      __swift_project_boxed_opaque_existential_1(&v453, v455);
      v132 = (v131[1])(v130, v131);
      [v132 setHidden_];

      __swift_destroy_boxed_opaque_existential_0(&v453);
      *&v452 = v128;
      v134 = *(v128 + 16);
      v133 = *(v128 + 24);
      v135 = v134 + 1;
      if (v134 >= v133 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1);
        v128 = v452;
      }

      *(v128 + 16) = v135;
      v129 += 40;
      --v127;
    }

    while (v127);
  }

  v137 = (v419)(v136);
  v138 = &_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd;
  if (v137)
  {
    v139 = v137;
    v140 = (*((*MEMORY[0x277D85000] & *v137) + 0x3D0))();

    if (v140)
    {
      if ([v140 isFullyFormed] && (objc_msgSend(v140, sel_isFolder) & 1) != 0 && (v141 = v415()) != 0)
      {
        v142 = v141;
        type metadata accessor for DOCItemCollectionOutlineCell();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_235;
        }

        DOCItemCollectionOutlineCell.updateWantsDisclosureButton()();

        v137 = swift_unknownObjectRelease();
        v138 = &_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd;
      }

      else
      {
        v137 = swift_unknownObjectRelease();
      }
    }
  }

  while (2)
  {
    v143 = *(v2 + v138[34]);
    if (v143 == 1 && ((*((*MEMORY[0x277D85000] & *v2) + 0x220))(v137) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_249B9A480;
      v144 = v442;
      if (!*(v442 + 2))
      {
        goto LABEL_334;
      }

      v145 = v146;
      v147 = *(v442 + 4);
      v148 = *(v442 + 5);
      v145[4] = v147;
      v145[5] = v148;
      outlined copy of ColumnType(v147, v148);
    }

    else
    {
      v144 = v442;

      v145 = v144;
    }

    LODWORD(v416) = v143;
    v149 = v145[2];
    v150 = MEMORY[0x277D84F90];
    if (!v149)
    {
LABEL_91:

      v156 = MEMORY[0x277D85000];
      v157 = (*((*MEMORY[0x277D85000] & *v2) + 0x210))(v150);
      v158 = *((*v156 & *v2) + 0x208);
      v420 = (*v156 & *v2) + 520;
      v419 = v158;
      v159 = (v158)(v157);
      v446 = *(v159 + 16);
      if (!v446)
      {
LABEL_158:
        v104 = MEMORY[0x277D84F98];
LABEL_159:

        if (one-time initialization token for allCases != -1)
        {
          goto LABEL_245;
        }

        goto LABEL_160;
      }

      v160 = 0;
      v436 = (v159 + ((*(v447 + 80) + 32) & ~*(v447 + 80)));
      v434 = (v445 + 1);
      v426 = v441 + 1;
      v104 = MEMORY[0x277D84F98];
      v430 = v444 + 1;
      v161 = v443;
      v435 = v159;
      while (1)
      {
        if (v160 >= *(v159 + 16))
        {
          goto LABEL_237;
        }

        outlined init with copy of Column(&v436[*(v447 + 72) * v160], v161, type metadata accessor for Column);
        outlined init with copy of Column(v161, v445, type metadata accessor for Column);
        v162 = swift_getEnumCaseMultiPayload();
        if (v162 > 2)
        {
          if (v162 == 3)
          {
            outlined destroy of Column(v445, type metadata accessor for Column);
            v163 = 0xE600000000000000;
            v164 = 0x726564616568;
            if (!*(v104 + 16))
            {
              goto LABEL_111;
            }
          }

          else if (v162 == 4)
          {
            outlined destroy of Column(v445, type metadata accessor for Column);
            v163 = 0xE400000000000000;
            v164 = 1936154996;
            if (!*(v104 + 16))
            {
              goto LABEL_111;
            }
          }

          else
          {
            outlined destroy of Column(v445, type metadata accessor for Column);
            v164 = 0x6956737574617473;
            v163 = 0xEA00000000007765;
            if (!*(v104 + 16))
            {
LABEL_111:

LABEL_112:
              outlined init with copy of Column(v161, v441, type metadata accessor for Column);
              v174 = swift_getEnumCaseMultiPayload();
              v175 = v104;
              if (v174 > 2)
              {
                if (v174 == 3)
                {
                  outlined destroy of Column(v441, type metadata accessor for Column);
                  v176 = 0xE600000000000000;
                  v104 = 0x726564616568;
                }

                else if (v174 == 4)
                {
                  outlined destroy of Column(v441, type metadata accessor for Column);
                  v176 = 0xE400000000000000;
                  v104 = 1936154996;
                }

                else
                {
                  outlined destroy of Column(v441, type metadata accessor for Column);
                  v104 = 0x6956737574617473;
                  v176 = 0xEA00000000007765;
                }
              }

              else if (v174)
              {
                if (v174 == 1)
                {
                  outlined destroy of Column(v441, type metadata accessor for Column);
                  v176 = 0xE600000000000000;
                  v104 = 0x676E69727473;
                }

                else
                {
                  v181 = v441;

                  outlined consume of LeadingBadge?(v181[1], v181[2], v181[3], v181[4], v181[5], v181[6]);
                  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
                  v183 = v182[16];

                  outlined destroy of Column(v181 + v183, type metadata accessor for LeadingTitle);
                  v104 = 0x56676E696461656CLL;
                  v176 = 0xEB00000000776569;
                }
              }

              else
              {
                v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

                v178 = *(v177 + 64);
                v179 = v441;
                outlined consume of ColumnType(*(v441 + v178), *(v441 + v178 + 8));
                v180 = type metadata accessor for Date();
                (*(*(v180 - 8) + 8))(v179, v180);
                v176 = 0xE400000000000000;
                v104 = 1702125924;
              }

              v184 = v175;
              v185 = swift_isUniquelyReferenced_nonNull_native();
              *&v453 = v184;
              v187 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v176);
              v188 = *(v184 + 16);
              v189 = (v186 & 1) == 0;
              v190 = v188 + v189;
              if (__OFADD__(v188, v189))
              {
                goto LABEL_240;
              }

              v191 = v186;
              if (*(v184 + 24) >= v190)
              {
                if (v185)
                {
                  if ((v186 & 1) == 0)
                  {
                    goto LABEL_132;
                  }
                }

                else
                {
                  specialized _NativeDictionary.copy()();
                  if ((v191 & 1) == 0)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v190, v185);
                v192 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v176);
                if ((v191 & 1) != (v193 & 1))
                {
                  goto LABEL_338;
                }

                v187 = v192;
                if ((v191 & 1) == 0)
                {
LABEL_132:
                  v194 = v453;
                  *(v453 + 8 * (v187 >> 6) + 64) |= 1 << v187;
                  v195 = (v194[6] + 16 * v187);
                  *v195 = v104;
                  v195[1] = v176;
                  *(v194[7] + 8 * v187) = 0;
                  v196 = v194[2];
                  v123 = __OFADD__(v196, 1);
                  v197 = v196 + 1;
                  if (v123)
                  {
                    goto LABEL_243;
                  }

                  v104 = v194;
                  v194[2] = v197;
                  goto LABEL_134;
                }
              }

              v104 = v453;
              *(*(v453 + 56) + 8 * v187) = 0;
LABEL_134:
              v161 = v443;
              goto LABEL_135;
            }
          }
        }

        else if (v162)
        {
          if (v162 == 1)
          {
            outlined destroy of Column(v445, type metadata accessor for Column);
            v163 = 0xE600000000000000;
            v164 = 0x676E69727473;
            if (!*(v104 + 16))
            {
              goto LABEL_111;
            }
          }

          else
          {
            v169 = v445;

            outlined consume of LeadingBadge?(v169[1], v169[2], v169[3], v169[4], v169[5], v169[6]);
            v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
            v171 = v170[16];

            outlined destroy of Column(v169 + v171, type metadata accessor for LeadingTitle);
            v164 = 0x56676E696461656CLL;
            v163 = 0xEB00000000776569;
            if (!*(v104 + 16))
            {
              goto LABEL_111;
            }
          }
        }

        else
        {
          v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

          v166 = *(v165 + 64);
          v167 = v445;
          outlined consume of ColumnType(*(v445 + v166), *(v445 + v166 + 8));
          v168 = type metadata accessor for Date();
          (*(*(v168 - 8) + 8))(v167, v168);
          v163 = 0xE400000000000000;
          v164 = 1702125924;
          if (!*(v104 + 16))
          {
            goto LABEL_111;
          }
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v164, v163);
        v173 = v172;

        if ((v173 & 1) == 0)
        {
          goto LABEL_112;
        }

LABEL_135:
        outlined init with copy of Column(v161, v444, type metadata accessor for Column);
        v198 = swift_getEnumCaseMultiPayload();
        if (v198 > 2)
        {
          if (v198 == 3)
          {
            outlined destroy of Column(v444, type metadata accessor for Column);
            v199 = 0xE600000000000000;
            v200 = 0x726564616568;
          }

          else if (v198 == 4)
          {
            outlined destroy of Column(v444, type metadata accessor for Column);
            v199 = 0xE400000000000000;
            v200 = 1936154996;
          }

          else
          {
            outlined destroy of Column(v444, type metadata accessor for Column);
            v200 = 0x6956737574617473;
            v199 = 0xEA00000000007765;
          }
        }

        else if (v198)
        {
          if (v198 == 1)
          {
            outlined destroy of Column(v444, type metadata accessor for Column);
            v199 = 0xE600000000000000;
            v200 = 0x676E69727473;
          }

          else
          {
            v205 = v444;

            outlined consume of LeadingBadge?(v205[1], v205[2], v205[3], v205[4], v205[5], v205[6]);
            v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
            v207 = v206[16];

            outlined destroy of Column(v205 + v207, type metadata accessor for LeadingTitle);
            v200 = 0x56676E696461656CLL;
            v199 = 0xEB00000000776569;
          }
        }

        else
        {
          v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

          v202 = *(v201 + 64);
          v203 = v444;
          outlined consume of ColumnType(*(v444 + v202), *(v444 + v202 + 8));
          v204 = type metadata accessor for Date();
          (*(*(v204 - 8) + 8))(v203, v204);
          v199 = 0xE400000000000000;
          v200 = 1702125924;
        }

        v208 = swift_isUniquelyReferenced_nonNull_native();
        *&v453 = v104;
        v210 = specialized __RawDictionaryStorage.find<A>(_:)(v200, v199);
        v211 = v104;
        v212 = *(v104 + 16);
        v213 = (v209 & 1) == 0;
        v214 = v212 + v213;
        if (__OFADD__(v212, v213))
        {
          goto LABEL_238;
        }

        v215 = v209;
        if (*(v211 + 24) >= v214)
        {
          v161 = v443;
          if (v208)
          {
            if ((v209 & 1) == 0)
            {
              goto LABEL_157;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v215 & 1) == 0)
            {
              goto LABEL_157;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v214, v208);
          v216 = specialized __RawDictionaryStorage.find<A>(_:)(v200, v199);
          if ((v215 & 1) != (v217 & 1))
          {
            goto LABEL_338;
          }

          v210 = v216;
          v161 = v443;
          if ((v215 & 1) == 0)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }
        }

        v104 = v453;
        v218 = *(*(v453 + 56) + 8 * v210);

        if (__OFADD__(v218, 1))
        {
          goto LABEL_239;
        }

        ++v160;
        *(*(v104 + 56) + 8 * v210) = v218 + 1;
        outlined destroy of Column(v161, type metadata accessor for Column);
        v159 = v435;
        if (v446 == v160)
        {
          goto LABEL_159;
        }
      }
    }

    v104 = 0;
    v436 = (v145 + 4);
    while (v104 < v145[2])
    {
      v151 = v145;
      v452 = *&v436[16 * v104];
      LOBYTE(v453) = v437;
      *(&v453 + 1) = *(&v437 + 1);
      v454 = v439;
      v455 = v144;
      v456 = v438;
      v152 = *(&v452 + 1);
      v153 = v452;
      outlined copy of ColumnType(v452, *(&v452 + 1));
      DOCItemRowView.createColumn(for:with:)(&v452, &v453, v446);
      outlined consume of ColumnType(v153, v152);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v150[2] + 1, 1, v150);
      }

      v155 = v150[2];
      v154 = v150[3];
      if (v155 >= v154 >> 1)
      {
        v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v154 > 1, v155 + 1, 1, v150);
      }

      ++v104;
      v150[2] = v155 + 1;
      outlined init with take of Column(v446, v150 + ((*(v447 + 80) + 32) & ~*(v447 + 80)) + *(v447 + 72) * v155);
      v144 = v442;
      v145 = v151;
      if (v149 == v104)
      {
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      swift_once();
LABEL_160:
      swift_beginAccess();
      v219 = static Column.allCases;
      v220 = *(static Column.allCases + 16);
      v445 = v104;
      if (!v220)
      {
        goto LABEL_211;
      }

      v443 = (static Column.allCases + ((*(v447 + 80) + 32) & ~*(v447 + 80)));
      v441 = v440 + 1;
      v446 = v31 + 8;

      v142 = 0;
      v436 = v219;
      v435 = v220;
LABEL_164:
      if (v142 >= *(v219 + 2))
      {
        continue;
      }

      break;
    }

    v221 = v448;
    outlined init with copy of Column(v443 + *(v447 + 72) * v142, v448, type metadata accessor for Column);
    outlined init with copy of Column(v221, v440, type metadata accessor for Column);
    v222 = swift_getEnumCaseMultiPayload();
    v444 = v142;
    if (v222 > 2)
    {
      if (v222 == 3)
      {
        outlined destroy of Column(v440, type metadata accessor for Column);
        v223 = 0xE600000000000000;
        v224 = 0x726564616568;
      }

      else if (v222 == 4)
      {
        outlined destroy of Column(v440, type metadata accessor for Column);
        v223 = 0xE400000000000000;
        v224 = 1936154996;
      }

      else
      {
        outlined destroy of Column(v440, type metadata accessor for Column);
        v224 = 0x6956737574617473;
        v223 = 0xEA00000000007765;
      }
    }

    else if (v222)
    {
      if (v222 == 1)
      {
        outlined destroy of Column(v440, type metadata accessor for Column);
        v223 = 0xE600000000000000;
        v224 = 0x676E69727473;
      }

      else
      {
        v142 = v440;

        outlined consume of LeadingBadge?(*(v142 + 8), *(v142 + 16), *(v142 + 24), *(v142 + 32), *(v142 + 40), *(v142 + 48));
        v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
        v230 = v229[16];

        outlined destroy of Column(v142 + v230, type metadata accessor for LeadingTitle);
        v224 = 0x56676E696461656CLL;
        v223 = 0xEB00000000776569;
      }
    }

    else
    {
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

      v226 = *(v225 + 64);
      v227 = v440;
      outlined consume of ColumnType(*(v440 + v226), *(v440 + v226 + 8));
      v228 = type metadata accessor for Date();
      (*(*(v228 - 8) + 8))(v227, v228);
      v223 = 0xE400000000000000;
      v224 = 1702125924;
    }

    if (v445[2])
    {
      v231 = specialized __RawDictionaryStorage.find<A>(_:)(v224, v223);
      if (v232)
      {
        v233 = *(v2 + v98);
        if (!*(v233 + 16))
        {
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          swift_unknownObjectRelease();

          v138 = &_ss7KeyPathCy26DocumentManagerExecutables18CreateFolderIntentV10AppIntents0H9ParameterCySSSgGGMd;
          continue;
        }

        v234 = *(v445[7] + 8 * v231);
        while (2)
        {

          v235 = specialized __RawDictionaryStorage.find<A>(_:)(v224, v223);
          if ((v236 & 1) == 0)
          {
            goto LABEL_232;
          }

          v237 = *(*(v233 + 56) + 8 * v235);

          v238 = *(v237 + 16);

          if (v238 >= v234)
          {
            outlined destroy of Column(v448, type metadata accessor for Column);

            v219 = v436;
            v220 = v435;
            goto LABEL_163;
          }

          outlined init with copy of Column(v448, v31, type metadata accessor for Column);
          v239 = swift_getEnumCaseMultiPayload();
          if (v239 > 2)
          {
            if (v239 == 3)
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v240 = &_s26DocumentManagerExecutables16OutlineContainerCyAA6HeaderVGMd;
            }

            else if (v239 == 4)
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v240 = &_s26DocumentManagerExecutables16OutlineContainerCyAA7TagViewVGMd;
            }

            else
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v240 = &_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMd;
            }

LABEL_193:
            v249 = __swift_instantiateConcreteTypeFromMangledNameV2(v240);
            v250 = [objc_allocWithZone(v249) init];
            v455 = v249;
            v456 = &protocol witness table for OutlineContainer<A>;
            *&v453 = v250;
          }

          else if (v239)
          {
            if (v239 == 1)
            {
              outlined destroy of Column(v31, type metadata accessor for Column);
              v240 = &_s26DocumentManagerExecutables16OutlineContainerCyAA0D10ColumnViewVGMd;
              goto LABEL_193;
            }

            outlined consume of LeadingBadge?(*(v31 + 1), *(v31 + 2), *(v31 + 3), *(v31 + 4), *(v31 + 5), *(v31 + 6));
            v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
            v246 = v245[16];

            v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA11LeadingViewVGMd);
            v248 = [objc_allocWithZone(v247) init];
            v455 = v247;
            v456 = &protocol witness table for OutlineContainer<A>;
            *&v453 = v248;
            outlined destroy of Column(&v31[v246], type metadata accessor for LeadingTitle);
          }

          else
          {
            v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

            outlined consume of ColumnType(*&v31[*(v241 + 64)], *&v31[*(v241 + 64) + 8]);
            v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA8DateViewVGMd);
            v243 = [objc_allocWithZone(v242) init];
            v455 = v242;
            v456 = &protocol witness table for OutlineContainer<A>;
            *&v453 = v243;
            v244 = type metadata accessor for Date();
            (*(*(v244 - 8) + 8))(v31, v244);
          }

          swift_beginAccess();
          v251 = swift_isUniquelyReferenced_nonNull_native();
          v451 = *(v2 + v98);
          v252 = v451;
          *(v2 + v98) = 0x8000000000000000;
          v142 = specialized __RawDictionaryStorage.find<A>(_:)(v224, v223);
          v254 = *(v252 + 16);
          v255 = (v253 & 1) == 0;
          v256 = v254 + v255;
          if (__OFADD__(v254, v255))
          {
            goto LABEL_233;
          }

          v257 = v253;
          if (*(v252 + 24) >= v256)
          {
            if (v251)
            {
              if ((v253 & 1) == 0)
              {
                goto LABEL_234;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              if ((v257 & 1) == 0)
              {
                goto LABEL_234;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v256, v251);
            v258 = specialized __RawDictionaryStorage.find<A>(_:)(v224, v223);
            if ((v257 & 1) != (v259 & 1))
            {
              goto LABEL_338;
            }

            v142 = v258;
            if ((v257 & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          v260 = *(*(v451 + 56) + 8 * v142);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v260[2] + 1, 1, v260);
          }

          v262 = v260[2];
          v261 = v260[3];
          if (v262 >= v261 >> 1)
          {
            v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v262 + 1, 1, v260);
          }

          v260[2] = v262 + 1;
          outlined init with take of DOCGoToFolderCandidate(&v453, &v260[5 * v262 + 4]);
          v263 = v451;
          *(*(v451 + 56) + 8 * v142) = v260;
          *(v2 + v98) = v263;
          swift_endAccess();
          v233 = *(v2 + v98);
          if (!*(v233 + 16))
          {
            goto LABEL_231;
          }

          continue;
        }
      }
    }

    break;
  }

  outlined destroy of Column(v448, type metadata accessor for Column);
LABEL_163:
  v142 = v444 + 1;
  v104 = v445;
  if ((v444 + 1) != v220)
  {
    goto LABEL_164;
  }

LABEL_211:
  v450 = *(v2 + v98);

  v265 = (v419)(v264);
  v266 = v411;
  v267 = specialized Sequence.compactMap<A>(_:)(v265, &v450);
  v449 = v266;

  v65 = MEMORY[0x277D85000];
  v268 = (*((*MEMORY[0x277D85000] & *v2) + 0x1B0))(v267);
  v269 = v410(v268);
  v270 = *(v269 + 16);
  if (v270)
  {
    v451 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v270, 0);
    v271 = v451;
    v272 = *((*v65 & *v2) + 0x178);
    v448 = v269;
    v273 = v269 + 32;
    do
    {
      v274 = outlined init with copy of DOCSidebarItemIconProvider(v273, &v453);
      v275 = v272(v274);
      v277 = v455;
      v276 = v456;
      __swift_project_boxed_opaque_existential_1(&v453, v455);
      v278 = (v276[1])(v277, v276);
      [v275 addSubview_];

      v279 = v455;
      v280 = v456;
      __swift_project_boxed_opaque_existential_1(&v453, v455);
      v281 = (v280[1])(v279, v280);
      [v281 setHidden_];

      __swift_destroy_boxed_opaque_existential_0(&v453);
      v451 = v271;
      v283 = *(v271 + 16);
      v282 = *(v271 + 24);
      v284 = v283 + 1;
      if (v283 >= v282 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v282 > 1), v283 + 1, 1);
        v271 = v451;
      }

      *(v271 + 16) = v284;
      v273 += 40;
      --v270;
    }

    while (v270);

    v65 = MEMORY[0x277D85000];
  }

  else
  {
  }

  if ((v416 & 1) == 0)
  {

LABEL_325:

    goto LABEL_326;
  }

  LOBYTE(v453) = v437;
  *(&v453 + 1) = *(&v437 + 1);
  v454 = v439;
  v455 = v442;
  v456 = v438;
  OutlineColumnData.selectableColumnTypes.getter();
  v448 = v285;
  v286 = (*v65 & *v2) + 736;
  v287 = *((*v65 & *v2) + 0x2E0);
  v288 = v287();
  v289 = v288;
  if (v288 >> 62)
  {
    v290 = __CocoaSet.count.getter();
    if (!v290)
    {
      goto LABEL_247;
    }

LABEL_221:
    *&v453 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v290 & ~(v290 >> 63), 0);
    if (v290 < 0)
    {
      goto LABEL_335;
    }

    v291 = 0;
    v292 = v453;
    do
    {
      if ((v289 & 0xC000000000000001) != 0)
      {
        v293 = MEMORY[0x24C1FC540](v291, v289);
      }

      else
      {
        v293 = *(v289 + 8 * v291 + 32);
      }

      v294 = v293;
      [v293 setHidden_];

      *&v453 = v292;
      v296 = *(v292 + 16);
      v295 = *(v292 + 24);
      v297 = v296 + 1;
      if (v296 >= v295 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v295 > 1), v296 + 1, 1);
        v292 = v453;
      }

      ++v291;
      *(v292 + 16) = v297;
    }

    while (v290 != v291);
  }

  else
  {
    v290 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v290)
    {
      goto LABEL_221;
    }

LABEL_247:
  }

  v299 = ((*MEMORY[0x277D85000] & *v2) + 544);
  v440 = *((*MEMORY[0x277D85000] & *v2) + 0x220);
  v436 = v299;
  v300 = (v440)(v298);
  if (v300)
  {
    v301 = v419();
    v302 = v301[2];
    v446 = v286;
    if (v302)
    {
      *&v453 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v303 = 0;
      v304 = v301 + ((*(v447 + 80) + 32) & ~*(v447 + 80));
      v444 = v301;
      v305 = v301[2];
      do
      {
        if (v305 == v303)
        {
          goto LABEL_329;
        }

        v314 = v432;
        v315 = *(v432 + 48);
        v316 = v428;
        outlined init with copy of Column(&v304[*(v447 + 72) * v303], &v428[v315], type metadata accessor for Column);
        v317 = v433;
        *v433 = v303;
        v318 = outlined init with take of Column(&v316[v315], v317 + *(v314 + 48));
        v319 = (v287)(v318);
        if (v319 >> 62)
        {
          v320 = __CocoaSet.count.getter();
        }

        else
        {
          v320 = *((v319 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v303 >= v320)
        {
          type metadata accessor for Dragging(0);
          v306 = swift_allocObject();
          *(v306 + 16) = 0;
          ObservationRegistrar.init()();
          KeyPath = swift_getKeyPath();
          v308 = v421;
          *&v421[*(v422 + 24)] = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
          swift_storeEnumTagMultiPayload();
          *v308 = v303;
          v308[1] = v306;
          v309 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables13DragIndicatorVGMd));
          v310 = _UIHostingView.init(rootView:)();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle);
          v311 = v310;
          static UIHoverEffect<>.lift.getter();
          v312 = type metadata accessor for UIShape();
          (*(*(v312 - 8) + 56))(v425, 1, 1, v312);
          v313 = UIHoverStyle.init<A>(effect:shape:)();
          [v311 setHoverStyle_];
        }

        else
        {
          v322 = (v287)(v321);
          if ((v322 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FC540](v303, v322);
          }

          else
          {
            if (v303 >= *((v322 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_333;
            }

            v323 = *(v322 + 8 * v303 + 32);
          }
        }

        ++v303;
        outlined destroy of CharacterSet?(v433, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMd);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v302 != v303);

      v324 = v453;
    }

    else
    {

      v324 = MEMORY[0x277D84F90];
    }

    v325 = MEMORY[0x277D85000];
    v326 = (*((*MEMORY[0x277D85000] & *v2) + 0x2E8))(v324);
    v327 = (v419)(v326);
    v328 = *(v327 + 16);
    if (v328)
    {
      *&v453 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v328, 0);
      v329 = v453;
      v330 = *(v327 + 16);
      v443 = ((*v325 & *v2) + 376);
      v441 = *v443;
      v331 = *(v447 + 80);
      v435 = v327;
      v444 = (v327 + ((v331 + 32) & ~v331));
      v332 = 4;
      do
      {
        if (!v330)
        {
          goto LABEL_330;
        }

        v333 = v332 - 4;
        v334 = v432;
        v335 = *(v432 + 48);
        v336 = v427;
        outlined init with copy of Column(v444 + *(v447 + 72) * (v332 - 4), &v427[v335], type metadata accessor for Column);
        v337 = v431;
        *v431 = v332 - 4;
        v338 = outlined init with take of Column(&v336[v335], v337 + *(v334 + 48));
        v339 = (v287)(v338);
        if ((v339 & 0xC000000000000001) != 0)
        {
          v340 = MEMORY[0x24C1FC540](v332 - 4, v339);
        }

        else
        {
          if (v333 >= *((v339 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_331;
          }

          v340 = *(v339 + 8 * v332);
        }

        v341 = v340;

        [v341 setHidden_];

        v342 = (v441)();
        v343 = v287();
        if ((v343 & 0xC000000000000001) != 0)
        {
          v344 = MEMORY[0x24C1FC540](v332 - 4, v343);
        }

        else
        {
          if (v333 >= *((v343 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_332;
          }

          v344 = *(v343 + 8 * v332);
        }

        v345 = v344;

        [v342 addSubview_];

        outlined destroy of CharacterSet?(v431, &_sSi6offset_26DocumentManagerExecutables6ColumnO7elementtMd);
        *&v453 = v329;
        v347 = *(v329 + 16);
        v346 = *(v329 + 24);
        v348 = v347 + 1;
        if (v347 >= v346 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v346 > 1), v347 + 1, 1);
          v329 = v453;
        }

        *(v329 + 16) = v348;
        --v330;
        ++v332;
        --v328;
      }

      while (v328);
    }

    else
    {
    }
  }

  v65 = MEMORY[0x277D85000];
  v349 = *((*MEMORY[0x277D85000] & *v2) + 0x298);
  v350 = (*MEMORY[0x277D85000] & *v2) + 664;
  v351 = (v349)(v300);
  if (v351)
  {
  }

  else
  {
    v352 = (*((*v65 & *v2) + 0x2A0))([objc_allocWithZone(MEMORY[0x277D75220]) init]);
    v353 = (v349)(v352);
    if (v353)
    {
      v354 = v353;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle);
      static UIHoverEffect<>.automatic.getter();
      v355 = type metadata accessor for UIShape();
      (*(*(v355 - 8) + 56))(v425, 1, 1, v355);
      v356 = UIHoverStyle.init<A>(effect:shape:)();
      [v354 setHoverStyle_];
    }

    static UIButton.Configuration.plain()();
    v357 = MEMORY[0x24C1FAD20](0x73697370696C6C65, 0xE800000000000000);
    v358 = [objc_opt_self() systemImageNamed_];

    v359 = v429;
    UIButton.Configuration.image.setter();
    v360 = [objc_opt_self() tintColor];
    v361 = UIButton.Configuration.baseForegroundColor.setter();
    v362 = (v349)(v361);
    if (v362)
    {
      v363 = v362;
      v364 = v417;
      v365 = v414;
      v366 = v359;
      v367 = v418;
      (*(v417 + 16))(v414, v366, v418);
      v368 = v367;
      v359 = v429;
      (*(v364 + 56))(v365, 0, 1, v368);
      UIButton.configuration.setter();
    }

    v369 = v349();
    if (v369)
    {
      v370 = v369;
      [v369 setShowsMenuAsPrimaryAction_];
    }

    v371 = v349();
    if (v371)
    {
      v372 = v371;
      v373 = objc_opt_self();
      v374 = MEMORY[0x24C1FAD20](1701998445, 0xE400000000000000);
      v375 = [v373 sortByHeaderButtonForSortIdentifier:v374 ascending:0 active:0];

      if (!v375)
      {
        v376 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v375 = MEMORY[0x24C1FAD20](v376);
      }

      [v372 setAccessibilityIdentifier_];

      v359 = v429;
    }

    (*(v417 + 8))(v359, v418);
  }

  v377 = MEMORY[0x277D84F90];
  v451 = MEMORY[0x277D84F90];
  v378 = v448;
  v447 = *(v448 + 16);
  if (!v447)
  {
LABEL_320:

    v395 = (v349)(v394);
    if (v395)
    {
      v396 = v395;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);

      v397._countAndFlagsBits = 0;
      v397._object = 0xE000000000000000;
      v457.value.super.isa = 0;
      v457.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v398, v397, 0, v457, 0, 0xFFFFFFFFFFFFFFFFLL, v377, v408);
      v400 = v399;
      [v396 setMenu_];
    }

    v401 = v349();
    if (!v401)
    {
      goto LABEL_337;
    }

    v402 = v401;

    [v2 addSubview_];

    v403 = v349();
    if (v403)
    {
      v404 = v403;
      [v403 setHidden_];
    }

    goto LABEL_325;
  }

  v434 = v350;
  v435 = v349;
  v379 = 0;
  v446 = (v448 + 32);
  v443 = 0x8000000249BE7B30;
  v444 = 0x8000000249BE7B50;
  v441 = 0x8000000249BE7B70;
  while (v379 < *(v378 + 16))
  {
    v453 = *&v446[16 * v379];
    v380 = *(&v453 + 1);
    v381 = v453;
    outlined copy of ColumnType(v453, *(&v453 + 1));
    if (!*(ColumnType.localizedStrings()() + 2))
    {
      goto LABEL_336;
    }

    if (v380 > 4)
    {
      if (v380 <= 6)
      {
        if (v380 == 5)
        {
          v383 = 0xD000000000000018;
          v382 = v443;
        }

        else
        {
          v382 = 0xE900000000000065;
          v383 = 0x69702E7472616863;
        }

        goto LABEL_316;
      }

      if (v380 == 7)
      {
        v382 = 0xE300000000000000;
        v383 = 6775156;
      }

      else
      {
        if (v380 != 8)
        {
LABEL_315:
          v383 = 0;
          v382 = 0xE000000000000000;
          goto LABEL_316;
        }

        v382 = 0xE500000000000000;
        v383 = 0x64756F6C63;
      }
    }

    else
    {
      if (v380 > 2)
      {
        if (v380 == 3)
        {
          v383 = 0xD000000000000014;
          v382 = v441;
          goto LABEL_316;
        }
      }

      else
      {
        if (v380 == 1)
        {
          v382 = 0xE800000000000000;
          v383 = 0x7261646E656C6163;
          goto LABEL_316;
        }

        if (v380 != 2)
        {
          goto LABEL_315;
        }
      }

      v383 = 0xD000000000000013;
      v382 = v444;
    }

LABEL_316:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v384 = objc_opt_self();
    v385 = MEMORY[0x24C1FAD20](v383, v382);

    v386 = [v384 _systemImageNamed_withConfiguration_];

    v387 = swift_allocObject();
    *(v387 + 2) = v2;
    *(v387 + 3) = v381;
    *(v387 + 4) = v380;
    outlined copy of ColumnType(v381, v380);
    v388 = v2;
    v406[1] = partial apply for closure #1 in closure #10 in DOCItemRowView.update(with:);
    v407 = v387;
    v406[0] = 0;
    v389 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    *&v453 = v381;
    *(&v453 + 1) = v380;
    MEMORY[0x28223BE20](v389, v390);
    v407 = &v453;
    v391 = v449;
    v392 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0, v406, v442);
    v449 = v391;
    [v389 setState_];
    v393 = outlined consume of ColumnType(v381, v380);
    MEMORY[0x24C1FB090](v393);
    if (*((v451 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v451 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v379;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v65 = MEMORY[0x277D85000];
    v378 = v448;
    if (v447 == v379)
    {
      v377 = v451;
      v349 = v435;
      goto LABEL_320;
    }
  }

  __break(1u);
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:

  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.updateWantsDisclosureButton()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = *((*MEMORY[0x277D85000] & *v2) + 0x3D0);
    v5 = v2;
    v6 = v4();
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v9 = *(*(v0 + v8) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
      v10 = *((*v3 & *v5) + 0x448);

      v12 = v10(v11);
      (*(*v9 + 264))(v12 & 1);

      v13 = *(*(v0 + v8) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);

      if (v10(v14) & 1) != 0 && ((*((*MEMORY[0x277D85000] & *v5) + 0x800))())
      {
        v15 = [v7 isBrowsable];
        if (v15)
        {
          v15 = [v7 isFullyFormed];
        }
      }

      else
      {
        v15 = 0;
      }

      (*(*v13 + 216))(v15);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t closure #5 in DOCItemRowView.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = Column.localizedString()();
  if (!*(*a2 + 16))
  {

    goto LABEL_9;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v7._countAndFlagsBits, v7._object);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v11 = Column.localizedString()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *a2;
  v13 = v29;
  *a2 = 0x8000000000000000;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11._countAndFlagsBits, v11._object);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v3) = v14;
  if (*(v13 + 24) < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v11._countAndFlagsBits, v11._object);
    if ((v3 & 1) != (v20 & 1))
    {
LABEL_27:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v15 = v19;
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  while (1)
  {
    v3 = *(*(v29 + 56) + 8 * v15);
    if (v3[2])
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    specialized _NativeDictionary.copy()();
    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  outlined init with copy of DOCSidebarItemIconProvider((v3 + 4), v26);
  v21 = v3[2];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  if (v22 && (v21 - 1) <= v3[3] >> 1)
  {
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    goto LABEL_18;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v21, 1, v3);
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  if (v3)
  {
LABEL_18:

    v23 = v29;
    *(*(v29 + 56) + 8 * v15) = v3;
  }

  else
  {

    v23 = v29;
    outlined destroy of String(*(v29 + 48) + 16 * v15);
    specialized _NativeDictionary._delete(at:)(v15, v23);
  }

  *a2 = v23;
  v24 = v27;
  v25 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v25 + 40))(a1, v24, v25);
  outlined init with copy of DOCSidebarItemIconProvider(v26, a3);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

void (*closure #1 in closure #10 in DOCItemRowView.update(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4))(void *)
{
  result = (*((*MEMORY[0x277D85000] & *a2) + 0x2C8))();
  if (result)
  {
    v7 = result;
    v8[0] = a3;
    v8[1] = a4;
    result(v8);
    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
  }

  return result;
}

Swift::Void __swiftcall DOCItemRowView.setFrames()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A8);
  v3 = *(v2() + 16);

  if (v3 == 1)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      [v1 bounds];
      Width = CGRectGetWidth(v92);
      v8 = v2();
      if (*(v8 + 16))
      {
        outlined init with copy of DOCSidebarItemIconProvider(v8 + 32, &v87);

        outlined init with take of DOCGoToFolderCandidate(&v87, v88);
        v9 = v89;
        v10 = v90;
        __swift_project_boxed_opaque_existential_1(v88, v89);
        [v1 bounds];
        Height = CGRectGetHeight(v93);
        (*(v10 + 16))(v9, v10, Width, Height);
        v12 = v89;
        v13 = v90;
        __swift_project_boxed_opaque_existential_1(v88, v89);
        v14 = (*(v13 + 8))(v12, v13);
        [v1 bounds];
        CGRectGetHeight(v94);
        v15 = DOCGridLayout.specIconWidth.modify(0.0, 0.0);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
        {
          v95.origin.x = v15;
          v95.origin.y = v17;
          v95.size.width = v19;
          v95.size.height = v21;
          MinX = CGRectGetMinX(v95);
          [v1 bounds];
          v23 = MinX - CGRectGetMinX(v96);
          [v1 bounds];
          MaxX = CGRectGetMaxX(v97);
          v98.origin.x = v15;
          v98.origin.y = v17;
          v98.size.width = v19;
          v98.size.height = v21;
          v15 = MaxX - (v23 + CGRectGetWidth(v98));
        }

        [v14 setFrame_];

        __swift_destroy_boxed_opaque_existential_0(v88);
      }

      else
      {
LABEL_46:
      }

      return;
    }
  }

  v25 = (v2)(v4);
  v26 = *(v25 + 16);
  if (!v26)
  {

    return;
  }

  v27 = v25 + 32;
  v28 = 4;
  v85 = *((*MEMORY[0x277D85000] & *v1) + 0x1C0);
  v29 = 0.0;
  while (1)
  {
    v30 = outlined init with copy of DOCSidebarItemIconProvider(v27, v88);
    v85(&v87, v30);
    v31 = v87;
    if (!*(&v87 + 1))
    {
      outlined consume of OutlineColumnData?(v87, 0);
      goto LABEL_10;
    }

    v32 = v28 - 4;

    outlined consume of OutlineColumnData?(v31, *(&v31 + 1));
    if ((v28 - 4) >= *(*(&v31 + 1) + 16))
    {
      break;
    }

    v33 = *(*(&v31 + 1) + 8 * v28);

    if (v33 > 0.0)
    {
      [v1 bounds];
      v34 = CGRectGetHeight(v99);
      DOCGridLayout.specIconWidth.modify(v33, v34);
      if (v28 != 4)
      {
        v35 = v89;
        v36 = v90;
        __swift_project_boxed_opaque_existential_1(v88, v89);
        [v1 bounds];
        v37 = CGRectGetHeight(v100);
        (*(v36 + 16))(v35, v36, v33, v37);
      }

      [v1 bounds];
      CGRectGetHeight(v101);
      v38 = DOCGridLayout.specIconWidth.modify(v29, 0.0);
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = objc_opt_self();
      if ([v45 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v102.origin.x = v38;
        v102.origin.y = v40;
        v102.size.width = v42;
        v102.size.height = v44;
        v46 = CGRectGetMinX(v102);
        [v1 bounds];
        v47 = v29;
        v48 = v46 - CGRectGetMinX(v103);
        [v1 bounds];
        v49 = CGRectGetMaxX(v104);
        v105.origin.x = v38;
        v105.origin.y = v40;
        v105.size.width = v42;
        v105.size.height = v44;
        v50 = v48 + CGRectGetWidth(v105);
        v29 = v47;
        v38 = v49 - v50;
      }

      outlined init with copy of DOCSidebarItemIconProvider(v88, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables11ViewSizable_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables16OutlineContainerCyAA10StatusViewVGMd);
      if (swift_dynamicCast())
      {

        [v1 bounds];
        CGRectGetHeight(v106);
        DOCCenterSizeInRect();
        v38 = v51;
        v40 = v52;
        v42 = v53;
        v44 = v54;
      }

      v55 = 0.0;
      if ((*&v38 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v55 = v38;
      }

      v56 = (~*&v38 & 0x7FF0000000000000) != 0 ? v38 : v55;
      v57 = v89;
      v58 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      v59 = (*(v58 + 8))(v57, v58);
      [v59 setFrame_];

      v60 = *((*MEMORY[0x277D85000] & *v1) + 0x2E0);
      v61 = v60();
      v62 = v61 >> 62 ? __CocoaSet.count.getter() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = v29 + v33 + 4.0;

      if (v32 < v62)
      {
        v64 = (v60)(v63);
        v65 = v64 >> 62 ? __CocoaSet.count.getter() : *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v65 >= 1)
        {
          [v1 bounds];
          v66 = CGRectGetHeight(v107);
          if (one-time initialization token for headerColumnDividerSize != -1)
          {
            v84 = v66;
            swift_once();
            v66 = v84;
          }

          v67 = v29;
          v68 = DOCGridLayout.specIconWidth.modify(v29 + -24.0, (v66 - *&qword_27EF18E70) * 0.5);
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v75 = v60();
          if ((v75 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x24C1FC540](v28 - 4, v75);
          }

          else
          {
            if (v32 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v76 = *(v75 + 8 * v28);
          }

          v77 = v76;

          if ([v45 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
          {
            v108.origin.x = v68;
            v108.origin.y = v70;
            v108.size.width = v72;
            v108.size.height = v74;
            v78 = CGRectGetMinX(v108);
            [v1 bounds];
            v79 = v78 - CGRectGetMinX(v109);
            [v1 bounds];
            v80 = CGRectGetMaxX(v110);
            v111.origin.x = v68;
            v111.origin.y = v70;
            v111.size.width = v72;
            v111.size.height = v74;
            v68 = v80 - (v79 + CGRectGetWidth(v111));
          }

          [v77 setFrame_];

          v81 = v60();
          if ((v81 & 0xC000000000000001) != 0)
          {
            v82 = MEMORY[0x24C1FC540](v28 - 4, v81);
            v29 = v67;
          }

          else
          {
            if (v32 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v29 = v67;
            v82 = *(v81 + 8 * v28);
          }

          v83 = [v82 layer];

          [v83 setCornerRadius_];
        }
      }
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v88);
    v27 += 40;
    ++v28;
    if (!--v26)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t DOCItemRowView.createColumn(for:with:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables6ColumnOSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v27 - v9;
  v30 = type metadata accessor for Column(0);
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v29 = *a2;
  v17 = *(a2 + 2);
  v28 = *(a2 + 1);
  v33 = *(a2 + 24);
  outlined copy of ColumnType(v15, v16);

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC26DocumentManagerExecutables10ColumnTypeO_SayAFGTt0g5Tf4g_n(v18);

  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  swift_beginAccess();
  v20 = *(v4 + v19);
  v21 = *(v20 + 16);

  if (v21)
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v32, v17);
    if (v23)
    {
      v24 = v22;
      outlined consume of ColumnType(v15, v16);

      outlined init with copy of Column(*(v20 + 56) + *(v11 + 72) * v24, v14, type metadata accessor for Column);

      return outlined init with take of Column(v14, v31);
    }
  }

  v38[0] = v15;
  v38[1] = v16;
  v34[0] = v29;
  v35 = v28;
  v36 = v17;
  v37 = v33;
  v26 = v31;
  DOCItemRowView.createColumnUncached(for:with:)(v38, v34, v31);
  outlined init with copy of Column(v26, v10, type metadata accessor for Column);
  (*(v11 + 56))(v10, 0, 1, v30);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v15, v16, v32, v17);
  return swift_endAccess();
}

void DOCItemRowView.createColumnUncached(for:with:)(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v8, v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_isHeader) == 1)
  {
    v17 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v4) + 0x310))(&v67, v12);
    v18 = v68;
    if (!v68)
    {
      v30 = *((*v17 & *v4) + 0x220);
      v31 = outlined copy of ColumnType(v16, v15);
      v32 = v30(v31);
      v33 = (*((*v17 & *v4) + 0x328))();
      *a3 = v16;
      *(a3 + 8) = v15;
      *(a3 + 16) = 0;
LABEL_51:
      *(a3 + 17) = v32 & 1;
      *(a3 + 18) = v33 & 1;
      type metadata accessor for Column(0);
      goto LABEL_52;
    }

    v19 = v67;
    if ((v15 - 1) >= 8)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0x903040508010700uLL >> (8 * (v15 - 1));
    }

    if ((specialized == infix<A>(_:_:)(v67, v20) & 1) == 0)
    {
      outlined consume of DOCItemSortDescriptor?(v19, v18);
      v24 = 0;
      v34 = v16;
      if (!v15)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    if (v18 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_9:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x24C1FC540](0, v18);
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v21 = *(v18 + 32);
        }

        v22 = v21;
        v23 = [v21 ascending];

        outlined consume of DOCItemSortDescriptor?(v19, v18);
        if (v23)
        {
          v24 = 1;
          goto LABEL_45;
        }

LABEL_44:
        v24 = 2;
LABEL_45:
        v17 = MEMORY[0x277D85000];
        v34 = v16;
        if (!v15)
        {
LABEL_46:
          outlined consume of ColumnType(v34, 0);
          v54 = outlined consume of ColumnType(0, 0);
          v55 = *((*v17 & *v4) + 0x238);
          v56 = v55(v54);
          v58 = v57;

          v60 = HIBYTE(v58) & 0xF;
          if ((v58 & 0x2000000000000000) == 0)
          {
            v60 = v56 & 0xFFFFFFFFFFFFLL;
          }

          if (v60)
          {
            v61 = v55(v59);
            v63 = v62;
            v32 = (*((*v17 & *v4) + 0x220))();
            v33 = (*((*v17 & *v4) + 0x328))();
            *a3 = v61;
            *(a3 + 8) = v63;
            goto LABEL_50;
          }

LABEL_23:
          v35 = *((*v17 & *v4) + 0x220);
          v36 = outlined copy of ColumnType(v16, v15);
          v32 = v35(v36);
          v33 = (*((*v17 & *v4) + 0x328))();
          *a3 = v16;
          *(a3 + 8) = v15;
LABEL_50:
          *(a3 + 16) = v24;
          goto LABEL_51;
        }

LABEL_22:
        outlined copy of ColumnType(v34, v15);
        outlined consume of ColumnType(v16, v15);
        outlined consume of ColumnType(0, 0);
        goto LABEL_23;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    outlined consume of DOCItemSortDescriptor?(v19, v18);
    goto LABEL_44;
  }

  v66 = v11;
  v25 = *a2;
  v26 = *(a2 + 8);
  v64 = *(a2 + 24);
  v65 = v26;
  v27 = MEMORY[0x277D85000];
  v28 = (*((*MEMORY[0x277D85000] & *v4) + 0x280))();
  if (!v28)
  {
    *a3 = 45;
    *(a3 + 8) = 0xE100000000000000;
LABEL_32:
    type metadata accessor for Column(0);
LABEL_52:

    swift_storeEnumTagMultiPayload();
    return;
  }

  v29 = v28;
  if (v15 <= 4)
  {
    if ((v15 - 1) < 4)
    {
      v67 = v16;
      *&v68 = v15;
      DOCItemRowView.createDateColumn(_:)(&v67, a3);
LABEL_18:

      return;
    }

    if (!v15)
    {
      LOBYTE(v67) = v25;
      v68 = v65;
      v69 = v64;
      DOCItemRowView.createLeadingViewColumn(with:)(&v67, a3);
      goto LABEL_18;
    }

LABEL_40:

    *a3 = 45;
    *(a3 + 8) = 0xE100000000000000;
    goto LABEL_32;
  }

  if (v15 <= 6)
  {
    if (v15 == 5)
    {
      v37 = (*((*v27 & *v28) + 0x778))();
    }

    else
    {
      v37 = (*((*v27 & *v28) + 0x758))();
    }

    v40 = v37;
    v41 = v38;

    *a3 = v40;
    *(a3 + 8) = v41;
    goto LABEL_32;
  }

  if (v15 != 7)
  {
    if (v15 == 8)
    {
      v39 = (*((*v27 & *v28) + 0xAA0))(&v67);
      if (v67 <= 9u && ((1 << v67) & 0x341) != 0)
      {

        *a3 = 0;
      }

      else
      {
        v53 = (*((*v27 & *v4) + 0x388))(v39);

        *a3 = v53;
      }

      goto LABEL_32;
    }

    goto LABEL_40;
  }

  *&v65 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView);
  (*((*v27 & *v28) + 0x7E0))();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v65 setTags_];

  v43 = [objc_opt_self() preferredFontForTextStyle_];
  v44 = [v4 traitCollection];
  [v44 displayScale];
  v46 = v45;

  [v43 capHeight];
  v48 = v47 * 0.5;
  (*(v9 + 104))(v14, *MEMORY[0x277D84688], v66);
  v49 = specialized CGFloat.init(_:roundedBy:inScale:)(v14, v48, v46);

  v50 = fmax(v49, 5.0);
  [v65 setTagDimension_];

  *a3 = v65;
  type metadata accessor for Column(0);
  swift_storeEnumTagMultiPayload();
  v51 = v65;

  v52 = v51;
}

uint64_t DOCItemRowView.createLeadingViewColumn(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v132 = *(v6 - 8);
  v133.i64[0] = v6;
  MEMORY[0x28223BE20](v6, v7);
  v131 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString();
  v138 = *(v9 - 8);
  v139 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v137 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v136 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v127 - v17;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v140 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LeadingTitle(0);
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23, v24);
  v143 = (&v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = *(a1 + 24);
  v27 = MEMORY[0x277D85000];
  v28 = (*((*MEMORY[0x277D85000] & *v3) + 0x280))(v25);
  if (!v28)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
    v37 = (a2 + v36[16]);
    v38 = (a2 + v36[20]);
    v39 = a2;
    v40 = v36[24];
    v41 = v27;
    v42 = v36[28];
    v43 = v36[32];
    v44 = v36[40];
    v142 = v36[36];
    v143 = v44;
    v45 = v3;
    v46 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView);
    *v39 = v46;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *(v39 + 40) = 0;
    *(v39 + 48) = 1;
    *v37 = 0;
    v37[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    *v38 = 0;
    v38[1] = 0;
    *(v39 + v40) = (*((*v41 & *v45) + 0x2F8))(v46);
    *(v39 + v42) = 0;
    *(v39 + v43) = 0;
    *(v39 + v142) = *(v45 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
    type metadata accessor for OutlineProgressStateReference();
    v47 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    *(v143 + v39) = v47;
    type metadata accessor for Column(0);
    swift_storeEnumTagMultiPayload();
  }

  v29 = v28;
  v134.i64[0] = v23;
  (*((*v27 & *v28) + 0x4A8))();
  v30 = (*(v20 + 48))(v18, 1, v19);
  v141 = v3;
  v31 = v27;
  v135 = a2;
  if (v30 == 1)
  {
    v32 = outlined destroy of CharacterSet?(v18, &_s10Foundation8IndexSetVSgMd);
    v33 = (*((*v27 & *v29) + 0x640))(v32);
    v34 = v143;
    *v143 = v33;
    v34[1] = v35;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v129 = v20;
    v130 = v19;
    v48 = (*(v20 + 32))(v140, v18, v19);
    (*((*v27 & *v29) + 0x2F0))(&v144, v48);
    v171 = v148;
    v172 = v149;
    v173 = v150;
    v174 = v151;
    v167 = v144;
    v168 = v145;
    v169 = v146;
    v170 = v147;
    v49 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v167);
    v50 = v143;
    v157 = v148;
    v158 = v149;
    v159 = v150;
    v160 = v151;
    v153 = v144;
    v154 = v145;
    v155 = v146;
    v156 = v147;
    if (v49 == 1)
    {
      outlined destroy of CharacterSet?(&v153, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
      v51 = [objc_opt_self() preferredFontForTextStyle_];
    }

    else
    {
      v51 = v144;
      outlined destroy of CharacterSet?(&v153, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
    }

    v52 = (*((*v31 & *v29) + 0x640))();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_249B9A480;
    v56 = *MEMORY[0x277D740A8];
    *(v55 + 32) = *MEMORY[0x277D740A8];
    *(v55 + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
    *(v55 + 40) = v51;
    v57 = v56;
    v128 = v51;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v55);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v55 + 32, &_sSo21NSAttributedStringKeya_yptMd);
    swift_deallocClassInstance();
    v58 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v59 = MEMORY[0x24C1FAD20](v52, v54);

    type metadata accessor for NSAttributedStringKey(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v61 = [v58 initWithString:v59 attributes:isa];

    v63 = v129;
    v62 = v130;
    v64 = v136;
    v65 = v140;
    (*(v129 + 16))(v136, v140, v130);
    v66 = (*(v63 + 56))(v64, 0, 1, v62);
    v67 = (*((*MEMORY[0x277D85000] & *v29) + 0x670))(v66);
    applyHighlighting(to:indexSet:color:)(v61, v64, v67);

    outlined destroy of CharacterSet?(v64, &_s10Foundation8IndexSetVSgMd);
    v68 = v137;
    v31 = MEMORY[0x277D85000];
    AttributedString.init(_:)();

    (*(v63 + 8))(v65, v62);
    (*(v138 + 32))(v50, v68, v139);
    swift_storeEnumTagMultiPayload();
    v3 = v141;
  }

  v69 = v142;
  v70 = (*((*v31 & *v29) + 0xA58))(v142);
  v138 = v71;
  v139 = v70;
  v167 = xmmword_249BAFCB0;
  MEMORY[0x28223BE20](v70, v71);
  *(&v127 - 2) = &v167;
  if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v127 - 4), v69) & 1) == 0)
  {
    v72 = *((*v31 & *v29) + 0x7E0);
    v73 = v72();
    if (v73 >> 62)
    {
      v87 = __CocoaSet.count.getter();

      if (v87)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v74)
      {
LABEL_12:
        v137 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView2);
        v75 = v31;
        v76 = v137;
        v72();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
        v77 = Array._bridgeToObjectiveC()().super.isa;

        [v76 setTags_];

        v78 = [objc_opt_self() preferredFontForTextStyle_];
        v79 = [v3 traitCollection];
        [v79 displayScale];
        v81 = v80;

        [v78 capHeight];
        v83 = v82 * 0.5;
        v84 = v131;
        (*(v132 + 104))(v131, *MEMORY[0x277D84688], v133.i64[0]);
        v85 = specialized CGFloat.init(_:roundedBy:inScale:)(v84, v83, v81);

        v86 = fmax(v85, 5.0);
        [v76 setTagDimension_];
        [v76 invalidateIntrinsicContentSize];

        v31 = v75;
        goto LABEL_15;
      }
    }
  }

  v137 = 0;
LABEL_15:
  (*((*v31 & *v29) + 0x2F0))(&v161);
  v171 = v163[2];
  v172 = v164;
  v173 = v165;
  v174 = v166;
  v167 = v161;
  v168 = v162;
  v169 = v163[0];
  v170 = v163[1];
  v88 = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v167);
  v89.i32[0] = 1;
  LODWORD(v132) = v88;
  v90.i32[0] = v88;
  v91 = vdupq_lane_s32(*&vceqq_s32(v90, v89), 0);
  v133 = vbicq_s8(*(&v163[1] + 8), v91);
  v134 = vbicq_s8(*(v163 + 8), v91);
  v157 = v163[2];
  v158 = v164;
  v159 = v165;
  v160 = v166;
  v153 = v161;
  v154 = v162;
  v155 = v163[0];
  v156 = v163[1];
  v92 = outlined destroy of CharacterSet?(&v153, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd);
  v140 = (*((*v31 & *v29) + 0xA68))(v92);
  v93 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState);
  v94 = (*((*v31 & *v29) + 0x568))();
  v95 = (*(*v93 + 184))(v94);
  v96 = (*((*v31 & *v29) + 0x8F0))(v95);
  v97 = *(*v93 + 136);
  v136 = v93;
  v98 = v97(v96 & 1);
  v99 = *((*v31 & *v29) + 0xAA0);
  v100 = (v99)(v152, v98);
  v101 = LOBYTE(v152[0]);
  v152[0] = xmmword_249BAFCA0;
  MEMORY[0x28223BE20](v100, v102);
  *(&v127 - 2) = v152;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v127 - 4), v142))
  {
    v103 = 0;
    v104 = v135;
    if (v101 > 9)
    {
      v106 = v141;
      goto LABEL_22;
    }

    v105 = 1 << v101;
    v106 = v141;
    if ((v105 & 0x341) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v103 = v99(v152);
  v106 = v141;
  v104 = v135;
  if (LOBYTE(v152[0]) != 2)
  {
LABEL_21:
    v103 = (*((*MEMORY[0x277D85000] & *v106) + 0x358))(v103);
    goto LABEL_22;
  }

  v103 = 0;
LABEL_22:
  v142 = v103;
  v107 = v132 == 1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
  v109 = *(v106 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView);
  v110 = v108[16];
  *v104 = v109;
  v111 = v134;
  *(v104 + 24) = v133;
  *(v104 + 8) = v111;
  v112 = v140;
  *(v104 + 40) = v107;
  *(v104 + 48) = v112;
  outlined init with copy of Column(v143, v104 + v110, type metadata accessor for LeadingTitle);
  v113 = v138;
  if ((v138 & 0x2000000000000000) != 0)
  {
    v114 = HIBYTE(v138) & 0xF;
  }

  else
  {
    v114 = v139 & 0xFFFFFFFFFFFFLL;
  }

  v115 = v109;
  if (v114)
  {
    v116 = v139;
  }

  else
  {

    v116 = 0;
    v113 = 0;
  }

  v117 = (v104 + v108[20]);
  v118 = v108[24];
  v119 = v108[28];
  v120 = v108[32];
  v121 = v108[36];
  v122 = v108[40];
  *v117 = v116;
  v117[1] = v113;
  v123 = v141;
  v124 = (*((*MEMORY[0x277D85000] & *v141) + 0x2F8))(v115);

  outlined destroy of Column(v143, type metadata accessor for LeadingTitle);
  *(v104 + v118) = v124;
  *(v104 + v119) = v142;
  *(v104 + v120) = v137;
  *(v104 + v121) = *(v123 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  type metadata accessor for OutlineProgressStateReference();
  v125 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  *(v104 + v122) = v125;
  type metadata accessor for Column(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t DOCItemRowView.createDateColumn(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v92 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v87 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v87 - v19;
  v23.n128_f64[0] = MEMORY[0x28223BE20](v21, v22);
  v25 = v87 - v24;
  v27 = *a1;
  v26 = a1[1];
  v28 = MEMORY[0x277D85000];
  v97 = (*((*MEMORY[0x277D85000] & *v3) + 0x280))(v23);
  if (!v97)
  {
    goto LABEL_8;
  }

  v93 = v12;
  v94 = v25;
  v29 = *((*v28 & *v3) + 0x1C0);
  v30 = (*v28 & *v3) + 448;
  v29(&v99);
  v31 = v100;
  if (!v100)
  {

    outlined consume of OutlineColumnData?(v99, 0);
LABEL_8:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
    v36 = (a2 + *(v35 + 48));
    v37 = (a2 + *(v35 + 64));
    Date.init()();
    *v36 = 0;
    v36[1] = 0;
    *v37 = v27;
    v37[1] = v26;
    type metadata accessor for Column(0);
LABEL_36:
    swift_storeEnumTagMultiPayload();
    return outlined copy of ColumnType(v27, v26);
  }

  v87[2] = v30;
  v88 = a2;
  v89 = v27;
  v90 = v26;
  v32 = v99;
  v33 = v102;

  v91 = v33;
  v26 = v90;
  outlined consume of OutlineColumnData?(v32, v31);
  if (v26 > 2)
  {
    v34 = v95;
    if (v26 != 3)
    {
      v27 = v89;
      if (v26 == 4)
      {
        (*((*v28 & *v97) + 0xA50))(v91);
        goto LABEL_16;
      }

LABEL_12:
      v38 = v96;
      (*(v34 + 56))(v20, 1, 1, v96);
      goto LABEL_17;
    }

    (*((*v28 & *v97) + 0xA40))(v91);
LABEL_15:
    v27 = v89;
    goto LABEL_16;
  }

  v34 = v95;
  if (v26 == 1)
  {
    (*((*v28 & *v97) + 0xA48))(v91);
    goto LABEL_15;
  }

  v27 = v89;
  if (v26 != 2)
  {
    goto LABEL_12;
  }

  (*((*v28 & *v97) + 0xA38))(v91);
LABEL_16:
  v38 = v96;
LABEL_17:
  v39 = v20;
  v40 = v94;
  outlined init with take of Date?(v39, v94);
  outlined init with copy of Date?(v40, v16);
  if ((*(v34 + 48))(v16, 1, v38) == 1)
  {

    outlined destroy of CharacterSet?(v16, &_s10Foundation4DateVSgMd);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
    v42 = *(v41 + 48);
    v43 = v88;
    v44 = (v88 + *(v41 + 64));
    Date.init()();

    outlined destroy of CharacterSet?(v40, &_s10Foundation4DateVSgMd);
    *(v43 + v42) = xmmword_249BAFCC0;
LABEL_35:
    *v44 = v27;
    v44[1] = v26;
    type metadata accessor for Column(0);
    goto LABEL_36;
  }

  v87[0] = *(v34 + 32);
  v87[1] = v34 + 32;
  v45 = (v87[0])(v93, v16, v38);
  (v29)(&v99, v45);
  v46 = v100;
  if (v100)
  {
    v47 = v101;
    v48 = v99;

    outlined consume of OutlineColumnData?(v48, v46);
    v49 = v93;
    if (*(v47 + 16))
    {
      v26 = v90;
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v90);
      if (v51)
      {
        v52 = *(*(v47 + 56) + v50);
      }

      else
      {

        v52 = 1;
      }
    }

    else
    {

      v52 = 1;
      v26 = v90;
    }

    v34 = v95;
  }

  else
  {
    outlined consume of OutlineColumnData?(v99, 0);
    v52 = 1;
    v49 = v93;
  }

  v53 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache;
  v54 = *(**(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dateCache) + 88);

  v56 = v54(v55);

  if (!*(v56 + 16))
  {

    goto LABEL_31;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v49);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
LABEL_31:
    v59 = *(v3 + v53);
    v60 = *(v34 + 16);
    LODWORD(v95) = v52;
    v61 = v92;
    v62 = v34;
    v63 = v96;
    v60(v92, v49, v96);
    type metadata accessor for DateCalculator();
    v64 = swift_allocObject();
    v65 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
    *(v64 + v65) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v60((v64 + OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date), v61, v63);
    v66 = objc_opt_self();

    v67 = [v66 defaultCenter];
    [v67 addObserver:v64 selector:sel_clearCache name:*MEMORY[0x277D766F0] object:0];

    v68 = v61;
    v52 = v95;
    (*(v62 + 8))(v68, v63);
    v69 = (*(*v59 + 104))(&v99);
    v71 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *v71;
    *v71 = 0x8000000000000000;
    v73 = v64;
    v49 = v93;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v93, isUniquelyReferenced_nonNull_native);
    *v71 = v98;
    v26 = v90;
    v69(&v99, 0);
  }

  v74 = *(**(v3 + v53) + 88);

  v76 = v74(v75);

  if (*(v76 + 16))
  {
    v78 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
    v80 = v79;

    v27 = v89;
    if (v80)
    {
      v81 = *(*(v76 + 56) + 8 * v78);

      v82 = (*(*v81 + 152))(v52);
      v84 = v83;

      outlined destroy of CharacterSet?(v94, &_s10Foundation4DateVSgMd);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);
      v86 = (v88 + *(v85 + 48));
      v44 = (v88 + *(v85 + 64));
      (v87[0])(v88, v49, v96);
      *v86 = v82;
      v86[1] = v84;
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DOCItemRowView.applyColor(divider:color:)(unint64_t a1)
{
  v3 = type metadata accessor for DragIndicator(0);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x2E0);
  v9 = v8(v5);
  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= 1)
  {
    result = (v8)(result);
    if ((result & 0xC000000000000001) == 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v12 = *(result + 8 * a1 + 32);
LABEL_8:
        v13 = v12;

        dispatch thunk of _UIHostingView.rootView.getter();

        v14 = *(v7 + 1);

        outlined destroy of Column(v7, type metadata accessor for DragIndicator);
        v15 = *(*v14 + 128);

        v15(v16);
      }

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x24C1FC540](a1, result);
    goto LABEL_8;
  }

  return result;
}

CGSize __swiftcall DOCItemRowView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  width = a1.width;
  v3 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x1A8))(__PAIR128__(v4, *&a1.width), __PAIR128__(v5, *&a1.height));
  if (!*(v6 + 16))
  {

    goto LABEL_13;
  }

  outlined init with copy of DOCSidebarItemIconProvider(v6 + 32, &v19);

  outlined init with take of DOCGoToFolderCandidate(&v19, v20);
  v7 = [v1 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 != 1)
  {
    (*((*v3 & *v1) + 0x1C0))(&v19);
    v16 = v19;
    if (*(&v19 + 1))
    {

      outlined consume of OutlineColumnData?(v16, *(&v16 + 1));
      if (*(*(&v16 + 1) + 16))
      {
        v9 = *(*(&v16 + 1) + 32);

        if (v9 > 0.0)
        {
          goto LABEL_4;
        }
      }

      else
      {
      }
    }

    else
    {
      outlined consume of OutlineColumnData?(v19, 0);
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
LABEL_13:
    v15 = 30.0;
    goto LABEL_14;
  }

  v9 = width;
LABEL_4:
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = DOCGridLayout.specIconWidth.modify(v9, 1000.0);
  width = (*(v11 + 16))(v10, v11, v12);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_0(v20);
  v15 = v14;
LABEL_14:
  v17 = width;
  result.height = v15;
  result.width = v17;
  return result;
}

id DOCItemRowView.setOutlineColumnData(data:)(uint64_t a1)
{
  v4[0] = *a1;
  v2 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6 = v2;
  (*((*MEMORY[0x277D85000] & *v1) + 0x3E0))(v4);

  return [v1 setNeedsLayout];
}

uint64_t DOCItemRowView.view(for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(result + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  outlined init with copy of DOCSidebarItemIconProvider(result + 40 * a1 + 32, a2);
}

Swift::Void __swiftcall DOCItemRowView.swapIndexes(_:toIndex:)(Swift::Int _, Swift::Int toIndex)
{
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x1A8);
  v9 = v8();
  if (_ < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v9 + 16) <= _)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v9;
  outlined init with copy of DOCSidebarItemIconProvider(v9 + 40 * _ + 32, v19);

  v11 = (v8)(v10);
  if (toIndex < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v11 + 16) > toIndex)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v11 + 40 * toIndex + 32, v18);

    v4 = *((*v7 & *v2) + 0x1B8);
    v3 = v4(v17);
    v8 = v12;
    v7 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  *v8 = v7;
LABEL_6:
  if (v7[2] <= _)
  {
    __break(1u);
  }

  else
  {
    v14 = &v7[5 * _];
    __swift_destroy_boxed_opaque_existential_0((v14 + 4));
    outlined init with take of DOCGoToFolderCandidate(v18, (v14 + 4));
    (v3)(v17, 0);
    v2 = v4(v18);
    v3 = v15;
    _ = *v15;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = _;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  _ = specialized _ArrayBuffer._consumeAndCreateNew()(_);
  *v3 = _;
LABEL_8:
  if (*(_ + 16) <= toIndex)
  {
    __break(1u);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((_ + 40 * toIndex + 32), v19);
    (v2)(v18, 0);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }
}

Swift::Void __swiftcall DOCItemRowView.layoutSubviews()()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for DOCItemRowView();
  v1 = objc_msgSendSuper2(&v36, sel_layoutSubviews);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x178))(v1);
  [v0 bounds];
  [v3 setFrame_];

  v4 = (*((*v2 & *v0) + 0x298))();
  if (v4)
  {
    v5 = v4;
    v6 = *((*v2 & *v0) + 0x2B0);
    v6(&v32);
    v7 = v34;
    v8 = v35;
    if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
    {
      v9 = (v6)(&v32);
      v10 = v33 + 20.0;
      v11 = (v6)(&v32, v9);
      v12 = v33 + 20.0;
      (v6)(&v32, v11);
      [v0 bounds];
      v13 = v12;
    }

    else
    {
      v14 = (v6)(&v32);
      v15 = v32 - (v7 + v8);
      v16 = (v6)(&v32, v14);
      v10 = v15 + v33 + -24.0 + -20.0;
      v17 = (v6)(&v32, v16);
      (v6)(&v32, v17);
      [v0 bounds];
      v13 = 0.0;
    }

    v18 = DOCGridLayout.specIconWidth.modify(v13, 0.0);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = v5;
    [v0 bounds];
    [v25 setFrame_];

    v26 = (*((*v2 & *v0) + 0x160))();
    [v26 setFrame_];
  }

  v27 = (*((*v2 & *v0) + 0x3E8))();
  v28 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v29 = (*((*v2 & *v0) + 0x148))(v27);
  if (v29)
  {
    v30 = v29;
    v31 = [v29 expanded];
  }

  else
  {
    v31 = 0;
  }

  (*(*v28 + 168))(v31);
}

id DOCItemRowView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  v2 = *(**&v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState] + 184);

  v2(0);

  v3 = *(**&v0[v1] + 136);

  v3(0);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCItemRowView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id DOCItemRowView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCItemCollectionOutlineCell.rowView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionOutlineCell.rowView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCItemCollectionOutlineCell.indentationLevel.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_indentationLevel);
}

void DOCItemCollectionOutlineCell.indentationLevel.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setIndentationLevel_, a1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v5 = *&v1[v4];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v8, sel_indentationLevel);
  (*((*MEMORY[0x277D85000] & *v6) + 0x300))(v7);
}

void (*DOCItemCollectionOutlineCell.indentationLevel.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 96) = ObjectType;
  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  *v4 = objc_msgSendSuper2((v4 + 24), sel_indentationLevel);
  return DOCItemCollectionOutlineCell.indentationLevel.modify;
}

void DOCItemCollectionOutlineCell.indentationLevel.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    *(v2 + 5) = *(v2 + 11);
    objc_msgSendSuper2((v2 + 5), sel_setIndentationLevel_, v3);
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v2[7] = v5;
    v2[8] = v4;
    objc_msgSendSuper2((v2 + 7), sel_setIndentationLevel_, v3);
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v2[9] = v5;
    v2[10] = v4;
    v8 = v7;
    v9 = objc_msgSendSuper2((v2 + 9), sel_indentationLevel);
    (*((*MEMORY[0x277D85000] & *v8) + 0x300))(v9);
  }

  free(v2);
}

id DOCItemCollectionOutlineCell.titleLabel.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x640);
    v5 = v3;
    v6 = v4();
    v8 = v7;

    v9 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    v9 = 0;
  }

  [v1 setText_];

  return v1;
}

void *DOCItemCollectionOutlineCell.init(frame:containerView:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  v12 = objc_allocWithZone(type metadata accessor for DOCItemRowView());
  *(v5 + v11) = DOCItemRowView.init(isHeader:)(0);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver) = 0;
  v13 = a1;
  v14 = DOCItemCollectionCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9A480;
  v16 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  *(v15 + 32) = &type metadata for DOCBrowserLayoutConfiguration.Trait;
  *(v15 + 40) = v16;
  v17 = v14;
  MEMORY[0x24C1FBD00](v15, sel_didChangeTraits);
  swift_unknownObjectRelease();

  v18 = [v17 contentView];

  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [v18 addSubview_];

  return v17;
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.prepareForReuse()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x1F8);
  v4 = v2;
  v3(0);
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didChangeCellContent()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView];
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x270);
  v7 = v3;
  v8 = v4;
  v6(v4);

  v9 = *&v1[v2];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = *((*v5 & *v9) + 0x288);
  v13 = v11;
  v14 = v9;
  v12(v11);

  v15 = *&v1[v2];
  v16 = *((*v5 & *v15) + 0x150);
  v17 = v15;
  v18 = v1;
  v16(v1);

  [v18 setIndentationWidth_];
  DOCItemCollectionOutlineCell.updateWantsDisclosureButton()();
  DOCItemCollectionOutlineCell.updateAccessories()();
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.updateAccessories()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v25 - v3;
  v5 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v16 = *(v0 + v15);
  if (v16)
  {
    v17 = *v16;
    v29 = v0;
    v18 = MEMORY[0x277D85000];
    v19 = *MEMORY[0x277D85000] & v17;
    v26 = v10;
    v20 = *(v19 + 1288);
    v28 = v5;
    v21 = v16;
    v27 = v4;
    v22 = v21;
    v25[1] = v20();
    (*((*v18 & *v22) + 0x4F0))();
    (*((*v18 & *v22) + 0x460))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_249B9A480;
    v23 = v26;
    (*(v11 + 104))(v14, *MEMORY[0x277D74A88], v26);
    v24 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    (*(v6 + 8))(v9, v28);
    (*(v11 + 8))(v14, v23);
    UICollectionViewListCell.accessories.setter();
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didUpdateContents()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x3C0);
  v6 = v3;
  v5();

  DOCItemCollectionOutlineCell.updateLabelsForDimming()();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = *((*v4 & *v8) + 0xAA0);
    v10 = v8;
    v9(&v20);
    v11 = DOCItemCollectionCell.itemStatusBadge.getter();
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];

    v12 = *(v1 + v2);
    v13 = *((*v4 & *v12) + 0x1C0);
    v14 = v12;
    v13(&v20);

    v15 = v21;
    if (v21)
    {
      v16 = v20;
      v17 = *(v1 + v2);
      LOBYTE(v20) = v20 & 1;
      v18 = *((*v4 & *v17) + 0x3E0);
      v19 = v17;
      v18(&v20);

      outlined consume of OutlineColumnData?(v16, v15);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.updateLabelsForDimming()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v2, v3);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if ((*(v1 + v4) & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v8 = *(v1 + v7);
      v9 = MEMORY[0x277D85000];
      v10 = *((*MEMORY[0x277D85000] & *v8) + 0x178);
      v11 = v6;
      v12 = v8;
      v13 = v10();

      v14 = *((*v9 & *v11) + 0x910);
      v14();
      UIView.traitOverrides.getter();
      lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();
      dispatch thunk of UIMutableTraits.subscript.setter();
      UIView.traitOverrides.setter();

      v15 = (v14)();
      v16 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
      if (v15)
      {
        v17 = 0.35;
        [v16 setAlpha_];
        v18 = *(v1 + v7);
        v19 = MEMORY[0x277D85000];
        v20 = *((*MEMORY[0x277D85000] & *v18) + 0x358);
        v21 = v18;
        v22 = v20();

        [v22 setAlpha_];
        v23 = *(v1 + v7);
        v24 = *((*v19 & *v23) + 0x388);
        v25 = v23;
        v26 = v24();

        [v26 setAlpha_];
        v27 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton;
        swift_beginAccess();
        v28 = *(v1 + v27);
        if (!v28)
        {
          goto LABEL_13;
        }
      }

      else
      {
        [v16 setAlpha_];
        v29 = *(v1 + v7);
        v30 = MEMORY[0x277D85000];
        v31 = *((*MEMORY[0x277D85000] & *v29) + 0x340);
        v32 = v29;
        v33 = v31();

        if (v33)
        {
          v34 = *(v1 + v7);
          v35 = *((*v30 & *v34) + 0x358);
          v36 = v34;
          v37 = v35();

          [v37 setAlpha_];
        }

        v38 = *(v1 + v7);
        v39 = *((*v30 & *v38) + 0x370);
        v40 = v38;
        LOBYTE(v39) = v39();

        if (v39)
        {
          v41 = *(v1 + v7);
          v42 = *((*v30 & *v41) + 0x388);
          v43 = v41;
          v44 = v42();

          [v44 setAlpha_];
        }

        v45 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_horizontalStopButton;
        swift_beginAccess();
        v28 = *(v1 + v45);
        if (!v28)
        {
          goto LABEL_13;
        }

        v17 = 1.0;
      }

      v46 = v28;
      [v46 setAlpha_];

LABEL_13:
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didUpdateLoadingProgress()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    DOCItemCollectionOutlineCell.updateAccessories()();
    v5 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v4) + 0x8D0))())
    {
      v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v7 = *(v0 + v6);
      v8 = *((*v5 & *v7) + 0x358);
      v9 = v7;
      v10 = v8();

      v11 = *((*v5 & *v4) + 0x568);
      v12 = v11();
      (*((*v5 & *v10) + 0x1C8))(v12);

      v13 = *(v1 + v6);
      v14 = *((*v5 & *v13) + 0x388);
      v15 = v13;
      v16 = v14();

      v17 = v11();
      (*((*v5 & *v16) + 0x1C8))(v17);

      if ((*((*v5 & *v4) + 0x580))() & 1) != 0 && ((v18 = *((*v5 & *v4) + 0x3D0), (v19 = v18()) != 0) && (v20 = [v19 isDownloading], swift_unknownObjectRelease(), (v20) || (v21 = v18()) != 0 && (v22 = objc_msgSend(v21, sel_isExternalDownloadPlaceholder), swift_unknownObjectRelease(), (v22)))
      {
        v23 = 1;
      }

      else
      {
        v24 = (*((*v5 & *v4) + 0x3D0))();
        if (v24)
        {
          v23 = [v24 isCopying];
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0;
        }
      }

      v25 = *(v1 + v6);
      v26 = *((*v5 & *v25) + 0x358);
      v27 = v25;
      v28 = v26();

      (*((*v5 & *v28) + 0xB8))(v23);
      v29 = *(v1 + v6);
      v30 = *((*v5 & *v29) + 0x388);
      v31 = v29;
      v32 = v30();

      (*((*v5 & *v32) + 0xB8))(v23);
      if ((*((*v5 & *v4) + 0x3D0))())
      {
        ObjectType = swift_getObjectType();
        DOCNode.debugUIScenario.getter(ObjectType, v42);
        swift_unknownObjectRelease();
        if (v42[0] != 1)
        {
          outlined destroy of CharacterSet?(v42, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd);
          v34 = *(v1 + v6);
          v35 = *((*v5 & *v34) + 0x358);
          v36 = v34;
          v37 = v35();

          (*((*v5 & *v37) + 0xB8))(1);
          v38 = *(v1 + v6);
          v39 = *((*v5 & *v38) + 0x388);
          v40 = v38;
          v41 = v39();

          (*((*v5 & *v41) + 0xB8))(1);
        }
      }
    }
  }
}

void DOCItemCollectionOutlineCell.beginRename(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = &v31 - v6;
  v7 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if (v2[v15] & 1) == 0 && (v16 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameController, swift_beginAccess(), *&v2[v16] = a1, , , v2[v15] = 1, v17 = objc_opt_self(), v18 = swift_allocObject(), *(v18 + 16) = v2, v19 = swift_allocObject(), *(v19 + 16) = partial apply for closure #1 in DOCItemCollectionCell.beginRename(context:), *(v19 + 24) = v18, aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> (), aBlock[5] = v19, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = thunk for @escaping @callee_guaranteed () -> (), aBlock[3] = &block_descriptor_91, v20 = _Block_copy(aBlock), v21 = v2, , , [v17 performWithoutAnimation_], _Block_release(v20), isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation(), , , (isEscapingClosureAtFileLocation))
  {
    __break(1u);
  }

  else
  {
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
    swift_beginAccess();
    v24 = *&v2[v23];
    if (v24)
    {
      v25 = *v24;
      v31 = v7;
      v26 = MEMORY[0x277D85000];
      v27 = *((*MEMORY[0x277D85000] & v25) + 0x508);
      v28 = v24;
      v27();
      (*((*v26 & *v28) + 0x4F0))();
      (*((*v26 & *v28) + 0x460))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_249B9A480;
      (*(v11 + 104))(v14, *MEMORY[0x277D74A88], v10);
      v29 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
      v30 = v32;
      UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
      static UICellAccessory.multiselect(displayed:options:)();
      (*(v34 + 8))(v30, v31);
      (*(v11 + 8))(v14, v10);
      UICollectionViewListCell.accessories.setter();
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.endRename(_:force:)(Swift::Bool _, Swift::Bool force)
{
  v3 = v2;
  DOCItemCollectionCell.endRename(_:force:)(_, force);
  DOCItemCollectionOutlineCell.updateAccessories()();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x558);
    v7 = v5;
    v6();
  }

  DOCItemCollectionOutlineCell.didUpdateContents()();
}

CGSize __swiftcall DOCItemCollectionOutlineCell.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  height = _.height;
  width = _.width;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [*(v3 + v6) systemLayoutSizeFittingSize_];
  v8 = DOCGridLayout.specIconWidth.modify(width, v7);
  result.height = v9;
  result.width = v8;
  return result;
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v30.receiver = v1;
  v30.super_class = ObjectType;
  [(UICollectionViewLayoutAttributes *)&v30 applyLayoutAttributes:a1];
  type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
    v8 = a1;
    v7(&v25);
    v9 = v26;
    if (v26)
    {
      v23 = v8;
      v10 = v6;
      v12 = v28;
      v11 = v29;
      v13 = v27;
      v14 = v25;
      v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
      swift_beginAccess();
      v16 = *&v1[v15];
      v24.receiver = v1;
      v24.super_class = ObjectType;
      v17 = v16;
      v18 = [(UICollectionViewLayoutAttributes *)&v24 indentationLevel];
      (*((*v10 & *v17) + 0x300))(v18);

      v19 = *&v1[v15];
      LOBYTE(v25) = v14 & 1;
      v26 = v9;
      v27 = v13;
      v28 = v12;
      v29 = v11;
      v20 = *((*v10 & *v19) + 0x418);
      v21 = v19;
      v20(&v25);

      outlined consume of OutlineColumnData?(v14, v9);
      [*&v2[v15] setNeedsLayout];
      v22 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
      swift_beginAccess();
      if (*&v2[v22])
      {
        [v2 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v87.receiver = v1;
  v87.super_class = ObjectType;
  objc_msgSendSuper2(&v87, sel_layoutSubviews);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = [v1 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame_];
  v14 = *(*&v1[v3] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v86.receiver = v1;
  v86.super_class = ObjectType;

  v15 = objc_msgSendSuper2(&v86, sel_expanded);
  (*(*v14 + 168))(v15);

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v17 = *&v1[v16];
  if (v17)
  {
    v18 = v17;
    v19 = [v1 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    v21 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v22 = [v1 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if ((v21 & 1) != 0 && v23 == 1)
    {
      v24 = 52.0;
    }

    else
    {
      specialized DOCItemCollectionOutlineCell._preferredSeparatorInsets(forProposedInsets:)();
      v24 = v25;
    }

    v26 = *&v1[v3];
    v27 = *((*MEMORY[0x277D85000] & *v26) + 0x2B0);
    v28 = v26;
    v27(v85);

    v29 = v18;
    [v29 frame];
    if (CGRectGetHeight(v88) == 0.0)
    {
      [v1 bounds];
      [v29 setFrame_];
    }

    [v29 contentSize];
    v30 = DOCItemRenameTextView.clearButton.getter();
    [v30 intrinsicContentSize];
    v32 = v31;

    v33 = *&v1[v3];
    v34 = MEMORY[0x277D85000];
    v35 = *((*MEMORY[0x277D85000] & *v33) + 0x2B0);
    v36 = v33;
    v35(v85);

    v37 = *&v85[5];
    v38 = *&v1[v3];
    v39 = *((*v34 & *v38) + 0x2B0);
    v40 = v38;
    v39(v85);

    v41 = *&v85[3];
    v42 = [v1 traitCollection];
    v43 = [v42 horizontalSizeClass];

    v44 = 16.0;
    if (v43 == 1)
    {
      v44 = 8.0;
    }

    v45 = v32 + v37 + v41 + v44;
    [*&v1[v3] frame];
    CGRectGetHeight(v89);
    v84 = v45;
    DOCGridLayout.specIconWidth.modify(v24, 0.0);
    v46 = [v1 traitCollection];
    v47 = [v46 preferredContentSizeCategory];

    v48 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v49 = [v1 traitCollection];
    v50 = [v49 horizontalSizeClass];

    [v1 bounds];
    if ((v48 & 1) != 0 && v50 == 1)
    {
      v51 = [objc_opt_self() defaultMetrics];
      [v51 scaledValueForValue_];
    }

    v52 = *&v1[v16];
    if (v52)
    {
      v53 = v52;
      UIRectCenteredYInRect();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v90.origin.x = v55;
        v90.origin.y = v57;
        v90.size.width = v59;
        v90.size.height = v61;
        MinX = CGRectGetMinX(v90);
        [v1 bounds];
        v63 = MinX - CGRectGetMinX(v91);
        [v1 bounds];
        MaxX = CGRectGetMaxX(v92);
        v93.origin.x = v55;
        v93.origin.y = v57;
        v93.size.width = v59;
        v93.size.height = v61;
        v55 = MaxX - (v63 + CGRectGetWidth(v93));
      }

      [v53 setFrame_];

      v65 = *&v1[v16];
      if (v65)
      {
        [v65 setTranslatesAutoresizingMaskIntoConstraints_];
      }
    }

    v66 = *&v1[v3];
    v67 = *((*MEMORY[0x277D85000] & *v66) + 0x2B0);
    v68 = v66;
    v67(v85);

    v69 = *v85;
    [*&v29[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] setTranslatesAutoresizingMaskIntoConstraints_];
    v70 = *&v1[v16];
    if (v70)
    {
      DOCGridLayout.specIconWidth.modify(v69 - v84, 0.0);
      v71 = v70;
      v72 = DOCItemRenameTextView.clearButton.getter();

      [v1 bounds];
      UIRectCenteredYInRect();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v94.origin.x = v74;
        v94.origin.y = v76;
        v94.size.width = v78;
        v94.size.height = v80;
        v81 = CGRectGetMinX(v94);
        [v1 bounds];
        v82 = v81 - CGRectGetMinX(v95);
        [v1 bounds];
        v83 = CGRectGetMaxX(v96);
        v97.origin.x = v74;
        v97.origin.y = v76;
        v97.size.width = v78;
        v97.size.height = v80;
        v74 = v83 - (v82 + CGRectGetWidth(v97));
      }

      [v72 setFrame_];
    }
  }
}

id DOCItemCollectionOutlineCell.expanded.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_expanded);
}

id DOCItemCollectionOutlineCell.springLoadedInteractionEffect()()
{
  v0 = type metadata accessor for DOCItemCollectionListCellSpringLoadedInteractionEffect();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionListCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *DOCItemCollectionOutlineCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v62 = &v61 - v7;
  v8 = type metadata accessor for UIBackgroundConfiguration();
  v63 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v9);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v61 - v13;
  v69 = a1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v77.receiver = v2;
  v77.super_class = ObjectType;
  objc_msgSendSuper2(&v77, sel__bridgedUpdateConfigurationUsingState_, isa);

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v71 = v16;
  v17 = *&v2[v16];
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v17) + 0x1A8);
  v20 = v17;
  v21 = v19();

  v70 = v21;
  v67 = *(v21 + 16);
  if (!v67)
  {
LABEL_16:

    v60 = v62;
    DOCItemCollectionOutlineCell.backgroundConfiguration(for:)(v69);
    (*(v63 + 56))(v60, 0, 1, v8);
    return MEMORY[0x24C1FBB40](v60);
  }

  v22 = 0;
  result = (v70 + 32);
  v24 = (v63 + 8);
  v64 = v8;
  v66 = v14;
  v65 = (v63 + 8);
  while (v22 < *(v70 + 16))
  {
    v72 = result;
    outlined init with copy of DOCSidebarItemIconProvider(result, v74);
    v26 = v68;
    static UIBackgroundConfiguration.listCell()();
    v27 = type metadata accessor for UICellConfigurationState();
    v73[3] = v27;
    v73[4] = MEMORY[0x277D74BA8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v69, v27);
    UIBackgroundConfiguration.updated(for:)();
    v29 = *v24;
    (*v24)(v26, v8);
    __swift_destroy_boxed_opaque_existential_0(v73);
    result = [v2 tintColor];
    if (!result)
    {
      goto LABEL_18;
    }

    v30 = v14;
    v31 = v8;
    v32 = result;
    v33.super.isa = UIBackgroundConfiguration.resolvedBackgroundColor(for:)(result).super.isa;

    v29(v30, v31);
    v34 = [v2 tintColor];
    if (v34)
    {
      v35 = v34;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        v37 = v75;
        v38 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v39 = (*(v38 + 8))(v37, v38);
        v40 = [v2 traitCollection];
        v41 = [v40 userInterfaceStyle] == 1;

        [v39 setOverrideUserInterfaceStyle_];
        v42 = v71;
        v43 = *(**(*&v2[v71] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState) + 312);

        v43(1);

        v44 = *&v2[v42];
        v45 = *((*v18 & *v44) + 0x358);
        v46 = v44;
        v47 = v45();

        v8 = [objc_opt_self() lightTextColor];
        result = [v2 tintColor];
        if (!result)
        {
          goto LABEL_19;
        }

        v25 = result;
        (*((*v18 & *v47) + 0x140))(1, v8, result);
        v14 = v66;
        v24 = v65;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v48 = v75;
    v49 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v50 = (*(v49 + 8))(v48, v49);
    [v50 setOverrideUserInterfaceStyle_];

    v51 = v71;
    v52 = *(**(*&v2[v71] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState) + 312);

    v52(0);

    v53 = *&v2[v51];
    v54 = *((*v18 & *v53) + 0x340);
    v55 = v53;
    LOBYTE(v54) = v54();

    v14 = v66;
    v24 = v65;
    if ((v54 & 1) == 0)
    {
      goto LABEL_5;
    }

    v56 = *&v2[v71];
    v57 = *((*v18 & *v56) + 0x358);
    v58 = v56;
    v47 = v57();

    v8 = [objc_opt_self() secondaryLabelColor];
    v59 = [v2 tintColor];
    if (!v59)
    {
      __break(1u);
      goto LABEL_16;
    }

    v25 = v59;
    (*((*v18 & *v47) + 0x140))(0, v8, v59);
LABEL_4:

LABEL_5:
    ++v22;
    __swift_destroy_boxed_opaque_existential_0(v74);
    result = v72 + 40;
    v8 = v64;
    if (v67 == v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionOutlineCell.backgroundConfiguration(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if (v2[v14] == 1)
  {
    return static UIBackgroundConfiguration.clear()();
  }

  static UIBackgroundConfiguration.listCell()();
  v27[3] = v4;
  v27[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v5 + 16))(boxed_opaque_existential_1, a1, v4);
  UIBackgroundConfiguration.updated(for:)();
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v17 = [v2 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v22 = UICellConfigurationState.isSelected.getter();
    (*(v5 + 8))(v8, v4);
    if ((v22 & 1) == 0)
    {
      v23 = [v2 effectiveAppearance];
      if (!v23 || (v24 = v23, v25 = [v23 backgroundColor], v24, !v25))
      {
        v26 = [objc_opt_self() systemBackgroundColor];
      }

      UIBackgroundConfiguration.backgroundColor.setter();
    }
  }

  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v19 = *&v2[v18];
  if (v19)
  {
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0x3B0);
    v21 = v19;
    v20();
  }

  return UIBackgroundConfiguration.cornerRadius.setter();
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.didUpdateThumbnail()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v3) + 0xA80);
    v6 = v3;
    v7 = v5();
    if (v7)
    {
      [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) updateImage:v7 addDecoration:(*((*v4 & *v6) + 0x940))() & 1];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = (*((*v4 & *v6) + 0x460))();
      if (v8 == 2)
      {
        __break(1u);
        return;
      }

      if ((v8 & 1) == 0)
      {
        [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setThumbnail_];
      }
    }
  }
}

uint64_t DOCItemCollectionOutlineCell.expanded.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setExpanded_, a1 & 1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v5 = *(*&v1[v4] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v8.receiver = v1;
  v8.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v8, sel_expanded);
  (*(*v5 + 168))(v6);
}

void (*DOCItemCollectionOutlineCell.expanded.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 96) = ObjectType;
  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  *v4 = objc_msgSendSuper2((v4 + 24), sel_expanded);
  return DOCItemCollectionOutlineCell.expanded.modify;
}

void DOCItemCollectionOutlineCell.expanded.modify(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    *(v2 + 40) = *(v2 + 88);
    objc_msgSendSuper2((v2 + 40), sel_setExpanded_, v3);
  }

  else
  {
    v5 = *(v2 + 88);
    v4 = *(v2 + 96);
    *(v2 + 56) = v5;
    *(v2 + 64) = v4;
    objc_msgSendSuper2((v2 + 56), sel_setExpanded_, v3);
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v7 = *(*(v5 + v6) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
    *(v2 + 72) = v5;
    *(v2 + 80) = v4;

    v8 = objc_msgSendSuper2((v2 + 72), sel_expanded);
    (*(*v7 + 168))(v8);
  }

  free(v2);
}

void __swiftcall DOCItemCollectionOutlineCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes *__return_ptr retstr, UICollectionViewLayoutAttributes *a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v5 preferredLayoutAttributesFittingAttributes:a2];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [*&v2[v4] setNeedsLayout];
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.teardownRename(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v13 = *&v1[v12];
  if (v13)
  {
    v14 = v13;
    v15 = DOCItemRenameTextView.clearButton.getter();

    [v15 removeFromSuperview];
  }

  DOCItemCollectionCell.teardownRename(_:)(a1);
  v16 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver] = 0;

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionOutlineCell.teardownRename(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_21_2;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v7, v19);
  _Block_release(v19);

  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
  v21 = *&v2[v12];
  if (v21)
  {
    [v21 removeFromSuperview];
  }
}

uint64_t closure #1 in DOCItemCollectionOutlineCell.teardownRename(_:)(uint64_t a1)
{
  v2 = type metadata accessor for LeadingView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x1A8);
  v9 = v7;
  v10 = v8();

  v11 = *(v10 + 16);
  if (v11)
  {
    v20[1] = v10;
    v12 = v10 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v12, v21);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = (*(v15 + 8))(v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMd);
      if (swift_dynamicCastClass())
      {
        dispatch thunk of _UIHostingView.rootView.getter();
        v13 = *&v5[*(v2 + 72)];

        outlined destroy of Column(v5, type metadata accessor for LeadingView);
        (*(*v13 + 128))(0);
      }

      else
      {

        v17 = v22;
        v18 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v16 = (*(v18 + 8))(v17, v18);
        [v16 setHidden_];
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
      v12 += 40;
      --v11;
    }

    while (v11);
  }
}

Swift::Void __swiftcall DOCItemCollectionOutlineCell.setupRename()()
{
  v1 = v0;
  v2 = type metadata accessor for LeadingView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCItemCollectionCell.setupRename()();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v9 = *&v1[v8];
    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x1A8);
    v11 = v7;
    v12 = v9;
    v13 = v10();

    v14 = *(v13 + 16);
    if (v14)
    {
      v38 = v13;
      v39 = v11;
      v15 = v13 + 32;
      do
      {
        outlined init with copy of DOCSidebarItemIconProvider(v15, &v42);
        v20 = v44;
        v19 = v45;
        __swift_project_boxed_opaque_existential_1(&v42, v44);
        v18 = (*(v19 + 8))(v20, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables07LeadingD0VGMd);
        if (swift_dynamicCastClass())
        {
          dispatch thunk of _UIHostingView.rootView.getter();
          v21 = *&v5[*(v2 + 72)];

          outlined destroy of Column(v5, type metadata accessor for LeadingView);
          (*(*v21 + 128))(1);
        }

        else
        {

          v16 = v44;
          v17 = v45;
          __swift_project_boxed_opaque_existential_1(&v42, v44);
          v18 = (*(v17 + 8))(v16, v17);
          [v18 setHidden_];
        }

        __swift_destroy_boxed_opaque_existential_0(&v42);
        v15 += 40;
        --v14;
      }

      while (v14);

      v11 = v39;
    }

    else
    {
    }

    v22 = v11;
    v23 = [v1 traitCollection];
    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    UITraitCollection.subscript.getter();

    LODWORD(v23) = v43;
    v24 = objc_opt_self();
    v25 = MEMORY[0x277D76918];
    if (!v23)
    {
      v25 = MEMORY[0x277D769D0];
    }

    v26 = [v24 preferredFontForTextStyle_];
    [v22 setFont_];

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
    swift_beginAccess();
    *(v22 + v27) = 0;
    DOCItemRenameTextView.updateBackground()();
    v28 = [v1 contentView];
    [v28 addSubview_];

    v29 = [v1 contentView];
    v30 = DOCItemRenameTextView.clearButton.getter();
    [v29 addSubview_];

    v31 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
    swift_beginAccess();
    *(v22 + v31) = 1;
    v32 = type metadata accessor for DOCItemRenameTextView();
    v41.receiver = v22;
    v41.super_class = v32;
    objc_msgSendSuper2(&v41, sel_becomeFirstResponder);
    *(v22 + v31) = 0;
    [v1 setNeedsLayout];
    v40 = v22;
    swift_getKeyPath();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v22;
    v35 = v22;
    v36 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v37 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver] = v36;
  }
}

void closure #1 in DOCItemCollectionOutlineCell.setupRename()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_renameTextView;
    swift_beginAccess();
    if (*&v1[v2])
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
      if (static NSObject.== infix(_:_:)())
      {
        [v1 setNeedsLayout];
      }
    }
  }
}

id DOCItemCollectionOutlineCell.accessibilityValue.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *(*&v1[v3] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v5 = *(*v4 + 208);

  if ((v5(v6) & 1) == 0)
  {
    v22.receiver = v1;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_accessibilityValue);
    if (!v18)
    {

      return 0;
    }

    v9 = v18;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_10:
    v20 = countAndFlagsBits;

    return v20;
  }

  v7 = (*(*v4 + 160))();
  result = _DocumentManagerBundle();
  v9 = result;
  if (v7)
  {
    if (result)
    {
      v21 = 0x8000000249BE7C00;
      v10 = 0x6465646E61707845;
      v11 = 0x617A696C61636F4CLL;
      v12 = 0xEB00000000656C62;
      v13 = 0xE800000000000000;
      v14.super.isa = v9;
      v15 = 0;
      v16 = 0xE000000000000000;
      v17 = 0xD00000000000002FLL;
LABEL_9:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v11, v14, *&v15, *&v17)._countAndFlagsBits;
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (result)
  {
    v21 = 0x8000000249BE7BC0;
    v10 = 0x657370616C6C6F43;
    v11 = 0x617A696C61636F4CLL;
    v12 = 0xEB00000000656C62;
    v17 = 0xD000000000000030;
    v13 = 0xE900000000000064;
    v14.super.isa = v9;
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t (*DOCItemCollectionOutlineCell.accessibilityValue.modify(id *a1))()
{
  *a1 = DOCItemCollectionOutlineCell.accessibilityValue.getter();
  a1[1] = v2;
  return DOCItemCollectionOutlineCell.accessibilityValue.modify;
}

objc_class *DOCItemCollectionOutlineCell.accessibilityCustomActions.getter()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v34, sel_accessibilityCustomActions);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v35 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v5 = *(*&v0[v4] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_isRenaming;
  swift_beginAccess();
  if (v0[v6])
  {

    goto LABEL_16;
  }

  v7 = *(*v5 + 208);

  if (v7(v8))
  {
    v9 = (*(*v5 + 376))();
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      v13 = (*(*v5 + 160))();
      result = _DocumentManagerBundle();
      v15 = result;
      if (v13)
      {
        if (result)
        {
          v32 = 0x8000000249BE7CA0;
          v16 = 0x657370616C6C6F43;
          v17 = 0x617A696C61636F4CLL;
          v18 = 0xEB00000000656C62;
          v19 = 0xD000000000000038;
          v20 = 0xE800000000000000;
          v21.super.isa = v15;
          v22 = 0;
          v23 = 0xE000000000000000;
LABEL_13:
          v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, *&v17, v21, *&v22, *&v19);

          v25 = swift_allocObject();
          *(v25 + 16) = v11;
          *(v25 + 24) = v12;
          v26 = objc_allocWithZone(MEMORY[0x277D75088]);

          v27 = MEMORY[0x24C1FAD20](v24._countAndFlagsBits, v24._object);

          aBlock[4] = partial apply for closure #1 in DOCItemCollectionOutlineCell.accessibilityCustomActions.getter;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
          aBlock[3] = &block_descriptor_37_1;
          v28 = _Block_copy(aBlock);
          v29 = [v26 initWithName:v27 actionHandler:v28];

          _Block_release(v28);

          v30 = v29;
          MEMORY[0x24C1FB090]();
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);

          v3 = v35;
          goto LABEL_16;
        }

        __break(1u);
      }

      else if (result)
      {
        v32 = 0x8000000249BE7C30;
        v16 = 0x646E61707845;
        v17 = 0x617A696C61636F4CLL;
        v18 = 0xEB00000000656C62;
        v20 = 0xE600000000000000;
        v21.super.isa = v15;
        v22 = 0;
        v23 = 0xE000000000000000;
        v19 = 0xD000000000000036;
        goto LABEL_13;
      }

      __break(1u);
      return result;
    }
  }

LABEL_16:
  if (v3 >> 62)
  {
    v31 = __CocoaSet.count.getter();
  }

  else
  {
    v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {

    return 0;
  }

  return v3;
}

void DOCItemCollectionOutlineCell.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_renameTextViewObserver);
}

id DOCItemCollectionOutlineCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
LABEL_8:
    v11 = __clz(__rbit64(v5)) | (i << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a2 + 56) + v11);
    outlined copy of ColumnType(*v12, v14);
    if (v14 == 9)
    {
LABEL_32:

      return MEMORY[0x24C1FCBD0](v8);
    }

    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }
      }

      else if (v14)
      {
        if (v14 != 1)
        {
LABEL_31:
          MEMORY[0x24C1FCBD0](1);
          String.hash(into:)();
          outlined consume of ColumnType(v13, v14);
          goto LABEL_29;
        }

        v16 = 2;
      }

      else
      {
        v16 = 0;
      }
    }

    else if (v14 <= 5)
    {
      if (v14 == 4)
      {
        v16 = 5;
      }

      else
      {
        v16 = 6;
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          v16 = 7;
          break;
        case 7:
          v16 = 8;
          break;
        case 8:
          v16 = 9;
          break;
        default:
          goto LABEL_31;
      }
    }

    MEMORY[0x24C1FCBD0](v16);
LABEL_29:
    v5 &= v5 - 1;
    MEMORY[0x24C1FCBD0](v15);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_32;
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.hash(into:)(uint64_t a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
LABEL_8:
    v11 = (*(a2 + 48) + ((i << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();
    if (v13 <= 3)
    {
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v14 = 3;
        }

        else
        {
          v14 = 4;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
LABEL_30:
          MEMORY[0x24C1FCBD0](1);

          String.hash(into:)();
          goto LABEL_28;
        }

        v14 = 2;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13 <= 5)
    {
      if (v13 == 4)
      {
        v14 = 5;
      }

      else
      {
        v14 = 6;
      }
    }

    else
    {
      switch(v13)
      {
        case 6:
          v14 = 7;
          break;
        case 7:
          v14 = 8;
          break;
        case 8:
          v14 = 9;
          break;
        default:
          goto LABEL_30;
      }
    }

    MEMORY[0x24C1FCBD0](v14);
LABEL_28:
    v5 &= v5 - 1;
    v15 = Hasher._finalize()();
    result = outlined consume of ColumnType(v12, v13);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1FCBD0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCItemRowView.ColumnCacheKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v12 = *a1;
  v13 = v2;
  v10 = v5;
  v11 = v6;
  outlined copy of ColumnType(v12, v2);
  outlined copy of ColumnType(v5, v6);
  LOBYTE(v5) = specialized static ColumnType.== infix(_:_:)(&v12, &v10);
  outlined consume of ColumnType(v10, v11);
  outlined consume of ColumnType(v12, v13);
  if ((v5 & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v4, v8) & 1) == 0)
  {
    return 0;
  }

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v3, v7);
}

void specialized DOCItemRowView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerMaskView) = 0;
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_containerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnCache;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say26DocumentManagerExecutables11ViewSizable_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnViews) = v3;
  v4 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnData;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_createdColumnCache;
  *(v0 + v5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLV_AC0I0OTt0g5Tf4g_n(v3);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_columnGenerationCount) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_visibleColumns) = v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_displaySortButtons) = 1;
  v6 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_customNameTitle);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState;
  type metadata accessor for OutlineExpansionState(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 20) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  ObservationRegistrar.init()();
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  type metadata accessor for OutlineProgressState(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_leadingThumbnailView) = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_thumbnailContainerView;
  type metadata accessor for DOCImageViewContainerView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_cellContent) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_menuButton) = 0;
  v12 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_scrollContext;
  *v12 = 0;
  *(v12 + 8) = 0;
  v13 = *(MEMORY[0x277D768C8] + 16);
  *(v12 + 16) = *MEMORY[0x277D768C8];
  *(v12 + 32) = v13;
  v14 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_headerToggleAction);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_dividerViews) = v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_identationLevel) = 0;
  v15 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_sortDescriptor;
  *(v15 + 24) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_shouldHeaderPreserveSpaceForDisclosureButton) = 0;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView;
  v17 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v17 setOpaque_];
  [v17 setSpacing_];
  [v17 setAlignmentOffset_];
  *(v0 + v16) = v17;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_tagView2;
  v19 = [objc_allocWithZone(DOCChainedTagsView) init];
  [v19 setOpaque_];
  [v19 setSpacing_];
  [v19 setAlignmentOffset_];
  *(v0 + v18) = v19;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_statusViewIsInitialized) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_icloudColumnStatusViewIsInitialized) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView____lazy_storage___statusViewForIcloudColumn) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined consume of LeadingBadge?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

double specialized DOCItemCollectionOutlineCell._preferredSeparatorInsets(forProposedInsets:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 traitCollection];
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v4 = dbl_249BAFF30[v18];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v11 = *(**(*&v1[v10] + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState) + 256);

  v13 = v11(v12);

  if (v13)
  {
    if (v9 == 1 || (v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v14 = [objc_opt_self() defaultMetrics];
    [v14 scaledValueForValue_];

    goto LABEL_10;
  }

  if (v9 != 1 && (v7 & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v1 isEditing];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_indentationLevel);
  if (v7)
  {
    v15 = [objc_opt_self() defaultMetrics];
    [v15 scaledValueForValue_];
  }

  return 0.0;
}

uint64_t outlined destroy of Column(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineScrollContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OutlineScrollContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey()
{
  result = lazy protocol witness table cache variable for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey;
  if (!lazy protocol witness table cache variable for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCItemRowView.ColumnCacheKey and conformance DOCItemRowView.ColumnCacheKey);
  }

  return result;
}

uint64_t outlined init with copy of Column(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id DOCButtonGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_activeTouches;
  swift_beginAccess();
  v5 = *&v2[v4];

  specialized Set.union<A>(_:)(v6, v5);
  *&v2[v4] = v7;

  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v16, sel_touchesBegan_withEvent_, isa, a2);

  [v2 locationInView_];
  v9 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow];
  *v9 = v10;
  *(v9 + 1) = v11;
  v9[16] = 0;
  v12 = *&v2[v4];
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  return [v2 setState_];
}

unint64_t type metadata accessor for UITouch()
{
  result = lazy cache variable for type metadata for UITouch;
  if (!lazy cache variable for type metadata for UITouch)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITouch);
  }

  return result;
}

id DOCButtonGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v26, sel_touchesMoved_withEvent_, isa, a2);

  v5 = [v2 view];
  if (v5 && (v6 = v5, [v5 bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, objc_msgSend(v2, sel_locationInView_, v6), v27.x = v15, v27.y = v16, v28.origin.x = v8, v28.origin.y = v10, v28.size.width = v12, v28.size.height = v14, v17 = CGRectContainsPoint(v28, v27), v6, v17) && (v18 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow], (v2[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow + 16] & 1) == 0) && (v19 = *v18, objc_msgSend(v2, sel_locationInView_, 0), v21 = vabdd_f64(v20, v19), objc_msgSend(v2, sel_locationInView_, 0), v21 <= 15.0) && (v18[2] & 1) == 0 && (v22 = v18[1], objc_msgSend(v2, sel_locationInView_, 0), objc_msgSend(v2, sel_locationInView_, 0), vabdd_f64(v23, v22) <= 15.0))
  {
    v24 = 2;
  }

  else
  {
    v24 = 4;
  }

  return [v2 setState_];
}

id DOCButtonGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  specialized Set._subtract<A>(_:)(a1);
  swift_endAccess();
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v22, sel_touchesEnded_withEvent_, isa, a2);

  v7 = [v3 view];
  if (v7 && (v8 = v7, [v7 bounds], v10 = v9, v12 = v11, v14 = v13, v16 = v15, objc_msgSend(v3, sel_locationInView_, v8), v23.x = v17, v23.y = v18, v24.origin.x = v10, v24.origin.y = v12, v24.size.width = v14, v24.size.height = v16, v19 = CGRectContainsPoint(v24, v23), v8, v19))
  {
    v20 = 3;
  }

  else
  {
    v20 = 4;
  }

  return [v3 setState_];
}

uint64_t @objc DOCButtonGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

Swift::Void __swiftcall DOCButtonGestureRecognizer.reset()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_startLocationInWindow];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo7UITouchC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v2 = v4;
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer_activeTouches;
  swift_beginAccess();
  *&v0[v3] = v2;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  objc_msgSendSuper2(&v5, sel_reset);
}

id DOCButtonGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6, v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id DOCButtonGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static QuickLookFileIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static QuickLookFileIntent.attributionBundleIdentifier;

  return v0;
}

uint64_t static QuickLookFileIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static QuickLookFileIntent.attributionBundleIdentifier = a1;
  off_27EEED268 = a2;
}

uint64_t key path setter for static QuickLookFileIntent.attributionBundleIdentifier : QuickLookFileIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static QuickLookFileIntent.attributionBundleIdentifier = v2;
  off_27EEED268 = v1;
}

uint64_t static QuickLookFileIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static QuickLookFileIntent.isDiscoverable = a1;
  return result;
}

uint64_t key path setter for QuickLookFileIntent.fileEntity : QuickLookFileIntent(uint64_t a1)
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

uint64_t QuickLookFileIntent.fileEntity.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity();
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

void (*QuickLookFileIntent.fileEntity.modify(uint64_t *a1))(void *a1)
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
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static QuickLookFileIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables19QuickLookFileIntentVGMd);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables19QuickLookFileIntentV_GMd);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE8180;
  v4._countAndFlagsBits = 0xD000000000000024;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables19QuickLookFileIntentV10AppIntents0I9ParameterCyAC12FINodeEntityVGGMd);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent()
{
  result = lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent;
  if (!lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent;
  if (!lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent;
  if (!lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickLookFileIntent and conformance QuickLookFileIntent);
  }

  return result;
}

uint64_t QuickLookFileIntent.fetchURL(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URL();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](QuickLookFileIntent.fetchURL(for:), 0, 0);
}

uint64_t QuickLookFileIntent.fetchURL(for:)()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultManager];
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = OpenItemIntent.fetchURL(for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL;
  v0[13] = &block_descriptor_92;
  v0[14] = v4;
  [v3 fetchURLForItem:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t QuickLookFileIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for OpenURLIntent();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for FINodeEntity();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](QuickLookFileIntent.perform(), 0, 0);
}

uint64_t QuickLookFileIntent.perform()()
{
  v2 = v0[17];
  v1 = v0[18];
  IntentParameter.wrappedValue.getter();
  v3 = *(v1 + *(v2 + 32));
  v0[19] = v3;
  v4 = v3;
  outlined destroy of FINodeEntity(v1);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = QuickLookFileIntent.perform();
  v6 = v0[16];

  return QuickLookFileIntent.fetchURL(for:)(v6, v4);
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = OpenItemIntent.perform();
  }

  else
  {
    v2 = QuickLookFileIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    outlined destroy of CharacterSet?(v0[8], &_s10Foundation13URLComponentsVSgMd);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
LABEL_5:

    v18 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  URLComponents.scheme.setter();
  URLComponents.url.getter();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[12];
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    outlined destroy of CharacterSet?(v0[7], &_s10Foundation3URLVSgMd);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);
    goto LABEL_5;
  }

  v19 = v0[15];
  v32 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v31 = v0[11];
  v23 = v0[10];
  v29 = v0[19];
  v30 = v0[9];
  v25 = v0[5];
  v24 = v0[6];
  v26 = v0[4];
  (*(v20 + 32))(v19);
  (*(v20 + 16))(v21, v19, v22);
  OpenURLIntent.init(_:)();
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type OpenURLIntent and conformance OpenURLIntent, MEMORY[0x277CB9DE0]);
  static IntentResult.result<A>(opensIntent:)();

  (*(v25 + 8))(v24, v26);
  v27 = *(v20 + 8);
  v27(v19, v22);
  (*(v23 + 8))(v31, v30);
  v27(v32, v22);

  v18 = v0[1];
LABEL_7:

  return v18();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance QuickLookFileIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static QuickLookFileIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance QuickLookFileIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return QuickLookFileIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance QuickLookFileIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of QuickLookFileIntent.init(fileEntity:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance QuickLookFileIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type QuickLookFileIntent and conformance QuickLookFileIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t default argument 0 of QuickLookFileIntent.init(fileEntity:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v38 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v36 = &v35 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v24 = type metadata accessor for LocalizedStringResource();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v35 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = *MEMORY[0x277CC9110];
  v29 = *(v16 + 104);
  v29(v19, v28, v15);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29(v19, v28, v15);
  v30 = v36;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v25 + 56))(v30, 0, 1, v24);
  v31 = type metadata accessor for FINodeEntity();
  (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
  v32 = type metadata accessor for IntentDialog();
  v33 = *(*(v32 - 8) + 56);
  v33(v39, 1, 1, v32);
  v33(v40, 1, 1, v32);
  (*(v42 + 104))(v41, *MEMORY[0x277CBA308], v43);
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

Swift::Bool __swiftcall DOCGridLayoutDebuggingEnabled()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BC82B0);
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t DOCGridLayoutAssertsInvalidTypeRequests.setter(Swift::Bool a1)
{
  result = swift_beginAccess();
  DOCGridLayoutAssertsInvalidTypeRequests = a1;
  return result;
}

uint64_t withDOCGridLayoutAssertsInvalidTypeRequestsDisabled<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = swift_beginAccess();
  DOCGridLayoutAssertsInvalidTypeRequests = 0;
  result = a1(v2);
  DOCGridLayoutAssertsInvalidTypeRequests = 1;
  return result;
}

void __swiftcall DOCAnalyticsConnectToServerShownEvent.init(bundleID:origin:)(DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent *__return_ptr retstr, Swift::String_optional bundleID, DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent::Origin origin)
{
  v3 = *origin;
  retstr->name._countAndFlagsBits = 0xD000000000000038;
  retstr->name._object = 0x8000000249BC9EA0;
  retstr->bundleID = bundleID;
  retstr->origin = v3;
}

uint64_t DOCAnalyticsConnectToServerShownEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getter())()
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
  outlined init with copy of DOCAnalyticsConnectToServerShownEvent(v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getter;
}

unint64_t implicit closure #2 in implicit closure #1 in DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  return v1;
}

uint64_t DOCAnalyticsConnectToServerShownEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DOCAnalyticsConnectToServerShownEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsConnectToServerShownEvent())()
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
  outlined init with copy of DOCAnalyticsConnectToServerShownEvent(v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsConnectToServerShownEvent.propertiesBuilder.getterpartial apply;
}

DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent::Origin_optional __swiftcall DOCAnalyticsConnectToServerShownEvent.Origin.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin()
{
  result = lazy protocol witness table cache variable for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin;
  if (!lazy protocol witness table cache variable for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAnalyticsConnectToServerShownEvent.Origin and conformance DOCAnalyticsConnectToServerShownEvent.Origin);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCUSBFormattingErrorCode()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUSBFormattingErrorCode()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](1);
  return Hasher._finalize()();
}

void *DOCOperationManager.operation(for:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      if (closure #1 in DOCOperationManager.operation(for:)(&v12, a1, a2))
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

uint64_t closure #1 in DOCOperationManager.operation(for:)(void **a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);

  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v10 = 136315650;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6F6974617265706FLL, 0xEF293A726F66286ELL, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v25);
    *(v10 + 22) = 2080;
    v11 = a2;
    v12 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    a2 = v11;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s identifer=%s source identifier=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  v17 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == a2 && v20 == a3)
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v22 & 1;
}

uint64_t DOCOperationManager.enqueue(operation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = a1;
  MEMORY[0x24C1FB090]();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = partial apply for closure #1 in DOCOperationManager.enqueue(operation:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_43_1;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t DOCOperationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall SKDisk.doc_canErase()()
{
  v1 = [v0 filesystemType];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {
LABEL_15:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return 0;
  }

  if (v6 == v3 && v5 == v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v3 || v5 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v12 & 1) != 0;
    }

    goto LABEL_17;
  }

LABEL_18:

  return 1;
}

id SKDisk.doc_volumeName.getter()
{
  v1 = [v0 volumeName];
  if (v1)
  {
    v2 = v1;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:
    v8 = countAndFlagsBits;

    return v8;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v9._object = 0x8000000249BE83A0;
    v5._countAndFlagsBits = 0x64656C7469746E55;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE800000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD000000000000025;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v2, v7, v9)._countAndFlagsBits;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id SKDisk.doc_volumeDescriptor(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 filesystemType];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v10)
  {
LABEL_15:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return 0;
  }

  if (v11 == v8 && v10 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v10 == v15)
      {

        goto LABEL_21;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
LABEL_21:
        result = [v3 filesystem];
        if (result)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      return 0;
    }
  }

  result = [v3 filesystem];
  if (result)
  {
LABEL_19:
    v19 = result;
    v20 = MEMORY[0x24C1FAD20](a1, a2);
    v21 = [objc_opt_self() descriptorWithName:v20 filesystem:v19];

    return v21;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCUSBEraseOperation.State@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized DOCUSBEraseOperation.State.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t DOCUSBEraseOperation.isFinished.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCUSBEraseOperation.isFinished.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCUSBEraseOperation.newDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName);

  return v1;
}

void *DOCUSBEraseOperation.newFileSystem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem);
  v2 = v1;
  return v1;
}

uint64_t DOCUSBEraseOperation.newPassword.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword);

  return v1;
}

uint64_t key path getter for DOCUSBEraseOperation.completionHandler : DOCUSBEraseOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCDocumentSource?, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCUSBEraseOperation.completionHandler : DOCUSBEraseOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0xA8);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCUSBEraseOperation.completionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOCUSBEraseOperation.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

id DOCUSBEraseOperation.__allocating_init(source:newDisplayName:newFileSystem:newPassword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState] = 0;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished] = 0;
  v14 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler];
  *v14 = 0;
  v14[1] = 0;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] = a1;
  v15 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
  *v15 = a2;
  v15[1] = a3;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem] = a4;
  v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
  *v16 = a5;
  v16[1] = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id DOCUSBEraseOperation.init(source:newDisplayName:newFileSystem:newPassword:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_isFinished] = 0;
  v7 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_completionHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] = a1;
  v8 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
  *v8 = a2;
  v8[1] = a3;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem] = a4;
  v9 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
  *v9 = a5;
  v9[1] = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for DOCUSBEraseOperation();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t DOCUSBEraseOperation.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(50);
  MEMORY[0x24C1FAEA0](0x3D656372756F73, 0xE700000000000000);
  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x24C1FAEA0](v3, v5);

  MEMORY[0x24C1FAEA0](0xD000000000000010, 0x8000000249BE83D0);
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName);
  v14 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v6 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v6);

  v7 = MEMORY[0x24C1FAEA0](0x73696E6946736920, 0xEC0000003D646568);
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v7);
  v9 = (v8 & 1) == 0;
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

  MEMORY[0x24C1FAEA0](v10, v11);

  MEMORY[0x24C1FAEA0](0x3D657461747320, 0xE700000000000000);
  [v1 operationState];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t DOCUSBEraseOperation.identifier.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id static DOCUSBEraseOperation.disk(forDomain:)(void *a1)
{
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = specialized SKManager.doc_disk(forDomainIdentifier:)(a1);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DOCUSBEraseOperation.disk(forSource:)(void *a1)
{
  v2 = [a1 identifier];
  v3 = (*(v1 + 200))();

  return v3;
}

Swift::Void __swiftcall DOCUSBEraseOperation.perform()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source];
  v2 = [v1 identifier];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v5 = [v1 identifier];
  v6 = [objc_opt_self() sharedManager];
  if (!v6)
  {
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = specialized SKManager.doc_disk(forDomainIdentifier:)(v5);

  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v28;
    aBlock = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    MEMORY[0x24C1FAEA0](0xD000000000000036, 0x8000000249BE83F0);
    v82 = v2;
    type metadata accessor for FPProviderDomainID(0);
    _print_unlocked<A, B>(_:_:)();
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v29);

    v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v31 = MEMORY[0x24C1FAD20](0xD00000000000002DLL, 0x8000000249BE8370);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = [v30 initWithDomain:v31 code:1 userInfo:isa];

    v34 = MEMORY[0x277D85000];
    v35 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
    v36 = v33;
    v35(1);
    v37 = (*((*v34 & *v4) + 0xA0))([v4 setOperationState_]);
    if (v37)
    {
      v38 = v37;
      v37(0, v36);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v38);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Rename);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v75 = v3;
  if (os_log_type_enabled(v11, v12))
  {
    v74 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v10;
    v17 = v15;
    v82 = v15;
    *v13 = 138412802;
    *(v13 + 4) = v16;
    *v14 = v8;
    *(v13 + 12) = 2080;
    v73 = v16;
    v18 = v16;
    aBlock = [v18 filesystem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12SKFilesystemCSgMd);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v82);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = [v18 filesystemType];
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

    aBlock = v24;
    v77 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v82);

    *(v13 + 24) = v41;
    _os_log_impl(&dword_2493AC000, v11, v12, "[Erase] disk: %@ filesystem: %s filesystemType: %s", v13, 0x20u);
    outlined destroy of CharacterSet?(v14, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);

    v2 = v74;
    v10 = v73;
  }

  else
  {
  }

  v42 = _DocumentManagerBundle();
  if (!v42)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v43 = v42;
  v83._object = 0x8000000249BE83A0;
  v44._countAndFlagsBits = 0x64656C7469746E55;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v44._object = 0xE800000000000000;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000025;
  v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v83);
  countAndFlagsBits = v47._countAndFlagsBits;
  object = v47._object;

  v50 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newFileSystem];
  if (v50)
  {
    v51 = v50;
    v52 = [v51 isEncrypted];
    v53 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName];
    v54 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newDisplayName + 8];
    if (v52)
    {
      if (v54)
      {
        countAndFlagsBits = *v53;

        object = v54;
      }

      v55 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword];
      v56 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_newPassword + 8];
      v57 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      v58 = MEMORY[0x24C1FAD20](v55, v56);
      v59 = [objc_opt_self() descriptorWithName:v57 password:v58 filesystem:v51];
    }

    else
    {
      if (v54)
      {
        countAndFlagsBits = *v53;

        object = v54;
      }

      v58 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

      v59 = [objc_opt_self() descriptorWithName:v58 filesystem:v51];
    }
  }

  else
  {

    v60 = SKDisk.doc_volumeName.getter();
    v59 = SKDisk.doc_volumeDescriptor(name:)(v60, v61);

    if (!v59)
    {

      return;
    }
  }

  v62 = v59;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SKEraseVolume);
  v63 = v10;
  v64 = v62;
  v65 = specialized @nonobjc SKEraseVolume.__allocating_init(childDisk:descriptor:)(v63, v64);

  v66 = [objc_opt_self() forceUnmount];
  v67 = [v66 isEnabled];

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109376;
    *(v70 + 4) = v67;
    *(v70 + 8) = 1024;
    *(v70 + 10) = v67;
    _os_log_impl(&dword_2493AC000, v68, v69, "[Erase] Force unmount is enabled=%{BOOL}d, setting SKEraseVolume.forceUnmount to %{BOOL}d", v70, 0xEu);
    MEMORY[0x24C1FE850](v70, -1, -1);
  }

  [v65 setForceUnmount_];
  v80 = partial apply for closure #1 in DOCUSBEraseOperation.perform();
  v81 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v79 = &block_descriptor_93;
  v71 = _Block_copy(&aBlock);

  v72 = [v65 eraseProgressReportingWithCompletionBlock_];

  _Block_release(v71);
}