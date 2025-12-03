@interface PXZoomablePhotosViewModelSynchronization
+ (void)updatePhotosViewModel:(id)model fromZoomablePhotosViewModel:(id)viewModel changeDescriptor:(unint64_t)descriptor;
+ (void)updateZoomablePhotosViewModel:(id)model fromPhotosViewModel:(id)viewModel changeDescriptor:(unint64_t)descriptor overrideZoomColumn:(id)column;
@end

@implementation PXZoomablePhotosViewModelSynchronization

+ (void)updateZoomablePhotosViewModel:(id)model fromPhotosViewModel:(id)viewModel changeDescriptor:(unint64_t)descriptor overrideZoomColumn:(id)column
{
  viewModelCopy = viewModel;
  columnCopy = column;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __130__PXZoomablePhotosViewModelSynchronization_updateZoomablePhotosViewModel_fromPhotosViewModel_changeDescriptor_overrideZoomColumn___block_invoke;
  v13[3] = &unk_2782994F0;
  v14 = viewModelCopy;
  v15 = columnCopy;
  descriptorCopy = descriptor;
  v11 = columnCopy;
  v12 = viewModelCopy;
  [model performChanges:v13];
}

void __130__PXZoomablePhotosViewModelSynchronization_updateZoomablePhotosViewModel_fromPhotosViewModel_changeDescriptor_overrideZoomColumn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLowMemoryMode:{objc_msgSend(*(a1 + 32), "lowMemoryMode")}];
  [v3 setIsInSelectMode:{objc_msgSend(*(a1 + 32), "isInSelectMode")}];
  [v3 setViewBasedDecorationsEnabled:{objc_msgSend(*(a1 + 32), "viewBasedDecorationsEnabled")}];
  [v3 setHidesDurationLabelBadge:{objc_msgSend(*(a1 + 32), "hidesDurationLabelBadge")}];
  v4 = [*(a1 + 32) draggedAssetReferences];
  [v3 setDraggedAssetReferences:v4];

  v5 = [*(a1 + 32) dropTargetAssetReference];
  [v3 setDropTargetAssetReference:v5];

  [v3 setAspectFit:{objc_msgSend(*(a1 + 32), "aspectFitContent")}];
  [v3 setCaptionsVisible:{objc_msgSend(*(a1 + 32), "captionsVisible")}];
  [v3 setAllowsCaptionsInSquare:{objc_msgSend(*(a1 + 32), "allowsCaptionsInSquareBehavior")}];
  [v3 setWantsDimmedSelectionStyle:{objc_msgSend(*(a1 + 32), "wantsDimmedSelectionStyle")}];
  [v3 setWantsNumberedSelectionStyle:{objc_msgSend(*(a1 + 32), "wantsNumberedSelectionStyle")}];
  [v3 setWantsFileSizeBadge:{objc_msgSend(*(a1 + 32), "wantsFileSizeBadge")}];
  [v3 setWantsAssetIndexBadge:{objc_msgSend(*(a1 + 32), "wantsAssetIndexBadge")}];
  v6 = [*(a1 + 32) effectProvider];
  [v3 setEffectProvider:v6];

  [v3 setAlwaysShowTopBadges:{objc_msgSend(*(a1 + 32), "wantsTopBadgesWithViewBasedDecorations")}];
  [v3 setShowSensitiveWarningBadges:{objc_msgSend(*(a1 + 32), "wantsSensitiveWarningBadgeDecorations")}];
  [v3 setFaceModeEnabled:{objc_msgSend(*(a1 + 32), "isFaceModeEnabled")}];
  [*(a1 + 32) additionalAspectFitEdgeMargins];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 specManager];
  [v15 setAdditionalAspectFitEdgeMargins:{v8, v10, v12, v14}];

  [v3 setUseLowMemoryDecode:{objc_msgSend(*(a1 + 32), "useLowMemoryDecode")}];
  [v3 setContentShiftStrategy:{objc_msgSend(*(a1 + 32), "contentShiftStrategy")}];
  [v3 setContentStartsAtEnd:{objc_msgSend(*(a1 + 32), "contentStartsAtEnd")}];
  [v3 setEnablePinchEffect:{objc_msgSend(*(a1 + 32), "wantsPinchEffect")}];
  v16 = [v3 assetsDataSourceManager];
  v17 = [v16 dataSource];
  v18 = [v17 numberOfSections] - 1;

  v19 = [v3 assetsDataSourceManager];
  v20 = [v19 dataSource];
  v31[0] = [v20 identifier];
  v31[1] = v18;
  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  v32 = vnegq_f64(v21);
  [v3 setSectionIndexPath:v31];

  [*(a1 + 32) zoomStep];
  v23 = v22;
  [v3 setIsInteractiveZooming:{objc_msgSend(*(a1 + 32), "isInteractiveZooming")}];
  v24 = *(a1 + 40);
  if (v24)
  {
    v25 = [v24 integerValue];
  }

  else
  {
    v25 = llround(v23);
  }

  if ([v3 isInteractiveZooming])
  {
    [*(a1 + 32) zoomStep];
    v27 = v26;
    v28 = [*(a1 + 32) zoomAnchorAssetReference];
    [v3 setInteractiveZoomColumnIndex:v28 withAnchorAssetReference:v27];
  }

  else
  {
    if (v3)
    {
      [v3 zoomState];
      v29 = v30;
    }

    else
    {
      v29 = 0;
    }

    if (v29 == v25)
    {
      goto LABEL_12;
    }

    v28 = [*(a1 + 32) zoomAnchorAssetReference];
    [v3 zoomToColumnIndex:v25 withAnchorAssetReference:v28 animated:{objc_msgSend(*(a1 + 32), "shouldAnimateZooming")}];
  }

LABEL_12:
  if ((*(a1 + 55) & 4) != 0)
  {
    [v3 resetToInitialState];
  }
}

+ (void)updatePhotosViewModel:(id)model fromZoomablePhotosViewModel:(id)viewModel changeDescriptor:(unint64_t)descriptor
{
  modelCopy = model;
  viewModelCopy = viewModel;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__PXZoomablePhotosViewModelSynchronization_updatePhotosViewModel_fromZoomablePhotosViewModel_changeDescriptor___block_invoke;
  v11[3] = &unk_2782994C8;
  v13 = modelCopy;
  descriptorCopy = descriptor;
  v12 = viewModelCopy;
  v9 = modelCopy;
  v10 = viewModelCopy;
  [v9 performChanges:v11];
}

void __111__PXZoomablePhotosViewModelSynchronization_updatePhotosViewModel_fromZoomablePhotosViewModel_changeDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allowedColumns];
  [v3 setNumberOfZoomSteps:{objc_msgSend(v4, "count")}];

  v5 = [*(a1 + 32) denseColumnsIndexRange];
  [v3 setYearsMonthsZoomStepRange:{v5, v6}];
  [v3 setDefaultZoomStep:{objc_msgSend(*(a1 + 32), "defaultColumnIndex")}];
  v7 = *(a1 + 48);
  if (v7)
  {
    v13 = 0u;
    v14 = 0u;
    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 zoomState];
      v8 = *(a1 + 32);
    }

    v9 = [v8 isDisplayingIndividualItems];
    [v3 setEnterSelectModeAllowed:v9 forReason:@"DisplayingIndividualItems"];
    [v3 setOneUpPresentationAllowed:v9 forReason:@"DisplayingIndividualItems"];
    [v3 setFloatingTitleOpacity:0.0];
    [v3 setAspectRatioToggleAllowed:v9 != 0 forReason:@"DisplayingIndividualItems"];
    v10 = [*(a1 + 32) isInteractiveZooming];
    if ([*(a1 + 40) shouldAnimateZooming])
    {
      v11 = 1;
    }

    else
    {
      v11 = [*(a1 + 32) isPinching];
    }

    v12 = [*(a1 + 32) anchorAssetReference];
    [v3 setZoomStep:v10 isInteractive:v11 shouldAnimate:v12 anchorAssetReference:0];

    v7 = *(a1 + 48);
  }

  if ((v7 & 0x4000) != 0)
  {
    [v3 setHideSurroundingContent:objc_msgSend(*(a1 + 32) forReason:{"shouldHideSurroundingContent"), @"ZoomableAnimation"}];
  }
}

@end