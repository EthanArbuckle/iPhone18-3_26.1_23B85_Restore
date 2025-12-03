@interface CatalogViewController
- (BOOL)_shouldPresentCompletionDetailViewControllerAfterSizeTransition:(id)transition;
- (BOOL)_shouldTakeOwnershipOfCompletionsViewController;
- (BOOL)_shouldUsePopoverForCompletions;
- (BOOL)_showCompletionsInPopover;
- (BOOL)checkAndResetIfNextSnapshotRequiresScreenUpdates;
- (BOOL)isShowingUniversalSearchFirstTimeExperience;
- (BOOL)isShowingUniversalSearchPrivacyDetails;
- (BOOL)popoverIsDismissing;
- (BOOL)popoverIsShowing;
- (BOOL)shouldPutMetadataOnPasteboardForUnifiedField:(id)field;
- (BOOL)startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)in;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)unifiedField:(id)field shouldWaitForTopHitForText:(id)text;
- (BOOL)unifiedFieldCanBecomeFirstResponder:(id)responder;
- (CGRect)snapshotContentRectInBounds:(CGRect)bounds;
- (CatalogViewController)initWithDelegate:(id)delegate browserController:(id)controller;
- (CatalogViewControllerDelegate)delegate;
- (LoadProgressObserver)loadProgressObserver;
- (NSString)libraryType;
- (SFStartPageScrollObserver)startPageScrollObserver;
- (UIButton)sidebarButton;
- (UIEdgeInsets)obscuredInsets;
- (double)chromelessScrollDistance;
- (double)maxContentHeight;
- (double)navigationBarHeight;
- (double)requiredContentWidth;
- (double)startPageViewControllerTopPadding:(id)padding;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cancelBarButtonItem;
- (id)_cellHeightCacheKeyForCompletionItem:(id)item indexPath:(id)path;
- (id)_completionItemAtIndexPath:(id)path;
- (id)_searchFieldIcon;
- (id)browserController;
- (id)childViewControllerForStatusBarStyle;
- (id)completionsViewController;
- (id)currentMetadataForUnifiedField:(id)field;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)startPageViewController:(id)controller leadingBarItemsForSection:(id)section;
- (id)startPageViewController:(id)controller trailingBarItemsForSection:(id)section;
- (id)startPageViewControllerTitleForRootView:(id)view;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)unifiedField:(id)field topHitForText:(id)text;
- (int64_t)_completionListQueryID;
- (int64_t)_relevanceForItem:(id)item;
- (int64_t)_relevanceForResult:(id)result;
- (int64_t)startPageCustomizationPolicy;
- (void)_beginParsecSessionIfNeeded;
- (void)_cancelClearingCompletionListCaches;
- (void)_clearCompletionListCachesSoon;
- (void)_clearParsecSearchSession;
- (void)_commitVoiceSearchIfNecessary;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_deselectCompletionsViewControllerSelectedRow;
- (void)_dismissPopoverAnimated:(BOOL)animated dismissalReason:(int64_t)reason completionHandler:(id)handler;
- (void)_dismissUniversalSearchFirstTimeExperience:(id)experience dismissalReason:(int64_t)reason completionHandler:(id)handler;
- (void)_ensureCompletionListAndParsecSession;
- (void)_executeActionForParsecResultAtIndexPath:(id)path tableView:(id)view triggerEvent:(unint64_t)event;
- (void)_executeActionForParsecResultTableViewCell:(id)cell completionItem:(id)item triggerEvent:(unint64_t)event;
- (void)_generateVisibleResultsFeedbackForEvent:(int64_t)event;
- (void)_invalidatePendingVoiceSearchTimer;
- (void)_keyboardDidShow:(id)show;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_logQueryEngagement;
- (void)_logTopHitWasChosen:(BOOL)chosen;
- (void)_parsecEnabledDidChange:(id)change;
- (void)_popoverDismissCompletion;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_preselectCompletionItemIfNecessaryForQueryString:(id)string;
- (void)_presentPopoverWithViewController:(id)controller completionHandler:(id)handler;
- (void)_presentStagedCompletionDetailViewControllerAnimated:(BOOL)animated;
- (void)_reloadCompletionTable;
- (void)_removeNoRecentSearchesViewIfNecessary;
- (void)_selectedCompletionItemAtIndexPath:(id)path;
- (void)_sendInputAnalyticsForItemWithMatchedText:(id)text matchType:(int64_t)type;
- (void)_setShowingCompletions:(BOOL)completions popoverDismissalReason:(int64_t)reason completionHandler:(id)handler;
- (void)_showCompletionsPopoverIfNecessary;
- (void)_showStartPageInPopover;
- (void)_textFieldEditingChangedForUpdatingCompletionListOnRestore:(BOOL)restore;
- (void)_updateAlternateContentViewController;
- (void)_updatePersonalisationDataForDonation:(id)donation forPosition:(unint64_t)position;
- (void)_updateSearchFieldIcon;
- (void)_updateStartPageSafeAreaInsets;
- (void)_updateVisibilityForCompletionListTableView:(id)view;
- (void)_updateVoiceSearchState;
- (void)animateTransition:(id)transition;
- (void)beginExtensionsOnboardingForStartPageViewController:(id)controller;
- (void)beginTransitionToNewSizeClassWithState:(id)state;
- (void)completionList:(id)list didFetchFavicon:(id)favicon forRowAtIndexPath:(id)path;
- (void)completionList:(id)list didRemoveItem:(id)item wasLastInSection:(BOOL)section atIndexPath:(id)path withCompletionHandler:(id)handler;
- (void)completionList:(id)list topHitDidBecomeReadyForString:(id)string;
- (void)completionList:(id)list willGoToURL:(id)l fromPegasusSearchResult:(id)result forImageAttribution:(BOOL)attribution;
- (void)completionListDidRestoreCachedCompletions:(id)completions;
- (void)completionListDidUpdate:(id)update forQuery:(id)query;
- (void)dealloc;
- (void)didGainOwnershipOfCompletionsViewController;
- (void)didGainOwnershipOfStartPageViewController;
- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController;
- (void)didInteractWithUniversalSearchFirstTimeExperienceViewController:(id)controller;
- (void)didTogglePrivateBrowsing;
- (void)didUpdateObscuredInsetsForSizeTransition;
- (void)dismissCompletionDetailWindowAndResumeEditingIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)dismissCompletionsForSizeClassTransition;
- (void)dismissUniversalSearchFirstTimeExperienceViewControllerIfNeeded;
- (void)endTransitionToNewSizeClassWithState:(id)state;
- (void)findOnPage;
- (void)goToURL:(id)l;
- (void)goToURLString:(id)string;
- (void)horizontalSizeClassDidChange:(id)change previousTraitCollection:(id)collection;
- (void)ignorePreviousLayoutSize;
- (void)openURLInExternalApplication:(id)application;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentDetail:(id)detail;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent;
- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent;
- (void)reloadNavigationItemAnimated:(BOOL)animated;
- (void)reportUnifiedFieldSearchDidCancel;
- (void)resetFavorites;
- (void)resetPrivateBrowsingExplanation;
- (void)resume;
- (void)resumeEditingIfNeeded:(BOOL)needed;
- (void)resumeSearchWithQuery:(id)query;
- (void)scrollViewDidScroll:(id)scroll;
- (void)search:(id)search;
- (void)searchTextCompletionAccessoryButtonTappedForCompletionItem:(id)item;
- (void)setCompletionList:(id)list;
- (void)setLibraryType:(id)type;
- (void)setLibraryType:(id)type cloudTabDeviceID:(id)d;
- (void)setLoadProgressObserver:(id)observer;
- (void)setNavigationBar:(id)bar;
- (void)setObscuredInsets:(UIEdgeInsets)insets;
- (void)setQueryString:(id)string forUpdatingCompletionListOnRestore:(BOOL)restore;
- (void)setStartPageScrollObserver:(id)observer;
- (void)setTextField:(id)field;
- (void)setTopScrollEdgeEffectColor:(id)color;
- (void)setTopScrollEdgeEffectStyle:(id)style;
- (void)setUsesPopoverStyleForFavorites:(BOOL)favorites;
- (void)showNoRecentSearchesViewIfNotShowing;
- (void)showRecentSearches;
- (void)showUniversalSearchFirstTimeExperienceIfNotShowing;
- (void)startPageControllerDidCompleteDismissGesture:(id)gesture;
- (void)startPageControllerDidCompleteUnfocusGesture:(id)gesture;
- (void)startPageUpdatePolicyDidChange;
- (void)startPageViewController:(id)controller willPresentCustomizationViewController:(id)viewController;
- (void)startPageViewControllerDidAppear:(id)appear;
- (void)startPageViewControllerDidScroll:(id)scroll animated:(BOOL)animated;
- (void)startPageViewControllerDidUpdateContent:(id)content;
- (void)stopCompleting;
- (void)switchToTabWithUUID:(id)d inWindowWithUUID:(id)iD forTabGroupWithUUID:(id)uID;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)test_simulateTyping:(id)typing inGroup:(id)group startIndex:(unint64_t)index;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)toggleVoiceSearch;
- (void)unifiedField:(id)field didEndEditingWithAddress:(id)address;
- (void)unifiedField:(id)field didEndEditingWithParsecTopHit:(id)hit;
- (void)unifiedField:(id)field didEndEditingWithSearch:(id)search;
- (void)unifiedField:(id)field didEngageWithQuerySuggestion:(id)suggestion forQueryString:(id)string;
- (void)unifiedField:(id)field focusNextKeyView:(BOOL)view;
- (void)unifiedField:(id)field moveCompletionSelectionByRowOffset:(int64_t)offset;
- (void)unifiedField:(id)field moveCompletionSelectionBySectionOffset:(int64_t)offset;
- (void)unifiedField:(id)field pasteAndNavigateWithText:(id)text;
- (void)unifiedField:(id)field willUpdateUserTypedText:(id)text toText:(id)toText;
- (void)unifiedFieldExternalSearchDidEnd:(id)end;
- (void)unifiedFieldMakeWindowKey:(id)key;
- (void)unifiedFieldReflectedItemDidChange:(id)change;
- (void)unifiedFieldSelectCompletionItemIfAvailable:(id)available;
- (void)unifiedFieldVoiceSearchStateDidChange:(id)change;
- (void)updatePreferredContentSize;
- (void)updateQuerySuggestionsFromResponse:(id)response;
- (void)updateStartPageControlTintColor;
- (void)updateStartPageCustomizationPolicy;
- (void)updateStartPageHidesEmptyRootViewNavigationBar;
- (void)updateStartPageTopSpacing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willGoToURLFromPegasusSearchResult:(id)result;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation CatalogViewController

- (void)updateStartPageCustomizationPolicy
{
  startPageCustomizationPolicy = [(CatalogViewController *)self startPageCustomizationPolicy];
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController setCustomizationPolicy:startPageCustomizationPolicy];
}

- (int64_t)startPageCustomizationPolicy
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (self->_usesPopoverStyleForFavorites)
  {
    goto LABEL_8;
  }

  libraryType = [(StartPageController *)self->_startPageController libraryType];
  if (libraryType)
  {

LABEL_8:
    v6 = 2;
    goto LABEL_9;
  }

  if (![WeakRetained canPerformPostLaunchActions])
  {
    goto LABEL_8;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  if (([v5 catalogViewControllerShouldUsePopoverForCompletions:self] & 1) != 0 || self->_usesPopoverStyleForFavorites)
  {

    v6 = 0;
  }

  else
  {
    tabController = [WeakRetained tabController];
    activeTabDocument = [tabController activeTabDocument];
    v10 = ~[activeTabDocument isBlank];

    v6 = v10 & 1;
  }

LABEL_9:

  return v6;
}

- (void)updateStartPageHidesEmptyRootViewNavigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  rootViewController = [WeakRetained rootViewController];
  if ([rootViewController isUsingBottomCapsule])
  {
    v4 = [WeakRetained usesNarrowLayout] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  v5 = [MEMORY[0x277D49A08] isSolariumEnabled] | v4;
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController setRootViewHidesEmptyNavigationBar:v5 & 1];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = CatalogViewController;
  [(CatalogViewController *)&v14 viewDidLoad];
  view = [(CatalogViewController *)self view];
  [view setAutoresizingMask:0];
  [view setClipsToBounds:1];
  layer = [view layer];
  [layer setAllowsGroupOpacity:0];

  sf_safariAccentColor = [MEMORY[0x277D75348] sf_safariAccentColor];
  [view setTintColor:sf_safariAccentColor];

  title = [(SFStartPageViewController *)self->_startPageViewController title];
  [(CatalogViewController *)self setTitle:title];

  view2 = [(SFStartPageViewController *)self->_startPageViewController view];
  [view2 setAutoresizingMask:0];
  [view2 setInsetsLayoutMarginsFromSafeArea:0];
  if (self->_usesPopoverStyleForFavorites)
  {
    [(AbstractCatalogViewController *)self->_popoverCatalogViewController takeOwnershipOfStartPageViewController];
    [(PopoverCatalogViewController *)self->_popoverCatalogViewController updateStartPagePreferredContentSize];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    rootViewController = [WeakRetained rootViewController];
    _sf_viewControllerToPresentFrom = [rootViewController _sf_viewControllerToPresentFrom];
    presentedViewController = [_sf_viewControllerToPresentFrom presentedViewController];

    if (!presentedViewController)
    {
      [(CatalogViewController *)self _presentPopoverWithViewController:self->_popoverCatalogViewController];
    }
  }

  else
  {
    [(AbstractCatalogViewController *)self takeOwnershipOfStartPageViewController];
  }

  [(CatalogViewController *)self updateStartPageControlTintColor];
  v12 = objc_alloc_init(MEMORY[0x277D76210]);
  scrollPocketCollector = self->_scrollPocketCollector;
  self->_scrollPocketCollector = v12;

  [view addInteraction:self->_scrollPocketCollector];
}

- (void)viewWillLayoutSubviews
{
  view = [(CatalogViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = self->_completionsViewController;
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v11])
  {
    view2 = [(CatalogViewController *)self view];
    [view2 safeAreaInsets];
    UIEdgeInsetsSubtract();

    UIEdgeInsetsMax();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    tableView = [(CompletionListTableViewController *)v11 tableView];
    [tableView setFrame:{v4, v6, v8, v10}];
    [tableView setContentInset:{v14, v16, v18, v20}];
    [tableView setScrollIndicatorInsets:{v14, v16, v18, v20}];
  }

  v22 = self->_startPageViewController;
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v22])
  {
    [(_SFNavigationBarCommon *)self->_navigationBar layoutIfNeeded];
    [(_SFNavigationBarCommon *)self->_navigationBar urlOutlineFrameRelativeToView:view];
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    if (!CGRectEqualToRect(v43, *MEMORY[0x277CBF3A0]))
    {
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      CGRectGetMinX(v44);
      v45.origin.x = v4;
      v45.origin.y = v6;
      v45.size.width = v8;
      v45.size.height = v10;
      CGRectGetWidth(v45);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectGetMaxX(v46);
    }

    startPageGeometryIsFrozen = self->_startPageGeometryIsFrozen;
    if (!startPageGeometryIsFrozen)
    {
      view3 = [(SFStartPageViewController *)v22 view];
      [view3 setFrame:{v4, v6, v8, v10}];
      if ([MEMORY[0x277D49A08] is2024FavoritesEnabled])
      {
        view4 = [(CatalogViewController *)self view];
        [view4 _sf_hasLandscapeAspectRatio];
      }

      v47.origin.x = v4;
      v47.origin.y = v6;
      v47.size.width = v8;
      v47.size.height = v10;
      CGRectGetWidth(v47);
      _SFRoundFloatToPixels();
      if (!self->_usesPopoverStyleForFavorites)
      {
        traitCollection = [(CatalogViewController *)self traitCollection];
        [traitCollection horizontalSizeClass];
      }

      _SFDefaultLayoutMargins();
      UIEdgeInsetsReplace();
      [view3 setLayoutMargins:?];

      startPageGeometryIsFrozen = self->_startPageGeometryIsFrozen;
    }

    self->_startPageGeometryWasFrozenDuringLastLayout = startPageGeometryIsFrozen;
  }

  v31 = self->_universalSearchFirstTimeExperienceViewController;
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v31])
  {
    UIEdgeInsetsReplace();
    v33 = v4 + v32;
    v35 = v6 + v34;
    v37 = v8 - (v32 + v36);
    v39 = v10 - (v34 + v38);
    view5 = [(UniversalSearchFirstTimeExperienceViewController *)v31 view];
    [view5 setFrame:{v33, v35, v37, v39}];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CatalogViewController;
  [(CatalogViewController *)&v5 viewDidLayoutSubviews];
  [(CatalogViewController *)self requiredContentWidth];
  v4 = v3;
  [(SFPopoverSizingTableViewController *)self->_completionsViewController preferredContentSize];
  [(CompletionListTableViewController *)self->_completionsViewController setPreferredContentSize:v4];
}

- (double)requiredContentWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerPopoverWidth:self];
  v5 = v4;

  return v5;
}

- (void)didGainOwnershipOfStartPageViewController
{
  [(CatalogViewController *)self _updateBackgroundColorWhenShowingFavoritesNavigationController];
  [(StartPageController *)self->_startPageController setShowingAsPopover:0];
  topScrollEdgeEffectColor = self->_topScrollEdgeEffectColor;
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController setTopScrollEdgeEffectColor:topScrollEdgeEffectColor];

  topScrollEdgeEffectStyle = self->_topScrollEdgeEffectStyle;
  viewController2 = [(StartPageController *)self->_startPageController viewController];
  [viewController2 setTopScrollEdgeEffectStyle:topScrollEdgeEffectStyle];
}

- (void)updateStartPageControlTintColor
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];
  if (isPrivateBrowsingEnabled)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    labelColor = 0;
  }

  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController setPreferredControlTintColor:labelColor];

  if (isPrivateBrowsingEnabled)
  {
  }
}

- (void)resetFavorites
{
  libraryType = [(StartPageController *)self->_startPageController libraryType];

  if (!libraryType)
  {
    [(StartPageController *)self->_startPageController updatePrivateBrowsingExplanationState];
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController resetToRootViewWithCustomizationPolicy:{-[CatalogViewController startPageCustomizationPolicy](self, "startPageCustomizationPolicy")}];
  }
}

- (id)childViewControllerForStatusBarStyle
{
  foregroundChildViewController = [(AbstractCatalogViewController *)self foregroundChildViewController];
  v4 = foregroundChildViewController;
  if (foregroundChildViewController == self->_startPageViewController)
  {
    v5 = [(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:?];

    if (v5)
    {
      v6 = self->_startPageViewController;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)updateStartPageTopSpacing
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController updateStartPageTopPadding];
}

- (UIButton)sidebarButton
{
  sidebarButton = self->_sidebarButton;
  if (!sidebarButton)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    makeSidebarButton = [WeakRetained makeSidebarButton];
    v6 = self->_sidebarButton;
    self->_sidebarButton = makeSidebarButton;

    sidebarButton = self->_sidebarButton;
  }

  return sidebarButton;
}

- (void)updatePreferredContentSize
{
  v3.receiver = self;
  v3.super_class = CatalogViewController;
  [(AbstractCatalogViewController *)&v3 updatePreferredContentSize];
  [(AbstractCatalogViewController *)self->_popoverCatalogViewController updatePreferredContentSize];
  if (self->_platterPresentationController)
  {
    [(PopoverCatalogViewController *)self->_popoverCatalogViewController preferredContentSize];
    [(SFCatalogPlatterPresentationController *)self->_platterPresentationController setPreferredPresentedViewContentSize:?];
  }
}

- (double)maxContentHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerPopoverMaxHeight:self];
  v5 = v4;

  return v5;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CatalogViewController;
  [(CatalogViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(CatalogViewController *)self _updateStartPageSafeAreaInsets];
}

- (void)_updateStartPageSafeAreaInsets
{
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:self->_startPageViewController])
  {
    view = [(CatalogViewController *)self view];
    [view safeAreaInsets];
    UIEdgeInsetsSubtract();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    startPageViewController = [(CatalogViewController *)self startPageViewController];
    [startPageViewController setAdditionalSafeAreaInsets:{v4, v6, v8, v10}];
  }
}

- (BOOL)popoverIsShowing
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  rootViewController = [WeakRetained rootViewController];
  topBar = [rootViewController topBar];

  if (!topBar)
  {
    return 0;
  }

  v6 = self->_popoverPresentationController;
  if (!v6)
  {
    v6 = self->_platterPresentationController;
    if (!v6)
    {
      return 0;
    }
  }

  v7 = v6;
  containerView = [(UIPopoverPresentationController *)v6 containerView];
  window = [containerView window];
  if (window)
  {
    v10 = 1;
  }

  else
  {
    presentingViewController = [(UIPopoverPresentationController *)v7 presentingViewController];
    v10 = presentingViewController != 0;
  }

  return v10;
}

- (void)startPageUpdatePolicyDidChange
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__CatalogViewController_startPageUpdatePolicyDidChange__block_invoke;
  v4[3] = &unk_2781D4D40;
  v4[4] = self;
  [viewController coalesceDataReloadWithBlock:v4 animatingDifferences:1];
}

uint64_t __55__CatalogViewController_startPageUpdatePolicyDidChange__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1280) updatePolicyDidChange];
  v2 = *(a1 + 32);

  return [v2 updateStartPageCustomizationPolicy];
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained catalogViewControllerShouldRequestNetworkedSuggestions:self];

  if (v4)
  {

    [(CatalogViewController *)self _beginParsecSessionIfNeeded];
  }
}

- (void)_beginParsecSessionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = +[UniversalSearchFirstTimeExperienceViewController hasShownParsecFirstTimeUserExperience];
  areSiriSearchSuggestionsEnabled = [MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled];
  v5 = WeakRetained;
  if (areSiriSearchSuggestionsEnabled)
  {
    configuration = [WeakRetained configuration];
    v7 = [configuration allowsSearchFeedback] & v3;

    v5 = WeakRetained;
    if (v7 == 1)
    {
      if (!self->_parsecSearchSession)
      {
        goto LABEL_7;
      }

      parsecSearchSession = [(CompletionList *)self->_completionList parsecSearchSession];

      if (!parsecSearchSession)
      {
        [(CompletionList *)self->_completionList setParsecSearchSession:self->_parsecSearchSession];
      }

      v5 = WeakRetained;
      if (!self->_parsecSearchSession)
      {
LABEL_7:
        universalSearchSession = [v5 universalSearchSession];
        parsecSearchSession = self->_parsecSearchSession;
        self->_parsecSearchSession = universalSearchSession;

        v11 = self->_parsecSearchSession;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        [(WBSParsecDSession *)v11 setUIScale:?];

        [(CompletionList *)self->_completionList setParsecSearchSession:self->_parsecSearchSession];
        v5 = WeakRetained;
      }
    }
  }
}

- (void)_deselectCompletionsViewControllerSelectedRow
{
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
    [(CatalogViewController *)self _updateSearchFieldIcon];
  }
}

- (void)dismissUniversalSearchFirstTimeExperienceViewControllerIfNeeded
{
  if ([(CatalogViewController *)self isShowingUniversalSearchFirstTimeExperience])
  {
    universalSearchFirstTimeExperienceViewController = [(CatalogViewController *)self universalSearchFirstTimeExperienceViewController];
    [(CatalogViewController *)self didCancelUniversalSearchFirstTimeExperienceViewController:universalSearchFirstTimeExperienceViewController];
  }
}

- (BOOL)isShowingUniversalSearchFirstTimeExperience
{
  parentViewController = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController parentViewController];
  if (parentViewController)
  {
    v4 = 1;
  }

  else
  {
    presentingViewController = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController presentingViewController];
    v4 = presentingViewController != 0;
  }

  return v4;
}

- (void)test_simulateTyping:(id)typing inGroup:(id)group startIndex:(unint64_t)index
{
  typingCopy = typing;
  groupCopy = group;
  if ([typingCopy length] >= index)
  {
    v10 = dispatch_time(0, 500000000);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__CatalogViewController_Testing__test_simulateTyping_inGroup_startIndex___block_invoke;
    v11[3] = &unk_2781D5AA0;
    indexCopy = index;
    v12 = typingCopy;
    v13 = groupCopy;
    selfCopy = self;
    dispatch_after(v10, MEMORY[0x277D85CD0], v11);
  }
}

void __73__CatalogViewController_Testing__test_simulateTyping_inGroup_startIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == [*(a1 + 32) length])
  {
    v3 = +[Application sharedApplication];
    [v3 startedSubTest:@"SearchPerformanceCompletionListRedraw" forTest:gCurrentTestName withMetrics:&unk_2827FC4C0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __73__CatalogViewController_Testing__test_simulateTyping_inGroup_startIndex___block_invoke_2;
    v13 = &unk_2781D4C88;
    v14 = v3;
    v15 = *(a1 + 40);
    v4 = v3;
    [v4 installCACommitCompletionBlock:&v10];
  }

  v5 = [*(a1 + 48) textField];
  [*(a1 + 48) _ensureCompletionListAndParsecSession];
  v6 = [*(a1 + 32) rangeOfComposedCharacterSequencesForRange:{0, *(a1 + 56)}];
  v8 = v7;
  v9 = [*(a1 + 32) substringWithRange:{v6, v7}];
  [v5 setText:v9];

  [v5 _textDidChangeFromTyping];
  [*(a1 + 48) _textFieldEditingChanged];
  [*(a1 + 48) test_simulateTyping:*(a1 + 32) inGroup:*(a1 + 40) startIndex:v8 + 1];
}

void __73__CatalogViewController_Testing__test_simulateTyping_inGroup_startIndex___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SearchPerformanceCompletionListRedraw" forTest:gCurrentTestName];
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CatalogViewController_Testing__test_simulateTyping_inGroup_startIndex___block_invoke_3;
  block[3] = &unk_2781D4D40;
  v4 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (int64_t)_completionListQueryID
{
  query = [(CompletionList *)self->_completionList query];
  queryID = [query queryID];
  if (!queryID)
  {
    queryID = [MEMORY[0x277D49ED8] currentQueryID];
  }

  return queryID;
}

- (void)_parsecEnabledDidChange:(id)change
{
  if (([MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled] & 1) == 0)
  {

    [(CatalogViewController *)self _clearParsecSearchSession];
  }
}

- (CatalogViewController)initWithDelegate:(id)delegate browserController:(id)controller
{
  v36[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = CatalogViewController;
  v8 = [(CatalogViewController *)&v34 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_browserController, controllerCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = [delegateCopy catalogViewControllerStartPageVisualStyleProvider:v9];
    if (v10)
    {
      v11 = [[StartPageController alloc] initWithVisualStyleProvider:v10];
    }

    else
    {
      v11 = objc_alloc_init(StartPageController);
    }

    startPageController = v9->_startPageController;
    v9->_startPageController = v11;

    [(StartPageController *)v9->_startPageController setDataSource:controllerCopy];
    tabController = [controllerCopy tabController];
    activeTabDocument = [tabController activeTabDocument];
    libraryType = [activeTabDocument libraryType];
    [(StartPageController *)v9->_startPageController setLibraryType:libraryType];

    v16 = +[Application sharedApplication];
    tabGroupManager = [v16 tabGroupManager];

    [tabGroupManager addTabGroupObserver:v9->_startPageController];
    [tabGroupManager addCloudTabsObserver:v9->_startPageController];
    [(CatalogViewController *)v9 updateStartPageCustomizationPolicy];
    [(CatalogViewController *)v9 updateStartPageHidesEmptyRootViewNavigationBar];
    viewController = [(StartPageController *)v9->_startPageController viewController];
    [viewController setDelegate:v9];
    objc_storeStrong(&v9->_startPageViewController, viewController);
    v19 = objc_alloc_init(PopoverCatalogViewController);
    popoverCatalogViewController = v9->_popoverCatalogViewController;
    v9->_popoverCatalogViewController = v19;

    v21 = [MEMORY[0x277CBEB58] set];
    seenVisibleResults = v9->_seenVisibleResults;
    v9->_seenVisibleResults = v21;

    automaticStyle = [MEMORY[0x277D759B8] automaticStyle];
    topScrollEdgeEffectStyle = v9->_topScrollEdgeEffectStyle;
    v9->_topScrollEdgeEffectStyle = automaticStyle;

    [(PopoverCatalogViewController *)v9->_popoverCatalogViewController setPrimaryCatalogViewController:v9];
    if ([delegateCopy catalogViewControllerShouldRequestNetworkedSuggestions:v9])
    {
      [(CatalogViewController *)v9 _beginParsecSessionIfNeeded];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__parsecEnabledDidChange_ name:*MEMORY[0x277D4A498] object:0];
    [defaultCenter addObserver:v9 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v9 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
    [defaultCenter addObserver:v9 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v9 selector:sel__keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
    v36[0] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v27 = [(CatalogViewController *)v9 registerForTraitChanges:v26 withTarget:v9 action:sel_horizontalSizeClassDidChange_previousTraitCollection_];

    v35 = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v29 = [(CatalogViewController *)v9 registerForTraitChanges:v28 withTarget:v9 action:sel__preferredContentSizeCategoryDidChange];

    v30 = objc_alloc_init(MEMORY[0x277CBEA78]);
    tableViewCellHeightCache = v9->_tableViewCellHeightCache;
    v9->_tableViewCellHeightCache = v30;

    [(NSCache *)v9->_tableViewCellHeightCache setCountLimit:45];
    v32 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(CatalogViewController *)self _invalidatePendingVoiceSearchTimer];
  [(CatalogViewController *)self _clearParsecSearchSession];
  unifiedTextField = [(CatalogViewController *)self unifiedTextField];
  [unifiedTextField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  delegate = [(CompletionList *)self->_completionList delegate];

  if (delegate == self)
  {
    [(CompletionList *)self->_completionList setDelegate:0];
  }

  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [tableView setDataSource:0];
  [tableView setDelegate:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v7 = +[Application sharedApplication];
  tabGroupManager = [v7 tabGroupManager];
  [tabGroupManager removeTabGroupObserver:self->_startPageController];

  v9.receiver = self;
  v9.super_class = CatalogViewController;
  [(CatalogViewController *)&v9 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CatalogViewController;
  [(CatalogViewController *)&v4 viewDidAppear:appear];
  [(CatalogViewController *)self _deselectCompletionsViewControllerSelectedRow];
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy && !self->_transitioningToNewSizeClass)
  {
    [(CatalogViewController *)self dismissCompletionDetailWindowAndResumeEditingIfNeeded:0 completionHandler:0];
  }

  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [(CatalogViewController *)self _updateVisibilityForCompletionListTableView:tableView];

  v6.receiver = self;
  v6.super_class = CatalogViewController;
  [(CatalogViewController *)&v6 willMoveToParentViewController:controllerCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__CatalogViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2781DC1C0;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

void __76__CatalogViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1280);
  v3 = a2;
  v5 = [v2 viewController];
  v4 = [v3 isAnimated];

  [v5 reloadNavigationItemAnimated:v4];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(NSCache *)self->_tableViewCellHeightCache removeAllObjects];

  [(CatalogViewController *)self _reloadCompletionTable];
}

- (void)horizontalSizeClassDidChange:(id)change previousTraitCollection:(id)collection
{
  if ([collection horizontalSizeClass] && !self->_showingCompletions && (-[UnifiedField isFirstResponder](self->_textField, "isFirstResponder") & 1) == 0 && !self->_transitioningToNewSizeClass)
  {
    completionList = self->_completionList;
    self->_completionList = 0;

    [(CatalogViewController *)self _reloadCompletionTable];
  }
}

- (void)didUpdateObscuredInsetsForSizeTransition
{
  self->_startPageGeometryIsFrozen = 0;
  if (self->_startPageGeometryWasFrozenDuringLastLayout)
  {
    view = [(CatalogViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_updateVisibilityForCompletionListTableView:(id)view
{
  viewCopy = view;
  mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
  liveCompletionList = [mEMORY[0x277D28EB8] liveCompletionList];

  if ((liveCompletionList & 1) == 0)
  {
    [viewCopy setHidden:{-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") == 1}];
  }
}

- (id)completionsViewController
{
  completionsViewController = self->_completionsViewController;
  if (!completionsViewController)
  {
    v4 = objc_alloc_init(CompletionListTableViewController);
    [(CompletionListTableViewController *)v4 setClearsSelectionOnViewWillAppear:0];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    rootViewController = [WeakRetained rootViewController];
    tipsCoordinator = [rootViewController tipsCoordinator];
    webSearchTipView = [tipsCoordinator webSearchTipView];
    [(CompletionListTableViewController *)v4 setWebSearchTipView:webSearchTipView];

    tableView = [(CompletionListTableViewController *)v4 tableView];
    [tableView setDelegate:self];
    [tableView setEstimatedRowHeight:+[UITableViewCell safari_defaultHeightOfTrivialInstance]()];
    [tableView setLayoutMarginsFollowReadableWidth:0];
    [tableView setRowHeight:*MEMORY[0x277D76F30]];
    [(CatalogViewController *)self _updateVisibilityForCompletionListTableView:tableView];
    dataSource = [(CompletionListTableViewController *)v4 dataSource];
    [dataSource setActionHandler:self];

    v11 = self->_completionsViewController;
    self->_completionsViewController = v4;

    dataSource2 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
    [dataSource2 updateTableViewWithCompletionList:self->_completionList animated:0 completion:0];

    v13 = objc_alloc_init(CompletionListDismissalAnalyticsReporter);
    completionDismissalReporter = self->_completionDismissalReporter;
    self->_completionDismissalReporter = v13;

    completionsViewController = self->_completionsViewController;
  }

  return completionsViewController;
}

- (void)didGainOwnershipOfCompletionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  rootViewController = [WeakRetained rootViewController];
  -[CompletionListTableViewController setShowsWebSearchTipIfExists:](self->_completionsViewController, "setShowsWebSearchTipIfExists:", [rootViewController isUsingBottomCapsule] ^ 1);

  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  separatorEffect = [tableView separatorEffect];
  [tableView setSeparatorEffect:0];
  separatorEffect2 = [tableView separatorEffect];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    dataSource = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
    [dataSource reloadVisibleRows];
  }

  if (!self->_usesPopoverStyleForFavorites)
  {
    if (!-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") || ([MEMORY[0x277D28EB8] sharedManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "liveCompletionList"), v9, v10))
    {
      [(CatalogViewController *)self _updateAlternateContentViewController];
    }
  }

  [tableView setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  viewController = [(StartPageController *)self->_startPageController viewController];
  showsWallpaper = [viewController showsWallpaper];

  if (showsWallpaper)
  {
    customView = [(UIBarButtonItem *)self->_cancelBarButton customView];
    [customView setOpaqueBackgroundVisibility:1.0];
  }
}

- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController setAlternateContentViewController:0];

  viewController2 = [(StartPageController *)self->_startPageController viewController];
  showsWallpaper = [viewController2 showsWallpaper];

  if (showsWallpaper)
  {
    customView = [(UIBarButtonItem *)self->_cancelBarButton customView];
    [customView setOpaqueBackgroundVisibility:0.0];
  }

  v7.receiver = self;
  v7.super_class = CatalogViewController;
  [(AbstractCatalogViewController *)&v7 relinquishOwnershipOfCompletionsViewControllerFromCurrentParent];
}

- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  alternateContentViewController = [viewController alternateContentViewController];
  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;

  if (alternateContentViewController == universalSearchFirstTimeExperienceViewController)
  {
    viewController2 = [(StartPageController *)self->_startPageController viewController];
    [viewController2 setAlternateContentViewController:0];
  }

  v7.receiver = self;
  v7.super_class = CatalogViewController;
  [(AbstractCatalogViewController *)&v7 relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent];
}

- (void)_updateAlternateContentViewController
{
  parentViewController = [(CompletionListTableViewController *)self->_completionsViewController parentViewController];

  if (parentViewController == self)
  {
    completionsViewController = self->_completionsViewController;
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController setAlternateContentViewController:completionsViewController];
  }
}

- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController
{
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  view = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController setAlternateContentViewController:universalSearchFirstTimeExperienceViewController];
}

- (double)navigationBarHeight
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController navigationBarHeight];
  v4 = v3;

  return v4;
}

- (void)ignorePreviousLayoutSize
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController ignorePreviousLayoutSize];
}

- (void)reloadNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(CatalogViewController *)self updateStartPageHidesEmptyRootViewNavigationBar];
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController reloadNavigationItemAnimated:animatedCopy];
}

- (void)setCompletionList:(id)list
{
  listCopy = list;
  if (self->_completionList != listCopy)
  {
    v9 = listCopy;
    objc_storeStrong(&self->_completionList, list);
    [(CompletionList *)self->_completionList setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);
    [(CompletionList *)self->_completionList setLoadProgressObserver:WeakRetained];

    [(CompletionList *)self->_completionList setParsecSearchSession:self->_parsecSearchSession];
    listCopy = v9;
    if (self->_showingCompletions)
    {
      completionList = self->_completionList;
      query = [(CompletionList *)completionList query];
      [(CatalogViewController *)self completionListDidUpdate:completionList forQuery:query];

      listCopy = v9;
    }
  }
}

- (void)setLoadProgressObserver:(id)observer
{
  obj = observer;
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_loadProgressObserver, obj);
    [(CompletionList *)self->_completionList setLoadProgressObserver:obj];
  }
}

- (BOOL)popoverIsDismissing
{
  if (([(SFCatalogPlatterPresentationController *)self->_platterPresentationController dismissing]& 1) != 0)
  {
    return 1;
  }

  popoverPresentationController = self->_popoverPresentationController;

  return [(UIPopoverPresentationController *)popoverPresentationController dismissing];
}

- (void)setQueryString:(id)string forUpdatingCompletionListOnRestore:(BOOL)restore
{
  restoreCopy = restore;
  stringCopy = string;
  [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
  [(UnifiedField *)self->_textField clearUserTypedText];
  [(UnifiedField *)self->_textField setText:stringCopy];

  [(CatalogViewController *)self _textFieldEditingChangedForUpdatingCompletionListOnRestore:restoreCopy];
}

- (void)_presentPopoverWithViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![MEMORY[0x277D49A08] isSolariumEnabled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__CatalogViewController__presentPopoverWithViewController_completionHandler___block_invoke;
    aBlock[3] = &unk_2781D4D90;
    v11 = handlerCopy;
    v18 = v11;
    v12 = _Block_copy(aBlock);
    parentViewController = [controllerCopy parentViewController];
    if (parentViewController || ([controllerCopy presentingViewController], (parentViewController = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      _popoverController = [controllerCopy _popoverController];

      if (!_popoverController)
      {
        [controllerCopy setModalPresentationStyle:7];
        popoverPresentationController = [controllerCopy popoverPresentationController];
        popoverPresentationController = self->_popoverPresentationController;
        self->_popoverPresentationController = popoverPresentationController;

        [(UIPopoverPresentationController *)self->_popoverPresentationController setDelegate:self];
        [(UIPopoverPresentationController *)self->_popoverPresentationController _setShouldDisableInteractionDuringTransitions:0];
        if (objc_opt_respondsToSelector())
        {
          [(UIPopoverPresentationController *)self->_popoverPresentationController _setAllowsFocusInPresentingViewController:1];
        }

        [WeakRetained catalogViewController:self presentViewControllerWithinPopover:controllerCopy completionHandler:v11];
        goto LABEL_8;
      }
    }

    v12[2](v12);
LABEL_8:

    goto LABEL_11;
  }

  [controllerCopy setModalPresentationStyle:4];
  [controllerCopy setModalTransitionStyle:12];
  [controllerCopy setTransitioningDelegate:self];
  if (self->_completionsViewController)
  {
    foregroundChildViewController = [(AbstractCatalogViewController *)self->_popoverCatalogViewController foregroundChildViewController];
    v10 = foregroundChildViewController != self->_completionsViewController;
  }

  else
  {
    v10 = 1;
  }

  [WeakRetained catalogViewController:self presentViewControllerInPlatter:controllerCopy animated:v10 completionHandler:handlerCopy];
LABEL_11:
}

uint64_t __77__CatalogViewController__presentPopoverWithViewController_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didTogglePrivateBrowsing
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];

  if (isPrivateBrowsingEnabled)
  {
    [(CatalogViewController *)self _clearParsecSearchSession];
  }

  [(CatalogViewController *)self updateStartPageControlTintColor];
  [(SFStartPageViewController *)self->_startPageViewController reloadDataAnimatingDifferences:0];
  self->_nextSnapshotRequiresScreenUpdates = 1;
}

- (void)resetPrivateBrowsingExplanation
{
  [(StartPageController *)self->_startPageController updatePrivateBrowsingExplanationState];
  viewController = [(StartPageController *)self->_startPageController viewController];
  [viewController reloadDataAnimatingDifferences:0];
}

- (void)_reloadCompletionTable
{
  self->_completionTableIsReloading = 1;
  dataSource = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  [dataSource updateTableViewWithCompletionList:self->_completionList animated:0 completion:0];

  completionsViewController = self->_completionsViewController;

  [(CompletionListTableViewController *)completionsViewController setNeedsScrollOffsetReset];
}

- (BOOL)_shouldUsePopoverForCompletions
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self] && !-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") && !self->_voiceSearchWasInProgress;

  return v4;
}

- (void)setTopScrollEdgeEffectColor:(id)color
{
  colorCopy = color;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_topScrollEdgeEffectColor, color);
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController setTopScrollEdgeEffectColor:colorCopy];
  }
}

- (void)setTopScrollEdgeEffectStyle:(id)style
{
  styleCopy = style;
  if (self->_topScrollEdgeEffectStyle != styleCopy)
  {
    v7 = styleCopy;
    objc_storeStrong(&self->_topScrollEdgeEffectStyle, style);
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController setTopScrollEdgeEffectStyle:v7];

    styleCopy = v7;
  }
}

- (void)_dismissPopoverAnimated:(BOOL)animated dismissalReason:(int64_t)reason completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v9 = handlerCopy;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v11 = self->_popoverPresentationController;
  platterPresentationController = self->_platterPresentationController;
  if (platterPresentationController)
  {
    v13 = platterPresentationController;

    v11 = v13;
  }

  if (self->_dismissingPopover || !v11)
  {
    v10[2](v10);
  }

  else
  {
    self->_dismissingPopover = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained catalogViewControllerPopoverWillDismiss:self dismissalReason:reason];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke_2;
    v17[3] = &unk_2781D76E8;
    v21 = animatedCopy;
    v18 = v11;
    selfCopy = self;
    v20 = v10;
    v15 = _Block_copy(v17);
    v16 = v15;
    if (animatedCopy)
    {
      (*(v15 + 2))(v15);
    }

    else
    {
      [MEMORY[0x277D75D28] _performWithoutDeferringTransitions:v15];
    }
  }
}

uint64_t __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke_3;
  v5[3] = &unk_2781D56B0;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  [v2 dismissViewControllerAnimated:v3 completion:v5];
}

uint64_t __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _popoverDismissCompletion];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_popoverDismissCompletion
{
  [(UIPopoverPresentationController *)self->_popoverPresentationController setDelegate:0];
  popoverPresentationController = self->_popoverPresentationController;
  self->_popoverPresentationController = 0;

  [(SFCatalogPlatterPresentationController *)self->_platterPresentationController setDelegate:0];
  platterPresentationController = self->_platterPresentationController;
  self->_platterPresentationController = 0;

  self->_dismissingPopover = 0;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if (!self->_dismissingPopover)
  {
    self->_dismissingPopover = 1;
    presentedViewController = [dismiss presentedViewController];
    transitionCoordinator = [presentedViewController transitionCoordinator];
    v6[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__CatalogViewController_presentationControllerWillDismiss___block_invoke;
    v7[3] = &unk_2781DC1C0;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__CatalogViewController_presentationControllerWillDismiss___block_invoke_2;
    v6[3] = &unk_2781DC1C0;
    [transitionCoordinator animateAlongsideTransition:v7 completion:v6];
  }
}

void __59__CatalogViewController_presentationControllerWillDismiss___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1248));
  [WeakRetained catalogViewControllerPopoverWillDismiss:*(a1 + 32) dismissalReason:2];
}

uint64_t __59__CatalogViewController_presentationControllerWillDismiss___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) stopCompleting];
  v2 = *(a1 + 32);

  return [v2 _popoverDismissCompletion];
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self willRepositionPopoverToRect:rect inView:view];
}

- (void)setUsesPopoverStyleForFavorites:(BOOL)favorites
{
  if (self->_usesPopoverStyleForFavorites != favorites)
  {
    self->_usesPopoverStyleForFavorites = favorites;
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController reloadNavigationItemAnimated:{objc_msgSend(MEMORY[0x277D75D18], "areAnimationsEnabled")}];

    [(CatalogViewController *)self updateStartPageCustomizationPolicy];
  }
}

- (SFStartPageScrollObserver)startPageScrollObserver
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  scrollObserver = [viewController scrollObserver];

  return scrollObserver;
}

- (void)setStartPageScrollObserver:(id)observer
{
  startPageController = self->_startPageController;
  observerCopy = observer;
  viewController = [(StartPageController *)startPageController viewController];
  [viewController setScrollObserver:observerCopy];
}

- (NSString)libraryType
{
  startPageController = self->_startPageController;
  if (startPageController)
  {
    startPageController = [startPageController libraryType];
    v2 = vars8;
  }

  return startPageController;
}

- (void)setLibraryType:(id)type
{
  typeCopy = type;
  libraryType = [(StartPageController *)self->_startPageController libraryType];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(StartPageController *)self->_startPageController setLibraryType:typeCopy];
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController resetToRootViewWithCustomizationPolicy:{-[CatalogViewController startPageCustomizationPolicy](self, "startPageCustomizationPolicy")}];

    [(CatalogViewController *)self reloadNavigationItemAnimated:0];
  }
}

- (void)setLibraryType:(id)type cloudTabDeviceID:(id)d
{
  typeCopy = type;
  dCopy = d;
  libraryType = [(StartPageController *)self->_startPageController libraryType];
  if ((WBSIsEqual() & 1) == 0)
  {

    goto LABEL_5;
  }

  cloudTabDeviceID = [(StartPageController *)self->_startPageController cloudTabDeviceID];
  v9 = WBSIsEqual();

  if ((v9 & 1) == 0)
  {
LABEL_5:
    [(StartPageController *)self->_startPageController setLibraryType:typeCopy];
    [(StartPageController *)self->_startPageController setCloudTabDeviceID:dCopy];
    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController resetToRootViewWithCustomizationPolicy:{-[CatalogViewController startPageCustomizationPolicy](self, "startPageCustomizationPolicy")}];

    [(CatalogViewController *)self reloadNavigationItemAnimated:0];
  }
}

- (double)chromelessScrollDistance
{
  viewController = [(StartPageController *)self->_startPageController viewController];
  if ([viewController isShowingRootView])
  {
    [viewController scrollDistance];
    v4 = v3;
  }

  else
  {
    v4 = 1.79769313e308;
  }

  return v4;
}

- (void)setObscuredInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_obscuredInsets.top, v3), vceqq_f64(*&self->_obscuredInsets.bottom, v4)))) & 1) == 0)
  {
    self->_obscuredInsets = insets;
    [(CatalogViewController *)self _updateStartPageSafeAreaInsets];
    view = [(CatalogViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setTextField:(id)field
{
  fieldCopy = field;
  if (self->_textField != fieldCopy)
  {
    v8 = fieldCopy;
    unifiedTextField = [(CatalogViewController *)self unifiedTextField];
    [unifiedTextField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [unifiedTextField setDelegate:0];
    [unifiedTextField setInputAccessoryView:0];
    objc_storeStrong(&self->_textField, field);
    [(UnifiedField *)self->_textField setDelegate:self];
    if ([(UnifiedField *)self->_textField isFirstResponder])
    {
      [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
    }

    viewController = [(StartPageController *)self->_startPageController viewController];
    [viewController reloadNavigationItemAnimated:1];

    fieldCopy = v8;
  }
}

- (void)_clearParsecSearchSession
{
  [(WBSParsecDSession *)self->_parsecSearchSession setDelegate:0];
  parsecSearchSession = self->_parsecSearchSession;
  self->_parsecSearchSession = 0;

  completionList = self->_completionList;

  [(CompletionList *)completionList setParsecSearchSession:0];
}

- (void)_setShowingCompletions:(BOOL)completions popoverDismissalReason:(int64_t)reason completionHandler:(id)handler
{
  completionsCopy = completions;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CatalogViewController__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v9 = handlerCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (self->_showingCompletions != completionsCopy)
  {
    [(CatalogViewController *)self _removeNoRecentSearchesViewIfNecessary];
    self->_showingCompletions = completionsCopy;
    if (reason != 1 && !completionsCopy)
    {
      [(CompletionList *)self->_completionList clearCompletionListings];
    }

    v12 = dispatch_group_create();
    if (!completionsCopy)
    {
      if (reason != 1)
      {
        [(CatalogViewController *)self _clearParsecSearchSession];
      }

      if (!self->_usesPopoverStyleForFavorites)
      {
        dispatch_group_enter(v12);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __89__CatalogViewController__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke_3;
        v17[3] = &unk_2781D4D40;
        v18 = v12;
        [(CatalogViewController *)self _dismissPopoverAnimated:0 dismissalReason:reason completionHandler:v17];
      }

      [(CatalogViewController *)self relinquishOwnershipOfCompletionsViewControllerFromCurrentParent];
      [(CatalogViewController *)self _showStartPageInPopover];
      goto LABEL_21;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self];

    if (v14)
    {
      if ([(UnifiedField *)self->_textField voiceSearchState]|| self->_voiceSearchWasInProgress)
      {
        goto LABEL_18;
      }

      popoverCatalogViewController = self->_popoverCatalogViewController;
    }

    else
    {
      popoverCatalogViewController = self;
    }

    [popoverCatalogViewController takeOwnershipOfCompletionsViewController];
LABEL_18:
    universalSearchFirstTimeExperienceViewController = [(CatalogViewController *)self universalSearchFirstTimeExperienceViewController];
    if (universalSearchFirstTimeExperienceViewController)
    {
      dispatch_group_enter(v12);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __89__CatalogViewController__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke_2;
      v19[3] = &unk_2781D4D40;
      v20 = v12;
      [(CatalogViewController *)self _dismissUniversalSearchFirstTimeExperience:universalSearchFirstTimeExperienceViewController dismissalReason:reason completionHandler:v19];
    }

LABEL_21:
    dispatch_group_notify(v12, MEMORY[0x277D85CD0], v11);

    goto LABEL_22;
  }

  (*(v10 + 2))(v10);
LABEL_22:
}

uint64_t __89__CatalogViewController__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_showCompletionsInPopover
{
  _shouldUsePopoverForCompletions = [(CatalogViewController *)self _shouldUsePopoverForCompletions];
  if (_shouldUsePopoverForCompletions)
  {
    usesPopoverStyleForFavorites = self->_usesPopoverStyleForFavorites;
    [(AbstractCatalogViewController *)self->_popoverCatalogViewController takeOwnershipOfCompletionsViewController];
    if (!usesPopoverStyleForFavorites && ![(CatalogViewController *)self popoverIsShowing])
    {
      [(CatalogViewController *)self _presentPopoverWithViewController:self->_popoverCatalogViewController];
    }
  }

  return _shouldUsePopoverForCompletions;
}

- (void)_showStartPageInPopover
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__CatalogViewController__showStartPageInPopover__block_invoke;
  v2[3] = &unk_2781D4D40;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

uint64_t __48__CatalogViewController__showStartPageInPopover__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1016) updateStartPagePreferredContentSize];
  v2 = *(a1 + 32);

  return [v2 updatePreferredContentSize];
}

- (void)updateQuerySuggestionsFromResponse:(id)response
{
  responseCopy = response;
  textField = [(CatalogViewController *)self textField];
  completer = [responseCopy completer];

  [textField setContextCompleter:completer];
}

- (void)stopCompleting
{
  self->_hasScheduledCompletionListDismissal = 0;
  [(CompletionListDismissalAnalyticsReporter *)self->_completionDismissalReporter reportAnalytics];
  completionDismissalReporter = self->_completionDismissalReporter;
  self->_completionDismissalReporter = 0;

  if ([(CatalogViewController *)self isShowingUniversalSearchFirstTimeExperience])
  {
    [(CatalogViewController *)self _dismissUniversalSearchFirstTimeExperience:self->_universalSearchFirstTimeExperienceViewController dismissalReason:2];
  }

  textField = [(CatalogViewController *)self textField];
  contextCompleter = [textField contextCompleter];
  [contextCompleter discard];

  [textField setContextCompleter:0];
  [(CompletionList *)self->_completionList stopCompleting];
  [(CatalogViewController *)self _reloadCompletionTable];
  [(CatalogViewController *)self setShowingCompletions:0];
  [(CatalogViewController *)self _dismissPopoverAnimated:0 dismissalReason:2 completionHandler:0];
  [(CatalogViewController *)self _clearCompletionListCachesSoon];
}

- (void)_cancelClearingCompletionListCaches
{
  [(NSTimer *)self->_timerForClearingCompletionListCaches invalidate];
  timerForClearingCompletionListCaches = self->_timerForClearingCompletionListCaches;
  self->_timerForClearingCompletionListCaches = 0;
}

- (void)_clearCompletionListCachesSoon
{
  [(CatalogViewController *)self _cancelClearingCompletionListCaches];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CatalogViewController__clearCompletionListCachesSoon__block_invoke;
  v6[3] = &unk_2781D8AF0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:480.0];
  timerForClearingCompletionListCaches = self->_timerForClearingCompletionListCaches;
  self->_timerForClearingCompletionListCaches = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__CatalogViewController__clearCompletionListCachesSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[155] clearCachedSearches];
    [v2[149] removeAllObjects];
    WeakRetained = v2;
  }
}

- (void)reportUnifiedFieldSearchDidCancel
{
  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [feedbackDispatcher searchViewDisappearedBecauseOfEvent:4 forQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
}

- (void)showRecentSearches
{
  [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
  completionList = self->_completionList;

  [(CompletionList *)completionList showRecentSearches];
}

- (void)_ensureCompletionListAndParsecSession
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained catalogViewControllerShouldRequestNetworkedSuggestions:self])
  {
    areSiriSearchSuggestionsEnabled = [MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled];
  }

  else
  {
    areSiriSearchSuggestionsEnabled = 0;
  }

  v5 = objc_loadWeakRetained(&self->_browserController);
  v15 = v5;
  if (!self->_completionList)
  {
    v6 = [[CompletionList alloc] initWithParsecSearchSession:self->_parsecSearchSession browserController:v5];
    completionList = self->_completionList;
    self->_completionList = v6;

    [(CompletionList *)self->_completionList setDelegate:self];
    v8 = objc_loadWeakRetained(&self->_loadProgressObserver);
    [(CompletionList *)self->_completionList setLoadProgressObserver:v8];

    v5 = v15;
  }

  shouldShowRecentSearches = [v5 shouldShowRecentSearches];
  v10 = self->_completionList;
  if (shouldShowRecentSearches)
  {
    query = [(CompletionList *)v10 query];
    queryString = [query queryString];
    safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v14 = [queryString stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
    -[CompletionList setShowingRecentSearches:](self->_completionList, "setShowingRecentSearches:", [v14 length] == 0);
  }

  else
  {
    [(CompletionList *)v10 setShowingRecentSearches:0];
  }

  if (areSiriSearchSuggestionsEnabled)
  {
    [(CatalogViewController *)self _beginParsecSessionIfNeeded];
  }

  else
  {
    [(CatalogViewController *)self _clearParsecSearchSession];
  }

  [(CatalogViewController *)self _clearCompletionListCachesSoon];
}

- (void)_textFieldEditingChangedForUpdatingCompletionListOnRestore:(BOOL)restore
{
  restoreCopy = restore;
  v43[2] = *MEMORY[0x277D85DE8];
  self->_isCachedCompletionList = 0;
  [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController unifiedFieldDidChange];
  [(CatalogViewController *)self _removeNoRecentSearchesViewIfNecessary];
  [(CatalogViewController *)self _updateSearchFieldIcon];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained catalogViewControllerShouldRequestNetworkedSuggestions:self])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    p_completionList = &self->_completionList;
    -[CompletionList setShouldIncludeNetworkedSearchSuggestions:](self->_completionList, "setShouldIncludeNetworkedSearchSuggestions:", [standardUserDefaults BOOLForKey:*MEMORY[0x277D49B90]] ^ 1);

    [(CatalogViewController *)self _beginParsecSessionIfNeeded];
  }

  else
  {
    p_completionList = &self->_completionList;
    [(CompletionList *)self->_completionList setShouldIncludeNetworkedSearchSuggestions:0];
    [(CatalogViewController *)self _clearParsecSearchSession];
  }

  text = [(UnifiedField *)self->_textField text];
  safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
  v9 = [(__CFString *)text stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
  v10 = [v9 length];

  v42[0] = @"time";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v42[1] = @"query";
  v43[0] = v11;
  v12 = &stru_2827BF158;
  if (text)
  {
    v12 = text;
  }

  v43[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [Application postTestNotificationName:@"catalogViewControllerDidStart" object:self userInfo:v13];

  v14 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(CatalogViewController *)text _textFieldEditingChangedForUpdatingCompletionListOnRestore:v10, v14];
  }

  v15 = objc_loadWeakRetained(&self->_browserController);
  shouldShowRecentSearches = [v15 shouldShowRecentSearches];
  if (v10)
  {
    v17 = 1;
  }

  else
  {
    v17 = shouldShowRecentSearches;
  }

  [(CatalogViewController *)self _setShowingCompletions:v17 popoverDismissalReason:0 completionHandler:0];
  if ([WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self] && ((v17 | self->_usesPopoverStyleForFavorites) & 1) == 0)
  {
    self->_hasKeyboardBeenDismissedForThisQuery = 0;
    goto LABEL_36;
  }

  v40 = v17;
  v41 = v10;
  v18 = p_completionList;
  v19 = WeakRetained;
  v20 = v18;
  query = [*v18 query];
  queryString = [query queryString];
  v23 = [queryString isEqualToString:text];

  if (!v23)
  {
    if ([(UnifiedField *)self->_textField voiceSearchState]== 1)
    {
      v25 = 4;
      WeakRetained = v19;
    }

    else
    {
      WeakRetained = v19;
      if (![(UnifiedField *)self->_textField performingExternalSearch])
      {
        v35 = UIKeyboardGetCurrentInputMode();
        v36 = [v35 isEqualToString:*MEMORY[0x277D76BC0]];

        v26 = v20;
        if (v36)
        {
          v25 = 5;
        }

        else
        {
          isPastingText = [(UnifiedField *)self->_textField isPastingText];
          v38 = 26;
          if (!restoreCopy)
          {
            v38 = 1;
          }

          if (isPastingText)
          {
            v25 = 6;
          }

          else
          {
            v25 = v38;
          }
        }

        goto LABEL_21;
      }

      v25 = 4;
    }

    v26 = v20;
LABEL_21:
    v27 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:text triggerEvent:v25];
    effectiveProfileIdentifier = [v15 effectiveProfileIdentifier];
    [v27 setProfileIdentifierToFilterResults:effectiveProfileIdentifier];

    feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    [feedbackDispatcher userDidTypeKey:{objc_msgSend(v27, "queryID")}];

    if ([(UnifiedField *)self->_textField lastInputWasQuerySuggestion])
    {
      [v27 setTriggerEvent:8];
    }

    if (self->_lastInputWasSearchTextCompletion)
    {
      [v27 setTriggerEvent:25];
    }

    if ([(UnifiedField *)self->_textField voiceSearchState]== 1 || [(UnifiedField *)self->_textField performingExternalSearch])
    {
      [v27 setTriggerEvent:4];
      mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
      queryItems = [mEMORY[0x277D28EB8] queryItems];
      [v27 setQueryItems:queryItems];
    }

    querySuggestions = [(UnifiedField *)self->_textField querySuggestions];
    v33 = [querySuggestions safari_mapObjectsUsingBlock:&__block_literal_global_75];
    [v27 setQuerySuggestions:v33];

    [*v26 setUsingPencilInput:{-[UnifiedField isUsingPencilInput](self->_textField, "isUsingPencilInput")}];
    [*v26 setExecutingVoiceSearch:{-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") != 0}];
    if (v40)
    {
      [*v26 setQuery:v27];
    }

    textField = self->_textField;
    v24 = v41;
    if (textField && ![(UnifiedField *)textField voiceSearchState])
    {
      [v15 removeCachedSearchStateForActiveTabDocument];
    }

    goto LABEL_34;
  }

  [(CatalogViewController *)self _showCompletionsPopoverIfNecessary];
  WeakRetained = v19;
  v24 = v10;
LABEL_34:
  self->_hasKeyboardBeenDismissedForThisQuery = 0;
  if (v24)
  {
    [MEMORY[0x277D4C5D0] safari_prewarmSearchUI];
  }

LABEL_36:
}

id __84__CatalogViewController__textFieldEditingChangedForUpdatingCompletionListOnRestore___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D4A020];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 title];
  v6 = [v3 topicId];
  v7 = [v4 initWithTitle:v5 identifier:v6 type:0 tag:v3];

  return v7;
}

- (void)setNavigationBar:(id)bar
{
  barCopy = bar;
  if (self->_navigationBar != barCopy)
  {
    v7 = barCopy;
    objc_storeStrong(&self->_navigationBar, bar);
    textField = [(_SFNavigationBarCommon *)self->_navigationBar textField];
    [(CatalogViewController *)self setTextField:textField];

    barCopy = v7;
  }
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [tableView setNeedsLayout];
}

- (void)completionListDidUpdate:(id)update forQuery:(id)query
{
  v17[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  queryCopy = query;
  if (!self->_dismissingPopover)
  {
    [(CatalogViewController *)self _reloadCompletionTable];
    if (!self->_isCachedCompletionList)
    {
      queryString = [queryCopy queryString];
      [(CatalogViewController *)self _preselectCompletionItemIfNecessaryForQueryString:queryString];

      [(CatalogViewController *)self _showCompletionsPopoverIfNecessary];
    }
  }

  if (self->_waitingOnFirstCompletionListUpdateForTelemetry)
  {
    self->_waitingOnFirstCompletionListUpdateForTelemetry = 0;
    v9 = WBS_LOG_CHANNEL_PREFIXSignposts();
    if (os_signpost_enabled(v9))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_215819000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UnifiedFieldFirstKeyTapToCompletionListUpdate", " enableTelemetry=YES ", v15, 2u);
    }
  }

  if (self->_hasPendingVoiceSearchUpdate)
  {
    [(CatalogViewController *)self _commitVoiceSearchIfNecessary];
  }

  v16[0] = @"time";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v16[1] = @"query";
  v17[0] = v10;
  queryString2 = [queryCopy queryString];
  v12 = queryString2;
  v13 = &stru_2827BF158;
  if (queryString2)
  {
    v13 = queryString2;
  }

  v17[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [Application postTestNotificationName:@"catalogViewControllerDidFinish" object:self userInfo:v14];
}

- (void)_preselectCompletionItemIfNecessaryForQueryString:(id)string
{
  stringCopy = string;
  lastTopHitMatch = self->_lastTopHitMatch;
  if (lastTopHitMatch && ([(UnifiedField *)self->_textField reflectedItem], v5 = objc_claimAutoreleasedReturnValue(), v5, lastTopHitMatch == v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = ![(UnifiedField *)self->_textField lastEditWasADeletion];
  }

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:v7];
  v9 = [v8 isEquivalentTo:self->_lastTopHitMatch];

  if (v6 && v9)
  {
    tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    [tableView selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
  }

  else
  {
    tableView = [(CompletionList *)self->_completionList indexPathOfAsTypedSearchSuggestion];
    v11 = WBSUnifiedFieldInputTypeForString();
    if (!self->_lastInputWasSearchTextCompletion && (v11 == 3 || !v11))
    {
      if ([tableView isEqual:v7])
      {
        v12 = [(CatalogViewController *)self _completionItemAtIndexPath:tableView];
        [(UnifiedField *)self->_textField setReflectedItem:v12];

        if (![(UnifiedField *)self->_textField lastEditWasADeletion])
        {
          tableView2 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
          [tableView2 selectRowAtIndexPath:tableView animated:0 scrollPosition:0];
        }
      }
    }
  }

  [(CatalogViewController *)self _updateSearchFieldIcon];
}

- (void)_showCompletionsPopoverIfNecessary
{
  if (self->_showingCompletions)
  {
    if ([(CompletionList *)self->_completionList numberOfGroups])
    {
      if ([(CatalogViewController *)self _shouldUsePopoverForCompletions])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v4 = [WeakRetained catalogViewControllerShouldSuppressPopover:self];

        if ((v4 & 1) == 0)
        {

          [(CatalogViewController *)self _showCompletionsInPopover];
        }
      }
    }
  }
}

- (void)_generateVisibleResultsFeedbackForEvent:(int64_t)event
{
  v66 = *MEMORY[0x277D85DE8];
  if (!self->_feedbackIsBeingGenerated && (event != 3 || !self->_lastFeedbackSentWasScrolling) && [(CompletionList *)self->_completionList hasCompletions]&& [(UnifiedField *)self->_textField voiceSearchState]!= 1)
  {
    self->_feedbackIsBeingGenerated = 1;
    if (event)
    {
      v48 = [MEMORY[0x277CBEB98] setWithSet:self->_seenVisibleResults];
    }

    else
    {
      v48 = 0;
    }

    [(NSMutableSet *)self->_seenVisibleResults removeAllObjects];
    v49 = objc_opt_new();
    tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    window = [tableView window];
    [window bounds];
    v53 = v7;
    v54 = v6;
    v51 = v9;
    v52 = v8;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
    v11 = [indexPathsForVisibleRows countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v60;
      v14 = *MEMORY[0x277CBF3A0];
      v15 = *(MEMORY[0x277CBF3A0] + 8);
      v16 = *(MEMORY[0x277CBF3A0] + 16);
      rect2 = *(MEMORY[0x277CBF3A0] + 24);
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(indexPathsForVisibleRows);
          }

          v18 = *(*(&v59 + 1) + 8 * i);
          [tableView rectForRowAtIndexPath:v18];
          x = v67.origin.x;
          y = v67.origin.y;
          width = v67.size.width;
          height = v67.size.height;
          v74.origin.x = v14;
          v74.origin.y = v15;
          v74.size.width = v16;
          v74.size.height = rect2;
          if (!CGRectEqualToRect(v67, v74))
          {
            [tableView convertRect:0 toView:{x, y, width, height}];
            v56 = v24;
            v57 = v23;
            v55 = v25;
            v27 = v26;
            window2 = [tableView window];
            [window2 convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
            v30 = v29;
            v31 = v14;
            v33 = v32;
            v34 = v15;
            v36 = v35;
            v37 = v16;
            v39 = v38;

            v68.origin.x = v30;
            v68.origin.y = v33;
            v14 = v31;
            v68.size.width = v36;
            v15 = v34;
            v68.size.height = v39;
            v16 = v37;
            v75.origin.x = v57;
            v75.origin.y = v56;
            v75.size.width = v55;
            v75.size.height = v27;
            v69 = CGRectIntersection(v68, v75);
            v40 = CGRectGetHeight(v69);
            v70.origin.x = v57;
            v70.origin.y = v56;
            v70.size.width = v55;
            v70.size.height = v27;
            if (v40 < CGRectGetHeight(v70) * 0.5)
            {
              v71.origin.y = v53;
              v71.origin.x = v54;
              v71.size.height = v51;
              v71.size.width = v52;
              v76.origin.x = v57;
              v76.origin.y = v56;
              v76.size.width = v55;
              v76.size.height = v27;
              v72 = CGRectIntersection(v71, v76);
              v41 = CGRectGetHeight(v72);
              v73.origin.x = v57;
              v73.origin.y = v56;
              v73.size.width = v55;
              v73.size.height = v27;
              if (v41 > CGRectGetHeight(v73) * 0.5)
              {
                v42 = [(CatalogViewController *)self _completionItemAtIndexPath:v18];
                if (v42)
                {
                  [(NSMutableSet *)self->_seenVisibleResults addObject:v42];
                  if (!event || ([v48 containsObject:v42] & 1) == 0)
                  {
                    [v49 addObject:v42];
                  }
                }

                else
                {
                  v43 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v64 = v18;
                    _os_log_error_impl(&dword_215819000, v43, OS_LOG_TYPE_ERROR, "Skipped generating feedback for cell at %@ due to nil completion list item", buf, 0xCu);
                  }
                }
              }
            }
          }
        }

        v12 = [indexPathsForVisibleRows countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v12);
    }

    v44 = [v49 count];
    if (event == 3 || v44)
    {
      feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
      v46 = [v49 copy];
      query = [(CompletionList *)self->_completionList query];
      [feedbackDispatcher didDisplayCompletionListItems:v46 forQuery:query forEvent:event];
    }

    self->_feedbackIsBeingGenerated = 0;
    self->_lastFeedbackSentWasScrolling = (event - 1) < 2;
  }
}

- (void)_logTopHitWasChosen:(BOOL)chosen
{
  chosenCopy = chosen;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (([WeakRetained isPrivateBrowsingEnabled] & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v6 = MEMORY[0x277D499B8];
    v7 = self->_lastTopHitMatch;
    WeakRetained = [v6 sharedLogger];
    lastTopHitMatchLength = self->_lastTopHitMatchLength;
    [(CompletionItem *)v7 weight];
    v10 = v9;

    LODWORD(v11) = v10;
    [WeakRetained didChooseTopHit:chosenCopy matchLength:lastTopHitMatchLength matchScore:v11];
  }
}

- (void)completionList:(id)list didRemoveItem:(id)item wasLastInSection:(BOOL)section atIndexPath:(id)path withCompletionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  dataSource = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  completionList = self->_completionList;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__CatalogViewController_completionList_didRemoveItem_wasLastInSection_atIndexPath_withCompletionHandler___block_invoke;
  v16[3] = &unk_2781D4D90;
  v13 = handlerCopy;
  v17 = v13;
  [dataSource updateTableViewWithCompletionList:completionList rowAnimation:0 completion:v16];

  lastTopHitMatch = self->_lastTopHitMatch;
  if (lastTopHitMatch == itemCopy)
  {
    self->_lastTopHitMatch = 0;

    [(UnifiedField *)self->_textField topHitDidBecomeReady];
  }

  reflectedItem = [(UnifiedField *)self->_textField reflectedItem];

  if (reflectedItem == itemCopy)
  {
    [(UnifiedField *)self->_textField setReflectedItem:0];
  }
}

- (void)completionList:(id)list topHitDidBecomeReadyForString:(id)string
{
  stringCopy = string;
  textField = self->_textField;
  listCopy = list;
  [(UnifiedField *)textField topHitDidBecomeReady];
  v8 = [listCopy topHitForString:stringCopy];

  if (self->_lastTopHitMatch != v8)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      originalURLString = [(CompletionItem *)self->_lastTopHitMatch originalURLString];
      originalURLString2 = [(CompletionItem *)v8 originalURLString];
      v11 = [originalURLString isEqualToString:originalURLString2];

      if ((v11 & 1) == 0)
      {
        [(CatalogViewController *)self _logTopHitWasChosen:0];
      }
    }

    objc_storeStrong(&self->_lastTopHitMatch, v8);
    self->_lastTopHitMatchLength = [stringCopy length];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self mightSelectCompletionItem:v8 forString:stringCopy];
}

- (void)completionListDidRestoreCachedCompletions:(id)completions
{
  self->_isCachedCompletionList = 1;
  dataSource = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  [dataSource updateTableViewWithCompletionList:self->_completionList animated:0 completion:0];
}

- (void)completionList:(id)list didFetchFavicon:(id)favicon forRowAtIndexPath:(id)path
{
  if (self->_completionList == list)
  {
    completionsViewController = self->_completionsViewController;
    pathCopy = path;
    faviconCopy = favicon;
    tableView = [(CompletionListTableViewController *)completionsViewController tableView];
    v13 = [tableView cellForRowAtIndexPath:pathCopy];

    imageView = [v13 imageView];
    [imageView setImage:faviconCopy];

    [v13 setNeedsLayout];
    [(CatalogViewController *)self _updateSearchFieldIcon];
  }
}

- (void)completionList:(id)list willGoToURL:(id)l fromPegasusSearchResult:(id)result forImageAttribution:(BOOL)attribution
{
  attributionCopy = attribution;
  lCopy = l;
  [(CatalogViewController *)self willGoToURLFromPegasusSearchResult:result];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self loadURL:lCopy inExternalApplication:0 forImageAttribution:attributionCopy];
}

- (id)_completionItemAtIndexPath:(id)path
{
  completionsViewController = self->_completionsViewController;
  pathCopy = path;
  dataSource = [(CompletionListTableViewController *)completionsViewController dataSource];
  v6 = [dataSource completionItemAtIndexPath:pathCopy];

  return v6;
}

- (id)tableView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [viewCopy cellForRowAtIndexPath:identifier];
    v10 = objc_alloc_init(MEMORY[0x277D758D8]);
    v11 = MEMORY[0x277D75208];
    [v9 bounds];
    v17 = CGRectInset(v16, 0.0, 0.0);
    v12 = [v11 bezierPathWithRoundedRect:v17.origin.x cornerRadius:{v17.origin.y, v17.size.width, v17.size.height, 20.0}];
    [v10 setVisiblePath:v12];

    v13 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v9 parameters:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tableView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [viewCopy cellForRowAtIndexPath:identifier];
    v10 = objc_alloc_init(MEMORY[0x277D758D8]);
    v11 = MEMORY[0x277D75208];
    [v9 bounds];
    v20 = CGRectInset(v19, 0.0, 0.0);
    v12 = [v11 bezierPathWithRoundedRect:v20.origin.x cornerRadius:{v20.origin.y, v20.size.width, v20.size.height, 20.0}];
    [v10 setVisiblePath:v12];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = [WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self];

    if (v14)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v10 setBackgroundColor:clearColor];
    }

    v16 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v9 parameters:v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)tableView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    textField = [(CatalogViewController *)self textField];
    [textField endEditing:1];

    textField2 = [(CatalogViewController *)self textField];
    selectedTextRange = [textField2 selectedTextRange];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:selectedTextRange];
  }
}

- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerSuppressSelectedItemUnfocus:self];

  self->_completionDetailIsPresented = 0;
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    textField = [(CatalogViewController *)self textField];
    [textField becomeFirstResponder];

    v10 = objc_loadWeakRetained(&self->_browserController);
    textRangeToRestoreAfterCompletionDetailIsDismissed = [v10 textRangeToRestoreAfterCompletionDetailIsDismissed];
    textField2 = [(CatalogViewController *)self textField];
    [textField2 setSelectedTextRange:textRangeToRestoreAfterCompletionDetailIsDismissed];

    [v10 setTextRangeToRestoreAfterCompletionDetailIsDismissed:0];
  }
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(CatalogViewController *)self _completionItemAtIndexPath:pathCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (!v10)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CatalogViewController tableView:pathCopy contextMenuConfigurationForRowAtIndexPath:v14 point:?];
    }

    goto LABEL_11;
  }

  getSearchUITableViewCellClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CatalogViewController tableView:v15 contextMenuConfigurationForRowAtIndexPath:? point:?];
    }

    goto LABEL_11;
  }

  self->_completionDetailIsPresented = 1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v11 = MEMORY[0x277D753B0];
  contextMenuActionProvider = [v10 contextMenuActionProvider];
  v13 = [v11 configurationWithIdentifier:pathCopy previewProvider:0 actionProvider:contextMenuActionProvider];

LABEL_12:
LABEL_13:

  return v13;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(CatalogViewController *)self _completionItemAtIndexPath:pathCopy];
  v7 = [(CatalogViewController *)self _cellHeightCacheKeyForCompletionItem:v6 indexPath:pathCopy];

  if (v7 && (-[NSCache objectForKey:](self->_tableViewCellHeightCache, "objectForKey:", v7), v8 = objc_claimAutoreleasedReturnValue(), [v8 floatValue], v10 = v9, v8, v10 != 0.0))
  {
    v11 = v10;
  }

  else
  {
    v11 = *MEMORY[0x277D76F30];
  }

  return v11;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:pathCopy];
  v9 = [(CatalogViewController *)self _cellHeightCacheKeyForCompletionItem:v8 indexPath:pathCopy];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    [cellCopy bounds];
    Height = CGRectGetHeight(v15);
    *&Height = Height;
    v12 = [v10 numberWithFloat:Height];
    [(NSCache *)self->_tableViewCellHeightCache setObject:v12 forKey:v9];
  }
}

- (id)_cellHeightCacheKeyForCompletionItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = 0;
  }

  else
  {
    sfSearchResultValue = [itemCopy sfSearchResultValue];
    identifier = [sfSearchResultValue identifier];
  }

  return identifier;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(CompletionList *)self->_completionList showingRecentSearches])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CompletionList *)self->_completionList defaultSectionTitleForGroupAtIndex:section];
  }

  return v6;
}

- (void)_selectedCompletionItemAtIndexPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [(CatalogViewController *)self _completionItemAtIndexPath:pathCopy];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [pathCopy row] + 1;
  section = [pathCopy section];
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  if (section)
  {
    for (i = 0; i != section; ++i)
    {
      v6 += [tableView numberOfRowsInSection:i];
    }
  }

  [v5 auditAcceptedCompletionWithRank:v6];
  if (v6 == 1)
  {
    v10 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      isTopHit = [v5 isTopHit];

      if (isTopHit)
      {
        selfCopy2 = self;
        v13 = 1;
LABEL_12:
        [(CatalogViewController *)selfCopy2 _logTopHitWasChosen:v13];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (self->_lastTopHitMatch)
  {
    selfCopy2 = self;
    v13 = 0;
    goto LABEL_12;
  }

LABEL_13:
  text = [(UnifiedField *)self->_textField text];
  [(CatalogViewController *)self _updatePersonalisationDataForDonation:text forPosition:v6];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text2 = [(UnifiedField *)self->_textField text];
  [WeakRetained catalogViewController:self completionItem:v5 wasAcceptedForString:text2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [v5 string];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    querySuggestions = [(UnifiedField *)self->_textField querySuggestions];
    v19 = [querySuggestions countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v26 = pathCopy;
      v20 = *v28;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(querySuggestions);
          }

          title = [*(*(&v27 + 1) + 8 * j) title];
          v23 = [title safari_isCaseAndDiacriticInsensitiveEqualToString:string];

          if (v23)
          {
            v19 = 1;
            goto LABEL_25;
          }
        }

        v19 = [querySuggestions countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

LABEL_25:
      pathCopy = v26;
    }
  }

  else
  {
    v19 = 0;
  }

  [(CatalogViewController *)self _logQueryEngagement];
  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [feedbackDispatcher userDidEngageWithCompletionListItem:v5 onActionButton:0 method:0 doesMatchSiriSuggestion:v19 voiceSearchQueryID:0];

  [(CompletionListDismissalAnalyticsReporter *)self->_completionDismissalReporter setAcceptedCompletionListItem:1];
  matchedTextForInputAnalytics = [v5 matchedTextForInputAnalytics];
  -[CatalogViewController _sendInputAnalyticsForItemWithMatchedText:matchType:](self, "_sendInputAnalyticsForItemWithMatchedText:matchType:", matchedTextForInputAnalytics, [v5 matchTypeForInputAnalytics]);

  [v5 acceptCompletionWithActionHandler:self];
  [(CatalogViewController *)self _executeActionForParsecResultAtIndexPath:pathCopy tableView:tableView triggerEvent:2];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

LABEL_28:
}

- (void)_executeActionForParsecResultAtIndexPath:(id)path tableView:(id)view triggerEvent:(unint64_t)event
{
  pathCopy = path;
  viewCopy = view;
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
  getSearchUITableViewCellClass();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(CatalogViewController *)self _completionItemAtIndexPath:pathCopy];
    getSearchUIClass_0();
    if ((objc_opt_respondsToSelector() & 1) == 0 || (SearchUIClass_0 = getSearchUIClass_0(), [v11 sfSearchResultValue], v13 = objc_claimAutoreleasedReturnValue(), +[WBSParsecDSession sharedPARSession](UniversalSearchSession, "sharedPARSession"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(SearchUIClass_0) = objc_msgSend(SearchUIClass_0, "hasValidCommandForResult:feedbackListener:", v13, v14), v14, v13, SearchUIClass_0))
    {
      v15 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [(CatalogViewController *)self _executeActionForParsecResultTableViewCell:v15 completionItem:v11 triggerEvent:event];
    }
  }
}

- (void)_executeActionForParsecResultTableViewCell:(id)cell completionItem:(id)item triggerEvent:(unint64_t)event
{
  cellCopy = cell;
  itemCopy = item;
  getSearchUITableViewCellClass();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    self->_completionDetailIsPresented = 1;
    navigationBar = [(CatalogViewController *)self navigationBar];
    textField = [navigationBar textField];

    selectedTextRange = [textField selectedTextRange];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:selectedTextRange];

    [cellCopy executeCommandWithTriggerEvent:event];
    self->_completionDetailIsPresented = 0;
    mEMORY[0x277D4A808] = [MEMORY[0x277D4A808] sharedRecorder];
    sfSearchResultValue = [itemCopy sfSearchResultValue];
    v15 = [sfSearchResultValue url];
    [mEMORY[0x277D4A808] didActualizeImpressionForURL:v15 provenance:1];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(CompletionList *)self->_completionList showingRecentSearches])
  {
    recentSearchesHeaderFooterView = [(CompletionListTableViewController *)self->_completionsViewController recentSearchesHeaderFooterView];
  }

  else
  {
    v8 = [(CompletionList *)self->_completionList headerViewReuseIdentifierForGroupAtIndex:section];
    if (v8)
    {
      recentSearchesHeaderFooterView = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];
      if (!recentSearchesHeaderFooterView)
      {
        recentSearchesHeaderFooterView = [(CompletionList *)self->_completionList headerViewForGroupAtIndex:section];
      }

      [(CompletionList *)self->_completionList configureHeaderView:recentSearchesHeaderFooterView forGroupAtIndex:section];
    }

    else
    {
      v9 = [(CompletionList *)self->_completionList defaultSectionTitleForGroupAtIndex:section];
      if ([v9 length])
      {
        recentSearchesHeaderFooterView = [(CompletionListTableViewController *)self->_completionsViewController defaultHeaderFooterView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
          if ([indexPathForSelectedRow row])
          {
            v11 = 1;
          }

          else
          {
            v11 = [indexPathForSelectedRow section] != section;
          }

          v12 = indexPathForSelectedRow == 0 || v11;
        }

        else
        {
          v12 = 0;
        }

        headerConfiguration = [MEMORY[0x277D756E0] headerConfiguration];
        [headerConfiguration setText:v9];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke;
        v19[3] = &unk_2781DC710;
        v14 = headerConfiguration;
        sectionCopy = section;
        v20 = v14;
        selfCopy = self;
        v22 = viewCopy;
        v24 = v12 & 1;
        __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke(v19);
        [v14 setDirectionalLayoutMargins:?];
        textProperties = [v14 textProperties];
        v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74420]];
        [textProperties setFont:v16];

        [textProperties setTransform:0];
        [recentSearchesHeaderFooterView setContentConfiguration:v14];
        isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [recentSearchesHeaderFooterView setShowsSeparator:(isSolariumEnabled ^ 1) & v12];
        }
      }

      else
      {
        recentSearchesHeaderFooterView = 0;
      }
    }
  }

  return recentSearchesHeaderFooterView;
}

double __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) directionalLayoutMargins];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke_2;
  v21[3] = &unk_2781DC6C0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v23 = *(a1 + 56);
  v21[4] = v11;
  v22 = v10;
  v12 = __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke_2(v21);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke_3;
  v14[3] = &unk_2781DC6E8;
  v15 = *(a1 + 48);
  v20 = *(a1 + 64);
  v16 = v3;
  v17 = v5;
  v18 = v7;
  v19 = v9;
  __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke_3(v14);

  return v12;
}

double __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = [*(v2 + 1240) completionsForGroupAtIndex:0];
    v4 = [v3 count];
    v5 = v4 == 1;
    v6 = [v3 lastObject];
    if (objc_opt_respondsToSelector())
    {
      if ([v6 completionCellBackgroundModeInTopSection])
      {
        v7 = 1;
      }

      else
      {
        v7 = v4 == 1;
      }

      v5 = v7;
    }

    if (*(a1 + 48) == 1 && v5)
    {
      v8 = 24.0;
    }

    else
    {
      v8 = 16.0;
    }

    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v9 = [*(a1 + 40) traitCollection];
      v10 = [v9 sf_usesVibrantAppearance];

      if (v10)
      {
        v8 = v8 + -4.0;
      }
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v2 + 1008));
    v12 = [WeakRetained rootViewController];
    v13 = [v12 isUsingBottomCapsule];

    v8 = 0.0;
    if ((v13 & 1) == 0)
    {
      v8 = 16.0;
      if ([MEMORY[0x277D49A08] isSolariumEnabled])
      {
        v14 = [*(a1 + 40) traitCollection];
        v15 = [v14 sf_usesVibrantAppearance];

        if (v15)
        {
          return 9.0;
        }

        else
        {
          return 16.0;
        }
      }
    }
  }

  return v8;
}

double __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke_3(uint64_t a1)
{
  if (![MEMORY[0x277D49A08] isSolariumEnabled] || (objc_msgSend(*(a1 + 32), "traitCollection"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "sf_usesVibrantAppearance"), v2, result = 5.0, (v3 & 1) == 0))
  {
    result = 3.0;
    if ((*(a1 + 72) & 1) == 0)
    {
      return *(a1 + 56);
    }
  }

  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (section || ![(CompletionList *)self->_completionList showingRecentSearches])
  {
    v17 = [(CompletionList *)self->_completionList headerViewReuseIdentifierForGroupAtIndex:section];
    if (v17)
    {
      v16 = *MEMORY[0x277D76F30];
    }

    else
    {
      v18 = [(CompletionList *)self->_completionList defaultSectionTitleForGroupAtIndex:section];
      if ([v18 length])
      {
        v16 = *MEMORY[0x277D76F30];
      }

      else
      {
        isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
        if (section || !isSolariumEnabled || ([viewCopy traitCollection], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "sf_usesVibrantAppearance"), v20, v16 = 9.0, (v21 & 1) == 0))
        {
          headerConfiguration = [MEMORY[0x277D756E0] headerConfiguration];
          [headerConfiguration directionalLayoutMargins];
          v16 = v23;

          if (!section)
          {
            rootViewController = [WeakRetained rootViewController];
            isUsingBottomCapsule = [rootViewController isUsingBottomCapsule];

            if (isUsingBottomCapsule)
            {
              v16 = 1.0;
            }
          }
        }
      }
    }
  }

  else
  {
    view = [(CatalogViewController *)self view];
    [view frame];
    v10 = v9;

    v11 = +[RecentSearchesTableHeaderView clearAllAttributedString];
    [v11 boundingRectWithSize:1 options:0 context:{v10, 1.79769313e308}];
    v13 = v12;

    rootViewController2 = [WeakRetained rootViewController];
    if ([rootViewController2 isUsingBottomCapsule])
    {
      v15 = 44.0;
    }

    else
    {
      v15 = 51.0;
    }

    if (v15 <= v13 + 26.0)
    {
      v16 = v13 + 26.0;
    }

    else
    {
      v16 = v15;
    }
  }

  return v16;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v4 = [(CompletionList *)self->_completionList swipeActionsForCompletionItemAtIndexPath:path];
  v5 = [MEMORY[0x277D75AD8] configurationWithActions:v4];
  [v5 setPerformsFirstActionWithFullSwipe:0];

  return v5;
}

- (void)_keyboardWillShow:(id)show
{
  p_keyboardFrame = &self->_keyboardFrame;
  userInfo = [show userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  p_keyboardFrame->origin.x = v7;
  p_keyboardFrame->origin.y = v8;
  p_keyboardFrame->size.width = v9;
  p_keyboardFrame->size.height = v10;

  self->_lastFeedbackSentWasScrolling = 0;
  if (self->_hasKeyboardBeenDismissedForThisQuery && !self->_completionDetailIsPresented)
  {

    [(CatalogViewController *)self _generateVisibleResultsFeedbackForEvent:3];
  }
}

- (void)_keyboardDidShow:(id)show
{
  if ([(UnifiedField *)self->_textField isFirstResponder])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXSignposts();
    if (os_signpost_enabled(v3))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_215819000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UnifiedFieldKeyboardPresentation", " enableTelemetry=YES ", v4, 2u);
    }
  }
}

- (void)_keyboardWillHide:(id)hide
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
  self->_keyboardFrame.size = v4;
  self->_hasKeyboardBeenDismissedForThisQuery = 1;
  self->_keyboardIsBeingDismissed = 1;
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  if ([tableView isDragging])
  {
  }

  else
  {
    completionDetailIsPresented = self->_completionDetailIsPresented;

    if (!completionDetailIsPresented)
    {

      [(CatalogViewController *)self _generateVisibleResultsFeedbackForEvent:3];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v5 = v4;
  [scrollCopy contentInset];
  if (self->_keyboardIsBeingDismissed || ((v10 = -v6, self->_lastScrollOffset != v5) ? (v11 = v5 < v10) : (v11 = 1), !v11 && (v12 = v7, [scrollCopy contentSize], v14 = v12 + v13, objc_msgSend(scrollCopy, "bounds"), v5 <= v14 - v15)))
  {
    [scrollCopy contentOffset];
    if (v8 < self->_lastScrollOffset)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(CatalogViewController *)self _generateVisibleResultsFeedbackForEvent:v9];
    self->_lastScrollOffset = v5;
  }
}

- (id)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (void)search:(id)search
{
  searchCopy = search;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didSelectSearch:searchCopy];
}

- (void)goToURLString:(id)string
{
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didSelectAddress:stringCopy];
}

- (void)goToURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self loadURL:lCopy inExternalApplication:0 forImageAttribution:0];
}

- (void)openURLInExternalApplication:(id)application
{
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self loadURL:applicationCopy inExternalApplication:1 forImageAttribution:0];
}

- (void)willGoToURLFromPegasusSearchResult:(id)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [(UnifiedField *)self->_textField text];
  [WeakRetained catalogViewController:self completionItem:resultCopy wasAcceptedForString:text];
}

- (void)findOnPage
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidSelectFindOnPage:self];
}

- (void)presentDetail:(id)detail
{
  self->_completionDetailIsPresented = 1;
  detailCopy = detail;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  navigationBar = [(CatalogViewController *)self navigationBar];
  textField = [navigationBar textField];

  if ([textField isFirstResponder])
  {
    selectedTextRange = [textField selectedTextRange];
    [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:selectedTextRange];

    [textField resignFirstResponder];
  }

  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  tableView2 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  v11 = [[CompletionDetailViewController alloc] initWithRootViewController:detailCopy];
  [(CompletionDetailViewController *)v11 setModalPresentationStyle:2];
  [(CompletionDetailViewController *)v11 setCompletionDetailViewControllerDelegate:WeakRetained];
  completionDetailViewController = self->_completionDetailViewController;
  self->_completionDetailViewController = &v11->super.super;

  [(CatalogViewController *)self _presentStagedCompletionDetailViewControllerAnimated:1];
}

- (void)_presentStagedCompletionDetailViewControllerAnimated:(BOOL)animated
{
  if (self->_completionDetailViewController != self->_completionDetailViewControllerBeingPresented)
  {
    animatedCopy = animated;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained catalogViewController:self willPresentDetailViewController:self->_completionDetailViewController];
    popoverCatalogViewController = self;
    if ([WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self])
    {
      popoverCatalogViewController = self->_popoverCatalogViewController;
    }

    v7 = self->_completionDetailViewController;
    completionDetailViewControllerBeingPresented = self->_completionDetailViewControllerBeingPresented;
    self->_completionDetailViewControllerBeingPresented = v7;
    v9 = popoverCatalogViewController;

    completionDetailViewController = self->_completionDetailViewController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__CatalogViewController__presentStagedCompletionDetailViewControllerAnimated___block_invoke;
    v11[3] = &unk_2781D4D40;
    v11[4] = self;
    [v9 presentViewController:completionDetailViewController animated:animatedCopy completion:v11];
  }
}

void __78__CatalogViewController__presentStagedCompletionDetailViewControllerAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1040);
  *(v1 + 1040) = 0;
}

- (void)dismissCompletionDetailWindowAndResumeEditingIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v8 = v7;
  if (self->_completionDetailViewController)
  {
    dispatch_group_enter(v7);
    completionDetailViewController = self->_completionDetailViewController;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__CatalogViewController_dismissCompletionDetailWindowAndResumeEditingIfNeeded_completionHandler___block_invoke;
    v22[3] = &unk_2781D4D40;
    v10 = v8;
    v23 = v10;
    [(UIViewController *)completionDetailViewController dismissViewControllerAnimated:1 completion:v22];
    v11 = self->_completionDetailViewController;
    self->_completionDetailViewController = 0;

    if (self->_usesPopoverStyleForFavorites)
    {
      popoverCatalogViewController = self->_popoverCatalogViewController;
      if (popoverCatalogViewController)
      {
        presentingViewController = [(PopoverCatalogViewController *)popoverCatalogViewController presentingViewController];

        if (!presentingViewController)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_DEFAULT, "Cataglog popover is not in view hierachy after completion detail VC dismissed.", buf, 2u);
          }

          dispatch_group_enter(v10);
          v15 = self->_popoverCatalogViewController;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __97__CatalogViewController_dismissCompletionDetailWindowAndResumeEditingIfNeeded_completionHandler___block_invoke_131;
          v19[3] = &unk_2781D4D40;
          v20 = v10;
          [(CatalogViewController *)self _presentPopoverWithViewController:v15 completionHandler:v19];
        }
      }
    }
  }

  [(CatalogViewController *)self resumeEditingIfNeeded:neededCopy];
  self->_completionDetailIsPresented = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__CatalogViewController_dismissCompletionDetailWindowAndResumeEditingIfNeeded_completionHandler___block_invoke_2;
  v17[3] = &unk_2781D4D90;
  v18 = handlerCopy;
  v16 = handlerCopy;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], v17);
}

uint64_t __97__CatalogViewController_dismissCompletionDetailWindowAndResumeEditingIfNeeded_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resumeEditingIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  textRangeToRestoreAfterCompletionDetailIsDismissed = [WeakRetained textRangeToRestoreAfterCompletionDetailIsDismissed];
  v6 = textRangeToRestoreAfterCompletionDetailIsDismissed;
  if (neededCopy && textRangeToRestoreAfterCompletionDetailIsDismissed)
  {
    navigationBar = [(CatalogViewController *)self navigationBar];
    textField = [navigationBar textField];

    [textField becomeFirstResponder];
    [textField setSelectedTextRange:v6];
  }

  [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:0];
}

- (void)resumeSearchWithQuery:(id)query
{
  queryCopy = query;
  unifiedTextField = [(CatalogViewController *)self unifiedTextField];
  queryString = [queryCopy queryString];
  [unifiedTextField setText:queryString];

  [unifiedTextField becomeFirstResponder];
  endOfDocument = [unifiedTextField endOfDocument];
  endOfDocument2 = [unifiedTextField endOfDocument];
  v8 = [unifiedTextField textRangeFromPosition:endOfDocument toPosition:endOfDocument2];
  [unifiedTextField setSelectedTextRange:v8];

  [(CompletionList *)self->_completionList didResumeSearchWithQuery:queryCopy];
  dataSource = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  [dataSource updateTableViewWithCompletionList:self->_completionList animated:1 completion:0];

  [(CatalogViewController *)self _generateVisibleResultsFeedbackForEvent:0];
}

- (void)searchTextCompletionAccessoryButtonTappedForCompletionItem:(id)item
{
  self->_lastInputWasSearchTextCompletion = 1;
  itemCopy = item;
  string = [itemCopy string];
  v6 = [string stringByAppendingString:@" "];
  [(CatalogViewController *)self setQueryString:v6];

  [(UnifiedField *)self->_textField sendActionsForControlEvents:0x20000];
  [(UnifiedField *)self->_textField focusAndInsertCursorAtEnd];
  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [feedbackDispatcher userDidEngageWithCompletionListItem:itemCopy onActionButton:0 method:0];

  self->_lastInputWasSearchTextCompletion = 0;
}

- (void)switchToTabWithUUID:(id)d inWindowWithUUID:(id)iD forTabGroupWithUUID:(id)uID
{
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained switchToTabWithUUID:dCopy inWindowWithUUID:iDCopy forTabGroupWithUUID:uIDCopy];
}

- (void)toggleVoiceSearch
{
  voiceSearchState = [(UnifiedField *)self->_textField voiceSearchState];
  if (voiceSearchState == 2)
  {
LABEL_4:
    v6 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:&stru_2827BF158 triggerEvent:4];
    feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    [feedbackDispatcher userDidTapMicKey:{objc_msgSend(v6, "queryID")}];

    [(UnifiedField *)self->_textField setVoiceSearchState:1];

    return;
  }

  if (voiceSearchState != 1)
  {
    if (voiceSearchState)
    {
      return;
    }

    goto LABEL_4;
  }

  textField = self->_textField;

  [(UnifiedField *)textField setVoiceSearchState:0];
}

- (void)_commitVoiceSearchIfNecessary
{
  v35 = *MEMORY[0x277D85DE8];
  [(CatalogViewController *)self _invalidatePendingVoiceSearchTimer];
  if (self->_hasPendingVoiceSearchUpdate)
  {
    text = [(UnifiedField *)self->_textField text];
    safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v5 = [text stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
    v6 = [v5 length];

    if (v6)
    {
      if (![(CompletionList *)self->_completionList showingRecentSearches])
      {
        self->_hasPendingVoiceSearchUpdate = 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        numberOfGroups = [(CompletionList *)self->_completionList numberOfGroups];
        if (numberOfGroups)
        {
          v28 = WeakRetained;
          v8 = 0;
          v9 = 0;
          for (i = 0; i != numberOfGroups; ++i)
          {
            v11 = [(CompletionList *)self->_completionList completionsForGroupAtIndex:i, v28];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v31;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v31 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v30 + 1) + 8 * j);
                  v17 = [(CatalogViewController *)self _relevanceForItem:v16];
                  if (v17 > v8)
                  {
                    v18 = v17;
                    v19 = v16;

                    v9 = v19;
                    v8 = v18;
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v13);
            }
          }

          if (v9)
          {
            if (v8 != 2)
            {
              text2 = [(UnifiedField *)self->_textField text];
              v21 = self->_textField;
              if (v8)
              {
                if (v8 != 3)
                {
                  WeakRetained = v28;
                  if (v8 != 1)
                  {
LABEL_30:
                    matchedTextForInputAnalytics = [v9 matchedTextForInputAnalytics];
                    -[CatalogViewController _sendInputAnalyticsForItemWithMatchedText:matchType:](self, "_sendInputAnalyticsForItemWithMatchedText:matchType:", matchedTextForInputAnalytics, [v9 matchTypeForInputAnalytics]);

                    text3 = [(UnifiedField *)self->_textField text];
                    [WeakRetained catalogViewController:self completionItem:v9 wasAcceptedForString:text3];

                    [v9 acceptCompletionWithActionHandler:self];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v27 = [v9 completionTableViewCellForCompletionList:self->_completionList];
                      [(CatalogViewController *)self _executeActionForParsecResultTableViewCell:v27 completionItem:v9 triggerEvent:20];
                    }

                    [(UnifiedField *)v21 setVoiceSearchState:0];
                    [WeakRetained catalogViewController:self didFinishVoiceSearchWithNavigation:1];

                    goto LABEL_33;
                  }

                  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
                  query = objc_loadWeakRetained(&self->_browserController);
                  activeSearchEngine = [query activeSearchEngine];
                  [feedbackDispatcher userTypedGoToSearch:text2 endpoint:objc_msgSend(activeSearchEngine triggerEvent:"parsecSearchEndpointType") forQueryID:{1, -[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];

LABEL_29:
                  goto LABEL_30;
                }

                feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
                query = [MEMORY[0x277CCABB0] numberWithInt:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
                [feedbackDispatcher userDidEngageWithCompletionListItem:v9 onActionButton:0 method:2 doesMatchSiriSuggestion:1 voiceSearchQueryID:query];
              }

              else
              {
                feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
                query = [(CompletionList *)self->_completionList query];
                [feedbackDispatcher userTypedURLDirectlyForQuery:query triggerEvent:1];
              }

              WeakRetained = v28;
              goto LABEL_29;
            }

            WeakRetained = v28;
          }

          else
          {
            WeakRetained = v28;
          }
        }

        else
        {
          v9 = 0;
        }

        [(UnifiedField *)self->_textField setVoiceSearchState:0];
        [WeakRetained catalogViewController:self didFinishVoiceSearchWithNavigation:0];
LABEL_33:
      }
    }
  }
}

- (int64_t)_relevanceForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(CatalogViewController *)self _relevanceForResult:itemCopy];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (int64_t)_relevanceForResult:(id)result
{
  resultCopy = result;
  if ([resultCopy shouldAutoNavigate])
  {
    v4 = 3;
  }

  else if ([resultCopy isInstantAnswer])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_invalidatePendingVoiceSearchTimer
{
  [(NSTimer *)self->_pendingVoiceSearchTimer invalidate];
  pendingVoiceSearchTimer = self->_pendingVoiceSearchTimer;
  self->_pendingVoiceSearchTimer = 0;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  v5 = WBS_LOG_CHANNEL_PREFIXSignposts();
  if (os_signpost_enabled(v5))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UnifiedFieldKeyboardPresentation", "", buf, 2u);
  }

  if (([editingCopy isEditing] & 1) == 0)
  {
    [editingCopy setClearingBehavior:3];
  }

  textField = [(CatalogViewController *)self textField];
  [textField setContextCompleter:0];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  v10 = [activeTabDocument URL];
  if (v10)
  {
    objc_initWeak(buf, self);
    contextController = [activeTabDocument contextController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__CatalogViewController_textFieldShouldBeginEditing___block_invoke;
    v13[3] = &unk_2781DC738;
    objc_copyWeak(&v14, buf);
    [contextController cachedResponseForURL:v10 completionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  return 1;
}

void __53__CatalogViewController_textFieldShouldBeginEditing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 completer];
    v6 = v5;
    if (v5)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __53__CatalogViewController_textFieldShouldBeginEditing___block_invoke_2;
      v7[3] = &unk_2781D4C88;
      v7[4] = WeakRetained;
      v8 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __53__CatalogViewController_textFieldShouldBeginEditing___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textField];
  [v2 setContextCompleter:v1];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(CompletionList *)self->_completionList setShouldForceSuppressionOfSiriSuggestedSite:1];
  [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidBeginEditing:self];

  v11 = objc_loadWeakRetained(&self->_browserController);
  rootViewController = [v11 rootViewController];
  capsuleCollectionViewLayout = [rootViewController capsuleCollectionViewLayout];
  v7 = WBSIsEqual();

  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  tabController = [v11 tabController];
  activeTabDocument = [tabController activeTabDocument];
  [feedbackDispatcher searchViewAppearedBecauseOfEvent:9 isSafariReaderAvailable:objc_msgSend(activeTabDocument forQueryID:"isReaderAvailable") usesLoweredSearchBar:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID"), v7}];

  [(CompletionList *)self->_completionList unifiedFieldDidBecomeFirstResponder];
}

- (void)textFieldDidEndEditing:(id)editing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidEndEditing:self];
}

- (BOOL)textFieldShouldClear:(id)clear
{
  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [feedbackDispatcher sendClearInputFeedbackWithTriggerEvent:1 forQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];

  return 1;
}

- (void)_logQueryEngagement
{
  if ([(UnifiedField *)self->_textField hasSelectedQuerySuggestion])
  {
    contextCompleter = [(UnifiedField *)self->_textField contextCompleter];
    text = [(UnifiedField *)self->_textField text];
    [contextCompleter logTransactionSuccessfulForInput:text];
  }
}

- (void)unifiedField:(id)field willUpdateUserTypedText:(id)text toText:(id)toText
{
  toTextCopy = toText;
  if (![text length] && objc_msgSend(toTextCopy, "length"))
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSignposts();
    if (os_signpost_enabled(v8))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_215819000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UnifiedFieldFirstKeyTapToCompletionListUpdate", "", v9, 2u);
    }

    self->_waitingOnFirstCompletionListUpdateForTelemetry = 1;
  }
}

- (void)unifiedField:(id)field didEndEditingWithAddress:(id)address
{
  addressCopy = address;
  [(CompletionListDismissalAnalyticsReporter *)self->_completionDismissalReporter setUnifiedFieldContentType:0];
  if (objc_opt_respondsToSelector() & 1) != 0 && (-[CompletionItem userVisibleURLString](self->_lastTopHitMatch, "userVisibleURLString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:addressCopy], v5, (v6))
  {
    [(CatalogViewController *)self _logTopHitWasChosen:1];
    feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    [feedbackDispatcher userDidEngageWithCompletionListItem:self->_lastTopHitMatch onActionButton:0 method:1];

    [(CatalogViewController *)self _logQueryEngagement];
    query = [(CompletionList *)self->_completionList query];
    queryString = [query queryString];
    [(CatalogViewController *)self _updatePersonalisationDataForDonation:queryString forPosition:1];

    matchedTextForInputAnalytics = [(CompletionItem *)self->_lastTopHitMatch matchedTextForInputAnalytics];
    matchTypeForInputAnalytics = [(CompletionItem *)self->_lastTopHitMatch matchTypeForInputAnalytics];
  }

  else
  {
    if (self->_lastTopHitMatch)
    {
      [(CatalogViewController *)self _logTopHitWasChosen:0];
    }

    v12 = [(UnifiedField *)self->_textField voiceSearchState]!= 0;
    feedbackDispatcher2 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    query2 = [(CompletionList *)self->_completionList query];
    [feedbackDispatcher2 userTypedURLDirectlyForQuery:query2 triggerEvent:v12];

    query3 = [(CompletionList *)self->_completionList query];
    queryString2 = [query3 queryString];
    [(CatalogViewController *)self _updatePersonalisationDataForDonation:queryString2 forPosition:-1];

    matchedTextForInputAnalytics = addressCopy;
    matchTypeForInputAnalytics = 1;
  }

  [(CatalogViewController *)self _sendInputAnalyticsForItemWithMatchedText:matchedTextForInputAnalytics matchType:matchTypeForInputAnalytics];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didSelectAddress:addressCopy];

  [(CatalogViewController *)self _clearParsecSearchSession];
}

- (void)unifiedField:(id)field didEndEditingWithSearch:(id)search
{
  searchCopy = search;
  [(CompletionListDismissalAnalyticsReporter *)self->_completionDismissalReporter setUnifiedFieldContentType:1];
  if (self->_lastTopHitMatch)
  {
    [(CatalogViewController *)self _logTopHitWasChosen:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(CompletionList *)self->_completionList hasParsecResults])
  {
    [WeakRetained catalogViewController:self cacheSearchQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
  }

  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v7 = objc_loadWeakRetained(&self->_browserController);
  activeSearchEngine = [v7 activeSearchEngine];
  [feedbackDispatcher userTypedGoToSearch:searchCopy endpoint:objc_msgSend(activeSearchEngine triggerEvent:"parsecSearchEndpointType") forQueryID:{0, -[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];

  [(CatalogViewController *)self _logQueryEngagement];
  indexPathOfAsTypedSearchSuggestion = [(CompletionList *)self->_completionList indexPathOfAsTypedSearchSuggestion];

  if (indexPathOfAsTypedSearchSuggestion)
  {
    indexPathOfAsTypedSearchSuggestion2 = [(CompletionList *)self->_completionList indexPathOfAsTypedSearchSuggestion];
    v11 = [(CatalogViewController *)self _completionItemAtIndexPath:indexPathOfAsTypedSearchSuggestion2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [v11 string];
      v13 = [string isEqualToString:searchCopy];

      if (v13)
      {
        [WeakRetained catalogViewController:self completionItem:v11 wasAcceptedForString:searchCopy];
      }
    }
  }

  [(CatalogViewController *)self _sendInputAnalyticsForItemWithMatchedText:searchCopy matchType:2];
  [WeakRetained catalogViewController:self didSelectSearch:searchCopy];
  [(CatalogViewController *)self _clearParsecSearchSession];
}

- (void)unifiedField:(id)field didEndEditingWithParsecTopHit:(id)hit
{
  completionDismissalReporter = self->_completionDismissalReporter;
  hitCopy = hit;
  [(CompletionListDismissalAnalyticsReporter *)completionDismissalReporter setUnifiedFieldContentType:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [(UnifiedField *)self->_textField text];
  [WeakRetained catalogViewController:self completionItem:hitCopy wasAcceptedForString:text];

  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [feedbackDispatcher userDidEngageWithCompletionListItem:hitCopy onActionButton:0 method:1];

  [(CatalogViewController *)self _logQueryEngagement];
  [(CatalogViewController *)self _clearParsecSearchSession];
  matchedTextForInputAnalytics = [hitCopy matchedTextForInputAnalytics];
  -[CatalogViewController _sendInputAnalyticsForItemWithMatchedText:matchType:](self, "_sendInputAnalyticsForItemWithMatchedText:matchType:", matchedTextForInputAnalytics, [hitCopy matchTypeForInputAnalytics]);

  [hitCopy acceptCompletionWithActionHandler:self];
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  [(CatalogViewController *)self _executeActionForParsecResultAtIndexPath:indexPathForSelectedRow tableView:tableView triggerEvent:1];
}

- (BOOL)unifiedField:(id)field shouldWaitForTopHitForText:(id)text
{
  textCopy = text;
  if ([textCopy length] && (completionList = self->_completionList) != 0)
  {
    v7 = ![(CompletionList *)completionList isTopHitReadyForString:textCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)unifiedField:(id)field topHitForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v6 = [(CompletionList *)self->_completionList topHitForString:textCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)unifiedFieldVoiceSearchStateDidChange:(id)change
{
  voiceSearchState = [change voiceSearchState];
  if (voiceSearchState == 2)
  {
    v5 = 0;
  }

  else
  {
    if (voiceSearchState)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didActivateVoiceSearchAccidentally:v5];

LABEL_6:

  [(CatalogViewController *)self _updateVoiceSearchState];
}

- (BOOL)_shouldTakeOwnershipOfCompletionsViewController
{
  if ([(UnifiedField *)self->_textField isFirstResponder]&& ![(CatalogViewController *)self _showCompletionsInPopover])
  {
    parentViewController = [(CompletionListTableViewController *)self->_completionsViewController parentViewController];
    if (parentViewController || self->_voiceSearchWasInProgress)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_updateVoiceSearchState
{
  voiceSearchState = [(UnifiedField *)self->_textField voiceSearchState];
  mEMORY[0x277D28EB8] = [MEMORY[0x277D28EB8] sharedManager];
  liveCompletionList = [mEMORY[0x277D28EB8] liveCompletionList];

  if (voiceSearchState == 2)
  {
    self->_voiceSearchWasInProgress = 0;
    self->_hasPendingVoiceSearchUpdate = 1;
    [(CatalogViewController *)self _invalidatePendingVoiceSearchTimer];
    v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__commitVoiceSearchIfNecessary selector:0 userInfo:0 repeats:0.3];
    pendingVoiceSearchTimer = self->_pendingVoiceSearchTimer;
    self->_pendingVoiceSearchTimer = v7;
  }

  else if (voiceSearchState == 1)
  {
    self->_voiceSearchWasInProgress = 1;
    if ((liveCompletionList & 1) == 0 && ![(CompletionList *)self->_completionList showingRecentSearches])
    {
      tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      [tableView setHidden:1];

      [(CatalogViewController *)self relinquishOwnershipOfCompletionsViewControllerFromCurrentParent];

      [(CatalogViewController *)self _showStartPageInPopover];
    }
  }

  else if (!voiceSearchState && (liveCompletionList & 1) == 0)
  {
    tableView2 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    [tableView2 setHidden:0];

    if ([(CatalogViewController *)self _shouldTakeOwnershipOfCompletionsViewController])
    {
      [(AbstractCatalogViewController *)self takeOwnershipOfCompletionsViewController];
      [(CatalogViewController *)self _updateAlternateContentViewController];
    }

    self->_voiceSearchWasInProgress = 0;
  }
}

- (void)unifiedFieldExternalSearchDidEnd:(id)end
{
  self->_hasPendingVoiceSearchUpdate = 1;
  [(CatalogViewController *)self _invalidatePendingVoiceSearchTimer];
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__commitVoiceSearchIfNecessary selector:0 userInfo:0 repeats:0.3];
  pendingVoiceSearchTimer = self->_pendingVoiceSearchTimer;
  self->_pendingVoiceSearchTimer = v4;
}

- (void)unifiedFieldReflectedItemDidChange:(id)change
{
  changeCopy = change;
  [(CatalogViewController *)self _updateSearchFieldIcon];
  lastEditWasADeletion = [changeCopy lastEditWasADeletion];
  v5 = changeCopy;
  if ((lastEditWasADeletion & 1) != 0 || (v6 = [changeCopy isResigningFirstResponder], v5 = changeCopy, v6))
  {
    reflectedItem = [v5 reflectedItem];
    if (!reflectedItem)
    {
      [(CatalogViewController *)self _deselectCompletionsViewControllerSelectedRow];
    }

    v5 = changeCopy;
  }
}

- (id)_searchFieldIcon
{
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    v5 = [(CatalogViewController *)self _completionItemAtIndexPath:indexPathForSelectedRow];
    v6 = [v5 searchFieldIconForCompletionList:self->_completionList];
  }

  else
  {
    text = [(UnifiedField *)self->_textField text];
    v6 = WBSUnifiedFieldInputTypeForString();

    if (v6 <= 4)
    {
      if (((1 << v6) & 0x19) != 0)
      {
        v8 = @"magnifyingglass";
      }

      else
      {
        v8 = @"globe";
      }

      v6 = [MEMORY[0x277D755B8] systemImageNamed:v8];
    }
  }

  return v6;
}

- (void)_updateSearchFieldIcon
{
  if (![(UnifiedField *)self->_textField isResigningFirstResponder])
  {
    _searchFieldIcon = [(CatalogViewController *)self _searchFieldIcon];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabBarManager = [WeakRetained tabBarManager];
    [tabBarManager setCompletionItemIcon:_searchFieldIcon];
  }
}

- (void)unifiedField:(id)field moveCompletionSelectionByRowOffset:(int64_t)offset
{
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [(UITableView *)tableView safari_moveSelectionByRowOffset:offset];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  v7 = [(CatalogViewController *)self _completionItemAtIndexPath:indexPathForSelectedRow];
  [(UnifiedField *)self->_textField setReflectedItem:v7];
}

- (void)unifiedField:(id)field moveCompletionSelectionBySectionOffset:(int64_t)offset
{
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [(UITableView *)tableView safari_moveSelectionBySectionOffset:offset];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  v7 = [(CatalogViewController *)self _completionItemAtIndexPath:indexPathForSelectedRow];
  [(UnifiedField *)self->_textField setReflectedItem:v7];
}

- (void)unifiedFieldSelectCompletionItemIfAvailable:(id)available
{
  tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    [(CatalogViewController *)self _selectedCompletionItemAtIndexPath:indexPathForSelectedRow];
  }

  else
  {
    [(UnifiedField *)self->_textField sendActionsForControlEvents:0x80000];
  }
}

- (void)unifiedField:(id)field focusNextKeyView:(BOOL)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self focusNextKeyView:viewCopy];
}

- (BOOL)unifiedFieldCanBecomeFirstResponder:(id)responder
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained catalogViewControllerUnifiedFieldCanBecomeFirstResponder:selfCopy];

  return selfCopy;
}

- (void)unifiedFieldMakeWindowKey:(id)key
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerMakeWindowKey:self];
}

- (void)unifiedField:(id)field pasteAndNavigateWithText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didPasteText:textCopy];
}

- (void)unifiedField:(id)field didEngageWithQuerySuggestion:(id)suggestion forQueryString:(id)string
{
  suggestionCopy = suggestion;
  stringCopy = string;
  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v10 = objc_alloc(MEMORY[0x277D4C680]);
  v11 = MEMORY[0x277D4C5D8];
  v18 = suggestionCopy;
  v12 = stringCopy;
  v13 = [v11 alloc];
  topicId = [v18 topicId];
  title = [v18 title];

  v16 = [v13 initWithIdentifier:topicId suggestion:title query:v12 score:2 type:0.0];
  v17 = [v10 initWithSuggestion:v16];
  [feedbackDispatcher postFeedback:v17 forQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
}

- (BOOL)shouldPutMetadataOnPasteboardForUnifiedField:(id)field
{
  text = [(UnifiedField *)self->_textField text];
  if (-[UnifiedField selectionRange](self->_textField, "selectionRange") || v5 != [text length])
  {
    v11 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBC0] safari_URLWithUserTypedString:text];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    activeTabDocument = [tabController activeTabDocument];
    urlForSharing = [activeTabDocument urlForSharing];

    v11 = [v6 safari_isEqualToURL:urlForSharing];
  }

  return v11;
}

- (id)currentMetadataForUnifiedField:(id)field
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  linkMetadataForSharing = [activeTabDocument linkMetadataForSharing];

  return linkMetadataForSharing;
}

- (void)showUniversalSearchFirstTimeExperienceIfNotShowing
{
  if (![(CatalogViewController *)self isShowingUniversalSearchFirstTimeExperience])
  {
    v3 = +[(WBSParsecDSession *)UniversalSearchSession];
    v4 = [v3 bag];
    firstUseDescriptionText = [v4 firstUseDescriptionText];
    v6 = [firstUseDescriptionText length];

    if (v6)
    {
      v7 = objc_alloc_init(UniversalSearchFirstTimeExperienceViewController);
      [(UniversalSearchFirstTimeExperienceViewController *)v7 setDelegate:self];
      [(CatalogViewController *)self requiredContentWidth];
      [(UniversalSearchFirstTimeExperienceViewController *)v7 setPreferredContentSize:?];
      view = [(UniversalSearchFirstTimeExperienceViewController *)v7 view];
      [view setAccessibilityIdentifier:@"UniversalSearchFirstTimeExperienceView"];

      universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;
      self->_universalSearchFirstTimeExperienceViewController = v7;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      LOBYTE(view) = [WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self];

      if (view)
      {
        [(AbstractCatalogViewController *)self->_popoverCatalogViewController takeOwnershipOfUniversalSearchFirstTimeExperienceViewController];
        if (![(CatalogViewController *)self popoverIsShowing])
        {
          popoverCatalogViewController = self->_popoverCatalogViewController;

          [(CatalogViewController *)self _presentPopoverWithViewController:popoverCatalogViewController];
        }
      }

      else
      {

        [(AbstractCatalogViewController *)self takeOwnershipOfUniversalSearchFirstTimeExperienceViewController];
      }
    }
  }
}

- (void)showNoRecentSearchesViewIfNotShowing
{
  if (!self->_noRecentSearchesView)
  {
    tableView = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    superview = [tableView superview];

    if (superview)
    {
      searchConfiguration = [MEMORY[0x277D75390] searchConfiguration];
      [searchConfiguration setText:0];
      v5 = _WBSLocalizedString();
      [searchConfiguration setSecondaryText:v5];

      v6 = [objc_alloc(MEMORY[0x277D753A8]) initWithConfiguration:searchConfiguration];
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(UIContentUnavailableView *)v6 setBackgroundColor:systemBackgroundColor];

      [(UIContentUnavailableView *)v6 setUserInteractionEnabled:0];
      [(UIContentUnavailableView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      noRecentSearchesView = self->_noRecentSearchesView;
      self->_noRecentSearchesView = v6;
      v30 = v6;

      view = [(CatalogViewController *)self view];
      [view addSubview:self->_noRecentSearchesView];

      view2 = [(CatalogViewController *)self view];
      [view2 setAccessibilityIdentifier:@"Recent Searches"];

      topAnchor = [(UIContentUnavailableView *)self->_noRecentSearchesView topAnchor];
      tableView2 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      topAnchor2 = [tableView2 topAnchor];
      [(CatalogViewController *)self navigationBarHeight];
      v15 = v14;
      view3 = [(SFStartPageViewController *)self->_startPageViewController view];
      window = [view3 window];
      windowScene = [window windowScene];
      statusBarManager = [windowScene statusBarManager];
      [statusBarManager statusBarFrame];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v15 + v20];
      [v21 setActive:1];

      widthAnchor = [(UIContentUnavailableView *)self->_noRecentSearchesView widthAnchor];
      tableView3 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      widthAnchor2 = [tableView3 widthAnchor];
      v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v25 setActive:1];

      tableView4 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      bottomAnchor = [tableView4 bottomAnchor];
      bottomAnchor2 = [(UIContentUnavailableView *)self->_noRecentSearchesView bottomAnchor];
      v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:self->_keyboardFrame.size.height];
      [v29 setActive:1];

      [(CompletionList *)self->_completionList clearCompletionListings];
      [(CatalogViewController *)self _reloadCompletionTable];
    }
  }
}

- (void)_removeNoRecentSearchesViewIfNecessary
{
  [(UIContentUnavailableView *)self->_noRecentSearchesView removeFromSuperview];
  noRecentSearchesView = self->_noRecentSearchesView;
  self->_noRecentSearchesView = 0;
}

- (void)dismissCompletionsForSizeClassTransition
{
  [(CatalogViewController *)self _setShowingCompletions:0 popoverDismissalReason:1 completionHandler:0];
  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;

  [(CatalogViewController *)self _dismissUniversalSearchFirstTimeExperience:universalSearchFirstTimeExperienceViewController dismissalReason:1];
}

- (void)didInteractWithUniversalSearchFirstTimeExperienceViewController:(id)controller
{
  controllerCopy = controller;
  [objc_opt_class() userDidInteractWithParsecFirstTimeUserExperience];
  [(CatalogViewController *)self _dismissUniversalSearchFirstTimeExperience:controllerCopy dismissalReason:0];
}

- (void)_dismissUniversalSearchFirstTimeExperience:(id)experience dismissalReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  presentedViewController = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self])
  {

    goto LABEL_6;
  }

  usesPopoverStyleForFavorites = self->_usesPopoverStyleForFavorites;

  if (usesPopoverStyleForFavorites)
  {
LABEL_6:
    if (reason == 1)
    {
      [(CatalogViewController *)self _dismissPopoverAnimated:0 dismissalReason:1 completionHandler:0];
    }

    [(CatalogViewController *)self relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent];
    goto LABEL_9;
  }

  if (reason == 2)
  {
    selfCopy2 = self;
    v11 = 0;
    reasonCopy = 2;
LABEL_13:
    [(CatalogViewController *)selfCopy2 _dismissPopoverAnimated:v11 dismissalReason:reasonCopy completionHandler:handlerCopy];
    goto LABEL_14;
  }

  if (([(UnifiedField *)self->_textField hasText]& 1) == 0)
  {
    selfCopy2 = self;
    v11 = 1;
    reasonCopy = reason;
    goto LABEL_13;
  }

LABEL_9:
  if (handlerCopy)
  {
    handlerCopy[2]();
  }

LABEL_14:
  [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController setDelegate:0];
  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;
  self->_universalSearchFirstTimeExperienceViewController = 0;
}

- (BOOL)isShowingUniversalSearchPrivacyDetails
{
  presentedViewController = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)_updatePersonalisationDataForDonation:(id)donation forPosition:(unint64_t)position
{
  donationCopy = donation;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  personalizationData = [activeTabDocument personalizationData];
  [personalizationData setSearchQuery:donationCopy];

  personalizationData2 = [activeTabDocument personalizationData];
  [personalizationData2 setPosition:position];
}

- (CGRect)snapshotContentRectInBounds:(CGRect)bounds
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  view = [(SFStartPageViewController *)self->_startPageViewController view];
  [view frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  left = self->_obscuredInsets.left;
  v16 = left + self->_obscuredInsets.right;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size = bounds.size;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  v18 = v16;
  v19 = Width / (CGRectGetWidth(v29) - v16);
  v20 = -(left * v19);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  v21 = CGRectGetMinY(v30) * v19;
  v22 = CGRectGetWidth(bounds) + v18 * v19;
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v23 = v19 * CGRectGetHeight(v31);
  v24 = v20;
  v25 = v21;
  v26 = v22;
  result.size.height = v23;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)checkAndResetIfNextSnapshotRequiresScreenUpdates
{
  nextSnapshotRequiresScreenUpdates = self->_nextSnapshotRequiresScreenUpdates;
  self->_nextSnapshotRequiresScreenUpdates = 0;
  return nextSnapshotRequiresScreenUpdates;
}

- (void)beginTransitionToNewSizeClassWithState:(id)state
{
  self->_transitioningToNewSizeClass = 1;
  stateCopy = state;
  queryString = [(CatalogViewController *)self queryString];
  [stateCopy setQueryString:queryString];

  [stateCopy setShowingCompletions:{-[CatalogViewController isShowingCompletions](self, "isShowingCompletions")}];
  [stateCopy setShowingUniversalFirstTimeExperience:{-[CatalogViewController isShowingUniversalSearchFirstTimeExperience](self, "isShowingUniversalSearchFirstTimeExperience")}];
  [stateCopy setCompletionDetailViewController:self->_completionDetailViewController];
  text = [(UnifiedField *)self->_textField text];
  [stateCopy setFieldIsEmpty:{objc_msgSend(text, "length") == 0}];

  completionDetailViewController = self->_completionDetailViewController;
  if (completionDetailViewController)
  {
    presentedViewController = [(UIViewController *)completionDetailViewController presentedViewController];
    [presentedViewController dismissViewControllerAnimated:0 completion:0];

    [(UIViewController *)self->_completionDetailViewController dismissViewControllerAnimated:0 completion:0];
    v9 = self->_completionDetailViewController;
    self->_completionDetailViewController = 0;
  }
}

- (void)endTransitionToNewSizeClassWithState:(id)state
{
  stateCopy = state;
  self->_transitioningToNewSizeClass = 0;
  [(PopoverCatalogViewController *)self->_popoverCatalogViewController resetStartPagePreferredHeight];
  if ([stateCopy isShowingCompletions])
  {
    queryString = [stateCopy queryString];
    [(CatalogViewController *)self setQueryString:queryString];

    [(CatalogViewController *)self _reloadCompletionTable];
  }

  else if ([stateCopy isShowingUniversalFirstTimeExperience])
  {
    [(CatalogViewController *)self showUniversalSearchFirstTimeExperienceIfNotShowing];
  }

  if ([stateCopy fieldIsEmpty])
  {
    [(UnifiedField *)self->_textField setText:0];
  }

  completionDetailViewController = [stateCopy completionDetailViewController];
  if ([(CatalogViewController *)self _shouldPresentCompletionDetailViewControllerAfterSizeTransition:completionDetailViewController])
  {
    objc_storeStrong(&self->_completionDetailViewController, completionDetailViewController);
    [(CatalogViewController *)self _presentStagedCompletionDetailViewControllerAnimated:0];
    self->_completionDetailIsPresented = 1;
  }
}

- (BOOL)_shouldPresentCompletionDetailViewControllerAfterSizeTransition:(id)transition
{
  if (transition)
  {
    return [transition isBeingDismissed] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_cancelBarButtonItem
{
  cancelBarButton = self->_cancelBarButton;
  if (cancelBarButton)
  {
    v3 = cancelBarButton;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D750C8];
    v6 = _WBSLocalizedString();
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __45__CatalogViewController__cancelBarButtonItem__block_invoke;
    v18 = &unk_2781D5B80;
    objc_copyWeak(&v19, &location);
    v7 = [v5 actionWithTitle:v6 image:0 identifier:0 handler:&v15];

    v8 = objc_alloc(MEMORY[0x277D28C28]);
    v9 = [v8 initWithStyle:2 primaryAction:{v7, v15, v16, v17, v18}];
    viewController = [(StartPageController *)self->_startPageController viewController];
    [v9 setOpaqueBackgroundVisibility:{(objc_msgSend(viewController, "showsWallpaper") ^ 1)}];

    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v9];
    v12 = self->_cancelBarButton;
    self->_cancelBarButton = v11;

    v13 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)self->_cancelBarButton setAccessibilityIdentifier:v13];

    v3 = self->_cancelBarButton;
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __45__CatalogViewController__cancelBarButtonItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 126);
    [v2 navigationBarCancelButtonWasTapped:0];

    WeakRetained = v3;
  }
}

- (id)startPageViewControllerTitleForRootView:(id)view
{
  libraryType = [(StartPageController *)self->_startPageController libraryType];
  v4 = libraryType;
  if (libraryType)
  {
    v5 = startPageTitleForCollectionType(libraryType);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)startPageViewController:(id)controller leadingBarItemsForSection:(id)section
{
  v15[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  sidebarUIProxy = [WeakRetained sidebarUIProxy];
  if ((![MEMORY[0x277D49A08] isSolariumEnabled] || !objc_msgSend(sidebarUIProxy, "isShowingSidebar") || objc_msgSend(sidebarUIProxy, "sidebarStyle")) && !self->_usesPopoverStyleForFavorites)
  {
    tabBarManager = [WeakRetained tabBarManager];
    if ([tabBarManager displayMode])
    {
      libraryType = [(StartPageController *)self->_startPageController libraryType];

      if (libraryType)
      {
        v9 = objc_alloc(MEMORY[0x277D751E0]);
        sidebarButton = [(CatalogViewController *)self sidebarButton];
        v11 = [v9 initWithCustomView:sidebarButton];

        v12 = _SFAccessibilityIdentifierForBarItem();
        [v11 setAccessibilityIdentifier:v12];

        v15[0] = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_10:

  return v13;
}

- (id)startPageViewController:(id)controller trailingBarItemsForSection:(id)section
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = WeakRetained;
  if (self->_usesPopoverStyleForFavorites)
  {
    goto LABEL_3;
  }

  tabBarManager = [WeakRetained tabBarManager];
  displayMode = [tabBarManager displayMode];

  if (displayMode)
  {
    goto LABEL_3;
  }

  tabController = [v6 tabController];
  activeTabDocument = [tabController activeTabDocument];
  if ([activeTabDocument isBlank] && !objc_msgSend(v6, "isFavoritesFieldFocused"))
  {
    superview = [(UnifiedField *)self->_textField superview];

    if (!superview)
    {
LABEL_3:
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_4;
    }
  }

  else
  {
  }

  rootViewController = [v6 rootViewController];
  capsuleCollectionViewLayout = [rootViewController capsuleCollectionViewLayout];

  if (capsuleCollectionViewLayout && [capsuleCollectionViewLayout integerValue] == 2 || (objc_msgSend(MEMORY[0x277D49A08], "isSolariumEnabled") & 1) != 0)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    _cancelBarButtonItem = [(CatalogViewController *)self _cancelBarButtonItem];
    v17[0] = _cancelBarButtonItem;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

LABEL_4:

  return v9;
}

- (void)startPageViewControllerDidScroll:(id)scroll animated:(BOOL)animated
{
  animatedCopy = animated;
  scrollCopy = scroll;
  if (!-[CatalogViewController isShowingCompletions](self, "isShowingCompletions") && [scrollCopy showsWallpaper])
  {
    [scrollCopy scrollDistance];
    SFChromeVisibilityForScrollDistance();
    v7 = v6;
    customView = [(UIBarButtonItem *)self->_cancelBarButton customView];
    [customView setOpaqueBackgroundVisibility:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidScroll:self animated:animatedCopy];
}

- (void)startPageControllerDidCompleteDismissGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissCatalogViewController:self];
}

- (void)startPageControllerDidCompleteUnfocusGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerWillUnfocusUnifiedField:self showingRecentSearches:{-[CompletionList showingRecentSearches](self->_completionList, "showingRecentSearches")}];
  textField = [(CatalogViewController *)self textField];
  [textField endEditing:1];
}

- (void)startPageViewController:(id)controller willPresentCustomizationViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self willPresentCustomizationViewController:viewControllerCopy];
}

- (BOOL)startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)in
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  isBlank = [activeTabDocument isBlank];

  return isBlank ^ 1;
}

- (double)startPageViewControllerTopPadding:(id)padding
{
  v4 = 0.0;
  if (![(StartPageController *)self->_startPageController shouldShowOnboardingSection])
  {
    libraryType = [(StartPageController *)self->_startPageController libraryType];

    if (!libraryType)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v7 = [WeakRetained shouldIncreaseTopSpacingForStartPageController:self->_startPageController];

      if (v7)
      {
        return 34.0;
      }

      else
      {
        return *MEMORY[0x277D290B0];
      }
    }
  }

  return v4;
}

- (void)startPageViewControllerDidUpdateContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setNeedsSnapshotUpdateForActiveTabIfTabIsBlank];
}

- (void)startPageViewControllerDidAppear:(id)appear
{
  if (!self->_startPageDidAppearAtLeastOnce)
  {
    self->_startPageDidAppearAtLeastOnce = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained catalogViewControllerDidAppear:self];
  }
}

- (void)beginExtensionsOnboardingForStartPageViewController:(id)controller
{
  v4 = MEMORY[0x277D28CB8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  v10 = [v4 createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:activeTabDocument];

  topViewController = [v10 topViewController];
  v9 = _WBSLocalizedString();
  [topViewController setTitle:v9];

  [(CatalogViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_sendInputAnalyticsForItemWithMatchedText:(id)text matchType:(int64_t)type
{
  v24[4] = *MEMORY[0x277D85DE8];
  textCopy = text;
  query = [(CompletionList *)self->_completionList query];
  queryString = [query queryString];

  v9 = WBSUnifiedFieldInputTypeForString();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v10 = getIASignalAnalyticsClass_softClass;
  v22 = getIASignalAnalyticsClass_softClass;
  if (!getIASignalAnalyticsClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getIASignalAnalyticsClass_block_invoke;
    v18[3] = &unk_2781D4BD8;
    v18[4] = &v19;
    __getIASignalAnalyticsClass_block_invoke(v18);
    v10 = v20[3];
  }

  v11 = (v9 - 1) < 2;
  v12 = v10;
  _Block_object_dispose(&v19, 8);
  if (queryString)
  {
    v13 = queryString;
  }

  else
  {
    v13 = &stru_2827BF158;
  }

  v24[0] = v13;
  v23[0] = @"UserTypedText";
  v23[1] = @"UserTypedTextLooksLikeURL";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  v24[1] = v14;
  if (textCopy)
  {
    v15 = textCopy;
  }

  else
  {
    v15 = &stru_2827BF158;
  }

  v24[2] = v15;
  v23[2] = @"MatchedText";
  v23[3] = @"MatchType";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v24[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  [v10 sendSignal:@"SearchEntered" toChannel:@"Safari" withPayload:v17];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [objc_alloc(MEMORY[0x277D28C18]) initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [v10 setDelegate:self];
  [(CatalogViewController *)self requiredContentWidth];
  [v10 setPreferredPresentedViewContentSize:?];
  tabBarManager = [WeakRetained tabBarManager];
  inlineTabBar = [tabBarManager inlineTabBar];
  activeItemView = [inlineTabBar activeItemView];
  [v10 setBarItemView:activeItemView];

  [v10 setCommandPerformer:WeakRetained];
  objc_storeStrong(&self->_platterPresentationController, v10);

  return v10;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  containerView = [transitionCopy containerView];
  [containerView addSubview:v4];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CatalogViewController_animateTransition___block_invoke;
  aBlock[3] = &unk_2781D4D40;
  v16 = v4;
  v6 = v4;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x277D75D18];
  v12 = transitionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__CatalogViewController_animateTransition___block_invoke_2;
  v13[3] = &unk_2781D4D90;
  v14 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__CatalogViewController_animateTransition___block_invoke_3;
  v11[3] = &unk_2781D4B18;
  v9 = transitionCopy;
  v10 = v7;
  [v8 _animateUsingSpringWithDuration:2 delay:v13 options:v11 mass:0.4 stiffness:0.0 damping:3.0 initialVelocity:2000.0 animations:500.0 completion:0.0];
}

uint64_t __43__CatalogViewController_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1638405 updateReason:*(a1 + 32) animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (CatalogViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LoadProgressObserver)loadProgressObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  return WeakRetained;
}

- (UIEdgeInsets)obscuredInsets
{
  top = self->_obscuredInsets.top;
  left = self->_obscuredInsets.left;
  bottom = self->_obscuredInsets.bottom;
  right = self->_obscuredInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_textFieldEditingChangedForUpdatingCompletionListOnRestore:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218243;
  v4 = a2;
  v5 = 2117;
  v6 = a1;
  _os_log_debug_impl(&dword_215819000, log, OS_LOG_TYPE_DEBUG, "Text field editing changed; text length: %lu; current text: %{sensitive}@", &v3, 0x16u);
}

- (void)tableView:(void *)a1 contextMenuConfigurationForRowAtIndexPath:point:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_215819000, v1, OS_LOG_TYPE_ERROR, "Completion list and table view are out of sync. Completion item for context menu configuration is SFSearchResult but table view cell is kind of %@", &v4, 0xCu);
}

- (void)tableView:(uint64_t)a1 contextMenuConfigurationForRowAtIndexPath:(NSObject *)a2 point:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "Table view cell is nil for item at index path: %@", &v2, 0xCu);
}

@end