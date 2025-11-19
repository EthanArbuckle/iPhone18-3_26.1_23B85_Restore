@interface CatalogViewController
- (BOOL)_shouldPresentCompletionDetailViewControllerAfterSizeTransition:(id)a3;
- (BOOL)_shouldTakeOwnershipOfCompletionsViewController;
- (BOOL)_shouldUsePopoverForCompletions;
- (BOOL)_showCompletionsInPopover;
- (BOOL)checkAndResetIfNextSnapshotRequiresScreenUpdates;
- (BOOL)isShowingUniversalSearchFirstTimeExperience;
- (BOOL)isShowingUniversalSearchPrivacyDetails;
- (BOOL)popoverIsDismissing;
- (BOOL)popoverIsShowing;
- (BOOL)shouldPutMetadataOnPasteboardForUnifiedField:(id)a3;
- (BOOL)startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)a3;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)unifiedField:(id)a3 shouldWaitForTopHitForText:(id)a4;
- (BOOL)unifiedFieldCanBecomeFirstResponder:(id)a3;
- (CGRect)snapshotContentRectInBounds:(CGRect)a3;
- (CatalogViewController)initWithDelegate:(id)a3 browserController:(id)a4;
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
- (double)startPageViewControllerTopPadding:(id)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cancelBarButtonItem;
- (id)_cellHeightCacheKeyForCompletionItem:(id)a3 indexPath:(id)a4;
- (id)_completionItemAtIndexPath:(id)a3;
- (id)_searchFieldIcon;
- (id)browserController;
- (id)childViewControllerForStatusBarStyle;
- (id)completionsViewController;
- (id)currentMetadataForUnifiedField:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)startPageViewController:(id)a3 leadingBarItemsForSection:(id)a4;
- (id)startPageViewController:(id)a3 trailingBarItemsForSection:(id)a4;
- (id)startPageViewControllerTitleForRootView:(id)a3;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)tableView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)unifiedField:(id)a3 topHitForText:(id)a4;
- (int64_t)_completionListQueryID;
- (int64_t)_relevanceForItem:(id)a3;
- (int64_t)_relevanceForResult:(id)a3;
- (int64_t)startPageCustomizationPolicy;
- (void)_beginParsecSessionIfNeeded;
- (void)_cancelClearingCompletionListCaches;
- (void)_clearCompletionListCachesSoon;
- (void)_clearParsecSearchSession;
- (void)_commitVoiceSearchIfNecessary;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_deselectCompletionsViewControllerSelectedRow;
- (void)_dismissPopoverAnimated:(BOOL)a3 dismissalReason:(int64_t)a4 completionHandler:(id)a5;
- (void)_dismissUniversalSearchFirstTimeExperience:(id)a3 dismissalReason:(int64_t)a4 completionHandler:(id)a5;
- (void)_ensureCompletionListAndParsecSession;
- (void)_executeActionForParsecResultAtIndexPath:(id)a3 tableView:(id)a4 triggerEvent:(unint64_t)a5;
- (void)_executeActionForParsecResultTableViewCell:(id)a3 completionItem:(id)a4 triggerEvent:(unint64_t)a5;
- (void)_generateVisibleResultsFeedbackForEvent:(int64_t)a3;
- (void)_invalidatePendingVoiceSearchTimer;
- (void)_keyboardDidShow:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_logQueryEngagement;
- (void)_logTopHitWasChosen:(BOOL)a3;
- (void)_parsecEnabledDidChange:(id)a3;
- (void)_popoverDismissCompletion;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_preselectCompletionItemIfNecessaryForQueryString:(id)a3;
- (void)_presentPopoverWithViewController:(id)a3 completionHandler:(id)a4;
- (void)_presentStagedCompletionDetailViewControllerAnimated:(BOOL)a3;
- (void)_reloadCompletionTable;
- (void)_removeNoRecentSearchesViewIfNecessary;
- (void)_selectedCompletionItemAtIndexPath:(id)a3;
- (void)_sendInputAnalyticsForItemWithMatchedText:(id)a3 matchType:(int64_t)a4;
- (void)_setShowingCompletions:(BOOL)a3 popoverDismissalReason:(int64_t)a4 completionHandler:(id)a5;
- (void)_showCompletionsPopoverIfNecessary;
- (void)_showStartPageInPopover;
- (void)_textFieldEditingChangedForUpdatingCompletionListOnRestore:(BOOL)a3;
- (void)_updateAlternateContentViewController;
- (void)_updatePersonalisationDataForDonation:(id)a3 forPosition:(unint64_t)a4;
- (void)_updateSearchFieldIcon;
- (void)_updateStartPageSafeAreaInsets;
- (void)_updateVisibilityForCompletionListTableView:(id)a3;
- (void)_updateVoiceSearchState;
- (void)animateTransition:(id)a3;
- (void)beginExtensionsOnboardingForStartPageViewController:(id)a3;
- (void)beginTransitionToNewSizeClassWithState:(id)a3;
- (void)completionList:(id)a3 didFetchFavicon:(id)a4 forRowAtIndexPath:(id)a5;
- (void)completionList:(id)a3 didRemoveItem:(id)a4 wasLastInSection:(BOOL)a5 atIndexPath:(id)a6 withCompletionHandler:(id)a7;
- (void)completionList:(id)a3 topHitDidBecomeReadyForString:(id)a4;
- (void)completionList:(id)a3 willGoToURL:(id)a4 fromPegasusSearchResult:(id)a5 forImageAttribution:(BOOL)a6;
- (void)completionListDidRestoreCachedCompletions:(id)a3;
- (void)completionListDidUpdate:(id)a3 forQuery:(id)a4;
- (void)dealloc;
- (void)didGainOwnershipOfCompletionsViewController;
- (void)didGainOwnershipOfStartPageViewController;
- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController;
- (void)didInteractWithUniversalSearchFirstTimeExperienceViewController:(id)a3;
- (void)didTogglePrivateBrowsing;
- (void)didUpdateObscuredInsetsForSizeTransition;
- (void)dismissCompletionDetailWindowAndResumeEditingIfNeeded:(BOOL)a3 completionHandler:(id)a4;
- (void)dismissCompletionsForSizeClassTransition;
- (void)dismissUniversalSearchFirstTimeExperienceViewControllerIfNeeded;
- (void)endTransitionToNewSizeClassWithState:(id)a3;
- (void)findOnPage;
- (void)goToURL:(id)a3;
- (void)goToURLString:(id)a3;
- (void)horizontalSizeClassDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)ignorePreviousLayoutSize;
- (void)openURLInExternalApplication:(id)a3;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)presentDetail:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent;
- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent;
- (void)reloadNavigationItemAnimated:(BOOL)a3;
- (void)reportUnifiedFieldSearchDidCancel;
- (void)resetFavorites;
- (void)resetPrivateBrowsingExplanation;
- (void)resume;
- (void)resumeEditingIfNeeded:(BOOL)a3;
- (void)resumeSearchWithQuery:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)search:(id)a3;
- (void)searchTextCompletionAccessoryButtonTappedForCompletionItem:(id)a3;
- (void)setCompletionList:(id)a3;
- (void)setLibraryType:(id)a3;
- (void)setLibraryType:(id)a3 cloudTabDeviceID:(id)a4;
- (void)setLoadProgressObserver:(id)a3;
- (void)setNavigationBar:(id)a3;
- (void)setObscuredInsets:(UIEdgeInsets)a3;
- (void)setQueryString:(id)a3 forUpdatingCompletionListOnRestore:(BOOL)a4;
- (void)setStartPageScrollObserver:(id)a3;
- (void)setTextField:(id)a3;
- (void)setTopScrollEdgeEffectColor:(id)a3;
- (void)setTopScrollEdgeEffectStyle:(id)a3;
- (void)setUsesPopoverStyleForFavorites:(BOOL)a3;
- (void)showNoRecentSearchesViewIfNotShowing;
- (void)showRecentSearches;
- (void)showUniversalSearchFirstTimeExperienceIfNotShowing;
- (void)startPageControllerDidCompleteDismissGesture:(id)a3;
- (void)startPageControllerDidCompleteUnfocusGesture:(id)a3;
- (void)startPageUpdatePolicyDidChange;
- (void)startPageViewController:(id)a3 willPresentCustomizationViewController:(id)a4;
- (void)startPageViewControllerDidAppear:(id)a3;
- (void)startPageViewControllerDidScroll:(id)a3 animated:(BOOL)a4;
- (void)startPageViewControllerDidUpdateContent:(id)a3;
- (void)stopCompleting;
- (void)switchToTabWithUUID:(id)a3 inWindowWithUUID:(id)a4 forTabGroupWithUUID:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)test_simulateTyping:(id)a3 inGroup:(id)a4 startIndex:(unint64_t)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)toggleVoiceSearch;
- (void)unifiedField:(id)a3 didEndEditingWithAddress:(id)a4;
- (void)unifiedField:(id)a3 didEndEditingWithParsecTopHit:(id)a4;
- (void)unifiedField:(id)a3 didEndEditingWithSearch:(id)a4;
- (void)unifiedField:(id)a3 didEngageWithQuerySuggestion:(id)a4 forQueryString:(id)a5;
- (void)unifiedField:(id)a3 focusNextKeyView:(BOOL)a4;
- (void)unifiedField:(id)a3 moveCompletionSelectionByRowOffset:(int64_t)a4;
- (void)unifiedField:(id)a3 moveCompletionSelectionBySectionOffset:(int64_t)a4;
- (void)unifiedField:(id)a3 pasteAndNavigateWithText:(id)a4;
- (void)unifiedField:(id)a3 willUpdateUserTypedText:(id)a4 toText:(id)a5;
- (void)unifiedFieldExternalSearchDidEnd:(id)a3;
- (void)unifiedFieldMakeWindowKey:(id)a3;
- (void)unifiedFieldReflectedItemDidChange:(id)a3;
- (void)unifiedFieldSelectCompletionItemIfAvailable:(id)a3;
- (void)unifiedFieldVoiceSearchStateDidChange:(id)a3;
- (void)updatePreferredContentSize;
- (void)updateQuerySuggestionsFromResponse:(id)a3;
- (void)updateStartPageControlTintColor;
- (void)updateStartPageCustomizationPolicy;
- (void)updateStartPageHidesEmptyRootViewNavigationBar;
- (void)updateStartPageTopSpacing;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willGoToURLFromPegasusSearchResult:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation CatalogViewController

- (void)updateStartPageCustomizationPolicy
{
  v3 = [(CatalogViewController *)self startPageCustomizationPolicy];
  v4 = [(StartPageController *)self->_startPageController viewController];
  [v4 setCustomizationPolicy:v3];
}

- (int64_t)startPageCustomizationPolicy
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (self->_usesPopoverStyleForFavorites)
  {
    goto LABEL_8;
  }

  v4 = [(StartPageController *)self->_startPageController libraryType];
  if (v4)
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
    v8 = [WeakRetained tabController];
    v9 = [v8 activeTabDocument];
    v10 = ~[v9 isBlank];

    v6 = v10 & 1;
  }

LABEL_9:

  return v6;
}

- (void)updateStartPageHidesEmptyRootViewNavigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained rootViewController];
  if ([v3 isUsingBottomCapsule])
  {
    v4 = [WeakRetained usesNarrowLayout] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  v5 = [MEMORY[0x277D49A08] isSolariumEnabled] | v4;
  v6 = [(StartPageController *)self->_startPageController viewController];
  [v6 setRootViewHidesEmptyNavigationBar:v5 & 1];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = CatalogViewController;
  [(CatalogViewController *)&v14 viewDidLoad];
  v3 = [(CatalogViewController *)self view];
  [v3 setAutoresizingMask:0];
  [v3 setClipsToBounds:1];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:0];

  v5 = [MEMORY[0x277D75348] sf_safariAccentColor];
  [v3 setTintColor:v5];

  v6 = [(SFStartPageViewController *)self->_startPageViewController title];
  [(CatalogViewController *)self setTitle:v6];

  v7 = [(SFStartPageViewController *)self->_startPageViewController view];
  [v7 setAutoresizingMask:0];
  [v7 setInsetsLayoutMarginsFromSafeArea:0];
  if (self->_usesPopoverStyleForFavorites)
  {
    [(AbstractCatalogViewController *)self->_popoverCatalogViewController takeOwnershipOfStartPageViewController];
    [(PopoverCatalogViewController *)self->_popoverCatalogViewController updateStartPagePreferredContentSize];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v9 = [WeakRetained rootViewController];
    v10 = [v9 _sf_viewControllerToPresentFrom];
    v11 = [v10 presentedViewController];

    if (!v11)
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

  [v3 addInteraction:self->_scrollPocketCollector];
}

- (void)viewWillLayoutSubviews
{
  v41 = [(CatalogViewController *)self view];
  [v41 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = self->_completionsViewController;
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v11])
  {
    v12 = [(CatalogViewController *)self view];
    [v12 safeAreaInsets];
    UIEdgeInsetsSubtract();

    UIEdgeInsetsMax();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(CompletionListTableViewController *)v11 tableView];
    [v21 setFrame:{v4, v6, v8, v10}];
    [v21 setContentInset:{v14, v16, v18, v20}];
    [v21 setScrollIndicatorInsets:{v14, v16, v18, v20}];
  }

  v22 = self->_startPageViewController;
  if ([(AbstractCatalogViewController *)self isResponsibleForLayoutOfViewController:v22])
  {
    [(_SFNavigationBarCommon *)self->_navigationBar layoutIfNeeded];
    [(_SFNavigationBarCommon *)self->_navigationBar urlOutlineFrameRelativeToView:v41];
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
      v28 = [(SFStartPageViewController *)v22 view];
      [v28 setFrame:{v4, v6, v8, v10}];
      if ([MEMORY[0x277D49A08] is2024FavoritesEnabled])
      {
        v29 = [(CatalogViewController *)self view];
        [v29 _sf_hasLandscapeAspectRatio];
      }

      v47.origin.x = v4;
      v47.origin.y = v6;
      v47.size.width = v8;
      v47.size.height = v10;
      CGRectGetWidth(v47);
      _SFRoundFloatToPixels();
      if (!self->_usesPopoverStyleForFavorites)
      {
        v30 = [(CatalogViewController *)self traitCollection];
        [v30 horizontalSizeClass];
      }

      _SFDefaultLayoutMargins();
      UIEdgeInsetsReplace();
      [v28 setLayoutMargins:?];

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
    v40 = [(UniversalSearchFirstTimeExperienceViewController *)v31 view];
    [v40 setFrame:{v33, v35, v37, v39}];
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
  v4 = [(StartPageController *)self->_startPageController viewController];
  [v4 setTopScrollEdgeEffectColor:topScrollEdgeEffectColor];

  topScrollEdgeEffectStyle = self->_topScrollEdgeEffectStyle;
  v6 = [(StartPageController *)self->_startPageController viewController];
  [v6 setTopScrollEdgeEffectStyle:topScrollEdgeEffectStyle];
}

- (void)updateStartPageControlTintColor
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained isPrivateBrowsingEnabled];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(StartPageController *)self->_startPageController viewController];
  [v5 setPreferredControlTintColor:v4];

  if (v3)
  {
  }
}

- (void)resetFavorites
{
  v3 = [(StartPageController *)self->_startPageController libraryType];

  if (!v3)
  {
    [(StartPageController *)self->_startPageController updatePrivateBrowsingExplanationState];
    v4 = [(StartPageController *)self->_startPageController viewController];
    [v4 resetToRootViewWithCustomizationPolicy:{-[CatalogViewController startPageCustomizationPolicy](self, "startPageCustomizationPolicy")}];
  }
}

- (id)childViewControllerForStatusBarStyle
{
  v3 = [(AbstractCatalogViewController *)self foregroundChildViewController];
  v4 = v3;
  if (v3 == self->_startPageViewController)
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
  v2 = [(StartPageController *)self->_startPageController viewController];
  [v2 updateStartPageTopPadding];
}

- (UIButton)sidebarButton
{
  sidebarButton = self->_sidebarButton;
  if (!sidebarButton)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v5 = [WeakRetained makeSidebarButton];
    v6 = self->_sidebarButton;
    self->_sidebarButton = v5;

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
    v12 = [(CatalogViewController *)self view];
    [v12 safeAreaInsets];
    UIEdgeInsetsSubtract();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(CatalogViewController *)self startPageViewController];
    [v11 setAdditionalSafeAreaInsets:{v4, v6, v8, v10}];
  }
}

- (BOOL)popoverIsShowing
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained rootViewController];
  v5 = [v4 topBar];

  if (!v5)
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
  v8 = [(UIPopoverPresentationController *)v6 containerView];
  v9 = [v8 window];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(UIPopoverPresentationController *)v7 presentingViewController];
    v10 = v11 != 0;
  }

  return v10;
}

- (void)startPageUpdatePolicyDidChange
{
  v3 = [(StartPageController *)self->_startPageController viewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__CatalogViewController_startPageUpdatePolicyDidChange__block_invoke;
  v4[3] = &unk_2781D4D40;
  v4[4] = self;
  [v3 coalesceDataReloadWithBlock:v4 animatingDifferences:1];
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
  v4 = [MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled];
  v5 = WeakRetained;
  if (v4)
  {
    v6 = [WeakRetained configuration];
    v7 = [v6 allowsSearchFeedback] & v3;

    v5 = WeakRetained;
    if (v7 == 1)
    {
      if (!self->_parsecSearchSession)
      {
        goto LABEL_7;
      }

      v8 = [(CompletionList *)self->_completionList parsecSearchSession];

      if (!v8)
      {
        [(CompletionList *)self->_completionList setParsecSearchSession:self->_parsecSearchSession];
      }

      v5 = WeakRetained;
      if (!self->_parsecSearchSession)
      {
LABEL_7:
        v9 = [v5 universalSearchSession];
        parsecSearchSession = self->_parsecSearchSession;
        self->_parsecSearchSession = v9;

        v11 = self->_parsecSearchSession;
        v12 = [MEMORY[0x277D759A0] mainScreen];
        [v12 scale];
        [(WBSParsecDSession *)v11 setUIScale:?];

        [(CompletionList *)self->_completionList setParsecSearchSession:self->_parsecSearchSession];
        v5 = WeakRetained;
      }
    }
  }
}

- (void)_deselectCompletionsViewControllerSelectedRow
{
  v4 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v3 = [v4 indexPathForSelectedRow];
  if (v3)
  {
    [v4 deselectRowAtIndexPath:v3 animated:0];
    [(CatalogViewController *)self _updateSearchFieldIcon];
  }
}

- (void)dismissUniversalSearchFirstTimeExperienceViewControllerIfNeeded
{
  if ([(CatalogViewController *)self isShowingUniversalSearchFirstTimeExperience])
  {
    v3 = [(CatalogViewController *)self universalSearchFirstTimeExperienceViewController];
    [(CatalogViewController *)self didCancelUniversalSearchFirstTimeExperienceViewController:v3];
  }
}

- (BOOL)isShowingUniversalSearchFirstTimeExperience
{
  v3 = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController parentViewController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController presentingViewController];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)test_simulateTyping:(id)a3 inGroup:(id)a4 startIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length] >= a5)
  {
    v10 = dispatch_time(0, 500000000);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__CatalogViewController_Testing__test_simulateTyping_inGroup_startIndex___block_invoke;
    v11[3] = &unk_2781D5AA0;
    v15 = a5;
    v12 = v8;
    v13 = v9;
    v14 = self;
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
  v2 = [(CompletionList *)self->_completionList query];
  v3 = [v2 queryID];
  if (!v3)
  {
    v3 = [MEMORY[0x277D49ED8] currentQueryID];
  }

  return v3;
}

- (void)_parsecEnabledDidChange:(id)a3
{
  if (([MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled] & 1) == 0)
  {

    [(CatalogViewController *)self _clearParsecSearchSession];
  }
}

- (CatalogViewController)initWithDelegate:(id)a3 browserController:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = CatalogViewController;
  v8 = [(CatalogViewController *)&v34 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_browserController, v7);
    objc_storeWeak(&v9->_delegate, v6);
    v10 = [v6 catalogViewControllerStartPageVisualStyleProvider:v9];
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

    [(StartPageController *)v9->_startPageController setDataSource:v7];
    v13 = [v7 tabController];
    v14 = [v13 activeTabDocument];
    v15 = [v14 libraryType];
    [(StartPageController *)v9->_startPageController setLibraryType:v15];

    v16 = +[Application sharedApplication];
    v17 = [v16 tabGroupManager];

    [v17 addTabGroupObserver:v9->_startPageController];
    [v17 addCloudTabsObserver:v9->_startPageController];
    [(CatalogViewController *)v9 updateStartPageCustomizationPolicy];
    [(CatalogViewController *)v9 updateStartPageHidesEmptyRootViewNavigationBar];
    v18 = [(StartPageController *)v9->_startPageController viewController];
    [v18 setDelegate:v9];
    objc_storeStrong(&v9->_startPageViewController, v18);
    v19 = objc_alloc_init(PopoverCatalogViewController);
    popoverCatalogViewController = v9->_popoverCatalogViewController;
    v9->_popoverCatalogViewController = v19;

    v21 = [MEMORY[0x277CBEB58] set];
    seenVisibleResults = v9->_seenVisibleResults;
    v9->_seenVisibleResults = v21;

    v23 = [MEMORY[0x277D759B8] automaticStyle];
    topScrollEdgeEffectStyle = v9->_topScrollEdgeEffectStyle;
    v9->_topScrollEdgeEffectStyle = v23;

    [(PopoverCatalogViewController *)v9->_popoverCatalogViewController setPrimaryCatalogViewController:v9];
    if ([v6 catalogViewControllerShouldRequestNetworkedSuggestions:v9])
    {
      [(CatalogViewController *)v9 _beginParsecSessionIfNeeded];
    }

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v9 selector:sel__parsecEnabledDidChange_ name:*MEMORY[0x277D4A498] object:0];
    [v25 addObserver:v9 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [v25 addObserver:v9 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
    [v25 addObserver:v9 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
    [v25 addObserver:v9 selector:sel__keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
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
  v3 = [(CatalogViewController *)self unifiedTextField];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v4 = [(CompletionList *)self->_completionList delegate];

  if (v4 == self)
  {
    [(CompletionList *)self->_completionList setDelegate:0];
  }

  v5 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [v5 setDataSource:0];
  [v5 setDelegate:0];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7 = +[Application sharedApplication];
  v8 = [v7 tabGroupManager];
  [v8 removeTabGroupObserver:self->_startPageController];

  v9.receiver = self;
  v9.super_class = CatalogViewController;
  [(CatalogViewController *)&v9 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CatalogViewController;
  [(CatalogViewController *)&v4 viewDidAppear:a3];
  [(CatalogViewController *)self _deselectCompletionsViewControllerSelectedRow];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (!v4 && !self->_transitioningToNewSizeClass)
  {
    [(CatalogViewController *)self dismissCompletionDetailWindowAndResumeEditingIfNeeded:0 completionHandler:0];
  }

  v5 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [(CatalogViewController *)self _updateVisibilityForCompletionListTableView:v5];

  v6.receiver = self;
  v6.super_class = CatalogViewController;
  [(CatalogViewController *)&v6 willMoveToParentViewController:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__CatalogViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2781DC1C0;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
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

- (void)horizontalSizeClassDidChange:(id)a3 previousTraitCollection:(id)a4
{
  if ([a4 horizontalSizeClass] && !self->_showingCompletions && (-[UnifiedField isFirstResponder](self->_textField, "isFirstResponder") & 1) == 0 && !self->_transitioningToNewSizeClass)
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
    v3 = [(CatalogViewController *)self view];
    [v3 setNeedsLayout];
  }
}

- (void)_updateVisibilityForCompletionListTableView:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277D28EB8] sharedManager];
  v5 = [v4 liveCompletionList];

  if ((v5 & 1) == 0)
  {
    [v6 setHidden:{-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") == 1}];
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
    v6 = [WeakRetained rootViewController];
    v7 = [v6 tipsCoordinator];
    v8 = [v7 webSearchTipView];
    [(CompletionListTableViewController *)v4 setWebSearchTipView:v8];

    v9 = [(CompletionListTableViewController *)v4 tableView];
    [v9 setDelegate:self];
    [v9 setEstimatedRowHeight:+[UITableViewCell safari_defaultHeightOfTrivialInstance]()];
    [v9 setLayoutMarginsFollowReadableWidth:0];
    [v9 setRowHeight:*MEMORY[0x277D76F30]];
    [(CatalogViewController *)self _updateVisibilityForCompletionListTableView:v9];
    v10 = [(CompletionListTableViewController *)v4 dataSource];
    [v10 setActionHandler:self];

    v11 = self->_completionsViewController;
    self->_completionsViewController = v4;

    v12 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
    [v12 updateTableViewWithCompletionList:self->_completionList animated:0 completion:0];

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
  v4 = [WeakRetained rootViewController];
  -[CompletionListTableViewController setShowsWebSearchTipIfExists:](self->_completionsViewController, "setShowsWebSearchTipIfExists:", [v4 isUsingBottomCapsule] ^ 1);

  v14 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v5 = [v14 separatorEffect];
  [v14 setSeparatorEffect:0];
  v6 = [v14 separatorEffect];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    v8 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
    [v8 reloadVisibleRows];
  }

  if (!self->_usesPopoverStyleForFavorites)
  {
    if (!-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") || ([MEMORY[0x277D28EB8] sharedManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "liveCompletionList"), v9, v10))
    {
      [(CatalogViewController *)self _updateAlternateContentViewController];
    }
  }

  [v14 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v11 = [(StartPageController *)self->_startPageController viewController];
  v12 = [v11 showsWallpaper];

  if (v12)
  {
    v13 = [(UIBarButtonItem *)self->_cancelBarButton customView];
    [v13 setOpaqueBackgroundVisibility:1.0];
  }
}

- (void)relinquishOwnershipOfCompletionsViewControllerFromCurrentParent
{
  v3 = [(StartPageController *)self->_startPageController viewController];
  [v3 setAlternateContentViewController:0];

  v4 = [(StartPageController *)self->_startPageController viewController];
  v5 = [v4 showsWallpaper];

  if (v5)
  {
    v6 = [(UIBarButtonItem *)self->_cancelBarButton customView];
    [v6 setOpaqueBackgroundVisibility:0.0];
  }

  v7.receiver = self;
  v7.super_class = CatalogViewController;
  [(AbstractCatalogViewController *)&v7 relinquishOwnershipOfCompletionsViewControllerFromCurrentParent];
}

- (void)relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent
{
  v3 = [(StartPageController *)self->_startPageController viewController];
  v4 = [v3 alternateContentViewController];
  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;

  if (v4 == universalSearchFirstTimeExperienceViewController)
  {
    v6 = [(StartPageController *)self->_startPageController viewController];
    [v6 setAlternateContentViewController:0];
  }

  v7.receiver = self;
  v7.super_class = CatalogViewController;
  [(AbstractCatalogViewController *)&v7 relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent];
}

- (void)_updateAlternateContentViewController
{
  v3 = [(CompletionListTableViewController *)self->_completionsViewController parentViewController];

  if (v3 == self)
  {
    completionsViewController = self->_completionsViewController;
    v5 = [(StartPageController *)self->_startPageController viewController];
    [v5 setAlternateContentViewController:completionsViewController];
  }
}

- (void)didGainOwnershipOfUniversalSearchFirstTimeExperienceViewController
{
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v4 = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController view];
  [v4 setBackgroundColor:v3];

  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;
  v6 = [(StartPageController *)self->_startPageController viewController];
  [v6 setAlternateContentViewController:universalSearchFirstTimeExperienceViewController];
}

- (double)navigationBarHeight
{
  v2 = [(StartPageController *)self->_startPageController viewController];
  [v2 navigationBarHeight];
  v4 = v3;

  return v4;
}

- (void)ignorePreviousLayoutSize
{
  v2 = [(StartPageController *)self->_startPageController viewController];
  [v2 ignorePreviousLayoutSize];
}

- (void)reloadNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  [(CatalogViewController *)self updateStartPageHidesEmptyRootViewNavigationBar];
  v5 = [(StartPageController *)self->_startPageController viewController];
  [v5 reloadNavigationItemAnimated:v3];
}

- (void)setCompletionList:(id)a3
{
  v5 = a3;
  if (self->_completionList != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_completionList, a3);
    [(CompletionList *)self->_completionList setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);
    [(CompletionList *)self->_completionList setLoadProgressObserver:WeakRetained];

    [(CompletionList *)self->_completionList setParsecSearchSession:self->_parsecSearchSession];
    v5 = v9;
    if (self->_showingCompletions)
    {
      completionList = self->_completionList;
      v8 = [(CompletionList *)completionList query];
      [(CatalogViewController *)self completionListDidUpdate:completionList forQuery:v8];

      v5 = v9;
    }
  }
}

- (void)setLoadProgressObserver:(id)a3
{
  obj = a3;
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

- (void)setQueryString:(id)a3 forUpdatingCompletionListOnRestore:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
  [(UnifiedField *)self->_textField clearUserTypedText];
  [(UnifiedField *)self->_textField setText:v6];

  [(CatalogViewController *)self _textFieldEditingChangedForUpdatingCompletionListOnRestore:v4];
}

- (void)_presentPopoverWithViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![MEMORY[0x277D49A08] isSolariumEnabled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__CatalogViewController__presentPopoverWithViewController_completionHandler___block_invoke;
    aBlock[3] = &unk_2781D4D90;
    v11 = v7;
    v18 = v11;
    v12 = _Block_copy(aBlock);
    v13 = [v6 parentViewController];
    if (v13 || ([v6 presentingViewController], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v14 = [v6 _popoverController];

      if (!v14)
      {
        [v6 setModalPresentationStyle:7];
        v15 = [v6 popoverPresentationController];
        popoverPresentationController = self->_popoverPresentationController;
        self->_popoverPresentationController = v15;

        [(UIPopoverPresentationController *)self->_popoverPresentationController setDelegate:self];
        [(UIPopoverPresentationController *)self->_popoverPresentationController _setShouldDisableInteractionDuringTransitions:0];
        if (objc_opt_respondsToSelector())
        {
          [(UIPopoverPresentationController *)self->_popoverPresentationController _setAllowsFocusInPresentingViewController:1];
        }

        [WeakRetained catalogViewController:self presentViewControllerWithinPopover:v6 completionHandler:v11];
        goto LABEL_8;
      }
    }

    v12[2](v12);
LABEL_8:

    goto LABEL_11;
  }

  [v6 setModalPresentationStyle:4];
  [v6 setModalTransitionStyle:12];
  [v6 setTransitioningDelegate:self];
  if (self->_completionsViewController)
  {
    v9 = [(AbstractCatalogViewController *)self->_popoverCatalogViewController foregroundChildViewController];
    v10 = v9 != self->_completionsViewController;
  }

  else
  {
    v10 = 1;
  }

  [WeakRetained catalogViewController:self presentViewControllerInPlatter:v6 animated:v10 completionHandler:v7];
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
  v4 = [WeakRetained isPrivateBrowsingEnabled];

  if (v4)
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
  v3 = [(StartPageController *)self->_startPageController viewController];
  [v3 reloadDataAnimatingDifferences:0];
}

- (void)_reloadCompletionTable
{
  self->_completionTableIsReloading = 1;
  v3 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  [v3 updateTableViewWithCompletionList:self->_completionList animated:0 completion:0];

  completionsViewController = self->_completionsViewController;

  [(CompletionListTableViewController *)completionsViewController setNeedsScrollOffsetReset];
}

- (BOOL)_shouldUsePopoverForCompletions
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self] && !-[UnifiedField voiceSearchState](self->_textField, "voiceSearchState") && !self->_voiceSearchWasInProgress;

  return v4;
}

- (void)setTopScrollEdgeEffectColor:(id)a3
{
  v6 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_topScrollEdgeEffectColor, a3);
    v5 = [(StartPageController *)self->_startPageController viewController];
    [v5 setTopScrollEdgeEffectColor:v6];
  }
}

- (void)setTopScrollEdgeEffectStyle:(id)a3
{
  v5 = a3;
  if (self->_topScrollEdgeEffectStyle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_topScrollEdgeEffectStyle, a3);
    v6 = [(StartPageController *)self->_startPageController viewController];
    [v6 setTopScrollEdgeEffectStyle:v7];

    v5 = v7;
  }
}

- (void)_dismissPopoverAnimated:(BOOL)a3 dismissalReason:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v9 = v8;
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
    [WeakRetained catalogViewControllerPopoverWillDismiss:self dismissalReason:a4];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__CatalogViewController__dismissPopoverAnimated_dismissalReason_completionHandler___block_invoke_2;
    v17[3] = &unk_2781D76E8;
    v21 = v6;
    v18 = v11;
    v19 = self;
    v20 = v10;
    v15 = _Block_copy(v17);
    v16 = v15;
    if (v6)
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

- (void)presentationControllerWillDismiss:(id)a3
{
  if (!self->_dismissingPopover)
  {
    self->_dismissingPopover = 1;
    v4 = [a3 presentedViewController];
    v5 = [v4 transitionCoordinator];
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
    [v5 animateAlongsideTransition:v7 completion:v6];
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

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self willRepositionPopoverToRect:a4 inView:a5];
}

- (void)setUsesPopoverStyleForFavorites:(BOOL)a3
{
  if (self->_usesPopoverStyleForFavorites != a3)
  {
    self->_usesPopoverStyleForFavorites = a3;
    v5 = [(StartPageController *)self->_startPageController viewController];
    [v5 reloadNavigationItemAnimated:{objc_msgSend(MEMORY[0x277D75D18], "areAnimationsEnabled")}];

    [(CatalogViewController *)self updateStartPageCustomizationPolicy];
  }
}

- (SFStartPageScrollObserver)startPageScrollObserver
{
  v2 = [(StartPageController *)self->_startPageController viewController];
  v3 = [v2 scrollObserver];

  return v3;
}

- (void)setStartPageScrollObserver:(id)a3
{
  startPageController = self->_startPageController;
  v4 = a3;
  v5 = [(StartPageController *)startPageController viewController];
  [v5 setScrollObserver:v4];
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

- (void)setLibraryType:(id)a3
{
  v7 = a3;
  v4 = [(StartPageController *)self->_startPageController libraryType];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    [(StartPageController *)self->_startPageController setLibraryType:v7];
    v6 = [(StartPageController *)self->_startPageController viewController];
    [v6 resetToRootViewWithCustomizationPolicy:{-[CatalogViewController startPageCustomizationPolicy](self, "startPageCustomizationPolicy")}];

    [(CatalogViewController *)self reloadNavigationItemAnimated:0];
  }
}

- (void)setLibraryType:(id)a3 cloudTabDeviceID:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(StartPageController *)self->_startPageController libraryType];
  if ((WBSIsEqual() & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = [(StartPageController *)self->_startPageController cloudTabDeviceID];
  v9 = WBSIsEqual();

  if ((v9 & 1) == 0)
  {
LABEL_5:
    [(StartPageController *)self->_startPageController setLibraryType:v11];
    [(StartPageController *)self->_startPageController setCloudTabDeviceID:v6];
    v10 = [(StartPageController *)self->_startPageController viewController];
    [v10 resetToRootViewWithCustomizationPolicy:{-[CatalogViewController startPageCustomizationPolicy](self, "startPageCustomizationPolicy")}];

    [(CatalogViewController *)self reloadNavigationItemAnimated:0];
  }
}

- (double)chromelessScrollDistance
{
  v2 = [(StartPageController *)self->_startPageController viewController];
  if ([v2 isShowingRootView])
  {
    [v2 scrollDistance];
    v4 = v3;
  }

  else
  {
    v4 = 1.79769313e308;
  }

  return v4;
}

- (void)setObscuredInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_obscuredInsets.top, v3), vceqq_f64(*&self->_obscuredInsets.bottom, v4)))) & 1) == 0)
  {
    self->_obscuredInsets = a3;
    [(CatalogViewController *)self _updateStartPageSafeAreaInsets];
    v6 = [(CatalogViewController *)self view];
    [v6 setNeedsLayout];
  }
}

- (void)setTextField:(id)a3
{
  v5 = a3;
  if (self->_textField != v5)
  {
    v8 = v5;
    v6 = [(CatalogViewController *)self unifiedTextField];
    [v6 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
    [v6 setDelegate:0];
    [v6 setInputAccessoryView:0];
    objc_storeStrong(&self->_textField, a3);
    [(UnifiedField *)self->_textField setDelegate:self];
    if ([(UnifiedField *)self->_textField isFirstResponder])
    {
      [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
    }

    v7 = [(StartPageController *)self->_startPageController viewController];
    [v7 reloadNavigationItemAnimated:1];

    v5 = v8;
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

- (void)_setShowingCompletions:(BOOL)a3 popoverDismissalReason:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CatalogViewController__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v9 = v8;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (self->_showingCompletions != v6)
  {
    [(CatalogViewController *)self _removeNoRecentSearchesViewIfNecessary];
    self->_showingCompletions = v6;
    if (a4 != 1 && !v6)
    {
      [(CompletionList *)self->_completionList clearCompletionListings];
    }

    v12 = dispatch_group_create();
    if (!v6)
    {
      if (a4 != 1)
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
        [(CatalogViewController *)self _dismissPopoverAnimated:0 dismissalReason:a4 completionHandler:v17];
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
    v16 = [(CatalogViewController *)self universalSearchFirstTimeExperienceViewController];
    if (v16)
    {
      dispatch_group_enter(v12);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __89__CatalogViewController__setShowingCompletions_popoverDismissalReason_completionHandler___block_invoke_2;
      v19[3] = &unk_2781D4D40;
      v20 = v12;
      [(CatalogViewController *)self _dismissUniversalSearchFirstTimeExperience:v16 dismissalReason:a4 completionHandler:v19];
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
  v3 = [(CatalogViewController *)self _shouldUsePopoverForCompletions];
  if (v3)
  {
    usesPopoverStyleForFavorites = self->_usesPopoverStyleForFavorites;
    [(AbstractCatalogViewController *)self->_popoverCatalogViewController takeOwnershipOfCompletionsViewController];
    if (!usesPopoverStyleForFavorites && ![(CatalogViewController *)self popoverIsShowing])
    {
      [(CatalogViewController *)self _presentPopoverWithViewController:self->_popoverCatalogViewController];
    }
  }

  return v3;
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

- (void)updateQuerySuggestionsFromResponse:(id)a3
{
  v4 = a3;
  v6 = [(CatalogViewController *)self textField];
  v5 = [v4 completer];

  [v6 setContextCompleter:v5];
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

  v5 = [(CatalogViewController *)self textField];
  v4 = [v5 contextCompleter];
  [v4 discard];

  [v5 setContextCompleter:0];
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
  v3 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [v3 searchViewDisappearedBecauseOfEvent:4 forQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
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
    v4 = [MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled];
  }

  else
  {
    v4 = 0;
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

  v9 = [v5 shouldShowRecentSearches];
  v10 = self->_completionList;
  if (v9)
  {
    v11 = [(CompletionList *)v10 query];
    v12 = [v11 queryString];
    v13 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];
    -[CompletionList setShowingRecentSearches:](self->_completionList, "setShowingRecentSearches:", [v14 length] == 0);
  }

  else
  {
    [(CompletionList *)v10 setShowingRecentSearches:0];
  }

  if (v4)
  {
    [(CatalogViewController *)self _beginParsecSessionIfNeeded];
  }

  else
  {
    [(CatalogViewController *)self _clearParsecSearchSession];
  }

  [(CatalogViewController *)self _clearCompletionListCachesSoon];
}

- (void)_textFieldEditingChangedForUpdatingCompletionListOnRestore:(BOOL)a3
{
  v39 = a3;
  v43[2] = *MEMORY[0x277D85DE8];
  self->_isCachedCompletionList = 0;
  [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController unifiedFieldDidChange];
  [(CatalogViewController *)self _removeNoRecentSearchesViewIfNecessary];
  [(CatalogViewController *)self _updateSearchFieldIcon];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained catalogViewControllerShouldRequestNetworkedSuggestions:self])
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    p_completionList = &self->_completionList;
    -[CompletionList setShouldIncludeNetworkedSearchSuggestions:](self->_completionList, "setShouldIncludeNetworkedSearchSuggestions:", [v5 BOOLForKey:*MEMORY[0x277D49B90]] ^ 1);

    [(CatalogViewController *)self _beginParsecSessionIfNeeded];
  }

  else
  {
    p_completionList = &self->_completionList;
    [(CompletionList *)self->_completionList setShouldIncludeNetworkedSearchSuggestions:0];
    [(CatalogViewController *)self _clearParsecSearchSession];
  }

  v7 = [(UnifiedField *)self->_textField text];
  v8 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
  v9 = [(__CFString *)v7 stringByTrimmingCharactersInSet:v8];
  v10 = [v9 length];

  v42[0] = @"time";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v42[1] = @"query";
  v43[0] = v11;
  v12 = &stru_2827BF158;
  if (v7)
  {
    v12 = v7;
  }

  v43[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [Application postTestNotificationName:@"catalogViewControllerDidStart" object:self userInfo:v13];

  v14 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(CatalogViewController *)v7 _textFieldEditingChangedForUpdatingCompletionListOnRestore:v10, v14];
  }

  v15 = objc_loadWeakRetained(&self->_browserController);
  v16 = [v15 shouldShowRecentSearches];
  if (v10)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
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
  v21 = [*v18 query];
  v22 = [v21 queryString];
  v23 = [v22 isEqualToString:v7];

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
          v37 = [(UnifiedField *)self->_textField isPastingText];
          v38 = 26;
          if (!v39)
          {
            v38 = 1;
          }

          if (v37)
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
    v27 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:v7 triggerEvent:v25];
    v28 = [v15 effectiveProfileIdentifier];
    [v27 setProfileIdentifierToFilterResults:v28];

    v29 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    [v29 userDidTypeKey:{objc_msgSend(v27, "queryID")}];

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
      v30 = [MEMORY[0x277D28EB8] sharedManager];
      v31 = [v30 queryItems];
      [v27 setQueryItems:v31];
    }

    v32 = [(UnifiedField *)self->_textField querySuggestions];
    v33 = [v32 safari_mapObjectsUsingBlock:&__block_literal_global_75];
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

- (void)setNavigationBar:(id)a3
{
  v5 = a3;
  if (self->_navigationBar != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_navigationBar, a3);
    v6 = [(_SFNavigationBarCommon *)self->_navigationBar textField];
    [(CatalogViewController *)self setTextField:v6];

    v5 = v7;
  }
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v3 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [v3 setNeedsLayout];
}

- (void)completionListDidUpdate:(id)a3 forQuery:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_dismissingPopover)
  {
    [(CatalogViewController *)self _reloadCompletionTable];
    if (!self->_isCachedCompletionList)
    {
      v8 = [v7 queryString];
      [(CatalogViewController *)self _preselectCompletionItemIfNecessaryForQueryString:v8];

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
  v11 = [v7 queryString];
  v12 = v11;
  v13 = &stru_2827BF158;
  if (v11)
  {
    v13 = v11;
  }

  v17[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [Application postTestNotificationName:@"catalogViewControllerDidFinish" object:self userInfo:v14];
}

- (void)_preselectCompletionItemIfNecessaryForQueryString:(id)a3
{
  v14 = a3;
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
    v10 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    [v10 selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
  }

  else
  {
    v10 = [(CompletionList *)self->_completionList indexPathOfAsTypedSearchSuggestion];
    v11 = WBSUnifiedFieldInputTypeForString();
    if (!self->_lastInputWasSearchTextCompletion && (v11 == 3 || !v11))
    {
      if ([v10 isEqual:v7])
      {
        v12 = [(CatalogViewController *)self _completionItemAtIndexPath:v10];
        [(UnifiedField *)self->_textField setReflectedItem:v12];

        if (![(UnifiedField *)self->_textField lastEditWasADeletion])
        {
          v13 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
          [v13 selectRowAtIndexPath:v10 animated:0 scrollPosition:0];
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

- (void)_generateVisibleResultsFeedbackForEvent:(int64_t)a3
{
  v66 = *MEMORY[0x277D85DE8];
  if (!self->_feedbackIsBeingGenerated && (a3 != 3 || !self->_lastFeedbackSentWasScrolling) && [(CompletionList *)self->_completionList hasCompletions]&& [(UnifiedField *)self->_textField voiceSearchState]!= 1)
  {
    self->_feedbackIsBeingGenerated = 1;
    if (a3)
    {
      v48 = [MEMORY[0x277CBEB98] setWithSet:self->_seenVisibleResults];
    }

    else
    {
      v48 = 0;
    }

    [(NSMutableSet *)self->_seenVisibleResults removeAllObjects];
    v49 = objc_opt_new();
    v4 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    v5 = [v4 window];
    [v5 bounds];
    v53 = v7;
    v54 = v6;
    v51 = v9;
    v52 = v8;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v10 = [v4 indexPathsForVisibleRows];
    v11 = [v10 countByEnumeratingWithState:&v59 objects:v65 count:16];
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
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v59 + 1) + 8 * i);
          [v4 rectForRowAtIndexPath:v18];
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
            [v4 convertRect:0 toView:{x, y, width, height}];
            v56 = v24;
            v57 = v23;
            v55 = v25;
            v27 = v26;
            v28 = [v4 window];
            [v28 convertRect:0 fromWindow:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
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
                  if (!a3 || ([v48 containsObject:v42] & 1) == 0)
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

        v12 = [v10 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v12);
    }

    v44 = [v49 count];
    if (a3 == 3 || v44)
    {
      v45 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
      v46 = [v49 copy];
      v47 = [(CompletionList *)self->_completionList query];
      [v45 didDisplayCompletionListItems:v46 forQuery:v47 forEvent:a3];
    }

    self->_feedbackIsBeingGenerated = 0;
    self->_lastFeedbackSentWasScrolling = (a3 - 1) < 2;
  }
}

- (void)_logTopHitWasChosen:(BOOL)a3
{
  v3 = a3;
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
    [WeakRetained didChooseTopHit:v3 matchLength:lastTopHitMatchLength matchScore:v11];
  }
}

- (void)completionList:(id)a3 didRemoveItem:(id)a4 wasLastInSection:(BOOL)a5 atIndexPath:(id)a6 withCompletionHandler:(id)a7
{
  v9 = a4;
  v10 = a7;
  v11 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  completionList = self->_completionList;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __105__CatalogViewController_completionList_didRemoveItem_wasLastInSection_atIndexPath_withCompletionHandler___block_invoke;
  v16[3] = &unk_2781D4D90;
  v13 = v10;
  v17 = v13;
  [v11 updateTableViewWithCompletionList:completionList rowAnimation:0 completion:v16];

  lastTopHitMatch = self->_lastTopHitMatch;
  if (lastTopHitMatch == v9)
  {
    self->_lastTopHitMatch = 0;

    [(UnifiedField *)self->_textField topHitDidBecomeReady];
  }

  v15 = [(UnifiedField *)self->_textField reflectedItem];

  if (v15 == v9)
  {
    [(UnifiedField *)self->_textField setReflectedItem:0];
  }
}

- (void)completionList:(id)a3 topHitDidBecomeReadyForString:(id)a4
{
  v13 = a4;
  textField = self->_textField;
  v7 = a3;
  [(UnifiedField *)textField topHitDidBecomeReady];
  v8 = [v7 topHitForString:v13];

  if (self->_lastTopHitMatch != v8)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v9 = [(CompletionItem *)self->_lastTopHitMatch originalURLString];
      v10 = [(CompletionItem *)v8 originalURLString];
      v11 = [v9 isEqualToString:v10];

      if ((v11 & 1) == 0)
      {
        [(CatalogViewController *)self _logTopHitWasChosen:0];
      }
    }

    objc_storeStrong(&self->_lastTopHitMatch, v8);
    self->_lastTopHitMatchLength = [v13 length];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self mightSelectCompletionItem:v8 forString:v13];
}

- (void)completionListDidRestoreCachedCompletions:(id)a3
{
  self->_isCachedCompletionList = 1;
  v4 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  [v4 updateTableViewWithCompletionList:self->_completionList animated:0 completion:0];
}

- (void)completionList:(id)a3 didFetchFavicon:(id)a4 forRowAtIndexPath:(id)a5
{
  if (self->_completionList == a3)
  {
    completionsViewController = self->_completionsViewController;
    v9 = a5;
    v10 = a4;
    v11 = [(CompletionListTableViewController *)completionsViewController tableView];
    v13 = [v11 cellForRowAtIndexPath:v9];

    v12 = [v13 imageView];
    [v12 setImage:v10];

    [v13 setNeedsLayout];
    [(CatalogViewController *)self _updateSearchFieldIcon];
  }
}

- (void)completionList:(id)a3 willGoToURL:(id)a4 fromPegasusSearchResult:(id)a5 forImageAttribution:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  [(CatalogViewController *)self willGoToURLFromPegasusSearchResult:a5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self loadURL:v9 inExternalApplication:0 forImageAttribution:v6];
}

- (id)_completionItemAtIndexPath:(id)a3
{
  completionsViewController = self->_completionsViewController;
  v4 = a3;
  v5 = [(CompletionListTableViewController *)completionsViewController dataSource];
  v6 = [v5 completionItemAtIndexPath:v4];

  return v6;
}

- (id)tableView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 cellForRowAtIndexPath:v7];
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

- (id)tableView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 cellForRowAtIndexPath:v7];
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
      v15 = [MEMORY[0x277D75348] clearColor];
      [v10 setBackgroundColor:v15];
    }

    v16 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v9 parameters:v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)tableView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    v6 = [(CatalogViewController *)self textField];
    [v6 endEditing:1];

    v9 = [(CatalogViewController *)self textField];
    v7 = [v9 selectedTextRange];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:v7];
  }
}

- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerSuppressSelectedItemUnfocus:self];

  self->_completionDetailIsPresented = 0;
  if ([MEMORY[0x277D75658] isInHardwareKeyboardMode])
  {
    v7 = [(CatalogViewController *)self textField];
    [v7 becomeFirstResponder];

    v10 = objc_loadWeakRetained(&self->_browserController);
    v8 = [v10 textRangeToRestoreAfterCompletionDetailIsDismissed];
    v9 = [(CatalogViewController *)self textField];
    [v9 setSelectedTextRange:v8];

    [v10 setTextRangeToRestoreAfterCompletionDetailIsDismissed:0];
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CatalogViewController *)self _completionItemAtIndexPath:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v10 = [v7 cellForRowAtIndexPath:v8];
  if (!v10)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CatalogViewController tableView:v8 contextMenuConfigurationForRowAtIndexPath:v14 point:?];
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
  v12 = [v10 contextMenuActionProvider];
  v13 = [v11 configurationWithIdentifier:v8 previewProvider:0 actionProvider:v12];

LABEL_12:
LABEL_13:

  return v13;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CatalogViewController *)self _completionItemAtIndexPath:v5];
  v7 = [(CatalogViewController *)self _cellHeightCacheKeyForCompletionItem:v6 indexPath:v5];

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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(CatalogViewController *)self _completionItemAtIndexPath:v7];
  v9 = [(CatalogViewController *)self _cellHeightCacheKeyForCompletionItem:v8 indexPath:v7];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    [v13 bounds];
    Height = CGRectGetHeight(v15);
    *&Height = Height;
    v12 = [v10 numberWithFloat:Height];
    [(NSCache *)self->_tableViewCellHeightCache setObject:v12 forKey:v9];
  }
}

- (id)_cellHeightCacheKeyForCompletionItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 sfSearchResultValue];
    v5 = [v6 identifier];
  }

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(CompletionList *)self->_completionList showingRecentSearches])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CompletionList *)self->_completionList defaultSectionTitleForGroupAtIndex:a4];
  }

  return v6;
}

- (void)_selectedCompletionItemAtIndexPath:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CatalogViewController *)self _completionItemAtIndexPath:v4];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [v4 row] + 1;
  v7 = [v4 section];
  v8 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v6 += [v8 numberOfRowsInSection:i];
    }
  }

  [v5 auditAcceptedCompletionWithRank:v6];
  if (v6 == 1)
  {
    v10 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v5 isTopHit];

      if (v11)
      {
        v12 = self;
        v13 = 1;
LABEL_12:
        [(CatalogViewController *)v12 _logTopHitWasChosen:v13];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (self->_lastTopHitMatch)
  {
    v12 = self;
    v13 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v14 = [(UnifiedField *)self->_textField text];
  [(CatalogViewController *)self _updatePersonalisationDataForDonation:v14 forPosition:v6];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [(UnifiedField *)self->_textField text];
  [WeakRetained catalogViewController:self completionItem:v5 wasAcceptedForString:v16];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v5 string];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = [(UnifiedField *)self->_textField querySuggestions];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v26 = v4;
      v20 = *v28;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [*(*(&v27 + 1) + 8 * j) title];
          v23 = [v22 safari_isCaseAndDiacriticInsensitiveEqualToString:v17];

          if (v23)
          {
            v19 = 1;
            goto LABEL_25;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

LABEL_25:
      v4 = v26;
    }
  }

  else
  {
    v19 = 0;
  }

  [(CatalogViewController *)self _logQueryEngagement];
  v24 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [v24 userDidEngageWithCompletionListItem:v5 onActionButton:0 method:0 doesMatchSiriSuggestion:v19 voiceSearchQueryID:0];

  [(CompletionListDismissalAnalyticsReporter *)self->_completionDismissalReporter setAcceptedCompletionListItem:1];
  v25 = [v5 matchedTextForInputAnalytics];
  -[CatalogViewController _sendInputAnalyticsForItemWithMatchedText:matchType:](self, "_sendInputAnalyticsForItemWithMatchedText:matchType:", v25, [v5 matchTypeForInputAnalytics]);

  [v5 acceptCompletionWithActionHandler:self];
  [(CatalogViewController *)self _executeActionForParsecResultAtIndexPath:v4 tableView:v8 triggerEvent:2];
  [v8 deselectRowAtIndexPath:v4 animated:1];

LABEL_28:
}

- (void)_executeActionForParsecResultAtIndexPath:(id)a3 tableView:(id)a4 triggerEvent:(unint64_t)a5
{
  v16 = a3;
  v8 = a4;
  v9 = [v8 cellForRowAtIndexPath:v16];
  getSearchUITableViewCellClass();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(CatalogViewController *)self _completionItemAtIndexPath:v16];
    getSearchUIClass_0();
    if ((objc_opt_respondsToSelector() & 1) == 0 || (SearchUIClass_0 = getSearchUIClass_0(), [v11 sfSearchResultValue], v13 = objc_claimAutoreleasedReturnValue(), +[WBSParsecDSession sharedPARSession](UniversalSearchSession, "sharedPARSession"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(SearchUIClass_0) = objc_msgSend(SearchUIClass_0, "hasValidCommandForResult:feedbackListener:", v13, v14), v14, v13, SearchUIClass_0))
    {
      v15 = [v8 cellForRowAtIndexPath:v16];
      [(CatalogViewController *)self _executeActionForParsecResultTableViewCell:v15 completionItem:v11 triggerEvent:a5];
    }
  }
}

- (void)_executeActionForParsecResultTableViewCell:(id)a3 completionItem:(id)a4 triggerEvent:(unint64_t)a5
{
  v16 = a3;
  v8 = a4;
  getSearchUITableViewCellClass();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    self->_completionDetailIsPresented = 1;
    v9 = [(CatalogViewController *)self navigationBar];
    v10 = [v9 textField];

    v11 = [v10 selectedTextRange];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:v11];

    [v16 executeCommandWithTriggerEvent:a5];
    self->_completionDetailIsPresented = 0;
    v13 = [MEMORY[0x277D4A808] sharedRecorder];
    v14 = [v8 sfSearchResultValue];
    v15 = [v14 url];
    [v13 didActualizeImpressionForURL:v15 provenance:1];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(CompletionList *)self->_completionList showingRecentSearches])
  {
    v7 = [(CompletionListTableViewController *)self->_completionsViewController recentSearchesHeaderFooterView];
  }

  else
  {
    v8 = [(CompletionList *)self->_completionList headerViewReuseIdentifierForGroupAtIndex:a4];
    if (v8)
    {
      v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v8];
      if (!v7)
      {
        v7 = [(CompletionList *)self->_completionList headerViewForGroupAtIndex:a4];
      }

      [(CompletionList *)self->_completionList configureHeaderView:v7 forGroupAtIndex:a4];
    }

    else
    {
      v9 = [(CompletionList *)self->_completionList defaultSectionTitleForGroupAtIndex:a4];
      if ([v9 length])
      {
        v7 = [(CompletionListTableViewController *)self->_completionsViewController defaultHeaderFooterView];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v6 indexPathForSelectedRow];
          if ([v10 row])
          {
            v11 = 1;
          }

          else
          {
            v11 = [v10 section] != a4;
          }

          v12 = v10 == 0 || v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = [MEMORY[0x277D756E0] headerConfiguration];
        [v13 setText:v9];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke;
        v19[3] = &unk_2781DC710;
        v14 = v13;
        v23 = a4;
        v20 = v14;
        v21 = self;
        v22 = v6;
        v24 = v12 & 1;
        __58__CatalogViewController_tableView_viewForHeaderInSection___block_invoke(v19);
        [v14 setDirectionalLayoutMargins:?];
        v15 = [v14 textProperties];
        v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74420]];
        [v15 setFont:v16];

        [v15 setTransform:0];
        [v7 setContentConfiguration:v14];
        v17 = [MEMORY[0x277D49A08] isSolariumEnabled];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setShowsSeparator:(v17 ^ 1) & v12];
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (a4 || ![(CompletionList *)self->_completionList showingRecentSearches])
  {
    v17 = [(CompletionList *)self->_completionList headerViewReuseIdentifierForGroupAtIndex:a4];
    if (v17)
    {
      v16 = *MEMORY[0x277D76F30];
    }

    else
    {
      v18 = [(CompletionList *)self->_completionList defaultSectionTitleForGroupAtIndex:a4];
      if ([v18 length])
      {
        v16 = *MEMORY[0x277D76F30];
      }

      else
      {
        v19 = [MEMORY[0x277D49A08] isSolariumEnabled];
        if (a4 || !v19 || ([v6 traitCollection], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "sf_usesVibrantAppearance"), v20, v16 = 9.0, (v21 & 1) == 0))
        {
          v22 = [MEMORY[0x277D756E0] headerConfiguration];
          [v22 directionalLayoutMargins];
          v16 = v23;

          if (!a4)
          {
            v24 = [WeakRetained rootViewController];
            v25 = [v24 isUsingBottomCapsule];

            if (v25)
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
    v8 = [(CatalogViewController *)self view];
    [v8 frame];
    v10 = v9;

    v11 = +[RecentSearchesTableHeaderView clearAllAttributedString];
    [v11 boundingRectWithSize:1 options:0 context:{v10, 1.79769313e308}];
    v13 = v12;

    v14 = [WeakRetained rootViewController];
    if ([v14 isUsingBottomCapsule])
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

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v4 = [(CompletionList *)self->_completionList swipeActionsForCompletionItemAtIndexPath:a4];
  v5 = [MEMORY[0x277D75AD8] configurationWithActions:v4];
  [v5 setPerformsFirstActionWithFullSwipe:0];

  return v5;
}

- (void)_keyboardWillShow:(id)a3
{
  p_keyboardFrame = &self->_keyboardFrame;
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
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

- (void)_keyboardDidShow:(id)a3
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

- (void)_keyboardWillHide:(id)a3
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
  self->_keyboardFrame.size = v4;
  self->_hasKeyboardBeenDismissedForThisQuery = 1;
  self->_keyboardIsBeingDismissed = 1;
  v6 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  if ([v6 isDragging])
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

- (void)scrollViewDidScroll:(id)a3
{
  v16 = a3;
  [v16 contentOffset];
  v5 = v4;
  [v16 contentInset];
  if (self->_keyboardIsBeingDismissed || ((v10 = -v6, self->_lastScrollOffset != v5) ? (v11 = v5 < v10) : (v11 = 1), !v11 && (v12 = v7, [v16 contentSize], v14 = v12 + v13, objc_msgSend(v16, "bounds"), v5 <= v14 - v15)))
  {
    [v16 contentOffset];
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

- (void)search:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didSelectSearch:v4];
}

- (void)goToURLString:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didSelectAddress:v4];
}

- (void)goToURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self loadURL:v4 inExternalApplication:0 forImageAttribution:0];
}

- (void)openURLInExternalApplication:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self loadURL:v4 inExternalApplication:1 forImageAttribution:0];
}

- (void)willGoToURLFromPegasusSearchResult:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(UnifiedField *)self->_textField text];
  [WeakRetained catalogViewController:self completionItem:v4 wasAcceptedForString:v5];
}

- (void)findOnPage
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidSelectFindOnPage:self];
}

- (void)presentDetail:(id)a3
{
  self->_completionDetailIsPresented = 1;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [(CatalogViewController *)self navigationBar];
  v6 = [v5 textField];

  if ([v6 isFirstResponder])
  {
    v7 = [v6 selectedTextRange];
    [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:v7];

    [v6 resignFirstResponder];
  }

  v8 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v9 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v10 = [v9 indexPathForSelectedRow];
  [v8 deselectRowAtIndexPath:v10 animated:0];

  v11 = [[CompletionDetailViewController alloc] initWithRootViewController:v4];
  [(CompletionDetailViewController *)v11 setModalPresentationStyle:2];
  [(CompletionDetailViewController *)v11 setCompletionDetailViewControllerDelegate:WeakRetained];
  completionDetailViewController = self->_completionDetailViewController;
  self->_completionDetailViewController = &v11->super.super;

  [(CatalogViewController *)self _presentStagedCompletionDetailViewControllerAnimated:1];
}

- (void)_presentStagedCompletionDetailViewControllerAnimated:(BOOL)a3
{
  if (self->_completionDetailViewController != self->_completionDetailViewControllerBeingPresented)
  {
    v3 = a3;
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
    [v9 presentViewController:completionDetailViewController animated:v3 completion:v11];
  }
}

void __78__CatalogViewController__presentStagedCompletionDetailViewControllerAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1040);
  *(v1 + 1040) = 0;
}

- (void)dismissCompletionDetailWindowAndResumeEditingIfNeeded:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
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
        v13 = [(PopoverCatalogViewController *)popoverCatalogViewController presentingViewController];

        if (!v13)
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

  [(CatalogViewController *)self resumeEditingIfNeeded:v4];
  self->_completionDetailIsPresented = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__CatalogViewController_dismissCompletionDetailWindowAndResumeEditingIfNeeded_completionHandler___block_invoke_2;
  v17[3] = &unk_2781D4D90;
  v18 = v6;
  v16 = v6;
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

- (void)resumeEditingIfNeeded:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained textRangeToRestoreAfterCompletionDetailIsDismissed];
  v6 = v5;
  if (v3 && v5)
  {
    v7 = [(CatalogViewController *)self navigationBar];
    v8 = [v7 textField];

    [v8 becomeFirstResponder];
    [v8 setSelectedTextRange:v6];
  }

  [WeakRetained setTextRangeToRestoreAfterCompletionDetailIsDismissed:0];
}

- (void)resumeSearchWithQuery:(id)a3
{
  v4 = a3;
  v10 = [(CatalogViewController *)self unifiedTextField];
  v5 = [v4 queryString];
  [v10 setText:v5];

  [v10 becomeFirstResponder];
  v6 = [v10 endOfDocument];
  v7 = [v10 endOfDocument];
  v8 = [v10 textRangeFromPosition:v6 toPosition:v7];
  [v10 setSelectedTextRange:v8];

  [(CompletionList *)self->_completionList didResumeSearchWithQuery:v4];
  v9 = [(CompletionListTableViewController *)self->_completionsViewController dataSource];
  [v9 updateTableViewWithCompletionList:self->_completionList animated:1 completion:0];

  [(CatalogViewController *)self _generateVisibleResultsFeedbackForEvent:0];
}

- (void)searchTextCompletionAccessoryButtonTappedForCompletionItem:(id)a3
{
  self->_lastInputWasSearchTextCompletion = 1;
  v4 = a3;
  v5 = [v4 string];
  v6 = [v5 stringByAppendingString:@" "];
  [(CatalogViewController *)self setQueryString:v6];

  [(UnifiedField *)self->_textField sendActionsForControlEvents:0x20000];
  [(UnifiedField *)self->_textField focusAndInsertCursorAtEnd];
  v7 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [v7 userDidEngageWithCompletionListItem:v4 onActionButton:0 method:0];

  self->_lastInputWasSearchTextCompletion = 0;
}

- (void)switchToTabWithUUID:(id)a3 inWindowWithUUID:(id)a4 forTabGroupWithUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained switchToTabWithUUID:v10 inWindowWithUUID:v9 forTabGroupWithUUID:v8];
}

- (void)toggleVoiceSearch
{
  v3 = [(UnifiedField *)self->_textField voiceSearchState];
  if (v3 == 2)
  {
LABEL_4:
    v6 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:&stru_2827BF158 triggerEvent:4];
    v4 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    [v4 userDidTapMicKey:{objc_msgSend(v6, "queryID")}];

    [(UnifiedField *)self->_textField setVoiceSearchState:1];

    return;
  }

  if (v3 != 1)
  {
    if (v3)
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
    v3 = [(UnifiedField *)self->_textField text];
    v4 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];
    v6 = [v5 length];

    if (v6)
    {
      if (![(CompletionList *)self->_completionList showingRecentSearches])
      {
        self->_hasPendingVoiceSearchUpdate = 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v29 = [(CompletionList *)self->_completionList numberOfGroups];
        if (v29)
        {
          v28 = WeakRetained;
          v8 = 0;
          v9 = 0;
          for (i = 0; i != v29; ++i)
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
              v20 = [(UnifiedField *)self->_textField text];
              v21 = self->_textField;
              if (v8)
              {
                if (v8 != 3)
                {
                  WeakRetained = v28;
                  if (v8 != 1)
                  {
LABEL_30:
                    v25 = [v9 matchedTextForInputAnalytics];
                    -[CatalogViewController _sendInputAnalyticsForItemWithMatchedText:matchType:](self, "_sendInputAnalyticsForItemWithMatchedText:matchType:", v25, [v9 matchTypeForInputAnalytics]);

                    v26 = [(UnifiedField *)self->_textField text];
                    [WeakRetained catalogViewController:self completionItem:v9 wasAcceptedForString:v26];

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

                  v22 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
                  v23 = objc_loadWeakRetained(&self->_browserController);
                  v24 = [v23 activeSearchEngine];
                  [v22 userTypedGoToSearch:v20 endpoint:objc_msgSend(v24 triggerEvent:"parsecSearchEndpointType") forQueryID:{1, -[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];

LABEL_29:
                  goto LABEL_30;
                }

                v22 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
                v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
                [v22 userDidEngageWithCompletionListItem:v9 onActionButton:0 method:2 doesMatchSiriSuggestion:1 voiceSearchQueryID:v23];
              }

              else
              {
                v22 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
                v23 = [(CompletionList *)self->_completionList query];
                [v22 userTypedURLDirectlyForQuery:v23 triggerEvent:1];
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

- (int64_t)_relevanceForItem:(id)a3
{
  v4 = a3;
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
        v5 = [(CatalogViewController *)self _relevanceForResult:v4];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (int64_t)_relevanceForResult:(id)a3
{
  v3 = a3;
  if ([v3 shouldAutoNavigate])
  {
    v4 = 3;
  }

  else if ([v3 isInstantAnswer])
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

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXSignposts();
  if (os_signpost_enabled(v5))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UnifiedFieldKeyboardPresentation", "", buf, 2u);
  }

  if (([v4 isEditing] & 1) == 0)
  {
    [v4 setClearingBehavior:3];
  }

  v6 = [(CatalogViewController *)self textField];
  [v6 setContextCompleter:0];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained tabController];
  v9 = [v8 activeTabDocument];

  v10 = [v9 URL];
  if (v10)
  {
    objc_initWeak(buf, self);
    v11 = [v9 contextController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__CatalogViewController_textFieldShouldBeginEditing___block_invoke;
    v13[3] = &unk_2781DC738;
    objc_copyWeak(&v14, buf);
    [v11 cachedResponseForURL:v10 completionHandler:v13];

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

- (void)textFieldDidBeginEditing:(id)a3
{
  [(CompletionList *)self->_completionList setShouldForceSuppressionOfSiriSuggestedSite:1];
  [(CatalogViewController *)self _ensureCompletionListAndParsecSession];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidBeginEditing:self];

  v11 = objc_loadWeakRetained(&self->_browserController);
  v5 = [v11 rootViewController];
  v6 = [v5 capsuleCollectionViewLayout];
  v7 = WBSIsEqual();

  v8 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v9 = [v11 tabController];
  v10 = [v9 activeTabDocument];
  [v8 searchViewAppearedBecauseOfEvent:9 isSafariReaderAvailable:objc_msgSend(v10 forQueryID:"isReaderAvailable") usesLoweredSearchBar:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID"), v7}];

  [(CompletionList *)self->_completionList unifiedFieldDidBecomeFirstResponder];
}

- (void)textFieldDidEndEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidEndEditing:self];
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [v4 sendClearInputFeedbackWithTriggerEvent:1 forQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];

  return 1;
}

- (void)_logQueryEngagement
{
  if ([(UnifiedField *)self->_textField hasSelectedQuerySuggestion])
  {
    v4 = [(UnifiedField *)self->_textField contextCompleter];
    v3 = [(UnifiedField *)self->_textField text];
    [v4 logTransactionSuccessfulForInput:v3];
  }
}

- (void)unifiedField:(id)a3 willUpdateUserTypedText:(id)a4 toText:(id)a5
{
  v7 = a5;
  if (![a4 length] && objc_msgSend(v7, "length"))
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

- (void)unifiedField:(id)a3 didEndEditingWithAddress:(id)a4
{
  v18 = a4;
  [(CompletionListDismissalAnalyticsReporter *)self->_completionDismissalReporter setUnifiedFieldContentType:0];
  if (objc_opt_respondsToSelector() & 1) != 0 && (-[CompletionItem userVisibleURLString](self->_lastTopHitMatch, "userVisibleURLString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:v18], v5, (v6))
  {
    [(CatalogViewController *)self _logTopHitWasChosen:1];
    v7 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    [v7 userDidEngageWithCompletionListItem:self->_lastTopHitMatch onActionButton:0 method:1];

    [(CatalogViewController *)self _logQueryEngagement];
    v8 = [(CompletionList *)self->_completionList query];
    v9 = [v8 queryString];
    [(CatalogViewController *)self _updatePersonalisationDataForDonation:v9 forPosition:1];

    v10 = [(CompletionItem *)self->_lastTopHitMatch matchedTextForInputAnalytics];
    v11 = [(CompletionItem *)self->_lastTopHitMatch matchTypeForInputAnalytics];
  }

  else
  {
    if (self->_lastTopHitMatch)
    {
      [(CatalogViewController *)self _logTopHitWasChosen:0];
    }

    v12 = [(UnifiedField *)self->_textField voiceSearchState]!= 0;
    v13 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
    v14 = [(CompletionList *)self->_completionList query];
    [v13 userTypedURLDirectlyForQuery:v14 triggerEvent:v12];

    v15 = [(CompletionList *)self->_completionList query];
    v16 = [v15 queryString];
    [(CatalogViewController *)self _updatePersonalisationDataForDonation:v16 forPosition:-1];

    v10 = v18;
    v11 = 1;
  }

  [(CatalogViewController *)self _sendInputAnalyticsForItemWithMatchedText:v10 matchType:v11];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didSelectAddress:v18];

  [(CatalogViewController *)self _clearParsecSearchSession];
}

- (void)unifiedField:(id)a3 didEndEditingWithSearch:(id)a4
{
  v14 = a4;
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

  v6 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v7 = objc_loadWeakRetained(&self->_browserController);
  v8 = [v7 activeSearchEngine];
  [v6 userTypedGoToSearch:v14 endpoint:objc_msgSend(v8 triggerEvent:"parsecSearchEndpointType") forQueryID:{0, -[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];

  [(CatalogViewController *)self _logQueryEngagement];
  v9 = [(CompletionList *)self->_completionList indexPathOfAsTypedSearchSuggestion];

  if (v9)
  {
    v10 = [(CompletionList *)self->_completionList indexPathOfAsTypedSearchSuggestion];
    v11 = [(CatalogViewController *)self _completionItemAtIndexPath:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 string];
      v13 = [v12 isEqualToString:v14];

      if (v13)
      {
        [WeakRetained catalogViewController:self completionItem:v11 wasAcceptedForString:v14];
      }
    }
  }

  [(CatalogViewController *)self _sendInputAnalyticsForItemWithMatchedText:v14 matchType:2];
  [WeakRetained catalogViewController:self didSelectSearch:v14];
  [(CatalogViewController *)self _clearParsecSearchSession];
}

- (void)unifiedField:(id)a3 didEndEditingWithParsecTopHit:(id)a4
{
  completionDismissalReporter = self->_completionDismissalReporter;
  v6 = a4;
  [(CompletionListDismissalAnalyticsReporter *)completionDismissalReporter setUnifiedFieldContentType:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(UnifiedField *)self->_textField text];
  [WeakRetained catalogViewController:self completionItem:v6 wasAcceptedForString:v8];

  v9 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [v9 userDidEngageWithCompletionListItem:v6 onActionButton:0 method:1];

  [(CatalogViewController *)self _logQueryEngagement];
  [(CatalogViewController *)self _clearParsecSearchSession];
  v10 = [v6 matchedTextForInputAnalytics];
  -[CatalogViewController _sendInputAnalyticsForItemWithMatchedText:matchType:](self, "_sendInputAnalyticsForItemWithMatchedText:matchType:", v10, [v6 matchTypeForInputAnalytics]);

  [v6 acceptCompletionWithActionHandler:self];
  v12 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v11 = [v12 indexPathForSelectedRow];
  [(CatalogViewController *)self _executeActionForParsecResultAtIndexPath:v11 tableView:v12 triggerEvent:1];
}

- (BOOL)unifiedField:(id)a3 shouldWaitForTopHitForText:(id)a4
{
  v5 = a4;
  if ([v5 length] && (completionList = self->_completionList) != 0)
  {
    v7 = ![(CompletionList *)completionList isTopHitReadyForString:v5];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)unifiedField:(id)a3 topHitForText:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    v6 = [(CompletionList *)self->_completionList topHitForString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)unifiedFieldVoiceSearchStateDidChange:(id)a3
{
  v4 = [a3 voiceSearchState];
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  v6 = [MEMORY[0x277D499B8] sharedLogger];
  [v6 didActivateVoiceSearchAccidentally:v5];

LABEL_6:

  [(CatalogViewController *)self _updateVoiceSearchState];
}

- (BOOL)_shouldTakeOwnershipOfCompletionsViewController
{
  if ([(UnifiedField *)self->_textField isFirstResponder]&& ![(CatalogViewController *)self _showCompletionsInPopover])
  {
    v4 = [(CompletionListTableViewController *)self->_completionsViewController parentViewController];
    if (v4 || self->_voiceSearchWasInProgress)
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
  v3 = [(UnifiedField *)self->_textField voiceSearchState];
  v4 = [MEMORY[0x277D28EB8] sharedManager];
  v5 = [v4 liveCompletionList];

  if (v3 == 2)
  {
    self->_voiceSearchWasInProgress = 0;
    self->_hasPendingVoiceSearchUpdate = 1;
    [(CatalogViewController *)self _invalidatePendingVoiceSearchTimer];
    v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__commitVoiceSearchIfNecessary selector:0 userInfo:0 repeats:0.3];
    pendingVoiceSearchTimer = self->_pendingVoiceSearchTimer;
    self->_pendingVoiceSearchTimer = v7;
  }

  else if (v3 == 1)
  {
    self->_voiceSearchWasInProgress = 1;
    if ((v5 & 1) == 0 && ![(CompletionList *)self->_completionList showingRecentSearches])
    {
      v9 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      [v9 setHidden:1];

      [(CatalogViewController *)self relinquishOwnershipOfCompletionsViewControllerFromCurrentParent];

      [(CatalogViewController *)self _showStartPageInPopover];
    }
  }

  else if (!v3 && (v5 & 1) == 0)
  {
    v6 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    [v6 setHidden:0];

    if ([(CatalogViewController *)self _shouldTakeOwnershipOfCompletionsViewController])
    {
      [(AbstractCatalogViewController *)self takeOwnershipOfCompletionsViewController];
      [(CatalogViewController *)self _updateAlternateContentViewController];
    }

    self->_voiceSearchWasInProgress = 0;
  }
}

- (void)unifiedFieldExternalSearchDidEnd:(id)a3
{
  self->_hasPendingVoiceSearchUpdate = 1;
  [(CatalogViewController *)self _invalidatePendingVoiceSearchTimer];
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__commitVoiceSearchIfNecessary selector:0 userInfo:0 repeats:0.3];
  pendingVoiceSearchTimer = self->_pendingVoiceSearchTimer;
  self->_pendingVoiceSearchTimer = v4;
}

- (void)unifiedFieldReflectedItemDidChange:(id)a3
{
  v8 = a3;
  [(CatalogViewController *)self _updateSearchFieldIcon];
  v4 = [v8 lastEditWasADeletion];
  v5 = v8;
  if ((v4 & 1) != 0 || (v6 = [v8 isResigningFirstResponder], v5 = v8, v6))
  {
    v7 = [v5 reflectedItem];
    if (!v7)
    {
      [(CatalogViewController *)self _deselectCompletionsViewControllerSelectedRow];
    }

    v5 = v8;
  }
}

- (id)_searchFieldIcon
{
  v3 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v4 = [v3 indexPathForSelectedRow];
  if (v4)
  {
    v5 = [(CatalogViewController *)self _completionItemAtIndexPath:v4];
    v6 = [v5 searchFieldIconForCompletionList:self->_completionList];
  }

  else
  {
    v7 = [(UnifiedField *)self->_textField text];
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
    v5 = [(CatalogViewController *)self _searchFieldIcon];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v4 = [WeakRetained tabBarManager];
    [v4 setCompletionItemIcon:v5];
  }
}

- (void)unifiedField:(id)a3 moveCompletionSelectionByRowOffset:(int64_t)a4
{
  v8 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [(UITableView *)v8 safari_moveSelectionByRowOffset:a4];
  v6 = [v8 indexPathForSelectedRow];
  v7 = [(CatalogViewController *)self _completionItemAtIndexPath:v6];
  [(UnifiedField *)self->_textField setReflectedItem:v7];
}

- (void)unifiedField:(id)a3 moveCompletionSelectionBySectionOffset:(int64_t)a4
{
  v8 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  [(UITableView *)v8 safari_moveSelectionBySectionOffset:a4];
  v6 = [v8 indexPathForSelectedRow];
  v7 = [(CatalogViewController *)self _completionItemAtIndexPath:v6];
  [(UnifiedField *)self->_textField setReflectedItem:v7];
}

- (void)unifiedFieldSelectCompletionItemIfAvailable:(id)a3
{
  v4 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
  v5 = [v4 indexPathForSelectedRow];

  if (v5)
  {
    [(CatalogViewController *)self _selectedCompletionItemAtIndexPath:v5];
  }

  else
  {
    [(UnifiedField *)self->_textField sendActionsForControlEvents:0x80000];
  }
}

- (void)unifiedField:(id)a3 focusNextKeyView:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self focusNextKeyView:v4];
}

- (BOOL)unifiedFieldCanBecomeFirstResponder:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained catalogViewControllerUnifiedFieldCanBecomeFirstResponder:v3];

  return v3;
}

- (void)unifiedFieldMakeWindowKey:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerMakeWindowKey:self];
}

- (void)unifiedField:(id)a3 pasteAndNavigateWithText:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self didPasteText:v5];
}

- (void)unifiedField:(id)a3 didEngageWithQuerySuggestion:(id)a4 forQueryString:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v10 = objc_alloc(MEMORY[0x277D4C680]);
  v11 = MEMORY[0x277D4C5D8];
  v18 = v7;
  v12 = v8;
  v13 = [v11 alloc];
  v14 = [v18 topicId];
  v15 = [v18 title];

  v16 = [v13 initWithIdentifier:v14 suggestion:v15 query:v12 score:2 type:0.0];
  v17 = [v10 initWithSuggestion:v16];
  [v9 postFeedback:v17 forQueryID:{-[CatalogViewController _completionListQueryID](self, "_completionListQueryID")}];
}

- (BOOL)shouldPutMetadataOnPasteboardForUnifiedField:(id)a3
{
  v4 = [(UnifiedField *)self->_textField text];
  if (-[UnifiedField selectionRange](self->_textField, "selectionRange") || v5 != [v4 length])
  {
    v11 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBC0] safari_URLWithUserTypedString:v4];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v8 = [WeakRetained tabController];
    v9 = [v8 activeTabDocument];
    v10 = [v9 urlForSharing];

    v11 = [v6 safari_isEqualToURL:v10];
  }

  return v11;
}

- (id)currentMetadataForUnifiedField:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 activeTabDocument];
  v6 = [v5 linkMetadataForSharing];

  return v6;
}

- (void)showUniversalSearchFirstTimeExperienceIfNotShowing
{
  if (![(CatalogViewController *)self isShowingUniversalSearchFirstTimeExperience])
  {
    v3 = +[(WBSParsecDSession *)UniversalSearchSession];
    v4 = [v3 bag];
    v5 = [v4 firstUseDescriptionText];
    v6 = [v5 length];

    if (v6)
    {
      v7 = objc_alloc_init(UniversalSearchFirstTimeExperienceViewController);
      [(UniversalSearchFirstTimeExperienceViewController *)v7 setDelegate:self];
      [(CatalogViewController *)self requiredContentWidth];
      [(UniversalSearchFirstTimeExperienceViewController *)v7 setPreferredContentSize:?];
      v8 = [(UniversalSearchFirstTimeExperienceViewController *)v7 view];
      [v8 setAccessibilityIdentifier:@"UniversalSearchFirstTimeExperienceView"];

      universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;
      self->_universalSearchFirstTimeExperienceViewController = v7;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      LOBYTE(v8) = [WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self];

      if (v8)
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
    v3 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
    v4 = [v3 superview];

    if (v4)
    {
      v31 = [MEMORY[0x277D75390] searchConfiguration];
      [v31 setText:0];
      v5 = _WBSLocalizedString();
      [v31 setSecondaryText:v5];

      v6 = [objc_alloc(MEMORY[0x277D753A8]) initWithConfiguration:v31];
      v7 = [MEMORY[0x277D75348] systemBackgroundColor];
      [(UIContentUnavailableView *)v6 setBackgroundColor:v7];

      [(UIContentUnavailableView *)v6 setUserInteractionEnabled:0];
      [(UIContentUnavailableView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      noRecentSearchesView = self->_noRecentSearchesView;
      self->_noRecentSearchesView = v6;
      v30 = v6;

      v9 = [(CatalogViewController *)self view];
      [v9 addSubview:self->_noRecentSearchesView];

      v10 = [(CatalogViewController *)self view];
      [v10 setAccessibilityIdentifier:@"Recent Searches"];

      v11 = [(UIContentUnavailableView *)self->_noRecentSearchesView topAnchor];
      v12 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      v13 = [v12 topAnchor];
      [(CatalogViewController *)self navigationBarHeight];
      v15 = v14;
      v16 = [(SFStartPageViewController *)self->_startPageViewController view];
      v17 = [v16 window];
      v18 = [v17 windowScene];
      v19 = [v18 statusBarManager];
      [v19 statusBarFrame];
      v21 = [v11 constraintEqualToAnchor:v13 constant:v15 + v20];
      [v21 setActive:1];

      v22 = [(UIContentUnavailableView *)self->_noRecentSearchesView widthAnchor];
      v23 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      v24 = [v23 widthAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      [v25 setActive:1];

      v26 = [(CompletionListTableViewController *)self->_completionsViewController tableView];
      v27 = [v26 bottomAnchor];
      v28 = [(UIContentUnavailableView *)self->_noRecentSearchesView bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:self->_keyboardFrame.size.height];
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

- (void)didInteractWithUniversalSearchFirstTimeExperienceViewController:(id)a3
{
  v4 = a3;
  [objc_opt_class() userDidInteractWithParsecFirstTimeUserExperience];
  [(CatalogViewController *)self _dismissUniversalSearchFirstTimeExperience:v4 dismissalReason:0];
}

- (void)_dismissUniversalSearchFirstTimeExperience:(id)a3 dismissalReason:(int64_t)a4 completionHandler:(id)a5
{
  v14 = a5;
  v7 = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController presentedViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![WeakRetained catalogViewControllerShouldUsePopoverForCompletions:self])
  {

    goto LABEL_6;
  }

  usesPopoverStyleForFavorites = self->_usesPopoverStyleForFavorites;

  if (usesPopoverStyleForFavorites)
  {
LABEL_6:
    if (a4 == 1)
    {
      [(CatalogViewController *)self _dismissPopoverAnimated:0 dismissalReason:1 completionHandler:0];
    }

    [(CatalogViewController *)self relinquishOwnershipOfUniversalSearchFirstTimeExperienceViewControllerFromCurrentParent];
    goto LABEL_9;
  }

  if (a4 == 2)
  {
    v10 = self;
    v11 = 0;
    v12 = 2;
LABEL_13:
    [(CatalogViewController *)v10 _dismissPopoverAnimated:v11 dismissalReason:v12 completionHandler:v14];
    goto LABEL_14;
  }

  if (([(UnifiedField *)self->_textField hasText]& 1) == 0)
  {
    v10 = self;
    v11 = 1;
    v12 = a4;
    goto LABEL_13;
  }

LABEL_9:
  if (v14)
  {
    v14[2]();
  }

LABEL_14:
  [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController setDelegate:0];
  universalSearchFirstTimeExperienceViewController = self->_universalSearchFirstTimeExperienceViewController;
  self->_universalSearchFirstTimeExperienceViewController = 0;
}

- (BOOL)isShowingUniversalSearchPrivacyDetails
{
  v2 = [(UniversalSearchFirstTimeExperienceViewController *)self->_universalSearchFirstTimeExperienceViewController presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)_updatePersonalisationDataForDonation:(id)a3 forPosition:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained tabController];
  v11 = [v8 activeTabDocument];

  v9 = [v11 personalizationData];
  [v9 setSearchQuery:v6];

  v10 = [v11 personalizationData];
  [v10 setPosition:a4];
}

- (CGRect)snapshotContentRectInBounds:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v6 = [(SFStartPageViewController *)self->_startPageViewController view];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  left = self->_obscuredInsets.left;
  v16 = left + self->_obscuredInsets.right;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size = a3.size;
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
  v22 = CGRectGetWidth(a3) + v18 * v19;
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

- (void)beginTransitionToNewSizeClassWithState:(id)a3
{
  self->_transitioningToNewSizeClass = 1;
  v4 = a3;
  v5 = [(CatalogViewController *)self queryString];
  [v4 setQueryString:v5];

  [v4 setShowingCompletions:{-[CatalogViewController isShowingCompletions](self, "isShowingCompletions")}];
  [v4 setShowingUniversalFirstTimeExperience:{-[CatalogViewController isShowingUniversalSearchFirstTimeExperience](self, "isShowingUniversalSearchFirstTimeExperience")}];
  [v4 setCompletionDetailViewController:self->_completionDetailViewController];
  v6 = [(UnifiedField *)self->_textField text];
  [v4 setFieldIsEmpty:{objc_msgSend(v6, "length") == 0}];

  completionDetailViewController = self->_completionDetailViewController;
  if (completionDetailViewController)
  {
    v8 = [(UIViewController *)completionDetailViewController presentedViewController];
    [v8 dismissViewControllerAnimated:0 completion:0];

    [(UIViewController *)self->_completionDetailViewController dismissViewControllerAnimated:0 completion:0];
    v9 = self->_completionDetailViewController;
    self->_completionDetailViewController = 0;
  }
}

- (void)endTransitionToNewSizeClassWithState:(id)a3
{
  v6 = a3;
  self->_transitioningToNewSizeClass = 0;
  [(PopoverCatalogViewController *)self->_popoverCatalogViewController resetStartPagePreferredHeight];
  if ([v6 isShowingCompletions])
  {
    v4 = [v6 queryString];
    [(CatalogViewController *)self setQueryString:v4];

    [(CatalogViewController *)self _reloadCompletionTable];
  }

  else if ([v6 isShowingUniversalFirstTimeExperience])
  {
    [(CatalogViewController *)self showUniversalSearchFirstTimeExperienceIfNotShowing];
  }

  if ([v6 fieldIsEmpty])
  {
    [(UnifiedField *)self->_textField setText:0];
  }

  v5 = [v6 completionDetailViewController];
  if ([(CatalogViewController *)self _shouldPresentCompletionDetailViewControllerAfterSizeTransition:v5])
  {
    objc_storeStrong(&self->_completionDetailViewController, v5);
    [(CatalogViewController *)self _presentStagedCompletionDetailViewControllerAnimated:0];
    self->_completionDetailIsPresented = 1;
  }
}

- (BOOL)_shouldPresentCompletionDetailViewControllerAfterSizeTransition:(id)a3
{
  if (a3)
  {
    return [a3 isBeingDismissed] ^ 1;
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
    v10 = [(StartPageController *)self->_startPageController viewController];
    [v9 setOpaqueBackgroundVisibility:{(objc_msgSend(v10, "showsWallpaper") ^ 1)}];

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

- (id)startPageViewControllerTitleForRootView:(id)a3
{
  v3 = [(StartPageController *)self->_startPageController libraryType];
  v4 = v3;
  if (v3)
  {
    v5 = startPageTitleForCollectionType(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)startPageViewController:(id)a3 leadingBarItemsForSection:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained sidebarUIProxy];
  if ((![MEMORY[0x277D49A08] isSolariumEnabled] || !objc_msgSend(v6, "isShowingSidebar") || objc_msgSend(v6, "sidebarStyle")) && !self->_usesPopoverStyleForFavorites)
  {
    v7 = [WeakRetained tabBarManager];
    if ([v7 displayMode])
    {
      v8 = [(StartPageController *)self->_startPageController libraryType];

      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x277D751E0]);
        v10 = [(CatalogViewController *)self sidebarButton];
        v11 = [v9 initWithCustomView:v10];

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

- (id)startPageViewController:(id)a3 trailingBarItemsForSection:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = WeakRetained;
  if (self->_usesPopoverStyleForFavorites)
  {
    goto LABEL_3;
  }

  v7 = [WeakRetained tabBarManager];
  v8 = [v7 displayMode];

  if (v8)
  {
    goto LABEL_3;
  }

  v11 = [v6 tabController];
  v12 = [v11 activeTabDocument];
  if ([v12 isBlank] && !objc_msgSend(v6, "isFavoritesFieldFocused"))
  {
    v16 = [(UnifiedField *)self->_textField superview];

    if (!v16)
    {
LABEL_3:
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_4;
    }
  }

  else
  {
  }

  v13 = [v6 rootViewController];
  v14 = [v13 capsuleCollectionViewLayout];

  if (v14 && [v14 integerValue] == 2 || (objc_msgSend(MEMORY[0x277D49A08], "isSolariumEnabled") & 1) != 0)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v15 = [(CatalogViewController *)self _cancelBarButtonItem];
    v17[0] = v15;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

LABEL_4:

  return v9;
}

- (void)startPageViewControllerDidScroll:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (!-[CatalogViewController isShowingCompletions](self, "isShowingCompletions") && [v10 showsWallpaper])
  {
    [v10 scrollDistance];
    SFChromeVisibilityForScrollDistance();
    v7 = v6;
    v8 = [(UIBarButtonItem *)self->_cancelBarButton customView];
    [v8 setOpaqueBackgroundVisibility:v7];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerDidScroll:self animated:v4];
}

- (void)startPageControllerDidCompleteDismissGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissCatalogViewController:self];
}

- (void)startPageControllerDidCompleteUnfocusGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewControllerWillUnfocusUnifiedField:self showingRecentSearches:{-[CompletionList showingRecentSearches](self->_completionList, "showingRecentSearches")}];
  v4 = [(CatalogViewController *)self textField];
  [v4 endEditing:1];
}

- (void)startPageViewController:(id)a3 willPresentCustomizationViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained catalogViewController:self willPresentCustomizationViewController:v5];
}

- (BOOL)startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 activeTabDocument];
  v6 = [v5 isBlank];

  return v6 ^ 1;
}

- (double)startPageViewControllerTopPadding:(id)a3
{
  v4 = 0.0;
  if (![(StartPageController *)self->_startPageController shouldShowOnboardingSection])
  {
    v5 = [(StartPageController *)self->_startPageController libraryType];

    if (!v5)
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

- (void)startPageViewControllerDidUpdateContent:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained setNeedsSnapshotUpdateForActiveTabIfTabIsBlank];
}

- (void)startPageViewControllerDidAppear:(id)a3
{
  if (!self->_startPageDidAppearAtLeastOnce)
  {
    self->_startPageDidAppearAtLeastOnce = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained catalogViewControllerDidAppear:self];
  }
}

- (void)beginExtensionsOnboardingForStartPageViewController:(id)a3
{
  v4 = MEMORY[0x277D28CB8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained tabController];
  v7 = [v6 activeTabDocument];
  v10 = [v4 createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:v7];

  v8 = [v10 topViewController];
  v9 = _WBSLocalizedString();
  [v8 setTitle:v9];

  [(CatalogViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_sendInputAnalyticsForItemWithMatchedText:(id)a3 matchType:(int64_t)a4
{
  v24[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CompletionList *)self->_completionList query];
  v8 = [v7 queryString];

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
  if (v8)
  {
    v13 = v8;
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
  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = &stru_2827BF158;
  }

  v24[2] = v15;
  v23[2] = @"MatchedText";
  v23[3] = @"MatchType";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v24[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  [v10 sendSignal:@"SearchEntered" toChannel:@"Safari" withPayload:v17];
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [objc_alloc(MEMORY[0x277D28C18]) initWithPresentedViewController:v8 presentingViewController:v7];

  [v10 setDelegate:self];
  [(CatalogViewController *)self requiredContentWidth];
  [v10 setPreferredPresentedViewContentSize:?];
  v11 = [WeakRetained tabBarManager];
  v12 = [v11 inlineTabBar];
  v13 = [v12 activeItemView];
  [v10 setBarItemView:v13];

  [v10 setCommandPerformer:WeakRetained];
  objc_storeStrong(&self->_platterPresentationController, v10);

  return v10;
}

- (void)animateTransition:(id)a3
{
  v3 = a3;
  v4 = [v3 viewForKey:*MEMORY[0x277D77248]];
  v5 = [v3 containerView];
  [v5 addSubview:v4];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CatalogViewController_animateTransition___block_invoke;
  aBlock[3] = &unk_2781D4D40;
  v16 = v4;
  v6 = v4;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x277D75D18];
  v12 = v3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__CatalogViewController_animateTransition___block_invoke_2;
  v13[3] = &unk_2781D4D90;
  v14 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__CatalogViewController_animateTransition___block_invoke_3;
  v11[3] = &unk_2781D4B18;
  v9 = v3;
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