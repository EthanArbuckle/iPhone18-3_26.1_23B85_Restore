@interface PXZoomableInlineHeadersDataSourceManager
+ (BOOL)supportsAssetsDataSourceManager:(id)a3;
- (PXSimpleIndexPath)sectionIndexPath;
- (PXZoomableInlineHeadersDataSourceManager)initWithAssetsDataSourceManager:(id)a3 indexPath:(PXSimpleIndexPath *)a4;
- (id)_prepareQueue_createMetaDataStoreForAlbumWithDataSource:(id)a3;
- (id)dataSourceForLevel:(unint64_t)a3;
- (void)_didFinishBackgroundPreparationWithResult:(id)a3 forDataSource:(id)a4;
- (void)_prepareInBackgroundWithDataSource:(id)a3;
- (void)_prepareQueue_prepareInBackroundWithDataSource:(id)a3;
- (void)_updateDataSource;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXZoomableInlineHeadersDataSourceManager

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXZoomableInlineHeadersDataSourceManager;
  [(PXZoomableInlineHeadersDataSourceManager *)&v4 didPerformChanges];
  v3 = [(PXZoomableInlineHeadersDataSourceManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)_updateDataSource
{
  v4 = [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager dataSource];
  v5 = v4;
  if (self->_metaDataStore)
  {
    v6 = [v4 containsAnyItems];
    metaDataStore = self->_metaDataStore;
    if (v6)
    {
      v44 = a2;
      v8 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)metaDataStore dataSource];
      v9 = [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager changeHistory];
      v10 = [v8 identifier];
      v11 = [v5 identifier];
      v12 = v10;
      v13 = v8;
      v14 = [v9 changeDetailsFromDataSourceIdentifier:v12 toDataSourceIdentifier:v11];

      v47 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)self->_metaDataStore updateWithDataSourceAfterChanges:v5 changeDetails:v14];
      v54 = 0;
      p_sectionIndexPath = &self->_sectionIndexPath;
      section = self->_sectionIndexPath.section;
      v16 = [v13 identifier];
      v17 = MEMORY[0x277D3CF78];
      v48 = v14;
      v46 = v13;
      if (v16 == self->_sectionIndexPath.dataSourceIdentifier)
      {
        v18 = v16;
        v19 = MEMORY[0x277D3CF78];
        v20 = self->_sectionIndexPath.section;
        v21 = *&self->_sectionIndexPath.item;
        v49 = *&p_sectionIndexPath->dataSourceIdentifier;
        v50 = v21;
        [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v14 toIndexPath:&v49 hasIncrementalChanges:&v54 objectChanged:0];
        v22 = v52;
        *&p_sectionIndexPath->dataSourceIdentifier = v51;
        *&self->_sectionIndexPath.item = v22;
      }

      else
      {
        v23 = [(PXAssetsDataSourceManager *)self->_assetsDataSourceManager changeHistory];
        v24 = [v23 changeDetailsFromDataSourceIdentifier:p_sectionIndexPath->dataSourceIdentifier toDataSourceIdentifier:{objc_msgSend(v13, "identifier")}];

        v25 = *&self->_sectionIndexPath.item;
        v49 = *&p_sectionIndexPath->dataSourceIdentifier;
        v50 = v25;
        [MEMORY[0x277D3CDD0] indexPathAfterRevertingChanges:v24 fromIndexPath:&v49 hasIncrementalChanges:&v54 objectChanged:0];
        v20 = v51.i64[1];
        v18 = v51.i64[0];
        v53 = v52;
        v19 = v17;
        if (p_sectionIndexPath->dataSourceIdentifier == *v17)
        {
          v43 = [MEMORY[0x277CCA890] currentHandler];
          [v43 handleFailureInMethod:v44 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:119 description:@"IndexPath after applying changes is null"];
        }

        if (v54 == 1)
        {
          *&v49 = v18;
          *(&v49 + 1) = v20;
          v50 = v53;
          [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v14 toIndexPath:&v49 hasIncrementalChanges:&v54 objectChanged:0];
          v26 = v52;
          *&p_sectionIndexPath->dataSourceIdentifier = v51;
          *&self->_sectionIndexPath.item = v26;
        }
      }

      if (v54 == 1)
      {
        dataSourceIdentifier = p_sectionIndexPath->dataSourceIdentifier;
      }

      else
      {
        dataSourceIdentifier = [v5 identifier];
        p_sectionIndexPath->dataSourceIdentifier = dataSourceIdentifier;
        self->_sectionIndexPath.section = section;
        v28.f64[0] = NAN;
        v28.f64[1] = NAN;
        *&self->_sectionIndexPath.item = vnegq_f64(v28);
      }

      v29 = *v19;
      if (dataSourceIdentifier == *v19)
      {
        v42 = [MEMORY[0x277CCA890] currentHandler];
        [v42 handleFailureInMethod:v44 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:130 description:@"current IndexPath is null"];
      }

      if (v18 == v29)
      {
        v20 = self->_sectionIndexPath.section;
      }

      v30 = [v46 fetchResultInfoProvider];
      v51.i64[0] = [v46 identifier];
      v51.i64[1] = v20;
      v31.f64[0] = NAN;
      v31.f64[1] = NAN;
      v52 = vnegq_f64(v31);
      v32 = [v30 sortDescriptorsForFetchResultAtSectionIndexPath:&v51];

      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&p_sectionIndexPath->dataSourceIdentifier, *MEMORY[0x277D3CFD8]), vceqq_s64(*&self->_sectionIndexPath.item, *(MEMORY[0x277D3CFD8] + 16))))))
      {
        v41 = [MEMORY[0x277CCA890] currentHandler];
        [v41 handleFailureInMethod:v44 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:137 description:@"After-state index path is null. This indicates an update was missed."];
      }

      v33 = [v5 fetchResultInfoProvider];
      v34 = *&self->_sectionIndexPath.item;
      v51 = *&p_sectionIndexPath->dataSourceIdentifier;
      v52 = v34;
      v35 = [v33 sortDescriptorsForFetchResultAtSectionIndexPath:&v51];

      if (v32 == v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = [v32 isEqual:v35];
      }

      if ((v47 & v36 & 1) == 0 && !self->_isPreparingMetadataInBackground)
      {
        [(PXZoomableInlineHeadersDataSourceManager *)self _prepareInBackgroundWithDataSource:v5];
      }
    }

    else
    {
      self->_metaDataStore = 0;
    }
  }

  else if (!self->_isPreparingMetadataInBackground && [v4 containsAnyItems] && objc_msgSend(v5, "areAllSectionsConsideredAccurate"))
  {
    [(PXZoomableInlineHeadersDataSourceManager *)self _prepareInBackgroundWithDataSource:v5];
  }

  v37 = [[PXZoomableInlineHeadersDataSource alloc] initWithAssetsDataSource:v5 level:0 metaDataStore:self->_metaDataStore];
  yearsDataSource = self->_yearsDataSource;
  self->_yearsDataSource = v37;

  v39 = [[PXZoomableInlineHeadersDataSource alloc] initWithAssetsDataSource:v5 level:1 metaDataStore:self->_metaDataStore];
  monthsDataSource = self->_monthsDataSource;
  self->_monthsDataSource = v39;

  [(PXSectionedDataSourceManager *)self setDataSource:self->_monthsDataSource changeDetails:0];
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[6].section;
  *&retstr->dataSourceIdentifier = *&self[5].subitem;
  *&retstr->item = v3;
  return self;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXAssetsDataSourceManagerObserverContext != a5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:280 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__PXZoomableInlineHeadersDataSourceManager_observable_didChange_context___block_invoke;
    v12[3] = &unk_278297E50;
    v12[4] = self;
    [(PXZoomableInlineHeadersDataSourceManager *)self performChanges:v12];
  }
}

- (id)_prepareQueue_createMetaDataStoreForAlbumWithDataSource:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[PXZoomableInlineHeaderSectionInfoMetaDataStore alloc] initWithDataSource:v4];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v4 fetchResultInfoProvider];
  if (!v7)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_ERROR, "%@ expects that the data source vends fetchResultInfoProviders", buf, 0xCu);
    }
  }

  v9 = [v4 identifier];
  *&buf[8] = xmmword_21AC7D620;
  *buf = v9;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  if (([v7 sortOrderForFetchResultAtSectionIndexPath:buf] - 1) <= 1)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke;
    v29[3] = &unk_278297EC8;
    v10 = v6;
    v30 = v10;
    *&buf[8] = xmmword_21AC7D620;
    *buf = v9;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [v7 fetchAssetSortDatesForFetchResultAtSectionIndexPath:buf dateRangeEliminationBlock:v29];

    if (v11)
    {
      v12 = [v11 sortDescriptor];
      v13 = [v12 ascending];

      v14 = [v11 dateByIndex];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4010000000;
      v32 = &unk_21AC883FE;
      v33 = 0u;
      v34 = 0u;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x4010000000;
      v26[3] = &unk_21AC883FE;
      v27 = 0u;
      v28 = 0u;
      v15 = [v11 fetchedIndexes];
      if (v13)
      {
        v16 = &__block_literal_global_2995;
      }

      else
      {
        v16 = &__block_literal_global_38_2996;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke_4;
      v19[3] = &unk_278297F10;
      v17 = v14;
      v20 = v17;
      v23 = v16;
      v24 = buf;
      v21 = v10;
      v22 = v5;
      v25 = v26;
      [v15 enumerateIndexesUsingBlock:v19];

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  return v5;
}

BOOL __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 components:12 fromDate:a2];
  v8 = [*(a1 + 32) components:12 fromDate:v6];

  v9 = [v7 year];
  if (v9 == [v8 year])
  {
    v10 = [v7 month];
    v11 = v10 == [v8 month];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __100__PXZoomableInlineHeadersDataSourceManager__prepareQueue_createMetaDataStoreForAlbumWithDataSource___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [*(a1 + 40) components:12 fromDate:v6];
    v8 = [v7 year];
    v9 = [v7 month];
    if (!*(*(*(a1 + 64) + 8) + 40) || (*(*(a1 + 56) + 16))())
    {
      [v6 timeIntervalSinceReferenceDate];
      v10 = *(*(a1 + 64) + 8);
      v10[4] = a2;
      v10[5] = v8;
      v10[6] = v9;
      v10[7] = v11;
      v12 = *(a1 + 48);
      v13 = *(*(a1 + 64) + 8);
      v14 = *(v13 + 48);
      v20 = *(v13 + 32);
      v21 = v14;
      [v12 addSectionInfo:&v20 forLevel:0];
    }

    if (!*(*(*(a1 + 72) + 8) + 40) || ((*(*(a1 + 56) + 16))() & 1) != 0 || (*(*(a1 + 56) + 16))())
    {
      [v6 timeIntervalSinceReferenceDate];
      v15 = *(*(a1 + 72) + 8);
      v15[4] = a2;
      v15[5] = v8;
      v15[6] = v9;
      v15[7] = v16;
      v17 = *(a1 + 48);
      v18 = *(*(a1 + 72) + 8);
      v19 = *(v18 + 48);
      v20 = *(v18 + 32);
      v21 = v19;
      [v17 addSectionInfo:&v20 forLevel:1];
    }
  }
}

- (void)_didFinishBackgroundPreparationWithResult:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  if (!self->_isPreparingMetadataInBackground)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"_isPreparingMetadataInBackground"}];
  }

  self->_isPreparingMetadataInBackground = 0;
  metaDataStore = self->_metaDataStore;
  self->_metaDataStore = v6;
  v8 = v6;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__PXZoomableInlineHeadersDataSourceManager__didFinishBackgroundPreparationWithResult_forDataSource___block_invoke;
  v10[3] = &unk_278297E50;
  v10[4] = self;
  [(PXZoomableInlineHeadersDataSourceManager *)self performChanges:v10];
}

- (void)_prepareQueue_prepareInBackroundWithDataSource:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_prepareQueue);
  v5 = [(PXZoomableInlineHeadersDataSourceManager *)self _prepareQueue_createMetaDataStoreForAlbumWithDataSource:v4];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__PXZoomableInlineHeadersDataSourceManager__prepareQueue_prepareInBackroundWithDataSource___block_invoke;
  v8[3] = &unk_278297EA0;
  objc_copyWeak(&v11, &location);
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __91__PXZoomableInlineHeadersDataSourceManager__prepareQueue_prepareInBackroundWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didFinishBackgroundPreparationWithResult:*(a1 + 32) forDataSource:*(a1 + 40)];
}

- (void)_prepareInBackgroundWithDataSource:(id)a3
{
  v5 = a3;
  if (self->_isPreparingMetadataInBackground)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"!_isPreparingMetadataInBackground"}];
  }

  self->_isPreparingMetadataInBackground = 1;
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x277D3CD90] sharedScheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke;
  v9[3] = &unk_278297EA0;
  v9[4] = self;
  objc_copyWeak(&v11, &location);
  v7 = v5;
  v10 = v7;
  [v6 scheduleTaskAfterCATransactionCommits:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke_2;
  v3[3] = &unk_278297E78;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __79__PXZoomableInlineHeadersDataSourceManager__prepareInBackgroundWithDataSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _prepareQueue_prepareInBackroundWithDataSource:*(a1 + 32)];
}

- (id)dataSourceForLevel:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      v15 = v4;
      v16 = v3;
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersDataSourceManager.m" lineNumber:84 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = &OBJC_IVAR___PXZoomableInlineHeadersDataSourceManager__monthsDataSource;
  }

  else
  {
    v9 = &OBJC_IVAR___PXZoomableInlineHeadersDataSourceManager__yearsDataSource;
  }

  v10 = *(&self->super.super.super.isa + *v9);

  return v10;
}

- (PXZoomableInlineHeadersDataSourceManager)initWithAssetsDataSourceManager:(id)a3 indexPath:(PXSimpleIndexPath *)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = PXZoomableInlineHeadersDataSourceManager;
  v8 = [(PXSectionedDataSourceManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetsDataSourceManager, a3);
    v10 = *&a4->item;
    *&v9->_sectionIndexPath.dataSourceIdentifier = *&a4->dataSourceIdentifier;
    *&v9->_sectionIndexPath.item = v10;
    [v7 registerChangeObserver:v9 context:PXAssetsDataSourceManagerObserverContext];
    v11 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v9 needsUpdateSelector:sel_setNeedsUpdate];
    updater = v9->_updater;
    v9->_updater = v11;

    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateDataSource];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.photos.inline-headers-queue", v13);
    prepareQueue = v9->_prepareQueue;
    v9->_prepareQueue = v14;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__PXZoomableInlineHeadersDataSourceManager_initWithAssetsDataSourceManager_indexPath___block_invoke;
    v17[3] = &unk_278297E50;
    v18 = v9;
    [(PXZoomableInlineHeadersDataSourceManager *)v18 performChanges:v17];
  }

  return v9;
}

+ (BOOL)supportsAssetsDataSourceManager:(id)a3
{
  v3 = [a3 dataSource];
  v4 = [v3 fetchResultInfoProvider];
  v5 = v4 != 0;

  return v5;
}

@end