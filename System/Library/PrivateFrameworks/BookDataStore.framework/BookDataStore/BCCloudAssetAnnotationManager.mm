@interface BCCloudAssetAnnotationManager
- (BCCloudAssetAnnotationManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4;
- (BCCloudKitController)cloudKitController;
- (id)fileURLForCachingCKAssetWithAssetID:(id)a3;
- (void)assetWithID:(id)a3 updatedAnnotations:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)getAnnotationChangesSince:(id)a3 completion:(id)a4;
- (void)setEnableCloudSync:(BOOL)a3;
- (void)signalSyncToCKForSyncManager:(id)a3;
- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5;
- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4;
- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5;
@end

@implementation BCCloudAssetAnnotationManager

- (BCCloudAssetAnnotationManager)initWithCloudDataSource:(id)a3 cloudKitController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = BCCloudAssetAnnotationManager;
  v9 = [(BCCloudAssetAnnotationManager *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotationsDataSource, a3);
    objc_storeWeak(&v10->_cloudKitController, v8);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:v8];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    v14 = [(BCCloudAssetAnnotationManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:v7 entityName:v14 notificationName:@"BCCloudAssetAnnotationManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
    dataManager = v10->_dataManager;
    v10->_dataManager = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.BCCloudAssetAnnotationManager", v21);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v22;

    v24 = +[BDSApplication applicationCacheDirectory];
    v25 = [v24 stringByAppendingPathComponent:@"BCCloudAssetAnnotationManagerAssetCache"];
    v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25];
    ckAssetStoreDirectory = v10->_ckAssetStoreDirectory;
    v10->_ckAssetStoreDirectory = v26;

    v28 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = v10->_ckAssetStoreDirectory;
    v33 = 0;
    [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v33];
    v30 = v33;

    if (v30)
    {
      v31 = BDSCloudKitLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704AFC(&v10->_ckAssetStoreDirectory, v30, v31);
      }
    }
  }

  return v10;
}

- (void)dealloc
{
  [(BCCloudDataSyncManager *)self->_syncManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = BCCloudAssetAnnotationManager;
  [(BCCloudAssetAnnotationManager *)&v3 dealloc];
}

- (void)setEnableCloudSync:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E698F550] shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudAssetAnnotationManager #enableCloudSync setEnableCloudSync %@\\"", &v17, 0xCu);
    }
  }

  if (self->_enableCloudSync != v3)
  {
    self->_enableCloudSync = v3;
    if (v3)
    {
      v9 = [(BCCloudAssetAnnotationManager *)self cloudKitController];
      v10 = [v9 privateCloudDatabaseController];
      v11 = [(BCCloudAssetAnnotationManager *)self syncManager];
      [v10 addObserver:v11 recordType:@"assetAnnotations"];

      v12 = [(BCCloudAssetAnnotationManager *)self cloudKitController];
      v13 = [v12 transactionManager];
      v14 = [(BCCloudAssetAnnotationManager *)self entityName];
      v15 = [(BCCloudAssetAnnotationManager *)self syncManager];
      [v13 signalSyncToCKTransactionForEntityName:v14 syncManager:v15];
    }

    else
    {
      v12 = +[BCCloudKitController sharedInstance];
      v13 = [v12 privateCloudDatabaseController];
      v14 = [(BCCloudAssetAnnotationManager *)self syncManager];
      [v13 removeObserver:v14 recordType:@"assetAnnotations"];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudAssetAnnotationManager *)self dataManager];
  [v5 dissociateCloudDataFromSyncWithCompletion:v4];
}

- (void)assetWithID:(id)a3 updatedAnnotations:(id)a4 completion:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v56 = a5;
  v9 = objc_opt_new();
  v57 = v7;
  [v9 setAssetID:v7];
  v10 = +[BDSAppVersion appVersion];
  [v9 setAppVersion:v10];

  v11 = [v8 lastObject];
  v12 = BUProtocolCast();

  v54 = v12;
  v53 = [v12 assetVersion];
  [v9 setAssetVersion:?];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v59;
    do
    {
      v17 = 0;
      do
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v58 + 1) + 8 * v17);
        v19 = objc_opt_new();
        v20 = [v18 annotationCreatorIdentifier];
        [v19 setCreatorIdentifier:v20];

        v21 = [v18 annotationUuid];
        [v19 setUuid:v21];

        v22 = [v18 annotationModificationDate];
        [v22 timeIntervalSinceReferenceDate];
        [v19 setModificationDate:?];

        if ([v18 isAnnotationDeleted])
        {
          bc_turnProtoAnnotationIntoTombstone(v19);
        }

        else
        {
          v23 = [v18 annotationCreationDate];
          [v23 timeIntervalSinceReferenceDate];
          [v19 setCreationDate:?];

          [v19 setDeleted:{objc_msgSend(v18, "isAnnotationDeleted")}];
          [v19 setIsUnderline:{objc_msgSend(v18, "annotationIsUnderline")}];
          v24 = [v18 annotationLocation];
          [v19 setLocationCFIString:v24];

          v25 = [v18 annotationNote];
          [v19 setNote:v25];

          v26 = [v18 annotationRepresentativeText];
          [v19 setRepresentativeText:v26];

          v27 = [v18 annotationSelectedText];
          [v19 setSelectedText:v27];

          v28 = [v18 annotationStyleNumber];
          [v19 setStyle:{objc_msgSend(v28, "intValue")}];

          v29 = [v18 annotationTypeNumber];
          [v19 setType:{objc_msgSend(v29, "intValue")}];

          v30 = [v18 physicalPageNumber];
          [v19 setPhysicalPageNumber:v30];

          v31 = [v18 annotationVersion];
          [v19 setAnnotationVersion:v31];

          v32 = [v18 assetVersion];
          [v19 setAssetVersion:v32];

          v33 = [v18 attachments];
          [v19 setAttachments:v33];

          v34 = [v18 chapterTitle];
          [v19 setChapterTitle:v34];

          v35 = [v18 userModificationDate];
          [v35 timeIntervalSinceReferenceDate];
          [v19 setUserModificationDate:?];

          v36 = objc_opt_new();
          [v36 setLocation:{objc_msgSend(v18, "annotationSelectedTextRange")}];
          [v18 annotationSelectedTextRange];
          [v36 setLength:v37];
          [v19 setSelectedTextRange:v36];
          [v18 readingProgressHighWaterMark];
          [v19 setReadingProgressHighWaterMark:?];
          [v19 setSpineIndexUpdated:{objc_msgSend(v18, "spineIndexUpdated")}];
          [v18 readingProgress];
          BUClamp();
          *&v38 = v38;
          [v19 setReadingProgress:v38];
          v39 = [v18 futureProofing12];
          [v19 setFutureProofing12:v39];

          v40 = [v18 plAbsolutePhysicalLocation];
          [v19 setPlAbsolutePhysicalLocation:{objc_msgSend(v40, "intValue")}];

          v41 = [v18 plLocationRangeEnd];
          [v19 setPlLocationRangeEnd:{objc_msgSend(v41, "intValue")}];

          v42 = [v18 plLocationRangeStart];
          [v19 setPlLocationRangeStart:{objc_msgSend(v42, "intValue")}];

          v43 = [v18 plStorageUUID];
          [v19 setPlLocationStorageUUID:v43];

          v44 = [v18 plUserData];
          [v19 setPlUserData:v44];
        }

        v45 = [v18 locationModificationDate];
        v46 = v45;
        if (v45)
        {
          [v45 timeIntervalSinceReferenceDate];
          [v19 setLocationModificationDate:?];
        }

        [v9 addAnnotation:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v15);
  }

  v47 = [[BCMutableAssetAnnotations alloc] initWithAssetID:v57];
  [(BCMutableAssetAnnotations *)v47 setAssetVersion:v53];
  v48 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  [v9 writeTo:v48];
  v49 = [v48 immutableData];
  [(BCMutableAssetAnnotations *)v47 setBookAnnotations:v49];

  v50 = [(BCCloudAssetAnnotationManager *)self dataManager];
  v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetID = %@", v57];
  [v50 setCloudData:v47 predicate:v51 completion:v56];

  v52 = *MEMORY[0x1E69E9840];
}

- (id)fileURLForCachingCKAssetWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [v4 dataUsingEncoding:4];
  v6 = [v5 bu_md5];

  if (![v6 length] || (-[BCCloudAssetAnnotationManager ckAssetStoreDirectory](self, "ckAssetStoreDirectory"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "URLByAppendingPathComponent:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704B88(self, v4, v9);
    }

    v8 = 0;
  }

  return v8;
}

- (void)syncManager:(id)a3 startSyncToCKWithCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    v7 = [(BCCloudAssetAnnotationManager *)self dataManager];
    [v7 startSyncToCKWithSyncManager:v9 completion:v6];
  }

  else
  {
    v8 = _Block_copy(v6);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)a3
{
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    v7 = [(BCCloudAssetAnnotationManager *)self cloudKitController];
    v4 = [v7 transactionManager];
    v5 = [(BCCloudAssetAnnotationManager *)self entityName];
    v6 = [(BCCloudAssetAnnotationManager *)self syncManager];
    [v4 signalSyncToCKTransactionForEntityName:v5 syncManager:v6];
  }
}

- (void)syncManager:(id)a3 removeCloudDataForIDs:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)syncManager:(id)a3 updateSyncGenerationFromCloudData:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 assetID];
        [v9 setObject:v15 forKey:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = [(BCCloudAssetAnnotationManager *)self dataManager];
  v18 = MEMORY[0x1E696AE18];
  v19 = [v9 allKeys];
  v20 = [v18 predicateWithFormat:@"assetID IN %@", v19];
  [v17 updateSyncGenerationFromCloudData:v9 predicate:v20 propertyIDKey:@"assetID" completion:v8];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)a3 resolveConflictsForRecords:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    v9 = [(BCCloudAssetAnnotationManager *)self dataManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E46079E0;
    v12[3] = &unk_1E8759DD8;
    v13 = v8;
    [v9 resolveConflictsForRecords:v7 completion:v12];
  }

  else
  {
    v10 = _Block_copy(v8);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)syncManager:(id)a3 failedRecordIDs:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    v9 = [(BCCloudAssetAnnotationManager *)self dataManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4607B54;
    v12[3] = &unk_1E8759E00;
    v13 = v8;
    [v9 failedRecordIDs:v7 completion:v12];
  }

  else
  {
    v10 = _Block_copy(v8);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)getAnnotationChangesSince:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCloudAssetAnnotationManager *)self dataManager];
  [v8 getChangesSince:v7 forEntityClass:objc_opt_class() completion:v6];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end