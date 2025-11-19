@interface CKPhotosGridFooterViewModel
- (id)initAssetsDataSourceManager:(id)a3 syndicationIdentifiers:(id)a4;
- (void)_updateDetailedCounts;
- (void)_updateSavedCount;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDetailedCounts:(id *)a3;
- (void)setSavedCount:(int64_t)a3;
@end

@implementation CKPhotosGridFooterViewModel

- (id)initAssetsDataSourceManager:(id)a3 syndicationIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CKPhotosGridFooterViewModel;
  v9 = [(CKPhotosGridFooterViewModel *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x1E69C4888];
    *&v9->_detailedCounts.photosCount = *MEMORY[0x1E69C4888];
    v9->_detailedCounts.othersCount = *(v11 + 16);
    v9->_savedCount = -1;
    objc_storeStrong(&v9->_assetsDataSourceManager, a3);
    v12 = [objc_alloc(MEMORY[0x1E69C44A8]) initWithAssetsDataSourceManager:v10->_assetsDataSourceManager];
    assetsCountsController = v10->_assetsCountsController;
    v10->_assetsCountsController = v12;

    [(PXAssetsDataSourceCountsController *)v10->_assetsCountsController registerChangeObserver:v10 context:PXAssetsDataSourceCountsControllerObserverContext];
    [(PXAssetsDataSourceCountsController *)v10->_assetsCountsController prepareCountsIfNeeded];
    [(CKPhotosGridFooterViewModel *)v10 _updateDetailedCounts];
    if (v8)
    {
      v14 = [v8 copy];
      syndicationIdentifiers = v10->_syndicationIdentifiers;
      v10->_syndicationIdentifiers = v14;

      v16 = [MEMORY[0x1E69A5C30] sharedInstance];
      [v16 registerPhotoLibraryPersistenceManagerListener:v10];

      [(CKPhotosGridFooterViewModel *)v10 _updateSavedCount];
    }
  }

  return v10;
}

- (void)_updateDetailedCounts
{
  v6 = 0uLL;
  v7 = 0;
  assetsCountsController = self->_assetsCountsController;
  if (assetsCountsController)
  {
    [(PXAssetsDataSourceCountsController *)assetsCountsController counts];
  }

  v4 = v6;
  v5 = v7;
  [(CKPhotosGridFooterViewModel *)self setDetailedCounts:&v4];
}

- (void)_updateSavedCount
{
  v5 = [MEMORY[0x1E695DFD8] setWithArray:self->_syndicationIdentifiers];
  v3 = [MEMORY[0x1E69A5C30] sharedInstance];
  v4 = [v3 cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:v5 shouldFetchAndNotifyAsNeeded:1 didStartFetch:0];

  [(CKPhotosGridFooterViewModel *)self setSavedCount:v4];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && PXAssetsDataSourceCountsControllerObserverContext == a5)
  {
    [(CKPhotosGridFooterViewModel *)self _updateDetailedCounts];
  }
}

- (void)setDetailedCounts:(id *)a3
{
  p_detailedCounts = &self->_detailedCounts;
  if (self->_detailedCounts.photosCount != a3->var0 || self->_detailedCounts.videosCount != a3->var1 || self->_detailedCounts.othersCount != a3->var2)
  {
    var2 = a3->var2;
    *&p_detailedCounts->photosCount = *&a3->var0;
    self->_detailedCounts.othersCount = var2;
    photosCount = p_detailedCounts->photosCount;
    videosCount = self->_detailedCounts.videosCount;
    if (p_detailedCounts->photosCount == 0x7FFFFFFFFFFFFFFFLL || videosCount == 0x7FFFFFFFFFFFFFFFLL || var2 == 0x7FFFFFFFFFFFFFFFLL || videosCount + photosCount + var2 == 0)
    {
      v13 = CKFrameworkBundle();
      v14 = [v13 localizedStringForKey:@"CKPhotosGridFooterViewModelLoadingCountsTitle" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v15 = getPLLocalizedCountDescriptionSymbolLoc_ptr;
      v30 = getPLLocalizedCountDescriptionSymbolLoc_ptr;
      if (!getPLLocalizedCountDescriptionSymbolLoc_ptr)
      {
        *&v23 = MEMORY[0x1E69E9820];
        *(&v23 + 1) = 3221225472;
        othersCount = __getPLLocalizedCountDescriptionSymbolLoc_block_invoke;
        v25 = &unk_1E72EB968;
        v26 = &v27;
        __getPLLocalizedCountDescriptionSymbolLoc_block_invoke(&v23);
        v15 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (!v15)
      {
        [CKPhotosGridFooterViewModel setDetailedCounts:];
      }

      v14 = v15(photosCount, videosCount, var2, 1, 0);
    }

    savedCount = self->_savedCount;
    v23 = *&p_detailedCounts->photosCount;
    othersCount = p_detailedCounts->othersCount;
    v17 = _SavedCountDescriptionWithCounts(&v23, savedCount);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__CKPhotosGridFooterViewModel_setDetailedCounts___block_invoke;
    v20[3] = &unk_1E72F3968;
    v21 = v14;
    v22 = v17;
    v18 = v17;
    v19 = v14;
    [(CKPhotosGridFooterViewModel *)self performChanges:v20];
  }
}

void __49__CKPhotosGridFooterViewModel_setDetailedCounts___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle1:*(a1 + 40)];
}

- (void)setSavedCount:(int64_t)a3
{
  if (self->_savedCount != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_savedCount = a3;
    detailedCounts = self->_detailedCounts;
    v6 = _SavedCountDescriptionWithCounts(&detailedCounts, a3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__CKPhotosGridFooterViewModel_setSavedCount___block_invoke;
    v8[3] = &unk_1E72F3990;
    v9 = v6;
    v7 = v6;
    [(CKPhotosGridFooterViewModel *)self performChanges:v8];
  }
}

- (void)setDetailedCounts:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *SOFT_LINKED_PLLocalizedCountDescription(NSUInteger, NSUInteger, NSUInteger, BOOL, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"CKPhotosGridFooterViewModel.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

@end