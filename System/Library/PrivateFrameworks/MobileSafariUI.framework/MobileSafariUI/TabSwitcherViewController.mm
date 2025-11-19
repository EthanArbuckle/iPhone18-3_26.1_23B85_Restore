@interface TabSwitcherViewController
- (BOOL)_canAddItemOnPage:(id)a3;
- (BOOL)_itemWithIdentifier:(id)a3 matchesSearchQuery:(id)a4;
- (BOOL)_switchToItemToActivateAnimated:(BOOL)a3;
- (BOOL)_validateDismissalToPage:(id)a3;
- (CGRect)capsuleReferenceFrame;
- (CGRect)frameForItemLinkedToCapsuleAtIndex:(int64_t)a3;
- (CGSize)snapshotSizeForSuggestedSize:(CGSize)result;
- (CollectionViewTabIndexProviding)capsuleIndexProvider;
- (TabSwitcherViewController)initWithTabController:(id)a3;
- (TabSwitcherViewControllerContaining)container;
- (TabThumbnailCollectionViewDelegate)delegate;
- (UIEdgeInsets)browserContentInsets;
- (WBTabGroup)visibleTabGroup;
- (id)_activeTab;
- (id)_borrowCapsuleViewForItem:(id)a3;
- (id)_defaultTabToSelectOnPage:(id)a3;
- (id)_dragItemsForItem:(id)a3;
- (id)_dropDestinationForSession:(id)a3 proposedDestination:(id)a4;
- (id)_itemForActiveTab;
- (id)_itemForTab:(id)a3;
- (id)_makeContent;
- (id)_manageTabGroupsMenu;
- (id)_menuElementsForPage:(id)a3 withSuggestedActions:(id)a4;
- (id)_menuForTabGroup:(id)a3 withSuggestedActions:(id)a4;
- (id)_tabForItem:(id)a3;
- (id)_tabGroupForPage:(id)a3;
- (id)_tabGroups;
- (id)_tabsForItems:(id)a3;
- (id)_titleForTab:(id)a3;
- (int64_t)presentationState;
- (void)_addItemOnPage:(id)a3;
- (void)_addPage:(id)a3;
- (void)_applyContent;
- (void)_closeItems:(id)a3 action:(id)a4;
- (void)_didScrollToPage:(id)a3;
- (void)_dismiss;
- (void)_dismissToPage:(id)a3;
- (void)_isInSteadyStateDidChange:(BOOL)a3;
- (void)_moveSections:(id)a3 toPage:(id)a4;
- (void)_performDropWithIntent:(id)a3;
- (void)_performIgnoringContentUpdates:(id)a3;
- (void)_presentTabGroupPickerSheet:(id)a3;
- (void)_selectTabWithUUID:(id)a3;
- (void)_setItems:(id)a3 arePinned:(BOOL)a4;
- (void)_setTitle:(id)a3 forPage:(id)a4;
- (void)_updateShareConfigurationForPage:(id)a3;
- (void)animateSwitchingToItemAtIndex:(int64_t)a3;
- (void)applyContentIfNeeded;
- (void)detachCapsuleForActiveTab;
- (void)didCancelDismissal;
- (void)didCompleteLaunch;
- (void)didDismiss;
- (void)didPresent;
- (void)dismissAnimated:(BOOL)a3;
- (void)dismissForUnlockingAnimated:(BOOL)a3;
- (void)loadView;
- (void)presentAnimated:(BOOL)a3;
- (void)scrollToTabGroup:(id)a3;
- (void)setDismissesOnUnlock:(BOOL)a3;
- (void)setNeedsApplyContentAnimated:(BOOL)a3;
- (void)setNeedsApplyContentWithAnimationSettings:(id)a3;
- (void)setNeedsScrollToTabGroup:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismiss;
- (void)willPresent;
@end

@implementation TabSwitcherViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = TabSwitcherViewController;
  [(TabSwitcherViewController *)&v5 loadView];
  [(TabSwitcherViewController *)self addChildViewController:self->_tabSwitcher];
  v3 = [(TabSwitcherViewController *)self view];
  v4 = [(SFTabSwitcher *)self->_tabSwitcher view];
  [v3 addSubview:v4];
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [(SFTabSwitcher *)self->_tabSwitcher didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  v68.receiver = self;
  v68.super_class = TabSwitcherViewController;
  [(TabSwitcherViewController *)&v68 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D28DD0]);
  objc_initWeak(&location, self);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke;
  v65[3] = &unk_2781DBDE8;
  objc_copyWeak(&v66, &location);
  [v3 setItemSelectionHandler:v65];
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_2;
    v63[3] = &unk_2781DBE10;
    objc_copyWeak(&v64, &location);
    [v3 setBorrowedCapsuleViewProvider:v63];
    objc_destroyWeak(&v64);
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_3;
  v61[3] = &unk_2781DBE38;
  objc_copyWeak(&v62, &location);
  [v3 setBorrowedContentViewProvider:v61];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_4;
  v59[3] = &unk_2781DBE60;
  objc_copyWeak(&v60, &location);
  [v3 setCanAddItemPredicate:v59];
  [v3 setCanHandleDropSession:&__block_literal_global_70];
  [v3 setCanShowTips:&__block_literal_global_16_0];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_7;
  v57[3] = &unk_2781DBEC8;
  objc_copyWeak(&v58, &location);
  [v3 setDidScrollToPageObserver:v57];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_8;
  v55[3] = &unk_2781DBEC8;
  objc_copyWeak(&v56, &location);
  [v3 setDismissHandler:v55];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_9;
  v53[3] = &unk_2781DBEF0;
  objc_copyWeak(&v54, &location);
  [v3 setDragItemProvider:v53];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_10;
  v51[3] = &unk_2781DBF18;
  objc_copyWeak(&v52, &location);
  [v3 setDropDestinationProvider:v51];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_11;
  v49[3] = &unk_2781DBF40;
  objc_copyWeak(&v50, &location);
  [v3 setDropHandler:v49];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_12;
  v47[3] = &unk_2781DBF68;
  objc_copyWeak(&v48, &location);
  [v3 setDropOperationProvider:v47];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_13;
  v45[3] = &unk_2781DBEC8;
  objc_copyWeak(&v46, &location);
  [v3 setItemAddHandler:v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_14;
  v43[3] = &unk_2781DBF90;
  objc_copyWeak(&v44, &location);
  [v3 setItemCloseHandler:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_15;
  v41[3] = &unk_2781DBFB8;
  objc_copyWeak(&v42, &location);
  [v3 setItemCopyHandler:v41];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_16;
  v39[3] = &unk_2781DBFB8;
  objc_copyWeak(&v40, &location);
  [v3 setItemDuplicateHandler:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_17;
  v37[3] = &unk_2781DBFE0;
  objc_copyWeak(&v38, &location);
  [v3 setItemMoveHandler:v37];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_18;
  v35[3] = &unk_2781DC008;
  objc_copyWeak(&v36, &location);
  [v3 setItemPinHandler:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_19;
  v33[3] = &unk_2781DBEC8;
  objc_copyWeak(&v34, &location);
  [v3 setPageInsertionHandler:v33];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_20;
  v31[3] = &unk_2781DC030;
  objc_copyWeak(&v32, &location);
  [v3 setPageRetitleHandler:v31];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_21;
  v29[3] = &unk_2781DC058;
  objc_copyWeak(&v30, &location);
  [v3 setPageTitleMenuProvider:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_22;
  v27[3] = &unk_2781DC080;
  objc_copyWeak(&v28, &location);
  [v3 setProfileMenuProvider:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_23;
  v25[3] = &unk_2781DC0A8;
  objc_copyWeak(&v26, &location);
  [v3 setRelinquishBorrowedCapsuleView:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_24;
  v23[3] = &unk_2781DC0D0;
  objc_copyWeak(&v24, &location);
  [v3 setRelinquishBorrowedContentView:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_25;
  v21[3] = &unk_2781DC0F8;
  objc_copyWeak(&v22, &location);
  [v3 setRecentlyClosedMenuProvider:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_26;
  v19[3] = &unk_2781DA428;
  objc_copyWeak(&v20, &location);
  [v3 setReducedMotionTransitionObserver:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_27;
  v17[3] = &unk_2781DB8B8;
  objc_copyWeak(&v18, &location);
  [v3 setShowPagePickerSheet:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_28;
  v15[3] = &unk_2781DA428;
  objc_copyWeak(&v16, &location);
  [v3 setSteadyStateObserver:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_29;
  v13[3] = &unk_2781DA428;
  objc_copyWeak(&v14, &location);
  [v3 setTabOverviewVisibilityObserver:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_30;
  v11[3] = &unk_2781D5598;
  objc_copyWeak(&v12, &location);
  [v3 setToggleSidebarHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__TabSwitcherViewController_viewDidLoad__block_invoke_31;
  v9[3] = &unk_2781DBE60;
  objc_copyWeak(&v10, &location);
  [v3 setValidateDismissal:v9];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __40__TabSwitcherViewController_viewDidLoad__block_invoke_32;
  v7 = &unk_2781DBEC8;
  objc_copyWeak(&v8, &location);
  [v3 setWillScrollToPageObserver:&v4];
  [(SFTabSwitcher *)self->_tabSwitcher applyConfiguration:v3, v4, v5, v6, v7];
  [(TabSwitcherViewController *)self _setNeedsApplyContent];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = TabSwitcherViewController;
  [(TabSwitcherViewController *)&v5 viewWillLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v4 = [WeakRetained transitionViewForReducedMotion];
  [(SFTabSwitcher *)self->_tabSwitcher setTransitionViewForReducedMotion:v4];

  [(TabSwitcherViewController *)self applyContentIfNeeded];
}

- (void)applyContentIfNeeded
{
  if (self->_updateInfo.needsApplyContent && !self->_updateInfo.ignoreCount && self->_hasCompletedLaunch)
  {
    [(TabSwitcherViewController *)self _applyContent];
  }
}

- (int64_t)presentationState
{
  result = [(SFTabSwitcher *)self->_tabSwitcher presentationState];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _willScrollToPage:v3];
}

uint64_t __40__TabSwitcherViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _canAddItemOnPage:v3];

  return v5;
}

- (void)_dismiss
{
  if ([(SFTabSwitcher *)self->_tabSwitcher isVisible])
  {
    if (self->_updateInfo.needsApplyContent)
    {
      [(TabSwitcherViewController *)self _applyContent];
    }

    v3 = [(SFTabSwitcher *)self->_tabSwitcher visiblePage];
    [(TabSwitcherViewController *)self _dismissToPage:v3];
  }
}

- (void)didCompleteLaunch
{
  self->_hasCompletedLaunch = 1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__TabSwitcherViewController_didCompleteLaunch__block_invoke;
  v2[3] = &unk_2781D4D40;
  v2[4] = self;
  [MEMORY[0x277D75D18] safari_performWithoutRetargetingAnimations:v2];
}

- (void)_applyContent
{
  v3 = objc_alloc_init(MEMORY[0x277D28E28]);
  if (self->_updateInfo.animated && -[SFTabSwitcher isVisible](self->_tabSwitcher, "isVisible") && [MEMORY[0x277D75D18] areAnimationsEnabled])
  {
    if (self->_updateInfo.animationSettings)
    {
      [v3 setAnimationSettings:?];
    }

    else
    {
      if (self->_updateInfo.identifierOfPageToScrollTo)
      {
        [MEMORY[0x277D28BB0] tabOverviewSwitcherScroll];
      }

      else
      {
        [MEMORY[0x277D28BB0] tabOverviewUpdate];
      }
      v4 = ;
      [v3 setAnimationSettings:v4];
    }
  }

  if (self->_updateInfo.identifierOfPageToScrollTo)
  {
    v5 = MEMORY[0x277D28E10];
    v6 = [objc_alloc(MEMORY[0x277D28DF0]) initWithIdentifier:self->_updateInfo.identifierOfPageToScrollTo];
    v7 = [v5 scrollPositionWithPage:v6];
    [v3 setTargetScrollPosition:v7];
  }

  tabSwitcher = self->_tabSwitcher;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__TabSwitcherViewController__applyContent__block_invoke;
  v11[3] = &unk_2781D4D40;
  v11[4] = self;
  [(SFTabSwitcher *)tabSwitcher performTransaction:v3 withUpdates:v11];
  identifierOfPageToScrollTo = self->_updateInfo.identifierOfPageToScrollTo;
  self->_updateInfo.identifierOfPageToScrollTo = 0;

  self->_updateInfo.animated = 0;
  animationSettings = self->_updateInfo.animationSettings;
  self->_updateInfo.animationSettings = 0;

  self->_updateInfo.needsApplyContent = 0;
}

void __42__TabSwitcherViewController__applyContent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[128];
  v3 = [v1 _makeContent];
  [v2 applyContent:v3];
}

- (id)_makeContent
{
  v3 = objc_alloc_init(MEMORY[0x277D28DD8]);
  if ([(TabController *)self->_tabController hasMultipleProfiles])
  {
    v4 = [(TabController *)self->_tabController activeProfile];
    v5 = objc_alloc(MEMORY[0x277D28E08]);
    v6 = [v4 title];
    v7 = [v5 initWithTitle:v6];

    v8 = [v4 symbolImage];
    [v7 setImage:v8];

    v9 = MEMORY[0x277D75348];
    v10 = [v4 color];
    v11 = [v9 safari_colorWithWBSNamedColorOption:v10];
    [v7 setTintColor:v11];
  }

  else
  {
    v7 = 0;
  }

  v12 = [(TabSwitcherViewController *)self _tabGroups];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __41__TabSwitcherViewController__makeContent__block_invoke;
  v20 = &unk_2781DC170;
  v21 = v7;
  v22 = self;
  v13 = v7;
  v14 = [v12 safari_mapAndFilterObjectsUsingBlock:&v17];
  [v3 setPages:{v14, v17, v18, v19, v20}];

  [v3 setProfileForInsertedPages:v13];
  v15 = [(TabSwitcherViewController *)self _itemForActiveTab];
  [v3 setSelectedItem:v15];

  return v3;
}

- (id)_tabGroups
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TabController *)self->_tabController privateTabGroupIfAvailable];
  [v3 safari_addObjectUnlessNil:v4];

  v5 = [(TabController *)self->_tabController unnamedTabGroup];
  [v3 safari_addObjectUnlessNil:v5];

  v6 = [(TabController *)self->_tabController namedTabGroups];
  [v3 addObjectsFromArray:v6];

  v7 = [v3 copy];

  return v7;
}

id __41__TabSwitcherViewController__makeContent__block_invoke(uint64_t a1, void *a2)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [v2 uuid];
  v5 = [v3 initWithUUIDString:v4];

  if (v5)
  {
    v6 = [v2 isPrivateBrowsing];
    v7 = [v2 isNamed];
    v8 = [objc_alloc(MEMORY[0x277D28DF0]) initWithIdentifier:v5];
    [v8 setAllowsLargeTitle:v7];
    [v8 setAllowsRetitling:v7];
    if (v7)
    {
      v9 = +[FeatureManager sharedFeatureManager];
      [v8 setAllowsSharing:{objc_msgSend(v9, "areSharedTabGroupsEnabled")}];
    }

    else
    {
      [v8 setAllowsSharing:0];
    }

    [v8 setCollapsesCapsuleViewWhenSelected:v7 ^ 1];
    if (v6)
    {
      v11 = [MEMORY[0x277D755B8] systemImageNamed:@"hand.raised.fill"];
      [v8 setImage:v11];

      [v8 setItemsCanMoveBetweenPages:0];
      v12 = 0;
    }

    else
    {
      [v8 setImage:0];
      [v8 setItemsCanMoveBetweenPages:1];
      v12 = *(a1 + 32);
    }

    [v8 setProfile:v12];
    v13 = [v2 displayTitle];
    [v8 setTitle:v13];

    v14 = [objc_alloc(MEMORY[0x277D28E18]) initWithIdentifier:v5];
    [v14 setIsPinned:1];
    v15 = [*(*(a1 + 40) + 1112) pinnedWBTabsForTabGroup:v2];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __41__TabSwitcherViewController__makeContent__block_invoke_54;
    v35[3] = &unk_2781DC148;
    v35[4] = *(a1 + 40);
    v16 = [v15 safari_mapAndFilterObjectsUsingBlock:v35];
    [v14 setItems:v16];

    v17 = [objc_alloc(MEMORY[0x277D28E18]) initWithIdentifier:v5];
    v18 = [v2 tabs];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__TabSwitcherViewController__makeContent__block_invoke_2;
    v34[3] = &unk_2781DC148;
    v34[4] = *(a1 + 40);
    v19 = [v18 safari_mapAndFilterObjectsUsingBlock:v34];
    [v17 setItems:v19];

    v36[0] = v14;
    v36[1] = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    [v8 setSections:v20];

    if (v6)
    {
      v21 = +[Application sharedApplication];
      v22 = [v21 isPrivateBrowsingLocked];

      if (v22)
      {
        objc_initWeak(&location, *(a1 + 40));
        v23 = MEMORY[0x277D28DF8];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __41__TabSwitcherViewController__makeContent__block_invoke_3;
        v31[3] = &unk_2781D5598;
        objc_copyWeak(&v32, &location);
        v24 = [v23 lockedPrivateBrowsingOverlayWithUnlockHandler:v31];
        [v8 setOverlay:v24];

        [v8 setIsLocked:1];
        v25 = [MEMORY[0x277D28E00] lockedPrivateBrowsing];
        [v8 setPeekingOverlay:v25];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      else
      {
        if (([v8 hasAnyItems] & 1) == 0)
        {
          v26 = [MEMORY[0x277D28DF8] emptyPrivateBrowsing];
          [v8 setOverlay:v26];
        }

        v27 = [MEMORY[0x277D28E00] privateBrowsing];
        [v8 setPeekingOverlay:v27];
      }
    }

    v28 = [*(*(a1 + 40) + 1112) cachedTabSwitcherShareConfigurationForTabGroup:v2];
    if (v28)
    {
      [v8 setShareConfiguration:v28];
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __41__TabSwitcherViewController__makeContent__block_invoke_cold_1(v10, v2);
    }

    v8 = 0;
  }

  return v8;
}

void __41__TabSwitcherViewController__makeContent__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained tabController];
  [v1 authenticateToUnlockPrivateBrowsing];
}

- (id)_itemForActiveTab
{
  v3 = [(TabSwitcherViewController *)self _activeTab];
  if (v3)
  {
    v4 = [(TabSwitcherViewController *)self _itemForTab:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_activeTab
{
  v2 = [(TabController *)self->_tabController activeTabDocument];
  v3 = [v2 tabGroupTab];

  return v3;
}

- (TabSwitcherViewController)initWithTabController:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = TabSwitcherViewController;
  v6 = [(TabSwitcherViewController *)&v23 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D28F08] settings];
    v8 = [v5 browserWindowUUID];
    v6->_dismissesOnUnlock = [v7 tabViewDismissesOnUnlockForWindowWithUUID:v8];

    v9 = [[TabDocumentDropHandler alloc] initWithAlertPresentationViewController:v6];
    dropHandler = v6->_dropHandler;
    v6->_dropHandler = v9;

    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    presentationObservers = v6->_presentationObservers;
    v6->_presentationObservers = v11;

    objc_storeStrong(&v6->_tabController, a3);
    v13 = objc_alloc(MEMORY[0x277D28DC8]);
    v14 = [v5 tabCollectionViewProvider];
    v15 = [v14 iconPool];
    v16 = [v5 tabCollectionViewProvider];
    v17 = [v16 snapshotPool];
    v18 = [v13 initWithTabIconPool:v15 tabSnapshotPool:v17];
    tabSwitcher = v6->_tabSwitcher;
    v6->_tabSwitcher = v18;

    [(SFTabSwitcher *)v6->_tabSwitcher setPresentationObserver:v6];
    v20 = [v5 tabGroupManager];
    [v20 addTabGroupObserver:v6];

    v21 = v6;
  }

  return v6;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 identifier];
    v5 = [v4 UUIDString];
    [WeakRetained _selectTabWithUUID:v5];
  }
}

id __40__TabSwitcherViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _borrowCapsuleViewForItem:v3];

  return v5;
}

id __40__TabSwitcherViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 136);
    v7 = v5[139];
    v8 = [v3 identifier];
    v9 = [v7 tabWithUUID:v8];
    v10 = [v9 tabCollectionItem];
    v11 = [v6 tabCollectionView:v5 borrowContentViewControllerForItem:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __40__TabSwitcherViewController_viewDidLoad__block_invoke_6()
{
  v0 = +[LaunchStateController sharedController];
  v1 = [v0 hasCompletedLaunch];

  return v1;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didScrollToPage:v3];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissToPage:v3];
}

void *__40__TabSwitcherViewController_viewDidLoad__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dragItemsForItem:v3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

void *__40__TabSwitcherViewController_viewDidLoad__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _dropDestinationForSession:v6 proposedDestination:v5];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  return v9;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDropWithIntent:v3];
}

unint64_t __40__TabSwitcherViewController_viewDidLoad__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 139);
    v10 = [v5 identifier];
    v11 = [v10 UUIDString];
    v12 = [v9 tabGroupWithUUID:v11];
    v13 = [v12 isPrivateBrowsing];

    v14 = [TabDocumentDropHandler proposedOperationForSession:v6 intoWindowWithPrivateBrowsingEnabled:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addItemOnPage:v3];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _closeItems:v8 action:v5];
    [v7 _applyContent];
  }
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_15(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x277D75810] generalPasteboard];
    v5 = [WeakRetained _tabsForItems:v6];
    [v4 safari_copyLinksForTabs:v5];
  }
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_16(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[139];
    v6 = [WeakRetained _tabsForItems:v7];
    [v5 duplicateWBTabs:v6];
  }
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _moveSections:v8 toPage:v5];
    [v7 _applyContent];
  }
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setItems:v7 arePinned:a3];
    [v6 _applyContent];
  }
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_19(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addPage:v5];
    [v4 _applyContent];
  }
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setTitle:v5 forPage:v8];
    [v7 _applyContent];
  }
}

id __40__TabSwitcherViewController_viewDidLoad__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _menuElementsForPage:v6 withSuggestedActions:v5];

  return v8;
}

id __40__TabSwitcherViewController_viewDidLoad__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tabController];
  v3 = [v2 menuForSwitchingProfilesQuickly];

  return v3;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained container];
  [v4 relinquishBorrowedCapsuleView:v3];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 136);
    v9 = v7[139];
    v10 = [v5 identifier];
    v11 = [v9 tabWithUUID:v10];
    v12 = [v11 tabCollectionItem];
    [v8 tabCollectionView:v7 relinquishBorrowedContentViewController:v13 forItem:v12];
  }
}

id __40__TabSwitcherViewController_viewDidLoad__block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained tabController];
  v6 = [v3 identifier];

  v7 = [v6 UUIDString];
  v8 = [v5 recentlyClosedTabsMenuForTabGroupWithUUID:v7];

  return v8;
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_26(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained container];
  [v3 tabOverviewDidChangePerformingReducedMotionTransition:a2];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentTabGroupPickerSheet:v3];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_28(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _isInSteadyStateDidChange:a2];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_29(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained container];
  [v3 tabOverviewVisibilityDidChange:a2];
}

void __40__TabSwitcherViewController_viewDidLoad__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained container];
  [v1 toggleSidebar];
}

uint64_t __40__TabSwitcherViewController_viewDidLoad__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _validateDismissalToPage:v3];

  return v5;
}

- (id)_borrowCapsuleViewForItem:(id)a3
{
  tabController = self->_tabController;
  v5 = [a3 identifier];
  v6 = [(TabController *)tabController tabWithUUID:v5];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v8 = [WeakRetained borrowCapsuleViewForTab:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)detachCapsuleForActiveTab
{
  v3 = [(TabSwitcherViewController *)self _itemForActiveTab];
  if (v3)
  {
    v4 = v3;
    [(SFTabSwitcher *)self->_tabSwitcher detachBorrowedCapsuleForItem:v3];
    v3 = v4;
  }
}

- (void)setNeedsApplyContentAnimated:(BOOL)a3
{
  animated = self->_updateInfo.animated;
  if (a3 && !self->_updateInfo.animated)
  {
    animated = self->_hasCompletedLaunch;
  }

  self->_updateInfo.animated = animated;
  [(TabSwitcherViewController *)self _setNeedsApplyContent];
  v5 = [(TabSwitcherViewController *)self view];
  [v5 setNeedsLayout];

  objc_initWeak(&location, self);
  v6 = *MEMORY[0x277D76620];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TabSwitcherViewController_setNeedsApplyContentAnimated___block_invoke;
  v7[3] = &unk_2781D5598;
  objc_copyWeak(&v8, &location);
  [v6 _performBlockAfterCATransactionCommits:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__TabSwitcherViewController_setNeedsApplyContentAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained applyContentIfNeeded];
    WeakRetained = v2;
  }
}

- (void)setNeedsApplyContentWithAnimationSettings:(id)a3
{
  v4 = a3;
  [(TabSwitcherViewController *)self setNeedsApplyContentAnimated:1];
  animationSettings = self->_updateInfo.animationSettings;
  self->_updateInfo.animationSettings = v4;
}

- (id)_itemForTab:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v4 uuid];
  v7 = [v5 initWithUUIDString:v6];

  if (v7)
  {
    v8 = [(TabController *)self->_tabController tabDocumentWithUUID:v7];
    v9 = [objc_alloc(MEMORY[0x277D28DE8]) initWithIdentifier:v7];
    [v9 setCanBeClosed:{-[TabController canCloseWBTab:](self->_tabController, "canCloseWBTab:", v4)}];
    [v9 setCanBeCopied:{objc_msgSend(v4, "hasLinkToCopy")}];
    [v9 setCanBePinned:{-[TabController isTabPinnable:](self->_tabController, "isTabPinnable:", v4)}];
    [v9 setIsInteractivelyInserted:{objc_msgSend(v8, "isInteractivelyInserted")}];
    [v9 setMediaStateIcon:{objc_msgSend(v8, "mediaStateIcon")}];
    objc_initWeak(location, self);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __41__TabSwitcherViewController__itemForTab___block_invoke;
    v29 = &unk_2781DC120;
    objc_copyWeak(&v31, location);
    v10 = v7;
    v30 = v10;
    [v9 setSearchPredicate:&v26];
    v11 = [(TabController *)self->_tabController tabWithUUID:v10, v26, v27, v28, v29];
    [v9 setIsUnread:{objc_msgSend(v11, "isUnread")}];
    v12 = [v11 shareParticipants];
    [v9 setShareParticipants:v12];

    v13 = [(TabSwitcherViewController *)self _titleForTab:v4];
    [v9 setTitle:v13];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = [v4 uuid];
    if (v8)
    {
      v14 = [(TabController *)self->_tabController tabGroupRelatedToTabWithUUID:v8];
    }

    else
    {
      v14 = 0;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = v15;
      if ([v4 isInUnnamedTabGroup])
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v19 = v18;
      if ([v4 isPinned])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      if ([v4 isPrivateBrowsing])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v23 = v22;
      v24 = [v14 profileIdentifier];
      v25 = [v14 uuid];
      *location = 138544642;
      *&location[4] = v8;
      v33 = 2114;
      v34 = v19;
      v35 = 2114;
      v36 = v21;
      v37 = 2114;
      v38 = v23;
      v39 = 2114;
      v40 = v24;
      v41 = 2114;
      v42 = v25;
      _os_log_fault_impl(&dword_215819000, v17, OS_LOG_TYPE_FAULT, "Unexpectedly found tab with invalid UUID %{public}@. inUnnamedGroup = %{public}@; pinned = %{public}@; private = %{public}@; profileIdentifier = %{public}@; tabGroupUUID = %{public}@", location, 0x3Eu);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t __41__TabSwitcherViewController__itemForTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _itemWithIdentifier:*(a1 + 32) matchesSearchQuery:v3];

  return v5;
}

id __41__TabSwitcherViewController__makeContent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPinned] & 1) != 0 || (v4 = *(*(a1 + 32) + 1112), objc_msgSend(v3, "uuid"), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "isTabWithUUIDBeingHiddenFromTabView:", v5), v5, (v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _itemForTab:v3];
  }

  return v6;
}

- (void)_performIgnoringContentUpdates:(id)a3
{
  p_updateInfo = &self->_updateInfo;
  ++self->_updateInfo.ignoreCount;
  (*(a3 + 2))(a3, a2);
  --p_updateInfo->ignoreCount;
}

- (id)_titleForTab:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 title];
  }

  else
  {
    v7 = [v3 url];

    v3 = [v7 absoluteString];

    if ([v3 length])
    {
      [v3 safari_simplifiedUserVisibleURLStringWithSimplifications:URLSimplificationOptionsForTabTitle forDisplayOnly:1 simplifiedStringOffset:0];
    }

    else
    {
      _WBSLocalizedString();
    }
    v6 = ;
  }

  v8 = v6;

  return v8;
}

- (id)_dragItemsForItem:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(TabSwitcherViewController *)self _tabForItem:a3];
  if (v4)
  {
    v5 = [(TabController *)self->_tabController dragItemForTab:v4 tabItem:0];
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)_dropDestinationForSession:(id)a3 proposedDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if ([v8 isPinned])
  {
    v9 = [TabDocumentDropHandler canPinAllItemsInSession:v6];

    if (!v9)
    {
      v10 = [v7 page];
      v11 = [(TabSwitcherViewController *)self _tabGroupForPage:v10];

      v12 = objc_alloc(MEMORY[0x277D28E18]);
      v13 = [v7 section];
      v14 = [v13 identifier];
      v15 = [v12 initWithIdentifier:v14];

      v16 = [v11 firstUnpinnedTab];
      v17 = [(TabSwitcherViewController *)self _itemForTab:v16];

      v18 = objc_alloc(MEMORY[0x277D28DE0]);
      v19 = [v7 page];
      v20 = [v18 initWithPage:v19 section:v15 droppingBefore:v17];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = v7;
LABEL_6:

  return v20;
}

- (void)_performDropWithIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 destination];
  v6 = [v5 page];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  [(TabController *)self->_tabController setActiveTabGroupUUID:v8];

  dropHandler = self->_dropHandler;
  v10 = [v4 session];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__TabSwitcherViewController__performDropWithIntent___block_invoke;
  v13[3] = &unk_2781DC198;
  v14 = v5;
  v15 = self;
  v16 = v4;
  v11 = v4;
  v12 = v5;
  [(TabDocumentDropHandler *)dropHandler dropItemsForSession:v10 withInsertionHandler:v13];

  [(TabSwitcherViewController *)self applyContentIfNeeded];
}

void __52__TabSwitcherViewController__performDropWithIntent___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) item];
  v4 = [*(a1 + 32) section];
  v5 = [v4 isPinned];

  v6 = *(a1 + 40);
  v7 = *(v6 + 1112);
  if (v3)
  {
    v8 = [v3 identifier];
    v9 = [v7 tabWithUUID:v8];

    v10 = [*(*(a1 + 40) + 1112) currentTabs];
    v11 = [v10 indexOfObject:v9];
  }

  else
  {
    v12 = *(v6 + 1112);
    if (v5)
    {
      [v12 pinnedTabs];
    }

    else
    {
      [v12 currentTabs];
    }
    v9 = ;
    v11 = [v9 count];
  }

  v13 = *(a1 + 48);
  v14 = *(*(a1 + 40) + 1112);
  v15 = [v13 session];
  v16 = [v14 dropTabsAtIndex:v11 pinned:v5 dropSession:v15 dragItems:v17];
}

- (void)_addItemOnPage:(id)a3
{
  v4 = a3;
  v5 = +[Application sharedApplication];
  if ([v4 isLocked] && objc_msgSend(v5, "isPrivateBrowsingLocked"))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __44__TabSwitcherViewController__addItemOnPage___block_invoke;
    v21[3] = &unk_2781D76C0;
    v21[4] = self;
    v22 = v4;
    [v5 authenticateToUnlockPrivateBrowsingWithCompletionHandler:v21];
  }

  else
  {
    tabController = self->_tabController;
    v7 = [v4 identifier];
    v8 = [v7 UUIDString];
    v9 = [(TabController *)tabController appendWBTabInTabGroupWithUUID:v8];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__TabSwitcherViewController__addItemOnPage___block_invoke_2;
    v19[3] = &unk_2781D4C88;
    v19[4] = self;
    v20 = v9;
    v10 = v9;
    [(TabSwitcherViewController *)self _performIgnoringContentUpdates:v19];
    v11 = [(TabController *)self->_tabController activeTabDocument];
    v12 = [v11 webExtensionsController];
    [v12 didOpenTab:v11];

    [v11 displayNewTabOverridePageIfNecessary];
    v13 = [(TabSwitcherViewController *)self _itemForTab:v10];
    v14 = objc_alloc_init(MEMORY[0x277D28E28]);
    v15 = [MEMORY[0x277D28BB0] tabOverviewScroll];
    [v14 setAnimationSettings:v15];

    [v14 setInsertedItemToDismissTo:v13];
    v16 = [MEMORY[0x277D28E10] scrollPositionWithItem:v13];
    [v14 setTargetScrollPosition:v16];

    tabSwitcher = self->_tabSwitcher;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__TabSwitcherViewController__addItemOnPage___block_invoke_3;
    v18[3] = &unk_2781D4D40;
    v18[4] = self;
    [(SFTabSwitcher *)tabSwitcher performTransaction:v14 withUpdates:v18];
  }
}

uint64_t __44__TabSwitcherViewController__addItemOnPage___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _addItemOnPage:*(result + 40)];
  }

  return result;
}

void __44__TabSwitcherViewController__addItemOnPage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) uuid];
  [*(*(a1 + 32) + 1112) setActiveTabUUID:v2];
}

- (void)_addPage:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  v7 = objc_alloc(MEMORY[0x277D7B540]);
  v8 = [v4 title];
  v9 = [(TabController *)self->_tabController deviceIdentifier];
  v10 = [v7 initWithTitle:v8 uuid:v6 deviceIdentifier:v9];

  v11 = [(TabController *)self->_tabController activeProfileIdentifier];
  [v10 setProfileIdentifier:v11];

  v12 = [(TabSwitcherViewController *)self _tabGroups];
  v13 = [v12 lastObject];

  v14 = [(TabController *)self->_tabController tabGroupManager];
  if ([v13 isNamed])
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v14 insertTabGroup:v10 afterTabGroup:v15];

  v17 = [v4 sections];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v4 sections];
    [(TabSwitcherViewController *)self _moveSections:v19 toPage:v4];
  }

  else
  {
    v19 = [(TabController *)self->_tabController tabGroupManager];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__TabSwitcherViewController__addPage___block_invoke;
    v21[3] = &unk_2781D97D0;
    v21[4] = self;
    [v19 updateTabsInTabGroupWithUUID:v6 persist:1 usingBlock:v21];
  }

  [(TabSwitcherViewController *)self _updateShareConfigurationForPage:v4];
  v20 = [v10 uuid];
  [(TabController *)self->_tabController setActiveTabGroupUUID:v20];
}

void __38__TabSwitcherViewController__addPage___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D7B538];
  v3 = *(*(a1 + 32) + 1112);
  v4 = a2;
  v5 = [v3 deviceIdentifier];
  v6 = [v2 startPageTabWithDeviceIdentifier:v5];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 appendTabs:v7];
}

- (BOOL)_canAddItemOnPage:(id)a3
{
  v4 = a3;
  v5 = [(TabSwitcherViewController *)self _tabGroupForPage:v4];
  if (v5)
  {
    v6 = -[TabController canAddNewTabInTabGroup:withTabCount:](self->_tabController, "canAddNewTabInTabGroup:withTabCount:", v5, [v4 itemCount]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_closeItems:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = [a3 allObjects];
  v8 = [(TabSwitcherViewController *)self _tabsForItems:v7];

  [(TabController *)self->_tabController closeWBTabs:v8 action:v6];
}

- (void)_moveSections:(id)a3 toPage:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * v13) items];
        v15 = [(TabSwitcherViewController *)self _tabsForItems:v14];
        [v8 addObjectsFromArray:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = [(TabSwitcherViewController *)self _tabGroupForPage:v7];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__TabSwitcherViewController__moveSections_toPage___block_invoke;
  v19[3] = &unk_2781D58E8;
  v19[4] = self;
  v20 = v8;
  v21 = v16;
  v17 = v16;
  v18 = v8;
  [(TabSwitcherViewController *)self _performIgnoringContentUpdates:v19];
  [(TabSwitcherViewController *)self applyContentIfNeeded];
}

- (void)_setItems:(id)a3 arePinned:(BOOL)a4
{
  v4 = a4;
  tabController = self->_tabController;
  v6 = [(TabSwitcherViewController *)self _tabsForItems:a3];
  [(TabController *)tabController setWBTabs:v6 arePinned:v4];
}

- (void)_setTitle:(id)a3 forPage:(id)a4
{
  tabController = self->_tabController;
  v6 = a3;
  v8 = [a4 identifier];
  v7 = [v8 UUIDString];
  [(TabController *)tabController setTitle:v6 forTabGroupWithUUID:v7];
}

- (BOOL)_itemWithIdentifier:(id)a3 matchesSearchQuery:(id)a4
{
  v6 = a4;
  v7 = [a3 UUIDString];
  v8 = [(TabSwitcherViewController *)self _tabWithUUID:v7];

  v9 = [(TabController *)self->_tabController tabCollectionViewProvider];
  LOBYTE(self) = [v9 tabItem:v8 matchesSearchText:v6];

  return self;
}

- (UIEdgeInsets)browserContentInsets
{
  [(SFTabSwitcher *)self->_tabSwitcher browserContentInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)capsuleReferenceFrame
{
  [(SFTabSwitcher *)self->_tabSwitcher capsuleReferenceFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setDismissesOnUnlock:(BOOL)a3
{
  if (self->_dismissesOnUnlock != a3)
  {
    v4 = a3;
    self->_dismissesOnUnlock = a3;
    v7 = [MEMORY[0x277D28F08] settings];
    v6 = [(TabController *)self->_tabController browserWindowUUID];
    [v7 setTabViewDismissesOnUnlock:v4 forWindowWithUUID:v6];
  }
}

- (void)dismissForUnlockingAnimated:(BOOL)a3
{
  [(TabSwitcherViewController *)self setDismissesOnUnlock:0];
  if (a3)
  {
    v5 = objc_alloc_init(MEMORY[0x277D28E28]);
    [v5 setPrefersDetachedTransition:1];
    tabSwitcher = self->_tabSwitcher;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__TabSwitcherViewController_dismissForUnlockingAnimated___block_invoke;
    v7[3] = &unk_2781D4D40;
    v7[4] = self;
    [(SFTabSwitcher *)tabSwitcher performTransaction:v5 withUpdates:v7];
  }

  else
  {

    [(TabSwitcherViewController *)self dismissAnimated:0];
  }
}

- (id)_menuElementsForPage:(id)a3 withSuggestedActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TabSwitcherViewController *)self _tabGroupForPage:v6];
  if (v8)
  {
    v9 = MEMORY[0x277CBEB18];
    v10 = [(TabSwitcherViewController *)self _manageTabGroupsMenu];
    v11 = [v9 arrayWithObject:v10];

    if (([v6 isLocked] & 1) == 0)
    {
      v12 = [(TabSwitcherViewController *)self _menuForTabGroup:v8 withSuggestedActions:v7];
      [v11 addObject:v12];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_manageTabGroupsMenu
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TabController *)self->_tabController submenuForSwitchingProfiles];
  [v3 safari_addObjectUnlessNil:v4];

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__TabSwitcherViewController__manageTabGroupsMenu__block_invoke;
  v15 = &unk_2781D5B80;
  objc_copyWeak(&v16, &location);
  v8 = [v5 actionWithTitle:v6 image:v7 identifier:0 handler:&v12];
  [v3 addObject:{v8, v12, v13, v14, v15}];

  v9 = [(SFTabSwitcher *)self->_tabSwitcher makeEditAction];
  [v3 addObject:v9];

  v10 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v3];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __49__TabSwitcherViewController__manageTabGroupsMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentTabGroupPickerSheet:v3];
}

- (id)_menuForTabGroup:(id)a3 withSuggestedActions:(id)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  [v9 addObjectsFromArray:v7];

  v10 = [TabMenuProvider sortMenuForTabGroup:v8 dataSource:self->_tabController];
  [v9 safari_addObjectUnlessNil:v10];

  v11 = [TabMenuProvider copyLinksActionForTabGroup:v8];
  [v9 safari_addObjectUnlessNil:v11];

  v12 = [(TabController *)self->_tabController tabMenuProviderDataSource];
  v13 = [TabMenuProvider bookmarkActionForTabGroup:v8 dataSource:v12];

  [v9 safari_addObjectUnlessNil:v13];
  v14 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v9];

  return v14;
}

- (void)_isInSteadyStateDidChange:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_presentationObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 tabCollectionView:self didChangeSteadyState:{v3, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_presentTabGroupPickerSheet:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = [WeakRetained showTabGroupPicker:v4];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TabSwitcherViewController__presentTabGroupPickerSheet___block_invoke;
  v7[3] = &unk_2781D5598;
  objc_copyWeak(&v8, &location);
  [v6 setWillDisappear:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__TabSwitcherViewController__presentTabGroupPickerSheet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_time(0, 320000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__TabSwitcherViewController__presentTabGroupPickerSheet___block_invoke_2;
    block[3] = &unk_2781D4D40;
    block[4] = WeakRetained;
    dispatch_after(v2, MEMORY[0x277D85CD0], block);
  }
}

- (void)_dismissToPage:(id)a3
{
  v4 = a3;
  if ([(SFTabSwitcher *)self->_tabSwitcher isVisible]&& [(TabSwitcherViewController *)self _validateDismissalToPage:v4])
  {
    v5 = [(TabSwitcherViewController *)self _defaultTabToSelectOnPage:v4];
    v6 = v5;
    if (v5)
    {
      tabController = self->_tabController;
      v8 = [v5 uuid];
      LODWORD(tabController) = [(TabController *)tabController isTabWithUUIDBeingHiddenFromTabView:v8];

      if (tabController)
      {
        [(TabController *)self->_tabController clearHiddenTabForExplanationView];
        [(TabSwitcherViewController *)self _applyContent];
      }

      v9 = [v6 uuid];
      [(TabSwitcherViewController *)self _selectTabWithUUID:v9];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained tabCollectionViewCanDismiss:self] & 1) == 0)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXTabView();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Request to dismiss tab overview vetoed by delegate", v14, 2u);
        }
      }

      else
      {
        tabSwitcher = self->_tabSwitcher;
        v12 = [(TabSwitcherViewController *)self _itemForTab:v6];
        [(SFTabSwitcher *)tabSwitcher dismissToItem:v12];
      }
    }
  }
}

- (id)_defaultTabToSelectOnPage:(id)a3
{
  v4 = [(TabSwitcherViewController *)self _tabGroupForPage:a3];
  if (v4)
  {
    v5 = [(TabController *)self->_tabController defaultTabToSelectInTabGroup:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_switchToItemToActivateAnimated:(BOOL)a3
{
  itemToActivate = self->_itemToActivate;
  if (!itemToActivate)
  {
    return 0;
  }

  v5 = a3;
  tabController = self->_tabController;
  v7 = [(TabCollectionItem *)itemToActivate UUID];
  v8 = [(TabController *)tabController tabWithUUID:v7];
  v9 = [v8 wbTab];

  v10 = self->_itemToActivate;
  self->_itemToActivate = 0;

  v11 = v9 != 0;
  if (v9)
  {
    if (v5)
    {
      [(TabSwitcherViewController *)self _applyContent];
      tabSwitcher = self->_tabSwitcher;
      v13 = [(TabSwitcherViewController *)self _itemForTab:v9];
      [(SFTabSwitcher *)tabSwitcher animateSwitchingToItem:v13];
    }

    v14 = [v9 uuid];
    [(TabController *)self->_tabController setActiveTabUUID:v14];
  }

  return v11;
}

- (BOOL)_validateDismissalToPage:(id)a3
{
  v3 = [(TabSwitcherViewController *)self _tabGroupForPage:a3];
  v4 = v3;
  if (v3)
  {
    if ([v3 isPrivateBrowsing])
    {
      v5 = +[Application sharedApplication];
      v6 = [v5 isPrivateBrowsingLocked];

      v7 = v6 ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_didScrollToPage:(id)a3
{
  v9 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_lastSettledPage, a3);
    [(TabController *)self->_tabController persistActiveTabGroupOrTabGroupVisibleInSwitcher];
    v5 = [(TabSwitcherViewController *)self _tabGroupForPage:v9];
    v6 = v5;
    if (v5)
    {
      if (([v5 isPrivateBrowsing] & 1) == 0)
      {
        [(TabSwitcherViewController *)self setDismissesOnUnlock:0];
      }

      v7 = self;
      if ([(TabSwitcherViewController *)v7 presentationState]== 1)
      {

LABEL_8:
        [(TabController *)self->_tabController didFocusTabGroup:v6];
        goto LABEL_9;
      }

      v8 = [(TabSwitcherViewController *)v7 presentationState];

      if (v8 == 2)
      {
        goto LABEL_8;
      }
    }

LABEL_9:
  }
}

- (void)scrollToTabGroup:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 uuid];

  v9 = [v6 initWithUUIDString:v7];
  v8 = [objc_alloc(MEMORY[0x277D28DF0]) initWithIdentifier:v9];
  [(SFTabSwitcher *)self->_tabSwitcher scrollToPage:v8];
}

- (void)setNeedsScrollToTabGroup:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 uuid];

  v8 = [v6 initWithUUIDString:v7];
  identifierOfPageToScrollTo = self->_updateInfo.identifierOfPageToScrollTo;
  self->_updateInfo.identifierOfPageToScrollTo = v8;

  [(TabSwitcherViewController *)self setNeedsApplyContentAnimated:1];
}

- (WBTabGroup)visibleTabGroup
{
  v3 = [(SFTabSwitcher *)self->_tabSwitcher visiblePage];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = [(TabController *)self->_tabController tabGroupManager];
    v6 = [v4 UUIDString];
    v7 = [v5 tabGroupWithUUID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateShareConfigurationForPage:(id)a3
{
  v4 = [(TabSwitcherViewController *)self _tabGroupForPage:a3];
  if (v4)
  {
    v5 = [(TabController *)self->_tabController cachedTabSwitcherShareConfigurationForTabGroup:v4];

    if (!v5)
    {
      tabController = self->_tabController;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__TabSwitcherViewController__updateShareConfigurationForPage___block_invoke;
      v7[3] = &unk_2781D9CF8;
      v7[4] = self;
      [(TabController *)tabController tabSwitcherShareConfigurationForTabGroup:v4 completion:v7];
    }
  }
}

uint64_t __62__TabSwitcherViewController__updateShareConfigurationForPage___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setNeedsApplyContentAnimated:0];
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  tabSwitcher = self->_tabSwitcher;
  v6 = a4;
  [(SFTabSwitcher *)tabSwitcher beginAnimatedSizeTransition];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__TabSwitcherViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_2781DC1C0;
  v7[4] = self;
  [v6 animateAlongsideTransition:0 completion:v7];
}

- (void)_selectTabWithUUID:(id)a3
{
  objc_storeStrong(&self->_uuidOfTabBeingSelected, a3);
  v6 = a3;
  [(TabController *)self->_tabController setActiveTabUUID:v6];
  uuidOfTabBeingSelected = self->_uuidOfTabBeingSelected;
  self->_uuidOfTabBeingSelected = 0;
}

- (id)_tabForItem:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 UUIDString];
  v6 = [(TabSwitcherViewController *)self _tabWithUUID:v5];

  return v6;
}

- (id)_tabGroupForPage:(id)a3
{
  tabController = self->_tabController;
  v4 = [a3 identifier];
  v5 = [v4 UUIDString];
  v6 = [(TabController *)tabController tabGroupWithUUID:v5];

  return v6;
}

- (id)_tabsForItems:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__TabSwitcherViewController__tabsForItems___block_invoke;
  v5[3] = &unk_2781DC1E8;
  v5[4] = self;
  v3 = [a3 safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

- (void)animateSwitchingToItemAtIndex:(int64_t)a3
{
  v5 = [(TabSwitcherViewController *)self capsuleIndexProvider];
  v6 = [v5 tabAtCollectionViewIndex:a3];

  v7 = [v6 wbTab];
  v8 = [(TabSwitcherViewController *)self _itemForTab:v7];

  if (v8)
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      WeakRetained = objc_loadWeakRetained(&self->_container);
      v10 = [WeakRetained transitionViewForReducedMotion];

      v11 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__TabSwitcherViewController_animateSwitchingToItemAtIndex___block_invoke;
      v15[3] = &unk_2781D58E8;
      v15[4] = self;
      v16 = v6;
      v17 = v10;
      v12 = v10;
      [v11 transitionWithView:v12 duration:5242880 options:v15 animations:0 completion:0.25];
    }

    else
    {
      [(SFTabSwitcher *)self->_tabSwitcher animateSwitchingToItem:v8];
      v13 = [v6 wbTab];
      v14 = [v13 uuid];
      [(TabController *)self->_tabController setActiveTabUUID:v14];
    }
  }
}

void __59__TabSwitcherViewController_animateSwitchingToItemAtIndex___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__TabSwitcherViewController_animateSwitchingToItemAtIndex___block_invoke_2;
  v4[3] = &unk_2781D58E8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 safari_performWithoutRetargetingAnimations:v4];
}

uint64_t __59__TabSwitcherViewController_animateSwitchingToItemAtIndex___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) wbTab];
  v3 = [v2 uuid];
  [*(*(a1 + 32) + 1112) setActiveTabUUID:v3];

  v4 = *(a1 + 48);

  return [v4 layoutIfNeeded];
}

- (CGRect)frameForItemLinkedToCapsuleAtIndex:(int64_t)a3
{
  v5 = [(TabSwitcherViewController *)self capsuleIndexProvider];
  v6 = [v5 tabAtCollectionViewIndex:a3];

  v7 = [v6 uuid];
  if (v7)
  {
    [(SFTabSwitcher *)self->_tabSwitcher frameForLinkedPanningItemWithIdentifier:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)willPresent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionViewWillPresent:self];
}

- (void)willDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionViewWillDismiss:self];
}

- (void)didPresent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionViewDidPresent:self];
}

- (void)didDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionViewDidDismiss:self];
}

- (void)didCancelDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabCollectionViewDidCancelDismissal:self];
  }
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__TabSwitcherViewController_dismissAnimated___block_invoke;
  aBlock[3] = &unk_2781D4D40;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    [MEMORY[0x277D75D18] safari_performWithoutRetargetingAnimations:v4];
  }
}

- (void)presentAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(TabSwitcherViewController *)self _switchToItemToActivateAnimated:?])
  {
    if (self->_updateInfo.needsApplyContent)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __45__TabSwitcherViewController_presentAnimated___block_invoke;
      v8[3] = &unk_2781D4D40;
      v8[4] = self;
      [MEMORY[0x277D75D18] safari_performWithoutRetargetingAnimations:v8];
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__TabSwitcherViewController_presentAnimated___block_invoke_2;
    v7[3] = &unk_2781D4D40;
    v7[4] = self;
    v5 = _Block_copy(v7);
    v6 = v5;
    if (v3)
    {
      (*(v5 + 2))(v5);
    }

    else
    {
      [MEMORY[0x277D75D18] safari_performWithoutRetargetingAnimations:v5];
    }
  }
}

uint64_t __45__TabSwitcherViewController_presentAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1024) present];
  v2 = *(a1 + 32);

  return [v2 becomeFirstResponder];
}

- (CGSize)snapshotSizeForSuggestedSize:(CGSize)result
{
  v3 = fmax(result.height, result.width * 1.5) + 200.0;
  result.height = v3;
  return result;
}

- (CollectionViewTabIndexProviding)capsuleIndexProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_capsuleIndexProvider);

  return WeakRetained;
}

- (TabThumbnailCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TabSwitcherViewControllerContaining)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

void __41__TabSwitcherViewController__makeContent__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_215819000, v3, OS_LOG_TYPE_FAULT, "Tab group has invalid UUID: %{public}@", &v5, 0xCu);
}

@end