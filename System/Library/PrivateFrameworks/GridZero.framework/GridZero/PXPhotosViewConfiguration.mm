@interface PXPhotosViewConfiguration
- (BOOL)allowsDragAndDrop;
- (PXPhotosPreferredAssetCropDelegate)preferredAssetCropDelegate;
- (PXPhotosPreferredColumnCountsDelegate)preferredColumnCountsDelegate;
- (PXPhotosViewConfiguration)init;
- (PXPhotosViewConfiguration)initWithDataSourceManager:(id)manager mediaProvider:(id)provider selectionManager:(id)selectionManager assetActionManager:(id)actionManager assetCollectionActionManager:(id)collectionActionManager;
- (PXPhotosViewDelegate)delegate;
- (id)_appSpecificConfigurationLoadIfNeeded:(BOOL)needed;
- (id)adjustedExtendedTraitCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)preferredBackgroundStyle;
- (void)copySwiftPropertiesFromConfiguration:(id)configuration;
- (void)setAllowsDragAndDrop:(BOOL)drop;
- (void)setBackgroundStyle:(int64_t)style;
- (void)setPreferredBackgroundStyle:(int64_t)style;
@end

@implementation PXPhotosViewConfiguration

- (void)copySwiftPropertiesFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21AC023A0();
}

- (id)adjustedExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_21AC02614(collectionCopy);

  return collectionCopy;
}

- (int64_t)preferredBackgroundStyle
{
  selfCopy = self;
  v3 = sub_21AC0271C();

  return v3;
}

- (void)setPreferredBackgroundStyle:(int64_t)style
{
  selfCopy = self;
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

- (id)_appSpecificConfigurationLoadIfNeeded:(BOOL)needed
{
  if (self->_appSpecificConfiguration)
  {
    v4 = 1;
  }

  else
  {
    v4 = !needed;
  }

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    gridZero_createAppSpecificConfiguration = [(PXPhotosViewConfiguration *)self gridZero_createAppSpecificConfiguration];
    appSpecificConfiguration = self->_appSpecificConfiguration;
    self->_appSpecificConfiguration = gridZero_createAppSpecificConfiguration;

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

- (void)setAllowsDragAndDrop:(BOOL)drop
{
  dropCopy = drop;
  [(PXPhotosViewConfiguration *)self setAllowsDragIn:?];

  [(PXPhotosViewConfiguration *)self setAllowsDragOut:dropCopy];
}

- (BOOL)allowsDragAndDrop
{
  allowsDragIn = [(PXPhotosViewConfiguration *)self allowsDragIn];
  if (allowsDragIn)
  {

    LOBYTE(allowsDragIn) = [(PXPhotosViewConfiguration *)self allowsDragOut];
  }

  return allowsDragIn;
}

- (void)setBackgroundStyle:(int64_t)style
{
  self->_backgroundStyle = style;
  self->_lightModeBackgroundStyle = style;
  self->_darkModeBackgroundStyle = style;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PXPhotosViewConfiguration alloc];
  dataSourceManager = [(PXPhotosViewConfiguration *)self dataSourceManager];
  mediaProvider = [(PXPhotosViewConfiguration *)self mediaProvider];
  selectionManager = [(PXPhotosViewConfiguration *)self selectionManager];
  assetActionManager = [(PXPhotosViewConfiguration *)self assetActionManager];
  assetCollectionActionManager = [(PXPhotosViewConfiguration *)self assetCollectionActionManager];
  v11 = [(PXPhotosViewConfiguration *)v5 initWithDataSourceManager:dataSourceManager mediaProvider:mediaProvider selectionManager:selectionManager assetActionManager:assetActionManager assetCollectionActionManager:assetCollectionActionManager];

  title = [(PXPhotosViewConfiguration *)self title];
  [(PXPhotosViewConfiguration *)v11 setTitle:title];

  containerTitle = [(PXPhotosViewConfiguration *)self containerTitle];
  [(PXPhotosViewConfiguration *)v11 setContainerTitle:containerTitle];

  [(PXPhotosViewConfiguration *)v11 setWantsDynamicTitles:[(PXPhotosViewConfiguration *)self wantsDynamicTitles]];
  [(PXPhotosViewConfiguration *)v11 setToolbarStyle:[(PXPhotosViewConfiguration *)self toolbarStyle]];
  [(PXPhotosViewConfiguration *)v11 setWantsExternallyRenderedSecondaryToolbar:[(PXPhotosViewConfiguration *)self wantsExternallyRenderedSecondaryToolbar]];
  [(PXPhotosViewConfiguration *)v11 setContainerProvidesSecondaryToolbar:[(PXPhotosViewConfiguration *)self containerProvidesSecondaryToolbar]];
  [(PXPhotosViewConfiguration *)v11 setPrefersActionsInToolbar:[(PXPhotosViewConfiguration *)self prefersActionsInToolbar]];
  [(PXPhotosViewConfiguration *)v11 setWantsContentFilterVisible:[(PXPhotosViewConfiguration *)self wantsContentFilterVisible]];
  [(PXPhotosViewConfiguration *)v11 setFooterVisibilityStyle:[(PXPhotosViewConfiguration *)self footerVisibilityStyle]];
  footerSubtitle = [(PXPhotosViewConfiguration *)self footerSubtitle];
  [(PXPhotosViewConfiguration *)v11 setFooterSubtitle:footerSubtitle];

  footerLearnMoreURL = [(PXPhotosViewConfiguration *)self footerLearnMoreURL];
  [(PXPhotosViewConfiguration *)v11 setFooterLearnMoreURL:footerLearnMoreURL];

  footerViewModel = [(PXPhotosViewConfiguration *)self footerViewModel];
  [(PXPhotosViewConfiguration *)v11 setFooterViewModel:footerViewModel];

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
  sectionHeaderLayoutProvider = [(PXPhotosViewConfiguration *)self sectionHeaderLayoutProvider];
  [(PXPhotosViewConfiguration *)v11 setSectionHeaderLayoutProvider:sectionHeaderLayoutProvider];

  [(PXPhotosViewConfiguration *)v11 setSectionBodyStyle:[(PXPhotosViewConfiguration *)self sectionBodyStyle]];
  sectionBodyLayoutProvider = [(PXPhotosViewConfiguration *)self sectionBodyLayoutProvider];
  [(PXPhotosViewConfiguration *)v11 setSectionBodyLayoutProvider:sectionBodyLayoutProvider];

  globalHeaderLayoutProvider = [(PXPhotosViewConfiguration *)self globalHeaderLayoutProvider];
  [(PXPhotosViewConfiguration *)v11 setGlobalHeaderLayoutProvider:globalHeaderLayoutProvider];

  bannerProvider = [(PXPhotosViewConfiguration *)self bannerProvider];
  [(PXPhotosViewConfiguration *)v11 setBannerProvider:bannerProvider];

  bannerControllerProvider = [(PXPhotosViewConfiguration *)self bannerControllerProvider];
  [(PXPhotosViewConfiguration *)v11 setBannerControllerProvider:bannerControllerProvider];

  [(PXPhotosViewConfiguration *)v11 setGridStyle:[(PXPhotosViewConfiguration *)self gridStyle]];
  [(PXPhotosViewConfiguration *)v11 setGridPresentationType:[(PXPhotosViewConfiguration *)self gridPresentationType]];
  [(PXPhotosViewConfiguration *)v11 setPreferredUserInterfaceStyle:[(PXPhotosViewConfiguration *)self preferredUserInterfaceStyle]];
  [(PXPhotosViewConfiguration *)self itemAspectRatio];
  [(PXPhotosViewConfiguration *)v11 setItemAspectRatio:?];
  [(PXPhotosViewConfiguration *)v11 setShowLoadingPlaceholderWhenEmpty:[(PXPhotosViewConfiguration *)self showLoadingPlaceholderWhenEmpty]];
  preferredAssetCropDelegate = [(PXPhotosViewConfiguration *)self preferredAssetCropDelegate];
  [(PXPhotosViewConfiguration *)v11 setPreferredAssetCropDelegate:preferredAssetCropDelegate];

  preferredColumnCountsDelegate = [(PXPhotosViewConfiguration *)self preferredColumnCountsDelegate];
  [(PXPhotosViewConfiguration *)v11 setPreferredColumnCountsDelegate:preferredColumnCountsDelegate];

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
  infoActionHandler = [(PXPhotosViewConfiguration *)self infoActionHandler];
  [(PXPhotosViewConfiguration *)v11 setInfoActionHandler:infoActionHandler];

  centerAccessoryActionType = [(PXPhotosViewConfiguration *)self centerAccessoryActionType];
  [(PXPhotosViewConfiguration *)v11 setCenterAccessoryActionType:centerAccessoryActionType];

  trailingAccessoryActionType = [(PXPhotosViewConfiguration *)self trailingAccessoryActionType];
  [(PXPhotosViewConfiguration *)v11 setTrailingAccessoryActionType:trailingAccessoryActionType];

  loadingStatusManager = [(PXPhotosViewConfiguration *)self loadingStatusManager];
  [(PXPhotosViewConfiguration *)v11 setLoadingStatusManager:loadingStatusManager];

  assetImportStatusManager = [(PXPhotosViewConfiguration *)self assetImportStatusManager];
  [(PXPhotosViewConfiguration *)v11 setAssetImportStatusManager:assetImportStatusManager];

  delegate = [(PXPhotosViewConfiguration *)self delegate];
  [(PXPhotosViewConfiguration *)v11 setDelegate:delegate];

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
  tapbackStatusManager = [(PXPhotosViewConfiguration *)self tapbackStatusManager];
  [(PXPhotosViewConfiguration *)v11 setTapbackStatusManager:tapbackStatusManager];

  decorationDataSource = [(PXPhotosViewConfiguration *)self decorationDataSource];
  [(PXPhotosViewConfiguration *)v11 setDecorationDataSource:decorationDataSource];

  [(PXPhotosViewConfiguration *)v11 setIsEmbedded:[(PXPhotosViewConfiguration *)self isEmbedded]];
  [(PXPhotosViewConfiguration *)v11 setAllowsUserDefaults:[(PXPhotosViewConfiguration *)self allowsUserDefaults]];
  [(PXPhotosViewConfiguration *)v11 setAllowsLinkInteractions:[(PXPhotosViewConfiguration *)self allowsLinkInteractions]];
  [(PXPhotosViewConfiguration *)v11 setAllowsMultiSelectMenu:[(PXPhotosViewConfiguration *)self allowsMultiSelectMenu]];
  emptyPlaceholderStatusViewModel = [(PXPhotosViewConfiguration *)self emptyPlaceholderStatusViewModel];
  [(PXPhotosViewConfiguration *)v11 setEmptyPlaceholderStatusViewModel:emptyPlaceholderStatusViewModel];

  badgesModifier = [(PXPhotosViewConfiguration *)self badgesModifier];
  [(PXPhotosViewConfiguration *)v11 setBadgesModifier:badgesModifier];

  [(PXPhotosViewConfiguration *)v11 setWantsFooterVisibleImmediately:[(PXPhotosViewConfiguration *)self wantsFooterVisibleImmediately]];
  [(PXPhotosViewConfiguration *)v11 setWantsFooterVisibleWhenEmpty:[(PXPhotosViewConfiguration *)self wantsFooterVisibleWhenEmpty]];
  [(PXPhotosViewConfiguration *)v11 setWantsSingleRowScrollingLayout:[(PXPhotosViewConfiguration *)self wantsSingleRowScrollingLayout]];
  [(PXPhotosViewConfiguration *)v11 setDismissAffordance:[(PXPhotosViewConfiguration *)self dismissAffordance]];
  [(PXPhotosViewConfiguration *)v11 setAllowedInteractiveDismissBehaviors:[(PXPhotosViewConfiguration *)self allowedInteractiveDismissBehaviors]];
  initialNavigationObjectReference = [(PXPhotosViewConfiguration *)self initialNavigationObjectReference];
  [(PXPhotosViewConfiguration *)v11 setInitialNavigationObjectReference:initialNavigationObjectReference];

  [(PXPhotosViewConfiguration *)v11 setInitialNavigationScrollPosition:[(PXPhotosViewConfiguration *)self initialNavigationScrollPosition]];
  [(PXPhotosViewConfiguration *)v11 setScrollingBehavior:[(PXPhotosViewConfiguration *)self scrollingBehavior]];
  [(PXPhotosViewConfiguration *)v11 setWantsShareGridButtonVisible:[(PXPhotosViewConfiguration *)self wantsShareGridButtonVisible]];
  [(PXPhotosViewConfiguration *)v11 setOverrideDefaultNumberOfColumns:[(PXPhotosViewConfiguration *)self overrideDefaultNumberOfColumns]];
  [(PXPhotosViewConfiguration *)v11 setContentShiftStrategy:[(PXPhotosViewConfiguration *)self contentShiftStrategy]];
  pickerClientBundleIdentifier = [(PXPhotosViewConfiguration *)self pickerClientBundleIdentifier];
  [(PXPhotosViewConfiguration *)v11 setPickerClientBundleIdentifier:pickerClientBundleIdentifier];

  [(PXPhotosViewConfiguration *)v11 setUseLowMemoryDecode:[(PXPhotosViewConfiguration *)self useLowMemoryDecode]];
  [(PXPhotosViewConfiguration *)v11 setEnableSupportForTungstenUnderlay:[(PXPhotosViewConfiguration *)self enableSupportForTungstenUnderlay]];
  overlayController = [(PXPhotosViewConfiguration *)self overlayController];
  [(PXPhotosViewConfiguration *)v11 setOverlayController:overlayController];

  fullscreenOverlayControllers = [(PXPhotosViewConfiguration *)self fullscreenOverlayControllers];
  [(PXPhotosViewConfiguration *)v11 setFullscreenOverlayControllers:fullscreenOverlayControllers];

  customAssetSelectionHandler = [(PXPhotosViewConfiguration *)self customAssetSelectionHandler];
  [(PXPhotosViewConfiguration *)v11 setCustomAssetSelectionHandler:customAssetSelectionHandler];

  customDismissHandler = [(PXPhotosViewConfiguration *)self customDismissHandler];
  [(PXPhotosViewConfiguration *)v11 setCustomDismissHandler:customDismissHandler];

  [(PXPhotosViewConfiguration *)v11 setOneUpAssetsViewMode:[(PXPhotosViewConfiguration *)self oneUpAssetsViewMode]];
  [(PXPhotosViewConfiguration *)v11 setAllowsTabBarVisible:[(PXPhotosViewConfiguration *)self allowsTabBarVisible]];
  [(PXPhotosViewConfiguration *)v11 setWantsNavbarHidden:[(PXPhotosViewConfiguration *)self wantsNavbarHidden]];
  [(PXPhotosViewConfiguration *)v11 setWantsToolbarHidden:[(PXPhotosViewConfiguration *)self wantsToolbarHidden]];
  [(PXPhotosViewConfiguration *)v11 setTitleMode:[(PXPhotosViewConfiguration *)self titleMode]];
  [(PXPhotosViewConfiguration *)v11 setScrollDetentsProviderClass:[(PXPhotosViewConfiguration *)self scrollDetentsProviderClass]];
  initialScrollPositionDetentIdentifier = [(PXPhotosViewConfiguration *)self initialScrollPositionDetentIdentifier];
  [(PXPhotosViewConfiguration *)v11 setInitialScrollPositionDetentIdentifier:initialScrollPositionDetentIdentifier];

  [(PXPhotosViewConfiguration *)v11 setEnableFilterButton:[(PXPhotosViewConfiguration *)self enableFilterButton]];
  [(PXPhotosViewConfiguration *)v11 setDisableAutoPlaybackInOneUp:[(PXPhotosViewConfiguration *)self disableAutoPlaybackInOneUp]];
  [(PXPhotosViewConfiguration *)v11 copySwiftPropertiesFromConfiguration:self];
  v41 = [(PXPhotosViewAppSpecificConfiguration *)self->_appSpecificConfiguration copyWithZone:zone];
  appSpecificConfiguration = v11->_appSpecificConfiguration;
  v11->_appSpecificConfiguration = v41;

  [(PXPhotosViewConfiguration *)v11 setWantsDecorationSpritesHostedInDecoratedSprite:[(PXPhotosViewConfiguration *)self wantsDecorationSpritesHostedInDecoratedSprite]];
  scrollViewAccessibilityIdentifier = [(PXPhotosViewConfiguration *)self scrollViewAccessibilityIdentifier];
  [(PXPhotosViewConfiguration *)v11 setScrollViewAccessibilityIdentifier:scrollViewAccessibilityIdentifier];

  [(PXPhotosViewConfiguration *)v11 setCustomAssetImageViewClass:[(PXPhotosViewConfiguration *)self customAssetImageViewClass]];
  return v11;
}

- (PXPhotosViewConfiguration)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXPhotosViewConfiguration init]"}];

  abort();
}

- (PXPhotosViewConfiguration)initWithDataSourceManager:(id)manager mediaProvider:(id)provider selectionManager:(id)selectionManager assetActionManager:(id)actionManager assetCollectionActionManager:(id)collectionActionManager
{
  managerCopy = manager;
  managerCopy2 = manager;
  providerCopy = provider;
  selectionManagerCopy = selectionManager;
  actionManagerCopy = actionManager;
  obj = collectionActionManager;
  collectionActionManagerCopy = collectionActionManager;
  if (selectionManagerCopy)
  {
    dataSourceManager = [selectionManagerCopy dataSourceManager];

    if (dataSourceManager != managerCopy2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"selectionManager == nil || selectionManager.dataSourceManager == dataSourceManager"}];
    }
  }

  selectionManager = [actionManagerCopy selectionManager];
  if (selectionManager)
  {
    v20 = selectionManager;
    [actionManagerCopy selectionManager];
    v42 = actionManagerCopy;
    v21 = selectionManagerCopy;
    selfCopy = self;
    v23 = managerCopy;
    providerCopy2 = provider;
    selectionManagerCopy2 = selectionManager;
    v26 = a2;
    v28 = v27 = managerCopy2;
    dataSourceManager2 = [v28 dataSourceManager];

    managerCopy2 = v27;
    a2 = v26;
    selectionManager = selectionManagerCopy2;
    provider = providerCopy2;
    managerCopy = v23;
    self = selfCopy;
    selectionManagerCopy = v21;
    actionManagerCopy = v42;

    if (dataSourceManager2 != managerCopy2)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"assetActionManager.selectionManager == nil || assetActionManager.selectionManager.dataSourceManager == dataSourceManager"}];
    }
  }

  if (selectionManagerCopy)
  {
    selectionManager2 = [actionManagerCopy selectionManager];
    if (selectionManager2)
    {
      v32 = selectionManager2;
      selectionManager3 = [actionManagerCopy selectionManager];

      if (selectionManager3 != selectionManagerCopy)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotosViewConfiguration.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"selectionManager == nil || assetActionManager.selectionManager == nil || assetActionManager.selectionManager == selectionManager"}];
      }
    }
  }

  v46.receiver = self;
  v46.super_class = PXPhotosViewConfiguration;
  v35 = [(PXPhotosViewConfiguration *)&v46 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_dataSourceManager, managerCopy);
    objc_storeStrong(&v36->_mediaProvider, provider);
    objc_storeStrong(&v36->_selectionManager, selectionManager);
    if (actionManagerCopy)
    {
      v37 = actionManagerCopy;
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
    defaultScrollViewAccessibilityIdentifier = [objc_opt_class() defaultScrollViewAccessibilityIdentifier];
    scrollViewAccessibilityIdentifier = v36->_scrollViewAccessibilityIdentifier;
    v36->_scrollViewAccessibilityIdentifier = defaultScrollViewAccessibilityIdentifier;
  }

  return v36;
}

@end