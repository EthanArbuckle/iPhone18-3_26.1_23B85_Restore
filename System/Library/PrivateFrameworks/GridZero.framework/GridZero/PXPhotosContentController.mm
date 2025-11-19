@interface PXPhotosContentController
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4;
- (CGPoint)pointForPointReference:(id)a3 inCoordinateSpace:(id)a4;
- (CGRect)_targetVisibleRectForScrollingScrollViewController:(id)a3 toDetent:(id)a4;
- (NSArray)visibleAssetUUIDs;
- (NSString)debugDescription;
- (NSUndoManager)undoManager;
- (PXAssetReference)assetReferenceForCurrentScrollPosition;
- (PXGAXResponder)axNextResponder;
- (PXPhotosContentController)init;
- (PXPhotosContentController)initWithConfiguration:(id)a3 traitCollection:(id)a4;
- (PXPhotosContentControllerDelegate)delegate;
- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5;
- (PXSimpleIndexPath)_selectableIndexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5;
- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)a3 inDirection:(PXSimpleIndexPath *)a4;
- (PXSimpleIndexPath)selectionManager:(SEL)a3 indexPathClosestToIndexPath:(id)a4 inDirection:(PXSimpleIndexPath *)a5;
- (UIView)headerView;
- (double)collapsibleFooterHeight;
- (double)scrollDistanceAboveDetent:(id)a3;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)dominantAssetReferenceForPhotosOverlayController:(id)a3;
- (id)indexPathsForItemsInRect:(CGRect)a3 coordinateSpace:(id)a4;
- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)a3 toIndexPath:(PXSimpleIndexPath *)a4 inDataSource:(id)a5;
- (id)photosLayout:(id)a3 animationForProposedAnimation:(id)a4;
- (id)placementInContext:(id)a3 forItemReference:(id)a4;
- (id)pointReferenceAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)presentingViewControllerForPhotosInteraction:(id)a3;
- (id)regionOfInterestForAssetReference:(id)a3;
- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4;
- (id)sectionHeaderLayout:(id)a3 viewForSpriteReference:(id)a4;
- (id)selectionManager:(id)a3 indexPathsBetweenIndexPath:(PXSimpleIndexPath *)a4 andIndexPath:(PXSimpleIndexPath *)a5 inDirection:(unint64_t)a6;
- (void)_handleChangeToModifySelectionWithUserInfo:(id)a3;
- (void)_invalidateFullscreenOverlayControllers;
- (void)_invalidateHasScrollableContent;
- (void)_setNeedsUpdate;
- (void)_updateFullscreenOverlayControllers;
- (void)_updateHasScrollableContent;
- (void)_updateIsInCompactMode;
- (void)_updateSectionHeaderAndBodyProvider;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)contentViewDidAppear:(BOOL)a3;
- (void)contentViewDidDisappear:(BOOL)a3;
- (void)contentViewDidScrollToInitialPosition;
- (void)contentViewWillAppear:(BOOL)a3;
- (void)enumerateAssetHitTestResultsInDirection:(unint64_t)a3 fromSpriteReference:(id)a4 usingBlock:(id)a5;
- (void)enumerateAssetHitTestResultsInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)extendSelectionInDirection:(unint64_t)a3;
- (void)moveSelectionInDirection:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosOverlayController:(id)a3 didChangeCurrentLens:(id)a4;
- (void)photosOverlayController:(id)a3 didNavigateToAssetReference:(id)a4;
- (void)reloadVideoThumbnails;
- (void)resumeDataSourceChangesIfNeeded;
- (void)scrollToDetent:(id)a3 animated:(BOOL)a4;
- (void)scrollToEdge:(unsigned int)a3 completionHandler:(id)a4;
- (void)scrollToInitialPositionAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)scrollToNeighboringSectionInDirection:(unint64_t)a3 animated:(BOOL)a4;
- (void)scrollToRevealAsset:(id)a3 completionHandler:(id)a4;
- (void)scrollToRevealAssetReference:(id)a3 scrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5 completionHandler:(id)a6;
- (void)setDelegate:(id)a3;
- (void)setHeaderView:(id)a3;
- (void)setHeaderView:(id)a3 animated:(BOOL)a4;
- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)stopForceIncludingAllAssetsInDataSource;
- (void)suspendDataSourceChangesWithTimeout:(double)a3 identifier:(id)a4;
- (void)updateIfNeeded;
@end

@implementation PXPhotosContentController

- (PXPhotosContentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

- (NSArray)visibleAssetUUIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PXPhotosContentController *)self layout];
  [v4 visibleRect];
  [v4 safeAreaInsets];
  PXEdgeInsetsInsetRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__PXPhotosContentController_visibleAssetUUIDs__block_invoke;
  v15[3] = &unk_278297E28;
  v13 = v3;
  v16 = v13;
  [v4 enumerateAssetsInRect:v15 enumerator:{v6, v8, v10, v12}];

  return v13;
}

void __46__PXPhotosContentController_visibleAssetUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (id)dominantAssetReferenceForPhotosOverlayController:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosContentController *)self layout];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2333;
  v22 = __Block_byref_object_dispose__2334;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__PXPhotosContentController_dominantAssetReferenceForPhotosOverlayController___block_invoke;
  v15[3] = &unk_278297E00;
  v17 = &v18;
  v7 = v6;
  v16 = v7;
  [v7 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v15];
  v8 = v19[5];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v8 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:1089 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:1089 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference", v12}];
  }

LABEL_3:
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __78__PXPhotosContentController_dominantAssetReferenceForPhotosOverlayController___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectReferenceForSpriteIndex:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)photosOverlayController:(id)a3 didNavigateToAssetReference:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PXPhotosContentController_photosOverlayController_didNavigateToAssetReference___block_invoke;
  v7[3] = &unk_278297DD8;
  v8 = v5;
  v6 = v5;
  [(PXPhotosContentController *)self scrollToRevealAssetReference:v6 completionHandler:v7];
}

void __81__PXPhotosContentController_photosOverlayController_didNavigateToAssetReference___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = PXGridZeroGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) asset];
    v6 = [v5 uuid];
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = v7;
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ABF3000, v4, OS_LOG_TYPE_DEFAULT, "Navigated to reveal asset %{public}@ with success: %{public}@", &v9, 0x16u);
  }
}

- (void)photosOverlayController:(id)a3 didChangeCurrentLens:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosContentController *)self contentControllerHelper];
  [v6 contentController:self didChangeCurrentLens:v5];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXExtendedTraitCollectionObservationContext == a5)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_8;
    }

    v11 = v9;
    [(PXPhotosContentController *)self _updateIsInCompactMode];
    goto LABEL_7;
  }

  if (PXPhotosViewModelObservationContext != a5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:1063 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((a4 & 0x100000000000) != 0)
  {
    v11 = v9;
    [(PXPhotosContentController *)self _updateSectionHeaderAndBodyProvider];
LABEL_7:
    v9 = v11;
  }

LABEL_8:
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXPhotosContentController *)self axNextResponder];
  LOBYTE(a4) = [v10 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return a4;
}

- (void)_handleChangeToModifySelectionWithUserInfo:(id)a3
{
  v25 = 0;
  v4 = a3;
  PXGAXGetFocusFromAndToInfosForUserInfo();
  v23 = 0u;
  v24 = 0u;
  PXGAXGetToSimpleIndexPathForUserInfo();

  v5 = [(PXPhotosContentController *)self viewModel];
  v6 = v5;
  if (*MEMORY[0x277D3CF78])
  {
    v7 = [v5 currentDataSource];
    v8 = [v7 identifier];

    if (v8 != v23)
    {
      v9 = [v6 dataSourceManager];
      v10 = [v9 changeHistory];
      v11 = [v6 currentDataSource];
      v12 = [v10 changeDetailsFromDataSourceIdentifier:v23 toDataSourceIdentifier:{objc_msgSend(v11, "identifier")}];

      v20[0] = v23;
      v20[1] = v24;
      [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v12 toIndexPath:v20 hasIncrementalChanges:0 objectChanged:0];
      v23 = v21;
      v24 = v22;
    }
  }

  v13 = [v6 selectionSnapshot];
  v14 = [v13 selectedIndexPaths];
  v21 = v23;
  v22 = v24;
  v15 = [v14 containsIndexPath:&v21];

  if ((v15 & 1) == 0)
  {
    v16 = [v6 selectionManager];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__PXPhotosContentController__handleChangeToModifySelectionWithUserInfo___block_invoke;
    v17[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v18 = v23;
    v19 = v24;
    [v16 performChanges:v17];
  }
}

uint64_t __72__PXPhotosContentController__handleChangeToModifySelectionWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 & 2) != 0)
  {
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((a4 & 4) != 0)
  {
    v13 = 0;
    PXGAXGetSelectionFromAndToInfosForUserInfo();
    v10 = 0;
    v11 = v10;
    if (v10 && [v10 axContentKind] == 6)
    {
      [(PXPhotosContentController *)self _handleChangeToModifySelectionWithUserInfo:v9];
    }
  }

  v12 = [(PXPhotosContentController *)self axNextResponder];
  [v12 axGroup:v8 didChange:a4 userInfo:v9];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v3 = [(PXPhotosContentController *)self gridView];
  v4 = [v3 scrollViewController];
  v5 = [v4 scrollView];

  return v5;
}

- (PXSimpleIndexPath)selectionManager:(SEL)a3 indexPathClosestToIndexPath:(id)a4 inDirection:(PXSimpleIndexPath *)a5
{
  v10 = [(PXPhotosContentController *)self viewModel];
  v11 = [v10 currentDataSource];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v12 = *&a5->item;
  v14[0] = *&a5->dataSourceIdentifier;
  v14[1] = v12;
  [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:v14 fromDataSource:v11 inDirection:a6];

  return result;
}

- (id)selectionManager:(id)a3 indexPathsBetweenIndexPath:(PXSimpleIndexPath *)a4 andIndexPath:(PXSimpleIndexPath *)a5 inDirection:(unint64_t)a6
{
  v10 = [(PXPhotosContentController *)self viewModel];
  v11 = [v10 currentDataSource];
  if (a6 == 2)
  {
    a6 = 5;
LABEL_7:
    v20 = *&a4->dataSourceIdentifier;
    v21 = *&a4->item;
    v15 = objc_alloc_init(MEMORY[0x277D3CD78]);
    v17 = v20;
    v16 = v21;
    v14 = v15;
    v18 = *MEMORY[0x277D3CF78];
    do
    {
      v23 = v17;
      v24 = v16;
      [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:&v23 fromDataSource:v11 inDirection:a6, v20.i64[0]];
      v20 = v25;
      v22 = v26;
      [v14 addIndexPath:&v25];
      v17 = v20;
      v16 = v22;
    }

    while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v20, *&a5->dataSourceIdentifier), vceqq_s64(v22, *&a5->item)))) & 1) == 0 && v20.i64[0] != v18);
    goto LABEL_10;
  }

  if (a6 == 1)
  {
    a6 = 6;
    goto LABEL_7;
  }

  if (a6)
  {
    goto LABEL_7;
  }

  v12 = *&a4->item;
  v25 = *&a4->dataSourceIdentifier;
  v26 = v12;
  v13 = *&a5->item;
  v23 = *&a5->dataSourceIdentifier;
  v24 = v13;
  v14 = [(PXPhotosContentController *)self indexPathsFromIndexPath:&v25 toIndexPath:&v23 inDataSource:v11];
LABEL_10:

  return v14;
}

- (id)sectionHeaderLayout:(id)a3 viewForSpriteReference:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosContentController *)self interaction];
  v7 = [v6 view];
  v8 = [v7 viewForSpriteReference:v5];

  return v8;
}

- (id)presentingViewControllerForPhotosInteraction:(id)a3
{
  v4 = [(PXPhotosContentController *)self delegate];
  v5 = [v4 presentingViewControllerForContentController:self];

  return v5;
}

- (id)photosLayout:(id)a3 animationForProposedAnimation:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosContentController *)self viewModel];
  v7 = [(PXPhotosContentController *)self delegate];
  v8 = [v7 presentingViewControllerForContentController:self];

  v9 = v5;
  if (v8)
  {
    v9 = v5;
    if ([v6 viewDelegateRespondsTo:8])
    {
      v10 = [v6 viewDelegate];
      v9 = [v10 photosViewController:v8 animationForProposedAnimation:v5];
    }
  }

  return v9;
}

- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosContentController *)self layout];
  [v8 setPlacementOverride:v7 forItemReference:v6];
}

- (id)placementInContext:(id)a3 forItemReference:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosContentController *)self layout];
  v9 = [v8 placementInContext:v7 forItemReference:v6];

  return v9;
}

- (void)_updateSectionHeaderAndBodyProvider
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(PXPhotosContentController *)self viewModel];
  v4 = [(PXPhotosContentController *)self customSectionHeaderStyle];
  v5 = [(PXPhotosContentController *)self customSectionBodyStyle];
  if ([v3 allowsLensControl])
  {
    v6 = [v3 currentLens];
    v5 = [v6 defaultSectionBodyStyle];
  }

  v7 = [(PXPhotosContentController *)self layout];
  v8 = [(PXPhotosContentController *)self customSectionHeaderLayoutProvider];
  v9 = [(PXPhotosContentController *)self customBannerProvider];
  v10 = self;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  if ((v4 - 1) >= 9)
  {
    if (v4 != 10)
    {
      goto LABEL_11;
    }

    v17 = v11;
    if (v17)
    {
      v15 = v17;
      goto LABEL_12;
    }

    v16 = [MEMORY[0x277CCA890] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<PXPhotosSectionHeaderLayoutProvider> _PXCreateSectionHeaderLayoutProvider(PXPhotosViewSectionHeaderStyle, PXPhotosContentController *__strong, __strong id<PXPhotosSectionHeaderLayoutProvider>, __strong id<PXPhotosSectionHeaderLayoutViewProvider>, __strong id<PXPhotosBannerProvider>)"}];
    [v16 handleFailureInFunction:v36 file:@"PXPhotosContentController.m" lineNumber:38 description:@"Custom section header layout provider is missing"];
  }

  else
  {
    v14 = [(PXPhotosContentController *)v12 contentControllerHelper];
    v15 = [v14 makeHeaderLayoutProviderForContentController:v12 style:v4 viewProvider:v12 bannerProvider:v13];

    if (v15)
    {
      goto LABEL_12;
    }

    v16 = PXAssertGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v42 = v4;
      _os_log_error_impl(&dword_21ABF3000, v16, OS_LOG_TYPE_ERROR, "Failed to find section header provider for style %lu", buf, 0xCu);
    }
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  [v7 setSectionHeaderProvider:v15];
  v18 = [(PXPhotosContentController *)v12 customSectionBodyLayoutProvider];
  v19 = v12;
  v20 = v18;
  v21 = [v19 viewModel];
  if (v5 - 2 < 2)
  {
    v23 = [v19 contentControllerHelper];
    v24 = [v23 makeBodyLayoutProviderForContentController:v19 style:v5 headerStyle:v4];

    if (v24)
    {
      goto LABEL_23;
    }

    v25 = PXAssertGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v42 = v5;
      _os_log_error_impl(&dword_21ABF3000, v25, OS_LOG_TYPE_ERROR, "Failed to create section body provider for style %lu", buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v5 == 4)
  {
    [v20 setViewModel:v21];
    v22 = v20;
    if (v22)
    {
      goto LABEL_22;
    }

    v25 = [MEMORY[0x277CCA890] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<PXPhotosSectionBodyLayoutProvider> _PXCreateSectionBodyLayoutProvider(PXPhotosViewSectionBodyStyle, PXPhotosViewSectionHeaderStyle, PXPhotosContentController *__strong, __strong id<PXPhotosCustomSectionBodyLayoutProvider>)"}];
    [v25 handleFailureInFunction:v35 file:@"PXPhotosContentController.m" lineNumber:73 description:@"Custom section body layout provider is missing"];

    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_20:
    v24 = 0;
    goto LABEL_23;
  }

  v22 = [[PXZoomablePhotosBodyLayoutProvider alloc] initWithViewModel:v21];
LABEL_22:
  v24 = v22;
LABEL_23:

  [v7 setSectionBodyProvider:v24];
  v26 = [v19 customGlobalHeaderLayoutProvider];
  [v7 setGlobalHeaderProvider:v26];

  v27 = [v7 sectionBodyProvider];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [v7 sectionBodyProvider];
    v30 = [v29 provideZoomableInteraction];
  }

  else
  {
    v30 = 0;
  }

  [v19[7] setZoomablePhotosInteraction:v30];
  if (v5 >= 5)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _PXAllowSelectModeToggleForBodyStyle(PXPhotosViewSectionBodyStyle)"];
    [v37 handleFailureInFunction:v38 file:@"PXPhotosContentController.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __64__PXPhotosContentController__updateSectionHeaderAndBodyProvider__block_invoke;
  v39[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v40 = 1;
  [v3 performChanges:v39];
  v31 = [v19 gridView];
  v32 = [v31 scrollViewController];

  v33 = [v32 scrollView];
  v34 = v33;
  if (v33)
  {
    [v33 setScrollEnabled:1];
  }
}

- (void)_updateIsInCompactMode
{
  v3 = [(PXPhotosContentController *)self viewModel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PXPhotosContentController__updateIsInCompactMode__block_invoke;
  v4[3] = &unk_278298E60;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __51__PXPhotosContentController__updateIsInCompactMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  [v3 setIsInCompactMode:{objc_msgSend(v4, "layoutSizeClass") == 1}];
}

- (void)_updateHasScrollableContent
{
  v3 = [(PXPhotosContentController *)self interaction];
  v4 = [v3 scrollViewController];

  [v4 constrainedVisibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 contentBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(PXPhotosContentController *)self layout];
  v22 = [v21 footerView];
  [v22 frame];
  v24 = v20 - v23;

  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v24;
  LOBYTE(v21) = !CGRectContainsRect(v28, v29);
  v25 = [(PXPhotosContentController *)self viewModel];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__PXPhotosContentController__updateHasScrollableContent__block_invoke;
  v26[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v27 = v21;
  [v25 performChanges:v26];
}

- (void)_invalidateHasScrollableContent
{
  v2 = [(PXPhotosContentController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHasScrollableContent];
}

- (void)_updateFullscreenOverlayControllers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(PXPhotosContentController *)self delegate];
  v4 = [v3 presentingViewControllerForContentController:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(PXPhotosContentController *)self viewModel];
  v6 = [v5 fullscreenOverlayControllers];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setContainerViewController:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_invalidateFullscreenOverlayControllers
{
  v2 = [(PXPhotosContentController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFullscreenOverlayControllers];
}

- (void)updateIfNeeded
{
  v2 = [(PXPhotosContentController *)self updater];
  [v2 updateIfNeeded];
}

- (void)_setNeedsUpdate
{
  v3 = [(PXPhotosContentController *)self updater];

  if (v3)
  {
    v4 = [(PXPhotosContentController *)self delegate];
    [v4 needsUpdateForContentController:self];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PXPhotosContentController *)self _updateInteractionWorkspaceController];
    [(PXPhotosContentController *)self _updateIsInCompactMode];
    v6 = [(PXPhotosContentController *)self contentControllerHelper];
    [v6 contentControllerDelegateDidChange:self];

    [(PXPhotosContentController *)self _updateSectionHeaderAndBodyProvider];
    v5 = obj;
  }
}

- (NSUndoManager)undoManager
{
  v3 = [(PXPhotosContentController *)self delegate];
  v4 = [v3 undoManagerForContentController:self];

  return v4;
}

- (UIView)headerView
{
  v2 = [(PXPhotosContentController *)self layout];
  v3 = [v2 headerView];

  return v3;
}

- (void)setHeaderView:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosContentController *)self layout];
  [v5 setHeaderView:v4 animated:0];
}

- (void)setHeaderView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXPhotosContentController *)self layout];
  [v7 setHeaderView:v6 animated:v4];
}

- (PXAssetReference)assetReferenceForCurrentScrollPosition
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2333;
  v24 = __Block_byref_object_dispose__2334;
  v25 = 0;
  v3 = [(PXPhotosContentController *)self layout];
  v4 = [(PXPhotosContentController *)self viewModel];
  v5 = [v4 isScrolledToTop];

  if (v5)
  {
    v6 = [(PXPhotosContentController *)self viewModel];
    v7 = [v6 currentDataSource];

    v18 = 0u;
    v19 = 0u;
    if (v7)
    {
      [v7 firstItemIndexPath];
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    if (v8 != *MEMORY[0x277D3CF78])
    {
      v17[0] = v18;
      v17[1] = v19;
      v9 = [v7 assetReferenceAtItemIndexPath:v17];
      v10 = v21[5];
      v21[5] = v9;
    }
  }

  v11 = v21[5];
  if (!v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__PXPhotosContentController_assetReferenceForCurrentScrollPosition__block_invoke;
    v14[3] = &unk_278297E00;
    v15 = v3;
    v16 = &v20;
    [v15 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v14];

    v11 = v21[5];
  }

  v12 = v11;

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __67__PXPhotosContentController_assetReferenceForCurrentScrollPosition__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  obj = [*(a1 + 32) objectReferenceForSpriteIndex:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a4 = 1;
  }
}

- (void)stopForceIncludingAllAssetsInDataSource
{
  v3 = [(PXPhotosContentController *)self viewModel];
  v2 = [v3 dataSourceManager];
  [v2 performChanges:&__block_literal_global_57];
}

- (void)resumeDataSourceChangesIfNeeded
{
  v3 = [(PXPhotosContentController *)self dataSourceManagerPauseToken];

  if (v3)
  {
    v4 = [(PXPhotosContentController *)self viewModel];
    v5 = [v4 dataSourceManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__PXPhotosContentController_resumeDataSourceChangesIfNeeded__block_invoke;
    v7[3] = &unk_278298570;
    v7[4] = self;
    [v5 performChanges:v7];
  }

  else
  {
    v6 = PXGridZeroGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ABF3000, v6, OS_LOG_TYPE_DEFAULT, "data source changes don't seem to be paused", buf, 2u);
    }
  }
}

uint64_t __60__PXPhotosContentController_resumeDataSourceChangesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataSourceManagerPauseToken];
  [v4 resumeChangeDeliveryAndBackgroundLoading:v5];

  v6 = *(a1 + 32);

  return [v6 setDataSourceManagerPauseToken:0];
}

- (void)suspendDataSourceChangesWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [(PXPhotosContentController *)self dataSourceManagerPauseToken];

  if (v7)
  {
    v8 = PXGridZeroGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_DEFAULT, "data source changes are already paused", buf, 2u);
    }
  }

  v9 = [(PXPhotosContentController *)self viewModel];
  v10 = [v9 dataSourceManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PXPhotosContentController_suspendDataSourceChangesWithTimeout_identifier___block_invoke;
  v12[3] = &unk_278297DB0;
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v10 performChanges:v12];
}

void __76__PXPhotosContentController_suspendDataSourceChangesWithTimeout_identifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:*(a1 + 40) identifier:*(a1 + 48)];
  [*(a1 + 32) setDataSourceManagerPauseToken:v3];
}

- (CGRect)_targetVisibleRectForScrollingScrollViewController:(id)a3 toDetent:(id)a4
{
  v6 = a4;
  [a3 visibleRect];
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  [v6 offset];

  v11 = [(PXPhotosContentController *)self layout];
  [v11 axis];
  PXPointSetValueForAxis();

  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)scrollToDetent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXPhotosContentController *)self interaction];
  v16 = [v7 scrollViewController];

  [(PXPhotosContentController *)self _targetVisibleRectForScrollingScrollViewController:v16 toDetent:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v16 scrollRectToVisible:0 avoidingContentInsetEdges:v4 animated:{v9, v11, v13, v15}];
}

- (double)scrollDistanceAboveDetent:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosContentController *)self interaction];
  v6 = [v5 scrollViewController];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PXPhotosContentController_scrollDistanceAboveDetent___block_invoke;
  aBlock[3] = &unk_278297D88;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  [v6 visibleRect];
  v8 = v7[2](v7);
  [(PXPhotosContentController *)self _targetVisibleRectForScrollingScrollViewController:v6 toDetent:v4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = (v7[2])(v7, v10, v12, v14, v16) - v8;
  return v17;
}

double __55__PXPhotosContentController_scrollDistanceAboveDetent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layout];
  [v1 axis];
  PXPointValueForAxis();
  v3 = v2;

  return v3;
}

- (void)scrollToNeighboringSectionInDirection:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(PXPhotosContentController *)self interaction];
  v14 = [v7 scrollViewController];

  [v14 stopScrollingAndZoomingAnimations];
  v8 = [(PXPhotosContentController *)self layout];
  [v8 visibleOriginForScrollingToNeighboringSectionInDirection:a3];
  v10 = v9;
  v12 = v11;
  v13 = [v8 rootLayout];
  [v13 convertPoint:v8 fromDescendantLayout:{v10, v12}];
  [v13 visibleRect];
  PXRectWithOriginAndSize();
  [v13 safeAreaInsets];
  PXEdgeInsetsInsetRect();
  [v14 scrollRectToVisible:v4 animated:?];
}

- (void)scrollToRevealAssetReference:(id)a3 scrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5 completionHandler:(id)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a6;
  v14 = a3;
  v15 = [(PXPhotosContentController *)self viewModel];
  v16 = [v15 currentDataSource];
  v17 = [v16 assetReferenceForAssetReference:v14];

  if (!v13 || v17)
  {
    v18 = [(PXPhotosContentController *)self layout];
    v19 = [v18 rootLayout];

    v20 = [v19 createAnchorForScrollingSpriteForObjectReference:v17 toScrollPosition:a4 padding:{top, left, bottom, right}];
    v21 = [v20 autoInvalidate];

    v22 = [(PXPhotosContentController *)self interaction];
    v23 = [v22 scrollViewController];
    [v23 stopScrollingAndZoomingAnimations];

    [v19 enumerateDescendantsLayoutsUsingBlock:&__block_literal_global_53];
    if (v13)
    {
      v24 = [(PXPhotosContentController *)self interaction];
      v25 = [v24 view];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __99__PXPhotosContentController_scrollToRevealAssetReference_scrollPosition_padding_completionHandler___block_invoke_2;
      v26[3] = &unk_278297D40;
      v27 = v13;
      [v25 installLayoutCompletionHandler:v26];
    }
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

void __99__PXPhotosContentController_scrollToRevealAssetReference_scrollPosition_padding_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 isLazy];
  if (v3)
  {
    [v4 setNeedsUpdate];
  }
}

- (void)scrollToRevealAsset:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277D3CCF0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = *(MEMORY[0x277D3CFD8] + 16);
  v12[0] = *MEMORY[0x277D3CFD8];
  v12[1] = v10;
  v11 = [v9 initWithSectionObject:0 itemObject:v8 subitemObject:0 indexPath:v12];

  [(PXPhotosContentController *)self scrollToRevealAssetReference:v11 completionHandler:v7];
}

- (void)reloadVideoThumbnails
{
  v2 = [(PXPhotosContentController *)self layout];
  [v2 reloadVideoThumbnails];
}

- (void)scrollToEdge:(unsigned int)a3 completionHandler:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(PXPhotosContentController *)self layout];
  [v7 clearLastVisibleAreaAnchoringInformation];

  v8 = [(PXPhotosContentController *)self interaction];
  v9 = [v8 scrollViewController];

  [v9 stopScrollingAndZoomingAnimations];
  [v9 scrollToEdge:v4 animated:0];
  if (v6)
  {
    v10 = [(PXPhotosContentController *)self interaction];
    v11 = [v10 view];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PXPhotosContentController_scrollToEdge_completionHandler___block_invoke;
    v12[3] = &unk_278297D40;
    v13 = v6;
    [v11 installLayoutCompletionHandler:v12];
  }
}

- (void)scrollToInitialPositionAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = &__block_literal_global_48;
  }

  v7 = _Block_copy(v6);
  v8 = [(PXPhotosContentController *)self interaction];
  v9 = [v8 scrollViewController];
  [v9 stopScrollingAndZoomingAnimations];

  v10 = [(PXPhotosContentController *)self viewModel];
  v11 = [v10 dataSourceManager];

  [v11 performChanges:&__block_literal_global_50];
  v12 = [(PXPhotosContentController *)self layout];
  v13 = [v12 createAnchorForScrollingToInitialPosition];

  v32 = 0;
  if (v4 && ([v13 anchoredContentEdges], PXEdgesGetCGRectEdge()))
  {
    [v13 invalidate];
    v14 = [(PXPhotosContentController *)self interaction];
    v15 = [v14 scrollViewController];
    [v13 padding];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __83__PXPhotosContentController_scrollToInitialPositionAnimated_withCompletionHandler___block_invoke_3;
    v30[3] = &unk_278297D40;
    v31 = v7;
    [v15 scrollToEdge:v32 padding:1 animated:v30 completionHandler:{v17, v19, v21, v23}];

    v24 = v31;
  }

  else
  {
    v25 = [v13 autoInvalidate];
    if (!v13)
    {
      (*(v7 + 2))(v7, 0);
      goto LABEL_11;
    }

    v26 = [(PXPhotosContentController *)self interaction];
    v27 = [v26 view];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__PXPhotosContentController_scrollToInitialPositionAnimated_withCompletionHandler___block_invoke_4;
    v28[3] = &unk_278297D40;
    v29 = v7;
    [v27 installLayoutCompletionHandler:v28];

    v24 = v29;
  }

LABEL_11:
}

- (double)collapsibleFooterHeight
{
  v2 = [(PXPhotosContentController *)self layout];
  [v2 bottomCollapsibleArea];
  v4 = ceil(v3);

  return v4;
}

- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4
{
  v6 = a3;
  v7 = [(PXPhotosContentController *)self interaction];
  v8 = [v7 view];
  v9 = [(PXPhotosContentController *)self layout];
  v10 = [v9 rootLayout];
  v11 = PXRegionOfInterestForAssetReference(v8, v10, v6, a4, 0);

  return v11;
}

- (id)regionOfInterestForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosContentController *)self interaction];
  v6 = [v5 view];
  v7 = [v6 regionOfInterestForObjectReference:v4];

  return v7;
}

- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)a3 toIndexPath:(PXSimpleIndexPath *)a4 inDataSource:(id)a5
{
  v64 = a5;
  v61 = [v64 identifier];
  v56 = a3;
  section = a3->section;
  v8 = a4->section;
  v9 = objc_alloc_init(MEMORY[0x277D3CD78]);
  v10 = section - v8;
  if (section <= v8)
  {
    v11 = 0;
    do
    {
      v12 = [v64 numberOfItemsInSection:section];
      v13 = [(PXPhotosContentController *)self layout];
      v14 = [v13 presentedItemsGeometryForSection:section inDataSource:v64];

      if (!v14)
      {
        if (!v11)
        {
          goto LABEL_18;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        v18 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v12}];
        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __78__PXPhotosContentController_indexPathsFromIndexPath_toIndexPath_inDataSource___block_invoke;
        v78[3] = &unk_278297C80;
        v79 = v18;
        v19 = v18;
        [v9 modifyItemIndexSetForDataSourceIdentifier:v61 section:section usingBlock:v78];

        goto LABEL_18;
      }

      if (v11)
      {
        item = 0;
        if (!v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
        item = v56->item;
        if (!v10)
        {
LABEL_15:
          v17 = a4->item;
          goto LABEL_16;
        }
      }

      if (v12 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12;
      }

      v17 = v16 - 1;
LABEL_16:
      v18 = [v14 itemsBetweenItem:item andItem:v17];
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_18:

      ++section;
      ++v10;
      --v11;
    }

    while (v10 != 1);
  }

  v20 = v9;
  v21 = v20;
  if (!v20)
  {
    v22 = a4;
    dataSourceIdentifier = v56->dataSourceIdentifier;
    v24 = v56->section;
    v25 = v56->item;
    subitem = v56->subitem;
    v27 = v22->dataSourceIdentifier;
    v28 = v22->section;
    v29 = v22->item;
    v30 = v22->subitem;
    v52 = v22;
    v74 = v56->dataSourceIdentifier;
    v75 = v24;
    v76 = v25;
    v77 = subitem;
    v54 = [v64 objectReferenceAtIndexPath:&v74];
    v60 = v27;
    v62 = v28;
    v74 = v27;
    v75 = v28;
    v58 = v30;
    v59 = v29;
    v76 = v29;
    v77 = v30;
    v31 = [v64 objectReferenceAtIndexPath:&v74];
    v32 = [(PXPhotosContentController *)self interaction];
    v33 = [v32 view];
    v53 = v31;
    LOBYTE(v31) = [v33 isObjectReference:v54 visuallyBeforeObjectReference:v31];

    if (v31)
    {
      v34 = v52;
    }

    else
    {
      v34 = v52;
      dataSourceIdentifier = v52->dataSourceIdentifier;
      v24 = v52->section;
      v25 = v52->item;
      subitem = v52->subitem;
      v60 = v56->dataSourceIdentifier;
      v62 = v56->section;
      v58 = v56->subitem;
      v59 = v56->item;
    }

    v21 = [MEMORY[0x277D3CD78] indexPathSet];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PXPhotosContentController_indexPathsFromIndexPath_toIndexPath_inDataSource___block_invoke_2;
    aBlock[3] = &unk_278297CF8;
    aBlock[4] = self;
    aBlock[5] = a2;
    v35 = *&v56->item;
    v70 = *&v56->dataSourceIdentifier;
    v71 = v35;
    v36 = *&v34->item;
    v72 = *&v34->dataSourceIdentifier;
    v73 = v36;
    v57 = _Block_copy(aBlock);
    while (1)
    {
      v37 = subitem;
      v38 = v25;
      v39 = dataSourceIdentifier;
      v74 = dataSourceIdentifier;
      v75 = v24;
      v76 = v25;
      v77 = subitem;
      [v21 addIndexPath:&v74];
      v40 = dataSourceIdentifier == v60 && v24 == v62;
      v41 = v40 && v25 == v59;
      v65 = dataSourceIdentifier;
      v66 = v24;
      v42 = v41 && subitem == v58;
      v43 = v42;
      v67 = v25;
      v68 = subitem;
      [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:&v65 fromDataSource:v64 inDirection:5];
      dataSourceIdentifier = v74;
      v44 = v75;
      v25 = v76;
      subitem = v77;
      if ([v21 containsIndexPath:&v74])
      {
        break;
      }

      if (v44 != v24 || v43)
      {
        if (v43)
        {
          goto LABEL_39;
        }

        goto LABEL_44;
      }
    }

    v57[2]();
    if (v43)
    {
      goto LABEL_39;
    }

LABEL_44:
    if (v44 < v62)
    {
      v44 = v62 - 1;
      v25 = [v64 numberOfItemsInSection:v62 - 1] - 1;
      dataSourceIdentifier = [v64 identifier];
      v74 = v39;
      v75 = v24;
      v76 = v38;
      v77 = v37;
      v65 = dataSourceIdentifier;
      v66 = v62 - 1;
      subitem = 0x7FFFFFFFFFFFFFFFLL;
      v67 = v25;
      v68 = 0x7FFFFFFFFFFFFFFFLL;
      v46 = [v64 indexPathSetFromIndexPath:&v74 toIndexPath:&v65];
      [v21 unionIndexPathSet:v46];
    }

    v47 = 0;
    v48 = *MEMORY[0x277D3CF78];
    while ((v47 & 1) == 0 && dataSourceIdentifier != v48)
    {
      v74 = dataSourceIdentifier;
      v75 = v44;
      v76 = v25;
      v77 = subitem;
      [v21 addIndexPath:&v74];
      v50 = dataSourceIdentifier == v60 && v44 == v62 && v25 == v59;
      v65 = dataSourceIdentifier;
      v66 = v44;
      v47 = v50 && subitem == v58;
      v67 = v25;
      v68 = subitem;
      [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:&v65 fromDataSource:v64 inDirection:5];
      dataSourceIdentifier = v74;
      v44 = v75;
      v25 = v76;
      subitem = v77;
      if ([v21 containsIndexPath:&v74])
      {
        v57[2]();
        v74 = v60;
        v75 = v62;
        v76 = v59;
        v77 = v58;
        [v21 addIndexPath:&v74];
        break;
      }
    }

LABEL_39:

    v20 = 0;
  }

  return v21;
}

void __78__PXPhotosContentController_indexPathsFromIndexPath_toIndexPath_inDataSource___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = PXAssertGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 64);
    *v9 = *(a1 + 48);
    *&v9[16] = v3;
    v4 = PXSimpleIndexPathDescription();
    v5 = *(a1 + 96);
    *v9 = *(a1 + 80);
    *&v9[16] = v5;
    v6 = PXSimpleIndexPathDescription();
    v7 = [*(a1 + 32) layout];
    v8 = [*(a1 + 32) viewModel];
    *v9 = 138413058;
    *&v9[4] = v4;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    *&v9[22] = 2112;
    *&v9[24] = v7;
    v10 = 2112;
    v11 = v8;
    _os_log_fault_impl(&dword_21ABF3000, v2, OS_LOG_TYPE_FAULT, "infinite cycle detected when gathering indexes between %@ and %@ in %@ (%@)", v9, 0x2Au);
  }
}

- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)a3 inDirection:(PXSimpleIndexPath *)a4
{
  v8 = [(PXPhotosContentController *)self viewModel];
  v9 = [v8 currentDataSource];

  v10 = *&a4->item;
  v12[0] = *&a4->dataSourceIdentifier;
  v12[1] = v10;
  [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:v12 fromDataSource:v9 inDirection:a5];

  return result;
}

- (void)extendSelectionInDirection:(unint64_t)a3
{
  v5 = [(PXPhotosContentController *)self viewModel];
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 selectionManager];
  v7 = v6;
  if (v6)
  {
    [v6 startingIndexPathForMoveInDirection:a3];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v8 = *MEMORY[0x277D3CF78];
  if (v17 == *MEMORY[0x277D3CF78])
  {
    [(PXPhotosContentController *)self moveSelectionInDirection:a3];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v9 = [v5 selectionManager];
    v10 = v9;
    if (v9)
    {
      v13 = v17;
      v14 = v18;
      [v9 extendSelectionFromIndexPath:&v13 inDirection:a3 withDelegate:self];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    if (v15 != v8)
    {
      v11 = [v5 currentDataSource];
      v13 = v15;
      v14 = v16;
      v12 = [v11 assetReferenceAtItemIndexPath:&v13];

      if (v12)
      {
        [(PXPhotosContentController *)self scrollToRevealAssetReference:v12 completionHandler:0];
      }
    }
  }
}

- (void)moveSelectionInDirection:(unint64_t)a3
{
  v5 = [(PXPhotosContentController *)self viewModel];
  v11 = 0u;
  v12 = 0u;
  v6 = [v5 selectionManager];
  v7 = v6;
  if (v6)
  {
    [v6 moveSelectionInDirection:a3 withDelegate:self];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  if (v11 != *MEMORY[0x277D3CF78])
  {
    v8 = [v5 currentDataSource];
    v10[0] = v11;
    v10[1] = v12;
    v9 = [v8 assetReferenceAtItemIndexPath:v10];

    if (v9)
    {
      [(PXPhotosContentController *)self scrollToRevealAssetReference:v9 completionHandler:0];
    }
  }
}

- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3->dataSourceIdentifier == *MEMORY[0x277D3CF78])
  {
    goto LABEL_2;
  }

  if (a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a3->subitem == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    v7 = 0;
  }

  else
  {
    v8 = *&a3->item;
    v11[0] = *&a3->dataSourceIdentifier;
    v11[1] = v8;
    v9 = [v5 assetCollectionAtSectionIndexPath:v11];
    v7 = v9 != 0;
  }

LABEL_7:

  return v7;
}

- (CGPoint)pointForPointReference:(id)a3 inCoordinateSpace:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosContentController *)self layout];
  [v8 pointForPointReference:v7];
  v10 = v9;
  v12 = v11;

  v13 = [v8 rootLayout];
  [v13 convertPoint:v8 fromLayout:{v10, v12}];

  v14 = [(PXPhotosContentController *)self interaction];
  v15 = [v14 view];

  v16 = [(PXPhotosContentController *)self interaction];
  v17 = [v16 scrollViewController];
  v18 = [v17 contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();

  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v20 = v19;
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)pointReferenceAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosContentController *)self interaction];
  v7 = [v6 view];

  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v8 = [(PXPhotosContentController *)self layout];
  v9 = [(PXPhotosContentController *)self interaction];
  v10 = [v9 scrollViewController];
  v11 = [v10 contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v13 = v12;
  v15 = v14;

  v16 = [v8 rootLayout];
  [v8 convertPoint:v16 fromLayout:{v13, v15}];
  v18 = v17;
  v20 = v19;

  v21 = [v8 createPointReferenceAtPoint:{v18, v20}];

  return v21;
}

- (id)indexPathsForItemsInRect:(CGRect)a3 coordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosContentController *)self interaction];
  v7 = [v6 view];

  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(PXPhotosContentController *)self viewModel];
  v17 = [v16 currentDataSource];

  v18 = [(PXPhotosContentController *)self layout];
  v19 = [(PXPhotosContentController *)self interaction];
  v20 = [v19 scrollViewController];
  v21 = [v20 contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [v18 rootLayout];
  [v18 convertRect:v30 fromLayout:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  if (v18)
  {
    [v18 orientedContentTransform];
  }

  else
  {
    v65 = 0;
    memset(&v64, 0, sizeof(v64));
  }

  v66 = v64;
  v67.origin.x = v32;
  v67.origin.y = v34;
  v67.size.width = v36;
  v67.size.height = v38;
  v68 = CGRectApplyAffineTransform(v67, &v66);
  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;
  v43 = objc_alloc_init(MEMORY[0x277D3CD78]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __70__PXPhotosContentController_indexPathsForItemsInRect_coordinateSpace___block_invoke;
  v56[3] = &unk_278297CA8;
  v60 = x;
  v61 = y;
  v62 = width;
  v63 = height;
  v44 = v18;
  v57 = v44;
  v45 = v43;
  v58 = v45;
  v46 = v17;
  v59 = v46;
  [v44 enumerateItemsGeometriesInRect:v46 dataSource:v56 usingBlock:{x, y, width, height}];
  v47 = v45;
  v48 = v47;
  if (!v47)
  {
    v49 = [MEMORY[0x277D3CD78] indexPathSet];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __70__PXPhotosContentController_indexPathsForItemsInRect_coordinateSpace___block_invoke_3;
    v54[3] = &unk_278297CD0;
    v55 = v49;
    v50 = v49;
    [(PXPhotosContentController *)self enumerateAssetHitTestResultsInRect:v54 usingBlock:v9, v11, v13, v15];
    v48 = [v50 copy];
  }

  v51 = v59;
  v52 = v48;

  return v48;
}

void __70__PXPhotosContentController_indexPathsForItemsInRect_coordinateSpace___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 itemsInRect:*(a1 + 32) inLayout:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) identifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__PXPhotosContentController_indexPathsForItemsInRect_coordinateSpace___block_invoke_2;
  v9[3] = &unk_278297C80;
  v10 = v5;
  v8 = v5;
  [v6 modifyItemIndexSetForDataSourceIdentifier:v7 section:a3 usingBlock:v9];
}

void __70__PXPhotosContentController_indexPathsForItemsInRect_coordinateSpace___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    if (v3)
    {
      [v3 indexPath];
    }

    else
    {
      memset(v5, 0, sizeof(v5));
    }

    [v4 addIndexPath:v5];
  }
}

- (void)enumerateAssetHitTestResultsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXPhotosContentController *)self interaction];
  v11 = [v10 view];
  v12 = [v11 hitTestResultsInRect:0 passingTest:{x, y, width, height}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__PXPhotosContentController_enumerateAssetHitTestResultsInRect_usingBlock___block_invoke;
  v14[3] = &unk_278297C30;
  v15 = v9;
  v13 = v9;
  [v12 enumerateObjectsUsingBlock:v14];
}

void __75__PXPhotosContentController_enumerateAssetHitTestResultsInRect_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 identifier];
  if (v3 == @"PXPhotosLayoutHitTestIdentifierAsset")
  {

    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(__CFString *)v3 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

  v6 = v7;
  if (v5)
  {
LABEL_5:
    (*(*(a1 + 32) + 16))();
    v6 = v7;
  }
}

- (PXSimpleIndexPath)_selectableIndexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5
{
  v10 = a5;
  v11 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v11;
  v12 = *MEMORY[0x277D3CF78];
  do
  {
    v13 = *&a4->item;
    v17 = *&a4->dataSourceIdentifier;
    v18 = v13;
    [(PXPhotosContentController *)self _indexPathClosestToIndexPath:&v17 fromDataSource:v10 inDirection:a6];
    v14 = *&retstr->item;
    *&a4->dataSourceIdentifier = *&retstr->dataSourceIdentifier;
    *&a4->item = v14;
    if (retstr->dataSourceIdentifier == v12)
    {
      break;
    }

    v15 = *&retstr->item;
    v17 = *&retstr->dataSourceIdentifier;
    v18 = v15;
  }

  while (![(PXPhotosContentController *)self canSelectObjectAtIndexPath:&v17 inDataSource:v10]);

  return result;
}

- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5
{
  v10 = a5;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4010000000;
  v45 = &unk_21AC883FE;
  v11 = *(MEMORY[0x277D3CFD8] + 16);
  v46 = *MEMORY[0x277D3CFD8];
  v47 = v11;
  if ([v10 numberOfSections] != 1 || (-[PXPhotosContentController layout](self, "layout"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "presentedItemsGeometryForSection:inDataSource:", 0, v10), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    if (!a6 || a4->dataSourceIdentifier == *MEMORY[0x277D3CF78])
    {
      goto LABEL_13;
    }

    if (a4->item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a4->section != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = *&a4->item;
        v40 = *&a4->dataSourceIdentifier;
        v41 = v17;
        v18 = [v10 assetCollectionReferenceAtSectionIndexPath:&v40];
        v19 = [(PXPhotosContentController *)self layout];
        v20 = [v19 spriteReferenceForObjectReference:v18];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __85__PXPhotosContentController__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke_2;
        v30[3] = &unk_278297C58;
        v21 = v10;
        v22 = *&a4->item;
        v33 = *&a4->dataSourceIdentifier;
        v34 = v22;
        v31 = v21;
        v32 = &v42;
        [(PXPhotosContentController *)self enumerateAssetHitTestResultsInDirection:a6 fromSpriteReference:v20 usingBlock:v30];
        v23 = v31;
LABEL_12:
      }
    }

    else if (a4->subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = *&a4->item;
      v40 = *&a4->dataSourceIdentifier;
      v41 = v24;
      v18 = [v10 assetReferenceAtItemIndexPath:&v40];
      v25 = [(PXPhotosContentController *)self layout];
      v20 = [v25 spriteReferenceForObjectReference:v18];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __85__PXPhotosContentController__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke;
      v35[3] = &unk_278297C58;
      v26 = v10;
      v27 = *&a4->item;
      v38 = *&a4->dataSourceIdentifier;
      v39 = v27;
      v36 = v26;
      v37 = &v42;
      [(PXPhotosContentController *)self enumerateAssetHitTestResultsInDirection:a6 fromSpriteReference:v20 usingBlock:v35];
      v23 = v36;
      goto LABEL_12;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v14 = [v13 itemClosestToItem:a4->item inDirection:a6];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v43;
    v16 = *&a4->item;
    *(v43 + 2) = *&a4->dataSourceIdentifier;
    *(v15 + 3) = v16;
    v15[6] = v14;
  }

LABEL_14:
  v28 = *(v43 + 3);
  *&retstr->dataSourceIdentifier = *(v43 + 2);
  *&retstr->item = v28;

  _Block_object_dispose(&v42, 8);
  return result;
}

void __85__PXPhotosContentController__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke(int64x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 userData];
  if (v5)
  {
    v6 = 0uLL;
    v7 = a1[2].i64[0];
    if (v7)
    {
      [v7 indexPathForAssetReference:v5];
      v6 = 0u;
      v8 = 0u;
    }

    else
    {
      v8 = 0uLL;
    }

    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(a1[3], v6), vceqq_s64(a1[4], v8)))) & 1) == 0)
    {
      v9 = *(a1[2].i64[1] + 8);
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *a3 = 1;
    }
  }
}

void __85__PXPhotosContentController__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke_2(int64x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 userData];
  if (v5)
  {
    v6 = 0uLL;
    v7 = a1[2].i64[0];
    if (v7)
    {
      [v7 indexPathForAssetCollectionReference:v5];
      v6 = 0u;
      v8 = 0u;
    }

    else
    {
      v8 = 0uLL;
    }

    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(a1[3], v6), vceqq_s64(a1[4], v8)))) & 1) == 0)
    {
      v9 = *(a1[2].i64[1] + 8);
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *a3 = 1;
    }
  }
}

- (void)enumerateAssetHitTestResultsInDirection:(unint64_t)a3 fromSpriteReference:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = a4;
    v10 = [(PXPhotosContentController *)self interaction];
    v11 = [v10 view];
    v12 = [v11 hitTestResultsInDirection:a3 fromSpriteReference:v9];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __100__PXPhotosContentController_enumerateAssetHitTestResultsInDirection_fromSpriteReference_usingBlock___block_invoke;
    v13[3] = &unk_278297C30;
    v14 = v8;
    [v12 enumerateObjectsUsingBlock:v13];
  }
}

void __100__PXPhotosContentController_enumerateAssetHitTestResultsInDirection_fromSpriteReference_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 identifier];
  if (v3 == @"PXPhotosLayoutHitTestIdentifierAsset")
  {

    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(__CFString *)v3 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

  v6 = v7;
  if (v5)
  {
LABEL_5:
    (*(*(a1 + 32) + 16))();
    v6 = v7;
  }
}

- (void)contentViewDidScrollToInitialPosition
{
  v3 = [(PXPhotosContentController *)self contentControllerHelper];
  [v3 contentViewDidScrollToInitialPositionForContentController:self];
}

- (void)contentViewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosContentController *)self contentControllerHelper];
  [v5 contentViewDidDisappearForContentController:self animated:v3];
}

- (void)contentViewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosContentController *)self contentControllerHelper];
  [v5 contentViewDidAppearForContentController:self animated:v3];

  v6 = [(PXPhotosContentController *)self viewModel];
  [v6 performChanges:&__block_literal_global_38];
}

- (void)contentViewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosContentController *)self contentControllerHelper];
  [v5 contentViewWillAppearForContentController:self animated:v3];

  [(PXPhotosContentController *)self _updateInteractionWorkspaceController];
  v6 = [(PXPhotosContentController *)self viewModel];
  v7 = [v6 dataSourceManager];

  v8 = [MEMORY[0x277D3CD90] sharedScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__PXPhotosContentController_contentViewWillAppear___block_invoke;
  v10[3] = &unk_278299118;
  v11 = v7;
  v9 = v7;
  [v8 scheduleTaskAfterCATransactionCommits:v10];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PXPhotosContentController *)self viewModel];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@:%p viewModel:%@>", v4, self, v6];

  return v7;
}

- (PXPhotosContentController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:249 description:{@"%s is not available as initializer", "-[PXPhotosContentController init]"}];

  abort();
}

- (PXPhotosContentController)initWithConfiguration:(id)a3 traitCollection:(id)a4
{
  v61[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v60.receiver = self;
  v60.super_class = PXPhotosContentController;
  v9 = [(PXPhotosContentController *)&v60 init];
  if (v9)
  {
    v10 = [v7 appSpecificConfiguration];
    v11 = [v10 createContentControllerHelperWithConfiguration:v7 contentController:v9];
    contentControllerHelper = v9->_contentControllerHelper;
    v9->_contentControllerHelper = v11;

    v13 = [v7 mediaProvider];
    mediaProvider = v9->_mediaProvider;
    v9->_mediaProvider = v13;

    if (([v7 isEmbedded] & 1) == 0)
    {
      v15 = objc_alloc(MEMORY[0x277D73CF0]);
      v61[0] = &unk_282C47FD0;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v7, "gridPresentationType")}];
      v61[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      v18 = [v15 initWithFrame:v17 allowedPresentationTypes:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      gridView = v9->_gridView;
      v9->_gridView = v18;
    }

    if (v8)
    {
      v20 = v8;
    }

    else
    {
      v21 = v9->_gridView;
      if (!v21)
      {
        v58 = [MEMORY[0x277CCA890] currentHandler];
        [v58 handleFailureInMethod:a2 object:v9 file:@"PXPhotosContentController.m" lineNumber:160 description:@"An extended trait collection must be provided to a content controller that embeds rather than owns its grid view"];

        v21 = v9->_gridView;
      }

      v22 = [(PXGView *)v21 scrollViewController];
      v20 = [v22 scrollViewExtendedTraitCollection];
    }

    v23 = [v7 adjustedExtendedTraitCollection:v20];
    traitCollection = v9->_traitCollection;
    v9->_traitCollection = v23;

    [(PXExtendedTraitCollection *)v9->_traitCollection registerChangeObserver:v9 context:PXExtendedTraitCollectionObservationContext];
    v25 = objc_alloc(MEMORY[0x277D3CD00]);
    v26 = [v7 dataSourceManager];
    v27 = [v25 initWithAssetsDataSourceManager:v26];
    countsController = v9->_countsController;
    v9->_countsController = v27;

    if ([v7 sectionBodyStyle])
    {
      v29 = ~([v7 allowedBehaviors] >> 13) & 2;
    }

    else
    {
      v29 = 0;
    }

    if ([v7 sectionHeaderStyle] || (objc_msgSend(v7, "allowedBehaviors") & 0x4000) != 0)
    {
      if ([v7 sectionHeaderStyle] == 9)
      {
        v29 |= 4uLL;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = [[PXPhotosLayoutSpecManager alloc] initWithExtendedTraitCollection:v9->_traitCollection options:v29 enableSectionHeaders:v30];
    v32 = [(PXMediaProvider *)v9->_mediaProvider availableThumbnailSizes];
    [(PXPhotosLayoutSpecManager *)v31 setAvailableThumbnailSizes:v32];

    -[PXPhotosLayoutSpecManager setGridStyle:](v31, "setGridStyle:", [v7 gridStyle]);
    -[PXPhotosLayoutSpecManager setBackgroundStyle:](v31, "setBackgroundStyle:", [v7 backgroundStyle]);
    -[PXPhotosLayoutSpecManager setOverrideDefaultNumberOfColumns:](v31, "setOverrideDefaultNumberOfColumns:", [v7 overrideDefaultNumberOfColumns]);
    v33 = [PXPhotosViewModel alloc];
    v34 = [(PXPhotosContentControllerHelper *)v9->_contentControllerHelper inlinePlaybackController];
    v35 = [(PXPhotosViewModel *)v33 initWithConfiguration:v7 specManager:v31 inlinePlaybackController:v34];
    viewModel = v9->_viewModel;
    v9->_viewModel = v35;

    [(PXPhotosViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXPhotosViewModelObservationContext];
    v37 = [v7 overlayController];
    overlayController = v9->_overlayController;
    v9->_overlayController = v37;

    [(PXPhotosOverlayController *)v9->_overlayController setDelegate:v9];
    [(PXPhotosOverlayController *)v9->_overlayController setPhotosViewModel:v9->_viewModel];
    v39 = [PXPhotosViewInteraction interactionWithViewModel:v9->_viewModel];
    interaction = v9->_interaction;
    v9->_interaction = v39;

    [(PXPhotosViewInteraction *)v9->_interaction setDelegate:v9];
    [(PXPhotosViewInteraction *)v9->_interaction setContentController:v9];
    v41 = [[PXPhotosLayout alloc] initWithViewModel:v9->_viewModel specManager:v31 overlayController:v9->_overlayController];
    [(PXPhotosLayout *)v41 setDelegate:v9];
    [(PXPhotosLayout *)v41 addInteraction:v9->_interaction];
    objc_storeStrong(&v9->_layout, v41);
    v42 = [v7 sectionBodyLayoutProvider];
    customSectionBodyLayoutProvider = v9->_customSectionBodyLayoutProvider;
    v9->_customSectionBodyLayoutProvider = v42;

    v9->_customSectionBodyStyle = [v7 sectionBodyStyle];
    v44 = [v7 sectionHeaderLayoutProvider];
    customSectionHeaderLayoutProvider = v9->_customSectionHeaderLayoutProvider;
    v9->_customSectionHeaderLayoutProvider = v44;

    v46 = [v7 globalHeaderLayoutProvider];
    customGlobalHeaderLayoutProvider = v9->_customGlobalHeaderLayoutProvider;
    v9->_customGlobalHeaderLayoutProvider = v46;

    v9->_customSectionHeaderStyle = [v7 sectionHeaderStyle];
    v48 = [v7 bannerProvider];
    customBannerProvider = v9->_customBannerProvider;
    v9->_customBannerProvider = v48;

    [(PXPhotosContentController *)v9 _updateSectionHeaderAndBodyProvider];
    [(PXPhotosContentController *)v9 _updateIsInCompactMode];
    if (([v7 isEmbedded] & 1) == 0)
    {
      -[PXGView setLowMemoryModeEnabled:](v9->_gridView, "setLowMemoryModeEnabled:", [v7 lowMemoryMode]);
      -[PXGView setCustomAssetImageViewClass:](v9->_gridView, "setCustomAssetImageViewClass:", [v7 customAssetImageViewClass]);
      [v7 itemAspectRatio];
      [(PXGView *)v9->_gridView setAllowLargerImagesDuringScrollingInLowMemoryMode:v50 != 1.0];
      v51 = [(PXPhotosContentController *)v9 contentControllerHelper];
      [v51 gridView:v9->_gridView didBecomeAvailableForContentController:v9];

      v52 = [(PXPhotosOverlayController *)v9->_overlayController overlayLayoutProvider];

      if (v52)
      {
        v59 = [MEMORY[0x277CCA890] currentHandler];
        [v59 handleFailureInMethod:a2 object:v9 file:@"PXPhotosContentController.m" lineNumber:223 description:@"Overlay layouts are no longer supported"];

        abort();
      }

      objc_storeStrong(&v9->_rootLayout, v41);
      [(PXGView *)v9->_gridView setRootLayout:v9->_rootLayout];
      [(PXGView *)v9->_gridView setAxNextResponder:v9];
      [(PXGView *)v9->_gridView registerAllTextureProvidersWithMediaProvider:v9->_mediaProvider];
      v53 = [(PXGView *)v9->_gridView scrollViewController];
      [v53 registerObserver:v9];
      [v53 setIndicatorStyle:{objc_msgSend(v7, "scrollIndicatorStyle")}];
      v54 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v9 needsUpdateSelector:sel__setNeedsUpdate];
      updater = v9->_updater;
      v9->_updater = v54;

      [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateFullscreenOverlayControllers needsUpdate:1];
      [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateHasScrollableContent];
    }

    v56 = [(PXPhotosContentController *)v9 contentControllerHelper];
    [v56 initializationWillFinishForContentController:v9];
  }

  return v9;
}

@end