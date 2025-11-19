@interface PXZoomablePhotosBodyLayoutProvider
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (PXZoomablePhotosBodyLayoutProvider)init;
- (PXZoomablePhotosBodyLayoutProvider)initWithViewModel:(id)a3;
- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7;
- (id)provideZoomableInteraction;
- (void)_configureZoomableLayoutDecorations:(id)a3 fromAssetSectionLayout:(id)a4;
- (void)_updatePhotosViewModelWithChanges:(unint64_t)a3;
- (void)_updateZoomableViewModelWithChanges:(unint64_t)a3;
- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXZoomablePhotosBodyLayoutProvider

- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->invalidationDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (ViewModelObservationContext == a5)
  {
    [(PXZoomablePhotosBodyLayoutProvider *)self _updateZoomableViewModelWithChanges:a4];
  }

  else
  {
    if (operator|| != a5)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosBodyLayoutProvider.m" lineNumber:139 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXZoomablePhotosBodyLayoutProvider *)self _updatePhotosViewModelWithChanges:a4];
  }
}

- (void)_updatePhotosViewModelWithChanges:(unint64_t)a3
{
  v6 = [(PXZoomablePhotosBodyLayoutProvider *)self viewModel];
  v5 = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
  [PXZoomablePhotosViewModelSynchronization updatePhotosViewModel:v6 fromZoomablePhotosViewModel:v5 changeDescriptor:a3];
}

- (void)_updateZoomableViewModelWithChanges:(unint64_t)a3
{
  v6 = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
  v5 = [(PXZoomablePhotosBodyLayoutProvider *)self viewModel];
  [PXZoomablePhotosViewModelSynchronization updateZoomablePhotosViewModel:v6 fromPhotosViewModel:v5 changeDescriptor:a3];
}

- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  [(PXZoomablePhotosBodyLayoutProvider *)self _configureZoomableLayoutDecorations:v11 fromAssetSectionLayout:v9];
  v12 = [v9 addContentActionHandler];

  if (v12)
  {
    objc_initWeak(&location, v9);
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

- (void)_configureZoomableLayoutDecorations:(id)a3 fromAssetSectionLayout:(id)a4
{
  v5 = a4;
  v9 = [a3 assetDecorationSource];
  v6 = [v5 assetDecorationSource];
  v7 = [v5 loadingStatusManager];

  [v9 setLoadingStatusManager:v7];
  [v9 setHidesInteractiveFavoriteBadges:{objc_msgSend(v6, "hidesInteractiveFavoriteBadges")}];
  [v9 setDecorationViewClass:{objc_msgSend(v6, "decorationViewClass")}];
  v8 = [v6 decorationDataSource];
  [v9 setDecorationDataSource:v8];
}

- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7
{
  zoomablePhotosLayout = self->_zoomablePhotosLayout;
  if (zoomablePhotosLayout)
  {
    [(PXZoomablePhotosLayout *)zoomablePhotosLayout removeFromSuperlayout:a3];
  }

  else
  {
    v10 = [PXZoomablePhotosLayout alloc];
    v11 = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
    v12 = [(PXZoomablePhotosLayout *)v10 initWithViewModel:v11];
    v13 = self->_zoomablePhotosLayout;
    self->_zoomablePhotosLayout = v12;

    [(PXZoomablePhotosLayout *)self->_zoomablePhotosLayout setPreventFillingTopAreaInsets:1];
  }

  result = self->_zoomablePhotosLayout;
  *a7 = 0;
  return result;
}

- (id)provideZoomableInteraction
{
  v3 = [PXZoomablePhotosInteraction alloc];
  v4 = [(PXZoomablePhotosBodyLayoutProvider *)self zoomablePhotosViewModel];
  v5 = [(PXZoomablePhotosInteraction *)v3 initWithZoomablePhotosViewModel:v4];

  return v5;
}

- (PXZoomablePhotosBodyLayoutProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosBodyLayoutProvider.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXZoomablePhotosBodyLayoutProvider init]"}];

  abort();
}

- (PXZoomablePhotosBodyLayoutProvider)initWithViewModel:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = PXZoomablePhotosBodyLayoutProvider;
  v6 = [(PXZoomablePhotosBodyLayoutProvider *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [v5 registerChangeObserver:v7 context:ViewModelObservationContext];
    v8 = [PXZoomablePhotosLayoutSpecManager alloc];
    v9 = [v5 specManager];
    v10 = [v9 extendedTraitCollection];
    v11 = [(PXFeatureSpecManager *)v8 initWithExtendedTraitCollection:v10];

    v35 = v7;
    if ([v5 allowsUserDefaults])
    {
      v12 = [MEMORY[0x277D3CE30] standardUserDefaults];
      v13 = [v12 photosGridsUserDefaults];
      [(PXZoomablePhotosLayoutSpecManager *)v11 setUserDefaults:v13];
    }

    else
    {
      [(PXZoomablePhotosLayoutSpecManager *)v11 setUserDefaults:0];
    }

    v14 = [v5 specManager];
    v15 = [v14 availableThumbnailSizes];
    [(PXZoomablePhotosLayoutSpecManager *)v11 setAvailableThumbnailSizes:v15];

    -[PXZoomablePhotosLayoutSpecManager setGridStyle:](v11, "setGridStyle:", [v5 gridStyle]);
    -[PXZoomablePhotosLayoutSpecManager setPreferredUserInterfaceStyle:](v11, "setPreferredUserInterfaceStyle:", [v5 preferredUserInterfaceStyle]);
    [v5 itemAspectRatio];
    [(PXZoomablePhotosLayoutSpecManager *)v11 setItemAspectRatio:?];
    v16 = [v5 preferredAssetCropDelegate];
    [(PXZoomablePhotosLayoutSpecManager *)v11 setForceSaliency:v16 != 0];

    -[PXZoomablePhotosLayoutSpecManager setOverrideDefaultNumberOfColumns:](v11, "setOverrideDefaultNumberOfColumns:", [v5 overrideDefaultNumberOfColumns]);
    v17 = [v5 specManager];
    v18 = [v17 spec];
    -[PXZoomablePhotosLayoutSpecManager setPreferredUserInterfaceStyle:](v11, "setPreferredUserInterfaceStyle:", [v18 preferredUserInterfaceStyle]);

    v33 = [PXZoomablePhotosViewModel alloc];
    v19 = [v5 dataSourceManager];
    v20 = [v5 selectionManager];
    v21 = [v5 mediaProvider];
    [v5 loadingStatusManager];
    v22 = v34 = v11;
    v23 = [v5 badgesModifier];
    v24 = [v5 preferredAssetCropDelegate];
    v25 = [v5 preferredColumnCountsDelegate];
    v26 = [v5 inlinePlaybackController];
    LOBYTE(v32) = 1;
    v27 = v11;
    v28 = v22;
    v29 = [(PXZoomablePhotosViewModel *)v33 initWithDataSourceManager:v19 selectionManager:v20 mediaProvider:v21 specManager:v27 loadingStatusManager:v22 badgesModifier:v23 preferredAssetCropDelegate:v24 preferredColumnCountsDelegate:v25 inlinePlaybackController:v26 sectionIndex:0 headersEnabled:v32];
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