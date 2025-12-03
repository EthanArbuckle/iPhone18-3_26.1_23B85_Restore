@interface PXPhotosContentController
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source;
- (CGPoint)pointForPointReference:(id)reference inCoordinateSpace:(id)space;
- (CGRect)_targetVisibleRectForScrollingScrollViewController:(id)controller toDetent:(id)detent;
- (NSArray)visibleAssetUUIDs;
- (NSString)debugDescription;
- (NSUndoManager)undoManager;
- (PXAssetReference)assetReferenceForCurrentScrollPosition;
- (PXGAXResponder)axNextResponder;
- (PXPhotosContentController)init;
- (PXPhotosContentController)initWithConfiguration:(id)configuration traitCollection:(id)collection;
- (PXPhotosContentControllerDelegate)delegate;
- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction;
- (PXSimpleIndexPath)_selectableIndexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction;
- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)path inDirection:(PXSimpleIndexPath *)direction;
- (PXSimpleIndexPath)selectionManager:(SEL)manager indexPathClosestToIndexPath:(id)path inDirection:(PXSimpleIndexPath *)direction;
- (UIView)headerView;
- (double)collapsibleFooterHeight;
- (double)scrollDistanceAboveDetent:(id)detent;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)dominantAssetReferenceForPhotosOverlayController:(id)controller;
- (id)indexPathsForItemsInRect:(CGRect)rect coordinateSpace:(id)space;
- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath inDataSource:(id)source;
- (id)photosLayout:(id)layout animationForProposedAnimation:(id)animation;
- (id)placementInContext:(id)context forItemReference:(id)reference;
- (id)pointReferenceAtPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)presentingViewControllerForPhotosInteraction:(id)interaction;
- (id)regionOfInterestForAssetReference:(id)reference;
- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image;
- (id)sectionHeaderLayout:(id)layout viewForSpriteReference:(id)reference;
- (id)selectionManager:(id)manager indexPathsBetweenIndexPath:(PXSimpleIndexPath *)path andIndexPath:(PXSimpleIndexPath *)indexPath inDirection:(unint64_t)direction;
- (void)_handleChangeToModifySelectionWithUserInfo:(id)info;
- (void)_invalidateFullscreenOverlayControllers;
- (void)_invalidateHasScrollableContent;
- (void)_setNeedsUpdate;
- (void)_updateFullscreenOverlayControllers;
- (void)_updateHasScrollableContent;
- (void)_updateIsInCompactMode;
- (void)_updateSectionHeaderAndBodyProvider;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)contentViewDidAppear:(BOOL)appear;
- (void)contentViewDidDisappear:(BOOL)disappear;
- (void)contentViewDidScrollToInitialPosition;
- (void)contentViewWillAppear:(BOOL)appear;
- (void)enumerateAssetHitTestResultsInDirection:(unint64_t)direction fromSpriteReference:(id)reference usingBlock:(id)block;
- (void)enumerateAssetHitTestResultsInRect:(CGRect)rect usingBlock:(id)block;
- (void)extendSelectionInDirection:(unint64_t)direction;
- (void)moveSelectionInDirection:(unint64_t)direction;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosOverlayController:(id)controller didChangeCurrentLens:(id)lens;
- (void)photosOverlayController:(id)controller didNavigateToAssetReference:(id)reference;
- (void)reloadVideoThumbnails;
- (void)resumeDataSourceChangesIfNeeded;
- (void)scrollToDetent:(id)detent animated:(BOOL)animated;
- (void)scrollToEdge:(unsigned int)edge completionHandler:(id)handler;
- (void)scrollToInitialPositionAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)scrollToNeighboringSectionInDirection:(unint64_t)direction animated:(BOOL)animated;
- (void)scrollToRevealAsset:(id)asset completionHandler:(id)handler;
- (void)scrollToRevealAssetReference:(id)reference scrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setHeaderView:(id)view;
- (void)setHeaderView:(id)view animated:(BOOL)animated;
- (void)setPlacementOverride:(id)override forItemReference:(id)reference;
- (void)stopForceIncludingAllAssetsInDataSource;
- (void)suspendDataSourceChangesWithTimeout:(double)timeout identifier:(id)identifier;
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
  layout = [(PXPhotosContentController *)self layout];
  [layout visibleRect];
  [layout safeAreaInsets];
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
  [layout enumerateAssetsInRect:v15 enumerator:{v6, v8, v10, v12}];

  return v13;
}

void __46__PXPhotosContentController_visibleAssetUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (id)dominantAssetReferenceForPhotosOverlayController:(id)controller
{
  controllerCopy = controller;
  layout = [(PXPhotosContentController *)self layout];
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
  v7 = layout;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:1089 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:1089 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference", v12}];
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

- (void)photosOverlayController:(id)controller didNavigateToAssetReference:(id)reference
{
  referenceCopy = reference;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PXPhotosContentController_photosOverlayController_didNavigateToAssetReference___block_invoke;
  v7[3] = &unk_278297DD8;
  v8 = referenceCopy;
  v6 = referenceCopy;
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

- (void)photosOverlayController:(id)controller didChangeCurrentLens:(id)lens
{
  lensCopy = lens;
  contentControllerHelper = [(PXPhotosContentController *)self contentControllerHelper];
  [contentControllerHelper contentController:self didChangeCurrentLens:lensCopy];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXExtendedTraitCollectionObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_8;
    }

    v11 = observableCopy;
    [(PXPhotosContentController *)self _updateIsInCompactMode];
    goto LABEL_7;
  }

  if (PXPhotosViewModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:1063 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 0x100000000000) != 0)
  {
    v11 = observableCopy;
    [(PXPhotosContentController *)self _updateSectionHeaderAndBodyProvider];
LABEL_7:
    observableCopy = v11;
  }

LABEL_8:
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXPhotosContentController *)self axNextResponder];
  LOBYTE(action) = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return action;
}

- (void)_handleChangeToModifySelectionWithUserInfo:(id)info
{
  v25 = 0;
  infoCopy = info;
  PXGAXGetFocusFromAndToInfosForUserInfo();
  v23 = 0u;
  v24 = 0u;
  PXGAXGetToSimpleIndexPathForUserInfo();

  viewModel = [(PXPhotosContentController *)self viewModel];
  v6 = viewModel;
  if (*MEMORY[0x277D3CF78])
  {
    currentDataSource = [viewModel currentDataSource];
    identifier = [currentDataSource identifier];

    if (identifier != v23)
    {
      dataSourceManager = [v6 dataSourceManager];
      changeHistory = [dataSourceManager changeHistory];
      currentDataSource2 = [v6 currentDataSource];
      v12 = [changeHistory changeDetailsFromDataSourceIdentifier:v23 toDataSourceIdentifier:{objc_msgSend(currentDataSource2, "identifier")}];

      v20[0] = v23;
      v20[1] = v24;
      [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v12 toIndexPath:v20 hasIncrementalChanges:0 objectChanged:0];
      v23 = v21;
      v24 = v22;
    }
  }

  selectionSnapshot = [v6 selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v21 = v23;
  v22 = v24;
  v15 = [selectedIndexPaths containsIndexPath:&v21];

  if ((v15 & 1) == 0)
  {
    selectionManager = [v6 selectionManager];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__PXPhotosContentController__handleChangeToModifySelectionWithUserInfo___block_invoke;
    v17[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v18 = v23;
    v19 = v24;
    [selectionManager performChanges:v17];
  }
}

uint64_t __72__PXPhotosContentController__handleChangeToModifySelectionWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if ((change & 2) != 0)
  {
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((change & 4) != 0)
  {
    v13 = 0;
    PXGAXGetSelectionFromAndToInfosForUserInfo();
    v10 = 0;
    v11 = v10;
    if (v10 && [v10 axContentKind] == 6)
    {
      [(PXPhotosContentController *)self _handleChangeToModifySelectionWithUserInfo:infoCopy];
    }
  }

  axNextResponder = [(PXPhotosContentController *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  gridView = [(PXPhotosContentController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (PXSimpleIndexPath)selectionManager:(SEL)manager indexPathClosestToIndexPath:(id)path inDirection:(PXSimpleIndexPath *)direction
{
  viewModel = [(PXPhotosContentController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v12 = *&direction->item;
  v14[0] = *&direction->dataSourceIdentifier;
  v14[1] = v12;
  [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:v14 fromDataSource:currentDataSource inDirection:a6];

  return result;
}

- (id)selectionManager:(id)manager indexPathsBetweenIndexPath:(PXSimpleIndexPath *)path andIndexPath:(PXSimpleIndexPath *)indexPath inDirection:(unint64_t)direction
{
  viewModel = [(PXPhotosContentController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  if (direction == 2)
  {
    direction = 5;
LABEL_7:
    v20 = *&path->dataSourceIdentifier;
    v21 = *&path->item;
    v15 = objc_alloc_init(MEMORY[0x277D3CD78]);
    v17 = v20;
    v16 = v21;
    v14 = v15;
    v18 = *MEMORY[0x277D3CF78];
    do
    {
      v23 = v17;
      v24 = v16;
      [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:&v23 fromDataSource:currentDataSource inDirection:direction, v20.i64[0]];
      v20 = v25;
      v22 = v26;
      [v14 addIndexPath:&v25];
      v17 = v20;
      v16 = v22;
    }

    while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v20, *&indexPath->dataSourceIdentifier), vceqq_s64(v22, *&indexPath->item)))) & 1) == 0 && v20.i64[0] != v18);
    goto LABEL_10;
  }

  if (direction == 1)
  {
    direction = 6;
    goto LABEL_7;
  }

  if (direction)
  {
    goto LABEL_7;
  }

  v12 = *&path->item;
  v25 = *&path->dataSourceIdentifier;
  v26 = v12;
  v13 = *&indexPath->item;
  v23 = *&indexPath->dataSourceIdentifier;
  v24 = v13;
  v14 = [(PXPhotosContentController *)self indexPathsFromIndexPath:&v25 toIndexPath:&v23 inDataSource:currentDataSource];
LABEL_10:

  return v14;
}

- (id)sectionHeaderLayout:(id)layout viewForSpriteReference:(id)reference
{
  referenceCopy = reference;
  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];
  v8 = [view viewForSpriteReference:referenceCopy];

  return v8;
}

- (id)presentingViewControllerForPhotosInteraction:(id)interaction
{
  delegate = [(PXPhotosContentController *)self delegate];
  v5 = [delegate presentingViewControllerForContentController:self];

  return v5;
}

- (id)photosLayout:(id)layout animationForProposedAnimation:(id)animation
{
  animationCopy = animation;
  viewModel = [(PXPhotosContentController *)self viewModel];
  delegate = [(PXPhotosContentController *)self delegate];
  v8 = [delegate presentingViewControllerForContentController:self];

  v9 = animationCopy;
  if (v8)
  {
    v9 = animationCopy;
    if ([viewModel viewDelegateRespondsTo:8])
    {
      viewDelegate = [viewModel viewDelegate];
      v9 = [viewDelegate photosViewController:v8 animationForProposedAnimation:animationCopy];
    }
  }

  return v9;
}

- (void)setPlacementOverride:(id)override forItemReference:(id)reference
{
  referenceCopy = reference;
  overrideCopy = override;
  layout = [(PXPhotosContentController *)self layout];
  [layout setPlacementOverride:overrideCopy forItemReference:referenceCopy];
}

- (id)placementInContext:(id)context forItemReference:(id)reference
{
  referenceCopy = reference;
  contextCopy = context;
  layout = [(PXPhotosContentController *)self layout];
  v9 = [layout placementInContext:contextCopy forItemReference:referenceCopy];

  return v9;
}

- (void)_updateSectionHeaderAndBodyProvider
{
  v43 = *MEMORY[0x277D85DE8];
  viewModel = [(PXPhotosContentController *)self viewModel];
  customSectionHeaderStyle = [(PXPhotosContentController *)self customSectionHeaderStyle];
  customSectionBodyStyle = [(PXPhotosContentController *)self customSectionBodyStyle];
  if ([viewModel allowsLensControl])
  {
    currentLens = [viewModel currentLens];
    customSectionBodyStyle = [currentLens defaultSectionBodyStyle];
  }

  layout = [(PXPhotosContentController *)self layout];
  customSectionHeaderLayoutProvider = [(PXPhotosContentController *)self customSectionHeaderLayoutProvider];
  customBannerProvider = [(PXPhotosContentController *)self customBannerProvider];
  selfCopy = self;
  v11 = customSectionHeaderLayoutProvider;
  v12 = selfCopy;
  v13 = customBannerProvider;
  if ((customSectionHeaderStyle - 1) >= 9)
  {
    if (customSectionHeaderStyle != 10)
    {
      goto LABEL_11;
    }

    v17 = v11;
    if (v17)
    {
      v15 = v17;
      goto LABEL_12;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<PXPhotosSectionHeaderLayoutProvider> _PXCreateSectionHeaderLayoutProvider(PXPhotosViewSectionHeaderStyle, PXPhotosContentController *__strong, __strong id<PXPhotosSectionHeaderLayoutProvider>, __strong id<PXPhotosSectionHeaderLayoutViewProvider>, __strong id<PXPhotosBannerProvider>)"}];
    [currentHandler handleFailureInFunction:v36 file:@"PXPhotosContentController.m" lineNumber:38 description:@"Custom section header layout provider is missing"];
  }

  else
  {
    contentControllerHelper = [(PXPhotosContentController *)v12 contentControllerHelper];
    v15 = [contentControllerHelper makeHeaderLayoutProviderForContentController:v12 style:customSectionHeaderStyle viewProvider:v12 bannerProvider:v13];

    if (v15)
    {
      goto LABEL_12;
    }

    currentHandler = PXAssertGetLog();
    if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v42 = customSectionHeaderStyle;
      _os_log_error_impl(&dword_21ABF3000, currentHandler, OS_LOG_TYPE_ERROR, "Failed to find section header provider for style %lu", buf, 0xCu);
    }
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  [layout setSectionHeaderProvider:v15];
  customSectionBodyLayoutProvider = [(PXPhotosContentController *)v12 customSectionBodyLayoutProvider];
  v19 = v12;
  v20 = customSectionBodyLayoutProvider;
  viewModel2 = [v19 viewModel];
  if (customSectionBodyStyle - 2 < 2)
  {
    contentControllerHelper2 = [v19 contentControllerHelper];
    v24 = [contentControllerHelper2 makeBodyLayoutProviderForContentController:v19 style:customSectionBodyStyle headerStyle:customSectionHeaderStyle];

    if (v24)
    {
      goto LABEL_23;
    }

    currentHandler2 = PXAssertGetLog();
    if (os_log_type_enabled(currentHandler2, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v42 = customSectionBodyStyle;
      _os_log_error_impl(&dword_21ABF3000, currentHandler2, OS_LOG_TYPE_ERROR, "Failed to create section body provider for style %lu", buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (customSectionBodyStyle == 4)
  {
    [v20 setViewModel:viewModel2];
    v22 = v20;
    if (v22)
    {
      goto LABEL_22;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<PXPhotosSectionBodyLayoutProvider> _PXCreateSectionBodyLayoutProvider(PXPhotosViewSectionBodyStyle, PXPhotosViewSectionHeaderStyle, PXPhotosContentController *__strong, __strong id<PXPhotosCustomSectionBodyLayoutProvider>)"}];
    [currentHandler2 handleFailureInFunction:v35 file:@"PXPhotosContentController.m" lineNumber:73 description:@"Custom section body layout provider is missing"];

    goto LABEL_19;
  }

  if (customSectionBodyStyle != 1)
  {
LABEL_20:
    v24 = 0;
    goto LABEL_23;
  }

  v22 = [[PXZoomablePhotosBodyLayoutProvider alloc] initWithViewModel:viewModel2];
LABEL_22:
  v24 = v22;
LABEL_23:

  [layout setSectionBodyProvider:v24];
  customGlobalHeaderLayoutProvider = [v19 customGlobalHeaderLayoutProvider];
  [layout setGlobalHeaderProvider:customGlobalHeaderLayoutProvider];

  sectionBodyProvider = [layout sectionBodyProvider];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    sectionBodyProvider2 = [layout sectionBodyProvider];
    provideZoomableInteraction = [sectionBodyProvider2 provideZoomableInteraction];
  }

  else
  {
    provideZoomableInteraction = 0;
  }

  [v19[7] setZoomablePhotosInteraction:provideZoomableInteraction];
  if (customSectionBodyStyle >= 5)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _PXAllowSelectModeToggleForBodyStyle(PXPhotosViewSectionBodyStyle)"];
    [currentHandler3 handleFailureInFunction:v38 file:@"PXPhotosContentController.m" lineNumber:95 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __64__PXPhotosContentController__updateSectionHeaderAndBodyProvider__block_invoke;
  v39[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v40 = 1;
  [viewModel performChanges:v39];
  gridView = [v19 gridView];
  scrollViewController = [gridView scrollViewController];

  scrollView = [scrollViewController scrollView];
  v34 = scrollView;
  if (scrollView)
  {
    [scrollView setScrollEnabled:1];
  }
}

- (void)_updateIsInCompactMode
{
  viewModel = [(PXPhotosContentController *)self viewModel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PXPhotosContentController__updateIsInCompactMode__block_invoke;
  v4[3] = &unk_278298E60;
  v4[4] = self;
  [viewModel performChanges:v4];
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
  interaction = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction scrollViewController];

  [scrollViewController constrainedVisibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [scrollViewController contentBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  layout = [(PXPhotosContentController *)self layout];
  footerView = [layout footerView];
  [footerView frame];
  v24 = v20 - v23;

  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v24;
  LOBYTE(layout) = !CGRectContainsRect(v28, v29);
  viewModel = [(PXPhotosContentController *)self viewModel];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__PXPhotosContentController__updateHasScrollableContent__block_invoke;
  v26[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
  v27 = layout;
  [viewModel performChanges:v26];
}

- (void)_invalidateHasScrollableContent
{
  updater = [(PXPhotosContentController *)self updater];
  [updater setNeedsUpdateOf:sel__updateHasScrollableContent];
}

- (void)_updateFullscreenOverlayControllers
{
  v16 = *MEMORY[0x277D85DE8];
  delegate = [(PXPhotosContentController *)self delegate];
  v4 = [delegate presentingViewControllerForContentController:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewModel = [(PXPhotosContentController *)self viewModel];
  fullscreenOverlayControllers = [viewModel fullscreenOverlayControllers];

  v7 = [fullscreenOverlayControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(fullscreenOverlayControllers);
        }

        [*(*(&v11 + 1) + 8 * v10++) setContainerViewController:v4];
      }

      while (v8 != v10);
      v8 = [fullscreenOverlayControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_invalidateFullscreenOverlayControllers
{
  updater = [(PXPhotosContentController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFullscreenOverlayControllers];
}

- (void)updateIfNeeded
{
  updater = [(PXPhotosContentController *)self updater];
  [updater updateIfNeeded];
}

- (void)_setNeedsUpdate
{
  updater = [(PXPhotosContentController *)self updater];

  if (updater)
  {
    delegate = [(PXPhotosContentController *)self delegate];
    [delegate needsUpdateForContentController:self];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PXPhotosContentController *)self _updateInteractionWorkspaceController];
    [(PXPhotosContentController *)self _updateIsInCompactMode];
    contentControllerHelper = [(PXPhotosContentController *)self contentControllerHelper];
    [contentControllerHelper contentControllerDelegateDidChange:self];

    [(PXPhotosContentController *)self _updateSectionHeaderAndBodyProvider];
    v5 = obj;
  }
}

- (NSUndoManager)undoManager
{
  delegate = [(PXPhotosContentController *)self delegate];
  v4 = [delegate undoManagerForContentController:self];

  return v4;
}

- (UIView)headerView
{
  layout = [(PXPhotosContentController *)self layout];
  headerView = [layout headerView];

  return headerView;
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  layout = [(PXPhotosContentController *)self layout];
  [layout setHeaderView:viewCopy animated:0];
}

- (void)setHeaderView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  layout = [(PXPhotosContentController *)self layout];
  [layout setHeaderView:viewCopy animated:animatedCopy];
}

- (PXAssetReference)assetReferenceForCurrentScrollPosition
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2333;
  v24 = __Block_byref_object_dispose__2334;
  v25 = 0;
  layout = [(PXPhotosContentController *)self layout];
  viewModel = [(PXPhotosContentController *)self viewModel];
  isScrolledToTop = [viewModel isScrolledToTop];

  if (isScrolledToTop)
  {
    viewModel2 = [(PXPhotosContentController *)self viewModel];
    currentDataSource = [viewModel2 currentDataSource];

    v18 = 0u;
    v19 = 0u;
    if (currentDataSource)
    {
      [currentDataSource firstItemIndexPath];
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
      v9 = [currentDataSource assetReferenceAtItemIndexPath:v17];
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
    v15 = layout;
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
  viewModel = [(PXPhotosContentController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  [dataSourceManager performChanges:&__block_literal_global_57];
}

- (void)resumeDataSourceChangesIfNeeded
{
  dataSourceManagerPauseToken = [(PXPhotosContentController *)self dataSourceManagerPauseToken];

  if (dataSourceManagerPauseToken)
  {
    viewModel = [(PXPhotosContentController *)self viewModel];
    dataSourceManager = [viewModel dataSourceManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__PXPhotosContentController_resumeDataSourceChangesIfNeeded__block_invoke;
    v7[3] = &unk_278298570;
    v7[4] = self;
    [dataSourceManager performChanges:v7];
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

- (void)suspendDataSourceChangesWithTimeout:(double)timeout identifier:(id)identifier
{
  identifierCopy = identifier;
  dataSourceManagerPauseToken = [(PXPhotosContentController *)self dataSourceManagerPauseToken];

  if (dataSourceManagerPauseToken)
  {
    v8 = PXGridZeroGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_DEFAULT, "data source changes are already paused", buf, 2u);
    }
  }

  viewModel = [(PXPhotosContentController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__PXPhotosContentController_suspendDataSourceChangesWithTimeout_identifier___block_invoke;
  v12[3] = &unk_278297DB0;
  timeoutCopy = timeout;
  v12[4] = self;
  v13 = identifierCopy;
  v11 = identifierCopy;
  [dataSourceManager performChanges:v12];
}

void __76__PXPhotosContentController_suspendDataSourceChangesWithTimeout_identifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:*(a1 + 40) identifier:*(a1 + 48)];
  [*(a1 + 32) setDataSourceManagerPauseToken:v3];
}

- (CGRect)_targetVisibleRectForScrollingScrollViewController:(id)controller toDetent:(id)detent
{
  detentCopy = detent;
  [controller visibleRect];
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  [detentCopy offset];

  layout = [(PXPhotosContentController *)self layout];
  [layout axis];
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

- (void)scrollToDetent:(id)detent animated:(BOOL)animated
{
  animatedCopy = animated;
  detentCopy = detent;
  interaction = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction scrollViewController];

  [(PXPhotosContentController *)self _targetVisibleRectForScrollingScrollViewController:scrollViewController toDetent:detentCopy];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [scrollViewController scrollRectToVisible:0 avoidingContentInsetEdges:animatedCopy animated:{v9, v11, v13, v15}];
}

- (double)scrollDistanceAboveDetent:(id)detent
{
  detentCopy = detent;
  interaction = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction scrollViewController];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PXPhotosContentController_scrollDistanceAboveDetent___block_invoke;
  aBlock[3] = &unk_278297D88;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  [scrollViewController visibleRect];
  v8 = v7[2](v7);
  [(PXPhotosContentController *)self _targetVisibleRectForScrollingScrollViewController:scrollViewController toDetent:detentCopy];
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

- (void)scrollToNeighboringSectionInDirection:(unint64_t)direction animated:(BOOL)animated
{
  animatedCopy = animated;
  interaction = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction scrollViewController];

  [scrollViewController stopScrollingAndZoomingAnimations];
  layout = [(PXPhotosContentController *)self layout];
  [layout visibleOriginForScrollingToNeighboringSectionInDirection:direction];
  v10 = v9;
  v12 = v11;
  rootLayout = [layout rootLayout];
  [rootLayout convertPoint:layout fromDescendantLayout:{v10, v12}];
  [rootLayout visibleRect];
  PXRectWithOriginAndSize();
  [rootLayout safeAreaInsets];
  PXEdgeInsetsInsetRect();
  [scrollViewController scrollRectToVisible:animatedCopy animated:?];
}

- (void)scrollToRevealAssetReference:(id)reference scrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding completionHandler:(id)handler
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  handlerCopy = handler;
  referenceCopy = reference;
  viewModel = [(PXPhotosContentController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  v17 = [currentDataSource assetReferenceForAssetReference:referenceCopy];

  if (!handlerCopy || v17)
  {
    layout = [(PXPhotosContentController *)self layout];
    rootLayout = [layout rootLayout];

    v20 = [rootLayout createAnchorForScrollingSpriteForObjectReference:v17 toScrollPosition:position padding:{top, left, bottom, right}];
    autoInvalidate = [v20 autoInvalidate];

    interaction = [(PXPhotosContentController *)self interaction];
    scrollViewController = [interaction scrollViewController];
    [scrollViewController stopScrollingAndZoomingAnimations];

    [rootLayout enumerateDescendantsLayoutsUsingBlock:&__block_literal_global_53];
    if (handlerCopy)
    {
      interaction2 = [(PXPhotosContentController *)self interaction];
      view = [interaction2 view];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __99__PXPhotosContentController_scrollToRevealAssetReference_scrollPosition_padding_completionHandler___block_invoke_2;
      v26[3] = &unk_278297D40;
      v27 = handlerCopy;
      [view installLayoutCompletionHandler:v26];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)scrollToRevealAsset:(id)asset completionHandler:(id)handler
{
  v6 = MEMORY[0x277D3CCF0];
  handlerCopy = handler;
  assetCopy = asset;
  v9 = [v6 alloc];
  v10 = *(MEMORY[0x277D3CFD8] + 16);
  v12[0] = *MEMORY[0x277D3CFD8];
  v12[1] = v10;
  v11 = [v9 initWithSectionObject:0 itemObject:assetCopy subitemObject:0 indexPath:v12];

  [(PXPhotosContentController *)self scrollToRevealAssetReference:v11 completionHandler:handlerCopy];
}

- (void)reloadVideoThumbnails
{
  layout = [(PXPhotosContentController *)self layout];
  [layout reloadVideoThumbnails];
}

- (void)scrollToEdge:(unsigned int)edge completionHandler:(id)handler
{
  v4 = *&edge;
  handlerCopy = handler;
  layout = [(PXPhotosContentController *)self layout];
  [layout clearLastVisibleAreaAnchoringInformation];

  interaction = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction scrollViewController];

  [scrollViewController stopScrollingAndZoomingAnimations];
  [scrollViewController scrollToEdge:v4 animated:0];
  if (handlerCopy)
  {
    interaction2 = [(PXPhotosContentController *)self interaction];
    view = [interaction2 view];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PXPhotosContentController_scrollToEdge_completionHandler___block_invoke;
    v12[3] = &unk_278297D40;
    v13 = handlerCopy;
    [view installLayoutCompletionHandler:v12];
  }
}

- (void)scrollToInitialPositionAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  if (handler)
  {
    handlerCopy = handler;
  }

  else
  {
    handlerCopy = &__block_literal_global_48;
  }

  v7 = _Block_copy(handlerCopy);
  interaction = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction scrollViewController];
  [scrollViewController stopScrollingAndZoomingAnimations];

  viewModel = [(PXPhotosContentController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];

  [dataSourceManager performChanges:&__block_literal_global_50];
  layout = [(PXPhotosContentController *)self layout];
  createAnchorForScrollingToInitialPosition = [layout createAnchorForScrollingToInitialPosition];

  v32 = 0;
  if (animatedCopy && ([createAnchorForScrollingToInitialPosition anchoredContentEdges], PXEdgesGetCGRectEdge()))
  {
    [createAnchorForScrollingToInitialPosition invalidate];
    interaction2 = [(PXPhotosContentController *)self interaction];
    scrollViewController2 = [interaction2 scrollViewController];
    [createAnchorForScrollingToInitialPosition padding];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __83__PXPhotosContentController_scrollToInitialPositionAnimated_withCompletionHandler___block_invoke_3;
    v30[3] = &unk_278297D40;
    v31 = v7;
    [scrollViewController2 scrollToEdge:v32 padding:1 animated:v30 completionHandler:{v17, v19, v21, v23}];

    v24 = v31;
  }

  else
  {
    autoInvalidate = [createAnchorForScrollingToInitialPosition autoInvalidate];
    if (!createAnchorForScrollingToInitialPosition)
    {
      (*(v7 + 2))(v7, 0);
      goto LABEL_11;
    }

    interaction3 = [(PXPhotosContentController *)self interaction];
    view = [interaction3 view];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__PXPhotosContentController_scrollToInitialPositionAnimated_withCompletionHandler___block_invoke_4;
    v28[3] = &unk_278297D40;
    v29 = v7;
    [view installLayoutCompletionHandler:v28];

    v24 = v29;
  }

LABEL_11:
}

- (double)collapsibleFooterHeight
{
  layout = [(PXPhotosContentController *)self layout];
  [layout bottomCollapsibleArea];
  v4 = ceil(v3);

  return v4;
}

- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image
{
  referenceCopy = reference;
  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];
  layout = [(PXPhotosContentController *)self layout];
  rootLayout = [layout rootLayout];
  v11 = PXRegionOfInterestForAssetReference(view, rootLayout, referenceCopy, image, 0);

  return v11;
}

- (id)regionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];
  v7 = [view regionOfInterestForObjectReference:referenceCopy];

  return v7;
}

- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath inDataSource:(id)source
{
  sourceCopy = source;
  identifier = [sourceCopy identifier];
  pathCopy = path;
  section = path->section;
  v8 = indexPath->section;
  v9 = objc_alloc_init(MEMORY[0x277D3CD78]);
  v10 = section - v8;
  if (section <= v8)
  {
    v11 = 0;
    do
    {
      v12 = [sourceCopy numberOfItemsInSection:section];
      layout = [(PXPhotosContentController *)self layout];
      v14 = [layout presentedItemsGeometryForSection:section inDataSource:sourceCopy];

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
        [v9 modifyItemIndexSetForDataSourceIdentifier:identifier section:section usingBlock:v78];

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
        item = pathCopy->item;
        if (!v10)
        {
LABEL_15:
          v17 = indexPath->item;
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
  indexPathSet = v20;
  if (!v20)
  {
    indexPathCopy = indexPath;
    dataSourceIdentifier = pathCopy->dataSourceIdentifier;
    v24 = pathCopy->section;
    v25 = pathCopy->item;
    subitem = pathCopy->subitem;
    v27 = indexPathCopy->dataSourceIdentifier;
    v28 = indexPathCopy->section;
    v29 = indexPathCopy->item;
    v30 = indexPathCopy->subitem;
    v52 = indexPathCopy;
    v74 = pathCopy->dataSourceIdentifier;
    v75 = v24;
    v76 = v25;
    v77 = subitem;
    v54 = [sourceCopy objectReferenceAtIndexPath:&v74];
    v60 = v27;
    v62 = v28;
    v74 = v27;
    v75 = v28;
    v58 = v30;
    v59 = v29;
    v76 = v29;
    v77 = v30;
    v31 = [sourceCopy objectReferenceAtIndexPath:&v74];
    interaction = [(PXPhotosContentController *)self interaction];
    view = [interaction view];
    v53 = v31;
    LOBYTE(v31) = [view isObjectReference:v54 visuallyBeforeObjectReference:v31];

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
      v60 = pathCopy->dataSourceIdentifier;
      v62 = pathCopy->section;
      v58 = pathCopy->subitem;
      v59 = pathCopy->item;
    }

    indexPathSet = [MEMORY[0x277D3CD78] indexPathSet];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__PXPhotosContentController_indexPathsFromIndexPath_toIndexPath_inDataSource___block_invoke_2;
    aBlock[3] = &unk_278297CF8;
    aBlock[4] = self;
    aBlock[5] = a2;
    v35 = *&pathCopy->item;
    v70 = *&pathCopy->dataSourceIdentifier;
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
      [indexPathSet addIndexPath:&v74];
      v40 = dataSourceIdentifier == v60 && v24 == v62;
      v41 = v40 && v25 == v59;
      v65 = dataSourceIdentifier;
      v66 = v24;
      v42 = v41 && subitem == v58;
      v43 = v42;
      v67 = v25;
      v68 = subitem;
      [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:&v65 fromDataSource:sourceCopy inDirection:5];
      dataSourceIdentifier = v74;
      v44 = v75;
      v25 = v76;
      subitem = v77;
      if ([indexPathSet containsIndexPath:&v74])
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
      v25 = [sourceCopy numberOfItemsInSection:v62 - 1] - 1;
      dataSourceIdentifier = [sourceCopy identifier];
      v74 = v39;
      v75 = v24;
      v76 = v38;
      v77 = v37;
      v65 = dataSourceIdentifier;
      v66 = v62 - 1;
      subitem = 0x7FFFFFFFFFFFFFFFLL;
      v67 = v25;
      v68 = 0x7FFFFFFFFFFFFFFFLL;
      v46 = [sourceCopy indexPathSetFromIndexPath:&v74 toIndexPath:&v65];
      [indexPathSet unionIndexPathSet:v46];
    }

    v47 = 0;
    v48 = *MEMORY[0x277D3CF78];
    while ((v47 & 1) == 0 && dataSourceIdentifier != v48)
    {
      v74 = dataSourceIdentifier;
      v75 = v44;
      v76 = v25;
      v77 = subitem;
      [indexPathSet addIndexPath:&v74];
      v50 = dataSourceIdentifier == v60 && v44 == v62 && v25 == v59;
      v65 = dataSourceIdentifier;
      v66 = v44;
      v47 = v50 && subitem == v58;
      v67 = v25;
      v68 = subitem;
      [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:&v65 fromDataSource:sourceCopy inDirection:5];
      dataSourceIdentifier = v74;
      v44 = v75;
      v25 = v76;
      subitem = v77;
      if ([indexPathSet containsIndexPath:&v74])
      {
        v57[2]();
        v74 = v60;
        v75 = v62;
        v76 = v59;
        v77 = v58;
        [indexPathSet addIndexPath:&v74];
        break;
      }
    }

LABEL_39:

    v20 = 0;
  }

  return indexPathSet;
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

- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)path inDirection:(PXSimpleIndexPath *)direction
{
  viewModel = [(PXPhotosContentController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];

  v10 = *&direction->item;
  v12[0] = *&direction->dataSourceIdentifier;
  v12[1] = v10;
  [(PXPhotosContentController *)self _selectableIndexPathClosestToIndexPath:v12 fromDataSource:currentDataSource inDirection:a5];

  return result;
}

- (void)extendSelectionInDirection:(unint64_t)direction
{
  viewModel = [(PXPhotosContentController *)self viewModel];
  v17 = 0u;
  v18 = 0u;
  selectionManager = [viewModel selectionManager];
  v7 = selectionManager;
  if (selectionManager)
  {
    [selectionManager startingIndexPathForMoveInDirection:direction];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v8 = *MEMORY[0x277D3CF78];
  if (v17 == *MEMORY[0x277D3CF78])
  {
    [(PXPhotosContentController *)self moveSelectionInDirection:direction];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    selectionManager2 = [viewModel selectionManager];
    v10 = selectionManager2;
    if (selectionManager2)
    {
      v13 = v17;
      v14 = v18;
      [selectionManager2 extendSelectionFromIndexPath:&v13 inDirection:direction withDelegate:self];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    if (v15 != v8)
    {
      currentDataSource = [viewModel currentDataSource];
      v13 = v15;
      v14 = v16;
      v12 = [currentDataSource assetReferenceAtItemIndexPath:&v13];

      if (v12)
      {
        [(PXPhotosContentController *)self scrollToRevealAssetReference:v12 completionHandler:0];
      }
    }
  }
}

- (void)moveSelectionInDirection:(unint64_t)direction
{
  viewModel = [(PXPhotosContentController *)self viewModel];
  v11 = 0u;
  v12 = 0u;
  selectionManager = [viewModel selectionManager];
  v7 = selectionManager;
  if (selectionManager)
  {
    [selectionManager moveSelectionInDirection:direction withDelegate:self];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  if (v11 != *MEMORY[0x277D3CF78])
  {
    currentDataSource = [viewModel currentDataSource];
    v10[0] = v11;
    v10[1] = v12;
    v9 = [currentDataSource assetReferenceAtItemIndexPath:v10];

    if (v9)
    {
      [(PXPhotosContentController *)self scrollToRevealAssetReference:v9 completionHandler:0];
    }
  }
}

- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (path->dataSourceIdentifier == *MEMORY[0x277D3CF78])
  {
    goto LABEL_2;
  }

  if (path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = path->subitem == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    v7 = 0;
  }

  else
  {
    v8 = *&path->item;
    v11[0] = *&path->dataSourceIdentifier;
    v11[1] = v8;
    v9 = [sourceCopy assetCollectionAtSectionIndexPath:v11];
    v7 = v9 != 0;
  }

LABEL_7:

  return v7;
}

- (CGPoint)pointForPointReference:(id)reference inCoordinateSpace:(id)space
{
  spaceCopy = space;
  referenceCopy = reference;
  layout = [(PXPhotosContentController *)self layout];
  [layout pointForPointReference:referenceCopy];
  v10 = v9;
  v12 = v11;

  rootLayout = [layout rootLayout];
  [rootLayout convertPoint:layout fromLayout:{v10, v12}];

  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];

  interaction2 = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction2 scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
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

- (id)pointReferenceAtPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  spaceCopy = space;
  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];

  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  layout = [(PXPhotosContentController *)self layout];
  interaction2 = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction2 scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
  v13 = v12;
  v15 = v14;

  rootLayout = [layout rootLayout];
  [layout convertPoint:rootLayout fromLayout:{v13, v15}];
  v18 = v17;
  v20 = v19;

  v21 = [layout createPointReferenceAtPoint:{v18, v20}];

  return v21;
}

- (id)indexPathsForItemsInRect:(CGRect)rect coordinateSpace:(id)space
{
  spaceCopy = space;
  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];

  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  viewModel = [(PXPhotosContentController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];

  layout = [(PXPhotosContentController *)self layout];
  interaction2 = [(PXPhotosContentController *)self interaction];
  scrollViewController = [interaction2 scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  rootLayout = [layout rootLayout];
  [layout convertRect:rootLayout fromLayout:{v23, v25, v27, v29}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  if (layout)
  {
    [layout orientedContentTransform];
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
  v44 = layout;
  v57 = v44;
  v45 = v43;
  v58 = v45;
  v46 = currentDataSource;
  v59 = v46;
  [v44 enumerateItemsGeometriesInRect:v46 dataSource:v56 usingBlock:{x, y, width, height}];
  v47 = v45;
  v48 = v47;
  if (!v47)
  {
    indexPathSet = [MEMORY[0x277D3CD78] indexPathSet];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __70__PXPhotosContentController_indexPathsForItemsInRect_coordinateSpace___block_invoke_3;
    v54[3] = &unk_278297CD0;
    v55 = indexPathSet;
    v50 = indexPathSet;
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

- (void)enumerateAssetHitTestResultsInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  interaction = [(PXPhotosContentController *)self interaction];
  view = [interaction view];
  v12 = [view hitTestResultsInRect:0 passingTest:{x, y, width, height}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__PXPhotosContentController_enumerateAssetHitTestResultsInRect_usingBlock___block_invoke;
  v14[3] = &unk_278297C30;
  v15 = blockCopy;
  v13 = blockCopy;
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

- (PXSimpleIndexPath)_selectableIndexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction
{
  directionCopy = direction;
  v11 = *(MEMORY[0x277D3CFD8] + 16);
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v11;
  v12 = *MEMORY[0x277D3CF78];
  do
  {
    v13 = *&source->item;
    v17 = *&source->dataSourceIdentifier;
    v18 = v13;
    [(PXPhotosContentController *)self _indexPathClosestToIndexPath:&v17 fromDataSource:directionCopy inDirection:a6];
    v14 = *&retstr->item;
    *&source->dataSourceIdentifier = *&retstr->dataSourceIdentifier;
    *&source->item = v14;
    if (retstr->dataSourceIdentifier == v12)
    {
      break;
    }

    v15 = *&retstr->item;
    v17 = *&retstr->dataSourceIdentifier;
    v18 = v15;
  }

  while (![(PXPhotosContentController *)self canSelectObjectAtIndexPath:&v17 inDataSource:directionCopy]);

  return result;
}

- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction
{
  directionCopy = direction;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4010000000;
  v45 = &unk_21AC883FE;
  v11 = *(MEMORY[0x277D3CFD8] + 16);
  v46 = *MEMORY[0x277D3CFD8];
  v47 = v11;
  if ([directionCopy numberOfSections] != 1 || (-[PXPhotosContentController layout](self, "layout"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "presentedItemsGeometryForSection:inDataSource:", 0, directionCopy), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    if (!a6 || source->dataSourceIdentifier == *MEMORY[0x277D3CF78])
    {
      goto LABEL_13;
    }

    if (source->item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (source->section != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = *&source->item;
        v40 = *&source->dataSourceIdentifier;
        v41 = v17;
        v18 = [directionCopy assetCollectionReferenceAtSectionIndexPath:&v40];
        layout = [(PXPhotosContentController *)self layout];
        v20 = [layout spriteReferenceForObjectReference:v18];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __85__PXPhotosContentController__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke_2;
        v30[3] = &unk_278297C58;
        v21 = directionCopy;
        v22 = *&source->item;
        v33 = *&source->dataSourceIdentifier;
        v34 = v22;
        v31 = v21;
        v32 = &v42;
        [(PXPhotosContentController *)self enumerateAssetHitTestResultsInDirection:a6 fromSpriteReference:v20 usingBlock:v30];
        v23 = v31;
LABEL_12:
      }
    }

    else if (source->subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = *&source->item;
      v40 = *&source->dataSourceIdentifier;
      v41 = v24;
      v18 = [directionCopy assetReferenceAtItemIndexPath:&v40];
      layout2 = [(PXPhotosContentController *)self layout];
      v20 = [layout2 spriteReferenceForObjectReference:v18];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __85__PXPhotosContentController__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke;
      v35[3] = &unk_278297C58;
      v26 = directionCopy;
      v27 = *&source->item;
      v38 = *&source->dataSourceIdentifier;
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

  v14 = [v13 itemClosestToItem:source->item inDirection:a6];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v43;
    v16 = *&source->item;
    *(v43 + 2) = *&source->dataSourceIdentifier;
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

- (void)enumerateAssetHitTestResultsInDirection:(unint64_t)direction fromSpriteReference:(id)reference usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    referenceCopy = reference;
    interaction = [(PXPhotosContentController *)self interaction];
    view = [interaction view];
    v12 = [view hitTestResultsInDirection:direction fromSpriteReference:referenceCopy];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __100__PXPhotosContentController_enumerateAssetHitTestResultsInDirection_fromSpriteReference_usingBlock___block_invoke;
    v13[3] = &unk_278297C30;
    v14 = blockCopy;
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
  contentControllerHelper = [(PXPhotosContentController *)self contentControllerHelper];
  [contentControllerHelper contentViewDidScrollToInitialPositionForContentController:self];
}

- (void)contentViewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  contentControllerHelper = [(PXPhotosContentController *)self contentControllerHelper];
  [contentControllerHelper contentViewDidDisappearForContentController:self animated:disappearCopy];
}

- (void)contentViewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  contentControllerHelper = [(PXPhotosContentController *)self contentControllerHelper];
  [contentControllerHelper contentViewDidAppearForContentController:self animated:appearCopy];

  viewModel = [(PXPhotosContentController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_38];
}

- (void)contentViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  contentControllerHelper = [(PXPhotosContentController *)self contentControllerHelper];
  [contentControllerHelper contentViewWillAppearForContentController:self animated:appearCopy];

  [(PXPhotosContentController *)self _updateInteractionWorkspaceController];
  viewModel = [(PXPhotosContentController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];

  mEMORY[0x277D3CD90] = [MEMORY[0x277D3CD90] sharedScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__PXPhotosContentController_contentViewWillAppear___block_invoke;
  v10[3] = &unk_278299118;
  v11 = dataSourceManager;
  v9 = dataSourceManager;
  [mEMORY[0x277D3CD90] scheduleTaskAfterCATransactionCommits:v10];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  viewModel = [(PXPhotosContentController *)self viewModel];
  v6 = [viewModel debugDescription];
  v7 = [v3 stringWithFormat:@"<%@:%p viewModel:%@>", v4, self, v6];

  return v7;
}

- (PXPhotosContentController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosContentController.m" lineNumber:249 description:{@"%s is not available as initializer", "-[PXPhotosContentController init]"}];

  abort();
}

- (PXPhotosContentController)initWithConfiguration:(id)configuration traitCollection:(id)collection
{
  v61[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  collectionCopy = collection;
  v60.receiver = self;
  v60.super_class = PXPhotosContentController;
  v9 = [(PXPhotosContentController *)&v60 init];
  if (v9)
  {
    appSpecificConfiguration = [configurationCopy appSpecificConfiguration];
    v11 = [appSpecificConfiguration createContentControllerHelperWithConfiguration:configurationCopy contentController:v9];
    contentControllerHelper = v9->_contentControllerHelper;
    v9->_contentControllerHelper = v11;

    mediaProvider = [configurationCopy mediaProvider];
    mediaProvider = v9->_mediaProvider;
    v9->_mediaProvider = mediaProvider;

    if (([configurationCopy isEmbedded] & 1) == 0)
    {
      v15 = objc_alloc(MEMORY[0x277D73CF0]);
      v61[0] = &unk_282C47FD0;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(configurationCopy, "gridPresentationType")}];
      v61[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      v18 = [v15 initWithFrame:v17 allowedPresentationTypes:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      gridView = v9->_gridView;
      v9->_gridView = v18;
    }

    if (collectionCopy)
    {
      scrollViewExtendedTraitCollection = collectionCopy;
    }

    else
    {
      v21 = v9->_gridView;
      if (!v21)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXPhotosContentController.m" lineNumber:160 description:@"An extended trait collection must be provided to a content controller that embeds rather than owns its grid view"];

        v21 = v9->_gridView;
      }

      scrollViewController = [(PXGView *)v21 scrollViewController];
      scrollViewExtendedTraitCollection = [scrollViewController scrollViewExtendedTraitCollection];
    }

    v23 = [configurationCopy adjustedExtendedTraitCollection:scrollViewExtendedTraitCollection];
    traitCollection = v9->_traitCollection;
    v9->_traitCollection = v23;

    [(PXExtendedTraitCollection *)v9->_traitCollection registerChangeObserver:v9 context:PXExtendedTraitCollectionObservationContext];
    v25 = objc_alloc(MEMORY[0x277D3CD00]);
    dataSourceManager = [configurationCopy dataSourceManager];
    v27 = [v25 initWithAssetsDataSourceManager:dataSourceManager];
    countsController = v9->_countsController;
    v9->_countsController = v27;

    if ([configurationCopy sectionBodyStyle])
    {
      v29 = ~([configurationCopy allowedBehaviors] >> 13) & 2;
    }

    else
    {
      v29 = 0;
    }

    if ([configurationCopy sectionHeaderStyle] || (objc_msgSend(configurationCopy, "allowedBehaviors") & 0x4000) != 0)
    {
      if ([configurationCopy sectionHeaderStyle] == 9)
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
    availableThumbnailSizes = [(PXMediaProvider *)v9->_mediaProvider availableThumbnailSizes];
    [(PXPhotosLayoutSpecManager *)v31 setAvailableThumbnailSizes:availableThumbnailSizes];

    -[PXPhotosLayoutSpecManager setGridStyle:](v31, "setGridStyle:", [configurationCopy gridStyle]);
    -[PXPhotosLayoutSpecManager setBackgroundStyle:](v31, "setBackgroundStyle:", [configurationCopy backgroundStyle]);
    -[PXPhotosLayoutSpecManager setOverrideDefaultNumberOfColumns:](v31, "setOverrideDefaultNumberOfColumns:", [configurationCopy overrideDefaultNumberOfColumns]);
    v33 = [PXPhotosViewModel alloc];
    inlinePlaybackController = [(PXPhotosContentControllerHelper *)v9->_contentControllerHelper inlinePlaybackController];
    v35 = [(PXPhotosViewModel *)v33 initWithConfiguration:configurationCopy specManager:v31 inlinePlaybackController:inlinePlaybackController];
    viewModel = v9->_viewModel;
    v9->_viewModel = v35;

    [(PXPhotosViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXPhotosViewModelObservationContext];
    overlayController = [configurationCopy overlayController];
    overlayController = v9->_overlayController;
    v9->_overlayController = overlayController;

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
    sectionBodyLayoutProvider = [configurationCopy sectionBodyLayoutProvider];
    customSectionBodyLayoutProvider = v9->_customSectionBodyLayoutProvider;
    v9->_customSectionBodyLayoutProvider = sectionBodyLayoutProvider;

    v9->_customSectionBodyStyle = [configurationCopy sectionBodyStyle];
    sectionHeaderLayoutProvider = [configurationCopy sectionHeaderLayoutProvider];
    customSectionHeaderLayoutProvider = v9->_customSectionHeaderLayoutProvider;
    v9->_customSectionHeaderLayoutProvider = sectionHeaderLayoutProvider;

    globalHeaderLayoutProvider = [configurationCopy globalHeaderLayoutProvider];
    customGlobalHeaderLayoutProvider = v9->_customGlobalHeaderLayoutProvider;
    v9->_customGlobalHeaderLayoutProvider = globalHeaderLayoutProvider;

    v9->_customSectionHeaderStyle = [configurationCopy sectionHeaderStyle];
    bannerProvider = [configurationCopy bannerProvider];
    customBannerProvider = v9->_customBannerProvider;
    v9->_customBannerProvider = bannerProvider;

    [(PXPhotosContentController *)v9 _updateSectionHeaderAndBodyProvider];
    [(PXPhotosContentController *)v9 _updateIsInCompactMode];
    if (([configurationCopy isEmbedded] & 1) == 0)
    {
      -[PXGView setLowMemoryModeEnabled:](v9->_gridView, "setLowMemoryModeEnabled:", [configurationCopy lowMemoryMode]);
      -[PXGView setCustomAssetImageViewClass:](v9->_gridView, "setCustomAssetImageViewClass:", [configurationCopy customAssetImageViewClass]);
      [configurationCopy itemAspectRatio];
      [(PXGView *)v9->_gridView setAllowLargerImagesDuringScrollingInLowMemoryMode:v50 != 1.0];
      contentControllerHelper = [(PXPhotosContentController *)v9 contentControllerHelper];
      [contentControllerHelper gridView:v9->_gridView didBecomeAvailableForContentController:v9];

      overlayLayoutProvider = [(PXPhotosOverlayController *)v9->_overlayController overlayLayoutProvider];

      if (overlayLayoutProvider)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v9 file:@"PXPhotosContentController.m" lineNumber:223 description:@"Overlay layouts are no longer supported"];

        abort();
      }

      objc_storeStrong(&v9->_rootLayout, v41);
      [(PXGView *)v9->_gridView setRootLayout:v9->_rootLayout];
      [(PXGView *)v9->_gridView setAxNextResponder:v9];
      [(PXGView *)v9->_gridView registerAllTextureProvidersWithMediaProvider:v9->_mediaProvider];
      scrollViewController2 = [(PXGView *)v9->_gridView scrollViewController];
      [scrollViewController2 registerObserver:v9];
      [scrollViewController2 setIndicatorStyle:{objc_msgSend(configurationCopy, "scrollIndicatorStyle")}];
      v54 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v9 needsUpdateSelector:sel__setNeedsUpdate];
      updater = v9->_updater;
      v9->_updater = v54;

      [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateFullscreenOverlayControllers needsUpdate:1];
      [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateHasScrollableContent];
    }

    contentControllerHelper2 = [(PXPhotosContentController *)v9 contentControllerHelper];
    [contentControllerHelper2 initializationWillFinishForContentController:v9];
  }

  return v9;
}

@end