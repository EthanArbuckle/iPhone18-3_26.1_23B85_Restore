@interface PXPhotosViewModel
- (BOOL)attemptSetInSelectMode:(BOOL)mode;
- (BOOL)canEnterSelectMode;
- (BOOL)canFilterContent;
- (BOOL)canSwipeSelect;
- (BOOL)contentStartsAtEnd;
- (BOOL)handlePrimaryAction:(id)action;
- (BOOL)initializePreviewHeaderVisibilityWithChangeHandler:(id)handler;
- (BOOL)isScrollDisabledForAxis:(int64_t)axis;
- (BOOL)selectionManagerShouldAvoidEmptySelection:(id)selection;
- (BOOL)shouldAspectFitContentByDefault;
- (BOOL)supportsTogglingSortOrder;
- (BOOL)supportsZooming;
- (BOOL)wantsSelectButton;
- (NSDirectionalEdgeInsets)navigationBarBottomPaletteDirectionalLayoutMargins;
- (NSString)debugDescription;
- (PXAssetReference)firstSelectedAssetReference;
- (PXAssetReference)singleSelectedAssetReference;
- (PXFooterViewModel)footerViewModel;
- (PXGDisplayAssetPixelBufferSourcesProvider)inlinePlaybackController;
- (PXPhotosPreferredAssetCropDelegate)preferredAssetCropDelegate;
- (PXPhotosPreferredColumnCountsDelegate)preferredColumnCountsDelegate;
- (PXPhotosViewDelegate)viewDelegate;
- (PXPhotosViewModel)init;
- (PXPhotosViewModel)initWithConfiguration:(id)configuration specManager:(id)manager inlinePlaybackController:(id)controller;
- (UIEdgeInsets)additionalAspectFitEdgeMargins;
- (UIEdgeInsets)contentBackgroundInsets;
- (_NSRange)yearsMonthsZoomStepRange;
- (id)_indexPathsForAssetCollectionReference:(id)reference;
- (id)customExcludedActionTypesProvider;
- (id)objc_customExcludedActionTypesProvider;
- (id)selectionManager:(id)manager validateSnapshot:(id)snapshot;
- (int64_t)selectionContext;
- (void)_invalidateAspectFitContent;
- (void)_invalidateAssetsDataSourceManager;
- (void)_invalidateAvailableLenses;
- (void)_invalidateChromeVisibility;
- (void)_invalidateContainerFallbackTitle;
- (void)_invalidateContainerTitle;
- (void)_invalidateContentPrivacyState;
- (void)_invalidateCurrentLens;
- (void)_invalidateDraggedAssetReferences;
- (void)_invalidateEmptyPlaceholderState;
- (void)_invalidateFooterVisibility;
- (void)_invalidateGridAppearance;
- (void)_invalidateSystemAuthenticationType;
- (void)_invalidateTopBarsStyles;
- (void)_invalidateUserWantsAspectFitContent;
- (void)_invalidateWantsContentUnavailableUnlockButtonVisible;
- (void)_invalidateWantsLensControlVisible;
- (void)_updateAspectFitContent;
- (void)_updateAssetsDataSourceManager;
- (void)_updateAvailableLenses;
- (void)_updateChromeVisibility;
- (void)_updateContainerFallbackTitle;
- (void)_updateContainerTitle;
- (void)_updateContentPrivacyState;
- (void)_updateCurrentLens;
- (void)_updateDataSourceDependentProperties;
- (void)_updateDraggedAssetReferences;
- (void)_updateEmptyPlaceholderState;
- (void)_updateFooterVisibility;
- (void)_updateGridAppearance;
- (void)_updateSystemAuthenticationType;
- (void)_updateTopBarsStyles;
- (void)_updateUserWantsAspectFitContent;
- (void)_updateWantsContentUnavailableUnlockButtonVisible;
- (void)_updateWantsLensControlVisible;
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching;
- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)source;
- (void)clickSelectAssetReference:(id)reference updateCursorIndexPath:(BOOL)path;
- (void)clickSelectIndexPath:(PXSimpleIndexPath *)path updateCursorIndexPath:(BOOL)indexPath;
- (void)deselectAll;
- (void)didPerformChanges;
- (void)markContentAsViewed;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)previewHeaderVisibilityChanged:(BOOL)changed;
- (void)requestCloseFromPresentationEnvironment:(id)environment handler:(id)handler;
- (void)resetToInitialSelectionAndFilteringState;
- (void)selectAll;
- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)margins;
- (void)setAllowedChromeItems:(unint64_t)items;
- (void)setAllowsEmptyPlaceholderBehavior:(BOOL)behavior;
- (void)setAllowsPreviewHeader:(BOOL)header;
- (void)setAllowsSearch:(BOOL)search;
- (void)setAllowsShareAllAction:(BOOL)action;
- (void)setAllowsSortAndFilterMenu:(BOOL)menu;
- (void)setAlwaysRequiresLightChrome:(BOOL)chrome;
- (void)setAppearState:(int64_t)state;
- (void)setAspectFitContent:(BOOL)content;
- (void)setAspectRatioToggleAllowed:(BOOL)allowed forReason:(id)reason;
- (void)setAvailableLenses:(id)lenses;
- (void)setCaptionsVisible:(BOOL)visible;
- (void)setChromeItemsToBeConsideredVisibleForLayoutPurpose:(unint64_t)purpose;
- (void)setChromeOpacity:(double)opacity;
- (void)setChromeTitleFloatingFraction:(double)fraction;
- (void)setContainerFallbackTitle:(id)title;
- (void)setContainerTitle:(id)title;
- (void)setContentBackgroundInsets:(UIEdgeInsets)insets;
- (void)setContentBackgroundOpacity:(double)opacity;
- (void)setContentBelowTitle:(BOOL)title;
- (void)setContentPrivacyState:(int64_t)state;
- (void)setCplActionManagerClass:(Class)class;
- (void)setCurrentDataSource:(id)source;
- (void)setCurrentLens:(id)lens;
- (void)setCustomBannerView:(id)view;
- (void)setCustomExcludedActionTypesProvider:(id)provider;
- (void)setCustomLeadingAccessoryBarButtonItems:(id)items;
- (void)setCustomLeadingAccessoryView:(id)view;
- (void)setCustomTrailingAccessoryBarButtonItems:(id)items;
- (void)setCustomTrailingAccessoryView:(id)view;
- (void)setDesiredCurationLength:(int64_t)length;
- (void)setDismissRequested:(BOOL)requested;
- (void)setDraggedAssetReferences:(id)references;
- (void)setDropTargetAssetReference:(id)reference;
- (void)setEffectProvider:(id)provider;
- (void)setEmptyPlaceholderState:(int64_t)state;
- (void)setEnterSelectModeAllowed:(BOOL)allowed forReason:(id)reason;
- (void)setFaceModeEnabled:(BOOL)enabled;
- (void)setFilterState:(id)state;
- (void)setFloatingTitleOpacity:(double)opacity;
- (void)setFooterHasImportantInformation:(BOOL)information;
- (void)setFooterVisibilityStyle:(int64_t)style;
- (void)setHasScrollableContent:(BOOL)content;
- (void)setHeaderFloatingThresholdOffset:(double)offset;
- (void)setHeaderSubtitle:(id)subtitle;
- (void)setHeaderTitle:(id)title;
- (void)setHeaderTitleTopInset:(double)inset;
- (void)setHideSurroundingContent:(BOOL)content forReason:(id)reason;
- (void)setHidesDurationLabelBadge:(BOOL)badge;
- (void)setHidesNavbar:(BOOL)navbar;
- (void)setHidesToolbar:(BOOL)toolbar;
- (void)setIsAppearing:(BOOL)appearing;
- (void)setIsInCompactMode:(BOOL)mode;
- (void)setIsInSelectMode:(BOOL)mode;
- (void)setIsInteractiveZooming:(BOOL)zooming;
- (void)setLastPreferredScrollDetent:(id)detent;
- (void)setLastTargetPreferredScrollDetent:(id)detent;
- (void)setModalInPresentation:(BOOL)presentation forReason:(id)reason;
- (void)setNavigationBarBottomPaletteContentView:(id)view;
- (void)setNavigationBarBottomPaletteDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setNoContentPlaceholderFallbackMessage:(id)message;
- (void)setNoContentPlaceholderFallbackTitle:(id)title;
- (void)setNumberOfZoomSteps:(int64_t)steps;
- (void)setOneUpPresentationAllowed:(BOOL)allowed forReason:(id)reason;
- (void)setRequiresLightTopBars:(BOOL)bars;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setScrollDisabled:(BOOL)disabled axis:(int64_t)axis forReason:(id)reason;
- (void)setScrolledToBottom:(BOOL)bottom;
- (void)setScrolledToTop:(BOOL)top;
- (void)setSearch_overriddenAllAssetsCount:(id)count;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)preference;
- (void)setShouldAnimateZooming:(BOOL)zooming;
- (void)setShowLoadingPlaceholderWhenEmpty:(BOOL)empty;
- (void)setShowingAlternateContent:(BOOL)content;
- (void)setSupportsAspectRatioToggle:(BOOL)toggle;
- (void)setSystemAuthenticationType:(int64_t)type;
- (void)setTapbackStatusManager:(id)manager;
- (void)setTitle:(id)title;
- (void)setTitleBackgroundOpacity:(double)opacity;
- (void)setTopDismissAreaHeight:(id)height;
- (void)setUserWantsAspectFitContent:(id)content;
- (void)setViewBasedDecorationsEnabled:(BOOL)enabled;
- (void)setViewDelegate:(id)delegate;
- (void)setWantsContentFilterVisible:(BOOL)visible;
- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)visible;
- (void)setWantsFooterVisible:(BOOL)visible;
- (void)setWantsImmediateBarsUpdate:(BOOL)update;
- (void)setWantsLensControlVisible:(BOOL)visible;
- (void)setWantsManualNavigationBottomBarPaletteControl:(BOOL)control;
- (void)setWantsNavbarVisible:(BOOL)visible;
- (void)setWantsPinchEffect:(BOOL)effect;
- (void)setWantsTabBarVisible:(BOOL)visible;
- (void)setWantsToolbarVisible:(BOOL)visible;
- (void)setYearsMonthsZoomStepRange:(_NSRange)range;
- (void)setZoomAnchorAssetReference:(id)reference;
- (void)setZoomStep:(double)step;
- (void)setZoomStep:(double)step isInteractive:(BOOL)interactive shouldAnimate:(BOOL)animate anchorAssetReference:(id)reference;
- (void)swift_actionMenuVisibilityChangedToVisible:(BOOL)visible;
- (void)swift_didPerformChanges;
- (void)swift_initWithConfiguration:(id)configuration;
- (void)toggleSelectionForAssetCollectionReference:(id)reference;
- (void)toggleSelectionForAssetReference:(id)reference updateCursorIndexPath:(BOOL)path;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path updateCursorIndexPath:(BOOL)indexPath;
@end

@implementation PXPhotosViewModel

- (void)swift_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21AC0690C(configurationCopy);
}

- (void)swift_didPerformChanges
{
  selfCopy = self;
  sub_21AC070EC();
}

- (BOOL)initializePreviewHeaderVisibilityWithChangeHandler:(id)handler
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  v7 = sub_21AC07138();

  return v7 & 1;
}

- (BOOL)supportsTogglingSortOrder
{
  selfCopy = self;
  v3 = sub_21AC07464();

  return v3 & 1;
}

- (BOOL)supportsZooming
{
  selfCopy = self;
  v3 = sub_21AC074D4();

  return v3;
}

- (id)objc_customExcludedActionTypesProvider
{
  selfCopy = self;
  sub_21AC07620();
  v4 = v3;

  v7[4] = sub_21AC0D6BC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21AC07688;
  v7[3] = &block_descriptor_133;
  v5 = _Block_copy(v7);

  return v5;
}

- (void)previewHeaderVisibilityChanged:(BOOL)changed
{
  selfCopy = self;
  sub_21AC07768(changed);
}

- (void)swift_actionMenuVisibilityChangedToVisible:(BOOL)visible
{
  selfCopy = self;
  sub_21AC07B08(visible);
}

- (BOOL)handlePrimaryAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = sub_21AC07C1C(actionCopy);

  return self & 1;
}

- (void)requestCloseFromPresentationEnvironment:(id)environment handler:(id)handler
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(handler);
  _Block_copy(v7);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21AC081E0(environment, selfCopy, v7);
  _Block_release(v7);

  swift_unknownObjectRelease();
}

- (id)customExcludedActionTypesProvider
{
  selfCopy = self;
  v3 = PXPhotosViewModel.customExcludedActionTypesProvider.getter();
  v5 = v4;

  v8[4] = v3;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21AC07688;
  v8[3] = &block_descriptor_102;
  v6 = _Block_copy(v8);

  return v6;
}

- (void)setCustomExcludedActionTypesProvider:(id)provider
{
  v4 = _Block_copy(provider);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_21AC092C0();
}

- (PXGDisplayAssetPixelBufferSourcesProvider)inlinePlaybackController
{
  WeakRetained = objc_loadWeakRetained(&self->_inlinePlaybackController);

  return WeakRetained;
}

- (PXPhotosViewDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)navigationBarBottomPaletteDirectionalLayoutMargins
{
  top = self->_navigationBarBottomPaletteDirectionalLayoutMargins.top;
  leading = self->_navigationBarBottomPaletteDirectionalLayoutMargins.leading;
  bottom = self->_navigationBarBottomPaletteDirectionalLayoutMargins.bottom;
  trailing = self->_navigationBarBottomPaletteDirectionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentBackgroundInsets
{
  top = self->_contentBackgroundInsets.top;
  left = self->_contentBackgroundInsets.left;
  bottom = self->_contentBackgroundInsets.bottom;
  right = self->_contentBackgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_NSRange)yearsMonthsZoomStepRange
{
  p_yearsMonthsZoomStepRange = &self->_yearsMonthsZoomStepRange;
  location = self->_yearsMonthsZoomStepRange.location;
  length = p_yearsMonthsZoomStepRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (PXPhotosPreferredColumnCountsDelegate)preferredColumnCountsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredColumnCountsDelegate);

  return WeakRetained;
}

- (PXPhotosPreferredAssetCropDelegate)preferredAssetCropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredAssetCropDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)additionalAspectFitEdgeMargins
{
  top = self->_additionalAspectFitEdgeMargins.top;
  left = self->_additionalAspectFitEdgeMargins.left;
  bottom = self->_additionalAspectFitEdgeMargins.bottom;
  right = self->_additionalAspectFitEdgeMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)selectionManagerShouldAvoidEmptySelection:(id)selection
{
  if ([(PXPhotosViewModel *)self isInSelectMode])
  {
    return 0;
  }

  else
  {
    return ![(PXPhotosViewModel *)self wantsDimmedSelectionStyle];
  }
}

- (id)selectionManager:(id)manager validateSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6 = snapshotCopy;
  if ([(PXPhotosViewModel *)self viewDelegateRespondsTo:0x100000])
  {
    viewDelegate = [(PXPhotosViewModel *)self viewDelegate];
    v6 = [viewDelegate photosViewController:0 validateSelectionSnapshot:snapshotCopy];
  }

  return v6;
}

- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)source
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__PXPhotosViewModel_assetsDataSourceManagerDidFinishLoadingInitialDataSource___block_invoke;
  v3[3] = &unk_278298E60;
  v3[4] = self;
  [(PXPhotosViewModel *)self performChanges:v3];
}

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__PXPhotosViewModel_assetsDataSourceManagerDidFinishBackgroundFetching___block_invoke;
  v3[3] = &unk_278298E60;
  v3[4] = self;
  [(PXPhotosViewModel *)self performChanges:v3];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (DataSourceManagerObservationContext == context || SelectionManagerObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = observableCopy;
    [(PXPhotosViewModel *)self _updateDataSourceDependentProperties];
    goto LABEL_13;
  }

  if (ViewModelHelperObservationContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel.m" lineNumber:1950 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = observableCopy;
  if ((changeCopy & 1) == 0)
  {
    if ((changeCopy & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    [(PXPhotosViewModel *)self performChanges:&__block_literal_global_147];
    observableCopy = v11;
    if ((changeCopy & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [(PXPhotosViewModel *)self performChanges:&__block_literal_global_145];
  observableCopy = v11;
  if ((changeCopy & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((changeCopy & 4) != 0)
  {
LABEL_12:
    [(PXPhotosViewModel *)self performChanges:&__block_literal_global_149];
LABEL_13:
    observableCopy = v11;
  }

LABEL_14:
}

void __50__PXPhotosViewModel_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _invalidateSystemAuthenticationType];
  [v2 _invalidateWantsContentUnavailableUnlockButtonVisible];
}

void __50__PXPhotosViewModel_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateContentPrivacyState];
  [v2 _invalidateEmptyPlaceholderState];
  [v2 _invalidateChromeVisibility];
  [v2 _invalidateWantsLensControlVisible];
}

- (void)setViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_viewDelegate, delegateCopy);
  self->_viewDelegateRespondsTo = 0;
  self->_viewDelegateRespondsTo |= objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();
  v6 = 2;
  if ((v5 & 1) == 0)
  {
    v6 = 0;
  }

  self->_viewDelegateRespondsTo |= v6;
  v7 = objc_opt_respondsToSelector();
  v8 = 0x8000;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
  }

  self->_viewDelegateRespondsTo |= v8;
  v9 = objc_opt_respondsToSelector();
  v10 = 4;
  if ((v9 & 1) == 0)
  {
    v10 = 0;
  }

  self->_viewDelegateRespondsTo |= v10;
  v11 = objc_opt_respondsToSelector();
  v12 = 8;
  if ((v11 & 1) == 0)
  {
    v12 = 0;
  }

  self->_viewDelegateRespondsTo |= v12;
  v13 = objc_opt_respondsToSelector();
  v14 = 16;
  if ((v13 & 1) == 0)
  {
    v14 = 0;
  }

  self->_viewDelegateRespondsTo |= v14;
  v15 = objc_opt_respondsToSelector();
  v16 = 4096;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  self->_viewDelegateRespondsTo |= v16;
  v17 = objc_opt_respondsToSelector();
  v18 = 0x2000;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  self->_viewDelegateRespondsTo |= v18;
  v19 = objc_opt_respondsToSelector();
  v20 = 0x10000;
  if ((v19 & 1) == 0)
  {
    v20 = 0;
  }

  self->_viewDelegateRespondsTo |= v20;
  v21 = objc_opt_respondsToSelector();
  v22 = 0x4000;
  if ((v21 & 1) == 0)
  {
    v22 = 0;
  }

  self->_viewDelegateRespondsTo |= v22;
  v23 = objc_opt_respondsToSelector();
  v24 = 32;
  if ((v23 & 1) == 0)
  {
    v24 = 0;
  }

  self->_viewDelegateRespondsTo |= v24;
  v25 = objc_opt_respondsToSelector();
  v26 = 0x100000;
  if ((v25 & 1) == 0)
  {
    v26 = 0;
  }

  self->_viewDelegateRespondsTo |= v26;
  v27 = objc_opt_respondsToSelector();
  v28 = 64;
  if ((v27 & 1) == 0)
  {
    v28 = 0;
  }

  self->_viewDelegateRespondsTo |= v28;
  v29 = objc_opt_respondsToSelector();
  v30 = 128;
  if ((v29 & 1) == 0)
  {
    v30 = 0;
  }

  self->_viewDelegateRespondsTo |= v30;
  v31 = objc_opt_respondsToSelector();
  v32 = 256;
  if ((v31 & 1) == 0)
  {
    v32 = 0;
  }

  self->_viewDelegateRespondsTo |= v32;
  v33 = objc_opt_respondsToSelector();
  v34 = 512;
  if ((v33 & 1) == 0)
  {
    v34 = 0;
  }

  self->_viewDelegateRespondsTo |= v34;
  v35 = objc_opt_respondsToSelector();
  v36 = 1024;
  if ((v35 & 1) == 0)
  {
    v36 = 0;
  }

  self->_viewDelegateRespondsTo |= v36;
  v37 = objc_opt_respondsToSelector();
  v38 = 2048;
  if ((v37 & 1) == 0)
  {
    v38 = 0;
  }

  self->_viewDelegateRespondsTo |= v38;
  v39 = objc_opt_respondsToSelector();
  v40 = 0x20000;
  if ((v39 & 1) == 0)
  {
    v40 = 0;
  }

  self->_viewDelegateRespondsTo |= v40;
  v41 = objc_opt_respondsToSelector();
  v42 = 0x40000;
  if ((v41 & 1) == 0)
  {
    v42 = 0;
  }

  self->_viewDelegateRespondsTo |= v42;
  v43 = objc_opt_respondsToSelector();

  v44 = 0x80000;
  if ((v43 & 1) == 0)
  {
    v44 = 0;
  }

  self->_viewDelegateRespondsTo |= v44;
}

- (BOOL)contentStartsAtEnd
{
  contentStartingPosition = self->_contentStartingPosition;
  if (contentStartingPosition == 1)
  {
    return 1;
  }

  if (contentStartingPosition)
  {
    return 0;
  }

  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  startsAtEnd = [currentDataSource startsAtEnd];

  return startsAtEnd;
}

- (void)resetToInitialSelectionAndFilteringState
{
  if ([(PXPhotosViewModel *)self allowsSelectModeToggle])
  {
    [(PXPhotosViewModel *)self attemptSetInSelectMode:[(PXPhotosViewModel *)self startsInSelectMode]];
  }

  viewModelHelper = [(PXPhotosViewModel *)self viewModelHelper];
  v3 = [viewModelHelper initialFilterStateForViewModel:self];
  [(PXPhotosViewModel *)self setFilterState:v3];
}

- (void)setNoContentPlaceholderFallbackMessage:(id)message
{
  messageCopy = message;
  if (self->_noContentPlaceholderFallbackMessage != messageCopy)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_noContentPlaceholderFallbackMessage, message);
    [(PXPhotosViewModel *)self signalChange:0x8000000000000];
    messageCopy = v6;
  }
}

- (void)setNoContentPlaceholderFallbackTitle:(id)title
{
  titleCopy = title;
  if (self->_noContentPlaceholderFallbackTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_noContentPlaceholderFallbackTitle, title);
    [(PXPhotosViewModel *)self signalChange:0x8000000000000];
    titleCopy = v6;
  }
}

- (void)setEffectProvider:(id)provider
{
  aBlock = provider;
  v4 = _Block_copy(self->_effectProvider);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = _Block_copy(aBlock);
      effectProvider = self->_effectProvider;
      self->_effectProvider = v8;

      [(PXPhotosViewModel *)self signalChange:0x1000000000];
    }
  }
}

- (void)setContentBackgroundInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_contentBackgroundInsets = &self->_contentBackgroundInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_contentBackgroundInsets->top = top;
    p_contentBackgroundInsets->left = left;
    p_contentBackgroundInsets->bottom = bottom;
    p_contentBackgroundInsets->right = right;

    [(PXPhotosViewModel *)self signalChange:0x40000000000000];
  }
}

- (void)setContentBackgroundOpacity:(double)opacity
{
  if (self->_contentBackgroundOpacity != opacity)
  {
    self->_contentBackgroundOpacity = opacity;
    [(PXPhotosViewModel *)self signalChange:0x20000000000000];
  }
}

- (void)setTitleBackgroundOpacity:(double)opacity
{
  if (self->_titleBackgroundOpacity != opacity)
  {
    self->_titleBackgroundOpacity = opacity;
    [(PXPhotosViewModel *)self signalChange:0x800000000];
  }
}

- (void)setFloatingTitleOpacity:(double)opacity
{
  if (self->_floatingTitleOpacity != opacity)
  {
    self->_floatingTitleOpacity = opacity;
    self->_wantsFloatingTitle = PXFloatEqualToFloatWithTolerance() ^ 1;

    [(PXPhotosViewModel *)self signalChange:0x100000000];
  }
}

- (void)setHeaderFloatingThresholdOffset:(double)offset
{
  if (self->_headerFloatingThresholdOffset != offset)
  {
    self->_headerFloatingThresholdOffset = offset;
    [(PXPhotosViewModel *)self signalChange:0x100000000];
  }
}

- (void)setWantsPinchEffect:(BOOL)effect
{
  if (self->_wantsPinchEffect != effect)
  {
    self->_wantsPinchEffect = effect;
    [(PXPhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setReverseSortOrder:(BOOL)order
{
  orderCopy = order;
  if (![(PXPhotosViewModel *)self supportsTogglingSortOrder])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel.m" lineNumber:1764 description:@"Toggling sort order is not supported"];
  }

  if (self->_reverseSortOrder != orderCopy)
  {
    self->_reverseSortOrder = orderCopy;
    dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__PXPhotosViewModel_setReverseSortOrder___block_invoke;
    v8[3] = &__block_descriptor_33_e69_v16__0__PXAssetsDataSourceManager_PXMutableAssetsDataSourceManager__8l;
    v9 = orderCopy;
    [dataSourceManager performChanges:v8];

    [(PXPhotosViewModel *)self signalChange:0x8000000];
  }
}

- (void)setFilterState:(id)state
{
  stateCopy = state;
  if (self->_filterState != stateCopy)
  {
    v7 = stateCopy;
    if (([(PXFilterState *)stateCopy isEqual:?]& 1) == 0)
    {
      v5 = [(PXFilterState *)v7 copyWithZone:0];
      filterState = self->_filterState;
      self->_filterState = v5;

      [(PXPhotosViewModel *)self signalChange:0x2000000];
      [(PXPhotosViewModel *)self _invalidateAssetsDataSourceManager];
      [(PXPhotosViewModel *)self _invalidateWantsLensControlVisible];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCaptionsVisible:(BOOL)visible
{
  if (self->_captionsVisible != visible)
  {
    self->_captionsVisible = visible;
    [(PXPhotosViewModel *)self signalChange:2048];
  }
}

- (void)setWantsImmediateBarsUpdate:(BOOL)update
{
  if (self->_wantsImmediateBarsUpdate != update)
  {
    self->_wantsImmediateBarsUpdate = update;
  }
}

- (void)setHidesDurationLabelBadge:(BOOL)badge
{
  if (self->_hidesDurationLabelBadge != badge)
  {
    self->_hidesDurationLabelBadge = badge;
    [(PXPhotosViewModel *)self signalChange:1024];
  }
}

- (void)setViewBasedDecorationsEnabled:(BOOL)enabled
{
  if (self->_viewBasedDecorationsEnabled != enabled)
  {
    self->_viewBasedDecorationsEnabled = enabled;
    [(PXPhotosViewModel *)self signalChange:1024];
  }
}

- (void)setEmptyPlaceholderState:(int64_t)state
{
  if (self->_emptyPlaceholderState != state)
  {
    self->_emptyPlaceholderState = state;
    [(PXPhotosViewModel *)self signalChange:0x200000000];
  }
}

- (void)setFooterVisibilityStyle:(int64_t)style
{
  if (self->_footerVisibilityStyle != style)
  {
    self->_footerVisibilityStyle = style;
    [(PXPhotosViewModel *)self _updateFooterVisibility];
  }
}

- (void)setFooterHasImportantInformation:(BOOL)information
{
  if (self->_footerHasImportantInformation != information)
  {
    self->_footerHasImportantInformation = information;
    [(PXPhotosViewModel *)self signalChange:128];
  }
}

- (void)setWantsFooterVisible:(BOOL)visible
{
  if (self->_wantsFooterVisible != visible)
  {
    self->_wantsFooterVisible = visible;
    [(PXPhotosViewModel *)self signalChange:64];
  }
}

- (void)setWantsContentFilterVisible:(BOOL)visible
{
  if (self->_wantsContentFilterVisible != visible)
  {
    self->_wantsContentFilterVisible = visible;
    [(PXPhotosViewModel *)self signalChange:16];
  }
}

- (void)setLastTargetPreferredScrollDetent:(id)detent
{
  detentCopy = detent;
  v5 = self->_lastTargetPreferredScrollDetent;
  v6 = v5;
  if (v5 == detentCopy)
  {
  }

  else
  {
    v7 = [(PXScrollDetent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lastTargetPreferredScrollDetent, detent);
      [(PXPhotosViewModel *)self signalChange:0x800000000000000];
    }
  }
}

- (void)setLastPreferredScrollDetent:(id)detent
{
  detentCopy = detent;
  v5 = self->_lastPreferredScrollDetent;
  v6 = v5;
  if (v5 == detentCopy)
  {
  }

  else
  {
    v7 = [(PXScrollDetent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lastPreferredScrollDetent, detent);
      [(PXPhotosViewModel *)self signalChange:0x800000000000000];
    }
  }
}

- (void)setDesiredCurationLength:(int64_t)length
{
  if (self->_desiredCurationLength != length)
  {
    self->_desiredCurationLength = length;
    [(PXPhotosViewModel *)self _invalidateAssetsDataSourceManager];

    [(PXPhotosViewModel *)self signalChange:0x200000000000];
  }
}

- (void)setWantsLensControlVisible:(BOOL)visible
{
  if (self->_wantsLensControlVisible != visible)
  {
    self->_wantsLensControlVisible = visible;
    [(PXPhotosViewModel *)self _invalidateFooterVisibility];

    [(PXPhotosViewModel *)self signalChange:0x80000000000];
  }
}

- (void)setAvailableLenses:(id)lenses
{
  lensesCopy = lenses;
  availableLenses = self->_availableLenses;
  if (availableLenses != lensesCopy)
  {
    v8 = lensesCopy;
    if (([(NSArray *)availableLenses isEqual:lensesCopy]& 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->_availableLenses;
      self->_availableLenses = v6;

      [(PXPhotosViewModel *)self signalChange:0x100000000000];
      [(PXPhotosViewModel *)self _invalidateCurrentLens];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCurrentLens:(id)lens
{
  lensCopy = lens;
  v5 = self->_currentLens;
  v6 = v5;
  if (v5 == lensCopy)
  {
  }

  else
  {
    v7 = [(PXPhotosViewLens *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLens, lens);
      [(PXPhotosViewModel *)self signalChange:0x100000000000];
      [(PXPhotosViewModel *)self _invalidateAssetsDataSourceManager];
      [(PXPhotosViewModel *)self _invalidateFooterVisibility];
      [(PXPhotosViewModel *)self _invalidateAspectFitContent];
    }
  }
}

- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)visible
{
  if (self->_wantsContentUnavailableUnlockButtonVisible != visible)
  {
    self->_wantsContentUnavailableUnlockButtonVisible = visible;
    [(PXPhotosViewModel *)self signalChange:0x20000000000];
  }
}

- (void)setSystemAuthenticationType:(int64_t)type
{
  if (self->_systemAuthenticationType != type)
  {
    self->_systemAuthenticationType = type;
    [(PXPhotosViewModel *)self signalChange:0x10000000000];
  }
}

- (void)setContentPrivacyState:(int64_t)state
{
  if (self->_contentPrivacyState != state)
  {
    self->_contentPrivacyState = state;
    [(PXPhotosViewModel *)self signalChange:0x400000000];
  }
}

- (void)setRequiresLightTopBars:(BOOL)bars
{
  if (self->_requiresLightTopBars != bars)
  {
    self->_requiresLightTopBars = bars;
    [(PXPhotosViewModel *)self signalChange:0x1000000];
  }
}

- (void)setShowingAlternateContent:(BOOL)content
{
  if (self->_showingAlternateContent != content)
  {
    self->_showingAlternateContent = content;
    [(PXPhotosViewModel *)self signalChange:0x800000];

    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];
  }
}

- (void)setContentBelowTitle:(BOOL)title
{
  if (self->_contentBelowTitle != title)
  {
    self->_contentBelowTitle = title;
    [(PXPhotosViewModel *)self signalChange:0x400000];

    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];
  }
}

- (void)setContainerFallbackTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_containerFallbackTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_containerFallbackTitle, title);
    [(PXPhotosViewModel *)self signalChange:0x80000000000000];
  }
}

- (void)setContainerTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_containerTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_containerTitle, title);
    [(PXPhotosViewModel *)self signalChange:0x80000000000000];
  }
}

- (void)setWantsToolbarVisible:(BOOL)visible
{
  if (self->_wantsToolbarVisible != visible)
  {
    self->_wantsToolbarVisible = visible;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setWantsNavbarVisible:(BOOL)visible
{
  if (self->_wantsNavbarVisible != visible)
  {
    self->_wantsNavbarVisible = visible;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setWantsTabBarVisible:(BOOL)visible
{
  if (self->_wantsTabBarVisible != visible)
  {
    self->_wantsTabBarVisible = visible;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setFaceModeEnabled:(BOOL)enabled
{
  if (self->_faceModeEnabled != enabled)
  {
    self->_faceModeEnabled = enabled;
    [(PXPhotosViewModel *)self signalChange:0x40000000000];
  }
}

- (void)setSupportsAspectRatioToggle:(BOOL)toggle
{
  if (self->_supportsAspectRatioToggle != toggle)
  {
    self->_supportsAspectRatioToggle = toggle;
    [(PXPhotosViewModel *)self signalChange:0x80000];
  }
}

- (void)setZoomStep:(double)step isInteractive:(BOOL)interactive shouldAnimate:(BOOL)animate anchorAssetReference:(id)reference
{
  animateCopy = animate;
  interactiveCopy = interactive;
  referenceCopy = reference;
  [(PXPhotosViewModel *)self setZoomStep:step];
  [(PXPhotosViewModel *)self setIsInteractiveZooming:interactiveCopy];
  [(PXPhotosViewModel *)self setShouldAnimateZooming:animateCopy];
  [(PXPhotosViewModel *)self setZoomAnchorAssetReference:referenceCopy];
}

- (void)setZoomAnchorAssetReference:(id)reference
{
  referenceCopy = reference;
  if (self->_zoomAnchorAssetReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->_zoomAnchorAssetReference, reference);
    [(PXPhotosViewModel *)self signalChange:0x20000];
    referenceCopy = v6;
  }
}

- (void)setShouldAnimateZooming:(BOOL)zooming
{
  if (self->_shouldAnimateZooming != zooming)
  {
    self->_shouldAnimateZooming = zooming;
  }
}

- (void)setIsInteractiveZooming:(BOOL)zooming
{
  if (self->_isInteractiveZooming != zooming)
  {
    self->_isInteractiveZooming = zooming;
    [(PXPhotosViewModel *)self signalChange:0x40000];
  }
}

- (void)setYearsMonthsZoomStepRange:(_NSRange)range
{
  if (self->_yearsMonthsZoomStepRange.location != range.location || self->_yearsMonthsZoomStepRange.length != range.length)
  {
    self->_yearsMonthsZoomStepRange = range;
    [(PXPhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setNumberOfZoomSteps:(int64_t)steps
{
  if (self->_numberOfZoomSteps != steps)
  {
    self->_numberOfZoomSteps = steps;
    [(PXPhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setZoomStep:(double)step
{
  if (self->_zoomStep != step)
  {
    self->_zoomStep = step;
    [(PXPhotosViewModel *)self signalChange:0x10000];

    [(PXPhotosViewModel *)self _invalidateGridAppearance];
  }
}

- (void)setUserWantsAspectFitContent:(id)content
{
  contentCopy = content;
  userWantsAspectFitContent = self->_userWantsAspectFitContent;
  if (userWantsAspectFitContent != contentCopy)
  {
    v12 = contentCopy;
    if (([(NSNumber *)userWantsAspectFitContent isEqual:contentCopy]& 1) == 0)
    {
      v6 = [(NSNumber *)v12 copy];
      v7 = self->_userWantsAspectFitContent;
      self->_userWantsAspectFitContent = v6;

      specManager = [(PXPhotosViewModel *)self specManager];
      spec = [specManager spec];
      if ([spec userInterfaceIdiom] == 2)
      {
        isInCompactMode = [(PXPhotosViewModel *)self isInCompactMode];

        if (isInCompactMode)
        {
          standardUserDefaults = [MEMORY[0x277D3CE30] standardUserDefaults];
          [standardUserDefaults setPhotosGridAspectFitInCompact:v12];
LABEL_8:

          [(PXPhotosViewModel *)self signalChange:0x4000000];
          [(PXPhotosViewModel *)self _invalidateAspectFitContent];
          goto LABEL_9;
        }
      }

      else
      {
      }

      standardUserDefaults = [MEMORY[0x277D3CE30] standardUserDefaults];
      [standardUserDefaults setPhotosGridAspectFit:v12];
      goto LABEL_8;
    }
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (BOOL)shouldAspectFitContentByDefault
{
  contentMode = self->_contentMode;
  if (contentMode)
  {
    return contentMode == 2;
  }

  specManager = [(PXPhotosViewModel *)self specManager];
  spec = [specManager spec];
  if ([spec userInterfaceIdiom] != 4 && -[PXPhotosViewModel isInCompactMode](self, "isInCompactMode") || -[PXPhotosViewModel gridStyle](self, "gridStyle") == 1 || (-[PXPhotosViewModel itemAspectRatio](self, "itemAspectRatio"), v7 != 1.0))
  {
    v3 = 0;
  }

  else
  {
    specManager2 = [(PXPhotosViewModel *)self specManager];
    spec2 = [specManager2 spec];
    v3 = [spec2 userInterfaceIdiom] != 5;
  }

  return v3;
}

- (void)setTopDismissAreaHeight:(id)height
{
  self->_topDismissAreaHeight = [height copy];

  MEMORY[0x2821F96F8]();
}

- (BOOL)wantsSelectButton
{
  LODWORD(v3) = [(PXPhotosViewModel *)self canEnterSelectMode];
  if (v3)
  {
    return ([(PXPhotosViewModel *)self allowedChromeItems]>> 2) & 1;
  }

  return v3;
}

- (void)setChromeTitleFloatingFraction:(double)fraction
{
  if (self->_chromeTitleFloatingFraction != fraction)
  {
    self->_chromeTitleFloatingFraction = fraction;
    [(PXPhotosViewModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setChromeItemsToBeConsideredVisibleForLayoutPurpose:(unint64_t)purpose
{
  if (self->_chromeItemsToBeConsideredVisibleForLayoutPurpose != purpose)
  {
    self->_chromeItemsToBeConsideredVisibleForLayoutPurpose = purpose;
    [(PXPhotosViewModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setAllowedChromeItems:(unint64_t)items
{
  if (self->_allowedChromeItems != items)
  {
    self->_allowedChromeItems = items;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setAlwaysRequiresLightChrome:(BOOL)chrome
{
  if (self->_alwaysRequiresLightChrome != chrome)
  {
    self->_alwaysRequiresLightChrome = chrome;
    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];
  }
}

- (void)setChromeOpacity:(double)opacity
{
  if (self->_chromeOpacity != opacity)
  {
    self->_chromeOpacity = opacity;
    [(PXPhotosViewModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  p_additionalAspectFitEdgeMargins = &self->_additionalAspectFitEdgeMargins;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_additionalAspectFitEdgeMargins->top = top;
    p_additionalAspectFitEdgeMargins->left = left;
    p_additionalAspectFitEdgeMargins->bottom = bottom;
    p_additionalAspectFitEdgeMargins->right = right;

    [(PXPhotosViewModel *)self signalChange:0x4000000000000];
  }
}

- (void)setAspectFitContent:(BOOL)content
{
  if (self->_aspectFitContent != content)
  {
    self->_aspectFitContent = content;
    [(PXPhotosViewModel *)self signalChange:0x4000];
  }
}

- (PXAssetReference)firstSelectedAssetReference
{
  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  v11 = 0u;
  v12 = 0u;
  if (selectionSnapshot && (([selectionSnapshot firstSelectedIndexPath], v11 != *MEMORY[0x277D3CF78]) ? (v5 = v12 == 0x7FFFFFFFFFFFFFFFLL) : (v5 = 1), !v5 ? (v6 = *(&v12 + 1) == 0x7FFFFFFFFFFFFFFFLL) : (v6 = 0), v6))
  {
    currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
    v10[0] = v11;
    v10[1] = v12;
    v7 = [currentDataSource assetReferenceAtItemIndexPath:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXAssetReference)singleSelectedAssetReference
{
  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  if ([selectedIndexPaths count] == 1)
  {
    firstSelectedAssetReference = [(PXPhotosViewModel *)self firstSelectedAssetReference];
  }

  else
  {
    firstSelectedAssetReference = 0;
  }

  return firstSelectedAssetReference;
}

- (void)setTapbackStatusManager:(id)manager
{
  managerCopy = manager;
  if (self->_tapbackStatusManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_tapbackStatusManager, manager);
    [(PXPhotosViewModel *)self signalChange:0x4000000000];
    managerCopy = v6;
  }
}

- (void)setDropTargetAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == referenceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, reference);
      [(PXPhotosViewModel *)self signalChange:512];
    }
  }
}

- (void)setDraggedAssetReferences:(id)references
{
  referencesCopy = references;
  v5 = self->_draggedAssetReferences;
  v6 = v5;
  if (v5 == referencesCopy)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_draggedAssetReferences, references);
      [(PXPhotosViewModel *)self signalChange:256];
    }
  }
}

- (void)setCplActionManagerClass:(Class)class
{
  if (self->_cplActionManagerClass != class)
  {
    objc_storeStrong(&self->_cplActionManagerClass, class);

    [(PXPhotosViewModel *)self signalChange:0x8000000000];
  }
}

- (void)setSearch_overriddenAllAssetsCount:(id)count
{
  countCopy = count;
  if (self->_search_overriddenAllAssetsCount != countCopy)
  {
    v6 = countCopy;
    objc_storeStrong(&self->_search_overriddenAllAssetsCount, count);
    [(PXPhotosViewModel *)self signalChange:32];
    countCopy = v6;
  }
}

- (void)setNavigationBarBottomPaletteDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_navigationBarBottomPaletteDirectionalLayoutMargins.top), vceqq_f64(v4, *&self->_navigationBarBottomPaletteDirectionalLayoutMargins.bottom)))) & 1) == 0)
  {
    self->_navigationBarBottomPaletteDirectionalLayoutMargins = margins;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setWantsManualNavigationBottomBarPaletteControl:(BOOL)control
{
  if (self->_wantsManualNavigationBottomBarPaletteControl != control)
  {
    self->_wantsManualNavigationBottomBarPaletteControl = control;
  }
}

- (void)setNavigationBarBottomPaletteContentView:(id)view
{
  viewCopy = view;
  if (self->_navigationBarBottomPaletteContentView != viewCopy && ([(UIView *)viewCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_navigationBarBottomPaletteContentView, view);
    [(PXPhotosViewModel *)self signalChange:32];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCustomTrailingAccessoryBarButtonItems:(id)items
{
  itemsCopy = items;
  if (self->_customTrailingAccessoryBarButtonItems != itemsCopy && ([(NSArray *)itemsCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_customTrailingAccessoryBarButtonItems, items);
    [(PXPhotosViewModel *)self signalChange:32];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCustomLeadingAccessoryBarButtonItems:(id)items
{
  itemsCopy = items;
  if (self->_customLeadingAccessoryBarButtonItems != itemsCopy && ([(NSArray *)itemsCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_customLeadingAccessoryBarButtonItems, items);
    [(PXPhotosViewModel *)self signalChange:32];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCustomBannerView:(id)view
{
  viewCopy = view;
  if (self->_customBannerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customBannerView, view);
    [(PXPhotosViewModel *)self signalChange:32];
    viewCopy = v6;
  }
}

- (void)setCustomTrailingAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_customTrailingAccessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customTrailingAccessoryView, view);
    [(PXPhotosViewModel *)self signalChange:32];
    viewCopy = v6;
  }
}

- (void)setCustomLeadingAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_customLeadingAccessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customLeadingAccessoryView, view);
    [(PXPhotosViewModel *)self signalChange:32];
    viewCopy = v6;
  }
}

- (void)setAllowsPreviewHeader:(BOOL)header
{
  if (self->_allowsPreviewHeader != header)
  {
    headerCopy = header;
    self->_allowsPreviewHeader = header;
    [(PXPhotosViewModel *)self signalChange:0x800000000000];

    [(PXPhotosViewModel *)self previewHeaderVisibilityChanged:headerCopy];
  }
}

- (void)setHeaderTitleTopInset:(double)inset
{
  if (self->_headerTitleTopInset != inset)
  {
    self->_headerTitleTopInset = inset;
    [(PXPhotosViewModel *)self signalChange:0x10000000];
  }
}

- (void)setHeaderSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  headerSubtitle = self->_headerSubtitle;
  if (headerSubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    if (([(NSAttributedString *)headerSubtitle isEqual:subtitleCopy]& 1) == 0)
    {
      v6 = [(NSAttributedString *)v8 copy];
      v7 = self->_headerSubtitle;
      self->_headerSubtitle = v6;

      [(PXPhotosViewModel *)self signalChange:0x80000000000000];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  headerTitle = self->_headerTitle;
  if (headerTitle != titleCopy)
  {
    v8 = titleCopy;
    if (([(NSAttributedString *)headerTitle isEqual:titleCopy]& 1) == 0)
    {
      v6 = [(NSAttributedString *)v8 copy];
      v7 = self->_headerTitle;
      self->_headerTitle = v6;

      [(PXPhotosViewModel *)self signalChange:0x80000000000000];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setScrolledToBottom:(BOOL)bottom
{
  if (self->_scrolledToBottom != bottom)
  {
    self->_scrolledToBottom = bottom;
    [(PXPhotosViewModel *)self signalChange:0x100000000000000];
  }
}

- (void)setScrolledToTop:(BOOL)top
{
  if (self->_scrolledToTop != top)
  {
    self->_scrolledToTop = top;
    [(PXPhotosViewModel *)self signalChange:0x80000000];
  }
}

- (void)setHasScrollableContent:(BOOL)content
{
  if (self->_hasScrollableContent != content)
  {
    self->_hasScrollableContent = content;
    [(PXPhotosViewModel *)self signalChange:0x100000];

    [(PXPhotosViewModel *)self _invalidateFooterVisibility];
  }
}

- (void)setDismissRequested:(BOOL)requested
{
  if (self->_dismissRequested != requested)
  {
    self->_dismissRequested = requested;
    [(PXPhotosViewModel *)self signalChange:0x40000000];
  }
}

- (void)setIsAppearing:(BOOL)appearing
{
  if (self->_isAppearing != appearing)
  {
    self->_isAppearing = appearing;
    [(PXPhotosViewModel *)self signalChange:4096];
  }
}

- (void)setAppearState:(int64_t)state
{
  if (self->_appearState != state)
  {
    self->_appearState = state;
    [(PXPhotosViewModel *)self signalChange:4096];

    [(PXPhotosViewModel *)self setIsAppearing:state == 1];
  }
}

- (void)setIsInCompactMode:(BOOL)mode
{
  if (self->_isInCompactMode != mode)
  {
    self->_isInCompactMode = mode;
    [(PXPhotosViewModel *)self signalChange:0x2000];
    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
    [(PXPhotosViewModel *)self _invalidateUserWantsAspectFitContent];

    [(PXPhotosViewModel *)self _invalidateAspectFitContent];
  }
}

- (void)setModalInPresentation:(BOOL)presentation forReason:(id)reason
{
  presentationCopy = presentation;
  reasonCopy = reason;
  isModalInPresentation = [(PXPhotosViewModel *)self isModalInPresentation];
  modalInPresentationReasons = self->_modalInPresentationReasons;
  if (modalInPresentationReasons)
  {
    v8 = 1;
  }

  else
  {
    v8 = !presentationCopy;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = self->_modalInPresentationReasons;
    self->_modalInPresentationReasons = v9;

    modalInPresentationReasons = self->_modalInPresentationReasons;
  }

  if (presentationCopy)
  {
    [(NSMutableSet *)modalInPresentationReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)modalInPresentationReasons removeObject:reasonCopy];
  }

  if (isModalInPresentation != [(PXPhotosViewModel *)self isModalInPresentation])
  {
    [(PXPhotosViewModel *)self signalChange:0x1000000000000000];
  }
}

- (BOOL)isScrollDisabledForAxis:(int64_t)axis
{
  scrollDisabledReasonsByAxis = self->_scrollDisabledReasonsByAxis;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:axis];
  v5 = [(NSMutableDictionary *)scrollDisabledReasonsByAxis objectForKeyedSubscript:v4];
  v6 = [v5 count] != 0;

  return v6;
}

- (void)setScrollDisabled:(BOOL)disabled axis:(int64_t)axis forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v8 = [(PXPhotosViewModel *)self isScrollDisabledForAxis:axis];
  scrollDisabledReasonsByAxis = self->_scrollDisabledReasonsByAxis;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:axis];
  v11 = [(NSMutableDictionary *)scrollDisabledReasonsByAxis objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !disabledCopy;
  }

  if (!v12)
  {
    v11 = [MEMORY[0x277CBEB58] set];
    v13 = self->_scrollDisabledReasonsByAxis;
    if (!v13)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v15 = self->_scrollDisabledReasonsByAxis;
      self->_scrollDisabledReasonsByAxis = dictionary;

      v13 = self->_scrollDisabledReasonsByAxis;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:axis];
    [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v16];
  }

  if (disabledCopy)
  {
    [v11 addObject:reasonCopy];
  }

  else
  {
    [v11 removeObject:reasonCopy];
  }

  if (v8 != [(PXPhotosViewModel *)self isScrollDisabledForAxis:axis])
  {
    [(PXPhotosViewModel *)self signalChange:0x200000000000000];
  }
}

- (void)setHideSurroundingContent:(BOOL)content forReason:(id)reason
{
  contentCopy = content;
  reasonCopy = reason;
  hideSurroundingContent = [(PXPhotosViewModel *)self hideSurroundingContent];
  hideSurroundingContentForReasons = self->_hideSurroundingContentForReasons;
  if (contentCopy)
  {
    [(NSMutableSet *)hideSurroundingContentForReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)hideSurroundingContentForReasons removeObject:reasonCopy];
  }

  if (hideSurroundingContent != [(PXPhotosViewModel *)self hideSurroundingContent])
  {

    [(PXPhotosViewModel *)self signalChange:0x20000000];
  }
}

- (void)setAspectRatioToggleAllowed:(BOOL)allowed forReason:(id)reason
{
  allowedCopy = allowed;
  aspectRatioTogglePreventedForReasons = self->_aspectRatioTogglePreventedForReasons;
  reasonCopy = reason;
  v8 = [(NSMutableSet *)aspectRatioTogglePreventedForReasons count];
  v9 = self->_aspectRatioTogglePreventedForReasons;
  if (allowedCopy)
  {
    [(NSMutableSet *)v9 removeObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)v9 addObject:reasonCopy];
  }

  if ((v8 != 0) == ([(NSMutableSet *)self->_aspectRatioTogglePreventedForReasons count]== 0))
  {

    [(PXPhotosViewModel *)self _invalidateAspectFitContent];
  }
}

- (void)setOneUpPresentationAllowed:(BOOL)allowed forReason:(id)reason
{
  oneUpPresentationPreventedForReasons = self->_oneUpPresentationPreventedForReasons;
  if (allowed)
  {
    [(NSMutableSet *)oneUpPresentationPreventedForReasons removeObject:reason];
  }

  else
  {
    [(NSMutableSet *)oneUpPresentationPreventedForReasons addObject:reason];
  }
}

- (BOOL)canFilterContent
{
  dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
  if ([dataSourceManager supportsFiltering])
  {
    filterState = [(PXPhotosViewModel *)self filterState];
    if ([filterState isFiltering])
    {
      containsAnyItems = 1;
    }

    else
    {
      currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
      containsAnyItems = [currentDataSource containsAnyItems];
    }
  }

  else
  {
    containsAnyItems = 0;
  }

  return containsAnyItems;
}

- (void)deselectAll
{
  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  [selectionManager performChanges:&__block_literal_global_95];
}

- (void)selectAll
{
  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  [selectionManager performChanges:&__block_literal_global_93];
}

- (BOOL)canSwipeSelect
{
  isInSelectMode = [(PXPhotosViewModel *)self isInSelectMode];
  if (isInSelectMode)
  {
    LOBYTE(isInSelectMode) = [(NSMutableSet *)self->_enterSelectModePreventedForReasons count]== 0;
  }

  return isInSelectMode;
}

- (BOOL)canEnterSelectMode
{
  allowsSelectModeToggle = [(PXPhotosViewModel *)self allowsSelectModeToggle];
  if (allowsSelectModeToggle)
  {
    LOBYTE(allowsSelectModeToggle) = [(NSMutableSet *)self->_enterSelectModePreventedForReasons count]== 0;
  }

  return allowsSelectModeToggle;
}

- (void)setEnterSelectModeAllowed:(BOOL)allowed forReason:(id)reason
{
  allowedCopy = allowed;
  reasonCopy = reason;
  canEnterSelectMode = [(PXPhotosViewModel *)self canEnterSelectMode];
  enterSelectModePreventedForReasons = self->_enterSelectModePreventedForReasons;
  if (allowedCopy)
  {
    [(NSMutableSet *)enterSelectModePreventedForReasons removeObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)enterSelectModePreventedForReasons addObject:reasonCopy];
  }

  if (canEnterSelectMode != [(PXPhotosViewModel *)self canEnterSelectMode])
  {

    [(PXPhotosViewModel *)self signalChange:0x200000];
  }
}

- (BOOL)attemptSetInSelectMode:(BOOL)mode
{
  modeCopy = mode;
  v11 = *MEMORY[0x277D85DE8];
  if (!mode)
  {
    if (![(PXPhotosViewModel *)self canExitSelectMode])
    {
      goto LABEL_3;
    }

LABEL_6:
    [(PXPhotosViewModel *)self setIsInSelectMode:modeCopy];
    return 1;
  }

  if ([(PXPhotosViewModel *)self canEnterSelectMode])
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = PXAssertGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = @"NO";
    if (modeCopy)
    {
      v7 = @"YES";
    }

    v8 = v7;
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_21ABF3000, v5, OS_LOG_TYPE_ERROR, "Attempted to change selection mode to:%@, but it isn't allowed.", &v9, 0xCu);
  }

  return 0;
}

- (void)setIsInSelectMode:(BOOL)mode
{
  if (self->_isInSelectMode != mode)
  {
    modeCopy = mode;
    self->_isInSelectMode = mode;
    [(PXPhotosViewModel *)self signalChange:4];
    if (!modeCopy)
    {
      selectionManager = [(PXPhotosViewModel *)self selectionManager];
      [selectionManager performChanges:&__block_literal_global_1268];
    }

    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
    [(PXPhotosViewModel *)self _invalidateWantsLensControlVisible];
    [(PXPhotosViewModel *)self setScrollDisabled:modeCopy axis:2 forReason:@"selectMode"];

    [(PXPhotosViewModel *)self setModalInPresentation:modeCopy forReason:@"selectMode"];
  }
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = self->_selectionSnapshot;
  v6 = v5;
  if (v5 == snapshotCopy)
  {
  }

  else
  {
    v7 = [(PXSelectionSnapshot *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, snapshot);
      [(PXPhotosViewModel *)self signalChange:2];
    }
  }
}

- (void)setCurrentDataSource:(id)source
{
  sourceCopy = source;
  v5 = self->_currentDataSource;
  v6 = v5;
  if (v5 == sourceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetsDataSource *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentDataSource, source);
      [(PXPhotosViewModel *)self signalChange:1];
      [(PXPhotosViewModel *)self _invalidateDraggedAssetReferences];
      [(PXPhotosViewModel *)self _invalidateChromeVisibility];
      if (self->_canInvalidateContainerTitle)
      {
        [(PXPhotosViewModel *)self _invalidateContainerTitle];
      }

      [(PXPhotosViewModel *)self _invalidateContainerFallbackTitle];
      [(PXPhotosViewModel *)self _invalidateEmptyPlaceholderState];
    }
  }
}

- (void)markContentAsViewed
{
  dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
  [dataSourceManager markContentAsViewed];
}

- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)preference
{
  if (self->_shouldAlwaysRespectToolbarActionPlacementPreference != preference)
  {
    self->_shouldAlwaysRespectToolbarActionPlacementPreference = preference;
    [(PXPhotosViewModel *)self signalChange:0x2000000000];
  }
}

- (void)setAllowsEmptyPlaceholderBehavior:(BOOL)behavior
{
  if (self->_allowsEmptyPlaceholderBehavior != behavior)
  {
    self->_allowsEmptyPlaceholderBehavior = behavior;
    [(PXPhotosViewModel *)self signalChange:0];

    [(PXPhotosViewModel *)self _invalidateEmptyPlaceholderState];
  }
}

- (void)setShowLoadingPlaceholderWhenEmpty:(BOOL)empty
{
  if (self->_showLoadingPlaceholderWhenEmpty != empty)
  {
    self->_showLoadingPlaceholderWhenEmpty = empty;
    [(PXPhotosViewModel *)self signalChange:0];

    [(PXPhotosViewModel *)self _invalidateEmptyPlaceholderState];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = self->_title;
  v6 = v5;
  if (v5 == titleCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_title, title);
      [(PXPhotosViewModel *)self signalChange:32];
    }
  }
}

- (void)setAllowsSortAndFilterMenu:(BOOL)menu
{
  if (self->_allowsSortAndFilterMenu != menu)
  {
    self->_allowsSortAndFilterMenu = menu;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setAllowsShareAllAction:(BOOL)action
{
  if (self->_allowsShareAllAction != action)
  {
    self->_allowsShareAllAction = action;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setAllowsSearch:(BOOL)search
{
  if (self->_allowsSearch != search)
  {
    self->_allowsSearch = search;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setHidesToolbar:(BOOL)toolbar
{
  if (self->_hidesToolbar != toolbar)
  {
    self->_hidesToolbar = toolbar;
    [(PXPhotosViewModel *)self signalChange:0];

    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
  }
}

- (void)setHidesNavbar:(BOOL)navbar
{
  if (self->_hidesNavbar != navbar)
  {
    self->_hidesNavbar = navbar;
    [(PXPhotosViewModel *)self signalChange:0];
    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];

    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
  }
}

- (id)_indexPathsForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v11 = 0u;
  v12 = 0u;
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  v6 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetCollectionReference:referenceCopy];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  currentDataSource2 = [(PXPhotosViewModel *)self currentDataSource];
  v10[0] = v11;
  v10[1] = v12;
  v8 = [currentDataSource2 indexPathSetForItemsInIndexPath:v10];

  return v8;
}

- (void)clickSelectAssetReference:(id)reference updateCursorIndexPath:(BOOL)path
{
  pathCopy = path;
  v14 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v11 = 0u;
  v12 = 0u;
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  v8 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  if (v11 == *MEMORY[0x277D3CF78])
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      currentDataSource2 = [(PXPhotosViewModel *)self currentDataSource];
      *buf = 138412546;
      *&buf[4] = referenceCopy;
      *&buf[12] = 2112;
      *&buf[14] = currentDataSource2;
      _os_log_error_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_ERROR, "can't toggle selection for %@ because it's not in %@", buf, 0x16u);
    }
  }

  else
  {
    *buf = v11;
    *&buf[16] = v12;
    [(PXPhotosViewModel *)self clickSelectIndexPath:buf updateCursorIndexPath:pathCopy];
  }
}

- (void)clickSelectIndexPath:(PXSimpleIndexPath *)path updateCursorIndexPath:(BOOL)indexPath
{
  indexPathCopy = indexPath;
  selectionSnapshot = [(PXPhotosViewModel *)self selectionSnapshot];
  v8 = *&path->item;
  v27[0] = *&path->dataSourceIdentifier;
  v27[1] = v8;
  v9 = [selectionSnapshot isIndexPathSelected:v27];

  if (v9)
  {
    if (!indexPathCopy)
    {
      return;
    }

    selectionManager = [(PXPhotosViewModel *)self selectionManager];
    v11 = selectionManager;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __64__PXPhotosViewModel_clickSelectIndexPath_updateCursorIndexPath___block_invoke_2;
    v18 = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v12 = *&path->item;
    v19 = *&path->dataSourceIdentifier;
    v20 = v12;
    v13 = &v15;
  }

  else
  {
    selectionManager = [(PXPhotosViewModel *)self selectionManager];
    v11 = selectionManager;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __64__PXPhotosViewModel_clickSelectIndexPath_updateCursorIndexPath___block_invoke;
    v24 = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v14 = *&path->item;
    v25 = *&path->dataSourceIdentifier;
    v26 = v14;
    v13 = &v21;
  }

  [selectionManager performChanges:{v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
}

uint64_t __64__PXPhotosViewModel_clickSelectIndexPath_updateCursorIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

uint64_t __64__PXPhotosViewModel_clickSelectIndexPath_updateCursorIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setCursorIndexPath:v4];
}

- (void)toggleSelectionForAssetCollectionReference:(id)reference
{
  v4 = [(PXPhotosViewModel *)self _indexPathsForAssetCollectionReference:reference];
  selectionSnapshot = [(PXPhotosViewModel *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v7 = [v4 isSubsetOfSet:selectedIndexPaths];

  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PXPhotosViewModel_toggleSelectionForAssetCollectionReference___block_invoke;
  v10[3] = &unk_278297AE0;
  v12 = v7;
  v11 = v4;
  v9 = v4;
  [selectionManager performChanges:v10];
}

- (void)toggleSelectionForAssetReference:(id)reference updateCursorIndexPath:(BOOL)path
{
  pathCopy = path;
  v14 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v11 = 0u;
  v12 = 0u;
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  v8 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  if (v11 == *MEMORY[0x277D3CF78])
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      currentDataSource2 = [(PXPhotosViewModel *)self currentDataSource];
      *buf = 138412546;
      *&buf[4] = referenceCopy;
      *&buf[12] = 2112;
      *&buf[14] = currentDataSource2;
      _os_log_error_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_ERROR, "can't toggle selection for %@ because it's not in %@", buf, 0x16u);
    }
  }

  else
  {
    *buf = v11;
    *&buf[16] = v12;
    [(PXPhotosViewModel *)self toggleSelectionForIndexPath:buf updateCursorIndexPath:pathCopy];
  }
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v4[0] = *&path->dataSourceIdentifier;
  v4[1] = v3;
  [(PXPhotosViewModel *)self toggleSelectionForIndexPath:v4 updateCursorIndexPath:0];
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path updateCursorIndexPath:(BOOL)indexPath
{
  selectionSnapshot = [(PXPhotosViewModel *)self selectionSnapshot];
  v8 = *&path->item;
  v17[0] = *&path->dataSourceIdentifier;
  v17[1] = v8;
  v9 = [selectionSnapshot isIndexPathSelected:v17];

  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PXPhotosViewModel_toggleSelectionForIndexPath_updateCursorIndexPath___block_invoke;
  v12[3] = &__block_descriptor_66_e37_v16__0___PXMutableSelectionManager__8l;
  v15 = v9;
  v11 = *&path->item;
  v13 = *&path->dataSourceIdentifier;
  v14 = v11;
  indexPathCopy = indexPath;
  [selectionManager performChanges:v12];
}

uint64_t __71__PXPhotosViewModel_toggleSelectionForIndexPath_updateCursorIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 65);
  v4 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v4;
  return [a2 setSelectedState:(v2 & 1) == 0 forIndexPath:v6 andUpdateCursorIndexPath:v3];
}

- (int64_t)selectionContext
{
  selectionContext = self->_selectionContext;
  if (!selectionContext)
  {
    currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
    containerCollection = [currentDataSource containerCollection];

    if ([containerCollection px_isSmartAlbum])
    {
      if ([containerCollection px_isRecentlyDeletedSmartAlbum])
      {
        selectionContext = 21;
LABEL_14:

        return selectionContext;
      }

      v6 = [containerCollection px_isRecoveredSmartAlbum] == 0;
      v7 = 27;
      v8 = 22;
    }

    else
    {
      if ([containerCollection px_isMoment])
      {
        selectionContext = 14;
        goto LABEL_14;
      }

      if ([containerCollection px_isImportSessionCollection] & 1) != 0 || (objc_msgSend(containerCollection, "px_isImportHistoryCollection"))
      {
        selectionContext = 6;
        goto LABEL_14;
      }

      if ([containerCollection px_isContentSyndicationAlbum])
      {
        selectionContext = 29;
        goto LABEL_14;
      }

      if ([(PXPhotosViewModel *)self configuredSectionHeaderStyle]== 9)
      {
        selectionContext = 23;
        goto LABEL_14;
      }

      v6 = [containerCollection px_isSharedAlbum] == 0;
      v7 = 28;
      v8 = 24;
    }

    if (v6)
    {
      selectionContext = v7;
    }

    else
    {
      selectionContext = v8;
    }

    goto LABEL_14;
  }

  return selectionContext;
}

- (void)_updateWantsLensControlVisible
{
  if ([(PXPhotosViewModel *)self allowsLensControl]&& (v3 = [(PXPhotosViewModel *)self contentPrivacyState], ![(PXPhotosViewModel *)self neverShowsLensControl]))
  {
    v4 = (v3 != 1) & ~[(PXPhotosViewModel *)self isInSelectMode];
  }

  else
  {
    v4 = 0;
  }

  [(PXPhotosViewModel *)self setWantsLensControlVisible:v4];
}

- (void)_invalidateWantsLensControlVisible
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsLensControlVisible];
}

- (void)_updateCurrentLens
{
  availableLenses = [(PXPhotosViewModel *)self availableLenses];
  currentLens = [(PXPhotosViewModel *)self currentLens];
  if (!currentLens || (v4 = currentLens, -[PXPhotosViewModel currentLens](self, "currentLens"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [availableLenses containsObject:v5], v5, v4, (v6 & 1) == 0))
  {
    firstObject = [availableLenses firstObject];
    [(PXPhotosViewModel *)self setCurrentLens:firstObject];
  }
}

- (void)_invalidateCurrentLens
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentLens];
}

- (void)_updateAvailableLenses
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([(PXPhotosViewModel *)self allowsLensControl])
  {
    v3 = 0;
  }

  else
  {
    availableLenses = [(PXPhotosViewModel *)self availableLenses];
    v5 = availableLenses;
    if (availableLenses)
    {
      v3 = availableLenses;
    }

    else
    {
      v6 = [[PXPhotosViewLens alloc] initWithTitle:@"Configured" symbolName:0 defaultSectionBodyStyle:self->_configuredSectionBodyStyle];
      v7[0] = v6;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }
  }

  [(PXPhotosViewModel *)self setAvailableLenses:v3];
}

- (void)_invalidateAvailableLenses
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAvailableLenses];
}

- (void)_updateWantsContentUnavailableUnlockButtonVisible
{
  viewModelHelper = [(PXPhotosViewModel *)self viewModelHelper];
  -[PXPhotosViewModel setWantsContentUnavailableUnlockButtonVisible:](self, "setWantsContentUnavailableUnlockButtonVisible:", [viewModelHelper wantsContentUnavailableUnlockButtonVisible]);
}

- (void)_invalidateWantsContentUnavailableUnlockButtonVisible
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsContentUnavailableUnlockButtonVisible];
}

- (void)_updateSystemAuthenticationType
{
  viewModelHelper = [(PXPhotosViewModel *)self viewModelHelper];
  authenticationType = [viewModelHelper authenticationType];

  [(PXPhotosViewModel *)self setSystemAuthenticationType:authenticationType];
}

- (void)_invalidateSystemAuthenticationType
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSystemAuthenticationType];
}

- (void)_updateContentPrivacyState
{
  viewModelHelper = [(PXPhotosViewModel *)self viewModelHelper];
  isLocked = [viewModelHelper isLocked];

  [(PXPhotosViewModel *)self setContentPrivacyState:isLocked];
}

- (void)_invalidateContentPrivacyState
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentPrivacyState];
}

- (void)_updateEmptyPlaceholderState
{
  dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
  contentPrivacyState = [(PXPhotosViewModel *)self contentPrivacyState];
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  containsAnyItems = [currentDataSource containsAnyItems];

  isLoadingInitialDataSource = [dataSourceManager isLoadingInitialDataSource];
  if (isLoadingInitialDataSource & 1) != 0 || (containsAnyItems)
  {
    v7 = contentPrivacyState == 1;
    v8 = 3;
    if (containsAnyItems)
    {
      v8 = 0;
    }

    if (isLoadingInitialDataSource)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if ([dataSourceManager isBackgroundFetching])
    {
      v7 = contentPrivacyState == 1;
LABEL_10:
      v8 = 2;
      goto LABEL_11;
    }

    showLoadingPlaceholderWhenEmpty = [(PXPhotosViewModel *)self showLoadingPlaceholderWhenEmpty];
    v7 = contentPrivacyState == 1;
    if (showLoadingPlaceholderWhenEmpty)
    {
      goto LABEL_10;
    }

    v8 = 3;
  }

LABEL_11:
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  [(PXPhotosViewModel *)self setEmptyPlaceholderState:v10];
}

- (void)_invalidateEmptyPlaceholderState
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateEmptyPlaceholderState];
}

- (void)_updateAssetsDataSourceManager
{
  filterState = [(PXPhotosViewModel *)self filterState];
  if ([filterState isFiltering])
  {
  }

  else
  {
    ignoreFilterStateWhenNotFiltering = [(PXPhotosViewModel *)self ignoreFilterStateWhenNotFiltering];

    if (ignoreFilterStateWhenNotFiltering)
    {
      return;
    }
  }

  selectionSnapshot = [(PXPhotosViewModel *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  visibleAssetCollections = [(PXPhotosViewModel *)self visibleAssetCollections];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__1279;
  v37[4] = __Block_byref_object_dispose__1280;
  v9 = [visibleAssetCollections set];
  v38 = [v9 mutableCopy];

  selectionSnapshot2 = [(PXPhotosViewModel *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot2 selectedIndexPaths];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__PXPhotosViewModel__updateAssetsDataSourceManager__block_invoke;
  v34[3] = &unk_278297A70;
  v36 = v37;
  v12 = dataSource;
  v35 = v12;
  [selectedIndexPaths enumerateItemIndexSetsUsingBlock:v34];

  numberOfSections = [v12 numberOfSections];
  filterState2 = [(PXPhotosViewModel *)self filterState];
  v15 = [filterState2 predicateForUseCase:numberOfSections > 1];

  filterPredicate = [v12 filterPredicate];
  v17 = v15;
  if (filterPredicate == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = [filterPredicate isEqual:v17];
  }

  includeOthersInSocialGroupAssets = [v12 includeOthersInSocialGroupAssets];
  filterState3 = [(PXPhotosViewModel *)self filterState];
  includeOthersInSocialGroupAssets2 = [filterState3 includeOthersInSocialGroupAssets];

  dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__PXPhotosViewModel__updateAssetsDataSourceManager__block_invoke_2;
  v26[3] = &unk_278297A98;
  v32 = v18 ^ 1;
  v33 = includeOthersInSocialGroupAssets ^ includeOthersInSocialGroupAssets2;
  v26[4] = self;
  v31 = a2;
  v23 = v12;
  v27 = v23;
  v24 = v17;
  v28 = v24;
  v25 = visibleAssetCollections;
  v29 = v25;
  v30 = v37;
  [dataSourceManager performChanges:v26];

  _Block_object_dispose(v37, 8);
}

void __51__PXPhotosViewModel__updateAssetsDataSourceManager__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ([a4 count])
  {
    v7 = *(a1 + 32);
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v11[0] = a2;
    v11[1] = a3;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v12 = vnegq_f64(v9);
    v10 = [v7 assetCollectionAtSectionIndexPath:v11];
    [v8 addObject:v10];
  }
}

void __51__PXPhotosViewModel__updateAssetsDataSourceManager__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if ((v4[184] & 1) == 0 && [v4 isInitializing] && ((*(a1 + 80) & 1) != 0 || *(a1 + 81) == 1))
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v16 = [*(a1 + 40) filterPredicate];
      v17 = *(a1 + 48);
      LODWORD(v18[0]) = 138412546;
      *(v18 + 4) = v16;
      WORD6(v18[0]) = 2112;
      *(v18 + 14) = v17;
      _os_log_fault_impl(&dword_21ABF3000, v5, OS_LOG_TYPE_FAULT, "filterPredicate or includeOthersInSocialGroupAssets option change during initialization, %@ != %@. this is very inefficient and will lead to a full refetch. Ensure the data source passed in to PXPhotosViewConfiguration has a filterPredicate or includeOthersInSocialGroupAssets option that matches +[PXContentFilterState defaultFilterStateForContainerCollection:]", v18, 0x16u);
    }
  }

  if (((*(a1 + 80) & 1) != 0 || *(a1 + 81) == 1) && [*(a1 + 56) count])
  {
    v6 = [*(a1 + 56) lastObject];
    v7 = objc_alloc(MEMORY[0x277D3CCE8]);
    v8 = *(MEMORY[0x277D3CFD8] + 16);
    v18[0] = *MEMORY[0x277D3CFD8];
    v18[1] = v8;
    v9 = [v7 initWithAssetCollection:v6 keyAssetReference:0 indexPath:v18];
    memset(v18, 0, sizeof(v18));
    v10 = *(a1 + 40);
    if (v10)
    {
      [v10 indexPathForAssetCollectionReference:v9];
      if (*&v18[0] != *MEMORY[0x277D3CF78] && *(&v18[0] + 1) != 0x7FFFFFFFFFFFFFFFLL && *&v18[1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v3 setBackgroundFetchOriginSection:?];
      }
    }
  }

  [v3 setFilterPredicate:*(a1 + 48) provideIncrementalChangeDetailsForAssetCollections:{*(*(*(a1 + 64) + 8) + 40), *&v18[0]}];
  v11 = [*(a1 + 32) filterState];
  [v3 setIncludeOthersInSocialGroupAssets:objc_msgSend(v11 provideIncrementalChangeDetailsForAssetCollections:{"includeOthersInSocialGroupAssets"), *(*(*(a1 + 64) + 8) + 40)}];

  if ([*(a1 + 32) supportsTogglingSortOrder])
  {
    [v3 setReverseSortOrder:{objc_msgSend(*(a1 + 32), "reverseSortOrder")}];
  }

  v12 = [*(a1 + 32) currentLens];
  if ([v3 supportsCurationToggling] && v12)
  {
    if ([v12 wantsCuration])
    {
      v13 = +[PXPhotosGridSettings sharedInstance];
      v14 = [v13 shouldCurateEditorialLens];
    }

    else
    {
      v14 = 0;
    }

    if ([v12 isDefaultCurationLength])
    {
      v15 = 0;
    }

    else
    {
      v15 = [v12 curationLength];
    }

    [v3 setCurationEnabledForAllCollections:v14 curationLength:v15 collectionsToDiff:*(*(*(a1 + 64) + 8) + 40)];
  }
}

- (void)_invalidateAssetsDataSourceManager
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetsDataSourceManager];
}

- (PXFooterViewModel)footerViewModel
{
  footerViewModel = self->_footerViewModel;
  if (!footerViewModel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D3CD48]);
    v5 = self->_footerViewModel;
    self->_footerViewModel = v4;

    [(PXFooterViewModel *)self->_footerViewModel configureWithPhotosEnvironment:self];
    footerViewModel = self->_footerViewModel;
  }

  return footerViewModel;
}

- (void)_updateFooterVisibility
{
  footerVisibilityStyle = self->_footerVisibilityStyle;
  if (footerVisibilityStyle == 2 || footerVisibilityStyle == 1 && [(PXPhotosViewModel *)self hasScrollableContent])
  {
    currentLens = [(PXPhotosViewModel *)self currentLens];
    allowsFooter = [currentLens allowsFooter];
  }

  else
  {
    allowsFooter = 0;
  }

  [(PXPhotosViewModel *)self setWantsFooterVisible:allowsFooter];
}

- (void)_invalidateFooterVisibility
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterVisibility];
}

- (void)_updateGridAppearance
{
  specManager = [(PXPhotosViewModel *)self specManager];
  spec = [specManager spec];
  assetsSpec = [spec assetsSpec];

  if (([assetsSpec disableConfigurators] & 1) == 0)
  {
    dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    v7 = [assetsSpec numberOfGridZoomStepsWithDataSource:dataSource];

    if ([(PXPhotosViewModel *)self supportsAspectRatioToggle])
    {
      supportsGridAspectRatioToggle = [assetsSpec supportsGridAspectRatioToggle];
    }

    else
    {
      supportsGridAspectRatioToggle = 0;
    }

    [(PXPhotosViewModel *)self setNumberOfZoomSteps:v7];
    [(PXPhotosViewModel *)self setSupportsAspectRatioToggle:supportsGridAspectRatioToggle];
  }
}

- (void)_invalidateGridAppearance
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateGridAppearance];
}

- (void)_updateDraggedAssetReferences
{
  v17 = *MEMORY[0x277D85DE8];
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  draggedAssetReferences = [(PXPhotosViewModel *)self draggedAssetReferences];
  v6 = [draggedAssetReferences countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(draggedAssetReferences);
        }

        v10 = [currentDataSource assetReferenceForAssetReference:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [draggedAssetReferences countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  [(PXPhotosViewModel *)self setDraggedAssetReferences:v11];
}

- (void)_invalidateDraggedAssetReferences
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];
}

- (void)_updateContainerFallbackTitle
{
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  container = [currentDataSource container];

  if (objc_opt_respondsToSelector())
  {
    localizedFallbackTitle = [container localizedFallbackTitle];
    [(PXPhotosViewModel *)self setContainerFallbackTitle:localizedFallbackTitle];
  }
}

- (void)_invalidateContainerFallbackTitle
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateContainerFallbackTitle];
}

- (void)_updateContainerTitle
{
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  container = [currentDataSource container];

  if (objc_opt_respondsToSelector())
  {
    localizedTitle = [container localizedTitle];
    [(PXPhotosViewModel *)self setContainerTitle:localizedTitle];
  }
}

- (void)_invalidateContainerTitle
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateContainerTitle];
}

- (void)_updateChromeVisibility
{
  allowsChromeManagementBehavior = [(PXPhotosViewModel *)self allowsChromeManagementBehavior];
  isEmbedded = [(PXPhotosViewModel *)self isEmbedded];
  isInSelectMode = [(PXPhotosViewModel *)self isInSelectMode];
  isInCompactMode = [(PXPhotosViewModel *)self isInCompactMode];
  if (allowsChromeManagementBehavior)
  {
    currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
    v8 = [currentDataSource containsAnyItems] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  navBarStyle = [(PXPhotosViewModel *)self navBarStyle];
  v9 = ![(PXPhotosViewModel *)self hidesNavbar]&& [(PXPhotosViewModel *)self navBarStyle]!= 8 && [(PXPhotosViewModel *)self navBarStyle]!= 7;
  contentPrivacyState = [(PXPhotosViewModel *)self contentPrivacyState];
  if ([(PXPhotosViewModel *)self allowsTabBarVisible]&& allowsChromeManagementBehavior)
  {
    v11 = v8 | !isInSelectMode;
  }

  else
  {
    v11 = 0;
  }

  if (MEMORY[0x21CEE04B0]())
  {
    if (contentPrivacyState != 1 && allowsChromeManagementBehavior)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v14 = isInCompactMode;
  v15 = !allowsChromeManagementBehavior;
  navBarStyle2 = [(PXPhotosViewModel *)self navBarStyle];
  if (navBarStyle)
  {
    v17 = navBarStyle2 == 8;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (((v15 | v8) & 1) != 0 || !isInSelectMode && ![(PXPhotosViewModel *)self prefersActionsInToolbar])
  {
    goto LABEL_24;
  }

  if ((v14 | v18))
  {
    if (contentPrivacyState != 1)
    {
      goto LABEL_35;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v13 = 0;
  if ([(PXPhotosViewModel *)self prefersActionsInToolbar]&& contentPrivacyState != 1)
  {
LABEL_35:
    if (![(PXPhotosViewModel *)self hidesToolbar])
    {
LABEL_16:
      v13 = [(PXPhotosViewModel *)self hidesToolbar]^ 1;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  [(PXPhotosViewModel *)self setWantsNavbarVisible:(isInSelectMode | ~isEmbedded | (navBarStyle == 0)) & v9 & 1];
  [(PXPhotosViewModel *)self setWantsTabBarVisible:v11 & 1];

  [(PXPhotosViewModel *)self setWantsToolbarVisible:v13];
}

- (void)_invalidateChromeVisibility
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateChromeVisibility];
}

- (void)_updateAspectFitContent
{
  if (self->_allowsAspectFitToggle && ![(NSMutableSet *)self->_aspectRatioTogglePreventedForReasons count])
  {
    currentLens = [(PXPhotosViewModel *)self currentLens];
    v3 = ([currentLens defaultSectionBodyStyle] - 5) < 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    v3 = 0;
  }

  [(PXPhotosViewModel *)self setSupportsAspectRatioToggle:v3];
  shouldAspectFitContentByDefault = [(PXPhotosViewModel *)self shouldAspectFitContentByDefault];
  if (self->_allowsAspectFitToggle)
  {
    userWantsAspectFitContent = [(PXPhotosViewModel *)self userWantsAspectFitContent];

    if (userWantsAspectFitContent)
    {
      userWantsAspectFitContent2 = [(PXPhotosViewModel *)self userWantsAspectFitContent];
      shouldAspectFitContentByDefault = [userWantsAspectFitContent2 BOOLValue];
    }
  }

  [(PXPhotosViewModel *)self setAspectFitContent:shouldAspectFitContentByDefault];
}

- (void)_invalidateAspectFitContent
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAspectFitContent];
}

- (void)_updateUserWantsAspectFitContent
{
  standardUserDefaults = [MEMORY[0x277D3CE30] standardUserDefaults];
  photosGridAspectFit = [standardUserDefaults photosGridAspectFit];
  specManager = [(PXPhotosViewModel *)self specManager];
  spec = [specManager spec];
  if ([spec userInterfaceIdiom] == 2)
  {
    isInCompactMode = [(PXPhotosViewModel *)self isInCompactMode];

    if (!isInCompactMode)
    {
      goto LABEL_6;
    }

    [standardUserDefaults photosGridAspectFitInCompact];
    photosGridAspectFit = specManager = photosGridAspectFit;
  }

  else
  {
  }

LABEL_6:
  [(PXPhotosViewModel *)self setUserWantsAspectFitContent:photosGridAspectFit];
}

- (void)_invalidateUserWantsAspectFitContent
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateUserWantsAspectFitContent];
}

- (void)_updateTopBarsStyles
{
  v3 = ([(PXPhotosViewModel *)self navBarStyle]== 1 || [(PXPhotosViewModel *)self navBarStyle]== 2 || [(PXPhotosViewModel *)self navBarStyle]== 3 || [(PXPhotosViewModel *)self navBarStyle]== 7) && ([(PXPhotosViewModel *)self isContentBelowTitle]|| [(PXPhotosViewModel *)self isEmbedded]) && ![(PXPhotosViewModel *)self isShowingAlternateContent]&& (![(PXPhotosViewModel *)self hidesNavbar]|| [(PXPhotosViewModel *)self wantsModernNavBarButtons]) || [(PXPhotosViewModel *)self alwaysRequiresLightChrome];

  [(PXPhotosViewModel *)self setRequiresLightTopBars:v3];
}

- (void)_invalidateTopBarsStyles
{
  updater = [(PXPhotosViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateTopBarsStyles];
}

- (void)didPerformChanges
{
  v5.receiver = self;
  v5.super_class = PXPhotosViewModel;
  [(PXPhotosViewModel *)&v5 didPerformChanges];
  [(PXPhotosViewModel *)self swift_didPerformChanges];
  viewModelHelper = [(PXPhotosViewModel *)self viewModelHelper];
  [viewModelHelper viewModelDidChange:self];

  updater = [(PXPhotosViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)_updateDataSourceDependentProperties
{
  dataSourceManager = [(PXPhotosViewModel *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  selectionManager = [(PXPhotosViewModel *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource2 = [selectionSnapshot dataSource];
  v8 = [dataSource isEqual:dataSource2];

  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__PXPhotosViewModel__updateDataSourceDependentProperties__block_invoke;
    v9[3] = &unk_278298C40;
    v10 = dataSource;
    v11 = selectionSnapshot;
    [(PXPhotosViewModel *)self performChanges:v9];
  }
}

void __57__PXPhotosViewModel__updateDataSourceDependentProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCurrentDataSource:v3];
  [v4 setSelectionSnapshot:*(a1 + 40)];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXPhotosViewModel;
  [(PXPhotosViewModel *)&v3 performChanges:changes];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  currentDataSource = [(PXPhotosViewModel *)self currentDataSource];
  v6 = [v3 stringWithFormat:@"<%@:%p currentDataSource:%@>", v4, self, currentDataSource];

  return v6;
}

- (PXPhotosViewModel)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel.m" lineNumber:442 description:{@"%s is not available as initializer", "-[PXPhotosViewModel init]"}];

  abort();
}

- (PXPhotosViewModel)initWithConfiguration:(id)configuration specManager:(id)manager inlinePlaybackController:(id)controller
{
  configurationCopy = configuration;
  managerCopy = manager;
  controllerCopy = controller;
  v150.receiver = self;
  v150.super_class = PXPhotosViewModel;
  v12 = [(PXPhotosViewModel *)&v150 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_52;
  }

  v12->_isInitializing = 1;
  v14 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v12];
  updater = v13->_updater;
  v13->_updater = v14;

  [(PXUpdater *)v13->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateContentPrivacyState];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateAvailableLenses];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateCurrentLens];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateAssetsDataSourceManager];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateWantsLensControlVisible];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateUserWantsAspectFitContent];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateAspectFitContent];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateTopBarsStyles];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateContainerTitle];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateContainerFallbackTitle];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateChromeVisibility];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateDraggedAssetReferences];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateGridAppearance];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateFooterVisibility];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateSystemAuthenticationType];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateWantsContentUnavailableUnlockButtonVisible];
  [(PXUpdater *)v13->_updater addUpdateSelector:sel__updateEmptyPlaceholderState];
  appSpecificConfiguration = [configurationCopy appSpecificConfiguration];
  v17 = [appSpecificConfiguration createViewModelHelperWithConfiguration:configurationCopy viewModel:v13];
  viewModelHelper = v13->_viewModelHelper;
  v13->_viewModelHelper = v17;

  [(PXPhotosViewModelHelper *)v13->_viewModelHelper applySpecManagerOptions:managerCopy];
  [(PXPhotosViewModelHelper *)v13->_viewModelHelper registerChangeObserver:v13 context:ViewModelHelperObservationContext];
  objc_storeStrong(&v13->_specManager, manager);
  objc_storeWeak(&v13->_inlinePlaybackController, controllerCopy);
  dataSourceManager = [configurationCopy dataSourceManager];
  dataSourceManager = v13->_dataSourceManager;
  v13->_dataSourceManager = dataSourceManager;

  mediaProvider = [configurationCopy mediaProvider];
  mediaProvider = v13->_mediaProvider;
  v13->_mediaProvider = mediaProvider;

  assetCollectionActionManager = [configurationCopy assetCollectionActionManager];
  assetCollectionActionManager = v13->_assetCollectionActionManager;
  v13->_assetCollectionActionManager = assetCollectionActionManager;

  loadingStatusManager = [configurationCopy loadingStatusManager];
  loadingStatusManager = v13->_loadingStatusManager;
  v13->_loadingStatusManager = loadingStatusManager;

  decorationDataSource = [configurationCopy decorationDataSource];
  decorationDataSource = v13->_decorationDataSource;
  v13->_decorationDataSource = decorationDataSource;

  tapbackStatusManager = [configurationCopy tapbackStatusManager];
  tapbackStatusManager = v13->_tapbackStatusManager;
  v13->_tapbackStatusManager = tapbackStatusManager;

  assetImportStatusManager = [configurationCopy assetImportStatusManager];
  assetImportStatusManager = v13->_assetImportStatusManager;
  v13->_assetImportStatusManager = assetImportStatusManager;

  v33 = [(PXPhotosViewModelHelper *)v13->_viewModelHelper createGridActionManagerForViewModel:v13];
  v34 = v33;
  if (!v33)
  {
    v34 = objc_alloc_init(MEMORY[0x277D3CCC0]);
  }

  objc_storeStrong(&v13->_gridActionManager, v34);
  if (!v33)
  {
  }

  v140 = controllerCopy;
  assetActionManager = [configurationCopy assetActionManager];
  assetActionManager = v13->_assetActionManager;
  v13->_assetActionManager = assetActionManager;

  fullscreenOverlayControllers = [configurationCopy fullscreenOverlayControllers];
  fullscreenOverlayControllers = v13->_fullscreenOverlayControllers;
  v13->_fullscreenOverlayControllers = fullscreenOverlayControllers;

  customAssetSelectionHandler = [configurationCopy customAssetSelectionHandler];
  v40 = [customAssetSelectionHandler copy];
  customAssetSelectionHandler = v13->_customAssetSelectionHandler;
  v13->_customAssetSelectionHandler = v40;

  v13->_titleMode = [configurationCopy titleMode];
  selectionManager = [configurationCopy selectionManager];

  v141 = v33;
  v142 = managerCopy;
  if (selectionManager)
  {
    selectionManager2 = [configurationCopy selectionManager];
    dataSourceManager2 = [selectionManager2 dataSourceManager];
    v45 = v13->_dataSourceManager;

    if (dataSourceManager2 != v45)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"PXPhotosViewModel.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"configuration.selectionManager.dataSourceManager == _dataSourceManager"}];
    }

    assetActionManager2 = [configurationCopy assetActionManager];
    selectionManager3 = [assetActionManager2 selectionManager];
    if (selectionManager3)
    {
      v48 = selectionManager3;
      assetActionManager3 = [configurationCopy assetActionManager];
      selectionManager4 = [assetActionManager3 selectionManager];
      selectionManager5 = [configurationCopy selectionManager];

      if (selectionManager4 == selectionManager5)
      {
LABEL_13:
        selectionManager6 = [configurationCopy selectionManager];
        goto LABEL_14;
      }

      assetActionManager2 = [MEMORY[0x277CCA890] currentHandler];
      [assetActionManager2 handleFailureInMethod:a2 object:v13 file:@"PXPhotosViewModel.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"configuration.assetActionManager.selectionManager == nil || configuration.assetActionManager.selectionManager == configuration.selectionManager"}];
    }

    goto LABEL_13;
  }

  assetActionManager4 = [configurationCopy assetActionManager];
  selectionManager7 = [assetActionManager4 selectionManager];

  if (selectionManager7)
  {
    assetActionManager5 = [configurationCopy assetActionManager];
    selectionManager8 = [assetActionManager5 selectionManager];
    dataSourceManager3 = [selectionManager8 dataSourceManager];
    dataSourceManager4 = [configurationCopy dataSourceManager];

    if (dataSourceManager3 != dataSourceManager4)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v13 file:@"PXPhotosViewModel.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"configuration.assetActionManager.selectionManager.dataSourceManager == configuration.dataSourceManager"}];
    }

    assetActionManager6 = [configurationCopy assetActionManager];
    selectionManager9 = [assetActionManager6 selectionManager];
    selectionManager = v13->_selectionManager;
    v13->_selectionManager = selectionManager9;

    goto LABEL_19;
  }

  selectionManager6 = [objc_alloc(MEMORY[0x277D3CDE0]) initWithDataSourceManager:v13->_dataSourceManager];
LABEL_14:
  assetActionManager6 = v13->_selectionManager;
  v13->_selectionManager = selectionManager6;
LABEL_19:

  v13->_selectionContext = [configurationCopy selectionContextOverride];
  [(PXAssetActionManager *)v13->_assetActionManager setSelectionManager:v13->_selectionManager];
  delegate = [configurationCopy delegate];
  [(PXPhotosViewModel *)v13 setViewDelegate:delegate];

  [(PXAssetsDataSourceManager *)v13->_dataSourceManager registerChangeObserver:v13 context:DataSourceManagerObservationContext];
  [(PXSectionedSelectionManager *)v13->_selectionManager registerChangeObserver:v13 context:SelectionManagerObservationContext];
  snapshotValidator = [(PXSectionedSelectionManager *)v13->_selectionManager snapshotValidator];

  if (!snapshotValidator)
  {
    [(PXSectionedSelectionManager *)v13->_selectionManager setSnapshotValidator:v13];
  }

  initialScrollPositionDetentIdentifier = [configurationCopy initialScrollPositionDetentIdentifier];
  v65 = [initialScrollPositionDetentIdentifier copy];
  initialScrollPositionDetentIdentifier = v13->_initialScrollPositionDetentIdentifier;
  v13->_initialScrollPositionDetentIdentifier = v65;

  dataSource = [(PXAssetsDataSourceManager *)v13->_dataSourceManager dataSource];
  currentDataSource = v13->_currentDataSource;
  v13->_currentDataSource = dataSource;

  selectionSnapshot = [(PXSectionedSelectionManager *)v13->_selectionManager selectionSnapshot];
  selectionSnapshot = v13->_selectionSnapshot;
  v13->_selectionSnapshot = selectionSnapshot;

  v71 = objc_alloc_init(MEMORY[0x277CBEB40]);
  visibleAssetCollections = v13->_visibleAssetCollections;
  v13->_visibleAssetCollections = v71;

  v13->_contentStartingPosition = [configurationCopy contentStartingPosition];
  decorationViewClass = [configurationCopy decorationViewClass];
  decorationViewClass = v13->_decorationViewClass;
  v13->_decorationViewClass = decorationViewClass;

  v13->_hidesDurationLabelBadge = [configurationCopy decorationViewClass] != 0;
  emptyPlaceholderStatusViewModel = [configurationCopy emptyPlaceholderStatusViewModel];
  emptyPlaceholderStatusViewModel = v13->_emptyPlaceholderStatusViewModel;
  v13->_emptyPlaceholderStatusViewModel = emptyPlaceholderStatusViewModel;

  v13->_wantsContentFilterVisible = [configurationCopy wantsContentFilterVisible];
  v13->_footerVisibilityStyle = [configurationCopy footerVisibilityStyle];
  v13->_wantsDimmedSelectionStyle = [configurationCopy wantsDimmedSelectionStyle];
  v13->_wantsNumberedSelectionStyle = [configurationCopy wantsNumberedSelectionStyle];
  v13->_wantsFileSizeBadge = [configurationCopy wantsFileSizeBadge];
  v13->_wantsAssetIndexBadge = [configurationCopy wantsAssetIndexBadge];
  v13->_noContentPlaceholderType = [configurationCopy noContentPlaceholderType];
  v13->_wantsDynamicTitles = [configurationCopy wantsDynamicTitles];
  v13->_wantsFooterMask = [configurationCopy wantsFooterMask];
  v13->_hidesAssetCountInFooter = [configurationCopy hidesAssetCountInFooter];
  v13->_wantsCPLStatus = [configurationCopy wantsCPLStatus];
  v13->_wantsRenderingStatus = [configurationCopy wantsRenderingStatus];
  v13->_wantsShareGridButtonVisible = [configurationCopy wantsShareGridButtonVisible];
  v13->_disableAutoPlaybackInOneUp = [configurationCopy disableAutoPlaybackInOneUp];
  v13->_wantsDecorationSpritesHostedInDecoratedSprite = [configurationCopy wantsDecorationSpritesHostedInDecoratedSprite];
  v13->_isEmbedded = [configurationCopy isEmbedded];
  bannerControllerProvider = [configurationCopy bannerControllerProvider];
  bannerControllerProvider = v13->_bannerControllerProvider;
  v13->_bannerControllerProvider = bannerControllerProvider;

  v13->_gridStyle = [configurationCopy gridStyle];
  v13->_preferredUserInterfaceStyle = [configurationCopy preferredUserInterfaceStyle];
  v13->_configuredSectionHeaderStyle = [configurationCopy sectionHeaderStyle];
  v13->_configuredSectionBodyStyle = [configurationCopy sectionBodyStyle];
  v13->_wantsSingleRowScrollingLayout = [configurationCopy wantsSingleRowScrollingLayout];
  pickerClientBundleIdentifier = [configurationCopy pickerClientBundleIdentifier];
  pickerClientBundleIdentifier = v13->_pickerClientBundleIdentifier;
  v13->_pickerClientBundleIdentifier = pickerClientBundleIdentifier;

  [configurationCopy itemAspectRatio];
  v13->_itemAspectRatio = v81;
  v13->_showLoadingPlaceholderWhenEmpty = [configurationCopy showLoadingPlaceholderWhenEmpty];
  preferredAssetCropDelegate = [configurationCopy preferredAssetCropDelegate];
  objc_storeWeak(&v13->_preferredAssetCropDelegate, preferredAssetCropDelegate);

  preferredColumnCountsDelegate = [configurationCopy preferredColumnCountsDelegate];
  objc_storeWeak(&v13->_preferredColumnCountsDelegate, preferredColumnCountsDelegate);

  v13->_overrideDefaultNumberOfColumns = [configurationCopy overrideDefaultNumberOfColumns];
  v13->_ignoreFilterStateWhenNotFiltering = [configurationCopy ignoreFilterStateWhenNotFiltering];
  v13->_ignoreFilterPredicateAssert = [configurationCopy ignoreFilterPredicateAssert];
  v13->_allowsOneUpPresentation = ([configurationCopy allowedActions] & 0x80) != 0;
  v13->_allowsSearch = ([configurationCopy allowedBehaviors] >> 16) & 1;
  v13->_allowsSortAndFilterMenu = ([configurationCopy allowedBehaviors] & 0x20000) != 0;
  v13->_allowsCurationModeToggle = ([configurationCopy allowedBehaviors] & 0x40000) != 0;
  v13->_allowsShowDetails = ([configurationCopy allowedActions] >> 8) & 1;
  v13->_allowsChromeManagementBehavior = [configurationCopy allowedBehaviors] & 1;
  v13->_allowsInlineAddBehavior = ([configurationCopy allowedBehaviors] & 2) != 0;
  v13->_allowsSelectionUserActivityBehavior = ([configurationCopy allowedBehaviors] & 4) != 0;
  v13->_allowsPopOnContainerDeleteBehavior = ([configurationCopy allowedBehaviors] & 8) != 0;
  v13->_allowsPopOnEmptyBehavior = ([configurationCopy allowedBehaviors] & 0x800) != 0;
  v13->_allowsEmptyPlaceholderBehavior = ([configurationCopy allowedBehaviors] & 0x10) != 0;
  v13->_allowsActionMenuBehavior = ([configurationCopy allowedBehaviors] & 0x20) != 0;
  v13->_allowsDoubleTapBehavior = ([configurationCopy allowedBehaviors] & 0x40) != 0;
  v13->_allowsHoverBehavior = ([configurationCopy allowedBehaviors] & 0x400) != 0;
  v13->_allowsCaptionsInSquareBehavior = ([configurationCopy allowedBehaviors] & 0x1000) != 0;
  v13->_allowsContextMenuCustomization = ([configurationCopy allowedBehaviors] & 0x80) != 0;
  v13->_allowsAccessoriesContextMenuCustomization = ([configurationCopy allowedBehaviors] & 0x200) != 0;
  v13->_allowsMacStyleSelection = ([configurationCopy allowedBehaviors] >> 8) & 1;
  v13->_allowsLensControl = ([configurationCopy allowedBehaviors] & 0x4000) != 0;
  v13->_wantsSelectModeCaptionInContextMenu = [configurationCopy wantsSelectModeCaptionInContextMenu];
  v13->_prefersCurationModeToggleInNavBar = [configurationCopy prefersCurationModeToggleInNavBar];
  v13->_neverShowsLensControl = [configurationCopy containerProvidesSecondaryToolbar];
  v13->_canShowSortButton = ([configurationCopy allowedBehaviors] & 0x8000) != 0;
  v13->_wantsTopBadgesWithViewBasedDecorations = ([configurationCopy allowedBehaviors] & 0x2000) != 0;
  containerCollection = [(PXAssetsDataSource *)v13->_currentDataSource containerCollection];
  v13->_wantsSensitiveWarningBadgeDecorations = [containerCollection px_canContainPotentiallySensitiveContent];

  v13->_allowsSelectModeToggle = ([configurationCopy allowedActions] & 0x20) != 0;
  v13->_allowsSelectAllAction = [configurationCopy allowedActions] & 1;
  v85 = +[PXPhotosGridSettings sharedInstance];
  if ([v85 enableAspectFitToggle] && objc_msgSend(configurationCopy, "gridStyle") != 1 && (objc_msgSend(configurationCopy, "allowedActions") & 0x200) != 0)
  {
    [configurationCopy itemAspectRatio];
    v86 = v137 == 1.0;
  }

  else
  {
    v86 = 0;
  }

  v13->_allowsAspectFitToggle = v86;

  v13->_allowsSlideshowAction = 0;
  v13->_allowsAddAction = ([configurationCopy allowedActions] & 8) != 0;
  v13->_allowsCopyAction = ([configurationCopy allowedActions] & 0x40) != 0;
  v13->_allowsSelectSectionAction = ([configurationCopy allowedActions] & 0x10) != 0;
  v13->_allowsGridAppearanceActions = [configurationCopy allowsGridAppearanceActions];
  v13->_allowsShareAllAction = ([configurationCopy allowedActions] & 0x400) != 0;
  v13->_allowsQuickLookAction = ([configurationCopy allowedActions] & 0x800) != 0;
  v13->_allowsShowMapAction = ([configurationCopy allowedActions] & 0x1000) != 0;
  v13->_allowsPickAssetAction = ([configurationCopy allowedActions] & 2) != 0;
  v13->_allowsDismissAction = ([configurationCopy allowedActions] & 0x2000) != 0;
  v87 = PXCanShowInternalUI();
  LOBYTE(v88) = 0;
  if (v87)
  {
    v88 = ([configurationCopy allowedActions] >> 14) & 1;
  }

  v13->_allowsFileRadarAction = v88;
  v13->_allowsTrashAction = ([configurationCopy allowedActions] & 0x8000) != 0;
  v13->_allowsShareAction = ([configurationCopy allowedActions] & 0x20000000) != 0;
  v13->_allowsAddToLibraryAction = ([configurationCopy allowedActions] >> 16) & 1;
  v13->_allowsSwitchLibraryAction = ([configurationCopy allowedActions] >> 24) & 1;
  v13->_allowsMoveToLibraryAction = ([configurationCopy allowedActions] & 0x2000000) != 0;
  v13->_allowsMoveToPersonalLibraryAction = ([configurationCopy allowedActions] & 0x8000000) != 0;
  v13->_allowsMoveToSharedLibraryAction = ([configurationCopy allowedActions] & 0x4000000) != 0;
  v13->_allowsInfoAction = ([configurationCopy allowedActions] & 0x80000) != 0;
  v13->_allowsCMMActions = ([configurationCopy allowedActions] & 0x20000) != 0;
  v13->_allowsSyndicatedContentFiltering = ([configurationCopy allowedActions] & 0x200000) != 0;
  v13->_allowsContentSyndicationSaveAllAction = ([configurationCopy allowedActions] & 0x40000) != 0;
  v13->_allowsReplyAction = ([configurationCopy allowedActions] & 0x100000) != 0;
  v13->_allowsTapbackAction = ([configurationCopy allowedActions] & 0x400000) != 0;
  v13->_allowsMergeDuplicatesAction = ([configurationCopy allowedActions] & 0x800000) != 0;
  v13->_supportsPeopleActions = ([configurationCopy allowedActions] & 0x10000000) != 0;
  v13->_supportsSocialGroupActions = ([configurationCopy allowedActions] & 0x40000000) != 0;
  v13->_oneUpAssetsViewMode = [configurationCopy oneUpAssetsViewMode];
  v13->_allowsSwipeToSelect = [configurationCopy allowsSwipeToSelect];
  v13->_wantsPinchEffect = PFIsMessagesApp() ^ 1;
  v13->_allowsDragIn = [configurationCopy allowsDragIn];
  allowsDragOut = [configurationCopy allowsDragOut];
  v13->_allowsDragOut = allowsDragOut;
  if (v13->_allowsDragIn && (allowsDragOut & 1) == 0)
  {
    v90 = PXAssertGetLog();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_error_impl(&dword_21ABF3000, v90, OS_LOG_TYPE_ERROR, "This drag-in / drag-out configuration is not yet implemented.", &location, 2u);
    }
  }

  v13->_allowsUserDefaults = [configurationCopy allowsUserDefaults];
  v13->_allowsLinkInteractions = [configurationCopy allowsLinkInteractions];
  v13->_allowsMultiSelectMenu = [configurationCopy allowsMultiSelectMenu];
  v13->_lowMemoryMode = [configurationCopy lowMemoryMode];
  v13->_oneUpPresentationOrigin = [configurationCopy oneUpPresentationOrigin];
  v13->_preventShowInAllPhotosAction = [configurationCopy preventShowInAllPhotosAction];
  v13->_wantsOneUpShowInLibraryButton = [configurationCopy wantsOneUpShowInLibraryButton];
  v13->_wantsFooterVisibleImmediately = [configurationCopy wantsFooterVisibleImmediately];
  v13->_wantsFooterVisibleWhenEmpty = [configurationCopy wantsFooterVisibleWhenEmpty];
  centerAccessoryActionType = [configurationCopy centerAccessoryActionType];
  v92 = [centerAccessoryActionType copy];
  centerAccessoryActionType = v13->_centerAccessoryActionType;
  v13->_centerAccessoryActionType = v92;

  trailingAccessoryActionType = [configurationCopy trailingAccessoryActionType];
  v95 = [trailingAccessoryActionType copy];
  trailingAccessoryActionType = v13->_trailingAccessoryActionType;
  v13->_trailingAccessoryActionType = v95;

  v13->_dismissAffordance = [configurationCopy dismissAffordance];
  initialNavigationObjectReference = [configurationCopy initialNavigationObjectReference];
  initialNavigationObjectReference = v13->_initialNavigationObjectReference;
  v13->_initialNavigationObjectReference = initialNavigationObjectReference;

  v13->_initialNavigationScrollPosition = [configurationCopy initialNavigationScrollPosition];
  v13->_scrollingBehavior = [configurationCopy scrollingBehavior];
  if ([configurationCopy sectionBodyStyle] == 2)
  {
    v99 = PFIsiOSPhotosApp() ^ 1;
  }

  else
  {
    LOBYTE(v99) = 0;
  }

  v13->__shouldMimicSystemChromelessUsingManualScrollEdgeAppearance = v99;
  v13->_contentMode = [configurationCopy contentMode];
  standardUserDefaults = [MEMORY[0x277D3CE30] standardUserDefaults];
  photosGridAspectFit = [standardUserDefaults photosGridAspectFit];
  userWantsAspectFitContent = v13->_userWantsAspectFitContent;
  v13->_userWantsAspectFitContent = photosGridAspectFit;

  if (v13->_allowsCopyAction || v13->_allowsQuickLookAction || v13->_allowsPickAssetAction)
  {
    v103 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v104 = v103;
    if (v13->_allowsCopyAction)
    {
      [v103 addObject:*MEMORY[0x277D3CE50]];
    }

    if (v13->_allowsQuickLookAction)
    {
      [v104 addObject:*MEMORY[0x277D3CE60]];
    }

    if (v13->_allowsPickAssetAction)
    {
      [v104 addObject:*MEMORY[0x277D3CE58]];
    }

    [(PXAssetActionManager *)v13->_assetActionManager setAllowedActionTypes:v104];
  }

  title = [configurationCopy title];
  v106 = [title copy];
  title = v13->_title;
  v13->_title = v106;

  containerTitle = [configurationCopy containerTitle];
  v109 = [containerTitle copy];
  containerTitle = v13->_containerTitle;
  v13->_containerTitle = v109;

  v13->_canInvalidateContainerTitle = v13->_containerTitle == 0;
  v13->_floatingTitleOpacity = 1.0;
  v13->_titleBackgroundOpacity = 1.0;
  v13->_wantsFloatingTitle = 1;
  footerSubtitle = [configurationCopy footerSubtitle];
  v112 = [footerSubtitle copy];
  footerSubtitle = v13->_footerSubtitle;
  v13->_footerSubtitle = v112;

  footerLearnMoreURL = [configurationCopy footerLearnMoreURL];
  v115 = [footerLearnMoreURL copy];
  footerLearnMoreURL = v13->_footerLearnMoreURL;
  v13->_footerLearnMoreURL = v115;

  v13->_forbiddenBadges = [configurationCopy forbiddenBadges];
  v13->_allowsInteractiveFavoriteBadges = [configurationCopy allowsInteractiveFavoriteBadges];
  infoActionHandler = [configurationCopy infoActionHandler];
  infoActionHandler = v13->_infoActionHandler;
  v13->_infoActionHandler = infoActionHandler;

  v13->_navBarStyle = [configurationCopy navBarStyle];
  v13->_toolbarStyle = [configurationCopy toolbarStyle];
  v13->_shouldOptOutOfChromelessBars = [configurationCopy shouldOptOutOfChromelessBars];
  v119 = +[PXPhotosGridSettings sharedInstance];
  if ([v119 enableTitleLegibilityDimmingFilter])
  {
    navBarStyle = v13->_navBarStyle;

    v121 = v141;
    managerCopy = v142;
    if (navBarStyle == 1)
    {
      v13->_navBarStyle = 2;
    }
  }

  else
  {

    v121 = v141;
    managerCopy = v142;
  }

  v13->_wantsModernNavBarButtons = [configurationCopy wantsModernNavBarButtons];
  v13->_wantsAdaptiveSelectModeBarButton = [configurationCopy wantsAdaptiveSelectModeBarButton];
  v13->_chromeOpacity = 1.0;
  v13->_allowedChromeItems = [configurationCopy allowedChromeItems];
  v13->_allowedGesturesKind = 0;
  v122 = objc_alloc_init(MEMORY[0x277CBEB58]);
  enterSelectModePreventedForReasons = v13->_enterSelectModePreventedForReasons;
  v13->_enterSelectModePreventedForReasons = v122;

  v124 = objc_alloc_init(MEMORY[0x277CBEB58]);
  oneUpPresentationPreventedForReasons = v13->_oneUpPresentationPreventedForReasons;
  v13->_oneUpPresentationPreventedForReasons = v124;

  v126 = objc_alloc_init(MEMORY[0x277CBEB58]);
  aspectRatioTogglePreventedForReasons = v13->_aspectRatioTogglePreventedForReasons;
  v13->_aspectRatioTogglePreventedForReasons = v126;

  v128 = objc_alloc_init(MEMORY[0x277CBEB58]);
  hideSurroundingContentForReasons = v13->_hideSurroundingContentForReasons;
  v13->_hideSurroundingContentForReasons = v128;

  v13->_prefersActionsInToolbar = [configurationCopy prefersActionsInToolbar];
  v13->_topBarsAppearanceChangeAnimationDuration = 0.25;
  footerViewModel = [configurationCopy footerViewModel];
  footerViewModel = v13->_footerViewModel;
  v13->_footerViewModel = footerViewModel;

  badgesModifier = [configurationCopy badgesModifier];
  badgesModifier = v13->_badgesModifier;
  v13->_badgesModifier = badgesModifier;

  headerCustomizationModel = [managerCopy headerCustomizationModel];
  headerCustomizationModel = v13->_headerCustomizationModel;
  v13->_headerCustomizationModel = headerCustomizationModel;

  v13->_useLowMemoryDecode = [configurationCopy useLowMemoryDecode];
  v13->_contentShiftStrategy = [configurationCopy contentShiftStrategy];
  v13->_allowsTabBarVisible = [configurationCopy allowsTabBarVisible];
  if (v13->_wantsSensitiveWarningBadgeDecorations)
  {
    objc_initWeak(&location, v13);
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke;
    v147[3] = &unk_278297A20;
    objc_copyWeak(&v148, &location);
    [(PXSectionedSelectionManager *)v13->_selectionManager setCanSelectIndexPathBlock:v147];
    objc_destroyWeak(&v148);
    objc_destroyWeak(&location);
  }

  v13->_hidesNavbar = [configurationCopy wantsNavbarHidden];
  v13->_hidesToolbar = [configurationCopy wantsToolbarHidden];
  v13->_startsInSelectMode = [configurationCopy startsInSelectMode];
  [(PXPhotosViewModel *)v13 swift_initWithConfiguration:configurationCopy];
  objc_initWeak(&location, v13);
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke_2;
  v145[3] = &unk_278297A48;
  objc_copyWeak(&v146, &location);
  v13->_allowsPreviewHeader = [(PXPhotosViewModel *)v13 initializePreviewHeaderVisibilityWithChangeHandler:v145];
  v13->_reverseSortOrder = [(PXPhotosViewModelHelper *)v13->_viewModelHelper initializeReverseSortOrder];
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke_4;
  v143[3] = &unk_278298E60;
  v144 = v13;
  [(PXPhotosViewModel *)v144 performChanges:v143];
  [(PXPhotosViewModelHelper *)v13->_viewModelHelper initializationWillFinishWithConfiguration:configurationCopy];
  v13->_isInitializing = 0;

  objc_destroyWeak(&v146);
  objc_destroyWeak(&location);

  controllerCopy = v140;
LABEL_52:

  return v13;
}

uint64_t __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke(uint64_t a1, _OWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained dataSourceManager];
  v5 = [v4 dataSource];
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v9];

  LODWORD(WeakRetained) = [v7 needsSensitivityProtection];
  return WeakRetained ^ 1;
}

void __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke_3;
  v4[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v5 = a2;
  [WeakRetained performChanges:v4];
}

uint64_t __80__PXPhotosViewModel_initWithConfiguration_specManager_inlinePlaybackController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 312);
  v4 = a2;
  [v4 setIsInSelectMode:v3];
  v5 = [*(*(a1 + 32) + 1072) initialFilterStateForViewModel:?];
  [v4 setFilterState:v5];

  [*(a1 + 32) _invalidateContentPrivacyState];
  [*(a1 + 32) _invalidateSystemAuthenticationType];
  [*(a1 + 32) _invalidateWantsContentUnavailableUnlockButtonVisible];
  [*(a1 + 32) _invalidateTopBarsStyles];
  [*(a1 + 32) _invalidateUserWantsAspectFitContent];
  [*(a1 + 32) _invalidateAspectFitContent];
  [*(a1 + 32) _invalidateChromeVisibility];
  [*(a1 + 32) _invalidateGridAppearance];
  [*(a1 + 32) _invalidateFooterVisibility];
  [*(a1 + 32) _invalidateEmptyPlaceholderState];
  [*(a1 + 32) _invalidateAvailableLenses];
  [*(a1 + 32) _invalidateCurrentLens];
  v6 = *(a1 + 32);

  return [v6 _invalidateWantsLensControlVisible];
}

@end