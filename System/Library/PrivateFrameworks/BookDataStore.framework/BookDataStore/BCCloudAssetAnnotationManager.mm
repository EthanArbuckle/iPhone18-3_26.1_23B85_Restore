@interface BCCloudAssetAnnotationManager
- (BCCloudAssetAnnotationManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller;
- (BCCloudKitController)cloudKitController;
- (id)fileURLForCachingCKAssetWithAssetID:(id)d;
- (void)assetWithID:(id)d updatedAnnotations:(id)annotations completion:(id)completion;
- (void)dealloc;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)getAnnotationChangesSince:(id)since completion:(id)completion;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)signalSyncToCKForSyncManager:(id)manager;
- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion;
- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion;
- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion;
- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion;
@end

@implementation BCCloudAssetAnnotationManager

- (BCCloudAssetAnnotationManager)initWithCloudDataSource:(id)source cloudKitController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = BCCloudAssetAnnotationManager;
  v9 = [(BCCloudAssetAnnotationManager *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotationsDataSource, source);
    objc_storeWeak(&v10->_cloudKitController, controllerCopy);
    v11 = [[BCCloudDataSyncManager alloc] initWithCloudKitController:controllerCopy];
    syncManager = v10->_syncManager;
    v10->_syncManager = v11;

    [(BCCloudDataSyncManager *)v10->_syncManager setDelegate:v10];
    v13 = [BCCloudDataManager alloc];
    entityName = [(BCCloudAssetAnnotationManager *)v10 entityName];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = v10->_syncManager;
    WeakRetained = objc_loadWeakRetained(&v10->_cloudKitController);
    v19 = [(BCCloudDataManager *)v13 initWithCloudDataSource:sourceCopy entityName:entityName notificationName:@"BCCloudAssetAnnotationManagerChanged" immutableClass:v15 mutableClass:v16 syncManager:v17 cloudKitController:WeakRetained];
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

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v29 = v10->_ckAssetStoreDirectory;
    v33 = 0;
    [defaultManager createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v33];
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

- (void)setEnableCloudSync:(BOOL)sync
{
  syncCopy = sync;
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (syncCopy)
      {
        v8 = @"YES";
      }

      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudAssetAnnotationManager #enableCloudSync setEnableCloudSync %@\\"", &v17, 0xCu);
    }
  }

  if (self->_enableCloudSync != syncCopy)
  {
    self->_enableCloudSync = syncCopy;
    if (syncCopy)
    {
      cloudKitController = [(BCCloudAssetAnnotationManager *)self cloudKitController];
      privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];
      syncManager = [(BCCloudAssetAnnotationManager *)self syncManager];
      [privateCloudDatabaseController addObserver:syncManager recordType:@"assetAnnotations"];

      cloudKitController2 = [(BCCloudAssetAnnotationManager *)self cloudKitController];
      transactionManager = [cloudKitController2 transactionManager];
      entityName = [(BCCloudAssetAnnotationManager *)self entityName];
      syncManager2 = [(BCCloudAssetAnnotationManager *)self syncManager];
      [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager2];
    }

    else
    {
      cloudKitController2 = +[BCCloudKitController sharedInstance];
      transactionManager = [cloudKitController2 privateCloudDatabaseController];
      entityName = [(BCCloudAssetAnnotationManager *)self syncManager];
      [transactionManager removeObserver:entityName recordType:@"assetAnnotations"];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
  [dataManager dissociateCloudDataFromSyncWithCompletion:completionCopy];
}

- (void)assetWithID:(id)d updatedAnnotations:(id)annotations completion:(id)completion
{
  v63 = *MEMORY[0x1E69E9840];
  dCopy = d;
  annotationsCopy = annotations;
  completionCopy = completion;
  v9 = objc_opt_new();
  v57 = dCopy;
  [v9 setAssetID:dCopy];
  v10 = +[BDSAppVersion appVersion];
  [v9 setAppVersion:v10];

  lastObject = [annotationsCopy lastObject];
  v12 = BUProtocolCast();

  v54 = v12;
  assetVersion = [v12 assetVersion];
  [v9 setAssetVersion:?];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = annotationsCopy;
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
        annotationCreatorIdentifier = [v18 annotationCreatorIdentifier];
        [v19 setCreatorIdentifier:annotationCreatorIdentifier];

        annotationUuid = [v18 annotationUuid];
        [v19 setUuid:annotationUuid];

        annotationModificationDate = [v18 annotationModificationDate];
        [annotationModificationDate timeIntervalSinceReferenceDate];
        [v19 setModificationDate:?];

        if ([v18 isAnnotationDeleted])
        {
          bc_turnProtoAnnotationIntoTombstone(v19);
        }

        else
        {
          annotationCreationDate = [v18 annotationCreationDate];
          [annotationCreationDate timeIntervalSinceReferenceDate];
          [v19 setCreationDate:?];

          [v19 setDeleted:{objc_msgSend(v18, "isAnnotationDeleted")}];
          [v19 setIsUnderline:{objc_msgSend(v18, "annotationIsUnderline")}];
          annotationLocation = [v18 annotationLocation];
          [v19 setLocationCFIString:annotationLocation];

          annotationNote = [v18 annotationNote];
          [v19 setNote:annotationNote];

          annotationRepresentativeText = [v18 annotationRepresentativeText];
          [v19 setRepresentativeText:annotationRepresentativeText];

          annotationSelectedText = [v18 annotationSelectedText];
          [v19 setSelectedText:annotationSelectedText];

          annotationStyleNumber = [v18 annotationStyleNumber];
          [v19 setStyle:{objc_msgSend(annotationStyleNumber, "intValue")}];

          annotationTypeNumber = [v18 annotationTypeNumber];
          [v19 setType:{objc_msgSend(annotationTypeNumber, "intValue")}];

          physicalPageNumber = [v18 physicalPageNumber];
          [v19 setPhysicalPageNumber:physicalPageNumber];

          annotationVersion = [v18 annotationVersion];
          [v19 setAnnotationVersion:annotationVersion];

          assetVersion2 = [v18 assetVersion];
          [v19 setAssetVersion:assetVersion2];

          attachments = [v18 attachments];
          [v19 setAttachments:attachments];

          chapterTitle = [v18 chapterTitle];
          [v19 setChapterTitle:chapterTitle];

          userModificationDate = [v18 userModificationDate];
          [userModificationDate timeIntervalSinceReferenceDate];
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
          futureProofing12 = [v18 futureProofing12];
          [v19 setFutureProofing12:futureProofing12];

          plAbsolutePhysicalLocation = [v18 plAbsolutePhysicalLocation];
          [v19 setPlAbsolutePhysicalLocation:{objc_msgSend(plAbsolutePhysicalLocation, "intValue")}];

          plLocationRangeEnd = [v18 plLocationRangeEnd];
          [v19 setPlLocationRangeEnd:{objc_msgSend(plLocationRangeEnd, "intValue")}];

          plLocationRangeStart = [v18 plLocationRangeStart];
          [v19 setPlLocationRangeStart:{objc_msgSend(plLocationRangeStart, "intValue")}];

          plStorageUUID = [v18 plStorageUUID];
          [v19 setPlLocationStorageUUID:plStorageUUID];

          plUserData = [v18 plUserData];
          [v19 setPlUserData:plUserData];
        }

        locationModificationDate = [v18 locationModificationDate];
        v46 = locationModificationDate;
        if (locationModificationDate)
        {
          [locationModificationDate timeIntervalSinceReferenceDate];
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
  [(BCMutableAssetAnnotations *)v47 setAssetVersion:assetVersion];
  v48 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  [v9 writeTo:v48];
  immutableData = [v48 immutableData];
  [(BCMutableAssetAnnotations *)v47 setBookAnnotations:immutableData];

  dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
  v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetID = %@", v57];
  [dataManager setCloudData:v47 predicate:v51 completion:completionCopy];

  v52 = *MEMORY[0x1E69E9840];
}

- (id)fileURLForCachingCKAssetWithAssetID:(id)d
{
  dCopy = d;
  v5 = [dCopy dataUsingEncoding:4];
  bu_md5 = [v5 bu_md5];

  if (![bu_md5 length] || (-[BCCloudAssetAnnotationManager ckAssetStoreDirectory](self, "ckAssetStoreDirectory"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "URLByAppendingPathComponent:", bu_md5), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704B88(self, dCopy, v9);
    }

    v8 = 0;
  }

  return v8;
}

- (void)syncManager:(id)manager startSyncToCKWithCompletion:(id)completion
{
  managerCopy = manager;
  completionCopy = completion;
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
    [dataManager startSyncToCKWithSyncManager:managerCopy completion:completionCopy];
  }

  else
  {
    v8 = _Block_copy(completionCopy);
    dataManager = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)signalSyncToCKForSyncManager:(id)manager
{
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    cloudKitController = [(BCCloudAssetAnnotationManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudAssetAnnotationManager *)self entityName];
    syncManager = [(BCCloudAssetAnnotationManager *)self syncManager];
    [transactionManager signalSyncToCKTransactionForEntityName:entityName syncManager:syncManager];
  }
}

- (void)syncManager:(id)manager removeCloudDataForIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 1, 0);
    v5 = v6;
  }
}

- (void)syncManager:(id)manager updateSyncGenerationFromCloudData:(id)data completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = dataCopy;
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
        assetID = [v15 assetID];
        [v9 setObject:v15 forKey:assetID];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
  v18 = MEMORY[0x1E696AE18];
  allKeys = [v9 allKeys];
  v20 = [v18 predicateWithFormat:@"assetID IN %@", allKeys];
  [dataManager updateSyncGenerationFromCloudData:v9 predicate:v20 propertyIDKey:@"assetID" completion:completionCopy];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)syncManager:(id)manager resolveConflictsForRecords:(id)records completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E46079E0;
    v12[3] = &unk_1E8759DD8;
    v13 = completionCopy;
    [dataManager resolveConflictsForRecords:recordsCopy completion:v12];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)syncManager:(id)manager failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([(BCCloudAssetAnnotationManager *)self enableCloudSync])
  {
    dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4607B54;
    v12[3] = &unk_1E8759E00;
    v13 = completionCopy;
    [dataManager failedRecordIDs:dsCopy completion:v12];
  }

  else
  {
    v10 = _Block_copy(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)getAnnotationChangesSince:(id)since completion:(id)completion
{
  completionCopy = completion;
  sinceCopy = since;
  dataManager = [(BCCloudAssetAnnotationManager *)self dataManager];
  [dataManager getChangesSince:sinceCopy forEntityClass:objc_opt_class() completion:completionCopy];
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end