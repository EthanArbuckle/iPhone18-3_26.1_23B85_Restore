void DOCFullDocumentManagerViewController.installFocusBackstopIfNecessary()()
{
  if (static DOCFullDocumentManagerViewController.FocusBackstop.launchFocusBackstopRequired == 1)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(type metadata accessor for DOCFullDocumentManagerViewController.FocusBackstop()) initWithFrame_];
    v3 = one-time initialization token for fdc_associatedObjectStorageKey;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v1, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v11 = v2;
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0x80);
    v8 = v4;
    v7(&v11, KeyPath);

    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

void DOCFullDocumentManagerViewController.removeFocusBackstopIfPossible()()
{
  v1 = v0;
  if ([v0 doc_hasAppeared])
  {
    v2 = [v0 internalNavigationController];
    type metadata accessor for DOCFullDocumentManagerNavigationController();
    v3 = [swift_dynamicCastClassUnconditional() viewControllers];

    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_24:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = [v7 doc_isPlaceholder];

      if ((v9 & 1) == 0)
      {

        static DOCFullDocumentManagerViewController.FocusBackstop.launchFocusBackstopRequired = 0;
        if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
        {
          swift_once();
        }

        v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v1, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
        swift_getKeyPath();
        v11 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v10) + 0x78))(&v15);

        v12 = v15;
        if (v15)
        {
          [v15 removeFromSuperview];
        }

        v13 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v1, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
        KeyPath = swift_getKeyPath();
        v15 = 0;
        (*((*v11 & *v13) + 0x80))(&v15, KeyPath);

        return;
      }
    }
  }
}

uint64_t DOCFullDocumentManagerViewController.focusBackstop.getter()
{
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v0, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(&v3);

  return v3;
}

void key path getter for DOCFullDocumentManagerViewController.focusBackstop : DOCFullDocumentManagerViewController(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v3, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v4) + 0x78))(&v6);

  *a2 = v6;
}

void key path setter for DOCFullDocumentManagerViewController.focusBackstop : DOCFullDocumentManagerViewController(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    v8 = *a2;
    swift_once();
    v3 = v8;
  }

  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v3, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v9 = v2;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x80);
  v7 = v2;
  v6(&v9, KeyPath);
}

uint64_t one-time initialization function for fdc_associatedObjectStorageKey()
{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0, v1);
  result = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC011_makeUniqueF3KeyyAA0defI0VSSKFZSo16UIViewControllerC_Tt1g5Tm(0x656761726F7473, 0xE700000000000000, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController, partial apply for specialized closure #1 in Sequence<>.contains(_:), &v3);
  static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey = v3;
  return result;
}

uint64_t DOCFullDocumentManagerViewController.notificationsController.getter()
{
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v0, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v4 = MEMORY[0x28223BE20](KeyPath, v3);
  v6 = v0;
  (*((*MEMORY[0x277D85000] & *v1) + 0x90))(&v7, v4);

  return v7;
}

uint64_t key path getter for DOCFullDocumentManagerViewController.notificationsController : DOCFullDocumentManagerViewController@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v3, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x28223BE20](KeyPath, v6);
  v9 = v3;
  (*((*MEMORY[0x277D85000] & *v4) + 0x90))(&v10, v7);

  *a2 = v10;
  return result;
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.notificationsController.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_So07DOCFullbc4ViewF0CGMd);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  result = swift_unknownObjectWeakAssign();
  *a1 = v2;
  return result;
}

uint64_t DOCFullDocumentManagerViewController.browserHistoryController.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 supportHistoryNavigation];

  if (!v2)
  {
    return 0;
  }

  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v3 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v0, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x28223BE20](KeyPath, v5);
  v8 = v0;
  (*((*MEMORY[0x277D85000] & *v3) + 0x90))(&v9, v6, closure #1 in DOCFullDocumentManagerViewController.browserHistoryController.getterpartial apply);

  return v9;
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.browserHistoryController.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 dataSource];
  v5 = (*((*MEMORY[0x277D85000] & *v4) + 0xA8))();

  v6 = [a1 hierarchyController];
  type metadata accessor for DOCBrowserHistoryController();
  swift_allocObject();
  DOCBrowserHistoryController.init(dataSource:hierarchyController:)(v5, v6);
  v8 = v7;
  v9 = *(*v7 + 160);
  v10 = swift_unknownObjectRetain();
  result = v9(v10, &protocol witness table for DOCFullDocumentManagerViewController);
  *a2 = v8;
  return result;
}

uint64_t DOCFullDocumentManagerViewController.browserNavigationStackButtonItems()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = [v0 traitCollection];
  v4 = [v3 supportHistoryNavigation];

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v0, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x28223BE20](KeyPath, v7);
  v12 = v0;
  (*((*MEMORY[0x277D85000] & *v5) + 0x90))(&v13, v8);

  v10 = (*(*v13 + 256))(v9);

  return v10;
}

uint64_t DOCFullDocumentManagerViewController.browserHistoryShouldAllow(item:)(uint64_t a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 20)) sourceIdentifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {

      v5 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v12 ^ 1;
    }
  }

  return v5 & 1;
}

uint64_t DOCFullDocumentManagerViewController.handleRestore(of:animated:completion:)(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v10 = *(a1 + *(type metadata accessor for DOCBrowserHistoryItem(0) + 20));
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 browseStartingPointsLocation];
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = objc_opt_self();

    v17 = [v5 configuration];
    v18 = [v17 sceneIdentifier];

    v19 = [v16 globalTabbedBrowserControllerForIdentifier_];
    if (v19 && (v20 = [v19 splitBrowserViewController], v19, v20))
    {
      v21 = swift_allocObject();
      *(v21 + 16) = partial apply for thunk for @callee_guaranteed () -> ();
      *(v21 + 24) = v15;
      v24[4] = thunk for @callee_guaranteed () -> ()partial apply;
      v24[5] = v21;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 1107296256;
      v24[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v24[3] = &block_descriptor_70_6;
      v22 = _Block_copy(v24);

      [v20 showSidebarAnimated:a2 & 1 withCompletion:v22];

      _Block_release(v22);
    }

    else
    {
      a3();
    }
  }

  return v14 & 1;
}

void DOCFullDocumentManagerViewController.showBrowseStartingPointsLocation(animated:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = objc_opt_self();
  v9 = [v4 configuration];
  v10 = [v9 sceneIdentifier];

  v11 = [v8 globalTabbedBrowserControllerForIdentifier_];
  if (v11 && (v12 = [v11 splitBrowserViewController], v11, v12))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v15[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v15[5] = v13;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v15[3] = &block_descriptor_77_3;
    v14 = _Block_copy(v15);

    [v12 showSidebarAnimated:a1 & 1 withCompletion:v14];
    _Block_release(v14);
  }

  else
  {
    a2();
  }
}

void protocol witness for DOCItemCollectionViewControllerOverlayDelegate.sortDescriptor(changeTo:) in conformance DOCFullDocumentManagerViewController(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7[0] = *a1;
  v2 = v7[0];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  DOCFullDocumentManagerViewController.updateSorting(_:)(v7);
  v7[0] = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = [v1 configuration];
  specialized static DOCUserInterfaceStateStore.saveDefaultSortMode(_:configuration:)(v7, v6);
}

void *protocol witness for DOCItemCollectionViewControllerOverlayDelegate.availableDisplayModes() in conformance DOCFullDocumentManagerViewController()
{
  if (![v0 environmentSupportsColumnView])
  {
    return &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
  }

  v1 = [v0 configuration];
  v2 = [v1 supportsColumnView];

  result = &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
  if (v2)
  {
    v4 = [v0 configuration];
    v5 = [v4 isPickerUI];

    if (v5)
    {
      return &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
    }

    else
    {
      return &outlined read-only object #0 of DOCFullDocumentManagerViewController.availableDisplayModes();
    }
  }

  return result;
}

uint64_t DOCFullDocumentManagerViewController.fetchDisplayModeFromDefaults(for:)(void *a1)
{
  v3 = [v1 configuration];
  v4 = specialized static DOCUserInterfaceStateStore.retrieveDefaultDisplayMode(configuration:sourceIdentifier:fallback:)(v3, a1, 0);

  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.StateStore);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BF7A40, &v23);
    *(v9 + 12) = 2080;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s for source: %s result: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      return v4;
    }

    v18 = [objc_opt_self() outlineView];
    v19 = [v18 isEnabled];

    if (!v19)
    {
      return 1;
    }
  }

  v20 = [objc_opt_self() outlineView];
  v21 = [v20 isEnabled];

  if (v21)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id DOCFullDocumentManagerViewController.effectiveTabSwitcherTab.getter()
{
  v1 = [v0 hierarchyController];
  v2 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveTabSwitcherTab];

    return v4;
  }

  else
  {
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v7 = *&v1[v6];

    return v7;
  }
}

id DOCHierarchyController.effectiveTabSwitcherTab.getter()
{
  v1 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 effectiveTabSwitcherTab];

    return v3;
  }

  else
  {
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    return *(v0 + v5);
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  MEMORY[0x28223BE20](v2, v3);
  v4 = [v0 dataSource];
  (*((*MEMORY[0x277D85000] & *v4) + 0x188))();

  v5 = [v1 configuration];
  specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v5);

  v6 = [v1 configuration];
  specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v6);

  UIViewController.traitOverrides.getter();
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  if ([v1 enclosedInUIPDocumentLanding])
  {
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() clearColor];
      [v8 setBackgroundColor_];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.configureUIPDocumentLandingStyleIfNecessary()()
{
  v1 = [v0 configuration];
  [v1 setIsInUIPDocumentLanding_];

  v2 = [v0 documentManager];
  (*((*MEMORY[0x277D85000] & *v2) + 0xD0))();
}

void key path getter for DOCFullDocumentManagerViewController.currentSizeSetting : DOCFullDocumentManagerViewController(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 configuration];
  v4 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v3);

  *a2 = v4;
}

void (*DOCFullDocumentManagerViewController.currentSizeSetting.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 configuration];
  v4 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSetting(configuration:)(v3);

  *(a1 + 8) = v4;
  return DOCFullDocumentManagerViewController.currentSizeSetting.modify;
}

void key path getter for DOCFullDocumentManagerViewController.currentSizeSliderValue : DOCFullDocumentManagerViewController(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configuration];
  v4 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v3);

  *a2 = v4;
}

void (*DOCFullDocumentManagerViewController.currentSizeSliderValue.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = [v1 configuration];
  v4 = specialized static DOCUserInterfaceStateStore.retrieveDefaultSizeSliderValue(configuration:)(v3);

  *a1 = v4;
  return DOCFullDocumentManagerViewController.currentSizeSliderValue.modify;
}

void DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  v8 = DOCFullDocumentManagerViewController.inlineEditingViewController.getter();
  v9 = MEMORY[0x277D85000];
  if (v8)
  {
    v10 = v8;
    v11 = (*((*MEMORY[0x277D85000] & *v8) + 0x1498))();

    if (v11)
    {
      (*(*v11 + 472))();
    }
  }

  v12 = [v4 dataSource];
  (*((*v9 & *v12) + 0x190))(a1);

  DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
  v13 = [v4 effectiveSearchController];
  if (v13)
  {
    v51 = v13;
    if ([v13 isActive])
    {
      v14 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController;
      v15 = [*&v51[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] viewIfLoaded];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 isHidden];

        if ((v17 & 1) == 0)
        {
          v18 = (*((*v9 & **&v51[v14]) + 0xCB8))();
          v19 = v18 >> 62 ? __CocoaSet.count.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v19 >= 1)
          {
            DOCFullDocumentManagerViewController.applyDisplayModeToSearchResultsControllers(_:)(a1);

            return;
          }
        }
      }
    }
  }

  v20 = [v4 internalNavigationController];
  type metadata accessor for DOCFullDocumentManagerNavigationController();
  v21 = swift_dynamicCastClassUnconditional();
  (*((*v9 & *v21) + 0x80))(a1 == 3);

  v22 = [v4 viewIfLoaded];
  v23 = [v22 window];

  v24 = [v23 windowScene];
  if (v24)
  {
    v25 = [v24 _isPerformingSystemSnapshot];
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v51 = &v48;
  v28 = MEMORY[0x28223BE20](v25, v26);
  v45[2] = v4;
  v45[3] = a1;
  v49 = a2;
  v46 = a2 & 1;
  v50 = a3;
  v47 = a3;
  v29 = [v4 dataSource];
  v30 = (*((*v9 & *v29) + 0x170))();
  v32 = v31;

  if ((v32 & 1) != 0 || v30 != a1)
  {
    if (v27)
    {
      v33 = 0;
    }

    else
    {
      v34 = [v4 dataSource];
      v35 = (*((*v9 & *v34) + 0x188))();

      v33 = v35 != a1;
    }

    v36 = [v4 dataSource];
    v37 = *((*v9 & *v36) + 0x178);
    v37(a1, 0);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v39 = v36;
    if (v33 && (v40 = [v4 internalNavigationController], v41 = UINavigationController.activeSearchControllerIfNotShowingResults.getter(), v40, v41))
    {

      v42 = [v4 internalNavigationController];
      MEMORY[0x28223BE20](v42, v43);
      v44[2] = partial apply for closure #1 in DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:);
      v44[3] = v45;
      UINavigationController.whileMaintainingActiveSearchController(_:completion:)(partial apply for thunk for @escaping @callee_guaranteed () -> (), v44, _sSo36DOCFullDocumentManagerViewControllerC0bC11ExecutablesE023beginUpdatingDataSourceD5Style2to23maintainingActiveSearch05applyK5BlockyAC14DOCDisplayModeO_SbyyXEtFyycfU_TA_0, v38);
    }

    else
    {
      DOCFullDocumentManagerViewController.applyDisplayModeToItemCollectionControllers(_:saveAsUserSelection:for:)(a1, v49 & 1, v50);
      v37(0, 1);
    }
  }
}

uint64_t DOCFullDocumentManagerViewController.applyDisplayModeToSearchResultsControllers(_:)(uint64_t a1)
{
  v2 = DOCFullDocumentManagerViewController.searchResultsItemCollectionViewControllers.getter();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D85000];
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
          goto LABEL_12;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = (*((*v6 & *v7) + 0x1190))(a1);
      (*((*v6 & *v8) + 0xBE0))(v10);

      ++v5;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

unint64_t DOCFullDocumentManagerViewController.applyDisplayModeToItemCollectionControllers(_:saveAsUserSelection:for:)(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v7 = [v3 dataSource];
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0xC0))();

  if (!v9)
  {
    v10 = [v4 dataSource];
    v11 = (*((*v8 & *v10) + 0xD8))();

    if (v11)
    {
      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
        if (v12)
        {
LABEL_5:
          v13 = __OFSUB__(v12, 1);
          result = v12 - 1;
          if (v13)
          {
            __break(1u);
          }

          else if ((v11 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v15 = *(v11 + 8 * result + 32);
LABEL_10:
              v16 = v15;

              v9 = (*((*v8 & *v16) + 0xB0))(v17);

              goto LABEL_14;
            }

            __break(1u);
            return result;
          }

          v15 = MEMORY[0x24C1FC540](result, v11);
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_5;
        }
      }
    }

    v9 = MEMORY[0x277D84F90];
  }

LABEL_14:
  v53 = a3;
  v57 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_34:
    v56 = v9 & 0xFFFFFFFFFFFFFF8;
    v18 = __CocoaSet.count.getter();
    v55 = v4;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_35:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v56 = v9 & 0xFFFFFFFFFFFFFF8;
  v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v55 = v4;
  if (!v18)
  {
    goto LABEL_35;
  }

LABEL_16:
  v4 = 0;
  v19 = v9 & 0xC000000000000001;
  v20 = MEMORY[0x277D84F90];
  do
  {
    v21 = v4;
    while (1)
    {
      if (v19)
      {
        v22 = MEMORY[0x24C1FC540](v21, v9);
      }

      else
      {
        if (v21 >= *(v56 + 16))
        {
          goto LABEL_33;
        }

        v22 = *(v9 + 8 * v21 + 32);
      }

      v23 = v22;
      v4 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v24 = v9;
      v25 = a1;
      v26 = v8;
      v27 = (*((*v8 & *v22) + 0xE8))();

      if (v27)
      {
        break;
      }

LABEL_19:
      ++v21;
      v8 = v26;
      a1 = v25;
      v9 = v24;
      if (v4 == v18)
      {
        goto LABEL_36;
      }
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_19;
    }

    MEMORY[0x24C1FB090]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v57;
    v8 = v26;
    a1 = v25;
    v9 = v24;
  }

  while (v4 != v18);
LABEL_36:

  if (v20 >> 62)
  {
    goto LABEL_48;
  }

  v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v55; v28; i = v55)
  {
    v30 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1FC540](v30, v20);
      }

      else
      {
        if (v30 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v31 = *(v20 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      (*((*v8 & *v31) + 0xBE0))(a1);

      ++v30;
      if (v33 == v28)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v28 = __CocoaSet.count.getter();
  }

LABEL_49:

  v34 = DOCFullDocumentManagerViewController.searchResultsItemCollectionViewControllers.getter();
  v35 = v34;
  if (v34 >> 62)
  {
    goto LABEL_61;
  }

  for (j = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v37 = 0;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x24C1FC540](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v41 = (*((*v8 & *v38) + 0x1190))(a1);
      (*((*v8 & *v39) + 0xBE0))(v41);

      ++v37;
      if (v40 == j)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

LABEL_62:

  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.StateStore);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = a1;
    *(v45 + 12) = 1024;
    *(v45 + 14) = a2 & 1;
    _os_log_impl(&dword_2493AC000, v43, v44, "updateDisplayMode(to) %ld saveAsUserSelection: %{BOOL}d", v45, 0x12u);
    MEMORY[0x24C1FE850](v45, -1, -1);
  }

  if (a2)
  {
    v46 = [i configuration];
    v47 = [v46 supportsColumnView];

    if ((v47 & 1) != 0 || [i enclosingTabSwitcherStyle])
    {
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = a1;
        _os_log_impl(&dword_2493AC000, v48, v49, "updateDisplayMode(to) %ld updating defaults", v50, 0xCu);
        MEMORY[0x24C1FE850](v50, -1, -1);
      }

      v51 = [i configuration];
      specialized static DOCUserInterfaceStateStore.saveDefaultDisplayMode(_:for:configuration:)(a1, v53, v51);

      v52 = [i displayModeHandler];
      (*((*v8 & *v52) + 0x60))(a1, 0);
    }
  }

  [i updateNavigationBarPrefersLargeTitles];

  return [i updateRelatedViewControllersWithCurrentHierarchy];
}

void DOCFullDocumentManagerViewController.fetchGroupingBehaviorFromDefaults(for:)(void *a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCUserInterfaceStateStore);
  v5 = [v2 configuration];
  v16 = 10;
  static DOCUserInterfaceStateStore.retrieveDefaultGroupingBehavior(configuration:sourceIdentifier:fallback:)(v5, a1, &v16, &v17);

  v6 = v17;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BF77C0, &v15);
    *(v10 + 12) = 2080;
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  *a2 = v6;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.swift_commonInit(with:)(DOCSourceObserver *with)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [objc_allocWithZone(DOCActionManager) init];
  [v2 setActionManager_];

  v6 = [v2 actionManager];
  v7 = [v2 configuration];
  v8 = [v7 forbiddenActionIdentifiers];

  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR___DOCActionManager_forbiddenActionIdentifiers;
  swift_beginAccess();
  *&v6[v10] = v9;

  v11 = [v2 actionManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA0290;
  *(v12 + 32) = [(DOCSourceObserver *)with sourcesActionManager];
  type metadata accessor for DOCActionManager(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setAssociatedActionManagers_];

  [v2 setSourceObserver_];
  v14 = DOCFullDocumentManagerViewController.lazyShareActionManager()();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v37 = partial apply for closure #1 in DOCFullDocumentManagerViewController.swift_commonInit(with:);
  v38 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v36 = &block_descriptor_87_3;
  v17 = _Block_copy(&aBlock);
  v18 = v14;

  [(DOCSourceObserver *)with retrieveAllSourcesCompletionBlock:v17];
  _Block_release(v17);
  v19 = [v2 configuration];
  v20 = [v19 defaultLocation];

  v21 = [objc_opt_self() recentDocumentsLocation];
  v22 = v21;
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_6;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v21)
  {
    v22 = v20;
    goto LABEL_9;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v23 = static NSObject.== infix(_:_:)();

  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (!DOCUsePhoneIdiomForTraits())
  {
LABEL_10:
    v28 = DOCFullDocumentManagerViewController.fetchDisplayModeFromDefaults(for:)(0);
    v29 = [v2 displayModeHandler];
    (*((*MEMORY[0x277D85000] & *v29) + 0x60))(v28, 0);

    DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)(v28, 0, 0);
    v27 = 0;
    goto LABEL_11;
  }

  v24 = *MEMORY[0x277D060F8];
  v25 = DOCFullDocumentManagerViewController.fetchDisplayModeFromDefaults(for:)(*MEMORY[0x277D060F8]);
  v26 = [v2 displayModeHandler];
  (*((*MEMORY[0x277D85000] & *v26) + 0x60))(v25, 0);

  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)(v25, 0, v24);
  v27 = v24;
LABEL_11:
  DOCFullDocumentManagerViewController.fetchGroupingBehaviorFromDefaults(for:)(v27, &aBlock);
  DOCFullDocumentManagerViewController.updateGroupingBehavior(_:)(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_249B9A480;
  v31 = type metadata accessor for UITraitHorizontalSizeClass();
  v32 = MEMORY[0x277D74C50];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  aBlock = 0;
  LOBYTE(v34) = 1;
  UIViewController.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(&aBlock, specialized closure #3 in DOCFullDocumentManagerViewController.swift_commonInit(with:), 0, ObjectType);
  swift_unknownObjectRelease();
}

id DOCFullDocumentManagerViewController.lazyShareActionManager()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = type metadata accessor for DOCLazyActionManager();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
  *v3 = partial apply for closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager();
  v3[1] = v0;
  v4 = objc_opt_self();
  swift_retain_n();
  v5 = [v4 defaultManager];
  v6 = [objc_opt_self() defaultPermission];
  v9.receiver = v2;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithItemManager_managedPermission_, v5, v6);

  return v7;
}

void closure #1 in DOCFullDocumentManagerViewController.swift_commonInit(with:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v46 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v45 - 8);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v45, v15);
  v43 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = a4;
  v53 = a3;
  v50 = v8;
  v51 = v7;
  v48 = v11;
  v49 = v12;
  if (v18)
  {
    if (v18 < 1)
    {
      __break(1u);
      return;
    }

    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v19, a1, v16);
      }

      else
      {
        v22 = *(a1 + 8 * v19 + 32);
      }

      v23 = v22;
      type metadata accessor for DOCFileProviderSource();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        goto LABEL_6;
      }

      v25 = v24;
      (*((*MEMORY[0x277D85000] & *v24) + 0x110))();
      MEMORY[0x24C1FB090]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v20 = v57;
      if ([v25 isiCloudBased])
      {
        v26 = v23;
        MEMORY[0x24C1FB090]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = v56;
      }

      else
      {
LABEL_6:
      }

      ++v19;
    }

    while (v18 != v19);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
  }

  if (v21 >> 62)
  {
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_25;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_25;
  }

  if (FPIsCloudDocsWithFPFSEnabled())
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v27 = v44;
    v28 = v43;
    v29 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x277D851C8], v45);
    v30 = static OS_dispatch_queue.global(qos:)();
    (*(v27 + 8))(v28, v29);
    v31 = swift_allocObject();
    *(v31 + 16) = v21;
    aBlock[4] = partial apply for specialized closure #1 in closure #1 in DOCFullDocumentManagerViewController.swift_commonInit(with:);
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_234_0;
    v32 = _Block_copy(aBlock);
    v33 = v46;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v34 = v48;
    v35 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v33, v34, v32);
    _Block_release(v32);

    (*(v50 + 8))(v34, v35);
    (*(v47 + 8))(v33, v49);

    goto LABEL_26;
  }

LABEL_25:

LABEL_26:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong actionManager];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    v40 = v52;
    *(inited + 32) = v52;
    v55 = v20;
    v41 = v40;
    specialized Array.append<A>(contentsOf:)(inited);
    type metadata accessor for DOCActionManager(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 setAssociatedActionManagers_];
  }

  else
  {
  }
}

void specialized closure #1 in closure #1 in DOCFullDocumentManagerViewController.swift_commonInit(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    v19 = a1 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v6 = MEMORY[0x24C1FC540](v3, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v8)
      {
        v9 = v8;
        if (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && (v10 = [v9 v5[243]], (v10))
        {
          if (one-time initialization token for rootNodes != -1)
          {
            v10 = swift_once();
          }

          v12 = static DOCICloudRootNode.rootNodes;
          MEMORY[0x28223BE20](v10, v11);
          v18[2] = v9;
          v13 = *(*v12 + 160);
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17DOCICloudRootNodeCSgMd);
          v13(&v20, partial apply for closure #1 in static DOCICloudRootNode.iCloudRootNode(for:), v18, v14);
          v15 = v20;
          if (v20)
          {

            v7 = v15;
          }

          else
          {
            v16 = [objc_opt_self() shared];
            [v16 startIfNeeded];

            v17 = objc_allocWithZone(type metadata accessor for DOCICloudRootNode());
          }

          v4 = v19;
          v5 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        }

        else
        {
        }
      }

      ++v3;
    }

    while (v2 != v3);
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updateForChangedHorizontalSizeClass()()
{
  v1 = v0;
  [v0 updateAvailableDisplayModesWithAnimated_];
  v2 = [v0 traitCollection];
  v3 = [v2 supportHistoryNavigation];

  if (v3)
  {
    if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
    {
      swift_once();
    }

    v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v1, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath, v6);
    (*((*MEMORY[0x277D85000] & *v4) + 0x90))(&v25, v7);

    (*(*v25 + 280))(v8);
  }

  v9 = DOCFullDocumentManagerViewController.containedItemCollectionViewControllers.getter();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      specialized DOCItemCollectionViewController.updateOverlay(animated:)();

      ++v12;
      if (v15 == i)
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

  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 == 1)
  {
    v18 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
    if (v18)
    {
      v19 = v18;
      DOCSidebarViewController.deselectAllSidebarItems()();
    }
  }

  v20 = [v1 traitCollection];
  v21 = [v20 horizontalSizeClass];

  if (v21 != 2)
  {
    v22 = [v1 presentedViewController];
    if (v22)
    {
      v23 = v22;
      type metadata accessor for DOCGoToViewController();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        [v24 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }

  DOCFullDocumentManagerViewController.updatePickerFilenameViewVisibility()();
}

void DOCFullDocumentManagerViewController.fullDocumentManagerViewControllerDidFinishLoading(_:)(uint64_t a1)
{
  v19 = a1;
  v2 = [v1 dataSource];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x108))();

  v21[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_28:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v17[5] = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = (*((*v3 & *v8) + 0xE8))();

    ++v6;
    if (v11)
    {
      MEMORY[0x24C1FB090]();
      if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v21[0];
      v6 = v10;
    }
  }

  Notification.object.getter();
  if (v21[3])
  {
    type metadata accessor for DOCBrowserContainedViewController();
    v12 = swift_dynamicCast();
    if (v12)
    {
      v14 = v20;
      v21[0] = v20;
      MEMORY[0x28223BE20](v12, v13);
      v17[2] = v21;
      v15 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v17, v7);

      if (v15)
      {
        v16 = v18;
        [v18 loadViewIfNeeded];
        [v16 activateContainerViewControllersIfNeeded];

        return;
      }
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of CharacterSet?(v21, &_sypSgMd);
  }

  if (one-time initialization token for disableWorkaroundFor91410302 != -1)
  {
    swift_once();
  }

  if (!disableWorkaroundFor91410302)
  {
    [v18 loadViewIfNeeded];
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updatePickerPocketInteraction()()
{
  v1 = v0;
  v2 = [v0 pickerFilenameView];
  if (v2)
  {
    v13 = v2;
    if (!_UISolariumEnabled())
    {
      goto LABEL_10;
    }

    v3 = [v0 pickerPocketInteraction];
    if (v3)
    {
      [v13 removeInteraction_];
      [v0 setPickerPocketInteraction_];
      swift_unknownObjectRelease();
    }

    v4 = [v0 effectiveBrowserViewController];
    if (v4 && (v5 = v4, v6 = MEMORY[0x277D85000], v7 = (*((*MEMORY[0x277D85000] & *v4) + 0xE8))(), v5, v7))
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = (*((*v6 & *v8) + 0x1010))();

        v10 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v9 edge:4 style:0];
        [v1 setPickerPocketInteraction_];

        v11 = [v1 pickerPocketInteraction];
        if (v11)
        {
          [v13 addInteraction_];
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v9 = v7;
      }

      v12 = v9;
    }

    else
    {
LABEL_10:
      v12 = v13;
    }
  }
}

void *DOCFullDocumentManagerViewController.navigationTitleActivityViewController(for:)(void *a1)
{
  v3 = [a1 node];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = [objc_opt_self() defaultPermission];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v1;
  v7[5] = a1;
  v14[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.navigationTitleActivityViewController(for:);
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14[3] = &block_descriptor_98_2;
  v8 = _Block_copy(v14);
  swift_unknownObjectRetain();

  v9 = v1;
  v10 = a1;

  [v6 adoptPersonaFromNode:v4 andPerformBlock:v8];
  swift_unknownObjectRelease();
  _Block_release(v8);

  swift_beginAccess();
  v11 = *(v5 + 16);
  v12 = v11;

  return v11;
}

void closure #1 in DOCFullDocumentManagerViewController.navigationTitleActivityViewController(for:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [objc_opt_self() defaultPermission];
  v9 = [v8 dataOwnerStateForNode_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249BA0290;
  *(v10 + 32) = a4;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCItemBookmark);
  v11 = a4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = Array._bridgeToObjectiveC()().super.isa;
  v14 = [a3 actionManager];
  v15 = [a3 _activityViewControllerWithItemBookmarks_isForTitleMenuFolderSharing_popoverTracker_isContentManaged_additionalActivities_activityRunner_];

  swift_beginAccess();
  v16 = *(a2 + 16);
  *(a2 + 16) = v15;
}

uint64_t closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = Strong;
  v2 = specialized static UIDocumentBrowserAction.shareAction(unresolvedHandler:)(DOCGridLayout.specIconWidth.modify, 0);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  aBlock[4] = partial apply for closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager();
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  aBlock[3] = &block_descriptor_199;
  v6 = _Block_copy(aBlock);

  [v2 setUnresolvedHandler_];
  _Block_release(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA0290;
  *(v7 + 32) = v2;

  return v7;
}

void closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, aBlock);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = aBlock[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_24:

    return;
  }

  v5 = Strong;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {

LABEL_51:
    return;
  }

  v7 = v6;
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  if (!All)
  {

    return;
  }

  v9 = All & 0xFFFFFFFFFFFFFF8;
  if (All >> 62)
  {
    goto LABEL_49;
  }

  if (!*((All & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_50:

    goto LABEL_51;
  }

LABEL_7:
  if ((All & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x24C1FC540](0);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(All + 32);
  }

  v41 = v10;

  if (a1 >> 62)
  {
    All = __CocoaSet.count.getter();
    v9 = All;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = a1 >> 62;
  v43 = v7;
  v44 = v5;
  v45 = v3;
  if (v9)
  {
    v7 = 0;
    v11 = 0;
    v3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v3)
      {
        v14 = MEMORY[0x24C1FC540](v7, a1);
        v5 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v39 = All;
          v40 = __CocoaSet.count.getter();
          All = v39;
          if (!v40)
          {
            goto LABEL_50;
          }

          goto LABEL_7;
        }

        v14 = *(a1 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v5 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      if (v11)
      {
        All = swift_unknownObjectRelease();
        v11 = 1;
      }

      else
      {
        v12 = [objc_opt_self() defaultPermission];
        v13 = [v12 dataOwnerStateForNode_];

        All = swift_unknownObjectRelease();
        v11 = v13 == 1;
      }

      ++v7;
      if (v5 == v9)
      {
        goto LABEL_28;
      }
    }
  }

  v11 = 0;
LABEL_28:
  v15 = *&v45[OBJC_IVAR___DOCActionContext_userInfo];
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000039, 0x8000000249BF1650);
    if (v17)
    {
      outlined init with copy of Any(*(v15 + 56) + 32 * v16, aBlock);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      if (swift_dynamicCast())
      {
        v18 = v46;
      }

      else
      {
        v18 = 0;
      }

      v19 = a1 & 0xFFFFFFFFFFFFFF8;
      if (v42)
      {
LABEL_34:
        v20 = __CocoaSet.count.getter();
        goto LABEL_37;
      }
    }

    else
    {
      v18 = 0;
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
      if (v42)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v42)
    {
      goto LABEL_34;
    }
  }

  v20 = *(v19 + 16);
LABEL_37:
  if (v20 < 2 || v18)
  {
    v29 = *&v45[OBJC_IVAR___DOCActionContext_transitionProxy];
    if (v29)
    {
      if (v18)
      {
        v30 = v18;
      }

      else
      {
        v30 = v41;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = a1;
      *(v34 + 24) = v41;
      *(v34 + 32) = v43;
      *(v34 + 40) = v11;
      aBlock[4] = partial apply for closure #2 in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager();
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed DOCServicePopoverTrackerProtocol?) -> ();
      aBlock[3] = &block_descriptor_208_1;
      v35 = _Block_copy(aBlock);
      v36 = v41;

      v37 = v43;
      swift_unknownObjectRetain();
      v38 = v18;

      [v29 getPopoverTrackerForItem:v30 completionBlock:v35];

      _Block_release(v35);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v41;
      *(v31 + 24) = a1;
      *(v31 + 32) = v43;
      *(v31 + 40) = 0;
      *(v31 + 48) = v11;
      v32 = v41;

      v33 = v43;
      specialized static DOCActionManager.resolve(_:completionBlock:)(a1, partial apply for closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager(), v31);
    }
  }

  else
  {
    v21 = type metadata accessor for DOCServiceActionPopoverTrackerController();
    v22 = objc_allocWithZone(v21);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action] = v44;
    v47.receiver = v22;
    v47.super_class = v21;
    v23 = v44;
    v24 = objc_msgSendSuper2(&v47, sel_init);
    v25 = swift_allocObject();
    *(v25 + 16) = v41;
    *(v25 + 24) = a1;
    *(v25 + 32) = v43;
    *(v25 + 40) = v24;
    *(v25 + 48) = v11;
    v26 = v24;
    v27 = v41;

    v28 = v43;
    specialized static DOCActionManager.resolve(_:completionBlock:)(a1, closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()partial apply, v25);
  }
}

uint64_t closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F90];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = MEMORY[0x24C1FAD20](v12, v14);

  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    if ([v17 valueForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39[0] = v37;
    v39[1] = v38;
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && v36 == 1 && (v18 = [objc_opt_self() defaultManager], __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd), v19 = swift_allocObject(), *(v19 + 16) = xmmword_249BA0290, *(v19 + 32) = a2, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem), v20 = a2, isa = Array._bridgeToObjectiveC()().super.isa, , v22 = objc_msgSend(v18, sel_eligibleActionsForItems_, isa), v18, isa, type metadata accessor for FPAction(0), _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction), v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v22, LOBYTE(v22) = specialized Set.contains(_:)(*MEMORY[0x277CC6018], v23), , (v22))
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
        v26 = *(v11 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 16) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
          *(v11 + 16) = v26;
        }

        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        if (v29 >= v28 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
        }

        *(v26 + 2) = v29 + 1;
        v30 = &v26[16 * v29];
        *(v30 + 4) = v34;
        *(v30 + 5) = v25;
        *(v11 + 16) = v26;
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of CharacterSet?(v39, &_sypSgMd);
    }
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 32) = a1;
  *(v31 + 40) = a5;
  *(v31 + 48) = a6 & 1;
  *(v31 + 56) = v11;
  swift_unknownObjectRetain();

  v32 = a4;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = [objc_opt_self() defaultPermission];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  v16[4] = partial apply for closure #1 in closure #1 in closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager();
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v16[3] = &block_descriptor_228_0;
  v14 = _Block_copy(v16);
  swift_unknownObjectRetain();

  v15 = a2;

  [v11 adoptPersonaFromNodes:isa andPerformBlock:v14];
  _Block_release(v14);
}

void closure #1 in closure #1 in closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (![a1 delegate])
  {
    goto LABEL_5;
  }

  type metadata accessor for DOCServiceDocumentBrowserViewController();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_5:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCItemBookmark);
    isa = Array._bridgeToObjectiveC()().super.isa;
    swift_beginAccess();

    v15 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [a1 actionManager];
    [a1 _displayActivityControllerWithItemBookmarks_popoverTracker_isContentManaged_additionalActivities_activityProxy_];

    goto LABEL_6;
  }

  v11 = v10;
  swift_beginAccess();
  v12 = *(a5 + 16);

  v13 = [a1 actionManager];
  (*((*MEMORY[0x277D85000] & *v11) + 0x1F0))(a2, a3, a4 & 1, v12, v13);
  swift_unknownObjectRelease();

LABEL_6:
}

uint64_t closure #2 in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a1;
  *(v10 + 48) = a5;
  swift_unknownObjectRetain();
  v11 = a3;

  v12 = a4;
  specialized static DOCActionManager.resolve(_:completionBlock:)(a2, closure #1 in presentActivityController #1 (with:) in closure #2 in closure #1 in DOCFullDocumentManagerViewController.lazyShareActionManager()partial apply, v10);
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.activateContainerViewControllersIfNeeded()()
{
  v1 = v0;
  if ([v0 isActivated])
  {
    return;
  }

  [v0 setIsActivated_];
  v2 = [v0 internalNavigationController];
  v3 = [v2 viewControllers];

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      v6 = 0;
      v7 = MEMORY[0x277D85000];
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](v6, v4);
        }

        else
        {
          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        type metadata accessor for DOCBrowserContainerController();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          (*((*v7 & *v10) + 0x258))();
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  [v1 setNeedsFocusUpdate];
}

uint64_t DOCFullDocumentManagerViewController.displayedRootLocation.getter()
{
  v1 = v0;
  v2 = [v0 dataSource];
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x188))();

  v4 = [v1 hierarchyController];
  if (v3 != 3)
  {
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v10 = *&v4[v9];
    if (v10 >> 62)
    {
      v11 = __CocoaSet.count.getter();
      if (v11)
      {
LABEL_6:
        v12 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
          __break(1u);
        }

        else if ((v10 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v10 + 8 * v12 + 32);
LABEL_11:

            return v13;
          }

          __break(1u);
          goto LABEL_24;
        }

        v13 = MEMORY[0x24C1FC540](v12, v10);

        goto LABEL_11;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  v5 = DOCHierarchyController.effectiveRootLocation.getter();

  if (v5)
  {

    v6 = [v1 hierarchyController];
    v7 = DOCHierarchyController.effectiveRootLocation.getter();

    return v7;
  }

  v14 = [v1 hierarchyController];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v10 = *&v14[v15];

  if (v10 >> 62)
  {
LABEL_24:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_14:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x24C1FC540](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(v10 + 32);
  }

  v13 = v16;

  return v13;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updateRelatedViewControllersWithCurrentHierarchy()()
{
  DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
  v1 = [v0 fullDocumentManagerDelegate];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 hierarchyController];
    v4 = [v0 displayedRootLocation];
    [v2 fullDocumentManagerViewController:v0 didUpdateHierarchy:v3 displayedRootLocation:v4];
    swift_unknownObjectRelease();
  }

  if ([v0 delegate])
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      v7 = [v0 hierarchyController];
      v8 = [v0 displayedRootLocation];
      [v6 fullDocumentManagerViewController:v0 didUpdateHierarchy:v7 displayedRootLocation:v8];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void DOCFullDocumentManagerViewController.preferredFocusEnvironments.getter()
{
  v1 = v0;
  v2 = [v0 internalNavigationController];
  v3 = [v2 topViewController];

  v4 = MEMORY[0x277D85000];
  if (!v3)
  {
    goto LABEL_6;
  }

  type metadata accessor for DOCColumnViewController(0);
  v5 = swift_dynamicCastClass();
  if (!v5 || (v6 = v5, v7 = [v1 dataSource], v8 = (*((*v4 & *v7) + 0x188))(), v7, v8 != 3))
  {

LABEL_6:
    v10 = [v1 dataSource];
    v11 = (*((*v4 & *v10) + 0x108))();

    v9 = specialized Sequence.reversed()(v11);
    if (v9 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
      v16 = _bridgeCocoaArray<A>(_:)();

      v9 = v16;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = v6;
LABEL_8:
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v12 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v1, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v4 & *v12) + 0x78))(&v17);

  if (!v17)
  {
    v13 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA0290;
  v14 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v1, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v4 & *v14) + 0x78))(&v17);

  if (v17)
  {
    *(v13 + 32) = v17;
    if (!(v13 >> 62))
    {
LABEL_13:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v15 = v13;
LABEL_14:

      v17 = v9;
      specialized Array.append<A>(contentsOf:)(v15);
      return;
    }

LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
    v15 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t DOCFullDocumentManagerViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = DOCFullDocumentManagerViewController.canPerformKeyCommandAction(_:with:)(a1, a2);
  if (v5 == 2)
  {
    outlined init with copy of DOCGridLayout.Spec?(a2, v16, &_sypSgMd);
    v6 = v17;
    if (v17)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7, v7);
      v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      v12 = 0;
    }

    v15.receiver = v2;
    v15.super_class = DOCFullDocumentManagerViewController;
    v13 = objc_msgSendSuper2(&v15, sel_canPerformAction_withSender_, a1, v12);
    swift_unknownObjectRelease();
    v5 = v13;
  }

  return v5 & 1;
}

void DOCFullDocumentManagerViewController.target(forAction:withSender:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (static Selector.== infix(_:_:)())
  {
    v7 = DOCFullDocumentManagerViewController.itemCollectionViewController(_:responderForAction:sender:)(0, a1, a2);
    if (v7)
    {
      v8 = v7;
      v9 = type metadata accessor for DOCItemCollectionViewController(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        *(a3 + 24) = v9;
        *a3 = v10;
        return;
      }
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = 0;
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a2, &v21, &_sypSgMd);
    v11 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v12 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
      v13 = *(v11 - 8);
      v14 = MEMORY[0x28223BE20](v12, v12);
      v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v13 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_0(&v21);
    }

    else
    {
      v17 = 0;
    }

    v20.receiver = v3;
    v20.super_class = DOCFullDocumentManagerViewController;
    v18 = objc_msgSendSuper2(&v20, sel_targetForAction_withSender_, a1, v17);
    swift_unknownObjectRelease();
    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v19 = v22;
    *a3 = v21;
    *(a3 + 16) = v19;
  }
}

uint64_t DOCFullDocumentManagerViewController.containedItemCollectionViewControllers.getter()
{
  v1 = [v0 dataSource];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x108))();

  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_21:
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = (*((*v2 & *v8) + 0xE8))();

      if (v10)
      {
        break;
      }

LABEL_6:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_6;
    }

    MEMORY[0x24C1FB090]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v12;
  }

  while (v5 != v4);
LABEL_23:

  return v6;
}

void DOCFullDocumentManagerViewController.updatePickerFilenameViewVisibility()()
{
  v1 = [v0 pickerFilenameView];
  if (!v1)
  {
    return;
  }

  v11 = v1;
  IsPhone = DOCDeviceIsPhone();
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5 && (v6 = [v5 windowScene], v5, v6))
  {
    v7 = [v6 effectiveGeometry];

    v8 = [v7 interfaceOrientation];
    v9 = !UIInterfaceOrientationIsLandscape(v8);
  }

  else
  {
    v9 = 1;
  }

  if ((DOCFullDocumentManagerViewController.searchPresentationState.getter() - 2) >= 3u)
  {
    if (((v9 | IsPhone ^ 1) & 1) == 0)
    {
      v10 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = DOCFullDocumentManagerViewController.searchPresentationState.getter() == 2;
    if ((v9 | IsPhone ^ 1) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  [v11 setHidden_];
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.ensureInternalNavigationControllerIsInstalled()()
{
  v1 = v0;
  v2 = [v0 internalNavigationController];
  type metadata accessor for DOCFullDocumentManagerNavigationController();
  v3 = [swift_dynamicCastClassUnconditional() parentViewController];

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v4 = v1;
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      return;
    }
  }

  v6 = [v1 internalNavigationController];
  v7 = [swift_dynamicCastClassUnconditional() navigationBar];

  v8 = [objc_opt_self() fullNavBar];
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = MEMORY[0x24C1FAD20](v9);
  }

  [v7 setAccessibilityIdentifier_];

  v10 = [v1 internalNavigationController];
  v11 = [swift_dynamicCastClassUnconditional() view];

  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v11 setAutoresizingMask_];

  v12 = [v1 internalNavigationController];
  v13 = [swift_dynamicCastClassUnconditional() view];

  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = [v1 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  v24 = [v1 internalNavigationController];
  [v1 addChildViewController_];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v1 internalNavigationController];
  v28 = [swift_dynamicCastClassUnconditional() view];

  if (!v28)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v26 addSubview_];

  v29 = [v1 internalNavigationController];
  [swift_dynamicCastClassUnconditional() didMoveToParentViewController_];
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.swift_viewDidLoad()()
{
  v1 = v0;
  if (one-time initialization token for fdc_associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v2 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo07DOCFullaB14ViewControllerC_Tt1B5(v0, static DOCFullDocumentManagerViewController.fdc_associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v5 = MEMORY[0x28223BE20](KeyPath, v4);
  v9 = v1;
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v10, v5);

  v6 = *&v10[0];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  v7 = static DOCMoveOperation.willBegin;
  memset(v10, 0, sizeof(v10));
  v8 = [objc_opt_self() mainQueue];
  (*(*v6 + 144))(v7, v10, v8, closure #1 in DOCFullDocumentManagerViewController.swift_viewDidLoad(), 0);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  DOCFullDocumentManagerViewController.installFocusBackstopIfNecessary()();
}

void closure #1 in DOCFullDocumentManagerViewController.swift_viewDidLoad()(void *a1)
{
  Notification.object.getter();
  if (!v10)
  {
    outlined destroy of CharacterSet?(v9, &_sypSgMd);
    return;
  }

  type metadata accessor for DOCMoveOperation();
  if (swift_dynamicCast())
  {
    v2 = [a1 hierarchyController];
    v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
      if (v5)
      {
LABEL_5:
        v6 = v5 - 1;
        if (__OFSUB__(v5, 1))
        {
          __break(1u);
        }

        else if ((v4 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v7 = *(v4 + 8 * v6 + 32);

LABEL_10:
            if ([a1 doc_hasAppeared])
            {
              specialized static DOCHierarchyController.BrowsedLocationMoveCoordinator.coordinateMove(_:forBrowsedLocation:in:)(v8, v7, a1);
            }

            return;
          }

          __break(1u);
          return;
        }

        v7 = MEMORY[0x24C1FC540](v6, v4);

        goto LABEL_10;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_5;
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v4.super_class = DOCFullDocumentManagerViewController;
  [(UIWindow_optional *)&v4 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    [v2 updateAvailableDisplayModesWithAnimated_];
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v12, sel_viewWillDisappear_, a1);
  DOCFullDocumentManagerViewController.clearLastOpenedItem()();
  v2 = [v1 internalNavigationController];
  v3 = [v2 topViewController];

  if (v3)
  {
    v4 = [v3 navigationItem];

    v5 = [v4 searchController];
    if (v5)
    {
      type metadata accessor for DOCSearchController();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = v5;
        if ([v7 isActive])
        {
          v9 = [*&v7[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] viewIfLoaded];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 isHidden];

            if (v11)
            {
              [v7 setActive_];
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.clearLastOpenedItem()()
{
  v1 = [v0 configuration];
  v2 = [v1 sceneIdentifier];

  v7 = specialized static DOCInteractionManager.sharedManager(for:)(v2);
  (*((*MEMORY[0x277D85000] & *v7) + 0x68))(0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2493AC000, v4, v5, "[Interaction] Clearing last opened item in 'clearLastOpenedItem' (lifeCycle of DOCFullDMVC)", v6, 2u);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v2, sel_viewWillAppear_, a1);
  DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
  [v1 updateAvailableDisplayModesWithAnimated_];
  DOCFullDocumentManagerViewController.clearLastOpenedItem()();
  DOCFullDocumentManagerViewController.setupPickerFilenameViewIfNeeded()();
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.didChangeEnvironmentSupportsColumnView()()
{
  v1 = [v0 viewIfLoaded];
  v2 = [v1 window];

  if (v2)
  {

    [v0 updateAvailableDisplayModesWithAnimated_];
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updateAvailableDisplayModes(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v39 = static UITraitCollection.Traits.hSizeClass;
  v40 = qword_27EEE9C60;

  v5 = UITraitCollection.doc_hasSpecified(_:)(&v39);

  if ((v5 & 1) == 0)
  {
    return;
  }

  if ([v2 environmentSupportsColumnView])
  {
    v6 = [v2 configuration];
    v7 = [v6 supportsColumnView];

    v8 = &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
    if (v7)
    {
      v9 = [v2 configuration];
      v10 = [v9 isPickerUI];

      if (!v10)
      {
        v8 = &outlined read-only object #0 of DOCFullDocumentManagerViewController.availableDisplayModes();
      }
    }
  }

  else
  {
    v8 = &outlined read-only object #1 of DOCFullDocumentManagerViewController.availableDisplayModes();
  }

  v11 = [v2 effectiveBrowserViewController];
  v12 = MEMORY[0x277D85000];
  if (!v11)
  {
    goto LABEL_16;
  }

  v13 = v11;
  v14 = (*((*MEMORY[0x277D85000] & *v11) + 0xE8))();

  if (!v14)
  {
    goto LABEL_16;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

LABEL_16:
    v38 = 0;
    goto LABEL_17;
  }

  v38 = (*((*v12 & *v15) + 0xA68))();

LABEL_17:
  v16 = [v2 dataSource];
  v17 = (*((*v12 & *v16) + 0x188))();

  if (v17 == 3)
  {
    v18 = v8[2];
    v19 = v8 + 4;
    while (v18)
    {
      v20 = *v19++;
      --v18;
      if (v20 == 3)
      {
        goto LABEL_26;
      }
    }

    if (v38)
    {
      v21 = [v38 identifier];
    }

    else
    {
      v21 = 0;
    }

    DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)(1, 0, v21);
  }

LABEL_26:
  v22 = [v2 displayModeHandler];
  v23 = (*((*v12 & *v22) + 0x58))();
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    v26 = [v2 dataSource];
    v27 = (*((*v12 & *v26) + 0x188))();

    if (v27 != 3 && v23 == 3)
    {
      v28 = v8[2];
      v29 = 4;
      while (v28)
      {
        v30 = v8[v29++];
        --v28;
        if (v30 == 3)
        {

          if (v38)
          {
            v31 = [v38 identifier];
          }

          else
          {
            v31 = 0;
          }

          DOCFullDocumentManagerViewController.userDidChangeDisplayMode(to:for:)(3, v31);

          goto LABEL_35;
        }
      }
    }
  }

LABEL_35:
  v32 = [v2 effectiveBrowserViewController];
  if (v32)
  {
    v33 = v32;
    v34 = (*((*v12 & *v32) + 0xE8))();

    if (v34)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v35[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = animated;
        v36 = [v35 viewIfLoaded];
        v37 = [v36 window];

        if (v37)
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

id DOCFullDocumentManagerViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v14.super_class = DOCFullDocumentManagerViewController;
  objc_msgSendSuper2(&v14, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1);
  _StringGuts.grow(_:)(40);
  MEMORY[0x24C1FAEA0](0xD000000000000025, 0x8000000249BF77F0);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v8 = [v3 effectiveBrowserViewController];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v8) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v12 = swift_dynamicCastClass();
      if (!v12)
      {

        return [v4 updateAvailableDisplayModesWithAnimated_];
      }

      (*((*v10 & *v12) + 0x188))(0, 0xE000000000000000, a1);
    }
  }

  return [v4 updateAvailableDisplayModesWithAnimated_];
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.splitViewWillDidExpand()()
{
  v1 = [v0 effectiveBrowserViewController];
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();

    if (v8)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
        v6 = [v4 viewIfLoaded];
        v7 = [v6 window];

        if (v7)
        {

          DOCBrowserContainedViewController.updateOverlayIfNeeded()();
        }

        else
        {
          DOCBrowserContainedViewController.applyOverlaySearchSettings()();
        }

        (*((*v3 & *v5) + 0x188))(0xD000000000000036, 0x8000000249BF7820, 0);
      }
    }
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.viewDidLayoutSubviews()()
{
  v8.super_class = DOCFullDocumentManagerViewController;
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = [v0 pickerFilenameView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 internalNavigationController];
    v4 = v2;
    [v4 frame];
    Height = CGRectGetHeight(v9);
    [v4 safeAreaInsets];
    v7 = v6;

    [v3 setAdditionalSafeAreaInsets_];
  }
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.updateNavigationBarPrefersLargeTitles()()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 forPickingDocuments];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 dataSource];
    v6 = (*((*MEMORY[0x277D85000] & *v5) + 0x188))();

    v4 = v6 != 3;
  }

  v7 = [v1 internalNavigationController];
  v8 = [v7 navigationBar];

  [v8 setPrefersLargeTitles_];
}

id DOCFullDocumentManagerViewController.primaryContentScrollView.getter()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 topViewController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 contentScrollViewForEdge_];

  return v3;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.swift_navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  v4 = v3;
  [v3 beginForcedNavigationTransitionChromeIfNeeded:_ appearingViewController:willShow animated:animated];
  type metadata accessor for DOCBrowserContainerController();
  if (!swift_dynamicCastClass() || (type metadata accessor for DOCPlaceholderDataSource(), !swift_dynamicCastClass()))
  {
    if ([v3 doc_hasAppeared])
    {
      v8 = [(UIViewController *)willShow transitionCoordinator];
      if (v8)
      {
        v9 = v8;
        _StringGuts.grow(_:)(48);

        v35 = 0xD000000000000027;
        v36 = 0x8000000249BF7860;
        if (animated)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (animated)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        MEMORY[0x24C1FAEA0](v10, v11);

        MEMORY[0x24C1FAEA0](0x3A6376202CLL, 0xE500000000000000);
        v12 = [(UIViewController *)willShow description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        MEMORY[0x24C1FAEA0](v13, v15);

        v16 = v35;
        v17 = v36;
        type metadata accessor for DOCAssertion();
        v18 = swift_allocObject();
        v19 = MEMORY[0x277D84F90];
        *(v18 + 32) = 1;
        *(v18 + 40) = v19;
        *(v18 + 16) = v16;
        *(v18 + 24) = v17;
        v20 = [v4 hierarchyController];
        v21 = DOCHierarchyController.loadingDisabledAssertions.getter();
        (*(*v21 + 136))(v18, 0, 1);

        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        *(v22 + 24) = v4;
        v39 = partial apply for closure #1 in DOCFullDocumentManagerViewController.swift_navigationController(_:willShow:animated:);
        v40 = v22;
        v35 = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v38 = &block_descriptor_110_0;
        v23 = _Block_copy(&v35);

        v24 = v4;

        [v9 notifyWhenInteractionChangesUsingBlock_];
        _Block_release(v23);
        swift_unknownObjectRelease();
      }
    }
  }

  v25 = [(UINavigationController *)_ lastOperation];
  [v4 setUpdateLocationsAfterPopTransition_];
  if ([v4 updateLocationsAfterPopTransition])
  {
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = (*((*MEMORY[0x277D85000] & *v26) + 0xE8))();
      if (v27)
      {
        v28 = v27;
        type metadata accessor for DOCItemCollectionViewController(0);
        if (swift_dynamicCastClass())
        {
          DOCItemCollectionViewController.getCurrentLocation()(v29);
          if (v30)
          {
            v31 = v30;
            v32 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
            if (v32)
            {
              v33 = v32;
              v34 = v31;
              [v33 updateSelectionToMatchBrowsedLocation:v34 scrollToVisible:0];
            }
          }
        }
      }
    }
  }

  DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)([(UINavigationController *)_ transitionCoordinator], v25 == 2);
  swift_unknownObjectRelease();
  DOCFullDocumentManagerViewController.searchPresentationState.getter();
  DOCFullDocumentManagerViewController.updatePickerFilenameViewVisibility()();
}

void DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)(void *a1, char a2)
{
  v5 = objc_opt_self();
  v6 = [v2 configuration];
  v7 = [v6 sceneIdentifier];

  v8 = [v5 globalTabbedBrowserControllerForIdentifier_];
  if (v8)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = [v2 _definiteTransitionCoordinator];
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v8;
    v11 = a2 & 1;
    *(v10 + 32) = a2 & 1;
    v23 = partial apply for closure #1 in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:);
    v24 = v10;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v22 = &block_descriptor_116_1;
    v12 = _Block_copy(&v19);
    swift_unknownObjectRetain();
    v13 = v2;
    v14 = v8;

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    *(v15 + 32) = v11;
    v23 = partial apply for closure #2 in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:);
    v24 = v15;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v22 = &block_descriptor_122_0;
    v16 = _Block_copy(&v19);
    v17 = v13;
    v18 = v14;

    [v9 animateAlongsideTransition:v12 completion:v16];
    _Block_release(v16);
    _Block_release(v12);

    swift_unknownObjectRelease();
  }
}

uint64_t DOCFullDocumentManagerViewController.searchPresentationState.getter()
{
  v1 = [v0 internalNavigationController];
  v2 = [v1 topViewController];

  if (!v2)
  {
    return 4;
  }

  v3 = [v2 navigationItem];

  v4 = [v3 searchController];
  if (!v4)
  {
    return 4;
  }

  type metadata accessor for DOCSearchController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x1A0);
    v7 = v4;
    v8 = v6();
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

void performUpdate #1 (animationsAllowed:) in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)(char a1, id a2, void *a3, char a4)
{
  if ((a1 & 1) == 0)
  {
    [objc_opt_self() setAnimationsEnabled_];
  }

  v8 = [a2 internalNavigationController];
  v9 = [v8 topViewController];

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [v9 presentedViewController];

  if (!v10)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  type metadata accessor for DOCSearchController();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v19 = v11;
  v12 = v10;
  if ([v19 isActive] && (v13 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController, (v14 = objc_msgSend(*&v19[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController], sel_viewIfLoaded)) != 0) && (v15 = v14, v16 = objc_msgSend(v14, sel_isHidden), v15, (v16 & 1) == 0))
  {
    v17 = (*((*MEMORY[0x277D85000] & **&v19[v13]) + 0xCB8))();
    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v18 > 0;
  }

  else
  {

    v10 = 0;
  }

LABEL_13:
  [a3 setSafeAreaUpdatesDisabledDuringTransitions_];
  [a3 setIsShowingSearchResults_];
  if ((a1 & 1) == 0)
  {
    [objc_opt_self() setAnimationsEnabled_];
  }
}

id DOCFullDocumentManagerViewController.traitCollectionExpectedForSearchPresentation.getter()
{
  v1 = v0;
  v2 = [v0 effectiveBrowserViewController];
  if (v2)
  {
    v3 = v2;
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();

    if (v4)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = [v5 traitCollection];

        return v6;
      }
    }
  }

  v8 = [v1 traitCollection];

  return v8;
}

void DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *a1) + 0x1A0))();
  (*((*v6 & *a1) + 0x1A8))(a2);
  v8 = [v2 effectiveBrowserViewController];
  if (v8)
  {
    v9 = v8;
    v10 = (*((*v6 & *v8) + 0xE8))();

    if (v10)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        (*((*v6 & *v11) + 0xBC8))(a2);
      }
    }
  }

  DOCFullDocumentManagerViewController.updatePickerFilenameViewVisibility()();
  (*((*v6 & *a1) + 0x3C0))(&v30);
  if (!BYTE1(v30) || BYTE1(v30) == 1 && (v30 & 1) == 0)
  {
    if (v7 == 2 || v7 == 3 || v7 == 4)
    {
      if ((a2 - 2) < 3u)
      {
        return;
      }
    }

    else
    {
      if ((a2 - 2) < 3u)
      {
        v13 = 1;
        goto LABEL_22;
      }

      if (((v7 ^ a2) & 1) == 0)
      {
        return;
      }
    }

    if ((a2 & 1) == 0)
    {
      return;
    }

LABEL_28:
    v15 = [v3 hierarchyController];
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v17 = *&v15[v16];
    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
      if (v18)
      {
LABEL_30:
        v19 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          __break(1u);
        }

        else if ((v17 & 0xC000000000000001) == 0)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v17 + 8 * v19 + 32);

LABEL_35:
            v21 = [v3 sourceObserver];
            if (v21 && (v22 = v21, v23 = [v20 sourceIdentifier], v24 = objc_msgSend(v22, sel_sourceForIdentifier_, v23), v22, v23, v24))
            {
              v25 = [v3 dataSource];
              v26 = (*((*v6 & *v25) + 0xA8))();

              v27 = *((*v6 & *v26) + 0x1A8);
              v28 = v20;
              v27(v20, v24);
            }

            else
            {
            }

            return;
          }

          __break(1u);
          return;
        }

        v20 = MEMORY[0x24C1FC540](v19, v17);

        goto LABEL_35;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_30;
      }
    }

    return;
  }

  v12 = (a2 - 2);
  v13 = v12 < 3;
  if (v7 == 4)
  {
    if (v12 < 3)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v7 == 3 || v7 == 2)
  {
    if ((a2 - 2) < 3u)
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_22:
  if ((v7 & 1) != 0 && v13)
  {
    v14 = [v3 dataSource];
    v29 = (*((*v6 & *v14) + 0xA8))();

    (*((*v6 & *v29) + 0x1B0))();
  }
}

id DOCFullDocumentManagerViewController.willPresentSearchController(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCUIPBrowserState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v10 = DOCFullDocumentManagerViewController.initialSearchDisplayMode(in:)(v9);
  (*((*MEMORY[0x277D85000] & *v9) + 0xBE0))(v10);
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(a1, 2);
  result = [v1 enclosedInUIPDocumentLanding];
  if (result)
  {
    DOCUIPBrowserState.init()();
    DOCUIPBrowserState.documentLandingMode.setter();
    v12 = objc_opt_self();
    v13 = [v2 configuration];
    v14 = [v13 sceneIdentifier];

    v15 = [v12 globalTabbedBrowserControllerForIdentifier_];
    if (v15)
    {
      v16 = DOCUIPBrowserState._bridgeToObjectiveC()();
      [v15 performBrowserStateChange_];
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t DOCFullDocumentManagerViewController.initialSearchDisplayMode(in:)(void *a1)
{
  v3 = [v1 effectiveBrowserViewController];
  v4 = MEMORY[0x277D85000];
  if (v3)
  {
    v5 = v3;
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v6)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = (*((*v4 & *v7) + 0xBD8))();
        goto LABEL_8;
      }
    }
  }

  v9 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
  if (!v9)
  {
    v10 = 0;
    return (*((*v4 & *a1) + 0x1190))(v10);
  }

  v6 = v9;
  v8 = (*((*v4 & *v9) + 0x568))();
LABEL_8:
  v10 = v8;

  return (*((*v4 & *a1) + 0x1190))(v10);
}

void DOCFullDocumentManagerViewController.didPresentSearchController(_:)(void *a1)
{
  v2 = [a1 showsSearchResultsController];

  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(a1, v2);
}

void DOCFullDocumentManagerViewController.willDismissSearchController(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  if (v5)
  {
    v6 = v5;
    v7 = [v1 hierarchyController];
    v8 = DOCHierarchyController.loadingDisabledAssertions.getter();
    (*(*v8 + 136))(v6, 0, 1);
  }

  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(a1, 3);
  [v1 updateAvailableDisplayModesWithAnimated_];
  if ([a1 showsSearchResultsController] & 1) != 0 || ((*((*v4 & *a1) + 0x1F0))())
  {
    v9 = objc_opt_self();
    v10 = [v2 configuration];
    v11 = [v10 sceneIdentifier];

    v12 = [v9 globalTabbedBrowserControllerForIdentifier_];
    [v12 willDismissSearchResultsController_];
  }
}

void DOCFullDocumentManagerViewController.didDismissSearchController(_:)(void *a1)
{
  v2 = v1;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v57 = *(v7 - 8);
  v58 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 effectiveBrowserViewController];
  v13 = MEMORY[0x277D85000];
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = v12;
  v15 = (*((*MEMORY[0x277D85000] & *v12) + 0xE8))();

  if (!v15)
  {
    goto LABEL_16;
  }

  if ((*((*v13 & *a1) + 0x290))())
  {
    goto LABEL_15;
  }

  if (![objc_opt_self() typeToFocusIsSupported] || (v60 = &unk_285D49F20, (v16 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
LABEL_14:
    [v15 becomeFirstResponder];
LABEL_15:

    goto LABEL_16;
  }

  v17 = v16;
  v18 = v15;
  if (![v17 acceptsKeyboardFocus] || (type metadata accessor for DOCItemCollectionViewController(0), (v19 = swift_dynamicCastClass()) == 0) || (v20 = v19, v55 = objc_opt_self(), v54 = *((*v13 & *v20) + 0x1010), v21 = v18, v22 = v54(), v23 = -[NSObject topFirstResponder:](v55, sel_topFirstResponder_, v22), v22, v21, !v23))
  {

    goto LABEL_14;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.UI);
  v25 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v55 = v26;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v54 = v21;
    v30 = v29;
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BF7890, aBlock);
    *(v28 + 12) = 2112;
    *(v28 + 14) = v25;
    *v30 = v23;
    v31 = v25;
    v32 = v27;
    v33 = v55;
    _os_log_impl(&dword_2493AC000, v55, v32, "%s cvTopFirstResponder: %@", v28, 0x16u);
    outlined destroy of CharacterSet?(v30, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v30, -1, -1);
    v34 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x24C1FE850](v34, -1, -1);
    MEMORY[0x24C1FE850](v28, -1, -1);

    v21 = v54;
  }

  else
  {
  }

LABEL_16:
  v35 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v36 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
  if (v36)
  {
    v37 = v36;
    v38 = (*((*v13 & *v35) + 0xBD8))();
    (*((*v13 & *v37) + 0x570))(v38);
  }

  v39 = *((*v13 & *v35) + 0x1010);
  v40 = v39();
  v41 = v39();
  [v41 adjustedContentInset];
  v43 = v42;

  [v40 setContentOffset_];
  v44 = *(v35 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v44)
  {
    (*((*v13 & *v44) + 0x1C8))();
    v45 = [v2 view];
    if (v45)
    {
      v46 = v45;
      [v45 setUserInteractionEnabled_];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v47 = static OS_dispatch_queue.main.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = a1;
      aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.didDismissSearchController(_:);
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_128_0;
      v49 = _Block_copy(aBlock);
      v50 = v2;
      v51 = a1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v52 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v11, v6, v49);
      _Block_release(v49);

      (*(v59 + 8))(v6, v52);
      (*(v57 + 8))(v11, v58);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in DOCFullDocumentManagerViewController.didDismissSearchController(_:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in closure #1 in DOCFullDocumentManagerViewController.didDismissSearchController(_:);
  *(v6 + 24) = v5;
  v12[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_187_0;
  v7 = _Block_copy(v12);
  v8 = a1;
  v9 = a2;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = [v8 view];
    if (v10)
    {
      v11 = v10;
      [v10 setUserInteractionEnabled_];

      return;
    }
  }

  __break(1u);
}

void DOCFullDocumentManagerViewController.willPresentSearchResultsController(_:)(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v1 configuration];
  v5 = [v4 sceneIdentifier];

  v6 = [v3 globalTabbedBrowserControllerForIdentifier_];
  if (v6)
  {
    [v6 willPresentSearchResultsController_];
  }

  v7 = [v1 effectiveBrowserViewController];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v7) + 0xE8))();

    if (v11)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        (*((*v9 & *v10) + 0x1308))();
      }
    }
  }
}

uint64_t DOCFullDocumentManagerViewController.willDismissSearchResultsController(_:)(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v1 configuration];
  v5 = [v4 sceneIdentifier];

  v6 = [v3 globalTabbedBrowserControllerForIdentifier_];
  if (v6)
  {
    [v6 willDismissSearchResultsController_];
  }

  return (*((*MEMORY[0x277D85000] & **(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController)) + 0x1308))();
}

void *DOCFullDocumentManagerViewController.itemCollectionViewTarget(of:)(void *a1)
{
  v2 = [v1 dataSource];
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x108))();

  v4 = specialized Sequence.reversed()(v3);
  v5 = v4;
  v25 = MEMORY[0x277D84F90];
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_21:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, v5);
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v13 = (*((*MEMORY[0x277D85000] & *v11) + 0xE8))();

      if (v13)
      {
        break;
      }

LABEL_6:
      ++v10;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for DOCItemCollectionViewController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_6;
    }

    MEMORY[0x24C1FB090]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v25;
  }

  while (v8 != v7);
LABEL_23:

  if (v9 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v15 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1FC540](v15, v9);
      }

      else
      {
        if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = *(v9 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = (*((*MEMORY[0x277D85000] & *v16) + 0xBB8))();
      if (v19)
      {
        v20 = v19;
        type metadata accessor for DOCSearchController();
        v21 = a1;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          goto LABEL_39;
        }
      }

      ++v15;
      if (v18 == i)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:
  v17 = 0;
LABEL_39:

  return v17;
}

void *DOCFullDocumentManagerViewController.searchControllerScopes(for:)(void *a1)
{
  v1 = DOCFullDocumentManagerViewController.itemCollectionViewTarget(of:)(a1);
  if (v1)
  {
    v2 = DOCItemCollectionViewController.searchControllerScopes.getter();
    if (v2[2])
    {
LABEL_6:

      return v2;
    }
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v13._object = 0x8000000249BC9FD0;
    v5._countAndFlagsBits = 0x73746E65636552;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE700000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD000000000000043;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables14DOCSearchScope_pGMd);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_249B9A480;
    v9 = type metadata accessor for DOCEverywhereSearchScope();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership;
    *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership] = 1;
    *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName] = v8;
    *&v10[v11] = 1;
    v12.receiver = v10;
    v12.super_class = v9;
    v2[4] = objc_msgSendSuper2(&v12, sel_init);
    v2[5] = &protocol witness table for DOCEverywhereSearchScope;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id DOCFullDocumentManagerViewController.searchControllerAppMenu(for:)(void *a1)
{
  result = DOCFullDocumentManagerViewController.itemCollectionViewTarget(of:)(a1);
  if (result)
  {
    v3 = result;
    v4 = DOCItemCollectionViewController.menuForDisplaying(in:)(a1);

    return v4;
  }

  return result;
}

Swift::Void __swiftcall DOCFullDocumentManagerViewController.layoutForFixingFooter()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    if (DOCDeviceIsPhone())
    {
      v3 = [v0 effectiveBrowserViewController];
      if (v3)
      {
        v4 = v3;
        v5 = MEMORY[0x277D85000];
        v7 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

        if (v7)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v6 = swift_dynamicCastClass();
          if (v6)
          {
            (*((*v5 & *v6) + 0x1400))();
          }
        }
      }
    }
  }
}

id protocol witness for DOCSearchControllerDelegate.searchControllerAppMenu(for:) in conformance DOCFullDocumentManagerViewController(void *a1)
{
  result = DOCFullDocumentManagerViewController.itemCollectionViewTarget(of:)(a1);
  if (result)
  {
    v3 = result;
    v4 = DOCItemCollectionViewController.menuForDisplaying(in:)(a1);

    return v4;
  }

  return result;
}

unint64_t one-time initialization function for testDefaultsDisplayMode()
{
  result = closure #1 in variable initialization expression of static DOCUserInterfaceStateStore.testDefaultsDisplayMode();
  static DOCUserInterfaceStateStore.testDefaultsDisplayMode = result;
  byte_27EF18EC0 = v1 & 1;
  return result;
}

unint64_t closure #1 in variable initialization expression of static DOCUserInterfaceStateStore.testDefaultsDisplayMode()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  v1 = v0;
  if (!v0)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_10:
    outlined destroy of CharacterSet?(&v18, &_sypSgMd);
    goto LABEL_11;
  }

  if ([v0 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v16 = 0u;
    v17 = 0u;
  }

  v18 = *v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_10;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  v2 = v16[0];
  v3 = specialized DOCUSBEraseOperation.State.init(rawValue:)([v16[0] integerValue]);
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    v6 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  v6 = 1;
LABEL_13:
  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.StateStore);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000249BF7A00, v16);
    *(v10 + 12) = 2080;
    *&v18 = v5;
    BYTE8(v18) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCDisplayModeOSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v16);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s stored PPT display mode override was: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return v5;
}

uint64_t *DOCUserInterfaceStateStore.testDefaultsDisplayMode.unsafeMutableAddressor()
{
  if (one-time initialization token for testDefaultsDisplayMode != -1)
  {
    swift_once();
  }

  return &static DOCUserInterfaceStateStore.testDefaultsDisplayMode;
}

uint64_t static DOCUserInterfaceStateStore.testDefaultsDisplayMode.getter()
{
  if (one-time initialization token for testDefaultsDisplayMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCUserInterfaceStateStore.testDefaultsDisplayMode;
}

uint64_t static DOCUserInterfaceStateStore.testDefaultsDisplayMode.setter(uint64_t a1, char a2)
{
  if (one-time initialization token for testDefaultsDisplayMode != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DOCUserInterfaceStateStore.testDefaultsDisplayMode = a1;
  byte_27EF18EC0 = a2 & 1;
  return result;
}

uint64_t (*static DOCUserInterfaceStateStore.testDefaultsDisplayMode.modify())()
{
  if (one-time initialization token for testDefaultsDisplayMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

unint64_t displayMode #1 (from:for:) in static DOCUserInterfaceStateStore.retrieveDefaultDisplayMode(configuration:sourceIdentifier:fallback:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 displayModes];
    v46[0] = a2;
    v46[1] = a3;

    v7 = [v6 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      *v46 = 0u;
      v47 = 0u;
    }

    v48[0] = *v46;
    v48[1] = v47;
    if (*(&v47 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      if (swift_dynamicCast())
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v45 + 16))
        {
          v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
          v18 = v17;

          if (v18)
          {
            outlined init with copy of Any(*(v45 + 56) + 32 * v16, v48);

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
            if (swift_dynamicCast())
            {
              v19 = [v46[0] integerValue];

              v20 = specialized DOCUSBEraseOperation.State.init(rawValue:)(v19);
              if ((v21 & 1) == 0)
              {
                v13 = v20;
                v22 = 0;
LABEL_24:
                if (one-time initialization token for StateStore != -1)
                {
                  swift_once();
                }

                v28 = type metadata accessor for Logger();
                __swift_project_value_buffer(v28, static Logger.StateStore);
                v29 = v5;

                v30 = Logger.logObject.getter();
                v31 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v30, v31))
                {
                  v32 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  v46[0] = v44;
                  *v32 = 136315906;
                  *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BF7AF0, v46);
                  *(v32 + 12) = 2080;
                  if (v22)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v13;
                  }

                  *&v48[0] = v33;
                  BYTE8(v48[0]) = v22;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
                  v34 = String.init<A>(describing:)();
                  v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v46);

                  *(v32 + 14) = v36;
                  *(v32 + 22) = 2080;
                  *(v32 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v46);
                  *(v32 + 32) = 2080;
                  v37 = v29;
                  v38 = [v37 description];
                  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v41 = v40;

                  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v46);

                  *(v32 + 34) = v42;
                  _os_log_impl(&dword_2493AC000, v30, v31, "%s fetched value: %s for identifier: %s from state store: %s", v32, 0x2Au);
                  swift_arrayDestroy();
                  MEMORY[0x24C1FE850](v44, -1, -1);
                  MEMORY[0x24C1FE850](v32, -1, -1);
                }

                else
                {
                }

                return v13;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_23:
        v13 = 0;
        v22 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v48, &_sypSgMd);
    }

    if (one-time initialization token for StateStore != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.StateStore);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v48[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BF7AF0, v48);
      _os_log_impl(&dword_2493AC000, v24, v25, "%s unable to fetch display mode state", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    goto LABEL_23;
  }

  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.StateStore);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v48[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BF7AF0, v48);
    _os_log_impl(&dword_2493AC000, v9, v10, "%s state store was nil", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  return 0;
}

uint64_t @objc DOCConcreteLocation.effectiveTabSwitcherTab.getter(void *a1)
{
  v1 = a1;
  v2 = DOCConcreteLocation.effectiveTabSwitcherTab.getter();

  return v2;
}

uint64_t DOCConcreteLocation.effectiveTabSwitcherTab.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifiera_So6DOCTabVtGMd);
  inited = swift_initStackObject();
  v3 = *MEMORY[0x277D060F8];
  *(inited + 32) = *MEMORY[0x277D060F8];
  v4 = MEMORY[0x277D05DC0];
  *(inited + 16) = xmmword_249B9FA70;
  v5 = *v4;
  *(inited + 40) = 0;
  *(inited + 48) = v5;
  *(inited + 56) = 1;
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27DOCDocumentSourceIdentifiera_So6DOCTabVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifiera_So6DOCTabVtMd);
  swift_arrayDestroy();
  v9 = [v1 sourceIdentifier];
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v13 = [v1 originalSourceIdentifier];
  if (!v13)
  {
LABEL_8:

    return 2;
  }

  v10 = v13;
  if (!*(v8 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v14 & 1) == 0))
  {

    goto LABEL_8;
  }

LABEL_6:
  v15 = *(*(v8 + 56) + 8 * v11);

  return v15;
}

id DOCWorkaround.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCWorkaround.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCWorkaround();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCFullDocumentManagerViewController.FocusBackstop.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void one-time initialization function for disableWorkaroundFor91410302()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BF7A20);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor91410302 = v2;
}

void specialized DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedStore];
  v14 = [a2 configuration];
  v15 = [v13 interfaceStateForConfiguration_];

  if (v15)
  {
    v16 = [a1 providerDomainID];
    v29 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v16 node:a1];

    if ([v29 canBeRestored])
    {
      v17 = [a2 hierarchyController];
      v27 = *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_lastVisitedLocationSavingQueue];

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v20 = v29;
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v15;
      aBlock[4] = partial apply for closure #1 in DOCFullDocumentManagerViewController.saveLastUsedOpenSaveLocation(_:);
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_300_0;
      v21 = _Block_copy(aBlock);

      v22 = v29;
      v29 = v9;
      v23 = v22;
      v24 = v15;
      static DispatchQoS.unspecified.getter();
      v30 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v25 = v27;
      MEMORY[0x24C1FB9A0](0, v12, v8, v21);
      _Block_release(v21);

      (*(v5 + 8))(v8, v4);
      (*(v28 + 8))(v12, v29);
    }

    else
    {

      v26 = v29;
    }
  }
}

uint64_t specialized DOCFullDocumentManagerViewController.allowQueryStringSearchSuggestion(in:)()
{
  v1 = [v0 hierarchyController];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v6 = 0;
LABEL_11:
    v7 = [objc_opt_self() trashedItemsLocation];
    v8 = v7;
    if (v6)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
        v9 = static NSObject.== infix(_:_:)();

        v10 = v9 ^ 1;
        return v10 & 1;
      }
    }

    else
    {
      if (!v7)
      {
        v10 = 0;
        return v10 & 1;
      }
    }

    v10 = 1;
    return v10 & 1;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_21:

    v6 = MEMORY[0x24C1FC540](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t specialized static DOCUserInterfaceStateStore.displayModeStateIdentifier(for:configuration:)(void *a1, void *a2)
{
  v28 = xmmword_249BA1BA0;
  v3 = specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(a2, 0, &v28);
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v14 = a1;

    if (!v4)
    {
LABEL_8:

LABEL_9:
      v12 = static DOCUserInterfaceStateStore.DOCDisplayModeNoSpecificSourceIdentifier;
      v13 = off_27EEF13E8;

      goto LABEL_12;
    }
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = a1;

    if ((v10 & 1) == 0 || !v4)
    {
      goto LABEL_8;
    }
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v15;

LABEL_12:

  if (one-time initialization token for StateStore != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.StateStore);
  v17 = a1;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v28 = v21;
    *v20 = 136315650;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BF7B10, &v28);
    *(v20 + 12) = 2080;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v28);

    *(v20 + 24) = v26;
    _os_log_impl(&dword_2493AC000, v18, v19, "%s in identifier: %s out identifier: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  else
  {
  }

  return v12;
}

void specialized static DOCUserInterfaceStateStore.saveDefaultDisplayMode(_:for:configuration:)(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v8 = [v6 sharedStore];
  v9 = [v8 interfaceStateForConfiguration_];

  if (v9)
  {
    v10 = specialized static DOCUserInterfaceStateStore.displayModeStateIdentifier(for:configuration:)(a2, a3);
    v12 = v11;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a1;
    v15 = v13;
    v17 = v16;
    v43 = MEMORY[0x277D83B88];
    v39 = v14;
    v42[0] = v14;
    outlined init with take of Any(v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v15, v17, isUniquelyReferenced_nonNull_native);

    v19 = [v9 displayModes];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = MEMORY[0x24C1FAD20](v10, v12);
    [v19 setValue:isa forKey:v21];

    if (one-time initialization token for StateStore != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.StateStore);
    v23 = a2;

    v24 = Logger.logObject.getter();
    v25 = a2;
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v27 = 136315906;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BF7A70, v42);
      *(v27 + 12) = 2080;
      *&v41[0] = v39;
      v28 = String.init<A>(describing:)();
      v40 = v6;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v42);

      *(v27 + 14) = v30;
      *(v27 + 22) = 2080;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v42);

      *(v27 + 24) = v31;
      *(v27 + 32) = 2080;
      *&v41[0] = v25;
      v32 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v42);
      v6 = v40;

      *(v27 + 34) = v35;
      _os_log_impl(&dword_2493AC000, v24, v26, "%s saving new value: %s to defaults: %s for identifier: %s", v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v38, -1, -1);
      v36 = v27;
      v7 = &selRef_setNavigationTitleForTagListInInfoPanel_;
      MEMORY[0x24C1FE850](v36, -1, -1);
    }

    else
    {
    }

    v37 = [v6 v7[142]];
    [v37 updateInterfaceState:v9 forConfiguration:a3];
  }
}

void specialized DOCFullDocumentManagerViewController.didToggleEditState(editing:in:)()
{
  v1 = v0;
  v2 = [v0 dataSource];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x188))();

  if (v4 != 3)
  {
    return;
  }

  v5 = [v1 internalNavigationController];
  v16 = [v5 topViewController];

  if (!v16)
  {
    return;
  }

  type metadata accessor for DOCColumnViewController(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = (*((*v3 & *v6) + 0xB0))();
    if (v8 >> 62)
    {
      v15 = v8;
      v9 = __CocoaSet.count.getter();
      v8 = v15;
      if (v9)
      {
LABEL_6:
        v10 = __OFSUB__(v9, 1);
        v11 = v9 - 1;
        if (v10)
        {
          __break(1u);
        }

        else if ((v8 & 0xC000000000000001) == 0)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v12 = *(v8 + 8 * v11 + 32);
LABEL_11:
            v13 = v12;

LABEL_16:
            (*((*v3 & *v7) + 0x1F0))(v13, 1, 0, 0);

            v14 = v13;
            goto LABEL_17;
          }

          __break(1u);
          return;
        }

        v12 = MEMORY[0x24C1FC540](v11);
        goto LABEL_11;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_6;
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

  v14 = v16;
LABEL_17:
}

uint64_t partial apply for closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t specialized static DOCUserInterfaceStateStore.retrieveDefaultDisplayMode(configuration:sourceIdentifier:fallback:)(void *a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for testDefaultsDisplayMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27EF18EC0)
  {
    v6 = [objc_opt_self() sharedStore];
    v7 = [v6 interfaceStateForConfiguration_];

    v8 = specialized static DOCUserInterfaceStateStore.displayModeStateIdentifier(for:configuration:)(a2, a1);
    v10 = v9;
    v44 = v8;
    v11 = displayMode #1 (from:for:) in static DOCUserInterfaceStateStore.retrieveDefaultDisplayMode(configuration:sourceIdentifier:fallback:)(v7, v8, v9);
    v12 = v11;
    if (v13)
    {
      if (one-time initialization token for StateStore != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.StateStore);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v47 = v18;
        *v17 = 136315394;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000249BF7AA0, &v47);
        *(v17 + 12) = 2080;
        v45 = v12;
        v46 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCDisplayModeOSgMd);
        v19 = String.init<A>(describing:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v47);

        *(v17 + 14) = v21;
        _os_log_impl(&dword_2493AC000, v15, v16, "%s fetched value: %s could not be converted to DOCDisplayMode", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v18, -1, -1);
        MEMORY[0x24C1FE850](v17, -1, -1);
      }
    }

    else
    {
      a3 = v11;
    }

    if (one-time initialization token for StateStore != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.StateStore);
    v28 = a2;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v31 = 136315906;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000249BF7AA0, &v45);
      *(v31 + 12) = 2080;
      v47 = a3;
      v32 = String.init<A>(describing:)();
      v34 = a2;
      v35 = a3;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v45);

      *(v31 + 14) = v36;
      a3 = v35;
      *(v31 + 22) = 2080;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v10, &v45);

      *(v31 + 24) = v37;
      *(v31 + 32) = 2080;
      v47 = v34;
      v38 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v45);

      *(v31 + 34) = v41;
      _os_log_impl(&dword_2493AC000, v29, v30, "%s fetched: %s for state identifier: %s derived from sourceIdentifier: %s", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v43, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    a3 = static DOCUserInterfaceStateStore.testDefaultsDisplayMode;
    if (one-time initialization token for StateStore != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.StateStore);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000249BF7AA0, &v45);
      *(v25 + 12) = 2048;
      *(v25 + 14) = a3;
      _os_log_impl(&dword_2493AC000, v23, v24, "%s overriding stored value for PPT test with value: %ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }
  }

  return a3;
}

void specialized DOCFullDocumentManagerViewController.splitViewWillChange(from:to:alongsideCoordinator:)(uint64_t a1)
{
  v3 = [v1 effectiveBrowserViewController];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277D85000];
    v10 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v10)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
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

        (*((*v5 & *v7) + 0x188))(0xD000000000000036, 0x8000000249BF7820, a1);
      }
    }
  }
}

id partial apply for closure #1 in DOCFullDocumentManagerViewController.swift_navigationController(_:willShow:animated:)(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v2 + 24);
  result = [a1 isCancelled];
  if (result)
  {
    (*(*v3 + 160))();

    return [v4 setUpdateLocationsAfterPopTransition_];
  }

  return result;
}

void partial apply for closure #1 in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = [objc_opt_self() isOnScreen] ^ 1;

  performUpdate #1 (animationsAllowed:) in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)(v4, v1, v2, v3);
}

void partial apply for closure #2 in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = [a1 isCancelled] ^ 1;

  performUpdate #1 (animationsAllowed:) in DOCFullDocumentManagerViewController.updateTabBarVisible(transitionCoordinator:isNavigationPop:)(v5, v2, v3, v4);
}

void specialized DOCFullDocumentManagerViewController.swift_navigationController(_:didShow:animated:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCBrowserHistoryItem(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = DOCFullDocumentManagerViewController.sidebarViewController.getter();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      v12 = [v2 dataSource];
      v13 = MEMORY[0x277D85000];
      v14 = (*((*MEMORY[0x277D85000] & *v12) + 0xA8))();

      v15 = [objc_opt_self() browseStartingPointsLocation];
      v16 = [objc_allocWithZone(type metadata accessor for DOCBrowseStartingPointsDocumentSource()) init];
      v17 = &v7[v4[9]];
      *v17 = 0u;
      *(v17 + 1) = 0u;
      UUID.init()();
      *&v7[v4[5]] = v15;
      *&v7[v4[6]] = MEMORY[0x277D84F90];
      *&v7[v4[7]] = 0;
      *&v7[v4[8]] = v16;
      (*((*v13 & *v14) + 0x1D8))(v7);

      _s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVWOhTm_0(v7, type metadata accessor for DOCBrowserHistoryItem);
    }
  }

  DOCFullDocumentManagerViewController.updatePickerPocketInteraction()();
  DOCFullDocumentManagerViewController.removeFocusBackstopIfPossible()();
}

uint64_t objectdestroy_164Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_201Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

void partial apply for closure #1 in closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #2 in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(v0 + v2, v4, v5);
}

uint64_t objectdestroy_237Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void partial apply for closure #1 in closure #1 in DOCFullDocumentManagerViewController.beginRename(of:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in DOCFullDocumentManagerViewController.beginRename(of:)(v3, v4, v0 + v2, v5);
}

uint64_t partial apply for closure #1 in revealAndRename #1 (at:) in DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_46Tm_0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t objectdestroy_4Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t FINodeEntityQuery.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  static UTType.item.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  return FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v0, 1);
}

uint64_t FINodeEntityQuery.init(supportedContentTypes:shouldExcludeTrashedItems:)(uint64_t a1, int a2)
{
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  return FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(a1, a2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned FPItem?, @unowned NSError?) -> () with result type FPItem(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t FINodeEntityQuery.entities(for:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for FINodeEntity() - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](FINodeEntityQuery.entities(for:), 0, 0);
}

uint64_t FINodeEntityQuery.entities(for:)()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = type metadata accessor for FPItem();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = FINodeEntityQuery.entities(for:);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v3, v1, v4, 0, 0, &async function pointer to partial apply for closure #1 in FINodeEntityQuery.entities(for:), v2, v1);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = FINodeEntityQuery.entities(for:);
  }

  else
  {

    v2 = FINodeEntityQuery.entities(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

size_t FINodeEntityQuery.entities(for:)()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[5];
  v6 = v12;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v4, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    FINodeEntity.init(item:)(v7, v0[6]);
    v9 = *(v12 + 16);
    v8 = *(v12 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1);
    }

    v10 = v0[6];
    ++v4;
    *(v12 + 16) = v9 + 1;
    outlined init with take of FINodeEntity(v10, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9);
  }

  while (v2 != v4);

LABEL_14:

  v11 = v0[1];

  return v11(v6);
}

uint64_t closure #1 in FINodeEntityQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySo6FPItemCs5Error_p_GMd);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for FileEntityIdentifier();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v5[20] = *(v8 + 64);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in FINodeEntityQuery.entities(for:), 0, 0);
}

uint64_t closure #1 in FINodeEntityQuery.entities(for:)()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v31 = **(v0 + 88);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v29 = *(v3 + 72);
    v28 = (v3 + 16);
    v30 = v4;
    v26 = (v3 + 32);
    v27 = (*(v0 + 160) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v25 = *(v7 + 56);
    v24 = (v7 + 48);
    v23 = (v7 + 8);
    do
    {
      v32 = v2;
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 168);
      v13 = *(v0 + 144);
      v14 = *(v0 + 104);
      v25(v10, 1, 1, v6);
      (*v28)(v12, v5, v13);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      (*v26)(v15 + v30, v12, v13);
      *(v15 + v27) = v14;
      outlined init with copy of TaskPriority?(v10, v11);
      LODWORD(v11) = (*v24)(v11, 1, v6);

      v16 = *(v0 + 176);
      if (v11 == 1)
      {
        outlined destroy of CharacterSet?(*(v0 + 176), &_sScPSgMd);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v23)(v16, v6);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      type metadata accessor for FPItem();

      if (v19 | v17)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 184);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v31;
      swift_task_create();

      outlined destroy of CharacterSet?(v9, &_sScPSgMd);
      v5 += v29;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  type metadata accessor for FPItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  ThrowingTaskGroup.makeAsyncIterator()();
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = closure #1 in FINodeEntityQuery.entities(for:);
  v21 = *(v0 + 120);

  return MEMORY[0x2822004E8](v0 + 72, 0, 0, v21, v0 + 80);
}

{

  if (v0)
  {
    v1 = closure #1 in FINodeEntityQuery.entities(for:);
  }

  else
  {
    v1 = closure #1 in FINodeEntityQuery.entities(for:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[14];
    v3 = v1;
    MEMORY[0x24C1FB090]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = closure #1 in FINodeEntityQuery.entities(for:);
    v5 = v0[15];

    return MEMORY[0x2822004E8](v0 + 9, 0, 0, v5, v0 + 10);
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v6 = v0[1];

    return v6();
  }
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #1 in FINodeEntityQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in FINodeEntityQuery.entities(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in FINodeEntityQuery.entities(for:)()
{
  v1 = FileEntityIdentifier.fpItemID.getter();
  v0[14] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);

    return specialized FINodeEntityQuery.item(for:)(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
    v6 = v0[10];

    return MEMORY[0x28210BE60](v6);
  }
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
  }

  else
  {
    v2 = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  **(v0 + 64) = *(v0 + 24);

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of CharacterSet?(v3, &_s10Foundation3URLVSgMd);
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
    v7 = v0[13];

    return specialized FINodeEntityQuery.item(for:)(v7);
  }
}

{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  **(v0 + 64) = *(v0 + 48);

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in FINodeEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[16] = v1;

  if (v1)
  {
    v4 = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
  }

  else
  {
    v4 = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
  }

  else
  {
    v4 = closure #1 in closure #1 in FINodeEntityQuery.entities(for:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t FINodeEntityQuery.suggestedEntities()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CreateFolderTargetProvider.results();

  return FileEntitySpotlight.Source.fetchRecentEntities()();
}

uint64_t protocol witness for EntityQuery.init() in conformance FINodeEntityQuery@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
  type metadata accessor for UTType();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249B9A480;
  static UTType.item.getter();
  type metadata accessor for FileEntitySpotlight.Source();
  swift_allocObject();
  result = FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(v2, 1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for EntityQuery.entities(for:) in conformance FINodeEntityQuery(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = CreateFolderTargetProvider.results();

  return FINodeEntityQuery.entities(for:)(a1, v4);
}

uint64_t protocol witness for EntityQuery.suggestedEntities() in conformance FINodeEntityQuery(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for SearchableDynamicOptionsProvider.results(for:) in conformance CreateFolderTargetProvider;

  return FileEntitySpotlight.Source.fetchRecentEntities()();
}

uint64_t protocol witness for EntityQuery.displayRepresentations(for:requestedComponents:) in conformance FINodeEntityQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for DSFolderIconCustomizationApplicator.fetchFolderIconConfig() in conformance DOCFolderIconCustomizationApplicator;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance FINodeEntityQuery(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type FINodeEntityQuery and conformance FINodeEntityQuery();
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance FINodeEntityQuery(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t static FINodeEntityQuery.skipQueryResultValidation.setter(char a1)
{
  result = swift_beginAccess();
  static FINodeEntityQuery.skipQueryResultValidation = a1;
  return result;
}

uint64_t FINodeEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = CreateFolderTargetProvider.results();

  return FileEntitySpotlight.Source.fetchEntities(matching:)(a1, a2);
}

uint64_t FINodeEntityQuery.entities(forSearchableItems:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CreateFolderTargetProvider.results();

  return specialized FINodeEntityQuery.entities(forSearchableItems:)(a1);
}

uint64_t protocol witness for _EntitySearchableItemQuery.entities(forSearchableItems:) in conformance FINodeEntityQuery(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in static Task<>.retrying(priority:maxRetryCount:retryDelay:operation:);

  return specialized FINodeEntityQuery.entities(forSearchableItems:)(a2);
}

uint64_t partial apply for closure #1 in FINodeEntityQuery.entities(for:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in DOCNode.performFolderSizingIfSupported(handlerQueue:_:);

  return closure #1 in FINodeEntityQuery.entities(for:)(a1, a2, v6, v7, v8);
}

uint64_t specialized FINodeEntityQuery.item(for:)(uint64_t a1)
{
  *(v1 + 152) = a1;
  return MEMORY[0x2822009F8](specialized FINodeEntityQuery.item(for:), 0, 0);
}

{
  *(v1 + 152) = a1;
  return MEMORY[0x2822009F8](specialized FINodeEntityQuery.item(for:), 0, 0);
}

uint64_t specialized FINodeEntityQuery.item(for:)()
{
  v1 = v0[19];
  v2 = [objc_opt_self() defaultManager];
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = specialized FINodeEntityQuery.item(for:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo6FPItemCs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned FPItem?, @unowned NSError?) -> () with result type FPItem;
  v0[13] = &block_descriptor_139;
  v0[14] = v3;
  [v2 fetchItemForItemID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = specialized FINodeEntityQuery.item(for:);
  }

  else
  {
    v2 = specialized FINodeEntityQuery.item(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = [objc_opt_self() defaultManager];
  v0[20] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = specialized FINodeEntityQuery.item(for:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo6FPItemCs5Error_pGMd);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned FPItem?, @unowned NSError?) -> () with result type FPItem;
  v0[13] = &block_descriptor_33_2;
  v0[14] = v5;
  [v1 fetchItemForURL:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = specialized FINodeEntityQuery.item(for:);
  }

  else
  {
    v2 = specialized FINodeEntityQuery.item(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t specialized FINodeEntityQuery.entities(forSearchableItems:)(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = *(type metadata accessor for FINodeEntity() - 8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized FINodeEntityQuery.entities(forSearchableItems:), 0, 0);
}

uint64_t specialized FINodeEntityQuery.entities(forSearchableItems:)()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = v0[3];
    v17 = v1 & 0xFFFFFFFFFFFFFF8;
    v18 = v1 & 0xC000000000000001;
    v5 = v0[2] + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18)
      {
        v7 = MEMORY[0x24C1FC540](v3, v0[2]);
      }

      else
      {
        if (v3 >= *(v17 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v5 + 8 * v3);
      }

      v8 = v7;
      v1 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v9 = [objc_allocWithZone(MEMORY[0x277CC63E8]) initWithSearchableItem_];
      if (v9)
      {
        v11 = v0[4];
        v10 = v0[5];
        FINodeEntity.init(item:)(v9, v11);

        outlined init with take of FINodeEntity(v11, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v6);
        }

        v14 = v0[5];
        v6[2] = v13 + 1;
        outlined init with take of FINodeEntity(v14, v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
      }

      else
      {
      }

      ++v3;
      if (v1 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  v15 = v0[1];

  return v15(v6);
}

uint64_t partial apply for closure #1 in closure #1 in FINodeEntityQuery.entities(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FileEntityIdentifier() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return closure #1 in closure #1 in FINodeEntityQuery.entities(for:)(a1, v6, v7, v1 + v5);
}

uint64_t TagsSectionManager.__allocating_init(configuration:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  TagsSectionManager.init(configuration:mutableSectionsData:dataSource:)(a1, a2, a3);
  return v6;
}

Swift::Void __swiftcall TagsSectionManager.startObserving()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {
    v3 = *MEMORY[0x277D061D0];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = objc_opt_self();

    v6 = [v5 mainQueue];
    (*(*v2 + 144))(v3, v16, v6, partial apply for closure #1 in TagsSectionManager.startObserving(), v4);

    outlined destroy of Any?(v16);
    v7 = *(v1 + 48);
    if (v7)
    {
      v8 = *MEMORY[0x277D764E0];
      memset(v16, 0, sizeof(v16));
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = objc_opt_self();

      v11 = [v10 mainQueue];
      (*(*v7 + 152))(v8, v16, v11, partial apply for closure #2 in TagsSectionManager.startObserving(), v9);

      outlined destroy of Any?(v16);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v15 = v14(5);

    if (closure #1 in closure #1 in DOCSidebarViewController.startUpdatingTags()(v15))
    {
      DOCTabSidebarDataSource.updateTabsIfNeeded()();
    }
  }
}

Swift::Void __swiftcall TagsSectionManager.stopObserving()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {
    v3 = *(*v2 + 160);

    v3(v4);
  }

  *(v1 + 48) = 0;
}

id TagsSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized TagsSectionManager.generateTabGroup(using:alertPresenting:)(a1, v2, ObjectType, a2);
}

void TagsSectionManager.dataSource.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*TagsSectionManager.dataSource.modify(uint64_t *a1))(id **a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationSectionManager.dataSource.modify;
}

uint64_t TagsSectionManager.init(configuration:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = 5;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC011TagsSectionC0CGMd);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = a1;

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  *(v7 + 24) = v9;
  swift_weakAssign();

  *(v3 + 48) = v7;

  return v3;
}

uint64_t closure #1 in TagsSectionManager.startObserving()()
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D061C8];
    v6 = *MEMORY[0x277D061C8];
    type metadata accessor for DOCTagRegistryChangeKey(0);
    lazy protocol witness table accessor for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey();
    v3 = v2;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
      outlined destroy of AnyHashable(v7);

      result = swift_dynamicCast();
      if ((result & 1) != 0 && v6 == 1)
      {
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          TagsSectionManager.updateSection()();
        }
      }
    }

    else
    {

      return outlined destroy of AnyHashable(v7);
    }
  }

  return result;
}

Swift::Void __swiftcall TagsSectionManager.updateSection()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v3 = v2(5);

    if (closure #1 in closure #1 in DOCSidebarViewController.startUpdatingTags()(v3))
    {
      DOCTabSidebarDataSource.updateTabsIfNeeded()();
    }
  }
}

void closure #2 in TagsSectionManager.startObserving()()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

      v3 = v2(5);

      if (closure #1 in closure #1 in DOCSidebarViewController.startUpdatingTags()(v3))
      {
        DOCTabSidebarDataSource.updateTabsIfNeeded()();
      }
    }

    else
    {
    }
  }
}

void TagsSectionManager.addTag(_:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA0290;
  *(v3 + 32) = a1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v4 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 addTags:isa options:0];

  TagsSectionManager.updateSection()();
}

uint64_t TagsSectionManager.removeTag(_:from:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static DOCTagManager.shared;
  v15 = a1;
  v16 = 0;
  v17 = 0;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a2;
  v11 = *((*MEMORY[0x277D85000] & *v8) + 0x60);
  v12 = a1;

  v13 = a2;
  v11(&v15, partial apply for closure #1 in TagsSectionManager.removeTag(_:from:completion:), v10);

  outlined consume of DOCTagManagerAction(v15, v16, v17);
}

uint64_t closure #1 in TagsSectionManager.removeTag(_:from:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        v13 = __CocoaSet.count.getter();
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_4:
        TagsSectionManager.showDeleteConfirmation(for:itemCount:from:completion:)(a4, v13, a7, a5, a6);
      }
    }

    specialized TagsSectionManager.deleteTag(_:)(a4);
    a5(1);
  }

  return result;
}

void TagsSectionManager.showDeleteConfirmation(for:itemCount:from:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = _DocumentManagerBundle();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = v10;
  v50 = a3;
  v12.value._object = 0xEB00000000656C62;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v57._object = 0xE000000000000000;
  v13._object = 0x8000000249BF7E90;
  v13._countAndFlagsBits = 0xD000000000000037;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v57);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9FA70;
  v16 = [a1 displayName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v15 + 56) = MEMORY[0x277D837D0];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v21 = MEMORY[0x277D83C10];
  *(v15 + 96) = MEMORY[0x277D83B88];
  *(v15 + 104) = v21;
  *(v15 + 64) = v20;
  *(v15 + 72) = a2;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  v25 = MEMORY[0x24C1FAD20](v22, v24);

  v26 = [objc_opt_self() alertControllerWithTitle:0 message:v25 preferredStyle:1];

  v27 = _DocumentManagerBundle();
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v27;
  v58._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0x6C65636E6143;
  v29._object = 0xE600000000000000;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v58);

  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = a5;

  v34 = MEMORY[0x24C1FAD20](v32._countAndFlagsBits, v32._object);

  v55 = partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter;
  v56 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v54 = &block_descriptor_49_6;
  v35 = _Block_copy(&aBlock);

  v36 = objc_opt_self();
  v37 = [v36 actionWithTitle:v34 style:1 handler:v35];
  _Block_release(v35);

  [v26 addAction_];
  v38 = _DocumentManagerBundle();
  if (v38)
  {
    v39 = v38;
    v59._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0x54206574656C6544;
    v40._object = 0xEA00000000006761;
    v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v41.value._object = 0xEB00000000656C62;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v59);

    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = a1;
    v45[4] = a4;
    v45[5] = a5;

    v46 = a1;
    v47 = MEMORY[0x24C1FAD20](v43._countAndFlagsBits, v43._object);

    v55 = partial apply for closure #2 in TagsSectionManager.showDeleteConfirmation(for:itemCount:from:completion:);
    v56 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v54 = &block_descriptor_56_3;
    v48 = _Block_copy(&aBlock);

    v49 = [v36 actionWithTitle:v47 style:2 handler:v48];
    _Block_release(v48);

    [v26 addAction_];
    [v50 presentViewController:v26 animated:1 completion:0];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t closure #2 in TagsSectionManager.showDeleteConfirmation(for:itemCount:from:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    specialized TagsSectionManager.deleteTag(_:)(a3);
  }

  return a4(1);
}

void TagsSectionManager.renameTag(_:to:completion:)(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = a2;
    v8 = [a1 labelIndex];
    v9 = [a1 type];
    v10 = [a1 itemCount];
    v11 = [a1 sidebarVisible];
    v12 = [a1 sidebarPinned];
    v13 = objc_allocWithZone(MEMORY[0x277D06260]);
    v14 = MEMORY[0x24C1FAD20](v6, a3);
    v20 = [v13 initWithDisplayName:v14 labelIndex:v8 type:v9 itemCount:v10 sidebarVisible:v11 sidebarPinned:v12];

    v15 = objc_opt_self();
    v16 = [v15 sharedInstance];
    LODWORD(v6) = [v16 canReplaceTag:a1 withTag:v20];

    if (v6)
    {
      v17 = [v15 sharedInstance];
      [v17 replaceTag:a1 withTag:v20];

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    a4(v18);
  }

  else
  {
    a4(0);
  }
}

id TagsSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  aBlock = v26;
  v22 = v27;
  if (!*(&v27 + 1))
  {
    outlined destroy of Any?(&aBlock);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v25;
  result = _DocumentManagerBundle();
  if (result)
  {
    v5 = result;
    v28._object = 0x8000000249BC9970;
    v6._countAndFlagsBits = 0x6574656C6544;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v6._object = 0xE600000000000000;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD00000000000001BLL;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v28);

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v3;
    v11[4] = a2;

    v12 = v3;
    v13 = a2;
    v14 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);

    v23 = partial apply for closure #1 in TagsSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:);
    v24 = v11;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
    *(&v22 + 1) = &block_descriptor_140;
    v15 = _Block_copy(&aBlock);
    v16 = [objc_opt_self() contextualActionWithStyle:1 title:v14 handler:v15];

    _Block_release(v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249BA0290;
    *(v17 + 32) = v16;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction);
    v18 = v16;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = [objc_opt_self() configurationWithActions_];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TagsSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a3();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  TagsSectionManager.removeTag(_:from:completion:)(a6, a7, partial apply for closure #1 in closure #1 in FavoritesSectionManager.trailingSwipeActionsConfiguration(for:alertPresenting:), v11);
}

id TagsSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v21 = v27;
  v22 = v28;
  if (!*(&v28 + 1))
  {
    outlined destroy of Any?(&v21);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v26;
  v5 = [objc_allocWithZone(DOCActionManager) init];
  isa = [a2 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setActions_];

  v7 = [a2 effectiveAppearance];
  v8 = *(v2 + 24);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for DOCActionContext();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_appearance] = v7;
  *&v11[OBJC_IVAR___DOCActionContext_configuration] = v8;
  *&v11[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v11[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_userInfo] = v9;
  v25.receiver = v11;
  v25.super_class = v10;
  v12 = v8;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v25, sel_init);
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v4;
  v15[4] = v14;
  v15[5] = v2;
  v15[6] = v13;
  v16 = objc_opt_self();
  v23 = partial apply for closure #1 in TagsSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v24 = v15;
  *&v21 = MEMORY[0x277D85DD0];
  *(&v21 + 1) = 1107296256;
  *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  *(&v22 + 1) = &block_descriptor_15_5;
  v17 = _Block_copy(&v21);
  v18 = v13;

  v19 = [v16 configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];

  _Block_release(v17);
  return v19;
}

id closure #1 in TagsSectionManager.contextMenuConfiguration(for:alertPresenting:)(int a1, id a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v91 = MEMORY[0x277D84F90];
  v9 = [a2 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a2 associatedActionManagers];
  type metadata accessor for DOCActionManager(0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Sequence.flatMap<A>(_:)(v12);

  specialized Array.append<A>(contentsOf:)(v13);
  v14 = v10;
  v88 = a6;
  v87 = a4;
  if (!(v10 >> 62))
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_24:

    v28 = a3;
    goto LABEL_25;
  }

LABEL_23:
  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_3:
  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1FC540](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v20 = [v17 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_17;
    }

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_24;
    }
  }

LABEL_17:

  result = _DocumentManagerBundle();
  v28 = a3;
  if (!result)
  {
    goto LABEL_34;
  }

  v29 = result;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v30._countAndFlagsBits = 0xD000000000000012;
  swift__string._object = 0x8000000249BD3FE0;
  v30._object = 0x8000000249BD3FC0;
  swift__string._countAndFlagsBits = 0xD00000000000004ALL;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, swift__string);

  v33 = MEMORY[0x24C1FAD20](0x7571732E73756C70, 0xEB00000000657261);
  v34 = [objc_opt_self() systemImageNamed_];

  v35 = swift_allocObject();
  v35[2] = a3;
  v35[3] = v87;
  v35[4] = a2;
  v35[5] = v18;
  v36 = a3;
  v37 = v87;
  v38 = a2;
  v39 = v18;
  v40 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  *(preferredElementSize + 32) = v40;
  v42 = v40;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v92.value.super.isa = 0;
  v92.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, v43, 0, v92, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  MEMORY[0x24C1FB090]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v28 = a3;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_25:
  result = _DocumentManagerBundle();
  if (result)
  {
    v45 = result;
    swift__stringa._object = 0x8000000249BF7E10;
    v46._countAndFlagsBits = 0xE220656D616E6552;
    v46._object = 0xAF9D80E240259C80;
    v47.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v47.value._object = 0xEB00000000656C62;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    swift__stringa._countAndFlagsBits = 0xD000000000000028;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, swift__stringa);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_249B9A480;
    v50 = [v28 displayName];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    *(v49 + 56) = MEMORY[0x277D837D0];
    v54 = lazy protocol witness table accessor for type String and conformance String();
    *(v49 + 64) = v54;
    *(v49 + 32) = v51;
    *(v49 + 40) = v53;
    static String.localizedStringWithFormat(_:_:)();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v55 = MEMORY[0x24C1FAD20](0x6C69636E6570, 0xE600000000000000);
    v56 = objc_opt_self();
    v57 = [v56 systemImageNamed_];

    v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_249BA0290;
    *(v59 + 32) = v58;
    v90 = v58;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v93.value.super.isa = 0;
    v93.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v61, v60, 0, v93, 1, 0xFFFFFFFFFFFFFFFFLL, v59, 0);
    MEMORY[0x24C1FB090]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = _DocumentManagerBundle();
    if (result)
    {
      v62 = result;
      swift__stringb._object = 0x8000000249BF7E60;
      v63._object = 0x8000000249BF7E40;
      v63._countAndFlagsBits = 0x1000000000000013;
      v64.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v64.value._object = 0xEB00000000656C62;
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      swift__stringb._countAndFlagsBits = 0xD000000000000028;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, swift__stringb);

      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_249B9A480;
      v67 = [v28 displayName];
      v68 = v28;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = v54;
      *(v66 + 32) = v69;
      *(v66 + 40) = v71;
      static String.localizedStringWithFormat(_:_:)();

      v72 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
      v73 = [v56 systemImageNamed_];

      v74 = swift_allocObject();
      swift_weakInit();
      v75 = swift_allocObject();
      v75[2] = v74;
      v75[3] = v68;
      v75[4] = v88;
      v76 = v68;
      v77 = v88;
      v78 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_249BA0290;
      *(v79 + 32) = v78;
      v80 = v78;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      v94.value.super.isa = 0;
      v94.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v82, v81, 0, v94, 1, 0xFFFFFFFFFFFFFFFFLL, v79, 2);
      MEMORY[0x24C1FB090]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      v95.value.super.isa = 0;
      v95.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v91, v83, 0, v95, 0, 0xFFFFFFFFFFFFFFFFLL, v91, children);
      v85 = v84;

      return v85;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void closure #2 in closure #1 in TagsSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag_];
  v8 = *(a3 + OBJC_IVAR___DOCActionContext_appearance);
  v9 = *(a3 + OBJC_IVAR___DOCActionContext_configuration);
  v10 = *(a3 + OBJC_IVAR___DOCActionContext_presentingViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = 0xD000000000000036;
  *(inited + 40) = 0x8000000249BD4210;
  v12 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  *(inited + 48) = v7;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000035;
  *(inited + 88) = 0x8000000249BE3C70;
  v13 = v7;
  v14 = [a2 displayName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v15;
  *(inited + 104) = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  swift_arrayDestroy();
  v19 = type metadata accessor for DOCActionContext();
  v20 = objc_allocWithZone(v19);
  swift_unknownObjectWeakInit();
  *&v20[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v20[OBJC_IVAR___DOCActionContext_appearance] = v8;
  *&v20[OBJC_IVAR___DOCActionContext_configuration] = v9;
  *&v20[OBJC_IVAR___DOCActionContext_presentingViewController] = v10;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v20[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v20[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v20[OBJC_IVAR___DOCActionContext_userInfo] = v18;
  v26.receiver = v20;
  v26.super_class = v19;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  specialized DOCActionManager.perform(_:on:actionContext:)(a5, MEMORY[0x277D84F90], v24);
}

uint64_t closure #4 in closure #1 in TagsSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    TagsSectionManager.removeTag(_:from:completion:)(a3, a4, partial apply for closure #1 in closure #4 in closure #1 in TagsSectionManager.contextMenuConfiguration(for:alertPresenting:), v7);
  }

  return result;
}

void closure #1 in closure #4 in closure #1 in TagsSectionManager.contextMenuConfiguration(for:alertPresenting:)(char a1, void *a2)
{
  if (a1)
  {
    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.Sidebar);
    v4 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      v8 = [v4 displayName];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v22);

      *(v6 + 4) = v12;
      v13 = "Tag successfully deleted: %s";
LABEL_10:
      _os_log_impl(&dword_2493AC000, oslog, v5, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1FE850](v7, -1, -1);
      MEMORY[0x24C1FE850](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.Sidebar);
    v15 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      v16 = [v15 displayName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

      *(v6 + 4) = v20;
      v13 = "Failed to delete tag: %s";
      goto LABEL_10;
    }
  }
}

id TagsSectionManager.sidebarItem(for:tab:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() itemFromRequest_];
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  aBlock = v26;
  v22 = v27;
  if (*(&v27 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    if (swift_dynamicCast())
    {
      v10 = v25;
      UITabSidebarItem.defaultContentConfiguration()();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      v13 = objc_allocWithZone(MEMORY[0x277D75E80]);
      v23 = partial apply for closure #1 in TagsSectionManager.sidebarItem(for:tab:);
      v24 = v12;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      *(&v22 + 1) = &block_descriptor_22_2;
      v14 = _Block_copy(&aBlock);

      v15 = v10;
      v16 = [v13 initWithDidEndHandler_];
      _Block_release(v14);

      v23 = closure #2 in LocationSectionManager.sidebarItem(for:tab:);
      v24 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
      *(&v22 + 1) = &block_descriptor_25_4;
      v17 = _Block_copy(&aBlock);
      [v16 setShouldChangeHandler_];
      _Block_release(v17);
      v23 = closure #3 in LocationSectionManager.sidebarItem(for:tab:);
      v24 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
      *(&v22 + 1) = &block_descriptor_28_6;
      v18 = _Block_copy(&aBlock);
      [v16 setShouldEndHandler_];
      _Block_release(v18);
      *(&v22 + 1) = v4;
      v23 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
      UITabSidebarItem.contentConfiguration.setter();

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock);
  }

  return v9;
}

uint64_t closure #1 in TagsSectionManager.sidebarItem(for:tab:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = [a1 text];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    TagsSectionManager.handleTagRename(tag:to:)(a3, v7, v9);
  }

  return result;
}

void TagsSectionManager.handleTagRename(tag:to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = objc_opt_self();
  v7 = MEMORY[0x24C1FAD20](a2, a3);
  v8 = [v6 sanitizedTagName_];

  if (v8)
  {
    v9 = [a1 labelIndex];
    v10 = [a1 type];
    v11 = [a1 itemCount];
    v12 = [a1 sidebarVisible];
    v13 = [a1 sidebarPinned];
    v25 = [objc_allocWithZone(MEMORY[0x277D06260]) initWithDisplayName:v8 labelIndex:v9 type:v10 itemCount:v11 sidebarVisible:v12 sidebarPinned:v13];

    if (specialized TagsSectionManager.canCommitTagChange(from:to:)(a1, v25))
    {
      if (specialized TagsSectionManager.commitTagChange(from:to:)(a1, v25))
      {
LABEL_10:

        return;
      }

      if (one-time initialization token for Sidebar != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.Sidebar);
      v15 = a1;

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136315394;
        v20 = [v15 displayName];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v26);

        *(v18 + 4) = v24;
        *(v18 + 12) = 2080;
        *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v26);
        _os_log_impl(&dword_2493AC000, v16, v17, "Failed to commit tag rename from %s to %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v19, -1, -1);
        MEMORY[0x24C1FE850](v18, -1, -1);
      }
    }

    TagsSectionManager.warnAboutInvalidTagName(_:)(a2, a3);
    goto LABEL_10;
  }

  TagsSectionManager.warnAboutInvalidTagName(_:)(a2, a3);
}

void TagsSectionManager.warnAboutInvalidTagName(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x280))();

    if (v6)
    {
      v7 = _DocumentManagerBundle();
      if (v7)
      {
        v8 = v7;
        v34._object = 0x8000000249BF7D40;
        v9._object = 0x8000000249BF7D20;
        v34._countAndFlagsBits = 0xD000000000000047;
        v9._countAndFlagsBits = 0xD000000000000014;
        v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v10.value._object = 0xEB00000000656C62;
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v34);

        v13 = _DocumentManagerBundle();
        if (v13)
        {
          v14 = v13;
          v35._object = 0x8000000249BF7DC0;
          v15._object = 0x8000000249BF7D90;
          v35._countAndFlagsBits = 0xD00000000000004CLL;
          v15._countAndFlagsBits = 0x1000000000000020;
          v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v16.value._object = 0xEB00000000656C62;
          v17._countAndFlagsBits = 0;
          v17._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_249B9A480;
          *(v18 + 56) = MEMORY[0x277D837D0];
          *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v18 + 32) = a1;
          *(v18 + 40) = a2;

          v19 = String.init(format:_:)();
          v21 = v20;

          v22 = MEMORY[0x24C1FAD20](v12._countAndFlagsBits, v12._object);

          v23 = MEMORY[0x24C1FAD20](v19, v21);

          v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

          v25 = _DocumentManagerBundle();
          if (v25)
          {
            v26 = v25;
            v36._object = 0xE200000000000000;
            v27._countAndFlagsBits = 19279;
            v27._object = 0xE200000000000000;
            v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v28.value._object = 0xEB00000000656C62;
            v29._countAndFlagsBits = 0;
            v29._object = 0xE000000000000000;
            v36._countAndFlagsBits = 19279;
            v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v36);

            v31 = MEMORY[0x24C1FAD20](v30._countAndFlagsBits, v30._object);

            v32 = [objc_opt_self() actionWithTitle:v31 style:0 handler:0];

            v33 = v24;
            [v33 addAction_];
            [v33 setPreferredAction_];

            [v6 presentViewController:v33 animated:1 completion:0];
            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

uint64_t TagsSectionManager.deinit()
{
  MEMORY[0x24C1FE970](v0 + 32);

  return v0;
}

uint64_t TagsSectionManager.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 32);

  return swift_deallocClassInstance();
}

id protocol witness for TabSectionManager.generateTabGroup(using:alertPresenting:) in conformance TagsSectionManager(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized TagsSectionManager.generateTabGroup(using:alertPresenting:)(a1, v2, ObjectType, a2);
}

uint64_t specialized TagsSectionManager.generateTabs(using:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**(a2 + 40) + 136))(5);
  v9 = v8;
  ObjectType = swift_getObjectType();
  result = (*(v9 + 72))(2, ObjectType, v9);
  v12 = result;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  v15 = *(result + 16);
  v16 = result - 16;
  v17 = &selRef__setLocationsInBrowseTab_;
LABEL_2:
  v18 = (v16 + 48 * v13);
  while (1)
  {
    if (v15 == v13)
    {
      swift_unknownObjectRelease();

      return v14;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    ++v13;
    v19 = (v18 + 3);
    v20 = v18[3];
    v21 = v18[4];
    *&v47[9] = *(v18 + 73);
    v46 = v20;
    *v47 = v21;
    v18 += 3;
    if (v47[24] == 2)
    {
      v38 = v7;
      v39 = v16;
      v22 = *v19;
      v23 = v46;
      outlined init with copy of DOCSidebarItem(&v46, &v43);
      v24 = v22;
      v25 = [v23 v17[312]];
      if (!v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = MEMORY[0x24C1FAD20](v26);
      }

      v40 = a1;
      v41 = a3;
      v42 = a4;
      v27 = (*(a4 + 8))(&v46, a3, a4);
      outlined destroy of DOCSidebarItem(&v46);
      v43 = 778527092;
      v44 = 0xE400000000000000;
      v28 = [v23 v17[312]];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      MEMORY[0x24C1FAEA0](v29, v31);

      v32 = v43;
      v33 = v44;
      v34 = objc_allocWithZone(MEMORY[0x277D75B08]);
      v35 = MEMORY[0x24C1FAD20](v32, v33);

      v36 = [v34 initWithTitle:v25 image:v27 identifier:v35 viewControllerProvider:0];

      [v36 setUserInfo_];
      v37 = outlined destroy of DOCSidebarItem(&v46);
      MEMORY[0x24C1FB090](v37);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v45;
      a3 = v41;
      a4 = v42;
      v16 = v39;
      a1 = v40;
      v17 = &selRef__setLocationsInBrowseTab_;
      v7 = v38;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id specialized TagsSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized TagsSectionManager.generateTabs(using:alertPresenting:)(a1, a2, a3, a4);
  if (v4 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [objc_opt_self() mainBundle];
  v19._object = 0xE000000000000000;
  v6._countAndFlagsBits = 1936154964;
  v6._object = 0xE400000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v19);

  v9 = MEMORY[0x24C1FAD20](6775156, 0xE300000000000000);
  v10 = [objc_opt_self() systemImageNamed_];

  v11 = objc_allocWithZone(MEMORY[0x277D75B30]);
  v12 = MEMORY[0x24C1FAD20](v8._countAndFlagsBits, v8._object);

  v13 = MEMORY[0x24C1FAD20](1936154996, 0xE400000000000000);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
  aBlock[3] = &block_descriptor_59_4;
  v15 = _Block_copy(aBlock);

  v16 = [v11 initWithTitle:v12 image:v10 identifier:v13 children:isa viewControllerProvider:v15];
  _Block_release(v15);

  return v16;
}

uint64_t specialized TagsSectionManager.displayOrderDidChange(for:)(unint64_t a1)
{
  v24 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_25:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_26:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = 0;
  v19 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if ([v6 userInfo])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v20 = 0u;
        v21 = 0u;
      }

      v22[0] = v20;
      v22[1] = v21;
      if (*(&v21 + 1))
      {
        break;
      }

      outlined destroy of Any?(v22);
LABEL_6:
      ++v5;
      if (v4 == v3)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    if ((swift_dynamicCast() & 1) == 0 || !v23)
    {
      goto LABEL_6;
    }

    MEMORY[0x24C1FB090]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v19 = v24;
  }

  while (v4 != v3);
LABEL_27:
  v8 = [objc_opt_self() sharedInstance];
  v9 = v19;
  if (v19 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v14 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = v9[v11 + 4];
      }

      v9 = v14;
      v15 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = [v8 userTags];
      v17 = [v16 indexOfObject_];

      if (v11 != v17)
      {
        [v8 moveTag:v9 toIndex:v11];
      }

      ++v11;
      v9 = v19;
      if (v15 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:
}

uint64_t specialized TagsSectionManager.validateDropOperation(for:onto:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    outlined destroy of Any?(v31);
    return 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v10 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  swift_getObjectType();
  if ((specialized static FPItem.sessionContainsDOCNode(_:)(a1, v10) & 1) == 0)
  {
    return 1;
  }

  static UTType.item.getter();
  v11 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, v9);
  (*(v5 + 8))(v9, v4);
  v12 = (v11 >> 62);
  if (v11 >> 62)
  {
LABEL_43:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    v21 = *(MEMORY[0x277D84F90] + 16);
    goto LABEL_22;
  }

  *&v31[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v14 = *&v31[0];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C1FC540](v16, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      v18 = [v17 providerDomainID];
      swift_unknownObjectRelease();
      *&v31[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v14 = *&v31[0];
      }

      ++v16;
      *(v14 + 16) = v21;
      *(v14 + 8 * v20 + 32) = v18;
    }

    while (v13 != v16);
LABEL_22:
    v22 = 0;
    do
    {
      v23 = v22;
      if (v21 == v22)
      {
        break;
      }

      if (v22 >= *(v14 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      ++v22;
    }

    while (!DOCProviderDomainIDIsSharedServerDomainID());

    if (v12)
    {
      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    v26 = *MEMORY[0x277CC6050];
    while (v24 != v25)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x24C1FC540](v25, v11);
        if (__OFADD__(v25, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v25 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v27 = *(v11 + 8 * v25 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v25, 1))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      v12 = [v27 canPerform_];
      swift_unknownObjectRelease();
      ++v25;
      if ((v12 & 1) == 0)
      {

        return 1;
      }
    }

    if (v21 == v23)
    {
      return 3;
    }

    return 1;
  }

  __break(1u);
  return result;
}

void specialized TagsSectionManager.performDrop(session:onto:alertPresenting:completion:)(void *a1, id a2, void *a3, void (*a4)(void))
{
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v9 = v10;
      specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(a1, a3, v8, v9);

      a4();
      return;
    }
  }

  else
  {
    v7 = outlined destroy of Any?(v13);
  }

  (a4)(v7);
}

void specialized TagsSectionManager.deleteTag(_:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249BA0290;
  *(v3 + 32) = a1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
  v4 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 removeTags_];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = v4;
  v12 = 0;
  v13 = 1;
  v6 = *((*MEMORY[0x277D85000] & *static DOCTagManager.shared) + 0x60);
  v7 = v4;
  v6(&v11, 0, 0);
  v8 = v11;
  v9 = v12;
  v10 = v13;

  outlined consume of DOCTagManagerAction(v8, v9, v10);
}

uint64_t specialized TagsSectionManager.canCommitTagChange(from:to:)(void *a1, id a2)
{
  v4 = [a2 displayName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 1;
  }

  v9 = [a2 displayName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [a1 displayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {

    return 1;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 1;
  }

  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 canReplaceTag:a1 withTag:a2];

  return v20;
}

uint64_t specialized TagsSectionManager.commitTagChange(from:to:)(void *a1, id a2)
{
  v4 = [a2 displayName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 displayName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {

    return 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return 1;
  }

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 replaceTag:a1 withTag:a2];

  if (v15)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v20 = a1;
    v21 = a2;
    v22 = 2;
    v16 = *((*MEMORY[0x277D85000] & *static DOCTagManager.shared) + 0x60);
    v17 = a1;
    v18 = a2;
    v16(&v20, 0, 0);
    outlined consume of DOCTagManagerAction(v20, v21, v22);
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey()
{
  result = lazy protocol witness table cache variable for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey;
  if (!lazy protocol witness table cache variable for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey)
  {
    type metadata accessor for DOCTagRegistryChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTagRegistryChangeKey and conformance DOCTagRegistryChangeKey);
  }

  return result;
}

uint64_t one-time initialization function for pdfBuildingAndWritingQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v11 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue = result;
  return result;
}

uint64_t *DOCDocumentScannerWriter.pdfBuildingAndWritingQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for pdfBuildingAndWritingQueue != -1)
  {
    swift_once();
  }

  return &static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;
}

id static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue.getter()
{
  if (one-time initialization token for pdfBuildingAndWritingQueue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;

  return v0;
}

void static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue.setter(uint64_t a1)
{
  if (one-time initialization token for pdfBuildingAndWritingQueue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;
  static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue = a1;
}

uint64_t (*static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue.modify())()
{
  if (one-time initialization token for pdfBuildingAndWritingQueue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue : DOCDocumentScannerWriter.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for pdfBuildingAndWritingQueue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;
  *a1 = static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;

  return v2;
}

void key path setter for static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue : DOCDocumentScannerWriter.Type(id *a1)
{
  v1 = one-time initialization token for pdfBuildingAndWritingQueue;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;
  static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue = v2;
}

id closure #1 in DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v78 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v78 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v78 - v20;
  v87 = [objc_allocWithZone(MEMORY[0x277CD93D8]) init];
  v22 = [a1 pageCount];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v23 = v22;
  v80 = a3;
  v81 = v9;
  v84 = a2;
  v85 = v17;
  v86 = v21;
  v82 = v11;
  v83 = v10;
  if (v22)
  {
    v24 = 0;
    do
    {
      v25 = MEMORY[0x24C1FDA70]();
      v26 = [a1 imageOfPageAtIndex_];
      v27 = [objc_allocWithZone(MEMORY[0x277CD93E8]) initWithImage_];
      if (v27)
      {
        v28 = v27;
        [v87 insertPage:v27 atIndex:{objc_msgSend(v87, sel_pageCount)}];
      }

      ++v24;

      objc_autoreleasePoolPop(v25);
    }

    while (v23 != v24);
  }

  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  v31 = [v30 temporaryDirectory];

  v32 = v86;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v34 = [v33 UUIDString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v85;
  URL.appendingPathComponent(_:)();

  v36 = [v29 defaultManager];
  v37 = URL.path.getter();
  v38 = MEMORY[0x24C1FAD20](v37);

  LODWORD(v33) = [v36 fileExistsAtPath_];

  if (v33)
  {
    v39 = [v29 defaultManager];
    v40 = URL.path.getter();
    v41 = MEMORY[0x24C1FAD20](v40);

    v88._countAndFlagsBits = 0;
    v42 = [v39 removeItemAtPath:v41 error:&v88];

    countAndFlagsBits = v88._countAndFlagsBits;
    if (!v42)
    {
LABEL_14:
      v70 = v87;
      v71 = countAndFlagsBits;
      v72 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v73 = v81;
      v74 = v82;
      v75 = v83;
      (*(v82 + 56))(v81, 1, 1, v83);
      v84(v73);

      outlined destroy of CharacterSet?(v73, &_s10Foundation3URLVSgMd);
      v76 = *(v74 + 8);
      v76(v35, v75);
      return (v76)(v32, v75);
    }

    v44 = v88._countAndFlagsBits;
  }

  v45 = [v29 defaultManager];
  v46 = URL.path.getter();
  v47 = MEMORY[0x24C1FAD20](v46);

  v88._countAndFlagsBits = 0;
  v48 = [v45 createDirectoryAtPath:v47 withIntermediateDirectories:1 attributes:0 error:&v88];

  countAndFlagsBits = v88._countAndFlagsBits;
  if (!v48)
  {
    goto LABEL_14;
  }

  v49 = v88._countAndFlagsBits;
  result = _DocumentManagerBundle();
  v51 = v87;
  if (result)
  {
    v52 = result;
    v90._object = 0x8000000249BF7F90;
    v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v53.value._object = 0xEB00000000656C62;
    v54._countAndFlagsBits = 0xD000000000000019;
    v54._object = 0x8000000249BF7F50;
    v55._object = 0x8000000249BF7F70;
    v90._countAndFlagsBits = 0xD000000000000028;
    v55._countAndFlagsBits = 0xD000000000000010;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v53, v52, v55, v90);

    v88 = v56;

    MEMORY[0x24C1FAEA0](1717858350, 0xE400000000000000);

    v57 = v79;
    URL.appendingPathComponent(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22PDFDocumentWriteOptiona_yptGMd);
    inited = swift_initStackObject();
    v59 = *MEMORY[0x277CBF5D0];
    *(inited + 32) = *MEMORY[0x277CBF5D0];
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 64) = MEMORY[0x277D839B0];
    *(inited + 40) = 1;
    v60 = v59;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22PDFDocumentWriteOptiona_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSo22PDFDocumentWriteOptiona_yptMd);
    URL._bridgeToObjectiveC()(v61);
    v63 = v62;
    type metadata accessor for PDFDocumentWriteOption(0);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type PDFDocumentWriteOption and conformance PDFDocumentWriteOption, type metadata accessor for PDFDocumentWriteOption);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = [v51 writeToURL:v63 withOptions:isa];

    v66 = v84;
    if (v65)
    {
      v67 = v81;
      v68 = v82;
      v69 = v83;
      (*(v82 + 16))(v81, v57, v83);
      (*(v68 + 56))(v67, 0, 1, v69);
    }

    else
    {
      v67 = v81;
      v68 = v82;
      v69 = v83;
      (*(v82 + 56))(v81, 1, 1, v83);
    }

    v66(v67);

    outlined destroy of CharacterSet?(v67, &_s10Foundation3URLVSgMd);
    v77 = *(v68 + 8);
    v77(v57, v69);
    v77(v35, v69);
    return (v77)(v32, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pdfBuildingAndWritingQueue != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static DOCDocumentScannerWriter.pdfBuildingAndWritingQueue;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = partial apply for closure #1 in DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_141;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = a1;

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t FileEntitySpotlight.Source.__allocating_init(supportedContentTypes:shouldExcludeTrashedItems:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(a1, a2);
  return v4;
}

uint64_t FileEntitySpotlight.Source.fetchEntities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](FileEntitySpotlight.Source.fetchEntities(matching:), 0, 0);
}

uint64_t FileEntitySpotlight.Source.fetchEntities(matching:)()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_weakInit();
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  *v5 = v0;
  v5[1] = FileEntitySpotlight.Source.fetchEntities(matching:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x8000000249BF7FC0, partial apply for closure #1 in FileEntitySpotlight.Source.fetchEntities(matching:), v4, v6);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = FileEntitySpotlight.Source.fetchEntities(matching:);
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFINode();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FileEntitySpotlight.Source.fetchRecentEntities()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](FileEntitySpotlight.Source.fetchRecentEntities(), 0, 0);
}

{
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd);
  *v2 = v0;
  v2[1] = FileEntitySpotlight.Source.fetchRecentEntities();

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x8000000249BF7FE0, partial apply for closure #1 in FileEntitySpotlight.Source.fetchRecentEntities(), v1, v3);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = FileEntitySpotlight.Source.fetchRecentEntities();
  }

  else
  {

    v2 = DOCNode.fpfs_fetchFPItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void FileEntitySpotlight.Fetcher.start()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v27);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "FileEntitySpotlightFetcher (%s starting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = [*&v2[OBJC_IVAR____TtCO26DocumentManagerExecutables19FileEntitySpotlightP33_FB4DEB9AE6F9002B9B8E9CFF42E170BD7Fetcher_queryCollection] workingQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in FileEntitySpotlight.Fetcher.start();
  *(v14 + 24) = v13;
  v27[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v27[5] = v14;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  v27[2] = thunk for @escaping @callee_guaranteed () -> ();
  v27[3] = &block_descriptor_37_3;
  v15 = _Block_copy(v27);
  v16 = v2;

  dispatch_sync(v12, v15);

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v17 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136315138;
      v22 = [v17 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v27);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_2493AC000, v18, v19, "FileEntitySpotlightFetcher (%s started", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v20, -1, -1);
    }
  }
}

id FileEntitySpotlight.Source.configuration.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = closure #1 in FileEntitySpotlight.Source.configuration.getter(v0);
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id closure #1 in FileEntitySpotlight.Source.configuration.getter(uint64_t a1)
{
  v2 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier_];
  [v2 setInProcess_];
  [v2 setSupportsRemovableFileProviders_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setForbiddenActionIdentifiers_];

  [v2 setNeverCreateBookmarkForOpenInPlace_];
  [v2 setSkipDownload_];
  [v2 setMaximumNumberOfItemsToFetch_];
  [v2 setPresentingMakesCollectionFirstResponder_];
  [v2 setPickingItemsShouldBumpLastOpenDate_];
  [v2 setBrowserViewContext_];
  type metadata accessor for UTType();
  v6 = Array._bridgeToObjectiveC()().super.isa;
  [v2 setRecentDocumentsContentTypes_];

  if (*(a1 + 24) == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9A480;
    *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v7 + 40) = v8;
    v9 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setHiddenSourcesIdentifiers_];
  }

  return v2;
}

uint64_t FileEntitySpotlight.Source.init(supportedContentTypes:shouldExcludeTrashedItems:)(uint64_t a1, int a2)
{
  v3 = v2;
  v21 = a2;
  v20 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8, v9);
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18[0] = "fetchRecentEntities()";
  v18[1] = v12;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v19);
  *(v2 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v13.super.super.isa = NSNumber.init(integerLiteral:)(50).super.super.isa;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = v13;
  *(v2 + 16) = v20;
  *(v2 + 24) = v21;
  v14 = [objc_opt_self() defaultPermission];
  v15 = *MEMORY[0x277D06118];
  [v14 setHostIdentifier_];

  v16 = [objc_opt_self() sharedManager];
  [v16 setHostIdentifier_];

  return v3;
}

void FileEntitySpotlight.Source.fetchRecentEntities(completion:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for recentDocumentsSource != -1)
  {
    swift_once();
  }

  v5 = static DOCFileProviderSource.recentDocumentsSource;
  v6 = FileEntitySpotlight.Source.configuration.getter();
  isa = [v6 recentDocumentsContentTypes];

  if (!isa)
  {
    type metadata accessor for UTType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setDocumentContentTypes_];

  v8 = *(v3 + 56);
  v9 = objc_opt_self();
  v10 = v5;
  v11 = v8;
  v12 = [v9 recentDocumentsLocation];
  (*((*MEMORY[0x277D85000] & *v10) + 0x1B8))(&v119);
  v105 = v119;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v14;
  v104 = v13;
  v15 = v10;
  v109 = v11;
  v106 = v12;
  v16 = [v12 node];
  v17 = v15;
  v18 = [v17 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v107 = a2;
  if (v19 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v21 != v22)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {

      v23 = v109;
      goto LABEL_10;
    }

    v51 = [v17 identifier];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
    {

      __break(1u);
      return;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {
      __break(1u);
    }

    else
    {
      if (*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) == 1)
      {
        v57 = [objc_allocWithZone(MEMORY[0x277D061F8]) init];
        v58 = [v109 hostIdentifier];
        if (!v58)
        {
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = MEMORY[0x24C1FAD20](v59);
        }

        v101 = v57;
        [v57 setHostIdentifier_];

        v60 = [v109 maximumNumberOfItemsToFetch];
        v102 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v61 = *((*MEMORY[0x277D85000] & *v17) + 0x278);
        v62 = v61();
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
        if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
        {
          goto LABEL_25;
        }

        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v67)
        {
          goto LABEL_29;
        }

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
        if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
        {
LABEL_25:

LABEL_30:
          v68 = v101;
          [v101 setMaximumNumberOfItems_];
          v69 = [v109 recentDocumentsContentTypes];
          v25 = &selRef__setLocationsInBrowseTab_;
          if (!v69)
          {
            type metadata accessor for UTType();
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = Array._bridgeToObjectiveC()().super.isa;
            v68 = v101;
          }

          [v68 setAllowedContentTypes_];

          v70 = v68;
          goto LABEL_33;
        }

        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v82)
        {
LABEL_29:

          goto LABEL_30;
        }

        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;
        if (v83 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v85 == v86)
        {
        }

        else
        {
          v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v98 & 1) == 0)
          {
            v70 = v101;
            [v101 setMaximumNumberOfItems_];
            v100 = [v109 documentContentTypes];
            v25 = &selRef__setLocationsInBrowseTab_;
            if (!v100)
            {
              type metadata accessor for UTType();
              static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v100 = Array._bridgeToObjectiveC()().super.isa;
              v70 = v101;
            }

            [v70 setAllowedContentTypes_];
            goto LABEL_64;
          }
        }

        v99 = [v109 recentDocumentsContentTypes];
        v25 = &selRef__setLocationsInBrowseTab_;
        if (!v99)
        {
          type metadata accessor for UTType();
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = Array._bridgeToObjectiveC()().super.isa;
        }

        v70 = v101;
        [v101 setAllowedContentTypes_];

        if ([v109 maximumNumberOfItemsToFetch] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v101 setMaximumNumberOfItems_];
LABEL_33:
          v71 = [objc_opt_self() v25[274]];
          v72 = v61();

          v23 = v109;
          v73 = [v109 supportsRemovableFileProviders];

          v74 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(v72, v70, v73);
          v75 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
          v76 = v74;
          v29 = DOCNodeCollection.init(itemCollection:observedNode:)(v76, 0);

          swift_unknownObjectRelease();
          v16 = 0;
          v31 = v106;
          v32 = v105;
          v34 = v103;
          v33 = v104;
          v30 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          goto LABEL_11;
        }

        v100 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        [v101 setMaximumNumberOfItems_];
LABEL_64:

        goto LABEL_33;
      }

      v25 = &selRef__setLocationsInBrowseTab_;
      if (v16)
      {

        v29 = 0;
LABEL_48:
        v30 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
LABEL_49:
        v31 = v106;
        v32 = v105;
        v34 = v103;
        v33 = v104;
        v23 = v109;
        goto LABEL_11;
      }

      a2 = *(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (!a2)
      {

        v29 = 0;
LABEL_47:
        v16 = 0;
        goto LABEL_48;
      }

      v16 = a2;
      if ((FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0)
      {

        v87 = [objc_opt_self() defaultManager];
        v88 = [v87 rootCollectionForProviderDomain_];

        v89 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
        v90 = v88;
        v29 = DOCNodeCollection.init(itemCollection:observedNode:)(v90, 0);

        goto LABEL_46;
      }

      v77 = specialized static DOCRootNode.rootNode(for:)(v16);
      if (v77)
      {
        LOBYTE(v111) = 1;
        v29 = _s26DocumentManagerExecutables17DOCNodeCollectionC3for13configuration6source12extraOptionsACSo0D0_p_So16DOCConfigurationCSgAA21DOCFileProviderSourceCSgSo016NodeNotificationJ0VSgtcfCTf4ennnn_nSo6FINodeC_Tt3g5(v77, 0, v10, 0x100000000uLL);
LABEL_46:

        goto LABEL_47;
      }

      if (one-time initialization token for UI == -1)
      {
LABEL_51:
        v91 = type metadata accessor for Logger();
        __swift_project_value_buffer(v91, static Logger.UI);
        v92 = v16;
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v95 = 138412290;
          *(v95 + 4) = v92;
          *v96 = a2;
          v97 = v92;
          _os_log_impl(&dword_2493AC000, v93, v94, "Getting nil rootNode for %@", v95, 0xCu);
          outlined destroy of NSObject?(v96);
          MEMORY[0x24C1FE850](v96, -1, -1);
          MEMORY[0x24C1FE850](v95, -1, -1);
        }

        else
        {
        }

        v29 = 0;
        v16 = 0;
        v30 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        v25 = &selRef__setLocationsInBrowseTab_;
        goto LABEL_49;
      }
    }

    swift_once();
    goto LABEL_51;
  }

  v23 = v109;

LABEL_10:
  v25 = &selRef__setLocationsInBrowseTab_;
  v26 = [objc_opt_self() defaultManager];
  v27 = [v26 newTrashCollection];

  v28 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
  v29 = DOCNodeCollection.init(itemCollection:observedNode:)(v27, 0);
  swift_unknownObjectRelease();
  v16 = 0;
  v30 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  v31 = v106;
  v32 = v105;
  v34 = v103;
  v33 = v104;
LABEL_11:
  *&v111 = v17;
  *(&v111 + 1) = v23;
  LOBYTE(v112) = 0;
  *(&v112 + 1) = *v118;
  DWORD1(v112) = *&v118[3];
  *(&v112 + 1) = v31;
  LOWORD(v113) = v32;
  *(&v113 + 2) = v116;
  WORD3(v113) = v117;
  *(&v113 + 1) = v33;
  v114 = v34;
  *&v115 = v16;
  *(&v115 + 1) = v29;
  v35 = [objc_allocWithZone(MEMORY[0x277D061F8]) initWithConfiguration:*(v3 + 56) tags:0];
  [v35 setMaximumNumberOfItems_];
  v36 = [*(v3 + 56) v30[302]];
  if (!v36)
  {
    type metadata accessor for UTType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v35 setAllowedContentTypes_];

  v37 = [objc_opt_self() v25[274]];
  v38 = specialized FPItemManager.queryCollection(forIdentifier:properties:supportRemovableFileProviders:)(@"com.apple.DocumentManager.SpotlightFileProvider.recentDocuments", v35, 1);

  v39 = *MEMORY[0x277D060F8];
  v110[2] = v113;
  v110[3] = v114;
  v110[4] = v115;
  v110[0] = v111;
  v110[1] = v112;
  v40 = objc_opt_self();
  v41 = v38;
  v42 = v35;
  v43 = [v40 defaultPermission];
  v44 = specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v39, v35, v43, v110, 0);

  [v41 setItemFilteringPredicate_];
  [v41 setWorkingQueue_];
  v45 = objc_allocWithZone(type metadata accessor for FileEntitySpotlight.Fetcher());

  v46 = FileEntitySpotlight.Fetcher.init(queryCollection:completionHandler:)(v41, a1, v107);
  v47 = *(v3 + 48);
  *(v3 + 48) = v46;
  v48 = v46;

  v49 = *(v3 + 48);
  if (v49)
  {
    v50 = v49;
    FileEntitySpotlight.Fetcher.start()();
    outlined destroy of DOCItemCollectionConfiguration(&v111);
  }

  else
  {
    outlined destroy of DOCItemCollectionConfiguration(&v111);
  }
}