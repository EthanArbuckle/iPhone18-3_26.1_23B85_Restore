@interface PXAssetsSectionGridConfigurator
- (BOOL)_layoutHasIndividualItems:(id)items forSpec:(id)spec;
- (BOOL)_layoutIsAspectFit:(id)fit forSpec:(id)spec;
- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)collection isCurated:(BOOL)curated numberOfAssets:(int64_t)assets referenceSize:(CGSize)size;
- (double)_interItemSpacingForLayout:(id)layout forSpec:(id)spec;
- (int64_t)numberOfZoomStepsWithDataSource:(id)source;
- (void)_configureGridLayout:(id)layout inSectionLayout:(id)sectionLayout;
- (void)configureAssetSectionLayout:(id)layout;
@end

@implementation PXAssetsSectionGridConfigurator

- (int64_t)numberOfZoomStepsWithDataSource:(id)source
{
  assetsSectionLayoutSpec = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  zoomableSpec = [assetsSectionLayoutSpec zoomableSpec];
  legacyMacSupportedColumns = [zoomableSpec legacyMacSupportedColumns];
  v6 = [legacyMacSupportedColumns count];

  return v6;
}

- (void)_configureGridLayout:(id)layout inSectionLayout:(id)sectionLayout
{
  layoutCopy = layout;
  sectionLayoutCopy = sectionLayout;
  assetsSectionLayoutSpec = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  zoomableSpec = [assetsSectionLayoutSpec zoomableSpec];

  v9 = [(PXAssetsSectionGridConfigurator *)self _layoutHasIndividualItems:layoutCopy forSpec:zoomableSpec];
  userInterfaceIdiom = [zoomableSpec userInterfaceIdiom];
  userInterfaceIdiom2 = [zoomableSpec userInterfaceIdiom];
  userInterfaceIdiom3 = [zoomableSpec userInterfaceIdiom];
  userInterfaceIdiom4 = [zoomableSpec userInterfaceIdiom];
  if ([zoomableSpec userInterfaceIdiom] == 1 && objc_msgSend(zoomableSpec, "layoutOrientation") == 2)
  {
    v12 = PFIsPhotosPicker();
  }

  else
  {
    v12 = 0;
  }

  assetCollection = [sectionLayoutCopy assetCollection];
  px_isPanoramasSmartAlbum = [assetCollection px_isPanoramasSmartAlbum];

  isFaceModeEnabled = [sectionLayoutCopy isFaceModeEnabled];
  numberOfColumns = [layoutCopy numberOfColumns];
  if (px_isPanoramasSmartAlbum)
  {
    [zoomableSpec panoramaInteritemSpacing];
    v18 = v17;
    v81 = [(PXAssetsSectionGridConfigurator *)self _layoutIsAspectFit:layoutCopy forSpec:zoomableSpec];
    if (isFaceModeEnabled)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(PXAssetsSectionGridConfigurator *)self _interItemSpacingForLayout:layoutCopy forSpec:zoomableSpec];
    v18 = v19;
    if ([(PXAssetsSectionGridConfigurator *)self _layoutIsAspectFit:layoutCopy forSpec:zoomableSpec])
    {
      if (isFaceModeEnabled)
      {
        v80 = numberOfColumns <= [zoomableSpec maxColumnsForSaliency];
      }

      else
      {
        v80 = 0;
      }

      [zoomableSpec aspectFitEdgeMargins];
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      if ([sectionLayoutCopy itemCaptionsVisible])
      {
        [zoomableSpec captionSpacing];
        v25 = v35;
        v24 = 1;
        v81 = 1;
      }

      else
      {
        v25 = 0.0;
        v81 = 1;
        v24 = 1;
      }

LABEL_25:
      v38 = userInterfaceIdiom3 == 2 || userInterfaceIdiom2 == 4 || userInterfaceIdiom4 == 5;
      v39 = v38 | v12;
      v26 = 0x278296000uLL;
      if ((v39 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v81 = 0;
    if (isFaceModeEnabled)
    {
      goto LABEL_13;
    }
  }

  if ([zoomableSpec useSaliency])
  {
LABEL_13:
    v80 = numberOfColumns <= [zoomableSpec maxColumnsForSaliency];
    goto LABEL_15;
  }

  v80 = 0;
LABEL_15:
  if (userInterfaceIdiom2 != 4 || v9)
  {
    if (userInterfaceIdiom == 3)
    {
      [sectionLayoutCopy safeAreaInsets];
      PXEdgeInsetsForEdges();
      [zoomableSpec squareEdgeMargins];
      PXEdgeInsetsAdd();
    }

    else
    {
      [zoomableSpec squareEdgeMargins];
    }

    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v24 = 0;
    v25 = 0.0;
    goto LABEL_25;
  }

  v24 = 0;
  v25 = 0.0;
  v26 = 0x278296000;
LABEL_35:
  [sectionLayoutCopy safeAreaInsets];
  v41 = v40;
  v43 = v42;
  PXEdgeInsetsAdd();
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v30 = v47;
  if (v41 != v43)
  {
    sharedInstance = [*(v26 + 2776) sharedInstance];
    [sharedInstance sidebarPadding];
    v50 = v41 + v49;

    if (v28 < v50)
    {
      v28 = v50;
    }
  }

LABEL_38:
  if (![sectionLayoutCopy numberOfAssets])
  {
    v27 = *MEMORY[0x277D3CF90];
    v28 = *(MEMORY[0x277D3CF90] + 8);
    v29 = *(MEMORY[0x277D3CF90] + 16);
    v30 = *(MEMORY[0x277D3CF90] + 24);
  }

  if (px_isPanoramasSmartAlbum)
  {
    [layoutCopy setNumberOfColumns:1];
    v25 = 0.0;
    if ([sectionLayoutCopy itemCaptionsVisible])
    {
      [zoomableSpec captionSpacing];
      v25 = v51;
    }
  }

  else
  {
    if (userInterfaceIdiom2 == 4)
    {
      zoomStep = [(PXAssetsSectionGridConfigurator *)self zoomStep];
      legacyMacSupportedColumns = [zoomableSpec legacyMacSupportedColumns];
      v54 = [legacyMacSupportedColumns objectAtIndexedSubscript:zoomStep];
      integerValue = [v54 integerValue];

      v56 = layoutCopy;
      staticNumberOfColumns = integerValue;
    }

    else
    {
      staticNumberOfColumns = [zoomableSpec staticNumberOfColumns];
      v56 = layoutCopy;
    }

    [v56 setNumberOfColumns:staticNumberOfColumns];
  }

  if (v9)
  {
    burstStackEffect = [sectionLayoutCopy burstStackEffect];
    [burstStackEffect setNumberOfItemsStackedBehind:2];
  }

  [layoutCopy setContentMode:v24];
  [layoutCopy setHideIncompleteLastRowOrColumn:v9 ^ 1];
  [layoutCopy setEnableEffects:v9];
  [layoutCopy setEnableBestCropRect:v80];
  [layoutCopy setInterItemSpacing:{v18, v18}];
  [layoutCopy setItemCaptionSpacing:v25];
  if (v81)
  {
    [zoomableSpec aspectFitItemCornerRadius];
  }

  else
  {
    [zoomableSpec itemCornerRadius];
  }

  *&v59 = v59;
  LODWORD(v60) = LODWORD(v59);
  LODWORD(v61) = LODWORD(v59);
  LODWORD(v62) = LODWORD(v59);
  [layoutCopy setItemCornerRadius:{v59, v60, v61, v62}];
  [layoutCopy setPadding:{v27, v28, v29, v30}];
  [layoutCopy setFillSafeAreaTopInset:0];
  if (v9)
  {
    v63 = 2;
  }

  else
  {
    v63 = 0;
  }

  [layoutCopy setStyle:v63];
  [layoutCopy setItemZPosition:0.0];
  v64 = 1.0;
  if (px_isPanoramasSmartAlbum)
  {
    [zoomableSpec panoramaItemAspectRatio];
  }

  [layoutCopy setItemAspectRatio:v64];
  if (userInterfaceIdiom2 == 4)
  {
    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  [layoutCopy setDropTargetStyle:v65];
  [layoutCopy setSupportsAutomaticContentRotation:px_isPanoramasSmartAlbum];
  [sectionLayoutCopy preferredCornerRadius];
  [layoutCopy setEdgeCornerRadius:?];
  sharedInstance2 = [*(v26 + 2776) sharedInstance];
  v67 = sharedInstance2;
  if (userInterfaceIdiom == 3)
  {
    allPhotosAspectFillFocusAnimationStyle = [sharedInstance2 allPhotosAspectFillFocusAnimationStyle];
    allPhotosAspectFillFocusPadding = [v67 allPhotosAspectFillFocusPadding];
    v71 = v70;
    if ((MEMORY[0x21CEE04B0](allPhotosAspectFillFocusPadding) & 1) == 0)
    {
      pressedAnimationStyle = [v67 pressedAnimationStyle];
      [v67 pressedAnimationPadding];
      [layoutCopy setAnimationParameters:pressedAnimationStyle forStylableType:{v73, 2}];
    }
  }

  else
  {
    if (v81)
    {
      allPhotosAspectFillFocusAnimationStyle = [sharedInstance2 allPhotosAspectFitFocusAnimationStyle];
      [v67 allPhotosAspectFitFocusPadding];
    }

    else
    {
      allPhotosAspectFillFocusAnimationStyle = [sharedInstance2 allPhotosAspectFillFocusAnimationStyle];
      [v67 allPhotosAspectFillFocusPadding];
    }

    v71 = v74;
  }

  [layoutCopy setAnimationParameters:allPhotosAspectFillFocusAnimationStyle forStylableType:{v71, 1}];
  axGroup = [layoutCopy axGroup];
  v76 = axGroup;
  if (userInterfaceIdiom2 == 4)
  {
    v77 = 9;
  }

  else
  {
    v77 = 0;
  }

  [axGroup setLeafFeatures:{objc_msgSend(axGroup, "leafFeatures") | v77}];

  addContentActionHandler = [sectionLayoutCopy addContentActionHandler];
  [layoutCopy setNumberOfAccessoryItems:addContentActionHandler != 0];
}

- (double)_interItemSpacingForLayout:(id)layout forSpec:(id)spec
{
  specCopy = spec;
  layoutCopy = layout;
  v8 = [(PXAssetsSectionGridConfigurator *)self _layoutIsAspectFit:layoutCopy forSpec:specCopy];
  v9 = [(PXAssetsSectionGridConfigurator *)self _layoutHasIndividualItems:layoutCopy forSpec:specCopy];

  v10 = 0.0;
  if (v8)
  {
    if (v9)
    {
      [specCopy aspectFitInteritemSpacing];
LABEL_6:
      v10 = v11;
    }
  }

  else if (v9)
  {
    [specCopy interitemSpacing];
    goto LABEL_6;
  }

  return v10;
}

- (BOOL)_layoutIsAspectFit:(id)fit forSpec:(id)spec
{
  fitCopy = fit;
  specCopy = spec;
  if ([(PXAssetsSectionGridConfigurator *)self aspectFitContent])
  {
    v8 = [(PXAssetsSectionGridConfigurator *)self _layoutHasIndividualItems:fitCopy forSpec:specCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_layoutHasIndividualItems:(id)items forSpec:(id)spec
{
  specCopy = spec;
  numberOfColumns = [items numberOfColumns];
  maxColumnsForIndividualItems = [specCopy maxColumnsForIndividualItems];

  return numberOfColumns <= maxColumnsForIndividualItems;
}

- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)collection isCurated:(BOOL)curated numberOfAssets:(int64_t)assets referenceSize:(CGSize)size
{
  width = size.width;
  v7 = size.width;
  if (assets)
  {
    v9 = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec:collection];
    zoomableSpec = [v9 zoomableSpec];

    staticNumberOfColumns = [zoomableSpec staticNumberOfColumns];
    if (staticNumberOfColumns <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = staticNumberOfColumns;
    }

    v13 = assets / v12;
    if ((assets / v12) <= 1)
    {
      v13 = 1;
    }

    v7 = width / v12 * v13;
  }

  v14 = width;
  v15 = v7;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)configureAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  bodyContentLayout = [layoutCopy bodyContentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    bodyContentLayout2 = [layoutCopy bodyContentLayout];
  }

  else
  {
    bodyContentLayout2 = objc_alloc_init(MEMORY[0x277D73CA0]);
    [bodyContentLayout2 setMediaKind:2];
    [bodyContentLayout2 setPresentationType:0];
    [bodyContentLayout2 setContentSource:layoutCopy];
    [bodyContentLayout2 setLazy:1];
    [bodyContentLayout2 setDelegate:layoutCopy];
    [bodyContentLayout2 setNumberOfItems:{objc_msgSend(layoutCopy, "numberOfAssets")}];
    if ([layoutCopy preferredInitialContentLayoutAxis])
    {
      [bodyContentLayout2 setAxis:{objc_msgSend(layoutCopy, "preferredInitialContentLayoutAxis")}];
    }

    preferredInitialContentLayoutNumberOfRows = [layoutCopy preferredInitialContentLayoutNumberOfRows];

    if (preferredInitialContentLayoutNumberOfRows)
    {
      preferredInitialContentLayoutNumberOfRows2 = [layoutCopy preferredInitialContentLayoutNumberOfRows];
      [bodyContentLayout2 setNumberOfRows:{objc_msgSend(preferredInitialContentLayoutNumberOfRows2, "integerValue")}];
    }

    [bodyContentLayout2 setAccessoryMediaKind:10];
    [bodyContentLayout2 setAccessoryPresentationType:1];
    [bodyContentLayout2 setAccessoryItemContentSource:layoutCopy];
  }

  [(PXAssetsSectionGridConfigurator *)self _configureGridLayout:bodyContentLayout2 inSectionLayout:layoutCopy];
  [layoutCopy setBodyContentLayout:bodyContentLayout2 wantsDecoration:1];
}

@end