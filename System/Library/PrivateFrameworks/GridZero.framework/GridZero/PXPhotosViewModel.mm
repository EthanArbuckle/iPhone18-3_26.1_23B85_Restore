@interface PXPhotosViewModel
- (BOOL)attemptSetInSelectMode:(BOOL)a3;
- (BOOL)canEnterSelectMode;
- (BOOL)canFilterContent;
- (BOOL)canSwipeSelect;
- (BOOL)contentStartsAtEnd;
- (BOOL)handlePrimaryAction:(id)a3;
- (BOOL)initializePreviewHeaderVisibilityWithChangeHandler:(id)a3;
- (BOOL)isScrollDisabledForAxis:(int64_t)a3;
- (BOOL)selectionManagerShouldAvoidEmptySelection:(id)a3;
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
- (PXPhotosViewModel)initWithConfiguration:(id)a3 specManager:(id)a4 inlinePlaybackController:(id)a5;
- (UIEdgeInsets)additionalAspectFitEdgeMargins;
- (UIEdgeInsets)contentBackgroundInsets;
- (_NSRange)yearsMonthsZoomStepRange;
- (id)_indexPathsForAssetCollectionReference:(id)a3;
- (id)customExcludedActionTypesProvider;
- (id)objc_customExcludedActionTypesProvider;
- (id)selectionManager:(id)a3 validateSnapshot:(id)a4;
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
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)a3;
- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)a3;
- (void)clickSelectAssetReference:(id)a3 updateCursorIndexPath:(BOOL)a4;
- (void)clickSelectIndexPath:(PXSimpleIndexPath *)a3 updateCursorIndexPath:(BOOL)a4;
- (void)deselectAll;
- (void)didPerformChanges;
- (void)markContentAsViewed;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)previewHeaderVisibilityChanged:(BOOL)a3;
- (void)requestCloseFromPresentationEnvironment:(id)a3 handler:(id)a4;
- (void)resetToInitialSelectionAndFilteringState;
- (void)selectAll;
- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)a3;
- (void)setAllowedChromeItems:(unint64_t)a3;
- (void)setAllowsEmptyPlaceholderBehavior:(BOOL)a3;
- (void)setAllowsPreviewHeader:(BOOL)a3;
- (void)setAllowsSearch:(BOOL)a3;
- (void)setAllowsShareAllAction:(BOOL)a3;
- (void)setAllowsSortAndFilterMenu:(BOOL)a3;
- (void)setAlwaysRequiresLightChrome:(BOOL)a3;
- (void)setAppearState:(int64_t)a3;
- (void)setAspectFitContent:(BOOL)a3;
- (void)setAspectRatioToggleAllowed:(BOOL)a3 forReason:(id)a4;
- (void)setAvailableLenses:(id)a3;
- (void)setCaptionsVisible:(BOOL)a3;
- (void)setChromeItemsToBeConsideredVisibleForLayoutPurpose:(unint64_t)a3;
- (void)setChromeOpacity:(double)a3;
- (void)setChromeTitleFloatingFraction:(double)a3;
- (void)setContainerFallbackTitle:(id)a3;
- (void)setContainerTitle:(id)a3;
- (void)setContentBackgroundInsets:(UIEdgeInsets)a3;
- (void)setContentBackgroundOpacity:(double)a3;
- (void)setContentBelowTitle:(BOOL)a3;
- (void)setContentPrivacyState:(int64_t)a3;
- (void)setCplActionManagerClass:(Class)a3;
- (void)setCurrentDataSource:(id)a3;
- (void)setCurrentLens:(id)a3;
- (void)setCustomBannerView:(id)a3;
- (void)setCustomExcludedActionTypesProvider:(id)a3;
- (void)setCustomLeadingAccessoryBarButtonItems:(id)a3;
- (void)setCustomLeadingAccessoryView:(id)a3;
- (void)setCustomTrailingAccessoryBarButtonItems:(id)a3;
- (void)setCustomTrailingAccessoryView:(id)a3;
- (void)setDesiredCurationLength:(int64_t)a3;
- (void)setDismissRequested:(BOOL)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setDropTargetAssetReference:(id)a3;
- (void)setEffectProvider:(id)a3;
- (void)setEmptyPlaceholderState:(int64_t)a3;
- (void)setEnterSelectModeAllowed:(BOOL)a3 forReason:(id)a4;
- (void)setFaceModeEnabled:(BOOL)a3;
- (void)setFilterState:(id)a3;
- (void)setFloatingTitleOpacity:(double)a3;
- (void)setFooterHasImportantInformation:(BOOL)a3;
- (void)setFooterVisibilityStyle:(int64_t)a3;
- (void)setHasScrollableContent:(BOOL)a3;
- (void)setHeaderFloatingThresholdOffset:(double)a3;
- (void)setHeaderSubtitle:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setHeaderTitleTopInset:(double)a3;
- (void)setHideSurroundingContent:(BOOL)a3 forReason:(id)a4;
- (void)setHidesDurationLabelBadge:(BOOL)a3;
- (void)setHidesNavbar:(BOOL)a3;
- (void)setHidesToolbar:(BOOL)a3;
- (void)setIsAppearing:(BOOL)a3;
- (void)setIsInCompactMode:(BOOL)a3;
- (void)setIsInSelectMode:(BOOL)a3;
- (void)setIsInteractiveZooming:(BOOL)a3;
- (void)setLastPreferredScrollDetent:(id)a3;
- (void)setLastTargetPreferredScrollDetent:(id)a3;
- (void)setModalInPresentation:(BOOL)a3 forReason:(id)a4;
- (void)setNavigationBarBottomPaletteContentView:(id)a3;
- (void)setNavigationBarBottomPaletteDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setNoContentPlaceholderFallbackMessage:(id)a3;
- (void)setNoContentPlaceholderFallbackTitle:(id)a3;
- (void)setNumberOfZoomSteps:(int64_t)a3;
- (void)setOneUpPresentationAllowed:(BOOL)a3 forReason:(id)a4;
- (void)setRequiresLightTopBars:(BOOL)a3;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setScrollDisabled:(BOOL)a3 axis:(int64_t)a4 forReason:(id)a5;
- (void)setScrolledToBottom:(BOOL)a3;
- (void)setScrolledToTop:(BOOL)a3;
- (void)setSearch_overriddenAllAssetsCount:(id)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)a3;
- (void)setShouldAnimateZooming:(BOOL)a3;
- (void)setShowLoadingPlaceholderWhenEmpty:(BOOL)a3;
- (void)setShowingAlternateContent:(BOOL)a3;
- (void)setSupportsAspectRatioToggle:(BOOL)a3;
- (void)setSystemAuthenticationType:(int64_t)a3;
- (void)setTapbackStatusManager:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleBackgroundOpacity:(double)a3;
- (void)setTopDismissAreaHeight:(id)a3;
- (void)setUserWantsAspectFitContent:(id)a3;
- (void)setViewBasedDecorationsEnabled:(BOOL)a3;
- (void)setViewDelegate:(id)a3;
- (void)setWantsContentFilterVisible:(BOOL)a3;
- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)a3;
- (void)setWantsFooterVisible:(BOOL)a3;
- (void)setWantsImmediateBarsUpdate:(BOOL)a3;
- (void)setWantsLensControlVisible:(BOOL)a3;
- (void)setWantsManualNavigationBottomBarPaletteControl:(BOOL)a3;
- (void)setWantsNavbarVisible:(BOOL)a3;
- (void)setWantsPinchEffect:(BOOL)a3;
- (void)setWantsTabBarVisible:(BOOL)a3;
- (void)setWantsToolbarVisible:(BOOL)a3;
- (void)setYearsMonthsZoomStepRange:(_NSRange)a3;
- (void)setZoomAnchorAssetReference:(id)a3;
- (void)setZoomStep:(double)a3;
- (void)setZoomStep:(double)a3 isInteractive:(BOOL)a4 shouldAnimate:(BOOL)a5 anchorAssetReference:(id)a6;
- (void)swift_actionMenuVisibilityChangedToVisible:(BOOL)a3;
- (void)swift_didPerformChanges;
- (void)swift_initWithConfiguration:(id)a3;
- (void)toggleSelectionForAssetCollectionReference:(id)a3;
- (void)toggleSelectionForAssetReference:(id)a3 updateCursorIndexPath:(BOOL)a4;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3 updateCursorIndexPath:(BOOL)a4;
@end

@implementation PXPhotosViewModel

- (void)swift_initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AC0690C(v4);
}

- (void)swift_didPerformChanges
{
  v2 = self;
  sub_21AC070EC();
}

- (BOOL)initializePreviewHeaderVisibilityWithChangeHandler:(id)a3
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  v7 = sub_21AC07138();

  return v7 & 1;
}

- (BOOL)supportsTogglingSortOrder
{
  v2 = self;
  v3 = sub_21AC07464();

  return v3 & 1;
}

- (BOOL)supportsZooming
{
  v2 = self;
  v3 = sub_21AC074D4();

  return v3;
}

- (id)objc_customExcludedActionTypesProvider
{
  v2 = self;
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

- (void)previewHeaderVisibilityChanged:(BOOL)a3
{
  v4 = self;
  sub_21AC07768(a3);
}

- (void)swift_actionMenuVisibilityChangedToVisible:(BOOL)a3
{
  v4 = self;
  sub_21AC07B08(a3);
}

- (BOOL)handlePrimaryAction:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_21AC07C1C(v4);

  return self & 1;
}

- (void)requestCloseFromPresentationEnvironment:(id)a3 handler:(id)a4
{
  sub_21AC6F094();
  sub_21AC6F084();
  sub_21AC6F074();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  _Block_copy(v7);
  swift_unknownObjectRetain();
  v8 = self;
  sub_21AC081E0(a3, v8, v7);
  _Block_release(v7);

  swift_unknownObjectRelease();
}

- (id)customExcludedActionTypesProvider
{
  v2 = self;
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

- (void)setCustomExcludedActionTypesProvider:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
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

- (BOOL)selectionManagerShouldAvoidEmptySelection:(id)a3
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

- (id)selectionManager:(id)a3 validateSnapshot:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ([(PXPhotosViewModel *)self viewDelegateRespondsTo:0x100000])
  {
    v7 = [(PXPhotosViewModel *)self viewDelegate];
    v6 = [v7 photosViewController:0 validateSelectionSnapshot:v5];
  }

  return v6;
}

- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__PXPhotosViewModel_assetsDataSourceManagerDidFinishLoadingInitialDataSource___block_invoke;
  v3[3] = &unk_278298E60;
  v3[4] = self;
  [(PXPhotosViewModel *)self performChanges:v3];
}

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__PXPhotosViewModel_assetsDataSourceManagerDidFinishBackgroundFetching___block_invoke;
  v3[3] = &unk_278298E60;
  v3[4] = self;
  [(PXPhotosViewModel *)self performChanges:v3];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (DataSourceManagerObservationContext == a5 || SelectionManagerObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = v9;
    [(PXPhotosViewModel *)self _updateDataSourceDependentProperties];
    goto LABEL_13;
  }

  if (ViewModelHelperObservationContext != a5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel.m" lineNumber:1950 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    [(PXPhotosViewModel *)self performChanges:&__block_literal_global_147];
    v9 = v11;
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [(PXPhotosViewModel *)self performChanges:&__block_literal_global_145];
  v9 = v11;
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v6 & 4) != 0)
  {
LABEL_12:
    [(PXPhotosViewModel *)self performChanges:&__block_literal_global_149];
LABEL_13:
    v9 = v11;
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

- (void)setViewDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_viewDelegate, v4);
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

  v3 = [(PXPhotosViewModel *)self currentDataSource];
  v4 = [v3 startsAtEnd];

  return v4;
}

- (void)resetToInitialSelectionAndFilteringState
{
  if ([(PXPhotosViewModel *)self allowsSelectModeToggle])
  {
    [(PXPhotosViewModel *)self attemptSetInSelectMode:[(PXPhotosViewModel *)self startsInSelectMode]];
  }

  v4 = [(PXPhotosViewModel *)self viewModelHelper];
  v3 = [v4 initialFilterStateForViewModel:self];
  [(PXPhotosViewModel *)self setFilterState:v3];
}

- (void)setNoContentPlaceholderFallbackMessage:(id)a3
{
  v5 = a3;
  if (self->_noContentPlaceholderFallbackMessage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_noContentPlaceholderFallbackMessage, a3);
    [(PXPhotosViewModel *)self signalChange:0x8000000000000];
    v5 = v6;
  }
}

- (void)setNoContentPlaceholderFallbackTitle:(id)a3
{
  v5 = a3;
  if (self->_noContentPlaceholderFallbackTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_noContentPlaceholderFallbackTitle, a3);
    [(PXPhotosViewModel *)self signalChange:0x8000000000000];
    v5 = v6;
  }
}

- (void)setEffectProvider:(id)a3
{
  aBlock = a3;
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

- (void)setContentBackgroundInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setContentBackgroundOpacity:(double)a3
{
  if (self->_contentBackgroundOpacity != a3)
  {
    self->_contentBackgroundOpacity = a3;
    [(PXPhotosViewModel *)self signalChange:0x20000000000000];
  }
}

- (void)setTitleBackgroundOpacity:(double)a3
{
  if (self->_titleBackgroundOpacity != a3)
  {
    self->_titleBackgroundOpacity = a3;
    [(PXPhotosViewModel *)self signalChange:0x800000000];
  }
}

- (void)setFloatingTitleOpacity:(double)a3
{
  if (self->_floatingTitleOpacity != a3)
  {
    self->_floatingTitleOpacity = a3;
    self->_wantsFloatingTitle = PXFloatEqualToFloatWithTolerance() ^ 1;

    [(PXPhotosViewModel *)self signalChange:0x100000000];
  }
}

- (void)setHeaderFloatingThresholdOffset:(double)a3
{
  if (self->_headerFloatingThresholdOffset != a3)
  {
    self->_headerFloatingThresholdOffset = a3;
    [(PXPhotosViewModel *)self signalChange:0x100000000];
  }
}

- (void)setWantsPinchEffect:(BOOL)a3
{
  if (self->_wantsPinchEffect != a3)
  {
    self->_wantsPinchEffect = a3;
    [(PXPhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setReverseSortOrder:(BOOL)a3
{
  v3 = a3;
  if (![(PXPhotosViewModel *)self supportsTogglingSortOrder])
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel.m" lineNumber:1764 description:@"Toggling sort order is not supported"];
  }

  if (self->_reverseSortOrder != v3)
  {
    self->_reverseSortOrder = v3;
    v6 = [(PXPhotosViewModel *)self dataSourceManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__PXPhotosViewModel_setReverseSortOrder___block_invoke;
    v8[3] = &__block_descriptor_33_e69_v16__0__PXAssetsDataSourceManager_PXMutableAssetsDataSourceManager__8l;
    v9 = v3;
    [v6 performChanges:v8];

    [(PXPhotosViewModel *)self signalChange:0x8000000];
  }
}

- (void)setFilterState:(id)a3
{
  v4 = a3;
  if (self->_filterState != v4)
  {
    v7 = v4;
    if (([(PXFilterState *)v4 isEqual:?]& 1) == 0)
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

- (void)setCaptionsVisible:(BOOL)a3
{
  if (self->_captionsVisible != a3)
  {
    self->_captionsVisible = a3;
    [(PXPhotosViewModel *)self signalChange:2048];
  }
}

- (void)setWantsImmediateBarsUpdate:(BOOL)a3
{
  if (self->_wantsImmediateBarsUpdate != a3)
  {
    self->_wantsImmediateBarsUpdate = a3;
  }
}

- (void)setHidesDurationLabelBadge:(BOOL)a3
{
  if (self->_hidesDurationLabelBadge != a3)
  {
    self->_hidesDurationLabelBadge = a3;
    [(PXPhotosViewModel *)self signalChange:1024];
  }
}

- (void)setViewBasedDecorationsEnabled:(BOOL)a3
{
  if (self->_viewBasedDecorationsEnabled != a3)
  {
    self->_viewBasedDecorationsEnabled = a3;
    [(PXPhotosViewModel *)self signalChange:1024];
  }
}

- (void)setEmptyPlaceholderState:(int64_t)a3
{
  if (self->_emptyPlaceholderState != a3)
  {
    self->_emptyPlaceholderState = a3;
    [(PXPhotosViewModel *)self signalChange:0x200000000];
  }
}

- (void)setFooterVisibilityStyle:(int64_t)a3
{
  if (self->_footerVisibilityStyle != a3)
  {
    self->_footerVisibilityStyle = a3;
    [(PXPhotosViewModel *)self _updateFooterVisibility];
  }
}

- (void)setFooterHasImportantInformation:(BOOL)a3
{
  if (self->_footerHasImportantInformation != a3)
  {
    self->_footerHasImportantInformation = a3;
    [(PXPhotosViewModel *)self signalChange:128];
  }
}

- (void)setWantsFooterVisible:(BOOL)a3
{
  if (self->_wantsFooterVisible != a3)
  {
    self->_wantsFooterVisible = a3;
    [(PXPhotosViewModel *)self signalChange:64];
  }
}

- (void)setWantsContentFilterVisible:(BOOL)a3
{
  if (self->_wantsContentFilterVisible != a3)
  {
    self->_wantsContentFilterVisible = a3;
    [(PXPhotosViewModel *)self signalChange:16];
  }
}

- (void)setLastTargetPreferredScrollDetent:(id)a3
{
  v8 = a3;
  v5 = self->_lastTargetPreferredScrollDetent;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXScrollDetent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lastTargetPreferredScrollDetent, a3);
      [(PXPhotosViewModel *)self signalChange:0x800000000000000];
    }
  }
}

- (void)setLastPreferredScrollDetent:(id)a3
{
  v8 = a3;
  v5 = self->_lastPreferredScrollDetent;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXScrollDetent *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_lastPreferredScrollDetent, a3);
      [(PXPhotosViewModel *)self signalChange:0x800000000000000];
    }
  }
}

- (void)setDesiredCurationLength:(int64_t)a3
{
  if (self->_desiredCurationLength != a3)
  {
    self->_desiredCurationLength = a3;
    [(PXPhotosViewModel *)self _invalidateAssetsDataSourceManager];

    [(PXPhotosViewModel *)self signalChange:0x200000000000];
  }
}

- (void)setWantsLensControlVisible:(BOOL)a3
{
  if (self->_wantsLensControlVisible != a3)
  {
    self->_wantsLensControlVisible = a3;
    [(PXPhotosViewModel *)self _invalidateFooterVisibility];

    [(PXPhotosViewModel *)self signalChange:0x80000000000];
  }
}

- (void)setAvailableLenses:(id)a3
{
  v4 = a3;
  availableLenses = self->_availableLenses;
  if (availableLenses != v4)
  {
    v8 = v4;
    if (([(NSArray *)availableLenses isEqual:v4]& 1) == 0)
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

- (void)setCurrentLens:(id)a3
{
  v8 = a3;
  v5 = self->_currentLens;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXPhotosViewLens *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLens, a3);
      [(PXPhotosViewModel *)self signalChange:0x100000000000];
      [(PXPhotosViewModel *)self _invalidateAssetsDataSourceManager];
      [(PXPhotosViewModel *)self _invalidateFooterVisibility];
      [(PXPhotosViewModel *)self _invalidateAspectFitContent];
    }
  }
}

- (void)setWantsContentUnavailableUnlockButtonVisible:(BOOL)a3
{
  if (self->_wantsContentUnavailableUnlockButtonVisible != a3)
  {
    self->_wantsContentUnavailableUnlockButtonVisible = a3;
    [(PXPhotosViewModel *)self signalChange:0x20000000000];
  }
}

- (void)setSystemAuthenticationType:(int64_t)a3
{
  if (self->_systemAuthenticationType != a3)
  {
    self->_systemAuthenticationType = a3;
    [(PXPhotosViewModel *)self signalChange:0x10000000000];
  }
}

- (void)setContentPrivacyState:(int64_t)a3
{
  if (self->_contentPrivacyState != a3)
  {
    self->_contentPrivacyState = a3;
    [(PXPhotosViewModel *)self signalChange:0x400000000];
  }
}

- (void)setRequiresLightTopBars:(BOOL)a3
{
  if (self->_requiresLightTopBars != a3)
  {
    self->_requiresLightTopBars = a3;
    [(PXPhotosViewModel *)self signalChange:0x1000000];
  }
}

- (void)setShowingAlternateContent:(BOOL)a3
{
  if (self->_showingAlternateContent != a3)
  {
    self->_showingAlternateContent = a3;
    [(PXPhotosViewModel *)self signalChange:0x800000];

    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];
  }
}

- (void)setContentBelowTitle:(BOOL)a3
{
  if (self->_contentBelowTitle != a3)
  {
    self->_contentBelowTitle = a3;
    [(PXPhotosViewModel *)self signalChange:0x400000];

    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];
  }
}

- (void)setContainerFallbackTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_containerFallbackTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_containerFallbackTitle, a3);
    [(PXPhotosViewModel *)self signalChange:0x80000000000000];
  }
}

- (void)setContainerTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_containerTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_containerTitle, a3);
    [(PXPhotosViewModel *)self signalChange:0x80000000000000];
  }
}

- (void)setWantsToolbarVisible:(BOOL)a3
{
  if (self->_wantsToolbarVisible != a3)
  {
    self->_wantsToolbarVisible = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setWantsNavbarVisible:(BOOL)a3
{
  if (self->_wantsNavbarVisible != a3)
  {
    self->_wantsNavbarVisible = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setWantsTabBarVisible:(BOOL)a3
{
  if (self->_wantsTabBarVisible != a3)
  {
    self->_wantsTabBarVisible = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setFaceModeEnabled:(BOOL)a3
{
  if (self->_faceModeEnabled != a3)
  {
    self->_faceModeEnabled = a3;
    [(PXPhotosViewModel *)self signalChange:0x40000000000];
  }
}

- (void)setSupportsAspectRatioToggle:(BOOL)a3
{
  if (self->_supportsAspectRatioToggle != a3)
  {
    self->_supportsAspectRatioToggle = a3;
    [(PXPhotosViewModel *)self signalChange:0x80000];
  }
}

- (void)setZoomStep:(double)a3 isInteractive:(BOOL)a4 shouldAnimate:(BOOL)a5 anchorAssetReference:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  [(PXPhotosViewModel *)self setZoomStep:a3];
  [(PXPhotosViewModel *)self setIsInteractiveZooming:v7];
  [(PXPhotosViewModel *)self setShouldAnimateZooming:v6];
  [(PXPhotosViewModel *)self setZoomAnchorAssetReference:v10];
}

- (void)setZoomAnchorAssetReference:(id)a3
{
  v5 = a3;
  if (self->_zoomAnchorAssetReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_zoomAnchorAssetReference, a3);
    [(PXPhotosViewModel *)self signalChange:0x20000];
    v5 = v6;
  }
}

- (void)setShouldAnimateZooming:(BOOL)a3
{
  if (self->_shouldAnimateZooming != a3)
  {
    self->_shouldAnimateZooming = a3;
  }
}

- (void)setIsInteractiveZooming:(BOOL)a3
{
  if (self->_isInteractiveZooming != a3)
  {
    self->_isInteractiveZooming = a3;
    [(PXPhotosViewModel *)self signalChange:0x40000];
  }
}

- (void)setYearsMonthsZoomStepRange:(_NSRange)a3
{
  if (self->_yearsMonthsZoomStepRange.location != a3.location || self->_yearsMonthsZoomStepRange.length != a3.length)
  {
    self->_yearsMonthsZoomStepRange = a3;
    [(PXPhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setNumberOfZoomSteps:(int64_t)a3
{
  if (self->_numberOfZoomSteps != a3)
  {
    self->_numberOfZoomSteps = a3;
    [(PXPhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setZoomStep:(double)a3
{
  if (self->_zoomStep != a3)
  {
    self->_zoomStep = a3;
    [(PXPhotosViewModel *)self signalChange:0x10000];

    [(PXPhotosViewModel *)self _invalidateGridAppearance];
  }
}

- (void)setUserWantsAspectFitContent:(id)a3
{
  v4 = a3;
  userWantsAspectFitContent = self->_userWantsAspectFitContent;
  if (userWantsAspectFitContent != v4)
  {
    v12 = v4;
    if (([(NSNumber *)userWantsAspectFitContent isEqual:v4]& 1) == 0)
    {
      v6 = [(NSNumber *)v12 copy];
      v7 = self->_userWantsAspectFitContent;
      self->_userWantsAspectFitContent = v6;

      v8 = [(PXPhotosViewModel *)self specManager];
      v9 = [v8 spec];
      if ([v9 userInterfaceIdiom] == 2)
      {
        v10 = [(PXPhotosViewModel *)self isInCompactMode];

        if (v10)
        {
          v11 = [MEMORY[0x277D3CE30] standardUserDefaults];
          [v11 setPhotosGridAspectFitInCompact:v12];
LABEL_8:

          [(PXPhotosViewModel *)self signalChange:0x4000000];
          [(PXPhotosViewModel *)self _invalidateAspectFitContent];
          goto LABEL_9;
        }
      }

      else
      {
      }

      v11 = [MEMORY[0x277D3CE30] standardUserDefaults];
      [v11 setPhotosGridAspectFit:v12];
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

  v5 = [(PXPhotosViewModel *)self specManager];
  v6 = [v5 spec];
  if ([v6 userInterfaceIdiom] != 4 && -[PXPhotosViewModel isInCompactMode](self, "isInCompactMode") || -[PXPhotosViewModel gridStyle](self, "gridStyle") == 1 || (-[PXPhotosViewModel itemAspectRatio](self, "itemAspectRatio"), v7 != 1.0))
  {
    v3 = 0;
  }

  else
  {
    v8 = [(PXPhotosViewModel *)self specManager];
    v9 = [v8 spec];
    v3 = [v9 userInterfaceIdiom] != 5;
  }

  return v3;
}

- (void)setTopDismissAreaHeight:(id)a3
{
  self->_topDismissAreaHeight = [a3 copy];

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

- (void)setChromeTitleFloatingFraction:(double)a3
{
  if (self->_chromeTitleFloatingFraction != a3)
  {
    self->_chromeTitleFloatingFraction = a3;
    [(PXPhotosViewModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setChromeItemsToBeConsideredVisibleForLayoutPurpose:(unint64_t)a3
{
  if (self->_chromeItemsToBeConsideredVisibleForLayoutPurpose != a3)
  {
    self->_chromeItemsToBeConsideredVisibleForLayoutPurpose = a3;
    [(PXPhotosViewModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setAllowedChromeItems:(unint64_t)a3
{
  if (self->_allowedChromeItems != a3)
  {
    self->_allowedChromeItems = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setAlwaysRequiresLightChrome:(BOOL)a3
{
  if (self->_alwaysRequiresLightChrome != a3)
  {
    self->_alwaysRequiresLightChrome = a3;
    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];
  }
}

- (void)setChromeOpacity:(double)a3
{
  if (self->_chromeOpacity != a3)
  {
    self->_chromeOpacity = a3;
    [(PXPhotosViewModel *)self signalChange:0x2000000000000000];
  }
}

- (void)setAdditionalAspectFitEdgeMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setAspectFitContent:(BOOL)a3
{
  if (self->_aspectFitContent != a3)
  {
    self->_aspectFitContent = a3;
    [(PXPhotosViewModel *)self signalChange:0x4000];
  }
}

- (PXAssetReference)firstSelectedAssetReference
{
  v3 = [(PXPhotosViewModel *)self selectionManager];
  v4 = [v3 selectionSnapshot];

  v11 = 0u;
  v12 = 0u;
  if (v4 && (([v4 firstSelectedIndexPath], v11 != *MEMORY[0x277D3CF78]) ? (v5 = v12 == 0x7FFFFFFFFFFFFFFFLL) : (v5 = 1), !v5 ? (v6 = *(&v12 + 1) == 0x7FFFFFFFFFFFFFFFLL) : (v6 = 0), v6))
  {
    v8 = [(PXPhotosViewModel *)self currentDataSource];
    v10[0] = v11;
    v10[1] = v12;
    v7 = [v8 assetReferenceAtItemIndexPath:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXAssetReference)singleSelectedAssetReference
{
  v3 = [(PXPhotosViewModel *)self selectionManager];
  v4 = [v3 selectionSnapshot];
  v5 = [v4 selectedIndexPaths];
  if ([v5 count] == 1)
  {
    v6 = [(PXPhotosViewModel *)self firstSelectedAssetReference];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTapbackStatusManager:(id)a3
{
  v5 = a3;
  if (self->_tapbackStatusManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_tapbackStatusManager, a3);
    [(PXPhotosViewModel *)self signalChange:0x4000000000];
    v5 = v6;
  }
}

- (void)setDropTargetAssetReference:(id)a3
{
  v8 = a3;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, a3);
      [(PXPhotosViewModel *)self signalChange:512];
    }
  }
}

- (void)setDraggedAssetReferences:(id)a3
{
  v8 = a3;
  v5 = self->_draggedAssetReferences;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_draggedAssetReferences, a3);
      [(PXPhotosViewModel *)self signalChange:256];
    }
  }
}

- (void)setCplActionManagerClass:(Class)a3
{
  if (self->_cplActionManagerClass != a3)
  {
    objc_storeStrong(&self->_cplActionManagerClass, a3);

    [(PXPhotosViewModel *)self signalChange:0x8000000000];
  }
}

- (void)setSearch_overriddenAllAssetsCount:(id)a3
{
  v5 = a3;
  if (self->_search_overriddenAllAssetsCount != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_search_overriddenAllAssetsCount, a3);
    [(PXPhotosViewModel *)self signalChange:32];
    v5 = v6;
  }
}

- (void)setNavigationBarBottomPaletteDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_navigationBarBottomPaletteDirectionalLayoutMargins.top), vceqq_f64(v4, *&self->_navigationBarBottomPaletteDirectionalLayoutMargins.bottom)))) & 1) == 0)
  {
    self->_navigationBarBottomPaletteDirectionalLayoutMargins = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setWantsManualNavigationBottomBarPaletteControl:(BOOL)a3
{
  if (self->_wantsManualNavigationBottomBarPaletteControl != a3)
  {
    self->_wantsManualNavigationBottomBarPaletteControl = a3;
  }
}

- (void)setNavigationBarBottomPaletteContentView:(id)a3
{
  v5 = a3;
  if (self->_navigationBarBottomPaletteContentView != v5 && ([(UIView *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_navigationBarBottomPaletteContentView, a3);
    [(PXPhotosViewModel *)self signalChange:32];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCustomTrailingAccessoryBarButtonItems:(id)a3
{
  v5 = a3;
  if (self->_customTrailingAccessoryBarButtonItems != v5 && ([(NSArray *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_customTrailingAccessoryBarButtonItems, a3);
    [(PXPhotosViewModel *)self signalChange:32];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCustomLeadingAccessoryBarButtonItems:(id)a3
{
  v5 = a3;
  if (self->_customLeadingAccessoryBarButtonItems != v5 && ([(NSArray *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_customLeadingAccessoryBarButtonItems, a3);
    [(PXPhotosViewModel *)self signalChange:32];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setCustomBannerView:(id)a3
{
  v5 = a3;
  if (self->_customBannerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customBannerView, a3);
    [(PXPhotosViewModel *)self signalChange:32];
    v5 = v6;
  }
}

- (void)setCustomTrailingAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_customTrailingAccessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customTrailingAccessoryView, a3);
    [(PXPhotosViewModel *)self signalChange:32];
    v5 = v6;
  }
}

- (void)setCustomLeadingAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_customLeadingAccessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customLeadingAccessoryView, a3);
    [(PXPhotosViewModel *)self signalChange:32];
    v5 = v6;
  }
}

- (void)setAllowsPreviewHeader:(BOOL)a3
{
  if (self->_allowsPreviewHeader != a3)
  {
    v4 = a3;
    self->_allowsPreviewHeader = a3;
    [(PXPhotosViewModel *)self signalChange:0x800000000000];

    [(PXPhotosViewModel *)self previewHeaderVisibilityChanged:v4];
  }
}

- (void)setHeaderTitleTopInset:(double)a3
{
  if (self->_headerTitleTopInset != a3)
  {
    self->_headerTitleTopInset = a3;
    [(PXPhotosViewModel *)self signalChange:0x10000000];
  }
}

- (void)setHeaderSubtitle:(id)a3
{
  v4 = a3;
  headerSubtitle = self->_headerSubtitle;
  if (headerSubtitle != v4)
  {
    v8 = v4;
    if (([(NSAttributedString *)headerSubtitle isEqual:v4]& 1) == 0)
    {
      v6 = [(NSAttributedString *)v8 copy];
      v7 = self->_headerSubtitle;
      self->_headerSubtitle = v6;

      [(PXPhotosViewModel *)self signalChange:0x80000000000000];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setHeaderTitle:(id)a3
{
  v4 = a3;
  headerTitle = self->_headerTitle;
  if (headerTitle != v4)
  {
    v8 = v4;
    if (([(NSAttributedString *)headerTitle isEqual:v4]& 1) == 0)
    {
      v6 = [(NSAttributedString *)v8 copy];
      v7 = self->_headerTitle;
      self->_headerTitle = v6;

      [(PXPhotosViewModel *)self signalChange:0x80000000000000];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setScrolledToBottom:(BOOL)a3
{
  if (self->_scrolledToBottom != a3)
  {
    self->_scrolledToBottom = a3;
    [(PXPhotosViewModel *)self signalChange:0x100000000000000];
  }
}

- (void)setScrolledToTop:(BOOL)a3
{
  if (self->_scrolledToTop != a3)
  {
    self->_scrolledToTop = a3;
    [(PXPhotosViewModel *)self signalChange:0x80000000];
  }
}

- (void)setHasScrollableContent:(BOOL)a3
{
  if (self->_hasScrollableContent != a3)
  {
    self->_hasScrollableContent = a3;
    [(PXPhotosViewModel *)self signalChange:0x100000];

    [(PXPhotosViewModel *)self _invalidateFooterVisibility];
  }
}

- (void)setDismissRequested:(BOOL)a3
{
  if (self->_dismissRequested != a3)
  {
    self->_dismissRequested = a3;
    [(PXPhotosViewModel *)self signalChange:0x40000000];
  }
}

- (void)setIsAppearing:(BOOL)a3
{
  if (self->_isAppearing != a3)
  {
    self->_isAppearing = a3;
    [(PXPhotosViewModel *)self signalChange:4096];
  }
}

- (void)setAppearState:(int64_t)a3
{
  if (self->_appearState != a3)
  {
    self->_appearState = a3;
    [(PXPhotosViewModel *)self signalChange:4096];

    [(PXPhotosViewModel *)self setIsAppearing:a3 == 1];
  }
}

- (void)setIsInCompactMode:(BOOL)a3
{
  if (self->_isInCompactMode != a3)
  {
    self->_isInCompactMode = a3;
    [(PXPhotosViewModel *)self signalChange:0x2000];
    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
    [(PXPhotosViewModel *)self _invalidateUserWantsAspectFitContent];

    [(PXPhotosViewModel *)self _invalidateAspectFitContent];
  }
}

- (void)setModalInPresentation:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [(PXPhotosViewModel *)self isModalInPresentation];
  modalInPresentationReasons = self->_modalInPresentationReasons;
  if (modalInPresentationReasons)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = self->_modalInPresentationReasons;
    self->_modalInPresentationReasons = v9;

    modalInPresentationReasons = self->_modalInPresentationReasons;
  }

  if (v4)
  {
    [(NSMutableSet *)modalInPresentationReasons addObject:v11];
  }

  else
  {
    [(NSMutableSet *)modalInPresentationReasons removeObject:v11];
  }

  if (v6 != [(PXPhotosViewModel *)self isModalInPresentation])
  {
    [(PXPhotosViewModel *)self signalChange:0x1000000000000000];
  }
}

- (BOOL)isScrollDisabledForAxis:(int64_t)a3
{
  scrollDisabledReasonsByAxis = self->_scrollDisabledReasonsByAxis;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)scrollDisabledReasonsByAxis objectForKeyedSubscript:v4];
  v6 = [v5 count] != 0;

  return v6;
}

- (void)setScrollDisabled:(BOOL)a3 axis:(int64_t)a4 forReason:(id)a5
{
  v6 = a3;
  v17 = a5;
  v8 = [(PXPhotosViewModel *)self isScrollDisabledForAxis:a4];
  scrollDisabledReasonsByAxis = self->_scrollDisabledReasonsByAxis;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v11 = [(NSMutableDictionary *)scrollDisabledReasonsByAxis objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !v6;
  }

  if (!v12)
  {
    v11 = [MEMORY[0x277CBEB58] set];
    v13 = self->_scrollDisabledReasonsByAxis;
    if (!v13)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      v15 = self->_scrollDisabledReasonsByAxis;
      self->_scrollDisabledReasonsByAxis = v14;

      v13 = self->_scrollDisabledReasonsByAxis;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v16];
  }

  if (v6)
  {
    [v11 addObject:v17];
  }

  else
  {
    [v11 removeObject:v17];
  }

  if (v8 != [(PXPhotosViewModel *)self isScrollDisabledForAxis:a4])
  {
    [(PXPhotosViewModel *)self signalChange:0x200000000000000];
  }
}

- (void)setHideSurroundingContent:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXPhotosViewModel *)self hideSurroundingContent];
  hideSurroundingContentForReasons = self->_hideSurroundingContentForReasons;
  if (v4)
  {
    [(NSMutableSet *)hideSurroundingContentForReasons addObject:v6];
  }

  else
  {
    [(NSMutableSet *)hideSurroundingContentForReasons removeObject:v6];
  }

  if (v7 != [(PXPhotosViewModel *)self hideSurroundingContent])
  {

    [(PXPhotosViewModel *)self signalChange:0x20000000];
  }
}

- (void)setAspectRatioToggleAllowed:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  aspectRatioTogglePreventedForReasons = self->_aspectRatioTogglePreventedForReasons;
  v7 = a4;
  v8 = [(NSMutableSet *)aspectRatioTogglePreventedForReasons count];
  v9 = self->_aspectRatioTogglePreventedForReasons;
  if (v4)
  {
    [(NSMutableSet *)v9 removeObject:v7];
  }

  else
  {
    [(NSMutableSet *)v9 addObject:v7];
  }

  if ((v8 != 0) == ([(NSMutableSet *)self->_aspectRatioTogglePreventedForReasons count]== 0))
  {

    [(PXPhotosViewModel *)self _invalidateAspectFitContent];
  }
}

- (void)setOneUpPresentationAllowed:(BOOL)a3 forReason:(id)a4
{
  oneUpPresentationPreventedForReasons = self->_oneUpPresentationPreventedForReasons;
  if (a3)
  {
    [(NSMutableSet *)oneUpPresentationPreventedForReasons removeObject:a4];
  }

  else
  {
    [(NSMutableSet *)oneUpPresentationPreventedForReasons addObject:a4];
  }
}

- (BOOL)canFilterContent
{
  v3 = [(PXPhotosViewModel *)self dataSourceManager];
  if ([v3 supportsFiltering])
  {
    v4 = [(PXPhotosViewModel *)self filterState];
    if ([v4 isFiltering])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(PXPhotosViewModel *)self currentDataSource];
      v5 = [v6 containsAnyItems];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deselectAll
{
  v2 = [(PXPhotosViewModel *)self selectionManager];
  [v2 performChanges:&__block_literal_global_95];
}

- (void)selectAll
{
  v2 = [(PXPhotosViewModel *)self selectionManager];
  [v2 performChanges:&__block_literal_global_93];
}

- (BOOL)canSwipeSelect
{
  v3 = [(PXPhotosViewModel *)self isInSelectMode];
  if (v3)
  {
    LOBYTE(v3) = [(NSMutableSet *)self->_enterSelectModePreventedForReasons count]== 0;
  }

  return v3;
}

- (BOOL)canEnterSelectMode
{
  v3 = [(PXPhotosViewModel *)self allowsSelectModeToggle];
  if (v3)
  {
    LOBYTE(v3) = [(NSMutableSet *)self->_enterSelectModePreventedForReasons count]== 0;
  }

  return v3;
}

- (void)setEnterSelectModeAllowed:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXPhotosViewModel *)self canEnterSelectMode];
  enterSelectModePreventedForReasons = self->_enterSelectModePreventedForReasons;
  if (v4)
  {
    [(NSMutableSet *)enterSelectModePreventedForReasons removeObject:v6];
  }

  else
  {
    [(NSMutableSet *)enterSelectModePreventedForReasons addObject:v6];
  }

  if (v7 != [(PXPhotosViewModel *)self canEnterSelectMode])
  {

    [(PXPhotosViewModel *)self signalChange:0x200000];
  }
}

- (BOOL)attemptSetInSelectMode:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    if (![(PXPhotosViewModel *)self canExitSelectMode])
    {
      goto LABEL_3;
    }

LABEL_6:
    [(PXPhotosViewModel *)self setIsInSelectMode:v3];
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
    if (v3)
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

- (void)setIsInSelectMode:(BOOL)a3
{
  if (self->_isInSelectMode != a3)
  {
    v4 = a3;
    self->_isInSelectMode = a3;
    [(PXPhotosViewModel *)self signalChange:4];
    if (!v4)
    {
      v6 = [(PXPhotosViewModel *)self selectionManager];
      [v6 performChanges:&__block_literal_global_1268];
    }

    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
    [(PXPhotosViewModel *)self _invalidateWantsLensControlVisible];
    [(PXPhotosViewModel *)self setScrollDisabled:v4 axis:2 forReason:@"selectMode"];

    [(PXPhotosViewModel *)self setModalInPresentation:v4 forReason:@"selectMode"];
  }
}

- (void)setSelectionSnapshot:(id)a3
{
  v8 = a3;
  v5 = self->_selectionSnapshot;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXSelectionSnapshot *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, a3);
      [(PXPhotosViewModel *)self signalChange:2];
    }
  }
}

- (void)setCurrentDataSource:(id)a3
{
  v8 = a3;
  v5 = self->_currentDataSource;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetsDataSource *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentDataSource, a3);
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
  v2 = [(PXPhotosViewModel *)self dataSourceManager];
  [v2 markContentAsViewed];
}

- (void)setShouldAlwaysRespectToolbarActionPlacementPreference:(BOOL)a3
{
  if (self->_shouldAlwaysRespectToolbarActionPlacementPreference != a3)
  {
    self->_shouldAlwaysRespectToolbarActionPlacementPreference = a3;
    [(PXPhotosViewModel *)self signalChange:0x2000000000];
  }
}

- (void)setAllowsEmptyPlaceholderBehavior:(BOOL)a3
{
  if (self->_allowsEmptyPlaceholderBehavior != a3)
  {
    self->_allowsEmptyPlaceholderBehavior = a3;
    [(PXPhotosViewModel *)self signalChange:0];

    [(PXPhotosViewModel *)self _invalidateEmptyPlaceholderState];
  }
}

- (void)setShowLoadingPlaceholderWhenEmpty:(BOOL)a3
{
  if (self->_showLoadingPlaceholderWhenEmpty != a3)
  {
    self->_showLoadingPlaceholderWhenEmpty = a3;
    [(PXPhotosViewModel *)self signalChange:0];

    [(PXPhotosViewModel *)self _invalidateEmptyPlaceholderState];
  }
}

- (void)setTitle:(id)a3
{
  v8 = a3;
  v5 = self->_title;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_title, a3);
      [(PXPhotosViewModel *)self signalChange:32];
    }
  }
}

- (void)setAllowsSortAndFilterMenu:(BOOL)a3
{
  if (self->_allowsSortAndFilterMenu != a3)
  {
    self->_allowsSortAndFilterMenu = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setAllowsShareAllAction:(BOOL)a3
{
  if (self->_allowsShareAllAction != a3)
  {
    self->_allowsShareAllAction = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setAllowsSearch:(BOOL)a3
{
  if (self->_allowsSearch != a3)
  {
    self->_allowsSearch = a3;
    [(PXPhotosViewModel *)self signalChange:32];
  }
}

- (void)setHidesToolbar:(BOOL)a3
{
  if (self->_hidesToolbar != a3)
  {
    self->_hidesToolbar = a3;
    [(PXPhotosViewModel *)self signalChange:0];

    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
  }
}

- (void)setHidesNavbar:(BOOL)a3
{
  if (self->_hidesNavbar != a3)
  {
    self->_hidesNavbar = a3;
    [(PXPhotosViewModel *)self signalChange:0];
    [(PXPhotosViewModel *)self _invalidateTopBarsStyles];

    [(PXPhotosViewModel *)self _invalidateChromeVisibility];
  }
}

- (id)_indexPathsForAssetCollectionReference:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v5 = [(PXPhotosViewModel *)self currentDataSource];
  v6 = v5;
  if (v5)
  {
    [v5 indexPathForAssetCollectionReference:v4];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v7 = [(PXPhotosViewModel *)self currentDataSource];
  v10[0] = v11;
  v10[1] = v12;
  v8 = [v7 indexPathSetForItemsInIndexPath:v10];

  return v8;
}

- (void)clickSelectAssetReference:(id)a3 updateCursorIndexPath:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v7 = [(PXPhotosViewModel *)self currentDataSource];
  v8 = v7;
  if (v7)
  {
    [v7 indexPathForAssetReference:v6];
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
      v10 = [(PXPhotosViewModel *)self currentDataSource];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_ERROR, "can't toggle selection for %@ because it's not in %@", buf, 0x16u);
    }
  }

  else
  {
    *buf = v11;
    *&buf[16] = v12;
    [(PXPhotosViewModel *)self clickSelectIndexPath:buf updateCursorIndexPath:v4];
  }
}

- (void)clickSelectIndexPath:(PXSimpleIndexPath *)a3 updateCursorIndexPath:(BOOL)a4
{
  v4 = a4;
  v7 = [(PXPhotosViewModel *)self selectionSnapshot];
  v8 = *&a3->item;
  v27[0] = *&a3->dataSourceIdentifier;
  v27[1] = v8;
  v9 = [v7 isIndexPathSelected:v27];

  if (v9)
  {
    if (!v4)
    {
      return;
    }

    v10 = [(PXPhotosViewModel *)self selectionManager];
    v11 = v10;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __64__PXPhotosViewModel_clickSelectIndexPath_updateCursorIndexPath___block_invoke_2;
    v18 = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v12 = *&a3->item;
    v19 = *&a3->dataSourceIdentifier;
    v20 = v12;
    v13 = &v15;
  }

  else
  {
    v10 = [(PXPhotosViewModel *)self selectionManager];
    v11 = v10;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __64__PXPhotosViewModel_clickSelectIndexPath_updateCursorIndexPath___block_invoke;
    v24 = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v14 = *&a3->item;
    v25 = *&a3->dataSourceIdentifier;
    v26 = v14;
    v13 = &v21;
  }

  [v10 performChanges:{v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
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

- (void)toggleSelectionForAssetCollectionReference:(id)a3
{
  v4 = [(PXPhotosViewModel *)self _indexPathsForAssetCollectionReference:a3];
  v5 = [(PXPhotosViewModel *)self selectionSnapshot];
  v6 = [v5 selectedIndexPaths];
  v7 = [v4 isSubsetOfSet:v6];

  v8 = [(PXPhotosViewModel *)self selectionManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PXPhotosViewModel_toggleSelectionForAssetCollectionReference___block_invoke;
  v10[3] = &unk_278297AE0;
  v12 = v7;
  v11 = v4;
  v9 = v4;
  [v8 performChanges:v10];
}

- (void)toggleSelectionForAssetReference:(id)a3 updateCursorIndexPath:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v7 = [(PXPhotosViewModel *)self currentDataSource];
  v8 = v7;
  if (v7)
  {
    [v7 indexPathForAssetReference:v6];
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
      v10 = [(PXPhotosViewModel *)self currentDataSource];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_ERROR, "can't toggle selection for %@ because it's not in %@", buf, 0x16u);
    }
  }

  else
  {
    *buf = v11;
    *&buf[16] = v12;
    [(PXPhotosViewModel *)self toggleSelectionForIndexPath:buf updateCursorIndexPath:v4];
  }
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v4[0] = *&a3->dataSourceIdentifier;
  v4[1] = v3;
  [(PXPhotosViewModel *)self toggleSelectionForIndexPath:v4 updateCursorIndexPath:0];
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3 updateCursorIndexPath:(BOOL)a4
{
  v7 = [(PXPhotosViewModel *)self selectionSnapshot];
  v8 = *&a3->item;
  v17[0] = *&a3->dataSourceIdentifier;
  v17[1] = v8;
  v9 = [v7 isIndexPathSelected:v17];

  v10 = [(PXPhotosViewModel *)self selectionManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PXPhotosViewModel_toggleSelectionForIndexPath_updateCursorIndexPath___block_invoke;
  v12[3] = &__block_descriptor_66_e37_v16__0___PXMutableSelectionManager__8l;
  v15 = v9;
  v11 = *&a3->item;
  v13 = *&a3->dataSourceIdentifier;
  v14 = v11;
  v16 = a4;
  [v10 performChanges:v12];
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
    v4 = [(PXPhotosViewModel *)self currentDataSource];
    v5 = [v4 containerCollection];

    if ([v5 px_isSmartAlbum])
    {
      if ([v5 px_isRecentlyDeletedSmartAlbum])
      {
        selectionContext = 21;
LABEL_14:

        return selectionContext;
      }

      v6 = [v5 px_isRecoveredSmartAlbum] == 0;
      v7 = 27;
      v8 = 22;
    }

    else
    {
      if ([v5 px_isMoment])
      {
        selectionContext = 14;
        goto LABEL_14;
      }

      if ([v5 px_isImportSessionCollection] & 1) != 0 || (objc_msgSend(v5, "px_isImportHistoryCollection"))
      {
        selectionContext = 6;
        goto LABEL_14;
      }

      if ([v5 px_isContentSyndicationAlbum])
      {
        selectionContext = 29;
        goto LABEL_14;
      }

      if ([(PXPhotosViewModel *)self configuredSectionHeaderStyle]== 9)
      {
        selectionContext = 23;
        goto LABEL_14;
      }

      v6 = [v5 px_isSharedAlbum] == 0;
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
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsLensControlVisible];
}

- (void)_updateCurrentLens
{
  v8 = [(PXPhotosViewModel *)self availableLenses];
  v3 = [(PXPhotosViewModel *)self currentLens];
  if (!v3 || (v4 = v3, -[PXPhotosViewModel currentLens](self, "currentLens"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v8 containsObject:v5], v5, v4, (v6 & 1) == 0))
  {
    v7 = [v8 firstObject];
    [(PXPhotosViewModel *)self setCurrentLens:v7];
  }
}

- (void)_invalidateCurrentLens
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentLens];
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
    v4 = [(PXPhotosViewModel *)self availableLenses];
    v5 = v4;
    if (v4)
    {
      v3 = v4;
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
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAvailableLenses];
}

- (void)_updateWantsContentUnavailableUnlockButtonVisible
{
  v3 = [(PXPhotosViewModel *)self viewModelHelper];
  -[PXPhotosViewModel setWantsContentUnavailableUnlockButtonVisible:](self, "setWantsContentUnavailableUnlockButtonVisible:", [v3 wantsContentUnavailableUnlockButtonVisible]);
}

- (void)_invalidateWantsContentUnavailableUnlockButtonVisible
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsContentUnavailableUnlockButtonVisible];
}

- (void)_updateSystemAuthenticationType
{
  v3 = [(PXPhotosViewModel *)self viewModelHelper];
  v4 = [v3 authenticationType];

  [(PXPhotosViewModel *)self setSystemAuthenticationType:v4];
}

- (void)_invalidateSystemAuthenticationType
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSystemAuthenticationType];
}

- (void)_updateContentPrivacyState
{
  v3 = [(PXPhotosViewModel *)self viewModelHelper];
  v4 = [v3 isLocked];

  [(PXPhotosViewModel *)self setContentPrivacyState:v4];
}

- (void)_invalidateContentPrivacyState
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContentPrivacyState];
}

- (void)_updateEmptyPlaceholderState
{
  v11 = [(PXPhotosViewModel *)self dataSourceManager];
  v3 = [(PXPhotosViewModel *)self contentPrivacyState];
  v4 = [(PXPhotosViewModel *)self currentDataSource];
  v5 = [v4 containsAnyItems];

  v6 = [v11 isLoadingInitialDataSource];
  if (v6 & 1) != 0 || (v5)
  {
    v7 = v3 == 1;
    v8 = 3;
    if (v5)
    {
      v8 = 0;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if ([v11 isBackgroundFetching])
    {
      v7 = v3 == 1;
LABEL_10:
      v8 = 2;
      goto LABEL_11;
    }

    v9 = [(PXPhotosViewModel *)self showLoadingPlaceholderWhenEmpty];
    v7 = v3 == 1;
    if (v9)
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
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateEmptyPlaceholderState];
}

- (void)_updateAssetsDataSourceManager
{
  v4 = [(PXPhotosViewModel *)self filterState];
  if ([v4 isFiltering])
  {
  }

  else
  {
    v5 = [(PXPhotosViewModel *)self ignoreFilterStateWhenNotFiltering];

    if (v5)
    {
      return;
    }
  }

  v6 = [(PXPhotosViewModel *)self selectionSnapshot];
  v7 = [v6 dataSource];

  v8 = [(PXPhotosViewModel *)self visibleAssetCollections];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__1279;
  v37[4] = __Block_byref_object_dispose__1280;
  v9 = [v8 set];
  v38 = [v9 mutableCopy];

  v10 = [(PXPhotosViewModel *)self selectionSnapshot];
  v11 = [v10 selectedIndexPaths];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__PXPhotosViewModel__updateAssetsDataSourceManager__block_invoke;
  v34[3] = &unk_278297A70;
  v36 = v37;
  v12 = v7;
  v35 = v12;
  [v11 enumerateItemIndexSetsUsingBlock:v34];

  v13 = [v12 numberOfSections];
  v14 = [(PXPhotosViewModel *)self filterState];
  v15 = [v14 predicateForUseCase:v13 > 1];

  v16 = [v12 filterPredicate];
  v17 = v15;
  if (v16 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = [v16 isEqual:v17];
  }

  v19 = [v12 includeOthersInSocialGroupAssets];
  v20 = [(PXPhotosViewModel *)self filterState];
  v21 = [v20 includeOthersInSocialGroupAssets];

  v22 = [(PXPhotosViewModel *)self dataSourceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__PXPhotosViewModel__updateAssetsDataSourceManager__block_invoke_2;
  v26[3] = &unk_278297A98;
  v32 = v18 ^ 1;
  v33 = v19 ^ v21;
  v26[4] = self;
  v31 = a2;
  v23 = v12;
  v27 = v23;
  v24 = v17;
  v28 = v24;
  v25 = v8;
  v29 = v25;
  v30 = v37;
  [v22 performChanges:v26];

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
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetsDataSourceManager];
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
    v4 = [(PXPhotosViewModel *)self currentLens];
    v5 = [v4 allowsFooter];
  }

  else
  {
    v5 = 0;
  }

  [(PXPhotosViewModel *)self setWantsFooterVisible:v5];
}

- (void)_invalidateFooterVisibility
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterVisibility];
}

- (void)_updateGridAppearance
{
  v3 = [(PXPhotosViewModel *)self specManager];
  v4 = [v3 spec];
  v9 = [v4 assetsSpec];

  if (([v9 disableConfigurators] & 1) == 0)
  {
    v5 = [(PXPhotosViewModel *)self dataSourceManager];
    v6 = [v5 dataSource];
    v7 = [v9 numberOfGridZoomStepsWithDataSource:v6];

    if ([(PXPhotosViewModel *)self supportsAspectRatioToggle])
    {
      v8 = [v9 supportsGridAspectRatioToggle];
    }

    else
    {
      v8 = 0;
    }

    [(PXPhotosViewModel *)self setNumberOfZoomSteps:v7];
    [(PXPhotosViewModel *)self setSupportsAspectRatioToggle:v8];
  }
}

- (void)_invalidateGridAppearance
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateGridAppearance];
}

- (void)_updateDraggedAssetReferences
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(PXPhotosViewModel *)self currentDataSource];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(PXPhotosViewModel *)self draggedAssetReferences];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [v3 assetReferenceForAssetReference:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDraggedAssetReferences];
}

- (void)_updateContainerFallbackTitle
{
  v3 = [(PXPhotosViewModel *)self currentDataSource];
  v5 = [v3 container];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 localizedFallbackTitle];
    [(PXPhotosViewModel *)self setContainerFallbackTitle:v4];
  }
}

- (void)_invalidateContainerFallbackTitle
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContainerFallbackTitle];
}

- (void)_updateContainerTitle
{
  v3 = [(PXPhotosViewModel *)self currentDataSource];
  v5 = [v3 container];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 localizedTitle];
    [(PXPhotosViewModel *)self setContainerTitle:v4];
  }
}

- (void)_invalidateContainerTitle
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContainerTitle];
}

- (void)_updateChromeVisibility
{
  v3 = [(PXPhotosViewModel *)self allowsChromeManagementBehavior];
  v4 = [(PXPhotosViewModel *)self isEmbedded];
  v5 = [(PXPhotosViewModel *)self isInSelectMode];
  v6 = [(PXPhotosViewModel *)self isInCompactMode];
  if (v3)
  {
    v7 = [(PXPhotosViewModel *)self currentDataSource];
    v8 = [v7 containsAnyItems] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v19 = [(PXPhotosViewModel *)self navBarStyle];
  v9 = ![(PXPhotosViewModel *)self hidesNavbar]&& [(PXPhotosViewModel *)self navBarStyle]!= 8 && [(PXPhotosViewModel *)self navBarStyle]!= 7;
  v10 = [(PXPhotosViewModel *)self contentPrivacyState];
  if ([(PXPhotosViewModel *)self allowsTabBarVisible]&& v3)
  {
    v11 = v8 | !v5;
  }

  else
  {
    v11 = 0;
  }

  if (MEMORY[0x21CEE04B0]())
  {
    if (v10 != 1 && v3)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v14 = v6;
  v15 = !v3;
  v16 = [(PXPhotosViewModel *)self navBarStyle];
  if (v19)
  {
    v17 = v16 == 8;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (((v15 | v8) & 1) != 0 || !v5 && ![(PXPhotosViewModel *)self prefersActionsInToolbar])
  {
    goto LABEL_24;
  }

  if ((v14 | v18))
  {
    if (v10 != 1)
    {
      goto LABEL_35;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v13 = 0;
  if ([(PXPhotosViewModel *)self prefersActionsInToolbar]&& v10 != 1)
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
  [(PXPhotosViewModel *)self setWantsNavbarVisible:(v5 | ~v4 | (v19 == 0)) & v9 & 1];
  [(PXPhotosViewModel *)self setWantsTabBarVisible:v11 & 1];

  [(PXPhotosViewModel *)self setWantsToolbarVisible:v13];
}

- (void)_invalidateChromeVisibility
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChromeVisibility];
}

- (void)_updateAspectFitContent
{
  if (self->_allowsAspectFitToggle && ![(NSMutableSet *)self->_aspectRatioTogglePreventedForReasons count])
  {
    v7 = [(PXPhotosViewModel *)self currentLens];
    v3 = ([v7 defaultSectionBodyStyle] - 5) < 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    v3 = 0;
  }

  [(PXPhotosViewModel *)self setSupportsAspectRatioToggle:v3];
  v4 = [(PXPhotosViewModel *)self shouldAspectFitContentByDefault];
  if (self->_allowsAspectFitToggle)
  {
    v5 = [(PXPhotosViewModel *)self userWantsAspectFitContent];

    if (v5)
    {
      v6 = [(PXPhotosViewModel *)self userWantsAspectFitContent];
      v4 = [v6 BOOLValue];
    }
  }

  [(PXPhotosViewModel *)self setAspectFitContent:v4];
}

- (void)_invalidateAspectFitContent
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAspectFitContent];
}

- (void)_updateUserWantsAspectFitContent
{
  v7 = [MEMORY[0x277D3CE30] standardUserDefaults];
  v3 = [v7 photosGridAspectFit];
  v4 = [(PXPhotosViewModel *)self specManager];
  v5 = [v4 spec];
  if ([v5 userInterfaceIdiom] == 2)
  {
    v6 = [(PXPhotosViewModel *)self isInCompactMode];

    if (!v6)
    {
      goto LABEL_6;
    }

    [v7 photosGridAspectFitInCompact];
    v3 = v4 = v3;
  }

  else
  {
  }

LABEL_6:
  [(PXPhotosViewModel *)self setUserWantsAspectFitContent:v3];
}

- (void)_invalidateUserWantsAspectFitContent
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateUserWantsAspectFitContent];
}

- (void)_updateTopBarsStyles
{
  v3 = ([(PXPhotosViewModel *)self navBarStyle]== 1 || [(PXPhotosViewModel *)self navBarStyle]== 2 || [(PXPhotosViewModel *)self navBarStyle]== 3 || [(PXPhotosViewModel *)self navBarStyle]== 7) && ([(PXPhotosViewModel *)self isContentBelowTitle]|| [(PXPhotosViewModel *)self isEmbedded]) && ![(PXPhotosViewModel *)self isShowingAlternateContent]&& (![(PXPhotosViewModel *)self hidesNavbar]|| [(PXPhotosViewModel *)self wantsModernNavBarButtons]) || [(PXPhotosViewModel *)self alwaysRequiresLightChrome];

  [(PXPhotosViewModel *)self setRequiresLightTopBars:v3];
}

- (void)_invalidateTopBarsStyles
{
  v2 = [(PXPhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTopBarsStyles];
}

- (void)didPerformChanges
{
  v5.receiver = self;
  v5.super_class = PXPhotosViewModel;
  [(PXPhotosViewModel *)&v5 didPerformChanges];
  [(PXPhotosViewModel *)self swift_didPerformChanges];
  v3 = [(PXPhotosViewModel *)self viewModelHelper];
  [v3 viewModelDidChange:self];

  v4 = [(PXPhotosViewModel *)self updater];
  [v4 updateIfNeeded];
}

- (void)_updateDataSourceDependentProperties
{
  v3 = [(PXPhotosViewModel *)self dataSourceManager];
  v4 = [v3 dataSource];

  v5 = [(PXPhotosViewModel *)self selectionManager];
  v6 = [v5 selectionSnapshot];

  v7 = [v6 dataSource];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__PXPhotosViewModel__updateDataSourceDependentProperties__block_invoke;
    v9[3] = &unk_278298C40;
    v10 = v4;
    v11 = v6;
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXPhotosViewModel;
  [(PXPhotosViewModel *)&v3 performChanges:a3];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PXPhotosViewModel *)self currentDataSource];
  v6 = [v3 stringWithFormat:@"<%@:%p currentDataSource:%@>", v4, self, v5];

  return v6;
}

- (PXPhotosViewModel)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosViewModel.m" lineNumber:442 description:{@"%s is not available as initializer", "-[PXPhotosViewModel init]"}];

  abort();
}

- (PXPhotosViewModel)initWithConfiguration:(id)a3 specManager:(id)a4 inlinePlaybackController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  v16 = [v9 appSpecificConfiguration];
  v17 = [v16 createViewModelHelperWithConfiguration:v9 viewModel:v13];
  viewModelHelper = v13->_viewModelHelper;
  v13->_viewModelHelper = v17;

  [(PXPhotosViewModelHelper *)v13->_viewModelHelper applySpecManagerOptions:v10];
  [(PXPhotosViewModelHelper *)v13->_viewModelHelper registerChangeObserver:v13 context:ViewModelHelperObservationContext];
  objc_storeStrong(&v13->_specManager, a4);
  objc_storeWeak(&v13->_inlinePlaybackController, v11);
  v19 = [v9 dataSourceManager];
  dataSourceManager = v13->_dataSourceManager;
  v13->_dataSourceManager = v19;

  v21 = [v9 mediaProvider];
  mediaProvider = v13->_mediaProvider;
  v13->_mediaProvider = v21;

  v23 = [v9 assetCollectionActionManager];
  assetCollectionActionManager = v13->_assetCollectionActionManager;
  v13->_assetCollectionActionManager = v23;

  v25 = [v9 loadingStatusManager];
  loadingStatusManager = v13->_loadingStatusManager;
  v13->_loadingStatusManager = v25;

  v27 = [v9 decorationDataSource];
  decorationDataSource = v13->_decorationDataSource;
  v13->_decorationDataSource = v27;

  v29 = [v9 tapbackStatusManager];
  tapbackStatusManager = v13->_tapbackStatusManager;
  v13->_tapbackStatusManager = v29;

  v31 = [v9 assetImportStatusManager];
  assetImportStatusManager = v13->_assetImportStatusManager;
  v13->_assetImportStatusManager = v31;

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

  v140 = v11;
  v35 = [v9 assetActionManager];
  assetActionManager = v13->_assetActionManager;
  v13->_assetActionManager = v35;

  v37 = [v9 fullscreenOverlayControllers];
  fullscreenOverlayControllers = v13->_fullscreenOverlayControllers;
  v13->_fullscreenOverlayControllers = v37;

  v39 = [v9 customAssetSelectionHandler];
  v40 = [v39 copy];
  customAssetSelectionHandler = v13->_customAssetSelectionHandler;
  v13->_customAssetSelectionHandler = v40;

  v13->_titleMode = [v9 titleMode];
  v42 = [v9 selectionManager];

  v141 = v33;
  v142 = v10;
  if (v42)
  {
    v43 = [v9 selectionManager];
    v44 = [v43 dataSourceManager];
    v45 = v13->_dataSourceManager;

    if (v44 != v45)
    {
      v138 = [MEMORY[0x277CCA890] currentHandler];
      [v138 handleFailureInMethod:a2 object:v13 file:@"PXPhotosViewModel.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"configuration.selectionManager.dataSourceManager == _dataSourceManager"}];
    }

    v46 = [v9 assetActionManager];
    v47 = [v46 selectionManager];
    if (v47)
    {
      v48 = v47;
      v49 = [v9 assetActionManager];
      v50 = [v49 selectionManager];
      v51 = [v9 selectionManager];

      if (v50 == v51)
      {
LABEL_13:
        v52 = [v9 selectionManager];
        goto LABEL_14;
      }

      v46 = [MEMORY[0x277CCA890] currentHandler];
      [v46 handleFailureInMethod:a2 object:v13 file:@"PXPhotosViewModel.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"configuration.assetActionManager.selectionManager == nil || configuration.assetActionManager.selectionManager == configuration.selectionManager"}];
    }

    goto LABEL_13;
  }

  v54 = [v9 assetActionManager];
  v55 = [v54 selectionManager];

  if (v55)
  {
    v56 = [v9 assetActionManager];
    v57 = [v56 selectionManager];
    v58 = [v57 dataSourceManager];
    v59 = [v9 dataSourceManager];

    if (v58 != v59)
    {
      v139 = [MEMORY[0x277CCA890] currentHandler];
      [v139 handleFailureInMethod:a2 object:v13 file:@"PXPhotosViewModel.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"configuration.assetActionManager.selectionManager.dataSourceManager == configuration.dataSourceManager"}];
    }

    v53 = [v9 assetActionManager];
    v60 = [v53 selectionManager];
    selectionManager = v13->_selectionManager;
    v13->_selectionManager = v60;

    goto LABEL_19;
  }

  v52 = [objc_alloc(MEMORY[0x277D3CDE0]) initWithDataSourceManager:v13->_dataSourceManager];
LABEL_14:
  v53 = v13->_selectionManager;
  v13->_selectionManager = v52;
LABEL_19:

  v13->_selectionContext = [v9 selectionContextOverride];
  [(PXAssetActionManager *)v13->_assetActionManager setSelectionManager:v13->_selectionManager];
  v62 = [v9 delegate];
  [(PXPhotosViewModel *)v13 setViewDelegate:v62];

  [(PXAssetsDataSourceManager *)v13->_dataSourceManager registerChangeObserver:v13 context:DataSourceManagerObservationContext];
  [(PXSectionedSelectionManager *)v13->_selectionManager registerChangeObserver:v13 context:SelectionManagerObservationContext];
  v63 = [(PXSectionedSelectionManager *)v13->_selectionManager snapshotValidator];

  if (!v63)
  {
    [(PXSectionedSelectionManager *)v13->_selectionManager setSnapshotValidator:v13];
  }

  v64 = [v9 initialScrollPositionDetentIdentifier];
  v65 = [v64 copy];
  initialScrollPositionDetentIdentifier = v13->_initialScrollPositionDetentIdentifier;
  v13->_initialScrollPositionDetentIdentifier = v65;

  v67 = [(PXAssetsDataSourceManager *)v13->_dataSourceManager dataSource];
  currentDataSource = v13->_currentDataSource;
  v13->_currentDataSource = v67;

  v69 = [(PXSectionedSelectionManager *)v13->_selectionManager selectionSnapshot];
  selectionSnapshot = v13->_selectionSnapshot;
  v13->_selectionSnapshot = v69;

  v71 = objc_alloc_init(MEMORY[0x277CBEB40]);
  visibleAssetCollections = v13->_visibleAssetCollections;
  v13->_visibleAssetCollections = v71;

  v13->_contentStartingPosition = [v9 contentStartingPosition];
  v73 = [v9 decorationViewClass];
  decorationViewClass = v13->_decorationViewClass;
  v13->_decorationViewClass = v73;

  v13->_hidesDurationLabelBadge = [v9 decorationViewClass] != 0;
  v75 = [v9 emptyPlaceholderStatusViewModel];
  emptyPlaceholderStatusViewModel = v13->_emptyPlaceholderStatusViewModel;
  v13->_emptyPlaceholderStatusViewModel = v75;

  v13->_wantsContentFilterVisible = [v9 wantsContentFilterVisible];
  v13->_footerVisibilityStyle = [v9 footerVisibilityStyle];
  v13->_wantsDimmedSelectionStyle = [v9 wantsDimmedSelectionStyle];
  v13->_wantsNumberedSelectionStyle = [v9 wantsNumberedSelectionStyle];
  v13->_wantsFileSizeBadge = [v9 wantsFileSizeBadge];
  v13->_wantsAssetIndexBadge = [v9 wantsAssetIndexBadge];
  v13->_noContentPlaceholderType = [v9 noContentPlaceholderType];
  v13->_wantsDynamicTitles = [v9 wantsDynamicTitles];
  v13->_wantsFooterMask = [v9 wantsFooterMask];
  v13->_hidesAssetCountInFooter = [v9 hidesAssetCountInFooter];
  v13->_wantsCPLStatus = [v9 wantsCPLStatus];
  v13->_wantsRenderingStatus = [v9 wantsRenderingStatus];
  v13->_wantsShareGridButtonVisible = [v9 wantsShareGridButtonVisible];
  v13->_disableAutoPlaybackInOneUp = [v9 disableAutoPlaybackInOneUp];
  v13->_wantsDecorationSpritesHostedInDecoratedSprite = [v9 wantsDecorationSpritesHostedInDecoratedSprite];
  v13->_isEmbedded = [v9 isEmbedded];
  v77 = [v9 bannerControllerProvider];
  bannerControllerProvider = v13->_bannerControllerProvider;
  v13->_bannerControllerProvider = v77;

  v13->_gridStyle = [v9 gridStyle];
  v13->_preferredUserInterfaceStyle = [v9 preferredUserInterfaceStyle];
  v13->_configuredSectionHeaderStyle = [v9 sectionHeaderStyle];
  v13->_configuredSectionBodyStyle = [v9 sectionBodyStyle];
  v13->_wantsSingleRowScrollingLayout = [v9 wantsSingleRowScrollingLayout];
  v79 = [v9 pickerClientBundleIdentifier];
  pickerClientBundleIdentifier = v13->_pickerClientBundleIdentifier;
  v13->_pickerClientBundleIdentifier = v79;

  [v9 itemAspectRatio];
  v13->_itemAspectRatio = v81;
  v13->_showLoadingPlaceholderWhenEmpty = [v9 showLoadingPlaceholderWhenEmpty];
  v82 = [v9 preferredAssetCropDelegate];
  objc_storeWeak(&v13->_preferredAssetCropDelegate, v82);

  v83 = [v9 preferredColumnCountsDelegate];
  objc_storeWeak(&v13->_preferredColumnCountsDelegate, v83);

  v13->_overrideDefaultNumberOfColumns = [v9 overrideDefaultNumberOfColumns];
  v13->_ignoreFilterStateWhenNotFiltering = [v9 ignoreFilterStateWhenNotFiltering];
  v13->_ignoreFilterPredicateAssert = [v9 ignoreFilterPredicateAssert];
  v13->_allowsOneUpPresentation = ([v9 allowedActions] & 0x80) != 0;
  v13->_allowsSearch = ([v9 allowedBehaviors] >> 16) & 1;
  v13->_allowsSortAndFilterMenu = ([v9 allowedBehaviors] & 0x20000) != 0;
  v13->_allowsCurationModeToggle = ([v9 allowedBehaviors] & 0x40000) != 0;
  v13->_allowsShowDetails = ([v9 allowedActions] >> 8) & 1;
  v13->_allowsChromeManagementBehavior = [v9 allowedBehaviors] & 1;
  v13->_allowsInlineAddBehavior = ([v9 allowedBehaviors] & 2) != 0;
  v13->_allowsSelectionUserActivityBehavior = ([v9 allowedBehaviors] & 4) != 0;
  v13->_allowsPopOnContainerDeleteBehavior = ([v9 allowedBehaviors] & 8) != 0;
  v13->_allowsPopOnEmptyBehavior = ([v9 allowedBehaviors] & 0x800) != 0;
  v13->_allowsEmptyPlaceholderBehavior = ([v9 allowedBehaviors] & 0x10) != 0;
  v13->_allowsActionMenuBehavior = ([v9 allowedBehaviors] & 0x20) != 0;
  v13->_allowsDoubleTapBehavior = ([v9 allowedBehaviors] & 0x40) != 0;
  v13->_allowsHoverBehavior = ([v9 allowedBehaviors] & 0x400) != 0;
  v13->_allowsCaptionsInSquareBehavior = ([v9 allowedBehaviors] & 0x1000) != 0;
  v13->_allowsContextMenuCustomization = ([v9 allowedBehaviors] & 0x80) != 0;
  v13->_allowsAccessoriesContextMenuCustomization = ([v9 allowedBehaviors] & 0x200) != 0;
  v13->_allowsMacStyleSelection = ([v9 allowedBehaviors] >> 8) & 1;
  v13->_allowsLensControl = ([v9 allowedBehaviors] & 0x4000) != 0;
  v13->_wantsSelectModeCaptionInContextMenu = [v9 wantsSelectModeCaptionInContextMenu];
  v13->_prefersCurationModeToggleInNavBar = [v9 prefersCurationModeToggleInNavBar];
  v13->_neverShowsLensControl = [v9 containerProvidesSecondaryToolbar];
  v13->_canShowSortButton = ([v9 allowedBehaviors] & 0x8000) != 0;
  v13->_wantsTopBadgesWithViewBasedDecorations = ([v9 allowedBehaviors] & 0x2000) != 0;
  v84 = [(PXAssetsDataSource *)v13->_currentDataSource containerCollection];
  v13->_wantsSensitiveWarningBadgeDecorations = [v84 px_canContainPotentiallySensitiveContent];

  v13->_allowsSelectModeToggle = ([v9 allowedActions] & 0x20) != 0;
  v13->_allowsSelectAllAction = [v9 allowedActions] & 1;
  v85 = +[PXPhotosGridSettings sharedInstance];
  if ([v85 enableAspectFitToggle] && objc_msgSend(v9, "gridStyle") != 1 && (objc_msgSend(v9, "allowedActions") & 0x200) != 0)
  {
    [v9 itemAspectRatio];
    v86 = v137 == 1.0;
  }

  else
  {
    v86 = 0;
  }

  v13->_allowsAspectFitToggle = v86;

  v13->_allowsSlideshowAction = 0;
  v13->_allowsAddAction = ([v9 allowedActions] & 8) != 0;
  v13->_allowsCopyAction = ([v9 allowedActions] & 0x40) != 0;
  v13->_allowsSelectSectionAction = ([v9 allowedActions] & 0x10) != 0;
  v13->_allowsGridAppearanceActions = [v9 allowsGridAppearanceActions];
  v13->_allowsShareAllAction = ([v9 allowedActions] & 0x400) != 0;
  v13->_allowsQuickLookAction = ([v9 allowedActions] & 0x800) != 0;
  v13->_allowsShowMapAction = ([v9 allowedActions] & 0x1000) != 0;
  v13->_allowsPickAssetAction = ([v9 allowedActions] & 2) != 0;
  v13->_allowsDismissAction = ([v9 allowedActions] & 0x2000) != 0;
  v87 = PXCanShowInternalUI();
  LOBYTE(v88) = 0;
  if (v87)
  {
    v88 = ([v9 allowedActions] >> 14) & 1;
  }

  v13->_allowsFileRadarAction = v88;
  v13->_allowsTrashAction = ([v9 allowedActions] & 0x8000) != 0;
  v13->_allowsShareAction = ([v9 allowedActions] & 0x20000000) != 0;
  v13->_allowsAddToLibraryAction = ([v9 allowedActions] >> 16) & 1;
  v13->_allowsSwitchLibraryAction = ([v9 allowedActions] >> 24) & 1;
  v13->_allowsMoveToLibraryAction = ([v9 allowedActions] & 0x2000000) != 0;
  v13->_allowsMoveToPersonalLibraryAction = ([v9 allowedActions] & 0x8000000) != 0;
  v13->_allowsMoveToSharedLibraryAction = ([v9 allowedActions] & 0x4000000) != 0;
  v13->_allowsInfoAction = ([v9 allowedActions] & 0x80000) != 0;
  v13->_allowsCMMActions = ([v9 allowedActions] & 0x20000) != 0;
  v13->_allowsSyndicatedContentFiltering = ([v9 allowedActions] & 0x200000) != 0;
  v13->_allowsContentSyndicationSaveAllAction = ([v9 allowedActions] & 0x40000) != 0;
  v13->_allowsReplyAction = ([v9 allowedActions] & 0x100000) != 0;
  v13->_allowsTapbackAction = ([v9 allowedActions] & 0x400000) != 0;
  v13->_allowsMergeDuplicatesAction = ([v9 allowedActions] & 0x800000) != 0;
  v13->_supportsPeopleActions = ([v9 allowedActions] & 0x10000000) != 0;
  v13->_supportsSocialGroupActions = ([v9 allowedActions] & 0x40000000) != 0;
  v13->_oneUpAssetsViewMode = [v9 oneUpAssetsViewMode];
  v13->_allowsSwipeToSelect = [v9 allowsSwipeToSelect];
  v13->_wantsPinchEffect = PFIsMessagesApp() ^ 1;
  v13->_allowsDragIn = [v9 allowsDragIn];
  v89 = [v9 allowsDragOut];
  v13->_allowsDragOut = v89;
  if (v13->_allowsDragIn && (v89 & 1) == 0)
  {
    v90 = PXAssertGetLog();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_error_impl(&dword_21ABF3000, v90, OS_LOG_TYPE_ERROR, "This drag-in / drag-out configuration is not yet implemented.", &location, 2u);
    }
  }

  v13->_allowsUserDefaults = [v9 allowsUserDefaults];
  v13->_allowsLinkInteractions = [v9 allowsLinkInteractions];
  v13->_allowsMultiSelectMenu = [v9 allowsMultiSelectMenu];
  v13->_lowMemoryMode = [v9 lowMemoryMode];
  v13->_oneUpPresentationOrigin = [v9 oneUpPresentationOrigin];
  v13->_preventShowInAllPhotosAction = [v9 preventShowInAllPhotosAction];
  v13->_wantsOneUpShowInLibraryButton = [v9 wantsOneUpShowInLibraryButton];
  v13->_wantsFooterVisibleImmediately = [v9 wantsFooterVisibleImmediately];
  v13->_wantsFooterVisibleWhenEmpty = [v9 wantsFooterVisibleWhenEmpty];
  v91 = [v9 centerAccessoryActionType];
  v92 = [v91 copy];
  centerAccessoryActionType = v13->_centerAccessoryActionType;
  v13->_centerAccessoryActionType = v92;

  v94 = [v9 trailingAccessoryActionType];
  v95 = [v94 copy];
  trailingAccessoryActionType = v13->_trailingAccessoryActionType;
  v13->_trailingAccessoryActionType = v95;

  v13->_dismissAffordance = [v9 dismissAffordance];
  v97 = [v9 initialNavigationObjectReference];
  initialNavigationObjectReference = v13->_initialNavigationObjectReference;
  v13->_initialNavigationObjectReference = v97;

  v13->_initialNavigationScrollPosition = [v9 initialNavigationScrollPosition];
  v13->_scrollingBehavior = [v9 scrollingBehavior];
  if ([v9 sectionBodyStyle] == 2)
  {
    v99 = PFIsiOSPhotosApp() ^ 1;
  }

  else
  {
    LOBYTE(v99) = 0;
  }

  v13->__shouldMimicSystemChromelessUsingManualScrollEdgeAppearance = v99;
  v13->_contentMode = [v9 contentMode];
  v100 = [MEMORY[0x277D3CE30] standardUserDefaults];
  v101 = [v100 photosGridAspectFit];
  userWantsAspectFitContent = v13->_userWantsAspectFitContent;
  v13->_userWantsAspectFitContent = v101;

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

  v105 = [v9 title];
  v106 = [v105 copy];
  title = v13->_title;
  v13->_title = v106;

  v108 = [v9 containerTitle];
  v109 = [v108 copy];
  containerTitle = v13->_containerTitle;
  v13->_containerTitle = v109;

  v13->_canInvalidateContainerTitle = v13->_containerTitle == 0;
  v13->_floatingTitleOpacity = 1.0;
  v13->_titleBackgroundOpacity = 1.0;
  v13->_wantsFloatingTitle = 1;
  v111 = [v9 footerSubtitle];
  v112 = [v111 copy];
  footerSubtitle = v13->_footerSubtitle;
  v13->_footerSubtitle = v112;

  v114 = [v9 footerLearnMoreURL];
  v115 = [v114 copy];
  footerLearnMoreURL = v13->_footerLearnMoreURL;
  v13->_footerLearnMoreURL = v115;

  v13->_forbiddenBadges = [v9 forbiddenBadges];
  v13->_allowsInteractiveFavoriteBadges = [v9 allowsInteractiveFavoriteBadges];
  v117 = [v9 infoActionHandler];
  infoActionHandler = v13->_infoActionHandler;
  v13->_infoActionHandler = v117;

  v13->_navBarStyle = [v9 navBarStyle];
  v13->_toolbarStyle = [v9 toolbarStyle];
  v13->_shouldOptOutOfChromelessBars = [v9 shouldOptOutOfChromelessBars];
  v119 = +[PXPhotosGridSettings sharedInstance];
  if ([v119 enableTitleLegibilityDimmingFilter])
  {
    navBarStyle = v13->_navBarStyle;

    v121 = v141;
    v10 = v142;
    if (navBarStyle == 1)
    {
      v13->_navBarStyle = 2;
    }
  }

  else
  {

    v121 = v141;
    v10 = v142;
  }

  v13->_wantsModernNavBarButtons = [v9 wantsModernNavBarButtons];
  v13->_wantsAdaptiveSelectModeBarButton = [v9 wantsAdaptiveSelectModeBarButton];
  v13->_chromeOpacity = 1.0;
  v13->_allowedChromeItems = [v9 allowedChromeItems];
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

  v13->_prefersActionsInToolbar = [v9 prefersActionsInToolbar];
  v13->_topBarsAppearanceChangeAnimationDuration = 0.25;
  v130 = [v9 footerViewModel];
  footerViewModel = v13->_footerViewModel;
  v13->_footerViewModel = v130;

  v132 = [v9 badgesModifier];
  badgesModifier = v13->_badgesModifier;
  v13->_badgesModifier = v132;

  v134 = [v10 headerCustomizationModel];
  headerCustomizationModel = v13->_headerCustomizationModel;
  v13->_headerCustomizationModel = v134;

  v13->_useLowMemoryDecode = [v9 useLowMemoryDecode];
  v13->_contentShiftStrategy = [v9 contentShiftStrategy];
  v13->_allowsTabBarVisible = [v9 allowsTabBarVisible];
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

  v13->_hidesNavbar = [v9 wantsNavbarHidden];
  v13->_hidesToolbar = [v9 wantsToolbarHidden];
  v13->_startsInSelectMode = [v9 startsInSelectMode];
  [(PXPhotosViewModel *)v13 swift_initWithConfiguration:v9];
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
  [(PXPhotosViewModelHelper *)v13->_viewModelHelper initializationWillFinishWithConfiguration:v9];
  v13->_isInitializing = 0;

  objc_destroyWeak(&v146);
  objc_destroyWeak(&location);

  v11 = v140;
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