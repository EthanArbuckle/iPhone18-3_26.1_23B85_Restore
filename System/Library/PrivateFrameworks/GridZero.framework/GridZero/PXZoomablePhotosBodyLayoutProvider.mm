@interface PXZoomablePhotosBodyLayoutProvider
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (PXZoomablePhotosBodyLayoutProvider)init;
- (PXZoomablePhotosBodyLayoutProvider)initWithViewModel:(id)model;
- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration;
- (id)provideZoomableInteraction;
- (void)_configureZoomableLayoutDecorations:(id)decorations fromAssetSectionLayout:(id)layout;
- (void)_updatePhotosViewModelWithChanges:(unint64_t)changes;
- (void)_updateZoomableViewModelWithChanges:(unint64_t)changes;
- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXZoomablePhotosBodyLayoutProvider

- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->invalidationDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext == context)
  {
    [(PXZoomablePhotosBodyLayoutProvider *)self _updateZoomableViewModelWithChanges:change];
  }

  else
  {
    if (operator|| != context)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosBodyLayoutProvider.m" lineNumber:139 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXZoomablePhotosBodyLayoutProvider *)self _updatePhotosViewModelWithChanges:change];
  }
}

- (void)_updatePhotosViewModelWithChanges:(unint64_t)changes
{
  viewModel = [(PXZoomablePhotosBodyLayoutProvider *)self viewModel];
  zoomablePhotosViewModel = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
  [PXZoomablePhotosViewModelSynchronization updatePhotosViewModel:viewModel fromZoomablePhotosViewModel:zoomablePhotosViewModel changeDescriptor:changes];
}

- (void)_updateZoomableViewModelWithChanges:(unint64_t)changes
{
  zoomablePhotosViewModel = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
  viewModel = [(PXZoomablePhotosBodyLayoutProvider *)self viewModel];
  [PXZoomablePhotosViewModelSynchronization updateZoomablePhotosViewModel:zoomablePhotosViewModel fromPhotosViewModel:viewModel changeDescriptor:changes];
}

- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout
{
  layoutCopy = layout;
  sectionLayoutCopy = sectionLayout;
  sectionedLayoutCopy = sectionedLayout;
  v11 = layoutCopy;
  [(PXZoomablePhotosBodyLayoutProvider *)self _configureZoomableLayoutDecorations:v11 fromAssetSectionLayout:sectionLayoutCopy];
  addContentActionHandler = [sectionLayoutCopy addContentActionHandler];

  if (addContentActionHandler)
  {
    objc_initWeak(&location, sectionLayoutCopy);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__PXZoomablePhotosBodyLayoutProvider_configureSectionBodyLayout_inAssetSectionLayout_forSectionedLayout___block_invoke;
    v13[3] = &unk_278299458;
    objc_copyWeak(&v14, &location);
    [v11 setAddContentHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [v11 setAddContentHandler:0];
  }
}

void __105__PXZoomablePhotosBodyLayoutProvider_configureSectionBodyLayout_inAssetSectionLayout_forSectionedLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained addContentActionHandler];

  if (v1)
  {
    v2 = [WeakRetained addContentActionHandler];
    (v2)[2](v2, WeakRetained);
  }
}

- (void)_configureZoomableLayoutDecorations:(id)decorations fromAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  assetDecorationSource = [decorations assetDecorationSource];
  assetDecorationSource2 = [layoutCopy assetDecorationSource];
  loadingStatusManager = [layoutCopy loadingStatusManager];

  [assetDecorationSource setLoadingStatusManager:loadingStatusManager];
  [assetDecorationSource setHidesInteractiveFavoriteBadges:{objc_msgSend(assetDecorationSource2, "hidesInteractiveFavoriteBadges")}];
  [assetDecorationSource setDecorationViewClass:{objc_msgSend(assetDecorationSource2, "decorationViewClass")}];
  decorationDataSource = [assetDecorationSource2 decorationDataSource];
  [assetDecorationSource setDecorationDataSource:decorationDataSource];
}

- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration
{
  zoomablePhotosLayout = self->_zoomablePhotosLayout;
  if (zoomablePhotosLayout)
  {
    [(PXZoomablePhotosLayout *)zoomablePhotosLayout removeFromSuperlayout:layout];
  }

  else
  {
    v10 = [PXZoomablePhotosLayout alloc];
    zoomablePhotosViewModel = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
    v12 = [(PXZoomablePhotosLayout *)v10 initWithViewModel:zoomablePhotosViewModel];
    v13 = self->_zoomablePhotosLayout;
    self->_zoomablePhotosLayout = v12;

    [(PXZoomablePhotosLayout *)self->_zoomablePhotosLayout setPreventFillingTopAreaInsets:1];
  }

  result = self->_zoomablePhotosLayout;
  *decoration = 0;
  return result;
}

- (id)provideZoomableInteraction
{
  v3 = [PXZoomablePhotosInteraction alloc];
  zoomablePhotosViewModel = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
  v5 = [(PXZoomablePhotosInteraction *)v3 initWithZoomablePhotosViewModel:zoomablePhotosViewModel];

  return v5;
}

- (PXZoomablePhotosBodyLayoutProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosBodyLayoutProvider.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXZoomablePhotosBodyLayoutProvider init]"}];

  abort();
}

- (PXZoomablePhotosBodyLayoutProvider)initWithViewModel:(id)model
{
  modelCopy = model;
  v36.receiver = self;
  v36.super_class = PXZoomablePhotosBodyLayoutProvider;
  v6 = [(PXZoomablePhotosBodyLayoutProvider *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [modelCopy registerChangeObserver:v7 context:ViewModelObservationContext];
    v8 = [PXZoomablePhotosLayoutSpecManager alloc];
    specManager = [modelCopy specManager];
    extendedTraitCollection = [specManager extendedTraitCollection];
    v11 = [(PXFeatureSpecManager *)v8 initWithExtendedTraitCollection:extendedTraitCollection];

    v35 = v7;
    if ([modelCopy allowsUserDefaults])
    {
      standardUserDefaults = [MEMORY[0x277D3CE30] standardUserDefaults];
      photosGridsUserDefaults = [standardUserDefaults photosGridsUserDefaults];
      [(PXZoomablePhotosLayoutSpecManager *)v11 setUserDefaults:photosGridsUserDefaults];
    }

    else
    {
      [(PXZoomablePhotosLayoutSpecManager *)v11 setUserDefaults:0];
    }

    specManager2 = [modelCopy specManager];
    availableThumbnailSizes = [specManager2 availableThumbnailSizes];
    [(PXZoomablePhotosLayoutSpecManager *)v11 setAvailableThumbnailSizes:availableThumbnailSizes];

    -[PXZoomablePhotosLayoutSpecManager setGridStyle:](v11, "setGridStyle:", [modelCopy gridStyle]);
    -[PXZoomablePhotosLayoutSpecManager setPreferredUserInterfaceStyle:](v11, "setPreferredUserInterfaceStyle:", [modelCopy preferredUserInterfaceStyle]);
    [modelCopy itemAspectRatio];
    [(PXZoomablePhotosLayoutSpecManager *)v11 setItemAspectRatio:?];
    preferredAssetCropDelegate = [modelCopy preferredAssetCropDelegate];
    [(PXZoomablePhotosLayoutSpecManager *)v11 setForceSaliency:preferredAssetCropDelegate != 0];

    -[PXZoomablePhotosLayoutSpecManager setOverrideDefaultNumberOfColumns:](v11, "setOverrideDefaultNumberOfColumns:", [modelCopy overrideDefaultNumberOfColumns]);
    specManager3 = [modelCopy specManager];
    spec = [specManager3 spec];
    -[PXZoomablePhotosLayoutSpecManager setPreferredUserInterfaceStyle:](v11, "setPreferredUserInterfaceStyle:", [spec preferredUserInterfaceStyle]);

    v33 = [PXZoomablePhotosViewModel alloc];
    dataSourceManager = [modelCopy dataSourceManager];
    selectionManager = [modelCopy selectionManager];
    mediaProvider = [modelCopy mediaProvider];
    [modelCopy loadingStatusManager];
    v22 = v34 = v11;
    badgesModifier = [modelCopy badgesModifier];
    preferredAssetCropDelegate2 = [modelCopy preferredAssetCropDelegate];
    preferredColumnCountsDelegate = [modelCopy preferredColumnCountsDelegate];
    inlinePlaybackController = [modelCopy inlinePlaybackController];
    LOBYTE(v32) = 1;
    v27 = v11;
    v28 = v22;
    v29 = [(PXZoomablePhotosViewModel *)v33 initWithDataSourceManager:dataSourceManager selectionManager:selectionManager mediaProvider:mediaProvider specManager:v27 loadingStatusManager:v22 badgesModifier:badgesModifier preferredAssetCropDelegate:preferredAssetCropDelegate2 preferredColumnCountsDelegate:preferredColumnCountsDelegate inlinePlaybackController:inlinePlaybackController sectionIndex:0 headersEnabled:v32];
    v7 = v35;
    zoomablePhotosViewModel = v35->_zoomablePhotosViewModel;
    v35->_zoomablePhotosViewModel = v29;

    [(PXZoomablePhotosViewModel *)v7->_zoomablePhotosViewModel registerChangeObserver:v7 context:operator||];
    [(PXZoomablePhotosBodyLayoutProvider *)v35 _updateZoomableViewModelWithChanges:-1];
    [(PXZoomablePhotosBodyLayoutProvider *)v35 _updatePhotosViewModelWithChanges:-1];
  }

  return v7;
}

@end