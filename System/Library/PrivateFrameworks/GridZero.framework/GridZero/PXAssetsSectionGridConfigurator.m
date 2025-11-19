@interface PXAssetsSectionGridConfigurator
- (BOOL)_layoutHasIndividualItems:(id)a3 forSpec:(id)a4;
- (BOOL)_layoutIsAspectFit:(id)a3 forSpec:(id)a4;
- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)a3 isCurated:(BOOL)a4 numberOfAssets:(int64_t)a5 referenceSize:(CGSize)a6;
- (double)_interItemSpacingForLayout:(id)a3 forSpec:(id)a4;
- (int64_t)numberOfZoomStepsWithDataSource:(id)a3;
- (void)_configureGridLayout:(id)a3 inSectionLayout:(id)a4;
- (void)configureAssetSectionLayout:(id)a3;
@end

@implementation PXAssetsSectionGridConfigurator

- (int64_t)numberOfZoomStepsWithDataSource:(id)a3
{
  v3 = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  v4 = [v3 zoomableSpec];
  v5 = [v4 legacyMacSupportedColumns];
  v6 = [v5 count];

  return v6;
}

- (void)_configureGridLayout:(id)a3 inSectionLayout:(id)a4
{
  v83 = a3;
  v6 = a4;
  v7 = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  v8 = [v7 zoomableSpec];

  v9 = [(PXAssetsSectionGridConfigurator *)self _layoutHasIndividualItems:v83 forSpec:v8];
  v82 = [v8 userInterfaceIdiom];
  v10 = [v8 userInterfaceIdiom];
  v79 = [v8 userInterfaceIdiom];
  v11 = [v8 userInterfaceIdiom];
  if ([v8 userInterfaceIdiom] == 1 && objc_msgSend(v8, "layoutOrientation") == 2)
  {
    v12 = PFIsPhotosPicker();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 assetCollection];
  v14 = [v13 px_isPanoramasSmartAlbum];

  v15 = [v6 isFaceModeEnabled];
  v16 = [v83 numberOfColumns];
  if (v14)
  {
    [v8 panoramaInteritemSpacing];
    v18 = v17;
    v81 = [(PXAssetsSectionGridConfigurator *)self _layoutIsAspectFit:v83 forSpec:v8];
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [(PXAssetsSectionGridConfigurator *)self _interItemSpacingForLayout:v83 forSpec:v8];
    v18 = v19;
    if ([(PXAssetsSectionGridConfigurator *)self _layoutIsAspectFit:v83 forSpec:v8])
    {
      if (v15)
      {
        v80 = v16 <= [v8 maxColumnsForSaliency];
      }

      else
      {
        v80 = 0;
      }

      [v8 aspectFitEdgeMargins];
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      if ([v6 itemCaptionsVisible])
      {
        [v8 captionSpacing];
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
      v38 = v79 == 2 || v10 == 4 || v11 == 5;
      v39 = v38 | v12;
      v26 = 0x278296000uLL;
      if ((v39 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v81 = 0;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  if ([v8 useSaliency])
  {
LABEL_13:
    v80 = v16 <= [v8 maxColumnsForSaliency];
    goto LABEL_15;
  }

  v80 = 0;
LABEL_15:
  if (v10 != 4 || v9)
  {
    if (v82 == 3)
    {
      [v6 safeAreaInsets];
      PXEdgeInsetsForEdges();
      [v8 squareEdgeMargins];
      PXEdgeInsetsAdd();
    }

    else
    {
      [v8 squareEdgeMargins];
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
  [v6 safeAreaInsets];
  v41 = v40;
  v43 = v42;
  PXEdgeInsetsAdd();
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v30 = v47;
  if (v41 != v43)
  {
    v48 = [*(v26 + 2776) sharedInstance];
    [v48 sidebarPadding];
    v50 = v41 + v49;

    if (v28 < v50)
    {
      v28 = v50;
    }
  }

LABEL_38:
  if (![v6 numberOfAssets])
  {
    v27 = *MEMORY[0x277D3CF90];
    v28 = *(MEMORY[0x277D3CF90] + 8);
    v29 = *(MEMORY[0x277D3CF90] + 16);
    v30 = *(MEMORY[0x277D3CF90] + 24);
  }

  if (v14)
  {
    [v83 setNumberOfColumns:1];
    v25 = 0.0;
    if ([v6 itemCaptionsVisible])
    {
      [v8 captionSpacing];
      v25 = v51;
    }
  }

  else
  {
    if (v10 == 4)
    {
      v52 = [(PXAssetsSectionGridConfigurator *)self zoomStep];
      v53 = [v8 legacyMacSupportedColumns];
      v54 = [v53 objectAtIndexedSubscript:v52];
      v55 = [v54 integerValue];

      v56 = v83;
      v57 = v55;
    }

    else
    {
      v57 = [v8 staticNumberOfColumns];
      v56 = v83;
    }

    [v56 setNumberOfColumns:v57];
  }

  if (v9)
  {
    v58 = [v6 burstStackEffect];
    [v58 setNumberOfItemsStackedBehind:2];
  }

  [v83 setContentMode:v24];
  [v83 setHideIncompleteLastRowOrColumn:v9 ^ 1];
  [v83 setEnableEffects:v9];
  [v83 setEnableBestCropRect:v80];
  [v83 setInterItemSpacing:{v18, v18}];
  [v83 setItemCaptionSpacing:v25];
  if (v81)
  {
    [v8 aspectFitItemCornerRadius];
  }

  else
  {
    [v8 itemCornerRadius];
  }

  *&v59 = v59;
  LODWORD(v60) = LODWORD(v59);
  LODWORD(v61) = LODWORD(v59);
  LODWORD(v62) = LODWORD(v59);
  [v83 setItemCornerRadius:{v59, v60, v61, v62}];
  [v83 setPadding:{v27, v28, v29, v30}];
  [v83 setFillSafeAreaTopInset:0];
  if (v9)
  {
    v63 = 2;
  }

  else
  {
    v63 = 0;
  }

  [v83 setStyle:v63];
  [v83 setItemZPosition:0.0];
  v64 = 1.0;
  if (v14)
  {
    [v8 panoramaItemAspectRatio];
  }

  [v83 setItemAspectRatio:v64];
  if (v10 == 4)
  {
    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  [v83 setDropTargetStyle:v65];
  [v83 setSupportsAutomaticContentRotation:v14];
  [v6 preferredCornerRadius];
  [v83 setEdgeCornerRadius:?];
  v66 = [*(v26 + 2776) sharedInstance];
  v67 = v66;
  if (v82 == 3)
  {
    v68 = [v66 allPhotosAspectFillFocusAnimationStyle];
    v69 = [v67 allPhotosAspectFillFocusPadding];
    v71 = v70;
    if ((MEMORY[0x21CEE04B0](v69) & 1) == 0)
    {
      v72 = [v67 pressedAnimationStyle];
      [v67 pressedAnimationPadding];
      [v83 setAnimationParameters:v72 forStylableType:{v73, 2}];
    }
  }

  else
  {
    if (v81)
    {
      v68 = [v66 allPhotosAspectFitFocusAnimationStyle];
      [v67 allPhotosAspectFitFocusPadding];
    }

    else
    {
      v68 = [v66 allPhotosAspectFillFocusAnimationStyle];
      [v67 allPhotosAspectFillFocusPadding];
    }

    v71 = v74;
  }

  [v83 setAnimationParameters:v68 forStylableType:{v71, 1}];
  v75 = [v83 axGroup];
  v76 = v75;
  if (v10 == 4)
  {
    v77 = 9;
  }

  else
  {
    v77 = 0;
  }

  [v75 setLeafFeatures:{objc_msgSend(v75, "leafFeatures") | v77}];

  v78 = [v6 addContentActionHandler];
  [v83 setNumberOfAccessoryItems:v78 != 0];
}

- (double)_interItemSpacingForLayout:(id)a3 forSpec:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXAssetsSectionGridConfigurator *)self _layoutIsAspectFit:v7 forSpec:v6];
  v9 = [(PXAssetsSectionGridConfigurator *)self _layoutHasIndividualItems:v7 forSpec:v6];

  v10 = 0.0;
  if (v8)
  {
    if (v9)
    {
      [v6 aspectFitInteritemSpacing];
LABEL_6:
      v10 = v11;
    }
  }

  else if (v9)
  {
    [v6 interitemSpacing];
    goto LABEL_6;
  }

  return v10;
}

- (BOOL)_layoutIsAspectFit:(id)a3 forSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXAssetsSectionGridConfigurator *)self aspectFitContent])
  {
    v8 = [(PXAssetsSectionGridConfigurator *)self _layoutHasIndividualItems:v6 forSpec:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_layoutHasIndividualItems:(id)a3 forSpec:(id)a4
{
  v5 = a4;
  v6 = [a3 numberOfColumns];
  v7 = [v5 maxColumnsForIndividualItems];

  return v6 <= v7;
}

- (CGSize)estimatedSizeOfSectionForAssetCollection:(id)a3 isCurated:(BOOL)a4 numberOfAssets:(int64_t)a5 referenceSize:(CGSize)a6
{
  width = a6.width;
  v7 = a6.width;
  if (a5)
  {
    v9 = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec:a3];
    v10 = [v9 zoomableSpec];

    v11 = [v10 staticNumberOfColumns];
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = a5 / v12;
    if ((a5 / v12) <= 1)
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

- (void)configureAssetSectionLayout:(id)a3
{
  v9 = a3;
  v4 = [v9 bodyContentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v9 bodyContentLayout];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D73CA0]);
    [v6 setMediaKind:2];
    [v6 setPresentationType:0];
    [v6 setContentSource:v9];
    [v6 setLazy:1];
    [v6 setDelegate:v9];
    [v6 setNumberOfItems:{objc_msgSend(v9, "numberOfAssets")}];
    if ([v9 preferredInitialContentLayoutAxis])
    {
      [v6 setAxis:{objc_msgSend(v9, "preferredInitialContentLayoutAxis")}];
    }

    v7 = [v9 preferredInitialContentLayoutNumberOfRows];

    if (v7)
    {
      v8 = [v9 preferredInitialContentLayoutNumberOfRows];
      [v6 setNumberOfRows:{objc_msgSend(v8, "integerValue")}];
    }

    [v6 setAccessoryMediaKind:10];
    [v6 setAccessoryPresentationType:1];
    [v6 setAccessoryItemContentSource:v9];
  }

  [(PXAssetsSectionGridConfigurator *)self _configureGridLayout:v6 inSectionLayout:v9];
  [v9 setBodyContentLayout:v6 wantsDecoration:1];
}

@end