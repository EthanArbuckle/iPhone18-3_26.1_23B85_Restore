void closure #1 in DOCItemCollectionViewController.showLoadingViewIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) & 1) == 0)
    {
      v2 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (!v2)
      {
        __break(1u);
        return;
      }

      if ([v2 isGathering])
      {
        DOCItemCollectionViewController.showLoadingView()();
      }

      else
      {
        v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
        v4 = [v3 identifier];

        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;
        if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
        {

          return;
        }

        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
          if (v11)
          {
            v12 = v11;
            [v12 setHidden_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v39.receiver = v1;
  v39.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v3 = objc_msgSendSuper2(&v39, sel_viewWillAppear_, a1);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v3);
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v7 = DOCFocusGroupIdentifierBrowserFromConfiguration();
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x24C1FAD20](v8);
  }

  [v5 setFocusGroupIdentifier_];

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v9)
  {
    __break(1u);
    return;
  }

  if ([v9 isGathering])
  {
    v10 = DOCItemCollectionViewController.showLoadingViewIfNeeded()();
  }

  else
  {
    v11._rawValue = (*((*v4 & *v1) + 0xCB8))();
    DOCItemCollectionViewController.donateVisibleItemsToSiriVocabulary(_:)(v11);
  }

  if ((*((*v4 & *v1) + 0x9C8))(v10))
  {
  }

  else
  {
    specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
  }

  v12 = DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()();
  v13 = (*((*v4 & *v1) + 0xC40))(v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = swift_allocObject();
  v17 = partial apply for closure #1 in DOCItemCollectionViewController.viewWillAppear(_:);
  *(v16 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.viewWillAppear(_:);
  *(v16 + 24) = v15;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_144;
  v18 = _Block_copy(aBlock);
  v19 = v1;

  [v14 performWithoutAnimation_];
  _Block_release(v18);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_13:
    v17 = 0;
  }

  v37 = v17;
  v20 = *((*v4 & *v1) + 0x148);
  if ((v20(v13) & 1) == 0)
  {
    v21 = (*((*v4 & *v1) + 0xBD8))() == 3;
    (*((*v4 & *v1) + 0x1300))(v21, MEMORY[0x277D84F90]);
  }

  v22 = (*((*v4 & *v1) + 0x1378))(MEMORY[0x277D84F90], 0, 0);
  (*((*v4 & *v1) + 0x12E0))(v22);
  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  v25 = objc_opt_self();
  v26 = [v25 willShowMenuNotification];
  [v24 addObserver:v1 selector:sel_menuControllerWillShow name:v26 object:0];

  v27 = [v23 defaultCenter];
  v28 = [v25 willHideMenuNotification];
  [v27 addObserver:v1 selector:sel_menuControllerWillHide name:v28 object:0];

  DOCItemCollectionViewController.startObservingAppProtectionNotifications()();
  DOCItemCollectionViewController.updateShieldUIVisibilityForCurrentProtectedState()();
  v29 = [v6 forPickingDocuments];
  if (v29)
  {
    v29 = DOCItemCollectionViewController.multiSelectionOpenAction.getter();
    if (v29)
    {

      v29 = 1;
    }
  }

  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v1) + 0x150))(v29);
  v32 = v20(v31);
  if (v32)
  {
    v33 = (*((*v30 & *v1) + 0xD60))();
    LOWORD(aBlock[0]) = 0;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v33, aBlock, 0);
  }

  v34 = (*((*v30 & *v1) + 0xBD8))(v32);
  if (v34 == 2)
  {
    DOCItemCollectionViewController.resetColumnsIfNeeded()();
    v35 = (*((*v30 & *v1) + 0xB08))();
    swift_beginAccess();
    *(v35 + 120) = 1;
  }

  v36 = (*((*v30 & *v1) + 0xFC8))(v34);
  specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(v36);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v37);
}

uint64_t closure #1 in DOCItemCollectionViewController.viewWillAppear(_:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0xD60))();
  v3 = 2;
  DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v1, &v3, 0);
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v3 = objc_msgSendSuper2(&v8, sel_viewIsAppearing_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 1;
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1010))(v3);
  v5 = [v4 indexPathsForVisibleItems];

  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);

  if (v7)
  {
    DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v4 = objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
  v7 = (v6)(v4);
  v8 = DOCFocusGroupIdentifierBrowserFromConfiguration();
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = MEMORY[0x24C1FAD20](v9);
  }

  [v7 setFocusGroupIdentifier_];

  v10 = (*((*v5 & *v2) + 0x1448))();
  if (v10)
  {
    v10 = (*((*v5 & *v2) + 0x1498))();
    if (v10)
    {
      (*(*v10 + 448))(v10);
    }
  }

  if ((*((*v5 & *v2) + 0x148))(v10))
  {
    DOCItemCollectionViewController.updateToolBarItems()();
  }

  v11 = (*((*v5 & *v2) + 0xAE8))();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 effectiveFullBrowser];

    [v13 establishFirstResponderIfNeeded];
  }

  v14 = v6();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DOCItemCollectionViewController and conformance DOCItemCollectionViewController, type metadata accessor for DOCItemCollectionViewController);
  swift_unknownObjectRetain();
  UICollectionView.appIntentsDataSource.setter();

  DOCItemCollectionViewController.addChangeViewOptionsInteractions()();
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = objc_opt_self();
  v7 = [v6 willShowMenuNotification];
  [v5 removeObserver:v2 name:v7 object:0];

  v8 = [v4 defaultCenter];
  v9 = [v6 willHideMenuNotification];
  [v8 removeObserver:v2 name:v9 object:0];

  DOCItemCollectionViewController.stopObservingAppProtectionNotifications()();
  [v2 resignFirstResponder];
  v10 = [objc_opt_self() sharedManager];
  [v10 unregisterKeyboardFocusable_];

  DOCItemCollectionViewController.removeChangeViewOptionsInteractions()();
  v11 = [objc_opt_self() defaultPermission];
  [v11 cleanAppContainerBundleIDCache];

  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v2) + 0x1990))();
  [v13 invalidate];

  v14 = (*((*v12 & *v2) + 0x19A8))();
  [v14 invalidate];

  (*((*v12 & *v2) + 0x7C8))(0, 0);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView;
  v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView);
  if (v16)
  {
    v17 = *((*v12 & *v16) + 0xE0);
    v18 = v16;
    v17();

    v19 = *(v2 + v15);
    if (v19)
    {
      v20 = *((*v12 & *v19) + 0xA8);
      v21 = v19;
      v20(0, 0);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.resolvedItemHandler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);

  return v1;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.hasCalledHandler.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.hasCalledHandler.setter(char a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.invokeItemHandler(withNode:)(uint64_t a1)
{
  result = (*(*v1 + 120))();
  if ((result & 1) == 0)
  {
    (*(*v1 + 128))(1);
    return (*(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler))(a1);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.__allocating_init(node:url:resolvedItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler) = 0;
  *(v8 + 16) = a1;
  outlined init with copy of DOCGridLayout.Spec?(a2, v8 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd);
  v9 = (v8 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);
  *v9 = a3;
  v9[1] = a4;
  UUID.init()();
  outlined destroy of CharacterSet?(a2, &_s10Foundation3URLVSgMd);
  return v8;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.init(node:url:resolvedItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler) = 0;
  *(v4 + 16) = a1;
  outlined init with copy of DOCGridLayout.Spec?(a2, v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd);
  v14 = (v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);
  *v14 = a3;
  v14[1] = a4;
  UUID.init()();
  outlined destroy of CharacterSet?(a2, &_s10Foundation3URLVSgMd);
  (*(v10 + 32))(v4 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID, v13, v9);
  return v4;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v14 - v3;
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x24C1FAEA0](0x7473657571657228, 0xEC000000203A4449);
  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v5);

  v6 = MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BDEBA0);
  v7 = (*(*v0 + 120))(v6);
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x24C1FAEA0](v9, v10);

  MEMORY[0x24C1FAEA0](0x203A6C7275203BLL, 0xE700000000000000);
  outlined init with copy of DOCGridLayout.Spec?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, v4, &_s10Foundation3URLVSgMd);
  v11 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v11);

  MEMORY[0x24C1FAEA0](0x203A65646F6E203BLL, 0xE800000000000000);
  v14[1] = v0[2];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v12 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v12);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return v15;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.deinit()
{
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd);

  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCItemCollectionViewController.PendingNodeContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd);

  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchTime();
  v60 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v59 = &v57 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v57 - v24;
  outlined init with copy of DOCGridLayout.Spec?(a2, &v57 - v24, &_s10Foundation3URLVSgMd);
  type metadata accessor for DOCItemCollectionViewController.PendingNodeContext(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_hasCalledHandler) = 0;
  *(v26 + 16) = a1;
  outlined init with copy of DOCGridLayout.Spec?(v25, v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, &_s10Foundation3URLVSgMd);
  v27 = (v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_resolvedItemHandler);
  *v27 = v57;
  v27[1] = a4;
  swift_unknownObjectRetain();

  UUID.init()();
  outlined destroy of CharacterSet?(v25, &_s10Foundation3URLVSgMd);
  (*(v18 + 32))(v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID, v21, v17);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.UI);
  swift_unknownObjectRetain();
  v29 = v67;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BE12C0, aBlock);
    *(v32 + 12) = 2080;
    v34 = [a1 displayName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, aBlock);

    *(v32 + 14) = v38;
    *(v32 + 22) = 2080;
    v40 = (*((*MEMORY[0x277D85000] & *v29) + 0xA68))(v39);
    v41 = [v40 identifier];

    v69 = v41;
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v42 = String.init<A>(describing:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, aBlock);

    *(v32 + 24) = v44;
    _os_log_impl(&dword_2493AC000, v30, v31, "%s - adding node to be resolved: %s in source: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v33, -1, -1);
    MEMORY[0x24C1FE850](v32, -1, -1);
  }

  v45 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
  swift_beginAccess();

  MEMORY[0x24C1FB090](v46);
  if (*((*(v29 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v57 = static OS_dispatch_queue.main.getter();
  v47 = v58;
  static DispatchTime.now()();
  v48 = v59;
  + infix(_:_:)();
  v67 = *(v60 + 8);
  (v67)(v47, v68);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v26;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:);
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1387;
  v51 = _Block_copy(aBlock);

  v52 = v61;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v53 = v63;
  v54 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v57;
  MEMORY[0x24C1FB940](v48, v52, v53, v51);
  _Block_release(v51);

  (*(v65 + 8))(v53, v54);
  (*(v62 + 8))(v52, v64);
  return (v67)(v48, v68);
}

uint64_t closure #1 in DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v48[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(*a2 + 144))();
  }

  v13 = Strong;
  v14 = *(v4 + 16);
  v51 = v3;
  v14(v11, a2 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_requestID, v3);
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
  v16 = swift_beginAccess();
  v17 = *&v13[v15];
  MEMORY[0x28223BE20](v16, v18);
  v52 = v11;
  *&v48[-16] = v11;

  v19 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:), &v48[-32], v17);
  v21 = v20;

  if (v21)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);
    v24 = v51;
    v25 = v52;
    v14(v7, v52, v51);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v53[0] = v50;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BE12C0, v53);
      *(v28 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v4 + 8);
      v49 = v27;
      v32(v7, v24);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v53);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v26, v49, "%s - TIMEOUT did not find pendingNodeContext for requestID: %s", v28, 0x16u);
      v34 = v50;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v34, -1, -1);
      v35 = v28;
      v25 = v52;
      MEMORY[0x24C1FE850](v35, -1, -1);
    }

    else
    {

      v32 = *(v4 + 8);
      v32(v7, v24);
    }

    return (v32)(v25, v24);
  }

  v36 = *&v13[v15];
  if ((v36 & 0xC000000000000001) != 0)
  {

    v21 = MEMORY[0x24C1FC540](v19, v36);

LABEL_12:
    swift_beginAccess();
    specialized Array.remove(at:)(v19);
    swift_endAccess();

    if (one-time initialization token for UI == -1)
    {
LABEL_13:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.UI);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v53[0] = v50;
        *v40 = 136315394;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BE12C0, v53);
        *(v40 + 12) = 2080;
        v41 = *(*v21 + 160);

        v43 = v41(v42);
        v45 = v44;

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v53);

        *(v40 + 14) = v46;
        _os_log_impl(&dword_2493AC000, v38, v39, "%s - TIMEOUT calling resolvedItemHandler with 'nil' item for pending node context: %s", v40, 0x16u);
        v47 = v50;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v47, -1, -1);
        MEMORY[0x24C1FE850](v40, -1, -1);
      }

      v24 = v51;
      v25 = v52;
      (*(*v21 + 144))(0);

      v32 = *(v4 + 8);
      return (v32)(v25, v24);
    }

LABEL_20:
    swift_once();
    goto LABEL_13;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v19 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v36 + 8 * v19 + 32);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void DOCItemCollectionViewController.resolvePendingNodeContexts()()
{
  if (one-time initialization token for UI != -1)
  {
LABEL_26:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, v38);
    *(v5 + 12) = 2080;
    v7 = (*((*MEMORY[0x277D85000] & *v2) + 0xA68))();
    v8 = [v7 identifier];

    v37 = v8;
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v38);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s - BEGIN source: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
LABEL_6:
      v14 = v2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v37 = v18;
        *v17 = 136315394;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, &v37);
        *(v17 + 12) = 2048;
        v19 = *(v2 + v12);
        if (v19 >> 62)
        {
          v20 = __CocoaSet.count.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v17 + 14) = v20;

        _os_log_impl(&dword_2493AC000, v15, v16, "%s - pendingNodeContexts == %ld, keep going", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x24C1FE850](v18, -1, -1);
        MEMORY[0x24C1FE850](v17, -1, -1);
      }

      else
      {
      }

      v0 = *(v2 + v12);
      if (v0 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21)
      {
        v22 = 0;
        do
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C1FC540](v22, v0);
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_22:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v22 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_26;
            }

            v23 = *(v0 + 8 * v22 + 32);

            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_22;
            }
          }

          resolvePendingNodeContext #1 (_:) in DOCItemCollectionViewController.resolvePendingNodeContexts()(v23, v14);

          ++v22;
        }

        while (v24 != v21);
      }

      v25 = v14;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37 = v29;
        *v28 = 136315394;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, &v37);
        *(v28 + 12) = 2080;
        v30 = (*((*MEMORY[0x277D85000] & *v25) + 0xA68))();
        [v30 identifier];

        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v31 = String.init<A>(describing:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v37);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_2493AC000, v26, v27, "%s - END source: %s", v28, 0x16u);
        swift_arrayDestroy();
        v34 = v29;
LABEL_30:
        MEMORY[0x24C1FE850](v34, -1, -1);
        MEMORY[0x24C1FE850](v28, -1, -1);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_6;
  }

  v26 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v35))
  {
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0BA0, &v37);
    _os_log_impl(&dword_2493AC000, v26, v35, "%s - pendingNodeContexts == 0, returning ", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v34 = v36;
    goto LABEL_30;
  }

LABEL_31:
}

void resolvePendingNodeContext #1 (_:) in DOCItemCollectionViewController.resolvePendingNodeContexts()(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v62 - v6;
  if (one-time initialization token for UI != -1)
  {
LABEL_37:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.UI);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v64 = a2;
  v65 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v67[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v67);
    *(v13 + 12) = 2080;
    swift_getObjectType();
    v15 = DOCNode.nodeDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v67);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    outlined init with copy of DOCGridLayout.Spec?(a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url, v7, &_s10Foundation3URLVSgMd);
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v7, &_s10Foundation3URLVSgMd);
      v20 = 0xE300000000000000;
      v21 = 4271950;
    }

    else
    {
      v21 = URL.absoluteString.getter();
      v20 = v22;
      (*(v19 + 8))(v7, v18);
    }

    a2 = v64;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v67);

    *(v13 + 24) = v23;
    _os_log_impl(&dword_2493AC000, v10, v11, "%s - Resolving context for : node %s - URL: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  else
  {
  }

  v24 = (*((*MEMORY[0x277D85000] & *a2) + 0xDA0))(a1[2], a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables31DOCItemCollectionViewController18PendingNodeContext_url);
  if (v24)
  {
    v25 = v24;
    swift_unknownObjectRetain_n();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v67[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v67);
      *(v28 + 12) = 2080;
      swift_getObjectType();
      v30 = DOCNode.nodeDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v67);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v26, v27, "%s - Found matching node: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    v63 = v25;
    v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts;
    swift_beginAccess();
    v34 = *(a2 + v33);
    v62 = v33;
    if (v34 >> 62)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = &unk_27EF18000;

    v7 = 0;
    while (v35 != v7)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v7, v34);
      }

      else
      {
        if (v7 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v36 = static UUID.== infix(_:_:)();

      if (v36)
      {

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v66[0] = v50;
          *v49 = 136315138;
          *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v66);
          _os_log_impl(&dword_2493AC000, v47, v48, "%s - Removing pending node context", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x24C1FE850](v50, -1, -1);
          MEMORY[0x24C1FE850](v49, -1, -1);
        }

        v46 = v63;
        swift_beginAccess();
        specialized Array.remove(at:)(v7);
        swift_endAccess();

        goto LABEL_32;
      }

      if (__OFADD__(v7++, 1))
      {
        goto LABEL_36;
      }
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v66);
      _os_log_impl(&dword_2493AC000, v42, v43, "%s - Not Removing pending node context (context is gone already)", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C1FE850](v45, -1, -1);
      MEMORY[0x24C1FE850](v44, -1, -1);
    }

    v46 = v63;
LABEL_32:
    swift_unknownObjectRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v53 = 136315394;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v66);
      *(v53 + 12) = 2080;
      v55 = [v46 displayName];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v66);

      *(v53 + 14) = v59;
      _os_log_impl(&dword_2493AC000, v51, v52, "%s - Calling resolved block for node %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v53, -1, -1);
    }

    v60 = *(*a1 + 144);
    v61 = swift_unknownObjectRetain();
    v60(v61);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BE0BC0, v67);
      _os_log_impl(&dword_2493AC000, v38, v39, "%s - Could Not Find existing node", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C1FE850](v41, -1, -1);
      MEMORY[0x24C1FE850](v40, -1, -1);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.clearAllEnqueuedScrollAndSelectionNodes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = MEMORY[0x277D84F90];

  v5 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v5 = 0;
  *(v5 + 8) = 0;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v4, v0 + v7, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  swift_endAccess();
}

void DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30[-v9];
  v11 = type metadata accessor for ScrollPositionInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) & 1) != 0 || (a1)
  {
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal;
    v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal);
    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D85000];
    if (v18 >= 1)
    {
      v20 = *((*MEMORY[0x277D85000] & *v1) + 0x16C8);

      v22 = v20(v21, 0, 0);
      v19 = MEMORY[0x277D85000];
      LOBYTE(v20) = v22;

      if (v20)
      {
        *(v1 + v16) = MEMORY[0x277D84F90];
      }
    }

    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v1 + v23, v10, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      outlined destroy of CharacterSet?(v10, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
    }

    else
    {
      outlined init with take of ScrollPositionInfo.ItemOffset(v10, v15, type metadata accessor for ScrollPositionInfo);
      v24 = DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(v15, 0, 1);
      outlined destroy of RestorableSettings(v15, type metadata accessor for ScrollPositionInfo);
      if (v24)
      {
        (*(v12 + 56))(v6, 1, 1, v11);
        swift_beginAccess();
        outlined assign with take of IndexPath?(v6, v1 + v23, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
        swift_endAccess();
      }
    }

    v25 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll))
    {
      v26 = *((*v19 & *v1) + 0x16D8);
      v27 = v25[8];
      v28 = swift_unknownObjectRetain();
      v29 = v26(v28, v27 & 1, 0);
      swift_unknownObjectRelease();
      if (v29)
      {
        *v25 = 0;
        v25[8] = 0;
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t DOCItemCollectionViewController.needsForcedUnderNavBarAppearanceOnAppear.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.needsForcedUnderNavBarAppearanceOnAppear.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  LODWORD(v157) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v139 - v9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMd);
  MEMORY[0x28223BE20](v161, v11);
  v13 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v158 = (&v139 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  ObjCClassFromMetadata = (&v139 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v156 = &v139 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v139 - v30;
  v166 = type metadata accessor for IndexPath();
  v163 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v32);
  v159 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v154 = &v139 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v162 = &v139 - v39;
  v155 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v160 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v40);
  v42 = (&v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ScrollPositionInfo.ItemOffset(a1, v42, type metadata accessor for ScrollPositionInfo.ItemOffset);
  v164 = type metadata accessor for ScrollPositionInfo(0);
  v165 = a1;
  v43 = MEMORY[0x277D85000];
  v44 = (*((*MEMORY[0x277D85000] & *v4) + 0x16B0))(*(a1 + *(v164 + 20)));
  if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) != 1 || (v45 = (*((*v43 & *v4) + 0x1018))(v44)) == 0)
  {
LABEL_5:
    if ((a2 & 1) == 0)
    {
LABEL_10:
      v58 = 0;
LABEL_11:
      outlined destroy of RestorableSettings(v42, type metadata accessor for ScrollPositionInfo.ItemOffset);
      return v58;
    }

    v51 = (*((*v43 & *v4) + 0xBF0))();
    v53 = v165;
    if (v52 == -1)
    {
LABEL_9:
      (*((*v43 & *v4) + 0x1648))(v51);
      outlined init with copy of ScrollPositionInfo.ItemOffset(v53, v10, type metadata accessor for ScrollPositionInfo);
      (*(*(v164 - 8) + 56))(v10, 0, 1);
      v57 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v10, v4 + v57, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
      swift_endAccess();
      goto LABEL_10;
    }

    v54 = v51;
    LOBYTE(v55) = v52;
    v24 = v43;
    if (one-time initialization token for restorableSettingsCache == -1)
    {
LABEL_8:
      v56 = type metadata accessor for RestorableSettings(0);
      (*(*(v56 - 8) + 56))(ObjCClassFromMetadata, 1, 1, v56);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(ObjCClassFromMetadata, v54, v55 & 1);
      v51 = swift_endAccess();
      v43 = v24;
      goto LABEL_9;
    }

LABEL_78:
    swift_once();
    goto LABEL_8;
  }

  v149 = v45;
  v46 = *v42;
  v47 = (*v43 & *v4) + 3480;
  v153 = *((*v43 & *v4) + 0xD98);
  v152 = v47;
  v153(v46);
  v48 = v163;
  v49 = *(v163 + 6);
  v50 = v166;
  v151 = v163 + 48;
  v150 = v49;
  if (v49(v31, 1, v166) == 1)
  {

    outlined destroy of CharacterSet?(v31, &_s10Foundation9IndexPathVSgMd);
    v43 = MEMORY[0x277D85000];
    goto LABEL_5;
  }

  v60 = *(v48 + 4);
  v146 = v48 + 32;
  v145 = v60;
  v61 = (v60)(v162, v31, v50);
  v62 = MEMORY[0x277D85000];
  if (v157)
  {
    v63 = (*((*MEMORY[0x277D85000] & *v4) + 0xBF0))(v61);
    if (v64 != -1)
    {
      v65 = v63;
      v66 = v64;
      if (one-time initialization token for restorableSettingsCache != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for RestorableSettings(0);
      (*(*(v67 - 8) + 56))(ObjCClassFromMetadata, 1, 1, v67);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(ObjCClassFromMetadata, v65, v66 & 1);
      v63 = swift_endAccess();
      v62 = MEMORY[0x277D85000];
    }

    (*((*v62 & *v4) + 0x1648))(v63);
  }

  v10 = v149;
  [v10 contentSize];
  v55 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  ObjCClassFromMetadata = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  if (v68 == 0.0)
  {
    result = [v4 view];
    if (!result)
    {
      __break(1u);
      goto LABEL_80;
    }

    v69 = result;
    [result layoutBelowIfNeeded];
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v10 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];

  v71 = (*((*v62 & *v4) + 0xF10))();
  v157 = v13;
  v147 = v24;
  if (v71)
  {
    v72 = (*((*v62 & *v4) + 0xBD8))();
    v53 = v165;
    if (!v72)
    {
      v74 = *(v165 + *(v164 + 24));
      v54 = (v74 + 64);
      v75 = 1 << *(v74 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v53 = v76 & *(v74 + 64);
      v77 = (v75 + 63) >> 6;
      v140 = (v163 + 8);
      v143 = v74;

      v24 = 0;
      v142 = v54;
      v141 = v77;
      v144 = v42;
      v148 = v10;
      v78 = v158;
      while (v53)
      {
LABEL_35:
        v80 = __clz(__rbit64(v53)) | (v24 << 6);
        v81 = (*(v143 + 48) + 40 * v80);
        v83 = *v81;
        v82 = v81[1];
        v84 = v81[2];
        v85 = v81[3];
        v86 = v81[4];
        v87 = *(v161 + 48);
        outlined init with copy of ScrollPositionInfo.ItemOffset(*(v143 + 56) + *(v160 + 72) * v80, v78 + v87, type metadata accessor for ScrollPositionInfo.ItemOffset);
        *v78 = v83;
        v78[1] = v82;
        v78[2] = v84;
        v78[3] = v85;
        v78[4] = v86;
        v88 = *(v78 + v87);

        v89 = v156;
        v153(v88);
        v90 = v166;
        if (v150(v89, 1, v166) == 1)
        {
          outlined destroy of CharacterSet?(v89, &_s10Foundation9IndexPathVSgMd);
          v42 = v144;
          v10 = v148;
        }

        else
        {
          v91 = v154;
          v145(v154, v89, v90);
          v92 = IndexPath._bridgeToObjectiveC()().super.isa;
          v10 = v148;
          [v148 scrollToItemAtIndexPath:v92 atScrollPosition:8 animated:0];

          (*v140)(v91, v90);
          v42 = v144;
        }

        ObjCClassFromMetadata = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        v54 = v142;
        v77 = v141;
        v53 &= v53 - 1;
        outlined destroy of CharacterSet?(v158, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMd);
        v55 = &selRef_setNavigationTitleForTagListInInfoPanel_;
      }

      while (1)
      {
        v79 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v79 >= v77)
        {

          v73 = 1;
          goto LABEL_38;
        }

        v53 = *&v54[8 * v79];
        ++v24;
        if (v53)
        {
          v24 = v79;
          goto LABEL_35;
        }
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v73 = 0;
  }

  else
  {
    v73 = 0;
LABEL_38:
    v53 = v165;
  }

  [v10 layoutBelowIfNeeded];
  v93 = (*((*MEMORY[0x277D85000] & *v4) + 0x18D0))(*v53);
  v94 = v10;
  if (!v93)
  {
LABEL_50:

    if (!v73)
    {
      (*(v163 + 1))(v162, v166);

      v58 = 1;
      goto LABEL_11;
    }

    v148 = v10;
    v144 = v42;
    v118 = *(v53 + *(v164 + 24));
    v55 = (v118 + 64);
    v119 = 1 << *(v118 + 32);
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & *(v118 + 64);
    v54 = ((v119 + 63) >> 6);
    v156 = v163 + 8;
    v165 = v118;

    v10 = 0;
    v42 = v166;
    v163 = v54;
    v164 = v55;
    while (v121)
    {
LABEL_61:
      v123 = __clz(__rbit64(v121)) | (v10 << 6);
      v124 = (*(v165 + 48) + 40 * v123);
      v126 = *v124;
      v125 = v124[1];
      v128 = v124[2];
      v127 = v124[3];
      v24 = v124[4];
      v53 = v157;
      v129 = (v157 + *(v161 + 48));
      outlined init with copy of ScrollPositionInfo.ItemOffset(*(v165 + 56) + *(v160 + 72) * v123, v129, type metadata accessor for ScrollPositionInfo.ItemOffset);
      *v53 = v126;
      *(v53 + 8) = v125;
      *(v53 + 16) = v128;
      *(v53 + 24) = v127;
      *(v53 + 32) = v24;
      v158 = v129;
      v130 = *v129;

      ObjCClassFromMetadata = v147;
      v153(v130);
      v42 = v166;
      if (v150(ObjCClassFromMetadata, 1, v166) == 1)
      {
        outlined destroy of CharacterSet?(ObjCClassFromMetadata, &_s10Foundation9IndexPathVSgMd);
        v54 = v163;
        v55 = v164;
      }

      else
      {
        v131 = v159;
        v145(v159, ObjCClassFromMetadata, v42);
        v132 = IndexPath._bridgeToObjectiveC()().super.isa;
        v24 = [v148 cellForItemAtIndexPath_];

        v55 = v164;
        if (v24)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIScrollView);
          v133 = [v24 superview];
          if (v133)
          {
            v134 = v133;
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            while (([v134 isKindOfClass_] & 1) == 0)
            {
              v135 = [v134 superview];

              v134 = v135;
              if (!v135)
              {
                goto LABEL_67;
              }
            }

            objc_opt_self();
            ObjCClassFromMetadata = swift_dynamicCastObjCClassUnconditional();
            if (static NSObject.== infix(_:_:)())
            {
              (*v156)(v159, v42);
            }

            else
            {
              v136 = *(v158 + *(v155 + 24));
              [ObjCClassFromMetadata contentOffset];
              [ObjCClassFromMetadata setContentOffset:0 animated:{v136 + v137, v138 + 0.0}];

              (*v156)(v159, v42);
            }
          }

          else
          {
LABEL_67:
            (*v156)(v159, v42);
          }

          v53 = v157;
        }

        else
        {
          (*v156)(v131, v42);
        }

        v54 = v163;
      }

      v121 &= v121 - 1;
      outlined destroy of CharacterSet?(v53, &_s26DocumentManagerExecutables20DOCCollectionSectionV3key_AA18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetV5valuetMd);
    }

    while (1)
    {
      v122 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v122 >= v54)
      {

        (*v156)(v162, v42);
        v58 = 1;
        v42 = v144;
        goto LABEL_11;
      }

      v121 = v55[v122];
      ++v10;
      if (v121)
      {
        v10 = v122;
        goto LABEL_61;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  ObjCClassFromMetadata = v93;
  v95 = DOCItemCollectionViewController.promptView.getter();
  if (!v95)
  {
    v103 = 0.0;
    goto LABEL_44;
  }

  v96 = v95;
  result = [v4 view];
  if (result)
  {
    v97 = result;
    [result bounds];
    v99 = v98;
    v101 = v100;

    [v96 systemLayoutSizeFittingSize_];
    v103 = v102;

LABEL_44:
    v104 = DOCItemCollectionViewController.offsetToTop(ofCell:)(ObjCClassFromMetadata);
    v24 = v149;
    v105 = v104 - v103 - *(v53 + *(v155 + 24));
    v106 = MEMORY[0x277D85000];
    v107 = (*((*MEMORY[0x277D85000] & *v10) + 0x138))();
    v109 = v108;
    v110 = (*((*v106 & *v10) + 0x140))();
    v112 = v111;
    [v10 contentOffset];
    if (v105 + v113 >= v109)
    {
      [v10 contentOffset];
      v115 = v114;

      if (v112 >= v105 + v115)
      {
        [v10 contentOffset];
        v107 = v116 + 0.0;
        v109 = v105 + v117;
      }

      else
      {
        v107 = v110;
        v109 = v112;
      }
    }

    else
    {
    }

    [v10 setContentOffset:0 animated:{v107, v109}];
    v94 = ObjCClassFromMetadata;
    goto LABEL_50;
  }

LABEL_80:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)(Swift::OpaquePointer nodes, Swift::Bool shouldEnqueue, Swift::Bool selectEvenIfVisible)
{
  v156 = selectEvenIfVisible;
  LODWORD(v166) = shouldEnqueue;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v154 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v152 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v153 = &v142 - v18;
  v161 = type metadata accessor for IndexPath();
  v155 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v19);
  v150 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v151 = &v142 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tSgMd);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = (&v142 - v26);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
  v162 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v28);
  v157 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v149 = &v142 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v169 = &v142 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v160 = &v142 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v164 = &v142 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v159 = &v142 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v49 = &v142 - v48;
  v50 = (v47 >> 62);
  v165 = v47;
  if (v47 >> 62)
  {
    goto LABEL_57;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

LABEL_3:
  v148 = v13;
  v144 = v12;
  v145 = v9;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.UI);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v147 = v8;
  v146 = v7;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock = v7;
    *v55 = 136315138;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEBC0, &aBlock);
    _os_log_impl(&dword_2493AC000, v52, v53, "%s Revealing node", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v55, -1, -1);
  }

  v56 = v163;
  v8 = MEMORY[0x277D85000];
  v57 = (*((*MEMORY[0x277D85000] & *v163) + 0x1018))();
  if (!v57)
  {
    if (v166)
    {
      v65 = v8;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock = v69;
        *v68 = 136315138;
        *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEBC0, &aBlock);
        _os_log_impl(&dword_2493AC000, v66, v67, "%s Enqueueing node to reveal", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x24C1FE850](v69, -1, -1);
        MEMORY[0x24C1FE850](v68, -1, -1);
      }

      v70 = v163;
      v71 = (*((*v65 & *v163) + 0xBF0))();
      if (v72 != -1)
      {
        v73 = v71;
        v74 = v72;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for RestorableSettings(0);
        (*(*(v75 - 8) + 56))(v49, 1, 1, v75);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v49, v73, v74 & 1);
        v71 = swift_endAccess();
      }

      (*((*v65 & *v70) + 0x1648))(v71);
      *(v70 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v165;
    }

    return 0;
  }

  v58 = v57;
  v59 = (*((*v8 & *v56) + 0xBF0))();
  if (v60 != -1)
  {
    v61 = v59;
    v62 = v60;
    if (one-time initialization token for restorableSettingsCache != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for RestorableSettings(0);
    (*(*(v63 - 8) + 56))(v49, 1, 1, v63);
    v8 = &static DOCItemCollectionViewController.restorableSettingsCache;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v49, v61, v62 & 1);
    v59 = swift_endAccess();
  }

  (*((*MEMORY[0x277D85000] & *v163) + 0x1648))(v59);
  if (v50)
  {
    v76 = v165;
    v77 = __CocoaSet.count.getter();
    v64 = v76;
    v9 = v77;
  }

  else
  {
    v64 = v165;
    v9 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v168 = v58;
  v142 = v4;
  v143 = v3;
  v50 = v163;
  if (v9)
  {
    v13 = 0;
    v49 = 0;
    v4 = v64 & 0xC000000000000001;
    v3 = v64 & 0xFFFFFFFFFFFFFF8;
    v12 = (v162 + 48);
    v166 = MEMORY[0x277D84F90];
    v158 = v64 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v8 = MEMORY[0x24C1FC540](v13);
        v7 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 >= *(v3 + 16))
        {
          goto LABEL_56;
        }

        v8 = *(v64 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v7 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          if (__CocoaSet.count.getter() < 1)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      aBlock = v8;
      closure #1 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)(&aBlock, v50, v168, v27);
      swift_unknownObjectRelease();
      if ((*v12)(v27, 1, v167) == 1)
      {
        outlined destroy of CharacterSet?(v27, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tSgMd);
      }

      else
      {
        v78 = v159;
        outlined init with take of (key: URL, value: FPItem)(v27, v159, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        outlined init with take of (key: URL, value: FPItem)(v78, v164, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v79 = v166;
        }

        else
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v166[2] + 1, 1, v166);
        }

        v81 = v79[2];
        v80 = v79[3];
        v8 = (v81 + 1);
        if (v81 >= v80 >> 1)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 > 1, v81 + 1, 1, v79);
        }

        v79[2] = v8;
        v82 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v166 = v79;
        outlined init with take of (key: URL, value: FPItem)(v164, v79 + v82 + *(v162 + 72) * v81, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        v50 = v163;
        v3 = v158;
      }

      ++v13;
      v64 = v165;
      if (v7 == v9)
      {
        goto LABEL_41;
      }
    }
  }

  v166 = MEMORY[0x277D84F90];
LABEL_41:
  v83 = v166[2];
  if (!v83)
  {

    return 0;
  }

  v84 = v168;
  if (v156)
  {
    v85 = 1;
    v86 = v161;
    v87 = MEMORY[0x277D85000];
    goto LABEL_61;
  }

  aBlock = MEMORY[0x277D84F90];
  v89 = v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
  v90 = *(v162 + 72);
  v91 = (v155 + 8);
  v165 = MEMORY[0x277D84F90];
  v92 = v167;
  v93 = v169;
  do
  {
    v94 = v160;
    outlined init with copy of DOCGridLayout.Spec?(v89, v160, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
    outlined init with copy of DOCGridLayout.Spec?(v94, v93, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
    swift_unknownObjectRelease();
    v95 = *(v92 + 48);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v97 = &v169[v95];
    v93 = v169;
    (*v91)(v97, v161);
    v98 = [v84 cellForItemAtIndexPath_];

    v99 = outlined destroy of CharacterSet?(v94, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
    if (v98)
    {
      MEMORY[0x24C1FB090](v99);
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v165 = aBlock;
    }

    v89 += v90;
    --v83;
    v92 = v167;
    v84 = v168;
  }

  while (v83);
  v100 = v165;
  v87 = MEMORY[0x277D85000];
  if (v165 >> 62)
  {
    v105 = __CocoaSet.count.getter();
    v50 = v163;
    v86 = v161;
    if (!v105)
    {
      goto LABEL_60;
    }

LABEL_54:
    v101 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20UICollectionViewCellC_SayAEGTt0g5Tf4g_n(v100);

    v103 = (*((*v87 & *v50) + 0x12F0))(v102);
    v104 = specialized Set.isSubset<A>(of:)(v103, v101);

    v85 = v104 ^ 1;
  }

  else
  {
    v50 = v163;
    v86 = v161;
    if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

LABEL_60:

    v85 = 1;
  }

LABEL_61:
  v106 = *(v50 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v106 && (v107 = [v106 activeDocumentCreationSession]) != 0 && (v108 = v107, v109 = (*((*v87 & *v107) + 0x110))(), v108, (v109 & 1) != 0))
  {
    if (v166[2])
    {
      v110 = v149;
      outlined init with copy of DOCGridLayout.Spec?(v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80)), v149, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);

      swift_unknownObjectRelease();
      v111 = v155;
      v112 = *(v155 + 32);
      v113 = v110 + *(v167 + 48);
      v114 = v150;
      v112(v150, v113, v86);
      v115 = v151;
      v112(v151, v114, v86);
      v116 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v84 scrollToItemAtIndexPath:v116 atScrollPosition:2 animated:0];

      *(v50 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
      v117 = objc_opt_self();
      v118 = swift_allocObject();
      *(v118 + 16) = v50;
      v174 = partial apply for closure #3 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:);
      v175 = v118;
      aBlock = MEMORY[0x277D85DD0];
      v171 = 1107296256;
      v172 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v173 = &block_descriptor_158_1;
      v119 = _Block_copy(&aBlock);
      v120 = v50;

      [v117 performAfterCATransactionCommits_];
      _Block_release(v119);

      (*(v111 + 8))(v115, v86);
    }

    else
    {
    }

    return 1;
  }

  else if (v85)
  {
    (*((*v87 & *v50) + 0x1308))();
    v121 = v167;
    v122 = v166[2];
    v123 = v157;
    v124 = v169;
    if (v122)
    {
      v125 = v166 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v126 = *(v162 + 72);
      v127 = (v155 + 8);
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(v125, v123, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        outlined init with copy of DOCGridLayout.Spec?(v123, v124, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        swift_unknownObjectRelease();
        v128 = *(v121 + 48);
        v129 = IndexPath._bridgeToObjectiveC()().super.isa;
        v130 = &v169[v128];
        v124 = v169;
        (*v127)(v130, v86);
        [v168 selectItemAtIndexPath:v129 animated:1 scrollPosition:2];

        v123 = v157;
        outlined destroy of CharacterSet?(v157, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        v125 += v126;
        --v122;
      }

      while (v122);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v169 = static OS_dispatch_queue.main.getter();
    v131 = v152;
    static DispatchTime.now()();
    v132 = v153;
    + infix(_:_:)();
    v133 = *(v154 + 8);
    v133(v131, v148);
    v134 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v135 = swift_allocObject();
    v136 = v166;
    *(v135 + 16) = v134;
    *(v135 + 24) = v136;
    v174 = partial apply for closure #5 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:);
    v175 = v135;
    aBlock = MEMORY[0x277D85DD0];
    v171 = 1107296256;
    v172 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v173 = &block_descriptor_152_0;
    v137 = _Block_copy(&aBlock);

    v138 = v144;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v139 = v146;
    v140 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v141 = v169;
    MEMORY[0x24C1FB940](v132, v138, v139, v137);
    _Block_release(v137);

    (*(v142 + 8))(v139, v140);
    (*(v145 + 1))(v138, v147);
    v133(v132, v148);
    return 1;
  }

  else
  {

    return 1;
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v51 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v47[-v10];
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19.n128_f64[0] = MEMORY[0x28223BE20](v17, v18);
  v21 = &v47[-v20];
  v22 = *a1;
  (*((*MEMORY[0x277D85000] & *a2) + 0xD98))(v22, v19);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
    return (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
  }

  else
  {
    v49 = a4;
    v50 = v4;
    v25 = *(v13 + 32);
    v25(v21, v11, v12);
    v26 = IndexPath.section.getter();
    if (v26 >= [v51 numberOfSections] || (v27 = IndexPath.item.getter(), v27 >= objc_msgSend(v51, sel_numberOfItemsInSection_, IndexPath.section.getter())))
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.UI);
      (*(v13 + 16))(v16, v21, v12);
      swift_unknownObjectRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v34 = 136315650;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDEBC0, &v53);
        *(v34 + 12) = 2080;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8]);
        v48 = v33;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v38 = *(v13 + 8);
        v38(v16, v12);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v53);

        *(v34 + 14) = v39;
        *(v34 + 22) = 2080;
        v52 = v22;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        v40 = String.init<A>(describing:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v53);

        *(v34 + 24) = v42;
        _os_log_impl(&dword_2493AC000, v32, v48, "%s Invalid index path %s for item %s", v34, 0x20u);
        v43 = v51;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v34, -1, -1);

        v38(v21, v12);
      }

      else
      {

        v44 = *(v13 + 8);
        v44(v16, v12);
        v44(v21, v12);
      }

      v45 = v49;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
      return (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
      v29 = *(v28 + 48);
      v30 = v49;
      *v49 = v22;
      v25(v30 + v29, v21, v12);
      (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
      return swift_unknownObjectRetain();
    }
  }
}

void *specialized Set.isSubset<A>(of:)(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v6 = *(a2 + 16);

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_12:

    v9 = 1;
    return (v9 & 1);
  }

  if (a2 < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    v5 = __CocoaSet.count.getter();
    v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20UICollectionViewCellC_Tt1g5(v4, v5);
LABEL_13:
    v9 = specialized _NativeSet.isSubset<A>(of:)(a1, v2);

    return (v9 & 1);
  }

LABEL_10:

  result = specialized Collection.first.getter(v2);
  v11 = result;
  if (result)
  {
    MEMORY[0x28223BE20](result, v8);
    v10[2] = &v11;
    v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, a1);

    return (v9 & 1);
  }

  __break(1u);
  return result;
}

void closure #5 in DOCItemCollectionViewController.reveal(nodes:shouldEnqueue:selectEvenIfVisible:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v29 = *(v30 + 48);
      v11 = *((*MEMORY[0x277D85000] & *Strong) + 0xD88);
      v27 = (*MEMORY[0x277D85000] & *Strong) + 3464;
      v28 = v11;
      v12 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v26 = *(v3 + 72);
      do
      {
        outlined init with copy of DOCGridLayout.Spec?(v12, v9, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        v13 = v28(&v9[v29], 0);
        if (v13)
        {
          v14 = v13;
          v15 = v25;
          outlined init with copy of DOCGridLayout.Spec?(v9, v25, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
          v16 = *v15;
          v17 = *(v30 + 48);
          v18 = type metadata accessor for IndexPath();
          v19 = *(*(v18 - 8) + 8);
          v19(&v15[v17], v18);
          LODWORD(v17) = [v14 isEqual_];
          swift_unknownObjectRelease();
          v20 = swift_unknownObjectRelease();
          if (v17)
          {
            v21 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1010))(v20);
            v22 = v25;
            outlined init with copy of DOCGridLayout.Spec?(v9, v25, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
            swift_unknownObjectRelease();
            v23 = *(v30 + 48);
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v19((v22 + v23), v18);
            [v21 deselectItemAtIndexPath:isa animated:1];
          }
        }

        outlined destroy of CharacterSet?(v9, &_sSo7DOCNode_p4node_10Foundation9IndexPathV05indexE0tMd);
        v12 += v26;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t DOCItemCollectionViewController.selectAndScroll(to:animated:shouldEnqueue:)(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v101 = a2;
  LODWORD(v102) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v99 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v99 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.UI);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v100 = a1;
    v23 = v9;
    v24 = v18;
    v25 = v15;
    v26 = v14;
    v27 = v22;
    v28 = swift_slowAlloc();
    v103[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000249BDEC00, v103);
    _os_log_impl(&dword_2493AC000, v20, v21, "%s Scrolling to node", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1FE850](v28, -1, -1);
    v29 = v27;
    v14 = v26;
    v15 = v25;
    v18 = v24;
    v9 = v23;
    a1 = v100;
    MEMORY[0x24C1FE850](v29, -1, -1);
  }

  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v4) + 0x1018))();
  if (!v31)
  {
    goto LABEL_8;
  }

  v32 = v31;
  (*((*v30 & *v4) + 0xD98))(a1);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    v31 = outlined destroy of CharacterSet?(v13, &_s10Foundation9IndexPathVSgMd);
LABEL_8:
    if (v102)
    {
      v33 = a1;
      v34 = (*((*v30 & *v4) + 0xBF0))(v31);
      if (v35 != -1)
      {
        v36 = v34;
        v37 = v35;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for RestorableSettings(0);
        (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v9, v36, v37 & 1);
        v34 = swift_endAccess();
      }

      (*((*v30 & *v4) + 0x1648))(v34);
      v39 = v101 & 1;
      v40 = v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
      *v40 = v33;
      v40[8] = v39;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    return 0;
  }

  v42 = *(v15 + 32);
  v102 = v14;
  v42(v18, v13, v14);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v44 = [v32 cellForItemAtIndexPath_];

  if (v44)
  {
    v100 = a1;
    v45 = (*((*v30 & *v4) + 0x12F0))();
    v103[0] = v44;
    MEMORY[0x28223BE20](v45, v46);
    *(&v99 - 2) = v103;
    v47 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v99 - 4), v45);

    if (v47)
    {
      v49 = MEMORY[0x277D85000];
      v50 = (*((*MEMORY[0x277D85000] & *v4) + 0xBF0))(v48);
      if (v51 != -1)
      {
        v52 = v50;
        v53 = v51;
        if (one-time initialization token for restorableSettingsCache != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for RestorableSettings(0);
        (*(*(v54 - 8) + 56))(v9, 1, 1, v54);
        swift_beginAccess();
        specialized Dictionary.subscript.setter(v9, v52, v53 & 1);
        v50 = swift_endAccess();
      }

      v55 = (*((*v49 & *v4) + 0x1648))(v50);
      v56 = (*((*v49 & *v4) + 0x1338))(v55);
      if (v56 >> 62)
      {
        v98 = v56;
        v57 = __CocoaSet.count.getter();
        v56 = v98;
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v100;
      if (v57 == 1)
      {
        v59 = v56;
        swift_getObjectType();
        v60 = specialized Array<A>.contains(node:)(v58, v59);

        if (v60)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
          v62 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_249B9A480;
          (*(v15 + 16))(v63 + v62, v18, v102);
          (*((*v49 & *v4) + 0x1300))(0, v63);

          v64.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v65 = v44;
          v44 = v64.super.isa;
LABEL_41:
          [v32 selectItemAtIndexPath:v64.super.isa animated:v101 & 1 scrollPosition:0];

          (*(v15 + 8))(v18, v102);
          return 1;
        }
      }

      else
      {
      }

      (*((*v49 & *v4) + 0x1308))(v61);
      v64.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v65 = v64.super.isa;
      goto LABEL_41;
    }

    v30 = MEMORY[0x277D85000];
  }

  v66 = IndexPath._bridgeToObjectiveC()().super.isa;
  v67 = [v32 layoutAttributesForItemAtIndexPath_];

  if (!v67)
  {
    (*(v15 + 8))(v18, v102);

    return 0;
  }

  [v67 frame];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v76 = (*((*v30 & *v4) + 0xBF0))();
  if (v77 != -1)
  {
    v78 = v76;
    v79 = v77;
    if (one-time initialization token for restorableSettingsCache != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for RestorableSettings(0);
    (*(*(v80 - 8) + 56))(v9, 1, 1, v80);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v9, v78, v79 & 1);
    v76 = swift_endAccess();
  }

  (*((*v30 & *v4) + 0x1648))(v76);
  v81.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v82 = *((*v30 & *v4) + 0x1010);
  v83 = v82();
  v84 = [v83 _isRectFullyVisible_];

  if (v84)
  {
    v85 = 0;
  }

  else
  {
    v104.origin.x = v69;
    v104.origin.y = v71;
    v104.size.width = v73;
    v104.size.height = v75;
    MinY = CGRectGetMinY(v104);
    v87 = v82();
    v88 = [v87 safeAreaLayoutGuide];

    [v88 layoutFrame];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v105.origin.x = v90;
    v105.origin.y = v92;
    v105.size.width = v94;
    v105.size.height = v96;
    if (MinY <= CGRectGetMinY(v105))
    {
      v85 = 1;
    }

    else
    {
      v85 = 4;
    }
  }

  v97 = v102;
  [v32 selectItemAtIndexPath:v81.super.isa animated:v101 & 1 scrollPosition:v85];

  (*(v15 + 8))(v18, v97);
  return 1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v55 = animated;
  v4 = _;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*MEMORY[0x277D85000] & *v2) + 328;
  v16 = *((*MEMORY[0x277D85000] & *v2) + 0x148);
  if ((v16(v13) & 1) != 0 && !v4)
  {
    return;
  }

  if ((([v2 isEditing] ^ v4) & 1) == 0)
  {
    v17 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
    v18 = [v17 isEditing];
    v52 = v16;
    v19 = v5;
    v20 = v15;
    v21 = v6;
    v22 = v18;

    v23 = v22 == v4;
    v6 = v21;
    v15 = v20;
    v5 = v19;
    v16 = v52;
    if (v23)
    {
      return;
    }
  }

  v53 = v11;
  v24 = type metadata accessor for DOCItemCollectionViewController(0);
  v60.receiver = v3;
  v60.super_class = v24;
  v52 = v24;
  if (v4)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  objc_msgSendSuper2(&v60, sel_setEditing_animated_, v4, v55);
  v26 = MEMORY[0x277D85000];
  v27 = (*((*MEMORY[0x277D85000] & *v3) + 0x6E0))(v25);
  if ((*((*v26 & *v3) + 0x6D8))(v27))
  {
    if (v4)
    {
      goto LABEL_17;
    }

LABEL_12:
    v28 = (*((*MEMORY[0x277D85000] & *v3) + 0xBD8))();
    v50 = v15;
    v51 = v6;
    v49 = v9;
    if (v28 == 3 && (v29 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))()) != 0)
    {
      v30 = [v29 infoPanelPreviewingMultipleItems];
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v48 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = v3;
    *(v31 + 24) = v30;
    v58 = partial apply for closure #1 in DOCItemCollectionViewController.setEditing(_:animated:);
    v59 = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v57 = &block_descriptor_164_1;
    v47 = _Block_copy(aBlock);
    v32 = v3;

    v33 = v54;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v34 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v47;
    v35 = v48;
    MEMORY[0x24C1FB9A0](0, v33, v34, v47);
    _Block_release(v36);

    (*(v51 + 8))(v34, v5);
    (*(v53 + 8))(v33, v10);
    goto LABEL_17;
  }

  (*((*MEMORY[0x277D85000] & *v3) + 0x1308))();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_17:
  v37 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))();
  [v37 setEditing_];

  if (((v16)() & 1) == 0)
  {
    if ((*((*MEMORY[0x277D85000] & *v3) + 0xD0))())
    {
      v39 = v38;
      ObjectType = swift_getObjectType();
      v57 = v52;
      aBlock[0] = v3;
      v41 = [v3 isEditing];
      (*(v39 + 8))(aBlock, v41, 3, v55, ObjectType, v39);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    v42 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for DOCItemCollectionViewDidChangeEditMode != -1)
    {
      swift_once();
    }

    [v42 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidChangeEditMode object:v3];
  }

  v43 = v55;
  (*((*MEMORY[0x277D85000] & *v3) + 0x16E8))(v4, v55);
  specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = v43;
  v44 = [v3 viewIfLoaded];
  v45 = [v44 window];

  if (v45)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(void *a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v17 - v11;
  v13 = [a1 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  static UTType.folder.getter();
  LOBYTE(v13) = static UTType.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v12, v3);
  if ((v13 & 1) != 0 && [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forPickingDocuments] && objc_msgSend(v1, sel_isEditing))
  {
    v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x148))() ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t DOCItemCollectionViewController.forceEditingMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.forceEditingMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = [v1 setEditing:1 animated:0];
  }

  v6 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x148))(v4);
  if (v5 != (result & 1))
  {
    return (*((*v6 & *v1) + 0x16E8))([v1 isEditing], 0);
  }

  return result;
}

void (*DOCItemCollectionViewController.forceEditingMode.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.forceEditingMode.modify;
}

void DOCItemCollectionViewController.forceEditingMode.modify(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  v7 = MEMORY[0x277D85000];
  if (a2)
  {
    if (v5)
    {
      a1 = [v2[3] setEditing:1 animated:0];
    }

    if (v6 != ((*((*v7 & *v2[3]) + 0x148))(a1) & 1))
    {
LABEL_5:
      (*((*v7 & *v2[3]) + 0x16E8))([v2[3] isEditing], 0);
    }
  }

  else
  {
    if (v5)
    {
      a1 = [v2[3] setEditing:1 animated:0];
    }

    if ((v6 ^ (*((*v7 & *v2[3]) + 0x148))(a1)))
    {
      goto LABEL_5;
    }
  }

  free(v2);
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v2;
    v8 = _;
    *(v7 + 32) = v8;
    if (animated)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:);
      *(v10 + 24) = v7;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_174;
      v11 = _Block_copy(aBlock);
      v12 = v2;
      v13 = v6;

      [v9 animateWithDuration:v11 animations:0.2];

      _Block_release(v11);
    }

    else
    {
      v14 = v2;
      v15 = v6;
      closure #1 in DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:)(v15, v14, v8);
    }
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.updateEditingInCollectionViewIfNeeded(_:animated:)(void *a1, void *a2, int a3)
{
  v51 = a3;
  v48 = type metadata accessor for UTType();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v46 = &v43 - v11;
  result = [a1 preparedCells];
  if (!result)
  {
    goto LABEL_33;
  }

  v13 = result;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_29:
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_4:
  v50 = result;
  if (result >= 1)
  {
    v15 = 0;
    v54 = v14 & 0xC000000000000001;
    v44 = (v5 + 8);
    v45 = v14;
    v16 = v50;
    v52 = a2;
    do
    {
      if (v54)
      {
        v17 = MEMORY[0x24C1FC540](v15, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v15 + 32);
      }

      v18 = v17;
      type metadata accessor for DOCItemCollectionCell();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = *((*MEMORY[0x277D85000] & *v19) + 0x208);
        v21 = v20();
        if (v21)
        {
          v22 = v21;
          v23 = (*((*MEMORY[0x277D85000] & *v21) + 0x3D0))();

          v53 = v23;
          if (v23)
          {
            v24 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
            if ([v24 forPickingDocuments])
            {
              v49 = v24;
              v25 = [v53 contentType];
              v26 = v46;
              static UTType._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = v47;
              static UTType.folder.getter();
              LOBYTE(v25) = static UTType.== infix(_:_:)();
              v28 = *v44;
              v29 = v27;
              v30 = v48;
              (*v44)(v29, v48);
              v28(v26, v30);
              if (v25)
              {
                v31 = [v49 forPickingDocuments];
                v14 = v45;
                v16 = v50;
                if (v31 && (v32 = v52, [v52 isEditing]))
                {
                  v33 = (*((*MEMORY[0x277D85000] & *v32) + 0x148))();
                }

                else
                {
                  v33 = 1;
                }
              }

              else
              {
                v33 = 1;
                v14 = v45;
                v16 = v50;
              }

              v34 = v20();
              if (v34)
              {
                v35 = v34;
                v36 = (*((*MEMORY[0x277D85000] & *v52) + 0x18C0))(v53) & v33;
                (*((*MEMORY[0x277D85000] & *v35) + 0x4F8))(v36 & 1);
              }

              v37 = v20();
              if (v37)
              {
                v38 = v37;
                v39 = MEMORY[0x277D85000];
                v40 = (*((*MEMORY[0x277D85000] & *v52) + 0x1790))(v53);
                (*((*v39 & *v38) + 0x510))(v40 & 1);
              }
            }

            swift_unknownObjectRelease();
            a2 = v52;
          }
        }

        v41 = v20();
        if (v41)
        {
          v42 = v41;
          (*((*MEMORY[0x277D85000] & *v41) + 0x498))(v51 & 1);
        }
      }

      ++v15;
    }

    while (v16 != v15);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void DOCItemCollectionViewController.willTransition(to:with:)(void *a1, void *a2)
{
  v3 = v2;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v6 = objc_msgSendSuper2(&v30, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))(v6);
  if (v8)
  {
    v9 = v8;
    if ([v8 delegate])
    {
      swift_unknownObjectRelease();
      if ([a1 horizontalSizeClass] == 2)
      {
        DOCItemCollectionViewController.dismissViewOptionsIfNeeded()();
      }

      if (one-time initialization token for vSizeClass != -1)
      {
        swift_once();
      }

      v25 = static UITraitCollection.Traits.vSizeClass;
      v26 = qword_27EEE9C78;

      v10 = [v2 traitCollection];
      v11 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v25, v10);

      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = v3;
        *(v12 + 24) = a1;
        v28 = partial apply for closure #1 in DOCItemCollectionViewController.willTransition(to:with:);
        v29 = v12;
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 1107296256;
        v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v27 = &block_descriptor_192;
        v13 = _Block_copy(&v25);
        v14 = v3;
        v15 = a1;

        [a2 animateAlongsideTransition:v13 completion:0];
        _Block_release(v13);
      }

      if (one-time initialization token for sizeCategory != -1)
      {
        swift_once();
      }

      v25 = static UITraitCollection.Traits.sizeCategory;
      v26 = qword_27EEE9CC0;

      v16 = [v3 traitCollection];
      v17 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v25, v16);

      if (v17)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = v3;
        v28 = partial apply for closure #2 in DOCItemCollectionViewController.willTransition(to:with:);
        v29 = v18;
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 1107296256;
        v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v27 = &block_descriptor_180;
        v19 = _Block_copy(&v25);
        v20 = v3;

        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = a1;
        v28 = partial apply for closure #3 in DOCItemCollectionViewController.willTransition(to:with:);
        v29 = v21;
        *&v25 = MEMORY[0x277D85DD0];
        *(&v25 + 1) = 1107296256;
        v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v27 = &block_descriptor_186;
        v22 = _Block_copy(&v25);
        v23 = v20;
        v24 = a1;

        [a2 animateAlongsideTransition:v19 completion:v22];
        _Block_release(v22);
        _Block_release(v19);
      }

      (*((*v7 & *v3) + 0x18B8))(a1);
    }
  }
}

void closure #2 in DOCItemCollectionViewController.willTransition(to:with:)(int a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v2 = [a2 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()();
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t closure #3 in DOCItemCollectionViewController.willTransition(to:with:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a2) + 0xBD8))();
  if (result == 3)
  {
    return (*((*v5 & *a2) + 0x13F8))(a3, 0, 0, 1, 1);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  v7 = [a1 splitViewController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 displayMode];
  }

  else
  {
    v9 = 0;
  }

  *(v6 + 16) = v9;
  *(v6 + 24) = v8 == 0;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v6;
  v10[4] = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:);
  *(v11 + 24) = v10;
  v21 = partial apply for thunk for @callee_guaranteed () -> ();
  v22 = v11;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v20 = &block_descriptor_1187;
  v12 = _Block_copy(&v17);
  v13 = a1;

  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:);
  *(v14 + 24) = v10;
  v21 = thunk for @callee_guaranteed () -> ()partial apply;
  v22 = v14;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v20 = &block_descriptor_1193;
  v15 = _Block_copy(&v17);

  [a2 animateAlongsideTransition:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
}

uint64_t closure #1 in DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 splitViewController];
  v6 = v5;
  if (!v5)
  {
    result = swift_beginAccess();
    if (*(a2 + 24))
    {
      return result;
    }

    v7 = 0;
    v9 = (a2 + 24);
    goto LABEL_7;
  }

  v7 = [v5 displayMode];

  result = swift_beginAccess();
  v9 = (a2 + 24);
  if ((*(a2 + 24) & 1) != 0 || v7 != *(a2 + 16))
  {
LABEL_7:
    swift_beginAccess();
    *(a2 + 16) = v7;
    *v9 = v6 == 0;
    v10 = *(a3 + 16);

    v10(v11);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.SplitModeChangeTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCItemCollectionViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v29.receiver = v3;
  v29.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  objc_msgSendSuper2(&v29, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  type metadata accessor for DOCItemCollectionViewController.SplitModeChangeTracker();
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.viewWillTransition(to:with:);
  *(v9 + 24) = v8;
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v4) + 0x1498);
  v12 = v4;
  v13 = v11();
  if (v13)
  {
    (*(*v13 + 440))(v13);
  }

  DOCItemCollectionViewController.SplitModeChangeTracker.startTracking(for:alongside:)(v12, a1);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  MEMORY[0x24C1FAEA0](0xD000000000000024, 0x8000000249BDEC30);
  v27 = a2;
  v28 = a3;
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  (*((*v10 & *v12) + 0x188))(0, 0xE000000000000000, a1);

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v25 = partial apply for closure #2 in DOCItemCollectionViewController.viewWillTransition(to:with:);
  v26 = v14;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v24 = &block_descriptor_201_0;
  v15 = _Block_copy(&v21);
  v16 = v12;

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v25 = partial apply for closure #3 in DOCItemCollectionViewController.viewWillTransition(to:with:);
  v26 = v17;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v24 = &block_descriptor_207;
  v18 = _Block_copy(&v21);
  v19 = v16;

  [a1 animateAlongsideTransition:v15 completion:v18];
  _Block_release(v18);
  _Block_release(v15);
}

void closure #2 in DOCItemCollectionViewController.viewWillTransition(to:with:)(int a1, void *a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  (*((*MEMORY[0x277D85000] & *a2) + 0x1528))(a3, a4);
}

uint64_t closure #3 in DOCItemCollectionViewController.viewWillTransition(to:with:)(uint64_t a1, void *a2)
{
  result = (*((*MEMORY[0x277D85000] & *a2) + 0x1498))();
  if (result)
  {
    (*(*result + 448))(result);
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v81.receiver = v0;
  v81.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v2 = objc_msgSendSuper2(&v81, sel_viewDidLayoutSubviews);
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xF60))(v2);
  v4 = [v0 presentedViewController];
  v5 = [v4 popoverPresentationController];

  if (v5)
  {
    if (one-time initialization token for associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v5, static UIPopoverPresentationController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v3 & *v6) + 0x78))(v80);

    v7 = v80[0];
    if (v80[0])
    {
      (v80[0])();

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
    }

    else
    {
    }
  }

  v8 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  [v8 enclosingUIPHorizontalInset];
  v10 = v9;

  v11 = -v10;
  v12 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  v13 = 0.0;
  if ([v12 contextPrefersVariableBlurBottomTabBar])
  {
    lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
    UITraitCollection.subscript.getter();
    v13 = v14;
  }

  v15 = *((*v3 & *v1) + 0x1010);
  v16 = v15();
  [v16 setVerticalScrollIndicatorInsets_];

  (*((*v3 & *v1) + 0x1730))();
  v17 = [v1 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_37;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;

  v23 = (*((*v3 & *v1) + 0xB08))();
  swift_beginAccess();
  v24 = *(v23 + 168);

  v26 = (v15)(v25);
  [v26 safeAreaInsets];
  v28 = v27;

  v29 = v15();
  [v29 safeAreaInsets];
  v31 = v30;

  if ((*((*v3 & *v1) + 0xBD8))() != 2 || (v32 = [v1 traitCollection], v33 = objc_msgSend(v32, sel_horizontalSizeClass), v32, v33 == 1) || (v34 = v24 + v28 + v31, v20 >= v34))
  {
    v40 = *((*v3 & *v1) + 0xB20);
    v41 = v40();
    if (v41)
    {
      v42 = v41;
      [v41 setScrollEnabled_];
    }

    v38 = v40();
    if (!v38)
    {
      goto LABEL_24;
    }

    v39 = 0;
  }

  else
  {
    v35 = *((*v3 & *v1) + 0xB20);
    v36 = v35();
    if (v36)
    {
      v37 = v36;
      [v36 setScrollEnabled_];
    }

    v38 = v35();
    if (!v38)
    {
      v20 = v34;
      goto LABEL_24;
    }

    v39 = 1;
    v20 = v34;
  }

  v43 = v38;
  [v38 setAlwaysBounceHorizontal_];

LABEL_24:
  v44 = *((*v3 & *v1) + 0xB20);
  v45 = v44();
  if (v45)
  {
    v46 = v45;
    [v45 setContentSize_];
  }

  v47 = v44();
  if (v47)
  {
    v48 = v47;
    [v47 frame];
    v50 = v49;
    v52 = v51;
  }

  else
  {
    v50 = 0.0;
    v52 = 0.0;
  }

  v53 = v15();
  [v53 setFrame_];

  v54 = DOCItemCollectionViewController.headerRowView()();
  if (!v54)
  {
    goto LABEL_35;
  }

  v55 = v54;
  v56 = [v1 &selRef_variant];
  if (v56)
  {
    v57 = v56;
    [v56 bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v82.origin.x = v59;
    v82.origin.y = v61;
    v82.size.width = v63;
    v82.size.height = v65;
    Width = CGRectGetWidth(v82);
    v67 = v44();
    if (v67)
    {
      v68 = v67;
      [v67 contentOffset];
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    v71 = v15();
    [v71 safeAreaInsets];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;

    *v80 = Width;
    v80[1] = v70;
    v80[2] = v73;
    v80[3] = v75;
    v80[4] = v77;
    v80[5] = v79;
    (*((*v3 & *v55) + 0x2B8))(v80);

LABEL_35:
    (*((*v3 & *v1) + 0xC60))(0);
    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t DOCItemCollectionViewController.hasDeferredRepositionInlineEditingCell.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.hasDeferredRepositionInlineEditingCell.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  if ((a1 & 1) == 0)
  {
    result = (*((*MEMORY[0x277D85000] & *v1) + 0x16F8))(result);
    if (result)
    {
      return DOCItemCollectionViewController._repositionRenamingCell()();
    }
  }

  return result;
}

void (*DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.modify;
}

void DOCItemCollectionViewController.shouldDeferRepositionInlineEditingCell.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    if (*(v5 + v3[4]) & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v5) + 0x16F8))(v4))
    {
      DOCItemCollectionViewController._repositionRenamingCell()();
    }
  }

  free(v3);
}

Swift::Void __swiftcall DOCItemCollectionViewController.collectionViewSafeAreaInsetsDidChange()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 2)
  {
    v3 = *((*v2 & *v0) + 0x1010);
    v4 = v3();
    [v4 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
    if ((*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets + 32) & 1) == 0)
    {
      v14 = (*((*v2 & *v1) + 0x11C0))();
      if (v14)
      {
        v15 = (*(*v14 + 320))(v14);

        if (v15)
        {
          v17 = (v3)(v16);
          v18 = [v17 collectionViewLayout];

          v19 = [v18 _invalidationContextForRefreshingVisibleElementAttributes];
          if (v19)
          {
            v20 = v3();
            v21 = [v20 collectionViewLayout];

            [v21 invalidateLayoutWithContext_];
          }
        }
      }
    }

    *v13 = v6;
    *(v13 + 1) = v8;
    *(v13 + 2) = v10;
    *(v13 + 3) = v12;
    v13[32] = 0;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.invalidateSupplementaryElements(ofKinds:)(Swift::OpaquePointer ofKinds)
{
  v17 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v3 = v17();
  v4 = [v3 collectionViewLayout];

  ObjCClassFromObject = swift_getObjCClassFromObject();
  [ObjCClassFromObject invalidationContextClass];
  swift_getObjCClassMetadata();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext);
  swift_dynamicCastMetatypeUnconditional();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = *(ofKinds._rawValue + 2);
  if (v7)
  {
    v8 = (ofKinds._rawValue + 40);
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      v13 = (v17)(v12);
      v14 = MEMORY[0x24C1FAD20](v11, v10);
      isa = [v13 indexPathsForVisibleSupplementaryElementsOfKind_];

      if (!isa)
      {
        type metadata accessor for IndexPath();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v9 = MEMORY[0x24C1FAD20](v11, v10);

      [v6 invalidateSupplementaryElementsOfKind:v9 atIndexPaths:isa];

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v16 = v17();
  v18 = [v16 collectionViewLayout];

  [v18 invalidateLayoutWithContext_];
}

void DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    notify_cancel(v3);
    *(v0 + v2) = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x1A8))();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 settings];
      v10 = [v9 enumeratedItemID];

      v11 = [v10 providerID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v19 = *MEMORY[0x277D05D70];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v20 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = partial apply for closure #1 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate();
      v35 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
      v33 = &block_descriptor_883_0;
      v22 = _Block_copy(&aBlock);

      swift_beginAccess();
      notify_register_dispatch(v19, (v1 + v2), v20, v22);
      swift_endAccess();
      _Block_release(v22);

      v23 = (*((*v5 & *v4) + 0x230))();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v34 = partial apply for closure #2 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate();
      v35 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
      v33 = &block_descriptor_889;
      v25 = _Block_copy(&aBlock);
      v26 = objc_opt_self();
      v18 = v23;
      v27 = [v26 predicateWithBlock_];
      _Block_release(v25);

      v28 = *((*v5 & *v4) + 0x238);
      v29 = v27;
      v28(v27);

      goto LABEL_14;
    }

LABEL_11:
    v18 = v7;
LABEL_14:
  }
}

void closure #1 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v2)
    {
      v3 = *((*MEMORY[0x277D85000] & *v2) + 0x1D8);
      v4 = v2;
      v3();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

BOOL closure #2 in DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()(uint64_t a1, Class isa, void *a3)
{
  if (!a3)
  {
    goto LABEL_6;
  }

  v5 = a1;
  outlined init with copy of DOCGridLayout.Spec?(a1, v35, &_sypSgMd);
  v6 = v36;
  if (v36)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7, v7);
    v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v35);
    if (!isa)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = 0;
  if (isa)
  {
LABEL_4:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_5:
  v13 = [a3 evaluateWithObject:v12 substitutionVariables:isa];
  swift_unknownObjectRelease();

  a1 = v5;
  if (!v13)
  {
    return 0;
  }

LABEL_6:
  outlined init with copy of DOCGridLayout.Spec?(a1, v35, &_sypSgMd);
  if (!v36)
  {
    outlined destroy of CharacterSet?(v35, &_sypSgMd);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v14 = v34;
  if (![v34 isAppContainer])
  {
LABEL_20:

    return 1;
  }

  v15 = [v14 fp_appContainerBundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() defaultSourceIdentifierForBundleIdentifier_];

    if (v17)
    {
      v18 = *MEMORY[0x277D060F0];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

LABEL_19:

        goto LABEL_20;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_19;
      }

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {

        goto LABEL_20;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_20;
      }
    }
  }

  v30 = [v14 childItemCount];
  if (!v30)
  {

    return 0;
  }

  v31 = v30;
  v32 = [v30 integerValue];

  return v32 > 0;
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateCellStackViewMetrics()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 1)
  {
    return;
  }

  v3 = (*((*v2 & *v0) + 0x1018))();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 preparedCells];
  if (!v5)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v6 = v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = 0;
  v10 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v9, v7);
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    type metadata accessor for DOCItemCollectionCell();
    v13 = swift_dynamicCastClass();
    if (v13 && (v14 = (*((*v2 & *v13) + 0x208))()) != 0)
    {
      v15 = v14;
      v16 = *(v10 + 4);
      v17 = *(v10 + 1);
      v27 = *v10;
      v28 = v17;
      v29 = v16;
      v30 = 0;
      (*((*v2 & *v14) + 0x528))(&v27);
    }

    else
    {
    }

    ++v9;
  }

  while (v8 != v9);
LABEL_18:

  v18 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    if (v20)
    {
LABEL_20:
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x24C1FC540](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          ++v21;
          v25 = *(v22 + 4);
          v26 = *(v22 + 1);
          v27 = *v22;
          v28 = v26;
          v29 = v25;
          (*((*v2 & *v23) + 0x2D0))(&v27);
        }

        while (v20 != v21);
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_20;
    }
  }

LABEL_27:
}

uint64_t DOCItemCollectionViewController.cellIsFocusable(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x1898))(a1, v10))
  {
    goto LABEL_7;
  }

  (*((*v13 & *v1) + 0x18A0))(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v12, v6, v7);
  if (!(*((*v13 & *v1) + 0xD88))(v12, 0))
  {
    (*(v8 + 8))(v12, v7);
    goto LABEL_7;
  }

  v14 = (*((*v13 & *v1) + 0x1798))();
  swift_unknownObjectRelease();
  (*(v8 + 8))(v12, v7);
  return v14 & 1;
}

uint64_t DOCItemCollectionViewController.isNodeFocusable(_:)(void *a1)
{
  if (([v1 isEditing] & 1) != 0 || (objc_msgSend(a1, sel_isCopying) & 1) == 0)
  {
    v4 = DOCItemCollectionViewController.specificallyExcludeFolderPicking(_:)(a1);
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x18C0))(a1) & (v4 ^ 1);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t DOCItemCollectionViewController.cellIsSelectable(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x18A0))(a1, v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v15 = (*((*v13 & *v1) + 0xD88))(v12, 0);
    if (v15)
    {
      v16 = v15;
      if (((*((*v13 & *v1) + 0x148))() & 1) != 0 && [v16 isFolder])
      {
        (*(v8 + 8))(v12, v7);
        swift_unknownObjectRelease();
        v14 = 0;
      }

      else if (([v1 isEditing] & 1) != 0 || ((*((*v13 & *v1) + 0x1898))(a1) & 1) == 0)
      {
        v14 = (*((*v13 & *v1) + 0x1788))(a1);
        swift_unknownObjectRelease();
        (*(v8 + 8))(v12, v7);
      }

      else
      {
        (*(v8 + 8))(v12, v7);
        swift_unknownObjectRelease();
        v14 = 1;
      }
    }

    else
    {
      (*(v8 + 8))(v12, v7);
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t DOCItemCollectionViewController.cellIsActionable(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x18A0))(a1, v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v14 = (*((*v13 & *v1) + 0xD88))(v12, 0);
    if (v14)
    {
      v15 = v14;
      if ((*((*v13 & *v1) + 0x148))())
      {
        v16 = [v15 isFolder];
        swift_unknownObjectRelease();
        (*(v8 + 8))(v12, v7);
        if (v16)
        {
LABEL_12:
          v17 = 1;
          return v17 & 1;
        }
      }

      else
      {
        (*(v8 + 8))(v12, v7);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v8 + 8))(v12, v7);
    }
  }

  if (([v1 isEditing] & 1) == 0)
  {
    if (((*((*v13 & *v1) + 0x1898))(a1) & 1) == 0)
    {
      v17 = (*((*v13 & *v1) + 0x1788))(a1);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t DOCItemCollectionViewController.shouldSpringLoadItem(at:with:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x18A0))(a1, v13);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd);
    return 0;
  }

  (*(v11 + 32))(v15, v9, v10);
  v18 = (*((*v16 & *v3) + 0xD88))(v15, 0);
  if (!v18)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    result = swift_unknownObjectRelease();
    __break(1u);
LABEL_110:
    __break(1u);
    return result;
  }

  v19 = v18;
  if (![v18 isFolder] || !objc_msgSend(v19, sel_isReadable))
  {
    v17 = 0;
    goto LABEL_28;
  }

  v20 = (*((*v16 & *v3) + 0x8A8))();
  if (!v20)
  {
    goto LABEL_89;
  }

  v21 = [v20 items];
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v3;
  v65 = a2;
  v71 = v22 >> 62;
  v63 = v10;
  v62 = v11;
  v61 = v15;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
LABEL_104:
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v22;
  v26 = v22 & 0xC000000000000001;
  v72 = v22 + 32;
  v70 = v19;
  swift_unknownObjectRetain();
  v22 = 0;
  v19 = &_sypSgMd;
  while (1)
  {
    if (v24 == v22)
    {
      v22 = v24;
      goto LABEL_32;
    }

    if (v26)
    {
      v28 = MEMORY[0x24C1FC540](v22, v25);
    }

    else
    {
      if (v22 >= *(v23 + 16))
      {
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
        goto LABEL_104;
      }

      v28 = *(v25 + 8 * v22 + 32);
    }

    v29 = v28;
    if ([v29 localObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    outlined init with copy of DOCGridLayout.Spec?(&v76, &v74, &_sypSgMd);
    if (*(&v75 + 1))
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      if (swift_dynamicCast())
      {
        v31 = v73;
        outlined destroy of CharacterSet?(&v76, &_sypSgMd);

        goto LABEL_31;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v74, &_sypSgMd);
    }

    v74 = v76;
    v75 = v77;
    if (*(&v77 + 1))
    {
      break;
    }

    outlined destroy of CharacterSet?(&v74, &_sypSgMd);
LABEL_11:

    v27 = __OFADD__(v22++, 1);
    if (v27)
    {
      goto LABEL_99;
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
LABEL_32:
  v19 = v70;
  a2 = v65;
  if (v71)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *(v23 + 16);
  }

  v67 = v25;
  if (v22 == v32)
  {
    goto LABEL_79;
  }

  if (v25 < 0)
  {
    v33 = v25;
  }

  else
  {
    v33 = v23;
  }

  v66 = v33;
  v68 = v23;
  v69 = v32;
  while (2)
  {
    if (v26)
    {
      v34 = MEMORY[0x24C1FC540](v22, v25);
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (v22 >= *(v23 + 16))
      {
        goto LABEL_101;
      }

      v34 = *(v72 + 8 * v22);
    }

    v35 = v34;
    v36 = UIDragItem.localObjectAsNode.getter();

    if (!v36)
    {
      goto LABEL_109;
    }

    *(&v77 + 1) = swift_getObjectType();
    *&v76 = v36;
    outlined init with copy of DOCGridLayout.Spec?(&v76, &v74, &_sypSgMd);
    v19 = *(&v75 + 1);
    if (*(&v75 + 1))
    {
      v37 = __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v38 = *(v19 - 1);
      v39 = MEMORY[0x28223BE20](v37, v37);
      v41 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v41, v39);
      swift_unknownObjectRetain();
      v42 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v38 + 8))(v41, v19);
      v25 = v67;
      v23 = v68;
      __swift_destroy_boxed_opaque_existential_0(&v74);
    }

    else
    {
      swift_unknownObjectRetain();
      v42 = 0;
    }

    v43 = [v70 isEqual_];
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v76, &_sypSgMd);
    swift_unknownObjectRelease();
    if (v43)
    {
      goto LABEL_78;
    }

    if (!v71)
    {
      v44 = *(v23 + 16);
      v45 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v22 != v44)
      {
        goto LABEL_58;
      }

      goto LABEL_102;
    }

    v45 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    if (v22 == __CocoaSet.count.getter())
    {
      goto LABEL_103;
    }

    v44 = __CocoaSet.count.getter();
LABEL_58:
    while (2)
    {
      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v22 == v44)
      {
        v22 = v44;
        goto LABEL_41;
      }

      if (v26)
      {
        v46 = MEMORY[0x24C1FC540](v22, v25);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        if (v22 >= *(v23 + 16))
        {
          goto LABEL_97;
        }

        v46 = *(v72 + 8 * v22);
      }

      v19 = v46;
      if ([v19 v45[369]])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      v76 = v74;
      v77 = v75;
      outlined init with copy of DOCGridLayout.Spec?(&v76, &v74, &_sypSgMd);
      if (*(&v75 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
        if (swift_dynamicCast())
        {
          v47 = v73;
          outlined destroy of CharacterSet?(&v76, &_sypSgMd);

          v23 = v68;
          goto LABEL_75;
        }
      }

      else
      {
        outlined destroy of CharacterSet?(&v74, &_sypSgMd);
      }

      v74 = v76;
      v75 = v77;
      if (!*(&v77 + 1))
      {
        outlined destroy of CharacterSet?(&v74, &_sypSgMd);
LABEL_57:

        continue;
      }

      break;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_75:
LABEL_41:
    if (v22 != v69)
    {
      continue;
    }

    break;
  }

  v22 = v69;
LABEL_78:
  v19 = v70;
  a2 = v65;
LABEL_79:
  if (v71)
  {
    if (v22 == __CocoaSet.count.getter())
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v26)
    {
      v48 = MEMORY[0x24C1FC540](v22, v25);
LABEL_85:
      v49 = v48;
      v50 = UIDragItem.localObjectAsNode.getter();

      result = swift_unknownObjectRelease();
      v3 = v64;
      v10 = v63;
      v11 = v62;
      v15 = v61;
      v16 = MEMORY[0x277D85000];
      if (v50)
      {

        swift_unknownObjectRelease();
        v17 = 0;
        goto LABEL_28;
      }

      goto LABEL_110;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v23 + 16))
    {
      v48 = *(v72 + 8 * v22);
      goto LABEL_85;
    }

    __break(1u);
    goto LABEL_108;
  }

  if (v22 != *(v23 + 16))
  {
    goto LABEL_81;
  }

LABEL_88:
  swift_unknownObjectRelease();

  v3 = v64;
  v10 = v63;
  v11 = v62;
  v15 = v61;
  v16 = MEMORY[0x277D85000];
LABEL_89:
  if ((*((*v16 & *v3) + 0xBD8))())
  {
    goto LABEL_90;
  }

  v51 = (*((*v16 & *v3) + 0x18D0))(v19);
  if (!v51)
  {
    goto LABEL_90;
  }

  v52 = v51;
  type metadata accessor for DOCItemCollectionGridCell();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {

LABEL_90:
    v17 = 1;
    goto LABEL_28;
  }

  v54 = v53;
  v55 = [a2 locationInView_];
  v57 = v56;
  v59 = v58;
  v79.origin.x = (*((*v16 & *v54) + 0x110))(v55);
  v78.x = v57;
  v78.y = v59;
  v17 = CGRectContainsPoint(v79, v78);

LABEL_28:
  (*((*v16 & *v3) + 0x1150))(v17);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v15, v10);
  return v17;
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.longestStringsList.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.smallestLengthInList.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double DOCItemCollectionViewController.StringWidthCalculationContext.__allocating_init(withFont:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(v2 + 24) = xmmword_249BAA8C0;
  *(v2 + 40) = a1;
  return result;
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.init(withFont:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84FA0];
  *(v1 + 24) = xmmword_249BAA8C0;
  *(v1 + 40) = a1;
  return v1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.StringWidthCalculationContext.update(using:)(Swift::String using)
{
  v2 = v1;
  object = using._object;
  countAndFlagsBits = using._countAndFlagsBits;
  v5 = *(*v1 + 112);
  v6 = *(v5() + 16);

  if (v6 < 0xA || (v7 = String.count.getter(), (*(*v2 + 136))() < v7))
  {
    v8 = *(*v2 + 128);

    v9 = v8(v33);
    v10 = specialized Set._Variant.insert(_:)(&v34, countAndFlagsBits, object);

    v11 = v9(v33, 0);
    if (v10)
    {
      v12 = *((v5)(v11) + 16);

      if (v12 >= 0xB)
      {
        v14 = (v5)(v13);

        v15 = specialized _NativeSet.filter(_:)(v14, v2);

        v13 = (*(*v2 + 120))(v15);
      }

      v16 = (v5)(v13);
      v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5125_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingySS_tFSiSSXEfU0_Tf1cn_n(v16);

      v18 = *(v17 + 16);
      if (!v18)
      {

        v19 = (*(*v2 + 136))(v22);
LABEL_19:
        (*(*v2 + 144))(v19);
        return;
      }

      v19 = *(v17 + 32);
      v20 = v18 - 1;
      if (v18 != 1)
      {
        if (v18 <= 4)
        {
          v21 = 1;
          goto LABEL_14;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v23 = vdupq_n_s64(v19);
        v24 = (v17 + 56);
        v25 = v20 & 0xFFFFFFFFFFFFFFFCLL;
        v26 = v23;
        do
        {
          v23 = vbslq_s8(vcgtq_s64(v23, v24[-1]), v24[-1], v23);
          v26 = vbslq_s8(vcgtq_s64(v26, *v24), *v24, v26);
          v24 += 2;
          v25 -= 4;
        }

        while (v25);
        v27 = vbslq_s8(vcgtq_s64(v26, v23), v23, v26);
        v28 = vextq_s8(v27, v27, 8uLL).u64[0];
        v19 = vbsl_s8(vcgtd_s64(v28, v27.i64[0]), *v27.i8, v28);
        if (v20 != (v20 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_14:
          v29 = v18 - v21;
          v30 = (v17 + 8 * v21 + 32);
          do
          {
            v32 = *v30++;
            v31 = v32;
            if (v32 < v19)
            {
              v19 = v31;
            }

            --v29;
          }

          while (v29);
        }
      }

      goto LABEL_19;
    }
  }
}

void DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()()
{
  v1 = v0;
  v27[2] = MEMORY[0x277D84FA0];
  v2 = (*(*v0 + 112))();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 56;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = *MEMORY[0x277D740A8];
  v11 = 0.0;
  while (1)
  {
    v12 = v4;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(v3 + 48) + ((v4 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    swift_bridgeObjectRetain_n();
    v17 = specialized Set._Variant.insert(_:)(v27, v16, v15);

    if (v17)
    {
      v26 = MEMORY[0x24C1FAD20](v16, v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = v10;
      v19 = v10;
      v20 = *(v1 + 40);
      *(inited + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
      *(inited + 40) = v20;
      v21 = v19;
      v22 = v20;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd);
      type metadata accessor for NSAttributedStringKey(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v10 = v19;

      [v26 sizeWithAttributes_];
      v25 = v24;

      if (v11 < v25)
      {
        v11 = v25;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v4);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.deinit()
{

  return v0;
}

uint64_t DOCItemCollectionViewController.StringWidthCalculationContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()()
{
  v4 = v0;
  v152 = type metadata accessor for UTType();
  v5 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v6);
  v8 = v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v136 - v11;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v136 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v19 = [v18 isPickerUI];
  v20 = [v4 traitCollection];
  if (v19)
  {
    v153 = v20;
    v21 = UITraitCollection.modifyingTraits(_:)();

    v20 = v21;
  }

  v153 = v20;
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v163 = static UITraitCollection.Traits.hSizeClass;
  *&v164 = qword_27EEE9C60;
  if ((UITraitCollection.doc_hasSpecified(_:)(&v163) & 1) == 0)
  {
    v34 = [objc_opt_self() standardUserDefaults];
    v152 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
    [v34 BOOLForKey_];

    v35 = v152;
LABEL_20:

    return;
  }

  v150 = v8;
  v151 = v5;
  v22 = MEMORY[0x277D85000];
  v23 = *((*MEMORY[0x277D85000] & *v4) + 0xCB8);
  v24 = (v23)();
  if (v24 >> 62)
  {
    goto LABEL_102;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v25 < 1)
  {
    goto LABEL_19;
  }

  v27 = *((*v22 & *v4) + 0xBD8);
  if (!(v27)(v26))
  {
    goto LABEL_19;
  }

  if (v27() == 2)
  {
    goto LABEL_19;
  }

  v28 = (*((*MEMORY[0x277D85000] & *v4) + 0x11C0))();
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics;
  if ((*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) & 1) == 0)
  {

LABEL_19:
    v35 = v153;
    goto LABEL_20;
  }

  v137 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits;
  v138 = v28;
  v30 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits);
  if (v30)
  {
    *&v149 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITraitCollection);
    v31 = v153;
    v148 = v30;
    v32 = static NSObject.== infix(_:_:)();
    *&v149 = v31;

    if ((v32 & 1) != 0 && [v4 doc:sel__doc_performLiveResizeSkippedWork scheduleHandlerIfInLiveResize:?])
    {

      v33 = v149;

      *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 1;
      return;
    }
  }

  else
  {
    v36 = v153;
  }

  *(v4 + v29) = 0;
  if ([v153 horizontalSizeClass] == 2)
  {
    v37 = 15.0;
  }

  else
  {
    v37 = 11.0;
  }

  v38 = [objc_opt_self() defaultMetrics];
  [v38 scaledValueForValue:v153 compatibleWithTraitCollection:v37];
  v40 = v39;

  v41 = [v153 horizontalSizeClass];
  v144 = v23;
  if (v41 == 1)
  {
    v42 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
    [v42 compactHorizontalTableStackSpacing];
  }

  else
  {
    v44 = [v4 viewIfLoaded];
    if (v44)
    {
      v45 = v44;
      v42 = [v44 window];

      if (v42)
      {
        [v42 frame];
        if (DOCSizeIsFullScreenSize())
        {
          v46 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
          [v46 fullHorizontalTableStackSpacing];
          v48 = v47;

          goto LABEL_36;
        }
      }
    }

    v42 = DOCItemCollectionViewController.modelPreloadingAppearance.getter();
    [v42 regularHorizontalTableStackSpacing];
  }

  v48 = v43;
LABEL_36:

  LODWORD(v141) = [v18 preferLastUsedDate];
  v49 = (*v138 + 256);
  v139 = *v49;
  v139(&v163);
  v161[4] = v167;
  v161[5] = v168;
  v161[6] = v169;
  v161[7] = v170;
  v161[0] = v163;
  v161[1] = v164;
  v161[2] = v165;
  v161[3] = v166;
  v50 = v163;
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v161);
  v147 = type metadata accessor for DOCItemCollectionViewController.StringWidthCalculationContext();
  v51 = swift_allocObject();
  *(v51 + 16) = MEMORY[0x277D84FA0];
  v149 = xmmword_249BAA8C0;
  *(v51 + 24) = xmmword_249BAA8C0;
  v146 = v51;
  *(v51 + 40) = v50;
  v139(&v163);
  v162[4] = v167;
  v162[5] = v168;
  v162[6] = v169;
  v162[7] = v170;
  v162[0] = v163;
  v162[1] = v164;
  v162[2] = v165;
  v162[3] = v166;
  v52 = v163;
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v162);
  v53 = swift_allocObject();
  v23 = MEMORY[0x277D84FA0];
  *(v53 + 16) = MEMORY[0x277D84FA0];
  *(v53 + 24) = v149;
  v148 = v53;
  *(v53 + 40) = v52;
  v136[1] = v49;
  v139(v160);
  v167 = v160[4];
  v168 = v160[5];
  v169 = v160[6];
  v170 = v160[7];
  v163 = v160[0];
  v164 = v160[1];
  v165 = v160[2];
  v166 = v160[3];
  v54 = *&v160[0];
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v163);
  v55 = swift_allocObject();
  *(v55 + 16) = v23;
  v143 = (v55 + 16);
  *(v55 + 24) = v149;
  v147 = (v55 + 24);
  v145 = v55;
  *(v55 + 40) = v54;
  v159 = v23;
  v56 = v144();
  _s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_V_15sampleThresholdAGyxGSayxG_SitcfCSo7DOCNode_p_Tt1g5(v56, 500, v157);
  specialized next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
  if (v57)
  {
    v58 = v57;
    v59 = (v151 + 8);
    v60 = v141;
    while (1)
    {
      swift_getObjectType();
      v66 = DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)([v153 horizontalSizeClass], v60);
      if (v67)
      {
        DOCItemCollectionViewController.StringWidthCalculationContext.update(using:)(*&v66);
      }

      if ([v58 isFolder])
      {
        countAndFlagsBits = DOCNode.cachedLocalizedChildItemCountDescription(fetchIfStale:completionHandler:)(0, 0, 0);
        if (!object)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v63 = DOCNode.localizedSizeDescription()();
        object = v63._object;
        countAndFlagsBits = v63._countAndFlagsBits;
      }

      DOCItemCollectionViewController.StringWidthCalculationContext.update(using:)(*&countAndFlagsBits);

LABEL_40:
      v64 = [v58 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Set._Variant.insert(_:)(v17, v12);
      swift_unknownObjectRelease();
      (*v59)(v17, v152);
      specialized next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
      v58 = v65;
      if (!v65)
      {
        v23 = v159;
        break;
      }
    }
  }

  v155[2] = v157[2];
  v155[3] = v157[3];
  v156 = v158;
  v155[0] = v157[0];
  v155[1] = v157[1];
  outlined destroy of CharacterSet?(v155, &_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_VySo7DOCNode_pGMd);
  v68 = v23 + 56;
  v69 = 1 << *(v23 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v22 = v70 & *(v23 + 56);
  v71 = (v69 + 63) >> 6;
  v140 = v151 + 8;
  v141 = v151 + 16;
  v144 = v23;

  v18 = 0;
  *&v149 = MEMORY[0x277D84F90];
  v12 = v143;
  v142 = v4;
  while (v22)
  {
    v72 = v144;
LABEL_57:
    v74 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v75 = v150;
    v76 = v151;
    v77 = v152;
    (*(v151 + 16))(v150, *(v72 + 6) + *(v151 + 72) * (v74 | (v18 << 6)), v152);
    v17 = UTType.localizedDescription.getter();
    v23 = v78;
    (*(v76 + 8))(v75, v77);
    v4 = v142;
    v12 = v143;
    if (v23)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 16) + 1, 1, v149);
      }

      v80 = *(v149 + 16);
      v79 = *(v149 + 24);
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        v136[0] = v80 + 1;
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v149);
        v81 = v136[0];
        *&v149 = v84;
      }

      v82 = v149;
      *(v149 + 16) = v81;
      v83 = v82 + 16 * v80;
      *(v83 + 32) = v17;
      *(v83 + 40) = v23;
    }
  }

  v72 = v144;
  while (1)
  {
    v73 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_102:
      v25 = __CocoaSet.count.getter();
      goto LABEL_8;
    }

    if (v73 >= v71)
    {
      break;
    }

    v22 = *(v68 + 8 * v73);
    ++v18;
    if (v22)
    {
      v18 = v73;
      goto LABEL_57;
    }
  }

  v85 = *(v149 + 16);

  swift_beginAccess();
  swift_beginAccess();
  if (v85)
  {
    v86 = 0;
    v87 = v149 + 32;
    while (1)
    {
      if (v86 >= *(v149 + 16))
      {
        __break(1u);
        goto LABEL_104;
      }

      v89 = (v87 + 16 * v86);
      v90 = *v89;
      v91 = v89[1];
      v18 = *(*v12 + 16);

      if (v18 < 0xA || *v147 < String.count.getter())
      {
        swift_beginAccess();

        v92 = specialized Set._Variant.insert(_:)(v154, v90, v91);
        v18 = v154[1];
        swift_endAccess();

        if (v92)
        {
          break;
        }
      }

LABEL_67:
      ++v86;

      if (v86 == v85)
      {
        goto LABEL_87;
      }
    }

    if (*(*v12 + 16) >= 0xBuLL)
    {
      v93 = v145;

      v95 = specialized _NativeSet.filter(_:)(v94, v93);

      *(v93 + 16) = v95;
    }

    v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5125_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingySS_tFSiSSXEfU0_Tf1cn_n(v96);

    v97 = *(v18 + 16);
    if (v97)
    {
      v98 = *(v18 + 32);
      v99 = v97 - 1;
      if (v97 != 1)
      {
        if (v97 > 4)
        {
          v100 = v99 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v101 = vdupq_n_s64(v98);
          v102 = (v18 + 56);
          v103 = v99 & 0xFFFFFFFFFFFFFFFCLL;
          v104 = v101;
          do
          {
            v101 = vbslq_s8(vcgtq_s64(v101, v102[-1]), v102[-1], v101);
            v104 = vbslq_s8(vcgtq_s64(v104, *v102), *v102, v104);
            v102 += 2;
            v103 -= 4;
          }

          while (v103);
          v105 = vbslq_s8(vcgtq_s64(v104, v101), v101, v104);
          v106 = vextq_s8(v105, v105, 8uLL).u64[0];
          v98 = vbsl_s8(vcgtd_s64(v106, v105.i64[0]), *v105.i8, v106);
          if (v99 != (v99 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_82;
          }
        }

        else
        {
          v100 = 1;
LABEL_82:
          v107 = v97 - v100;
          v108 = (v18 + 8 * v100 + 32);
          do
          {
            v110 = *v108++;
            v109 = v110;
            if (v110 < v98)
            {
              v98 = v109;
            }

            --v107;
          }

          while (v107);
        }
      }

      v88 = v147;
    }

    else
    {

      v88 = v147;
      v98 = *v147;
    }

    *v88 = v98;
    goto LABEL_67;
  }

LABEL_87:

  DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()();
  v1 = v111;
  DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()();
  v2 = v112;
  DOCItemCollectionViewController.StringWidthCalculationContext.getLongestStringWithAttributesUsingCache()();
  v3 = v113;
  v114 = MEMORY[0x24C1FAD20](2121248, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_249B9A480;
  v116 = *MEMORY[0x277D740A8];
  *(v115 + 32) = *MEMORY[0x277D740A8];
  v117 = v116;
  (v139)(v160, v117);
  v118 = *&v160[0];
  outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v160);
  *(v115 + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont);
  *(v115 + 40) = v118;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v115);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v115 + 32, &_sSo21NSAttributedStringKeya_yptMd);
  swift_deallocClassInstance();
  type metadata accessor for NSAttributedStringKey(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v114 sizeWithAttributes_];
  v121 = v120;

  if (v1 > 0.0)
  {
    LOBYTE(v154[0]) = 0;
    v122 = v121 + specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(v154);
    if (v1 < v122)
    {
      v1 = v122;
    }
  }

  v18 = MEMORY[0x277D85000];
  if (v2 > 0.0)
  {
    LOBYTE(v154[0]) = 4;
    v123 = v121 + specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(v154);
    if (v2 < v123)
    {
      v2 = v123;
    }
  }

  if (v3 > 0.0)
  {
    LOBYTE(v154[0]) = 5;
    v124 = v121 + specialized static DOCItemCollectionViewSectionHeader.sortHeaderItemWidthIncludingTrailingImage(for:)(v154);
    if (v3 < v124)
    {
      v3 = v124;
    }
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_104:
    swift_once();
  }

  v125 = ceil(v1);
  v126 = ceil(v2);
  v127 = ceil(v3);
  v128 = type metadata accessor for Logger();
  __swift_project_value_buffer(v128, static Logger.UI);
  v129 = v153;
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 134218752;
    *(v132 + 4) = [v129 horizontalSizeClass];

    *(v132 + 12) = 2048;
    *(v132 + 14) = v125;
    *(v132 + 22) = 2048;
    *(v132 + 24) = v126;
    *(v132 + 32) = 2048;
    *(v132 + 34) = v127;
    _os_log_impl(&dword_2493AC000, v130, v131, "Updating the stackMetrics for horizontal class %ld. New dateWidth: %f sizeWidth: %f kindWidth: %f", v132, 0x2Au);
    MEMORY[0x24C1FE850](v132, -1, -1);
  }

  else
  {

    v130 = v129;
  }

  v133 = v137;

  v134 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics);
  *v134 = v125;
  v134[1] = v126;
  v134[2] = v127;
  *(v134 + 3) = v40;
  *(v134 + 4) = v48;
  v135 = *(v4 + v133);
  *(v4 + v133) = v153;

  (*((*v18 & *v4) + 0x1778))();
}

unint64_t _s26DocumentManagerExecutables31DOCItemCollectionViewControllerC012computeStackF15MetricsIfNeeded33_45098A9DF3FF02797EF1E06F74668D65LLyyF16SamplingSequenceL_V_15sampleThresholdAGyxGSayxG_SitcfCSo7DOCNode_p_Tt1g5@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result >> 62)
  {
    goto LABEL_6;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 > a2)
  {
    while (!__OFSUB__(a2, 1))
    {
      v4 = v3 - 1;
      v5 = v4 / (a2 - 1);
      if (v5 != 0.0)
      {
        goto LABEL_9;
      }

      __break(1u);
LABEL_6:
      v6 = result;
      v7 = a3;
      v8 = a2;
      v9 = __CocoaSet.count.getter();
      a2 = v8;
      a3 = v7;
      v3 = v9;
      result = v6;
      if (v3 <= v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_7:
  v10 = __OFSUB__(v3, 1);
  v4 = v3 - 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = 1.0;
LABEL_9:
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 49) = *v11;
  *(a3 + 52) = *&v11[3];
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

void specialized next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()()
{
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 > 0.0)
  {
    if (v4 <= v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = *(v0 + 40);
    if (*(v0 + 48))
    {
      v6 = v2 + v3;
    }

    else
    {
      if (__OFADD__(v5++, 1))
      {
LABEL_37:
        __break(1u);
        return;
      }

      v6 = *(v0 + 16) + v5 * v3;
    }

    *(v0 + 40) = v5;
    *(v0 + 56) = v6;
    goto LABEL_14;
  }

  if (v2 > v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 != v4 || (*(v0 + 64) & 1) != 0 || (*(v0 + 48) & 1) == 0 && *(v0 + 40) == 0x8000000000000000)
  {
    return;
  }

  *(v0 + 64) = 1;
LABEL_14:
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1 = v2;
  v0 = *v0;
  if (!(v0 >> 62))
  {
    v8 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 > v1)
    {
LABEL_19:
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v1, v0);
        return;
      }

      if (v1 < 0)
      {
        __break(1u);
      }

      else if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) > v1)
      {
        swift_unknownObjectRetain();
        return;
      }

      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (__CocoaSet.count.getter() > v1)
  {
    goto LABEL_19;
  }

  v8 = __CocoaSet.count.getter();
LABEL_28:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287478656ELL, 0xE600000000000000, &v14);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v2;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v8;
    _os_log_impl(&dword_2493AC000, v10, v11, "%s: %f >= %ld", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }
}

uint64_t next() in SamplingSequence #1 in DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[7];
  v8 = v2[3];
  v7 = v2[4];
  if (v7 <= 0.0)
  {
    if (v6 <= v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = *(v2 + 5);
    if (v2[6])
    {
      v13 = v6 + v7;
    }

    else
    {
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        return result;
      }

      v13 = v2[2] + v12 * v7;
    }

    *(v2 + 5) = v12;
    v2[7] = v13;
LABEL_14:
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        v15 = *v2;
        v3 = *(result + 16);
        if (MEMORY[0x24C1FB170](*&v15, v3) > v6)
        {
          Array.subscript.getter();
          v9 = *(*(v3 - 8) + 56);
          v10 = a2;
          v11 = 0;
          goto LABEL_23;
        }

        v4 = MEMORY[0x24C1FB170](*&v15, v3);
        if (one-time initialization token for UI == -1)
        {
LABEL_20:
          v16 = type metadata accessor for Logger();
          __swift_project_value_buffer(v16, static Logger.UI);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v21 = v20;
            *v19 = 136315650;
            *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287478656ELL, 0xE600000000000000, &v21);
            *(v19 + 12) = 2048;
            *(v19 + 14) = v6;
            *(v19 + 22) = 2048;
            *(v19 + 24) = v4;
            _os_log_impl(&dword_2493AC000, v17, v18, "%s: %f >= %ld", v19, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v20);
            MEMORY[0x24C1FE850](v20, -1, -1);
            MEMORY[0x24C1FE850](v19, -1, -1);
          }

          v9 = *(*(v3 - 8) + 56);
          v10 = a2;
          v11 = 1;
          goto LABEL_23;
        }

LABEL_30:
        swift_once();
        goto LABEL_20;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v8 > v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v6 == v8 && (v2[8] & 1) == 0 && ((v2[6] & 1) != 0 || *(v2 + 5) != 0x8000000000000000))
  {
    *(v2 + 64) = 1;
    goto LABEL_14;
  }

  v9 = *(*(*(result + 16) - 8) + 56);
  v10 = a2;
  v11 = 1;
LABEL_23:

  return v9(v10, v11, 1);
}

Swift::Void __swiftcall DOCItemCollectionViewController.hideMenuController()()
{
  if ([v0 isFirstResponder])
  {
    [objc_msgSend(objc_opt_self() shared)];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.menuControllerWillShow()()
{
  if ([v0 isFirstResponder])
  {
    v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (v1)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.menuControllerWillHide()()
{
  if ([v0 isFirstResponder])
  {
    v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (v1)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0x1C0))();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Int DOCItemCollectionViewController.DOCItemCollectionCellType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

void DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, uint64_t a2, char a3, char a4, void (*a5)(void, void, void, void, double, double, double, double), uint64_t a6)
{
  v7 = v6;
  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v6) + 0x1018))();
  if (v14)
  {
    v15 = v14;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = *((*v13 & *static DOCTransitionableContext.shared) + 0x68);
    v17 = static DOCTransitionableContext.shared;
    v18 = v16();

    v19 = [v15 indexPathsForVisibleItems];
    type metadata accessor for IndexPath();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v20 + 16);

    if (v21)
    {
      DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(1);
      if ((v18 & 1) == 0)
      {
        gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(v15, v7, a1, a2, a5, a6, a4 & 1, a3 & 1);

        return;
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.UI);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v58 = a3;
        v34 = swift_slowAlloc();
        v56 = v18;
        v35 = a2;
        v36 = swift_slowAlloc();
        aBlock = v36;
        *v34 = 136315138;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005CLL, 0x8000000249BDEC60, &aBlock);
        _os_log_impl(&dword_2493AC000, v32, v33, "%s collectionView has 0 visible items. Forcing a layout pass.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v37 = v36;
        a2 = v35;
        v18 = v56;
        MEMORY[0x24C1FE850](v37, -1, -1);
        v38 = v34;
        a3 = v58;
        MEMORY[0x24C1FE850](v38, -1, -1);
      }

      v39 = [v7 view];
      if (!v39)
      {
        __break(1u);
        return;
      }

      v40 = v39;
      [v39 layoutIfNeeded];

      DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(1);
    }

    v60 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.UI);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v59 = a3;
      v44 = swift_slowAlloc();
      v57 = a5;
      v45 = swift_slowAlloc();
      v63 = v45;
      *v44 = 136315394;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005CLL, 0x8000000249BDEC60, &v63);
      *(v44 + 12) = 2080;
      aBlock = 0;
      v65 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      aBlock = 0xD00000000000001BLL;
      v65 = 0x8000000249BDECC0;
      if (v18)
      {
        v46 = 1702195828;
      }

      else
      {
        v46 = 0x65736C6166;
      }

      if (v18)
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      MEMORY[0x24C1FAEA0](v46, v47);

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(aBlock, v65, &v63);

      *(v44 + 14) = v48;
      _os_log_impl(&dword_2493AC000, v42, v43, "%s collectionView delayed layout is required (settings: %s) before gather animation info.", v44, 0x16u);
      swift_arrayDestroy();
      v49 = v45;
      a5 = v57;
      MEMORY[0x24C1FE850](v49, -1, -1);
      v50 = v44;
      a3 = v59;
      MEMORY[0x24C1FE850](v50, -1, -1);
    }

    v51 = objc_opt_self();
    v52 = swift_allocObject();
    *(v52 + 16) = v15;
    *(v52 + 24) = v7;
    *(v52 + 32) = a1;
    *(v52 + 40) = v60;
    *(v52 + 48) = a5;
    *(v52 + 56) = a6;
    *(v52 + 64) = a4 & 1;
    *(v52 + 65) = a3 & 1;
    v68 = partial apply for closure #1 in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
    v69 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v67 = &block_descriptor_215_1;
    v53 = _Block_copy(&aBlock);
    v54 = v15;
    v55 = v7;
    swift_unknownObjectRetain();

    [v51 performAfterCATransactionCommits_];

    _Block_release(v53);
  }

  else
  {
    a5(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    swift_unknownObjectRetain();
    osloga = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005CLL, 0x8000000249BDEC60, &aBlock);
      *(v24 + 12) = 2080;
      v26 = [a1 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &aBlock);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_2493AC000, osloga, v23, "%s collectionView is nil because it is not loaded. Can not get display information for item: %s.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    else
    {
    }
  }
}

id convertedCellFrame #1 (_:cell:topView:) in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  if (a3)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2493AC000, v14, v15, "converting cell geometry from: %@ to screen space", v16, 0xCu);
      outlined destroy of CharacterSet?(v17, &_sSo8NSObjectCSgMd);
      v19 = 0;
      v20 = &selRef_convertRect_toView_;
LABEL_10:
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
      goto LABEL_13;
    }

    v19 = 0;
    v20 = &selRef_convertRect_toView_;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = a1;
    v19 = a2;
    v14 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v24))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v23;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v19;
      *v17 = v23;
      v17[1] = v19;
      v25 = v23;
      v19 = v19;
      _os_log_impl(&dword_2493AC000, v14, v24, "converting cell geometry from: %@ to view: %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      v20 = &selRef_convertRect_toCoordinateSpace_;
      goto LABEL_10;
    }

    v20 = &selRef_convertRect_toCoordinateSpace_;
  }

LABEL_13:

  v26 = *v20;

  return [a1 v26];
}

uint64_t gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void, void, void, double, double, double, double), uint64_t a6, int a7, int a8)
{
  v194 = a8;
  v196 = a7;
  v205 = a5;
  v197 = a4;
  v206 = a3;
  v193 = type metadata accessor for DispatchTimeInterval();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v12);
  v191 = (&v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v190 = (&v176 - v16);
  v195 = type metadata accessor for DispatchTime();
  v189 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v17);
  v187 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v188 = &v176 - v21;
  v186 = type metadata accessor for DispatchWorkItemFlags();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v22);
  v183 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for DispatchQoS();
  v182 = *(v184 - 8);
  MEMORY[0x28223BE20](v184, v24);
  v181 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v26);
  v178 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IndexPath();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v203 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v210 = &v176 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v176 - v37;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v202, v39);
  v201 = &v176 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v204 = &v176 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v176 - v46;
  v50 = MEMORY[0x28223BE20](v48, v49);
  v52 = &v176 - v51;
  v200 = a1;
  v53 = [a1 indexPathsForVisibleItems];
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v216 = *(v54 + 16);
  v217 = a2;
  if (v216)
  {
    v198 = a6;
    v199 = v52;
    v55 = 0;
    v56 = *((*MEMORY[0x277D85000] & *a2) + 0x18A0);
    v214 = (*MEMORY[0x277D85000] & *a2) + 6304;
    v215 = v56;
    v213 = (v54 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
    v211 = v29 + 48;
    v212 = v29 + 16;
    v208 = v29;
    v209 = (v29 + 32);
    v52 = v29 + 8;
    v207 = v54;
    while (v55 < *(v54 + 16))
    {
      (*(v29 + 16))(v38, &v213[*(v29 + 72) * v55], v28);
      v215(v38);
      v8 = v52 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if ((*(v29 + 48))(v47, 1, v28) == 1)
      {
        outlined destroy of CharacterSet?(v47, &_s10Foundation9IndexPathVSgMd);
        v57 = *v52;
      }

      else
      {
        v58 = v28;
        v59 = v210;
        v60 = *v209;
        (*v209)(v210, v47, v58);
        if ((*((*MEMORY[0x277D85000] & *a2) + 0xD88))(v59, 0))
        {
          swift_getObjectType();
          v61 = DOCNode.isEqualTo(node:)();
          swift_unknownObjectRelease();
          v57 = *v52;
          v62 = v59;
          v28 = v58;
          (*v52)(v62, v58);
          if (v61)
          {

            v52 = v199;
            v60(v199, v38, v58);
            v63 = 0;
            a6 = v198;
            v29 = v208;
            a2 = v217;
            goto LABEL_14;
          }
        }

        else
        {
          v57 = *v52;
          (*v52)(v59, v58);
          v28 = v58;
        }

        v54 = v207;
        v29 = v208;
      }

      ++v55;
      v57(v38, v28);
      a2 = v217;
      if (v216 == v55)
      {

        v63 = 1;
        v52 = v199;
        a6 = v198;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v63 = 1;
LABEL_14:
  (*(v29 + 56))(v52, v63, 1, v28);
  v64 = v204;
  outlined init with copy of DOCGridLayout.Spec?(v52, v204, &_s10Foundation9IndexPathVSgMd);
  if ((*(v29 + 48))(v64, 1, v28) == 1)
  {
    outlined destroy of CharacterSet?(v64, &_s10Foundation9IndexPathVSgMd);
    goto LABEL_26;
  }

  (*(v29 + 32))(v203, v64, v28);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v66 = [v200 cellForItemAtIndexPath_];

  if (!v66)
  {
LABEL_25:
    (*(v29 + 8))(v203, v28);
LABEL_26:
    aBlock = 0;
    v219 = 0xE000000000000000;
    _StringGuts.grow(_:)(102);
    MEMORY[0x24C1FAEA0](0xD00000000000001CLL, 0x8000000249BE0DF0);
    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BE0E10);
    outlined init with copy of DOCGridLayout.Spec?(v52, v201, &_s10Foundation9IndexPathVSgMd);
    v81 = String.init<A>(describing:)();
    MEMORY[0x24C1FAEA0](v81);

    v82 = MEMORY[0x24C1FAEA0](0xD00000000000002DLL, 0x8000000249BE0E30);
    v83 = (*((*MEMORY[0x277D85000] & *a2) + 0x1010))(v82);
    v84 = [v83 indexPathsForVisibleItems];

    v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = *(v85 + 16);

    v224 = v86;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v87);

    MEMORY[0x24C1FAEA0](0xD00000000000001ALL, 0x8000000249BE0E60);
    v8 = aBlock;
    v54 = v219;
    if (one-time initialization token for UI == -1)
    {
LABEL_27:
      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static Logger.UI);

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        aBlock = v92;
        *v91 = 136315138;
        *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v54, &aBlock);
        _os_log_impl(&dword_2493AC000, v89, v90, "[Presentation Error] %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x24C1FE850](v92, -1, -1);
        MEMORY[0x24C1FE850](v91, -1, -1);
      }

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock = v96;
        *v95 = 136315138;
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v54, &aBlock);

        *(v95 + 4) = v97;
        _os_log_impl(&dword_2493AC000, v93, v94, "%s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x24C1FE850](v96, -1, -1);
        MEMORY[0x24C1FE850](v95, -1, -1);
      }

      else
      {
      }

      v205(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
      return outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd);
    }

LABEL_56:
    swift_once();
    goto LABEL_27;
  }

  type metadata accessor for DOCItemCollectionCell();
  v67 = swift_dynamicCastClass();
  if (!v67)
  {

    goto LABEL_25;
  }

  v68 = v67;
  v69 = v197;
  if (v197)
  {
    if (v197 != 1)
    {
      type metadata accessor for DOCServicePopoverTrackerRegion(0);
      v221 = v175;
      aBlock = v69;
      doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(&aBlock);
    }

    v99 = (*((*MEMORY[0x277D85000] & *a2) + 0x18A8))(v200);
    v100 = [v99 window];
    if (v100)
    {

      v101 = v66;
      [v68 bounds];
      convertedCellFrame #1 (_:cell:topView:) in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(v68, v99, v196 & 1, v102, v103, v104, v105);
      (v205)(0, 0, v68, 0);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, static Logger.UI);
      v107 = v66;
      v108 = v99;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v177 = v28;
        v113 = v112;
        v114 = swift_slowAlloc();
        v208 = v29;
        v115 = v114;
        aBlock = v114;
        *v111 = 136315650;
        *(v111 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0DF0, &aBlock);
        *(v111 + 12) = 2112;
        *(v111 + 14) = v68;
        *(v111 + 22) = 2112;
        *(v111 + 24) = v108;
        *v113 = v68;
        v113[1] = v108;
        v116 = v107;
        v117 = v108;
        _os_log_impl(&dword_2493AC000, v109, v110, "%s. Can not compute a frame for cell because cell does not have a window. Returning nil thumbnail and empty rect. Cell: %@ top-most view: %@", v111, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        v118 = v113;
        v28 = v177;
        MEMORY[0x24C1FE850](v118, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v115);
        v29 = v208;
        MEMORY[0x24C1FE850](v115, -1, -1);
        MEMORY[0x24C1FE850](v111, -1, -1);
      }

      v205(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
    }

    (*(v29 + 8))(v203, v28);
    return outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static Logger.UI);
  v71 = v66;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();

  v74 = os_log_type_enabled(v72, v73);
  v177 = v28;
  v215 = v68;
  v213 = v71;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v75 = 136315138;
    v77 = MEMORY[0x277D85000];
    v78 = (*((*MEMORY[0x277D85000] & *v68) + 0x208))();
    if (v78)
    {
      v79 = v78;
      v80 = (*((*v77 & *v78) + 0x3D0))();
    }

    else
    {
      v80 = 0;
    }

    v224 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
    v119 = String.init<A>(describing:)();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &aBlock);

    *(v75 + 4) = v121;
    _os_log_impl(&dword_2493AC000, v72, v73, "waiting for up-to-date thumbnail for %s before returning display information to the transition...", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x24C1FE850](v76, -1, -1);
    MEMORY[0x24C1FE850](v75, -1, -1);

    v28 = v177;
  }

  else
  {
  }

  v122 = swift_allocObject();
  *(v122 + 16) = 0;
  v123 = swift_allocObject();
  *(v123 + 16) = 0;
  v124 = swift_allocObject();
  v125 = v123;
  swift_unknownObjectWeakInit();
  v126 = swift_allocObject();
  *(v126 + 16) = v124;
  *(v126 + 24) = v123;
  v127 = v205;
  *(v126 + 32) = v205;
  *(v126 + 40) = a6;
  v216 = v122;
  *(v126 + 48) = v122;
  v128 = v196 & 1;
  *(v126 + 56) = v196 & 1;
  v129 = v206;
  v214 = v126;
  *(v126 + 64) = v206;
  if ((v194 & 1) == 0)
  {

    swift_unknownObjectRetain();
    v169 = v216;

    closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(v215, v124, v125, v127, a6, v169, v128, v129);

    (*(v29 + 8))(v203, v28);
    outlined destroy of CharacterSet?(v52, &_s10Foundation9IndexPathVSgMd);
LABEL_52:
  }

  v208 = v29;
  v199 = v52;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_source);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);

  swift_unknownObjectRetain();
  v130 = v216;

  v131 = static OS_dispatch_queue.main.getter();
  v212 = v125;
  v132 = v131;
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
  v133 = v178;
  v134 = v180;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v135 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v179 + 8))(v133, v134);
  v210 = v135;
  ObjectType = swift_getObjectType();
  v137 = swift_allocObject();
  v137[2] = v130;
  v137[3] = partial apply for closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
  v138 = v215;
  v137[4] = v214;
  v137[5] = v138;
  v222 = partial apply for closure #3 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
  v223 = v137;
  aBlock = MEMORY[0x277D85DD0];
  v219 = 1107296256;
  v220 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v221 = &block_descriptor_1125;
  v139 = _Block_copy(&aBlock);
  v213 = v213;

  v140 = v181;
  static DispatchQoS.unspecified.getter();
  v141 = v183;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v211 = ObjectType;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v139);
  (*(v185 + 8))(v141, v186);
  (*(v182 + 8))(v140, v184);

  OS_dispatch_source.resume()();
  v142 = v187;
  static DispatchTime.now()();
  v143 = v190;
  *v190 = 250;
  v144 = v192;
  v145 = *(v192 + 104);
  v146 = v193;
  v145(v143, *MEMORY[0x277D85178], v193);
  v147 = v188;
  MEMORY[0x24C1FAA90](v142, v143);
  v148 = *(v144 + 8);
  v148(v143, v146);
  v149 = *(v189 + 8);
  v149(v142, v195);
  v145(v143, *MEMORY[0x277D85180], v146);
  v150 = v191;
  *v191 = 0;
  v145(v150, *MEMORY[0x277D85168], v146);
  v151 = v210;
  MEMORY[0x24C1FBBC0](v147, v143, v150, v211);
  v148(v150, v146);
  v152 = v206;
  v148(v143, v146);
  v149(v147, v195);
  swift_getObjectType();
  if (!DOCNode.isFINode.getter())
  {
    v170 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v171 = swift_allocObject();
    v171[2] = v151;
    v171[3] = partial apply for closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
    v172 = v215;
    v171[4] = v214;
    v171[5] = v170;
    v171[6] = v172;
    v171[7] = v152;
    v173 = v213;
    v171[8] = v212;
    v174 = v173;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    DOCNode.fpfs_fetchFPItem(completion:)(partial apply for closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:), v171);

    swift_unknownObjectRelease();

    (*(v208 + 8))(v203, v177);
    outlined destroy of CharacterSet?(v199, &_s10Foundation9IndexPathVSgMd);

    goto LABEL_52;
  }

  v154 = v213;
  v153 = v214;
  v155 = v151;
  v156 = v212;
  v157 = v215;
  v158 = MEMORY[0x277D85000];
  v159 = (*((*MEMORY[0x277D85000] & *v215) + 0x208))();
  v160 = v199;
  if (v159)
  {
    v161 = v159;
    v162 = swift_allocObject();
    v162[2] = v155;
    v162[3] = v156;
    v163 = v217;
    v164 = v206;
    v162[4] = v217;
    v162[5] = v164;
    v162[6] = partial apply for closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
    v162[7] = v153;
    v162[8] = v157;
    v215 = ((*v158 & *v161) + 1520);
    v165 = *v215;
    v166 = v154;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v167 = v163;
    v165(partial apply for closure #4 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:), v162);

    swift_unknownObjectRelease();

    (*(v208 + 8))(v203, v177);
    v168 = v199;
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v208 + 8))(v203, v177);
    v168 = v160;
  }

  outlined destroy of CharacterSet?(v168, &_s10Foundation9IndexPathVSgMd);
}

void closure #2 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, double, double, double, double), uint64_t a5, uint64_t a6, char a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v97 = a8;
    v17 = [Strong view];
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = (*((*MEMORY[0x277D85000] & *v16) + 0x18A8))();

    swift_beginAccess();
    *(a3 + 16) = 1;
    v99 = v19;
    v20 = [v19 window];
    if (!v20)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.UI);
      v31 = a1;
      v32 = v19;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v101[0] = v37;
        *v35 = 136315650;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE0DF0, v101);
        *(v35 + 12) = 2112;
        *(v35 + 14) = v31;
        *(v35 + 22) = 2112;
        *(v35 + 24) = v32;
        *v36 = v31;
        v36[1] = v32;
        v38 = v31;
        v39 = v32;
        _os_log_impl(&dword_2493AC000, v33, v34, "%s. Can not compute a frame for cell because cell does not have a window. Returning nil thumbnail and empty rect. Cell: %@ top-most view: %@", v35, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x24C1FE850](v37, -1, -1);
        MEMORY[0x24C1FE850](v35, -1, -1);
      }

      a4(0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
      goto LABEL_35;
    }

    swift_beginAccess();
    v94 = a5;
    v95 = a4;
    if (*(a6 + 16) == 1)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.UI);
      v22 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v100 = v26;
        *v25 = 136315138;
        v27 = MEMORY[0x277D85000];
        v28 = (*((*MEMORY[0x277D85000] & *v22) + 0x208))();
        if (v28)
        {
          v29 = v28;
          (*((*v27 & *v28) + 0x3D0))();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
        v45 = String.init<A>(describing:)();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v100);

        *(v25 + 4) = v47;
        v48 = "Timed out (250ms) re-fetching thumbnail for %s";
LABEL_23:
        _os_log_impl(&dword_2493AC000, v23, v24, v48, v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x24C1FE850](v26, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);

LABEL_24:
        v52 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
        [v52 addDecoration];
        v53 = MEMORY[0x277D85000];
        v54 = *((*MEMORY[0x277D85000] & *v16) + 0xBD8);
        if (v54() != 1 && v54() != 3)
        {
          v54();
        }

        v55 = (*((*v53 & *a1) + 0x100))([v52 layoutIfNeeded]);
        convertedCellFrame #1 (_:cell:topView:) in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(a1, v99, a7 & 1, v55, v56, v57, v58);
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        [v52 _continuousCornerRadius];
        v68 = v67;
        [v52 bounds];
        if (v68 <= 0.0)
        {
          v84 = specialized static UIBezierPath.path(for:thumbnailSize:)(v97, v71, v72);
        }

        else
        {
          v73 = v72;
          v74 = v71;
          v75 = v69;
          v76 = v70;
          [v52 _continuousCornerRadius];
          v98 = v66;
          v77 = v64;
          v78 = v62;
          v79 = v60;
          v81 = v80;
          v82 = objc_opt_self();
          v83 = v81;
          v60 = v79;
          v62 = v78;
          v64 = v77;
          v66 = v98;
          v84 = [v82 bezierPathWithRoundedRect:v75 cornerRadius:{v76, v74, v73, v83}];
        }

        v85 = one-time initialization token for UI;
        v32 = v84;
        if (v85 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        __swift_project_value_buffer(v86, static Logger.UI);
        v87 = a1;
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 138412290;
          *(v90 + 4) = v87;
          *v91 = a1;
          v92 = v87;
          _os_log_impl(&dword_2493AC000, v88, v89, "calling completion block with cell %@", v90, 0xCu);
          outlined destroy of CharacterSet?(v91, &_sSo8NSObjectCSgMd);
          MEMORY[0x24C1FE850](v91, -1, -1);
          MEMORY[0x24C1FE850](v90, -1, -1);
        }

        v93 = [v52 image];
        v96(v60, v62, v64, v66);

        v16 = v32;
LABEL_35:

        return;
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.UI);
      v41 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v100 = v26;
        *v25 = 136315138;
        v42 = MEMORY[0x277D85000];
        v43 = (*((*MEMORY[0x277D85000] & *v41) + 0x208))();
        if (v43)
        {
          v44 = v43;
          (*((*v42 & *v43) + 0x3D0))();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd);
        v49 = String.init<A>(describing:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v100);

        *(v25 + 4) = v51;
        v48 = "Updated thumbnail for %s";
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void closure #4 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id), uint64_t a6, void *a7)
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
    _os_log_impl(&dword_2493AC000, v12, v13, "thumbnail updated", v14, 2u);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v15 = (*((*MEMORY[0x277D85000] & *a3) + 0x18D0))(a4);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      swift_unknownObjectRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        v22 = [a4 displayName];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v29);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_2493AC000, v18, v19, "Cell for %s has been removed while waiting for the thumbnail", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v20, -1, -1);
      }

      v17 = a7;
    }

    v27 = v16;
    a5(v17);
  }
}

void closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      v17 = objc_opt_self();
      v18 = a1;
      v28 = [v17 defaultManager];
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a7;
      v20[4] = a2;
      v20[5] = a3;
      v20[6] = a4;
      v20[7] = a6;
      v20[8] = a8;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v21 = a6;

      v22 = [v18 itemID];
      v23 = swift_allocObject();
      v23[2] = v18;
      v23[3] = partial apply for closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:);
      v23[4] = v20;
      aBlock[4] = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_1146;
      v24 = _Block_copy(aBlock);
      v25 = v18;

      [v28 fetchItemForItemID:v22 completionHandler:v24];
      _Block_release(v24);

      return;
    }
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a6;

  v27 = a6;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a5;
      v19[4] = a6;
      v19[5] = a7;
      v19[6] = a8;
      v19[7] = a1;
      v19[8] = a9;
      v19[9] = a4;
      v20 = a1;

      swift_unknownObjectRetain();

      v21 = a8;

      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  v23 = a2;
  swift_unknownObjectRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = a6;
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = 136315394;
    v28 = [a4 displayName];
    v42 = a7;
    v43 = a8;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v44);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v33 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCSgMd);
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v44);
    a8 = v43;

    *(v26 + 14) = v36;
    a7 = v42;
    _os_log_impl(&dword_2493AC000, v24, v25, "Could not refetch %s: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    v37 = v27;
    a6 = v41;
    MEMORY[0x24C1FE850](v37, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v38 = swift_allocObject();
  v38[2] = a6;
  v38[3] = a7;
  v38[4] = a8;

  v39 = a8;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v57 = a2;
    v58 = a3;
    v16 = MEMORY[0x277D85000];
    v17 = (*((*MEMORY[0x277D85000] & *Strong) + 0x18D0))(a6);
    if (v17)
    {
      v18 = v17;
      v19 = (*((*v16 & *v17) + 0x208))();
      if (v19)
      {
        v20 = v19;
        v21 = *((*v16 & *v19) + 0x3D8);
        v22 = swift_unknownObjectRetain();
        v21(v22);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        v24[2] = v23;
        v24[3] = v57;
        v24[4] = v58;
        v24[5] = a4;
        v24[6] = v18;
        v24[7] = a7;
        v24[8] = a6;
        v24[9] = a8;
        v56 = *((*v16 & *v20) + 0x5F0);

        v25 = a6;

        swift_unknownObjectRetain();
        v26 = v18;

        swift_unknownObjectRetain();
        v56(partial apply for closure #1 in closure #1 in closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:), v24);
      }

      else
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.UI);
        v43 = a6;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v60 = v47;
          *v46 = 136315138;
          v48 = [v43 displayName];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v60);

          *(v46 + 4) = v52;
          _os_log_impl(&dword_2493AC000, v44, v45, "Cell for %s does not have any cell content.", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x24C1FE850](v47, -1, -1);
          MEMORY[0x24C1FE850](v46, -1, -1);
        }

        swift_getObjectType();
        OS_dispatch_source.cancel()();
        v53 = swift_allocObject();
        v53[2] = v58;
        v53[3] = a4;
        v53[4] = v18;

        v54 = v18;
        DOCRunInMainThread(_:)();
      }
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.UI);
      v30 = a6;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v60 = v34;
        *v33 = 136315138;
        v35 = [v30 displayName];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v60);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_2493AC000, v31, v32, "Cell for %s has been removed while refetching the FPItem.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x24C1FE850](v34, -1, -1);
        MEMORY[0x24C1FE850](v33, -1, -1);
      }

      swift_getObjectType();
      OS_dispatch_source.cancel()();
      v40 = swift_allocObject();
      v40[2] = v58;
      v40[3] = a4;
      v40[4] = a5;

      v41 = a5;
      DOCRunInMainThread(_:)();
    }
  }

  else
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = a4;
    v27[4] = a5;

    v28 = a5;
    DOCRunInMainThread(_:)();
  }
}

void closure #1 in closure #1 in closure #1 in closure #5 in gatherAnimationInformation #1 () in DOCItemCollectionViewController.getDisplayInformation(for:region:waitForNewThumbnail:targetCoordinateSpace:completionBlock:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v40 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a8;
      v20 = a5;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2493AC000, v17, v18, "thumbnail updated", v21, 2u);
      v22 = v21;
      a5 = v20;
      a8 = v19;
      MEMORY[0x24C1FE850](v22, -1, -1);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_beginAccess();
    if (*(a6 + 16))
    {
    }

    else
    {
      v25 = (*((*MEMORY[0x277D85000] & *v15) + 0x18D0))(a7);
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        swift_unknownObjectRetain();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v41 = v31;
          *v30 = 136315138;
          v32 = [a8 displayName];
          v39 = a5;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

          *(v30 + 4) = v36;
          _os_log_impl(&dword_2493AC000, v28, v29, "Cell for %s has been removed while waiting for the thumbnail", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x24C1FE850](v31, -1, -1);
          MEMORY[0x24C1FE850](v30, -1, -1);

          v37 = v39;
        }

        else
        {

          v37 = a5;
        }

        v27 = v37;
      }

      v38 = v26;
      v40(v27);
    }
  }

  else
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;

    v24 = a5;
    DOCRunInMainThread(_:)();
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.reloadCollection()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2, v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v0) + 0x1178);
  if ((v9)(v5))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v9();

      _os_log_impl(&dword_2493AC000, v12, v13, "Deferring reloadCollection, they are still batch updates running (%ld remaining)", v14, 0xCu);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    *(&v11->isa + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
  }

  else if ((*((*v8 & *v0) + 0xC58))())
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 1;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v3;
      v21 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v21 = v1;
      v22 = v16;
      _os_log_impl(&dword_2493AC000, v17, v18, "Reload collection in %@", v19, 0xCu);
      outlined destroy of CharacterSet?(v21, &_sSo8NSObjectCSgMd);
      v23 = v21;
      v3 = v20;
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    static os_signpost_type_t.begin.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v26 = *(v3 + 8);
    v24 = v3 + 8;
    v25 = v26;
    v27 = (v26)(v7, v2);
    v28 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v28)
    {
      v29 = v24;
      v30 = MEMORY[0x277D85000];
      v31 = (*((*MEMORY[0x277D85000] & *v28) + 0x258))(v27);
      (*((*v30 & *v16) + 0xCC0))(v31);
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v25(v7, v2);
      *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
      *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 1;
      DOCItemCollectionViewController.computeStackViewMetricsIfNeeded()();
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v32 = (v25)(v7, v2);
      (*(**(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool) + 208))(v32);
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v33 = (v25)(v7, v2);
      v34 = (*((*MEMORY[0x277D85000] & *v16) + 0xD60))(v33);
      v46 = 2;
      DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v34, &v46, 0);
      v35 = MEMORY[0x277D84F90];

      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v45 = v29;
      v25(v7, v2);
      v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(v35);
      v37 = MEMORY[0x277D85000];
      v38 = (*((*MEMORY[0x277D85000] & *v16) + 0xA88))(v36);
      v39 = (*((*v37 & *v16) + 0xA68))(v38);
      v40 = *&v39[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
      LODWORD(v37) = v39[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
      outlined copy of DOCFileProviderSourceType(v40);

      if (v37 == 1)
      {
        outlined consume of DOCFileProviderSourceType(v40);
        *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
        v41 = [v16 viewIfLoaded];
        v42 = [v41 window];

        if (v42)
        {

          DOCBrowserContainedViewController.updateOverlayIfNeeded()();
        }

        else
        {
          DOCBrowserContainedViewController.applyOverlaySearchSettings()();
        }
      }

      else
      {
        outlined consume of DOCFileProviderSourceType(v40);
      }

      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v25(v7, v2);
      specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v25(v7, v2);
      v43 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
      if (v43)
      {
        v44 = v43;
        DOCStatusFooterView.updateQuotaLabel()();
      }

      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v25(v7, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateItems(atIndexPaths:)(Swift::OpaquePointer_optional atIndexPaths)
{
  v2 = v1;
  rawValue = atIndexPaths.value._rawValue;
  v4 = type metadata accessor for IndexPath();
  v44 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (rawValue)
  {
    v9 = rawValue;
  }

  else
  {
    v10 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(v6);
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [v10 indexPathsForVisibleItems];

    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = one-time initialization token for UI;

  if (v13 != -1)
  {
LABEL_37:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.UI);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BDEDA0, &v53);
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(v9 + 16);

    _os_log_impl(&dword_2493AC000, v15, v16, "DOCNodeCollectionDelegate %s updating contents of %ld cells", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C1FE850](v18, -1, -1);
    MEMORY[0x24C1FE850](v17, -1, -1);
  }

  else
  {
  }

  v19 = v44;
  v52 = *(v9 + 16);
  if (v52)
  {
    v20 = 0;
    v21 = *((*MEMORY[0x277D85000] & *v2) + 0xD88);
    v50 = (*MEMORY[0x277D85000] & *v2) + 3464;
    v51 = v21;
    v49 = v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v42 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v43 = v4;
    v47 = (v44 + 8);
    v48 = v44 + 16;
    v45 = v9;
    v46 = v2;
    while (1)
    {
      if (v20 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      (*(v19 + 16))(v8, v49 + *(v19 + 72) * v20, v4);
      v25 = v51(v8, 0);
      if (v25)
      {
        v26 = v25;
        v27 = (*((*MEMORY[0x277D85000] & *v2) + 0x1010))();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v29 = [v27 cellForItemAtIndexPath_];

        if (!v29)
        {
          (*v47)(v8, v4);
          swift_unknownObjectRelease();
          goto LABEL_14;
        }

        type metadata accessor for DOCItemCollectionCell();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();

          (*v47)(v8, v4);
          v9 = v45;
          goto LABEL_14;
        }

        v31 = *((*MEMORY[0x277D85000] & *v30) + 0x208);
        v32 = v31();
        if (v32)
        {
          v33 = *(v46 + v42);
          if (!v33)
          {
            __break(1u);
            return;
          }

          v34 = v32;
          v35 = (*((*MEMORY[0x277D85000] & *v33) + 0x1B0))();
          if (v35)
          {
            v36 = [v35 isShared];
            swift_unknownObjectRelease();
          }

          else
          {
            v36 = 0;
          }

          (*((*MEMORY[0x277D85000] & *v34) + 0x438))(v36);
        }

        v37 = v31();
        if (v37)
        {
          v38 = v37;
          v39 = *((*MEMORY[0x277D85000] & *v37) + 0x3D8);
          v40 = swift_unknownObjectRetain();
          v39(v40);
        }

        v41 = v31();
        if (v41)
        {
          v22 = v41;
          v2 = v46;
          v23 = MEMORY[0x277D85000];
          v24 = (*((*MEMORY[0x277D85000] & *v46) + 0x18C0))(v26);
          (*((*v23 & *v22) + 0x4F8))(v24 & 1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v2 = v46;
        }

        v4 = v43;
        v19 = v44;
        v9 = v45;
      }

      (*v47)(v8, v4);
LABEL_14:
      if (v52 == ++v20)
      {

        return;
      }
    }
  }
}

void DOCItemCollectionViewController.estimatedVisibleCellCount(itemLayoutTraits:viewportSize:)(uint64_t a1, double a2, double a3)
{
  if ([v3 isViewLoaded])
  {
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xBD8))();
  }

  else
  {
    v7 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
    if (!v7 || (v8 = MEMORY[0x277D85000], (v9 = (*((*MEMORY[0x277D85000] & *v7) + 0xB0))()) == 0))
    {
      v6 = 0;
      goto LABEL_12;
    }

    v10 = v9;
    v11 = [v9 dataSource];
    v6 = (*((*v8 & *v11) + 0x188))();
  }

  if ((v6 - 1) <= 1)
  {
    (*(*a1 + 232))(v28);
    v12 = round(a3 / v28[0]);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          v13 = 1;
          goto LABEL_15;
        }

LABEL_27:
        __break(1u);
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_12:
  v14 = *(*a1 + 160);
  v14(v26);
  v15 = outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v26);
  v13 = v26[13];
  (v14)(v27, v15);
  v16 = outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v27);
  v17 = *&v27[1];
  (v14)(v28, v16);
  v18 = *&v28[3];
  outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v28);
  [v18 spacing];
  v20 = v19;

  v12 = round(a3 / (v17 + v20));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_15:
  v21 = v13 * v12;
  if ((v13 * v12) >> 64 != v21 >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_21:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v6;
    _os_log_impl(&dword_2493AC000, v23, v24, "estimated preload thumbnail count: %ld for displayMode %ld", v25, 0x16u);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }
}

void *DOCItemCollectionViewController.modelPreloadingAppearance.getter()
{
  v1 = v0;
  result = [v0 effectiveAppearance];
  if (!result)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager];
    if (v3)
    {
      v4 = MEMORY[0x277D85000];
      v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
      if (v5)
      {
        v6 = v5;
        v7 = [v5 effectiveAppearance];

        if (v7)
        {
          v8 = v7;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.UI);
          v10 = v1;
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v11, v12))
          {
            goto LABEL_22;
          }

          v13 = swift_slowAlloc();
          result = swift_slowAlloc();
          *v13 = 138412290;
          v14 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
          if (v14)
          {
            v15 = result;
            v16 = (*((*v4 & *v14) + 0x1A8))();
            if (!v16)
            {
              v16 = v14;
            }

            *(v13 + 4) = v16;
            *v15 = v16;
            v17 = "falling back on document browser's appearance (item collection: %@)";
LABEL_21:
            _os_log_impl(&dword_2493AC000, v11, v12, v17, v13, 0xCu);
            outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd);
            MEMORY[0x24C1FE850](v15, -1, -1);
            MEMORY[0x24C1FE850](v13, -1, -1);
LABEL_22:

            return v8;
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }
    }

    v18 = [objc_opt_self() anyWindowPreferingKeyWindow];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 effectiveAppearance];

      if (v20)
      {
        v8 = v20;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.UI);
        v22 = v1;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_22;
        }

        v13 = swift_slowAlloc();
        result = swift_slowAlloc();
        *v13 = 138412290;
        v23 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
        if (v23)
        {
          v15 = result;
          v24 = (*((*MEMORY[0x277D85000] & *v23) + 0x1A8))();
          if (!v24)
          {
            v24 = v23;
          }

          *(v13 + 4) = v24;
          *v15 = v24;
          v17 = "falling back on key window's appearance (item collection: %@)";
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    v26 = v1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      result = swift_slowAlloc();
      *v29 = 138412290;
      v30 = *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
      if (!v30)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v31 = result;
      v32 = (*((*MEMORY[0x277D85000] & *v30) + 0x1A8))();
      if (!v32)
      {
        v32 = v30;
      }

      *(v29 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_2493AC000, v27, v28, "falling back on default appearance (item collection: %@)", v29, 0xCu);
      outlined destroy of CharacterSet?(v31, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v31, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    v33 = objc_allocWithZone(MEMORY[0x277D05EA0]);

    return [v33 init];
  }

  return result;
}

void DOCItemCollectionViewController.preloadContent(for:)(uint64_t a1)
{
  v55 = type metadata accessor for OSSignpostID();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v12)
    {
      break;
    }

    v13 = v11;
    v14 = (*((*MEMORY[0x277D85000] & *v12) + 0x1A8))(v11);
    if (!v14)
    {
      v14 = v12;
    }

    *(v10 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_2493AC000, v8, v9, "Preloading content for item collection %@", v10, 0xCu);
    outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
LABEL_7:

    DOCItemCollectionViewController.modelPreloadingCollectionViewSize.getter();
    if (v16 == 0.0)
    {
      return;
    }

    v18 = v17;
    if (v17 == 0.0)
    {
      return;
    }

    v19 = v16;
    v20 = MEMORY[0x277D85000];
    v21 = (*((*MEMORY[0x277D85000] & *v7) + 0x11C0))(v15);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v8 = v7;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = *(&v8->isa + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (!v27)
        {
          goto LABEL_66;
        }

        v28 = v26;
        v29 = (*((*MEMORY[0x277D85000] & *v27) + 0x1A8))(v26);
        if (!v29)
        {
          v29 = v27;
        }

        *(v25 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&dword_2493AC000, v23, v24, "No collection view layout traits found, creating one (item collection: %@)", v25, 0xCu);
        outlined destroy of CharacterSet?(v28, &_sSo8NSObjectCSgMd);
        MEMORY[0x24C1FE850](v28, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);
        v20 = MEMORY[0x277D85000];
      }

      (*((*v20 & v8->isa) + 0xA50))(v57);
      v61 = v57[3];
      v62 = v57[4];
      v59 = v57[1];
      v60 = v57[2];
      v58 = v57[0];
      outlined destroy of DOCItemCollectionConfiguration(&v58);
      v56 = v59;
      v30 = [v8 traitCollection];
      type metadata accessor for DOCItemCollectionLayoutTraits();
      swift_allocObject();
      v22 = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)(&v56, v30, v19, v18);
    }

    v1 = v7;
    DOCItemCollectionViewController.estimatedVisibleCellCount(itemLayoutTraits:viewportSize:)(v22, v31, v18);
    v33 = v32;

    if (a1 >> 62)
    {
      v34 = __CocoaSet.count.getter();
    }

    else
    {
      v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34 >= v33)
    {
      a1 = v33;
    }

    else
    {
      a1 = v34;
    }

    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v35 = (*((*v20 & *v7) + 0xCB8))(v34);
      v1 = v35;
      v8 = (v35 >> 62);
      if (!(v35 >> 62))
      {
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
        {
          goto LABEL_57;
        }

        goto LABEL_25;
      }
    }

    if (__CocoaSet.count.getter() < 0)
    {
      goto LABEL_65;
    }

    if (__CocoaSet.count.getter() < a1)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_25:
    v53 = v22;
    if ((v1 & 0xC000000000000001) != 0)
    {

      if (a1)
      {
        v36 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
          _ArrayBuffer._typeCheckSlowPath(_:)(v36++);
        }

        while (a1 != v36);
      }
    }

    else
    {
    }

    if (v8)
    {
      _CocoaArrayWrapper.subscript.getter();
      v38 = v39;
      v37 = v40;
      v42 = v41;

      a1 = v42 >> 1;
    }

    else
    {
      v37 = 0;
      v38 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    *&v58 = MEMORY[0x277D84F90];
    swift_unknownObjectRetain();
    if (v37 == a1)
    {
LABEL_35:
      swift_unknownObjectRelease_n();
      a1 = v58;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 134217984;
        v22 = v55;
        v20 = v54;
        if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
        {
          v46 = __CocoaSet.count.getter();
        }

        else
        {
          v46 = *(a1 + 16);
        }

        *(v45 + 4) = v46;

        _os_log_impl(&dword_2493AC000, v43, v44, "Preloading model for %ld nodes", v45, 0xCu);
        MEMORY[0x24C1FE850](v45, -1, -1);
      }

      else
      {

        v22 = v55;
        v20 = v54;
      }

      static os_signpost_type_t.begin.getter();
      if (one-time initialization token for updatePointsOfInterestHandler != -1)
      {
LABEL_58:
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v48 = v20[1];
      v48(v5, v22);
      if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
      {
        v50 = __CocoaSet.count.getter();
        if (!v50)
        {
          goto LABEL_60;
        }

LABEL_50:
        v51 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool);
        v52 = MEMORY[0x28223BE20](v50, v49);
        (*(*v51 + 184))(a1, closure #1 in DOCItemCollectionViewController.prefetchCellContent(for:)partial apply, v52);
      }

      else
      {
        v50 = *(a1 + 16);
        if (v50)
        {
          goto LABEL_50;
        }

LABEL_60:
      }

      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      v48(v5, v22);
      return;
    }

    while (v37 < a1)
    {
      v47 = *(v38 + 8 * v37);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v1 = v47;
      if (DOCNode.isCreateDocumentSentinel()())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v1 = &v58;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (a1 == ++v37)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void DOCItemCollectionViewController.notifyContentDidLoad()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v159 = *(v11 - 8);
  v160 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v158 = v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v161 = v146 - v16;
  v165 = type metadata accessor for ImageOptions();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v17);
  v156 = v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v157 = v146 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsVSgMd);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v155 = v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v166 = v146 - v28;
  v29 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v29)
  {
    __break(1u);
    goto LABEL_147;
  }

  if ([v29 isGathering] & 1) != 0 || (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad))
  {
    v30 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))();
    v31 = [v30 identifier];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
        v37 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
        if (v37)
        {

          [v37 setHidden_];
        }
      }
    }

    return;
  }

  v148 = v10;
  v149 = v7;
  v150 = v5;
  v151 = v6;
  v152 = v2;
  v153 = v1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 1;
  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v0) + 0xA68);
  v164 = v0;
  v40 = v39();
  v41 = [v40 identifier];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
  {

    v47 = v164;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v47 = v164;
    if ((v48 & 1) == 0)
    {
      v46 = *(v164 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
      if (v46)
      {
        v46 = [v46 setHidden_];
      }
    }
  }

  v49 = *((*v38 & *v47) + 0x1018);
  v50 = (*v38 & *v47) + 4120;
  v51 = v49(v46);
  v154 = 0;
  if (!v51)
  {
LABEL_63:
    v80 = [v47 traitCollection];
    v81 = [v80 horizontalSizeClass];

    if (v81 == 1)
    {
      v82 = 10;
    }

    else
    {
      v82 = 25;
    }

    v83 = (*((*v38 & *v47) + 0xCB8))();
    v84 = v83;
    v85 = v83 & 0xFFFFFFFFFFFFFF8;
    v86 = v83 >> 62;
    if (!(v83 >> 62))
    {
      v87 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v87 >= v82)
      {
        v88 = v82;
      }

      else
      {
        v88 = *(v85 + 16);
      }

      if (v87 >= v88)
      {
        goto LABEL_71;
      }

      goto LABEL_139;
    }

    if (v83 < 0)
    {
      v47 = v83;
    }

    else
    {
      v47 = (v83 & 0xFFFFFFFFFFFFFF8);
    }

    v144 = __CocoaSet.count.getter();
    if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
      if (v144 >= v82)
      {
        v145 = v82;
      }

      else
      {
        v145 = v144;
      }

      if (v144 >= 0)
      {
        v88 = v145;
      }

      else
      {
        v88 = v82;
      }

      if (__CocoaSet.count.getter() >= v88)
      {
LABEL_71:
        if ((v84 & 0xC000000000000001) != 0)
        {

          if (v88)
          {
            for (i = 0; i != v88; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
              _ArrayBuffer._typeCheckSlowPath(_:)(i);
            }
          }
        }

        else
        {
        }

        if (v86)
        {
          v91 = _CocoaArrayWrapper.subscript.getter();
          v92 = v95;
          v90 = v96;
          v93 = v97;

          v94 = v166;
          if ((v93 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v90 = 0;
          v91 = v84 & 0xFFFFFFFFFFFFFF8;
          v92 = (v84 & 0xFFFFFFFFFFFFFF8) + 32;
          v93 = (2 * v88) | 1;
          v94 = v166;
          if ((v93 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v102 = swift_dynamicCastClass();
        if (!v102)
        {
          swift_unknownObjectRelease();
          v102 = MEMORY[0x277D84F90];
        }

        v103 = *(v102 + 16);

        if (__OFSUB__(v93 >> 1, v90))
        {
          __break(1u);
        }

        else if (v103 == (v93 >> 1) - v90)
        {
          v99 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v100 = v165;
          v101 = v163;
          if (v99)
          {
LABEL_89:
            v163 = v99;
            v104 = v164;
            DOCItemCollectionViewController.preloadContent(for:)(v99);
            v162 = *(v101 + 56);
            v105 = v162(v94, 1, 1, v100);
            v106 = MEMORY[0x277D85000];
            v107 = (*((*MEMORY[0x277D85000] & *v104) + 0x11C0))(v105);
            if (v107)
            {
              (*(*v107 + 184))(&v167);

              v186 = v175;
              v187 = v176;
              v188[0] = v177[0];
              *(v188 + 9) = *(v177 + 9);
              v182 = v171;
              v183 = v172;
              v184 = v173;
              v185 = v174;
              v178 = v167;
              v179 = v168;
              v180 = v169;
              v181 = v170;
              v108 = [v104 traitCollection];
              [v108 displayScale];
              UITraitCollection._ifColorForIconFolderTintComponents.getter();
              v109 = v156;
              ImageOptions.init(size:scale:isFolded:folderTintComponents:)();

              outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v178);
              v110 = *(v101 + 32);
              v111 = v157;
              v110(v157, v109, v100);
              outlined destroy of CharacterSet?(v94, &_s21DocumentManagerUICore12ImageOptionsVSgMd);
              v110(v94, v111, v100);
              v162(v94, 0, 1, v100);
            }

            else
            {
              v112 = v162;
              v113 = [v104 traitCollection];
              v114 = (*((*v106 & *v104) + 0x13F0))();

              if (v114)
              {
                v115 = *(*v114 + 184);

                v115(&v167, v116);

                v186 = v175;
                v187 = v176;
                v188[0] = v177[0];
                *(v188 + 9) = *(v177 + 9);
                v182 = v171;
                v183 = v172;
                v184 = v173;
                v185 = v174;
                v178 = v167;
                v179 = v168;
                v180 = v169;
                v181 = v170;
                v117 = [v104 traitCollection];
                [v117 displayScale];
                UITraitCollection._ifColorForIconFolderTintComponents.getter();
                v118 = v155;
                ImageOptions.init(size:scale:isFolded:folderTintComponents:)();

                outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v178);
                v119 = v118;
                v120 = 0;
              }

              else
              {
                v118 = v155;
                v119 = v155;
                v120 = 1;
              }

              v112(v119, v120, 1, v165);
              v94 = v166;
              outlined assign with take of IndexPath?(v118, v166, &_s21DocumentManagerUICore12ImageOptionsVSgMd);
              v104 = v164;
            }

            v121 = v104;
            v67 = specialized Sequence.compactMap<A>(_:)(v163, v94, v121);

            outlined destroy of CharacterSet?(v94, &_s21DocumentManagerUICore12ImageOptionsVSgMd);
            goto LABEL_96;
          }

          v99 = MEMORY[0x277D84F90];
LABEL_88:
          swift_unknownObjectRelease();
          goto LABEL_89;
        }

        swift_unknownObjectRelease_n();
LABEL_81:
        specialized _copyCollectionToContiguousArray<A>(_:)(v91, v92, v90, v93);
        v99 = v98;
        v100 = v165;
        v101 = v163;
        goto LABEL_88;
      }

LABEL_139:
      __break(1u);
LABEL_140:
      swift_once();
      goto LABEL_125;
    }

LABEL_147:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = [v51 visibleCells];

  v146[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v146[2] = v50;
  v147 = v49;
  if (v54 >> 62)
  {
LABEL_61:
    v55 = __CocoaSet.count.getter();
    if (v55)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
LABEL_62:

    v47 = v164;
    v38 = MEMORY[0x277D85000];
    goto LABEL_63;
  }

LABEL_23:
  v56 = 0;
  while (1)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x24C1FC540](v56, v54);
    }

    else
    {
      if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v57 = *(v54 + 8 * v56 + 32);
    }

    v58 = v57;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v60 = type metadata accessor for DOCItemCollectionCell();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = (*((*MEMORY[0x277D85000] & *v61) + 0x208))();
      if (v62)
      {
        break;
      }
    }

LABEL_25:
    ++v56;
    if (v59 == v55)
    {
      goto LABEL_62;
    }
  }

  v63 = v62;
  v162 = v60;
  v64 = (*((*MEMORY[0x277D85000] & *v62) + 0xB70))();

  if ((v64 & 1) == 0)
  {
    goto LABEL_25;
  }

  v66 = v147(v65);
  v67 = MEMORY[0x277D84F90];
  if (v66)
  {
    v68 = v66;
    v69 = [v66 visibleCells];

    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *&v178 = v67;
    if (!(v70 >> 62))
    {
      v71 = v70 & 0xFFFFFFFFFFFFFF8;
      v54 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_38;
      }

LABEL_144:
      v163 = MEMORY[0x277D84F90];
      goto LABEL_145;
    }

    v71 = v70 & 0xFFFFFFFFFFFFFF8;
    v54 = __CocoaSet.count.getter();
    if (!v54)
    {
      goto LABEL_144;
    }

LABEL_38:
    v72 = 0;
    v163 = MEMORY[0x277D84F90];
LABEL_39:
    v73 = v72;
    while (1)
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x24C1FC540](v73, v70);
        v72 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v73 >= *(v71 + 16))
        {
          goto LABEL_60;
        }

        v74 = *(v70 + 8 * v73 + 32);
        v72 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_59;
        }
      }

      v75 = swift_dynamicCastClass();
      if (v75 && (v76 = MEMORY[0x277D85000], (v77 = (*((*MEMORY[0x277D85000] & *v75) + 0x208))()) != 0))
      {
        v78 = v77;
        v79 = (*((*v76 & *v77) + 0xA80))();

        if (v79)
        {
          type metadata accessor for NodeThumbnail();
          if (swift_dynamicCastClass())
          {
            MEMORY[0x24C1FB090]();
            if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v163 = v178;
            if (v72 == v54)
            {
LABEL_145:

              v67 = v163;
              break;
            }

            goto LABEL_39;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v73;
      if (v72 == v54)
      {
        goto LABEL_145;
      }
    }
  }

LABEL_96:
  v82 = dispatch_group_create();
  if (v67 >> 62)
  {
LABEL_122:
    v122 = __CocoaSet.count.getter();
    if (v122)
    {
      goto LABEL_98;
    }

    goto LABEL_123;
  }

  v122 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v122)
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_98:
  if ((v67 & 0xC000000000000001) != 0)
  {
    v123 = 0;
    v124 = 0;
LABEL_100:
    LODWORD(v166) = v123;
    v125 = v124;
    do
    {
      MEMORY[0x24C1FC540](v125, v67);
      v124 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        __break(1u);
        goto LABEL_121;
      }

      dispatch_group_enter(v82);
      *(swift_allocObject() + 16) = v82;
      v126 = v82;
      v127 = NodeThumbnail.registerGenerationCompletionHandler(_:)();

      if (v127)
      {
        swift_unknownObjectRelease();
        v123 = 1;
        if (v124 != v122)
        {
          goto LABEL_100;
        }

        goto LABEL_117;
      }

      dispatch_group_leave(v126);
      swift_unknownObjectRelease();
      ++v125;
    }

    while (v124 != v122);

    if (v166)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v128 = 0;
    v129 = 0;
    v166 = v67 & 0xFFFFFFFFFFFFFF8;
    v163 = v67;
    v67 += 32;
    v162 = (v122 - 1);
LABEL_110:
    LODWORD(v165) = v128;
    do
    {
      if (v129 >= *(v166 + 16))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v130 = (v129 + 1);
      v131 = *(v67 + 8 * v129);
      dispatch_group_enter(v82);
      *(swift_allocObject() + 16) = v82;
      v132 = v82;
      v133 = NodeThumbnail.registerGenerationCompletionHandler(_:)();

      if (v133)
      {

        v128 = 1;
        if (v162 != v129++)
        {
          goto LABEL_110;
        }

LABEL_117:

        goto LABEL_119;
      }

      dispatch_group_leave(v132);

      ++v129;
    }

    while (v122 != v130);

    if (v165)
    {
LABEL_119:
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v166 = static OS_dispatch_queue.main.getter();
      v135 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v180 = partial apply for closure #5 in DOCItemCollectionViewController.notifyContentDidLoad();
      *(&v180 + 1) = v135;
      *&v178 = MEMORY[0x277D85DD0];
      *(&v178 + 1) = 1107296256;
      *&v179 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v179 + 1) = &block_descriptor_875;
      v136 = _Block_copy(&v178);

      v137 = v148;
      static DispatchQoS.unspecified.getter();
      *&v167 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v138 = v150;
      v139 = v153;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v140 = v166;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      v47 = v164;
      _Block_release(v136);

      (*(v152 + 8))(v138, v139);
      (*(v149 + 8))(v137, v151);

      goto LABEL_126;
    }
  }

LABEL_124:
  static os_signpost_type_t.event.getter();
  v47 = v164;
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    goto LABEL_140;
  }

LABEL_125:
  v141 = v158;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v159 + 8))(v141, v160);
  DOCItemCollectionViewController.reportDidLoadContent(_:)(1);
LABEL_126:
  v142 = MEMORY[0x277D85000];
  v143 = DOCItemCollectionViewController.reportDidLoadContent(_:)(0);
  (*((*v142 & *v47) + 0x1860))(v143, 0.5);
}

void closure #5 in DOCItemCollectionViewController.notifyContentDidLoad()()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static os_signpost_type_t.event.getter();
    if (one-time initialization token for updatePointsOfInterestHandler != -1)
    {
      swift_once();
    }

    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    (*(v1 + 8))(v4, v0);
    DOCItemCollectionViewController.reportDidLoadContent(_:)(1);
  }
}

uint64_t DOCItemCollectionViewController.reportDidLoadContent(_:)(char a1)
{
  v2 = v1;
  [v1 setNeedsFocusUpdate];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x11E0))(0);
  v6 = (*((*v4 & *v1) + 0xE8))(v5);
  if (v6)
  {
    [v6 didFinishGatheringItemsAndThumbnailsWithSender_];
    v6 = swift_unknownObjectRelease();
  }

  result = (*((*v4 & *v1) + 0xD0))(v6);
  if (result)
  {
    v9 = v8;
    v13[3] = type metadata accessor for DOCItemCollectionViewController(0);
    v13[0] = v1;
    v10 = (*((*v4 & *v1) + 0xCB8))(v1);
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v13, v11, 1, 0, ObjectType, v9);
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_0(v13);
  }

  if (a1)
  {
    return (*((*v4 & *v2) + 0x1860))(result, 0.02);
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.makeCollectionViewVisible(with:)(Swift::Double with)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v25 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - v17;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v11 + 8);
  v24(v14, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.makeCollectionViewVisible(with:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_221;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v23;
  MEMORY[0x24C1FB940](v18, v9, v5, v20);
  _Block_release(v20);

  (*(v28 + 8))(v5, v2);
  (*(v26 + 8))(v9, v27);
  v24(v18, v25);
}

void closure #1 in DOCItemCollectionViewController.makeCollectionViewVisible(with:)(void *a1)
{
  v1 = (*((*MEMORY[0x277D85000] & *a1) + 0x1018))();
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }
}

uint64_t DOCItemCollectionViewController.reportDidUpdateContentIfNecessary(from:to:)(unint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x11D8))();
  if (result)
  {
    return result;
  }

  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (!(a2 >> 62))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
LABEL_4:
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
LABEL_5:
  if ((v7 != 0) == (v8 == 0))
  {
    result = (*((*v5 & *v2) + 0xD0))();
    if (result)
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v14[3] = type metadata accessor for DOCItemCollectionViewController(0);
      v14[0] = v2;
      v12 = *(v10 + 8);
      v13 = v2;
      v12(v14, v8, 1, 1, ObjectType, v10);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }
  }

  return result;
}

void DOCItemCollectionViewController.createLoadingViewIfNeeded()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v17 = [v1 superview];

  v3 = v17;
  if (!v17)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView;
  if (!*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView])
  {
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionLoadingView()) initWithFrame_];
      [v15 setTranslatesAutoresizingMaskIntoConstraints_];
      [v17 addSubview_];
      isa = DOCConstraintsToResizeWithSuperview();
      if (!isa)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      [objc_opt_self() activateConstraints_];

      v3 = *&v0[v4];
      *&v0[v4] = v15;
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
}

void DOCItemCollectionViewController.showLoadingView()(char a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
  v4 = [v3 identifier];

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
      DOCItemCollectionViewController.createLoadingViewIfNeeded()();
      v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView;
      v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView);
      if (v12)
      {
        [*(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionLoadingView_stackView) setHidden_];
        v13 = *(v1 + v11);
        if (v13)
        {

          [v13 setHidden_];
        }
      }
    }
  }
}

void DOCItemCollectionViewController.itemsOriginDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_2493AC000, v5, v6, "Updating items origin on collection view, since it has changed in the item collection: %lu", v7, 0xCu);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 preparedCells];

    if (v11)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v12 >> 62)
      {
        goto LABEL_8;
      }

LABEL_11:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }
  }

  v12 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C1FC540](i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    type metadata accessor for DOCItemCollectionCell();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = (*((*v8 & *v17) + 0x208))();
      if (v18)
      {
        v19 = v18;
        (*((*v8 & *v18) + 0x480))(a1, 0);
      }
    }
  }

LABEL_21:
}