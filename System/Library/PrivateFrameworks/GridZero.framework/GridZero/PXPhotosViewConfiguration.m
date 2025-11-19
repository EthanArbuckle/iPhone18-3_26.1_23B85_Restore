@interface PXPhotosViewConfiguration
- (BOOL)allowsDragAndDrop;
- (PXPhotosPreferredAssetCropDelegate)preferredAssetCropDelegate;
- (PXPhotosPreferredColumnCountsDelegate)preferredColumnCountsDelegate;
- (PXPhotosViewConfiguration)init;
- (PXPhotosViewConfiguration)initWithDataSourceManager:(id)a3 mediaProvider:(id)a4 selectionManager:(id)a5 assetActionManager:(id)a6 assetCollectionActionManager:(id)a7;
- (PXPhotosViewDelegate)delegate;
- (id)_appSpecificConfigurationLoadIfNeeded:(BOOL)a3;
- (id)adjustedExtendedTraitCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)preferredBackgroundStyle;
- (void)copySwiftPropertiesFromConfiguration:(id)a3;
- (void)setAllowsDragAndDrop:(BOOL)a3;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)setPreferredBackgroundStyle:(int64_t)a3;
@end

@implementation PXPhotosViewConfiguration

- (void)copySwiftPropertiesFromConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AC023A0();
}

- (id)adjustedExtendedTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AC02614(v4);

  return v4;
}

- (int64_t)preferredBackgroundStyle
{
  v2 = self;
  v3 = sub_21AC0271C();

  return v3;
}

- (void)setPreferredBackgroundStyle:(int64_t)a3
{
  v3 = self;
  sub_21AC02850();
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

- (PXPhotosViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_appSpecificConfigurationLoadIfNeeded:(BOOL)a3
{
  if (self->_appSpecificConfiguration)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(PXPhotosViewConfiguration *)self gridZero_createAppSpecificConfiguration];
    appSpecificConfiguration = self->_appSpecificConfiguration;
    self->_appSpecificConfiguration = v5;

    if (!self->_appSpecificConfiguration)
    {
      v7 = PXAssertGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_21ABF3000, v7, OS_LOG_TYPE_FAULT, "Client tried to load the app-specific configuration but none was created", v10, 2u);
      }
    }
  }

  v8 = self->_appSpecificConfiguration;

  return v8;
}

- (void)setAllowsDragAndDrop:(BOOL)a3
{
  v3 = a3;
  [(PXPhotosViewConfiguration *)self setAllowsDragIn:?];

  [(PXPhotosViewConfiguration *)self setAllowsDragOut:v3];
}

- (BOOL)allowsDragAndDrop
{
  v3 = [(PXPhotosViewConfiguration *)self allowsDragIn];
  if (v3)
  {

    LOBYTE(v3) = [(PXPhotosViewConfiguration *)self allowsDragOut];
  }

  return v3;
}

- (void)setBackgroundStyle:(int64_t)a3
{
  self->_backgroundStyle = a3;
  self->_lightModeBackgroundStyle = a3;
  self->_darkModeBackgroundStyle = a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PXPhotosViewConfiguration alloc];
  v6 = [(PXPhotosViewConfiguration *)self dataSourceManager];
  v7 = [(PXPhotosViewConfiguration *)self mediaProvider];
  v8 = [(PXPhotosViewConfiguration *)self selectionManager];
  v9 = [(PXPhotosViewConfiguration *)self assetActionManager];
  v10 = [(PXPhotosViewConfiguration *)self assetCollectionActionManager];
  v11 = [(PXPhotosViewConfiguration *)v5 initWithDataSourceManager:v6 mediaProvider:v7 selectionManager:v8 assetActionManager:v9 assetCollectionActionManager:v10];

  v12 = [(PXPhotosViewConfiguration *)self title];
  [(PXPhotosViewConfiguration *)v11 setTitle:v12];

  v13 = [(PXPhotosViewConfiguration *)self containerTitle];
  [(PXPhotosViewConfiguration *)v11 setContainerTitle:v13];

  [(PXPhotosViewConfiguration *)v11 setWantsDynamicTitles:[(PXPhotosViewConfiguration *)self wantsDynamicTitles]];
  [(PXPhotosViewConfiguration *)v11 setToolbarStyle:[(PXPhotosViewConfiguration *)self toolbarStyle]];
  [(PXPhotosViewConfiguration *)v11 setWantsExternallyRenderedSecondaryToolbar:[(PXPhotosViewConfiguration *)self wantsExternallyRenderedSecondaryToolbar]];
  [(PXPhotosViewConfiguration *)v11 setContainerProvidesSecondaryToolbar:[(PXPhotosViewConfiguration *)self containerProvidesSecondaryToolbar]];
  [(PXPhotosViewConfiguration *)v11 setPrefersActionsInToolbar:[(PXPhotosViewConfiguration *)self prefersActionsInToolbar]];
  [(PXPhotosViewConfiguration *)v11 setWantsContentFilterVisible:[(PXPhotosViewConfiguration *)self wantsContentFilterVisible]];
  [(PXPhotosViewConfiguration *)v11 setFooterVisibilityStyle:[(PXPhotosViewConfiguration *)self footerVisibilityStyle]];
  v14 = [(PXPhotosViewConfiguration *)self footerSubtitle];
  [(PXPhotosViewConfiguration *)v11 setFooterSubtitle:v14];

  v15 = [(PXPhotosViewConfiguration *)self footerLearnMoreURL];
  [(PXPhotosViewConfiguration *)v11 setFooterLearnMoreURL:v15];

  v16 = [(PXPhotosViewConfiguration *)self footerViewModel];
  [(PXPhotosViewConfiguration *)v11 setFooterViewModel:v16];

  [(PXPhotosViewConfiguration *)v11 setWantsFooterMask:[(PXPhotosViewConfiguration *)self wantsFooterMask]];
  [(PXPhotosViewConfiguration *)v11 setHidesAssetCountInFooter:[(PXPhotosViewConfiguration *)self hidesAssetCountInFooter]];
  [(PXPhotosViewConfiguration *)v11 setWantsCPLStatus:[(PXPhotosViewConfiguration *)self wantsCPLStatus]];
  [(PXPhotosViewConfiguration *)v11 setWantsRenderingStatus:[(PXPhotosViewConfiguration *)self wantsRenderingStatus]];
  [(PXPhotosViewConfiguration *)v11 setNavBarStyle:[(PXPhotosViewConfiguration *)self navBarStyle]];
  [(PXPhotosViewConfiguration *)v11 setScrollIndicatorStyle:[(PXPhotosViewConfiguration *)self scrollIndicatorStyle]];
  [(PXPhotosViewConfiguration *)v11 setShouldOptOutOfChromelessBars:[(PXPhotosViewConfiguration *)self shouldOptOutOfChromelessBars]];
  [(PXPhotosViewConfiguration *)v11 setWantsModernNavBarButtons:[(PXPhotosViewConfiguration *)self wantsModernNavBarButtons]];
  [(PXPhotosViewConfiguration *)v11 setWantsAdaptiveSelectModeBarButton:[(PXPhotosViewConfiguration *)self wantsAdaptiveSelectModeBarButton]];
  [(PXPhotosViewConfiguration *)v11 setSectionHeaderStyle:[(PXPhotosViewConfiguration *)self sectionHeaderStyle]];
  v17 = [(PXPhotosViewConfiguration *)self sectionHeaderLayoutProvider];
  [(PXPhotosViewConfiguration *)v11 setSectionHeaderLayoutProvider:v17];

  [(PXPhotosViewConfiguration *)v11 setSectionBodyStyle:[(PXPhotosViewConfiguration *)self sectionBodyStyle]];
  v18 = [(PXPhotosViewConfiguration *)self sectionBodyLayoutProvider];
  [(PXPhotosViewConfiguration *)v11 setSectionBodyLayoutProvider:v18];

  v19 = [(PXPhotosViewConfiguration *)self globalHeaderLayoutProvider];
  [(PXPhotosViewConfiguration *)v11 setGlobalHeaderLayoutProvider:v19];

  v20 = [(PXPhotosViewConfiguration *)self bannerProvider];
  [(PXPhotosViewConfiguration *)v11 setBannerProvider:v20];

  v21 = [(PXPhotosViewConfiguration *)self bannerControllerProvider];
  [(PXPhotosViewConfiguration *)v11 setBannerControllerProvider:v21];

  [(PXPhotosViewConfiguration *)v11 setGridStyle:[(PXPhotosViewConfiguration *)self gridStyle]];
  [(PXPhotosViewConfiguration *)v11 setGridPresentationType:[(PXPhotosViewConfiguration *)self gridPresentationType]];
  [(PXPhotosViewConfiguration *)v11 setPreferredUserInterfaceStyle:[(PXPhotosViewConfiguration *)self preferredUserInterfaceStyle]];
  [(PXPhotosViewConfiguration *)self itemAspectRatio];
  [(PXPhotosViewConfiguration *)v11 setItemAspectRatio:?];
  [(PXPhotosViewConfiguration *)v11 setShowLoadingPlaceholderWhenEmpty:[(PXPhotosViewConfiguration *)self showLoadingPlaceholderWhenEmpty]];
  v22 = [(PXPhotosViewConfiguration *)self preferredAssetCropDelegate];
  [(PXPhotosViewConfiguration *)v11 setPreferredAssetCropDelegate:v22];

  v23 = [(PXPhotosViewConfiguration *)self preferredColumnCountsDelegate];
  [(PXPhotosViewConfiguration *)v11 setPreferredColumnCountsDelegate:v23];

  [(PXPhotosViewConfiguration *)v11 setIgnoreFilterStateWhenNotFiltering:[(PXPhotosViewConfiguration *)self ignoreFilterStateWhenNotFiltering]];
  [(PXPhotosViewConfiguration *)v11 setIgnoreFilterPredicateAssert:[(PXPhotosViewConfiguration *)self ignoreFilterPredicateAssert]];
  [(PXPhotosViewConfiguration *)v11 setAllowsCaptions:[(PXPhotosViewConfiguration *)self allowsCaptions]];
  [(PXPhotosViewConfiguration *)v11 setAllowsGridAppearanceActions:[(PXPhotosViewConfiguration *)self allowsGridAppearanceActions]];
  [(PXPhotosViewConfiguration *)v11 setAllowedActions:[(PXPhotosViewConfiguration *)self allowedActions]];
  [(PXPhotosViewConfiguration *)v11 setAllowedBehaviors:[(PXPhotosViewConfiguration *)self allowedBehaviors]];
  [(PXPhotosViewConfiguration *)v11 setAllowedChromeItems:[(PXPhotosViewConfiguration *)self allowedChromeItems]];
  [(PXPhotosViewConfiguration *)v11 setWantsDimmedSelectionStyle:[(PXPhotosViewConfiguration *)self wantsDimmedSelectionStyle]];
  [(PXPhotosViewConfiguration *)v11 setWantsNumberedSelectionStyle:[(PXPhotosViewConfiguration *)self wantsNumberedSelectionStyle]];
  [(PXPhotosViewConfiguration *)v11 setSelectionContextOverride:[(PXPhotosViewConfiguration *)self selectionContextOverride]];
  [(PXPhotosViewConfiguration *)v11 setWantsFileSizeBadge:[(PXPhotosViewConfiguration *)self wantsFileSizeBadge]];
  [(PXPhotosViewConfiguration *)v11 setWantsAssetIndexBadge:[(PXPhotosViewConfiguration *)self wantsAssetIndexBadge]];
  [(PXPhotosViewConfiguration *)v11 setNoContentPlaceholderType:[(PXPhotosViewConfiguration *)self noContentPlaceholderType]];
  [(PXPhotosViewConfiguration *)v11 setForbiddenBadges:[(PXPhotosViewConfiguration *)self forbiddenBadges]];
  [(PXPhotosViewConfiguration *)v11 setAllowsInteractiveFavoriteBadges:[(PXPhotosViewConfiguration *)self allowsInteractiveFavoriteBadges]];
  [(PXPhotosViewConfiguration *)v11 setAllowsDragIn:[(PXPhotosViewConfiguration *)self allowsDragIn]];
  [(PXPhotosViewConfiguration *)v11 setAllowsDragOut:[(PXPhotosViewConfiguration *)self allowsDragOut]];
  [(PXPhotosViewConfiguration *)v11 setAllowsSwipeToSelect:[(PXPhotosViewConfiguration *)self allowsSwipeToSelect]];
  [(PXPhotosViewConfiguration *)v11 setOneUpPresentationOrigin:[(PXPhotosViewConfiguration *)self oneUpPresentationOrigin]];
  [(PXPhotosViewConfiguration *)v11 setPreventShowInAllPhotosAction:[(PXPhotosViewConfiguration *)self preventShowInAllPhotosAction]];
  [(PXPhotosViewConfiguration *)v11 setWantsOneUpShowInLibraryButton:[(PXPhotosViewConfiguration *)self wantsOneUpShowInLibraryButton]];
  [(PXPhotosViewConfiguration *)v11 setAllowsMergeDuplicatesAction:[(PXPhotosViewConfiguration *)self allowsMergeDuplicatesAction]];
  v24 = [(PXPhotosViewConfiguration *)self infoActionHandler];
  [(PXPhotosViewConfiguration *)v11 setInfoActionHandler:v24];

  v25 = [(PXPhotosViewConfiguration *)self centerAccessoryActionType];
  [(PXPhotosViewConfiguration *)v11 setCenterAccessoryActionType:v25];

  v26 = [(PXPhotosViewConfiguration *)self trailingAccessoryActionType];
  [(PXPhotosViewConfiguration *)v11 setTrailingAccessoryActionType:v26];

  v27 = [(PXPhotosViewConfiguration *)self loadingStatusManager];
  [(PXPhotosViewConfiguration *)v11 setLoadingStatusManager:v27];

  v28 = [(PXPhotosViewConfiguration *)self assetImportStatusManager];
  [(PXPhotosViewConfiguration *)v11 setAssetImportStatusManager:v28];

  v29 = [(PXPhotosViewConfiguration *)self delegate];
  [(PXPhotosViewConfiguration *)v11 setDelegate:v29];

  [(PXPhotosViewConfiguration *)v11 setStartsInSelectMode:[(PXPhotosViewConfiguration *)self startsInSelectMode]];
  [(PXPhotosViewConfiguration *)v11 setWantsSelectModeCaptionInContextMenu:[(PXPhotosViewConfiguration *)self wantsSelectModeCaptionInContextMenu]];
  [(PXPhotosViewConfiguration *)v11 setPrefersCurationModeToggleInNavBar:[(PXPhotosViewConfiguration *)self prefersCurationModeToggleInNavBar]];
  [(PXPhotosViewConfiguration *)v11 setLowMemoryMode:[(PXPhotosViewConfiguration *)self lowMemoryMode]];
  [(PXPhotosViewConfiguration *)v11 setContentMode:[(PXPhotosViewConfiguration *)self contentMode]];
  [(PXPhotosViewConfiguration *)v11 setContentStartingPosition:[(PXPhotosViewConfiguration *)self contentStartingPosition]];
  [(PXPhotosViewConfiguration *)v11 setDecorationViewClass:[(PXPhotosViewConfiguration *)self decorationViewClass]];
  [(PXPhotosViewConfiguration *)v11 setBackgroundStyle:[(PXPhotosViewConfiguration *)self backgroundStyle]];
  [(PXPhotosViewConfiguration *)v11 setLightModeBackgroundStyle:[(PXPhotosViewConfiguration *)self lightModeBackgroundStyle]];
  [(PXPhotosViewConfiguration *)v11 setDarkModeBackgroundStyle:[(PXPhotosViewConfiguration *)self darkModeBackgroundStyle]];
  v30 = [(PXPhotosViewConfiguration *)self tapbackStatusManager];
  [(PXPhotosViewConfiguration *)v11 setTapbackStatusManager:v30];

  v31 = [(PXPhotosViewConfiguration *)self decorationDataSource];
  [(PXPhotosViewConfiguration *)v11 setDecorationDataSource:v31];

  [(PXPhotosViewConfiguration *)v11 setIsEmbedded:[(PXPhotosViewConfiguration *)self isEmbedded]];
  [(PXPhotosViewConfiguration *)v11 setAllowsUserDefaults:[(PXPhotosViewConfiguration *)self allowsUserDefaults]];
  [(PXPhotosViewConfiguration *)v11 setAllowsLinkInteractions:[(PXPhotosViewConfiguration *)self allowsLinkInteractions]];
  [(PXPhotosViewConfiguration *)v11 setAllowsMultiSelectMenu:[(PXPhotosViewConfiguration *)self allowsMultiSelectMenu]];
  v32 = [(PXPhotosViewConfiguration *)self emptyPlaceholderStatusViewModel];
  [(PXPhotosViewConfiguration *)v11 setEmptyPlaceholderStatusViewModel:v32];

  v33 = [(PXPhotosViewConfiguration *)self badgesModifier];
  [(PXPhotosViewConfiguration *)v11 setBadgesModifier:v33];

  [(PXPhotosViewConfiguration *)v11 setWantsFooterVisibleImmediately:[(PXPhotosViewConfiguration *)self wantsFooterVisibleImmediately]];
  [(PXPhotosViewConfiguration *)v11 setWantsFooterVisibleWhenEmpty:[(PXPhotosViewConfiguration *)self wantsFooterVisibleWhenEmpty]];
  [(PXPhotosViewConfiguration *)v11 setWantsSingleRowScrollingLayout:[(PXPhotosViewConfiguration *)self wantsSingleRowScrollingLayout]];
  [(PXPhotosViewConfiguration *)v11 setDismissAffordance:[(PXPhotosViewConfiguration *)self dismissAffordance]];
  [(PXPhotosViewConfiguration *)v11 setAllowedInteractiveDismissBehaviors:[(PXPhotosViewConfiguration *)self allowedInteractiveDismissBehaviors]];
  v34 = [(PXPhotosViewConfiguration *)self initialNavigationObjectReference];
  [(PXPhotosViewConfiguration *)v11 setInitialNavigationObjectReference:v34];

  [(PXPhotosViewConfiguration *)v11 setInitialNavigationScrollPosition:[(PXPhotosViewConfiguration *)self initialNavigationScrollPosition]];
  [(PXPhotosViewConfiguration *)v11 setScrollingBehavior:[(PXPhotosViewConfiguration *)self scrollingBehavior]];
  [(PXPhotosViewConfiguration *)v11 setWantsShareGridButtonVisible:[(PXPhotosViewConfiguration *)self wantsShareGridButtonVisible]];
  [(PXPhotosViewConfiguration *)v11 setOverrideDefaultNumberOfColumns:[(PXPhotosViewConfiguration *)self overrideDefaultNumberOfColumns]];
  [(PXPhotosViewConfiguration *)v11 setContentShiftStrategy:[(PXPhotosViewConfiguration *)self contentShiftStrategy]];
  v35 = [(PXPhotosViewConfiguration *)self pickerClientBundleIdentifier];
  [(PXPhotosViewConfiguration *)v11 setPickerClientBundleIdentifier:v35];

  [(PXPhotosViewConfiguration *)v11 setUseLowMemoryDecode:[(PXPhotosViewConfiguration *)self useLowMemoryDecode]];
  [(PXPhotosViewConfiguration *)v11 setEnableSupportForTungstenUnderlay:[(PXPhotosViewConfiguration *)self enableSupportForTungstenUnderlay]];
  v36 = [(PXPhotosViewConfiguration *)self overlayController];
  [(PXPhotosViewConfiguration *)v11 setOverlayController:v36];

  v37 = [(PXPhotosViewConfiguration *)self fullscreenOverlayControllers];
  [(PXPhotosViewConfiguration *)v11 setFullscreenOverlayControllers:v37];

  v38 = [(PXPhotosViewConfiguration *)self customAssetSelectionHandler];
  [(PXPhotosViewConfiguration *)v11 setCustomAssetSelectionHandler:v38];

  v39 = [(PXPhotosViewConfiguration *)self customDismissHandler];
  [(PXPhotosViewConfiguration *)v11 setCustomDismissHandler:v39];

  [(PXPhotosViewConfiguration *)v11 setOneUpAssetsViewMode:[(PXPhotosViewConfiguration *)self oneUpAssetsViewMode]];
  [(PXPhotosViewConfiguration *)v11 setAllowsTabBarVisible:[(PXPhotosViewConfiguration *)self allowsTabBarVisible]];
  [(PXPhotosViewConfiguration *)v11 setWantsNavbarHidden:[(PXPhotosViewConfiguration *)self wantsNavbarHidden]];
  [(PXPhotosViewConfiguration *)v11 setWantsToolbarHidden:[(PXPhotosViewConfiguration *)self wantsToolbarHidden]];
  [(PXPhotosViewConfiguration *)v11 setTitleMode:[(PXPhotosViewConfiguration *)self titleMode]];
  [(PXPhotosViewConfiguration *)v11 setScrollDetentsProviderClass:[(PXPhotosViewConfiguration *)self scrollDetentsProviderClass]];
  v40 = [(PXPhotosViewConfiguration *)self initialScrollPositionDetentIdentifier];
  [(PXPhotosViewConfiguration *)v11 setInitialScrollPositionDetentIdentifier:v40];

  [(PXPhotosViewConfiguration *)v11 setEnableFilterButton:[(PXPhotosViewConfiguration *)self enableFilterButton]];
  [(PXPhotosViewConfiguration *)v11 setDisableAutoPlaybackInOneUp:[(PXPhotosViewConfiguration *)self disableAutoPlaybackInOneUp]];
  [(PXPhotosViewConfiguration *)v11 copySwiftPropertiesFromConfiguration:self];
  v41 = [(PXPhotosViewAppSpecificConfiguration *)self->_appSpecificConfiguration copyWithZone:a3];
  appSpecificConfiguration = v11->_appSpecificConfiguration;
  v11->_appSpecificConfiguration = v41;

  [(PXPhotosViewConfiguration *)v11 setWantsDecorationSpritesHostedInDecoratedSprite:[(PXPhotosViewConfiguration *)self wantsDecorationSpritesHostedInDecoratedSprite]];
  v43 = [(PXPhotosViewConfiguration *)self scrollViewAccessibilityIdentifier];
  [(PXPhotosViewConfiguration *)v11 setScrollViewAccessibilityIdentifier:v43];

  [(PXPhotosViewConfiguration *)v11 setCustomAssetImageViewClass:[(PXPhotosViewConfiguration *)self customAssetImageViewClass]];
  return v11;
}

- (PXPhotosViewConfiguration)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXPhotosViewConfiguration init]"}];

  abort();
}

- (PXPhotosViewConfiguration)initWithDataSourceManager:(id)a3 mediaProvider:(id)a4 selectionManager:(id)a5 assetActionManager:(id)a6 assetCollectionActionManager:(id)a7
{
  v11 = a3;
  v14 = a3;
  v45 = a4;
  v15 = a5;
  v16 = a6;
  obj = a7;
  v44 = a7;
  if (v15)
  {
    v17 = [v15 dataSourceManager];

    if (v17 != v14)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"selectionManager == nil || selectionManager.dataSourceManager == dataSourceManager"}];
    }
  }

  v19 = [v16 selectionManager];
  if (v19)
  {
    v20 = v19;
    [v16 selectionManager];
    v42 = v16;
    v21 = v15;
    v22 = self;
    v23 = v11;
    v24 = a4;
    v25 = a5;
    v26 = a2;
    v28 = v27 = v14;
    v29 = [v28 dataSourceManager];

    v14 = v27;
    a2 = v26;
    a5 = v25;
    a4 = v24;
    v11 = v23;
    self = v22;
    v15 = v21;
    v16 = v42;

    if (v29 != v14)
    {
      v30 = [MEMORY[0x277CCA890] currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"assetActionManager.selectionManager == nil || assetActionManager.selectionManager.dataSourceManager == dataSourceManager"}];
    }
  }

  if (v15)
  {
    v31 = [v16 selectionManager];
    if (v31)
    {
      v32 = v31;
      v33 = [v16 selectionManager];

      if (v33 != v15)
      {
        v34 = [MEMORY[0x277CCA890] currentHandler];
        [v34 handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"selectionManager == nil || assetActionManager.selectionManager == nil || assetActionManager.selectionManager == selectionManager"}];
      }
    }
  }

  v46.receiver = self;
  v46.super_class = PXPhotosViewConfiguration;
  v35 = [(PXPhotosViewConfiguration *)&v46 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_dataSourceManager, v11);
    objc_storeStrong(&v36->_mediaProvider, a4);
    objc_storeStrong(&v36->_selectionManager, a5);
    if (v16)
    {
      v37 = v16;
    }

    else
    {
      v37 = [objc_alloc(MEMORY[0x277D3CCD0]) initWithSelectionManager:0];
    }

    assetActionManager = v36->_assetActionManager;
    v36->_assetActionManager = v37;

    objc_storeStrong(&v36->_assetCollectionActionManager, obj);
    v36->_allowsInteractiveFavoriteBadges = 1;
    *&v36->_allowsDragOut = 257;
    v36->_allowsSwipeToSelect = 1;
    v36->_isEmbedded = 1;
    v36->_itemAspectRatio = 1.0;
    *&v36->_allowedActions = xmmword_21AC7D650;
    v36->_allowedChromeItems = -1;
    v36->_contentStartingPosition = 0;
    v36->_allowsUserDefaults = PFIsPhotosPicker() ^ 1;
    v36->_allowsMultiSelectMenu = PFIsiOSPhotosApp();
    v36->_dismissAffordance = 0;
    v36->_initialNavigationScrollPosition = 0;
    v36->_gridPresentationType = 0;
    v36->_scrollIndicatorStyle = 0;
    v36->_enableFilterButton = 1;
    v36->_disableAutoPlaybackInOneUp = 0;
    v36->_allowsTabBarVisible = 0;
    v39 = [objc_opt_class() defaultScrollViewAccessibilityIdentifier];
    scrollViewAccessibilityIdentifier = v36->_scrollViewAccessibilityIdentifier;
    v36->_scrollViewAccessibilityIdentifier = v39;
  }

  return v36;
}

@end