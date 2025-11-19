@interface BLBookInstallManager
- (BLBookInstallManager)initWithDatabaseManager:(id)a3;
- (BLBookInstallManagerProgressDelegate)progressDelegate;
- (BLDatabaseManager)databaseManager;
- (void)cancelInstallWithDownloadID:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)dq_completeOperationForDownloadID:(id)a3;
- (void)dq_dequeueOperationForDownloadID:(id)a3 downloadState:(int64_t)a4;
- (void)dq_enqueueInstall:(id)a3;
- (void)dq_failOperationForDownloadID:(id)a3;
- (void)dq_notifyServerOfDownloadCancelledForInstallOperation:(id)a3 completion:(id)a4;
- (void)dq_notifyServerOfDownloadCompleteForInstallOperation:(id)a3 completion:(id)a4;
- (void)mq_installDownloadInfo:(id)a3;
- (void)operation:(id)a3 updatedProgress:(id)a4 forInstall:(id)a5;
- (void)restartInterruptedInstalls:(id)a3;
- (void)start;
@end

@implementation BLBookInstallManager

- (BLBookInstallManager)initWithDatabaseManager:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BLBookInstallManager;
  v5 = [(BLBookInstallManager *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ibooks.BLService.BLBookInstallManagerQueue", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    objc_storeWeak(&v5->_databaseManager, v4);
    v9 = objc_alloc_init(NSOperationQueue);
    queue = v5->_queue;
    v5->_queue = v9;

    [(NSOperationQueue *)v5->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_queue setQualityOfService:17];
    v11 = objc_opt_new();
    operationsByDownloadID = v5->_operationsByDownloadID;
    v5->_operationsByDownloadID = v11;

    v13 = [v4 moc];
    v14 = objc_alloc_init(NSFetchRequest);
    v15 = [NSEntityDescription entityForName:@"BLDownloadInfo" inManagedObjectContext:v13];
    [v14 setEntity:v15];

    v16 = [NSPredicate predicateWithFormat:@"(%K == %@)", @"state", &off_100129A58];
    [v14 setPredicate:v16];

    v17 = [NSSortDescriptor sortDescriptorWithKey:@"startTime" ascending:1];
    v25 = v17;
    v18 = [NSArray arrayWithObjects:&v25 count:1];
    [v14 setSortDescriptors:v18];

    v19 = [[NSFetchedResultsController alloc] initWithFetchRequest:v14 managedObjectContext:v13 sectionNameKeyPath:0 cacheName:0];
    frc = v5->_frc;
    v5->_frc = v19;

    [(NSFetchedResultsController *)v5->_frc setDelegate:v5];
    if (!v5->_frc)
    {

      v21 = BLBookInstallLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[Install-Mgr]: Failed to initialize install manager FRC", buf, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  [(NSFetchedResultsController *)self->_frc setDelegate:0];
  v3.receiver = self;
  v3.super_class = BLBookInstallManager;
  [(BLBookInstallManager *)&v3 dealloc];
}

- (void)start
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Install-Mgr]: starting the installManager.", buf, 2u);
  }

  frc = self->_frc;
  v10 = 0;
  v5 = [(NSFetchedResultsController *)frc performFetch:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [(NSFetchedResultsController *)self->_frc fetchedObjects];
    v8 = [v7 copy];
    pendingInterruptedInstalls = self->_pendingInterruptedInstalls;
    self->_pendingInterruptedInstalls = v8;
  }

  else
  {
    v7 = BLBookInstallLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Install-Mgr]: Failed to perform initial fetch on the install manager FRC:  %@", buf, 0xCu);
    }
  }
}

- (void)cancelInstallWithDownloadID:(id)a3
{
  v4 = a3;
  v5 = [(BLBookInstallManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A1CA0;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)restartInterruptedInstalls:(id)a3
{
  v4 = a3;
  v5 = [(BLBookInstallManager *)self frc];
  v6 = [v5 managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1D74;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlock:v8];
}

- (void)controllerWillChangeContent:(id)a3
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Install-Mgr]: controllerWillChangeContent.", v4, 2u);
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Install-Mgr]: controllerDidChangeContent.", v4, 2u);
  }
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v9 = a4;
  v10 = BLBookInstallLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[Install-Mgr]: FRC has been triggered.", buf, 2u);
  }

  objc_opt_class();
  v11 = BUDynamicCast();

  v12 = BLBookInstallLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (a6 == 3)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v17 = 0;
    v14 = "[Install-Mgr]: FRC received move.";
    v15 = &v17;
    goto LABEL_15;
  }

  if (a6 == 2)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v18 = 0;
    v14 = "[Install-Mgr]: FRC received delete.";
    v15 = &v18;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v14, v15, 2u);
    goto LABEL_16;
  }

  if (a6 != 1)
  {
    if (v13)
    {
      v16 = 0;
      v14 = "[Install-Mgr]: FRC received update.";
      v15 = &v16;
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v13)
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[Install-Mgr]: FRC received insert.", v19, 2u);
  }

  [(BLBookInstallManager *)self mq_installDownloadInfo:v11];
LABEL_17:
}

- (void)operation:(id)a3 updatedProgress:(id)a4 forInstall:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(BLBookInstallManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2278;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)mq_installDownloadInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 fileExtension];
  v6 = [v4 downloadID];
  v7 = objc_alloc_init(BLBookInstallInfo);
  [(BLBookInstallInfo *)v7 setDownloadID:v6];
  v8 = [v4 persistentIdentifier];
  [(BLBookInstallInfo *)v7 setPersistentIdentifier:v8];

  v9 = [v4 transactionIdentifier];
  [(BLBookInstallInfo *)v7 setTransactionIdentifier:v9];

  v10 = [v4 accountIdentifier];
  [(BLBookInstallInfo *)v7 setAccountIdentifier:v10];

  v11 = [v4 familyAccountIdentifier];
  [(BLBookInstallInfo *)v7 setFamilyAccountIdentifier:v11];

  v12 = [v4 cancelDownloadURL];
  [(BLBookInstallInfo *)v7 setCancelDownloadURL:v12];

  v13 = [v4 title];
  [(BLBookInstallInfo *)v7 setTitle:v13];

  v14 = [v4 subtitle];
  [(BLBookInstallInfo *)v7 setSubtitle:v14];

  v15 = [v4 genre];
  [(BLBookInstallInfo *)v7 setGenre:v15];

  v16 = [v4 artistName];
  [(BLBookInstallInfo *)v7 setArtistName:v16];

  v17 = [v4 thumbnailImageURL];
  [(BLBookInstallInfo *)v7 setThumbnailImageURL:v17];

  v18 = [v4 isRestore];
  [(BLBookInstallInfo *)v7 setIsRestore:v18];

  v19 = [v4 isSample];
  [(BLBookInstallInfo *)v7 setIsSample:v19];

  v20 = [v4 isPurchase];
  [(BLBookInstallInfo *)v7 setIsPurchase:v20];

  v21 = [v4 assetPath];
  [(BLBookInstallInfo *)v7 setAssetPath:v21];

  v22 = [v4 size];
  [(BLBookInstallInfo *)v7 setAssetFileSize:v22];

  v23 = [v4 plistPath];
  [(BLBookInstallInfo *)v7 setPlistPath:v23];

  v24 = [v4 racGUID];
  [(BLBookInstallInfo *)v7 setRacGUID:v24];

  v25 = [v4 artworkPath];
  if (v25)
  {
    [(BLBookInstallInfo *)v7 setArtworkPath:v25];
    v26 = +[NSFileManager defaultManager];
    v52 = 0;
    v27 = [v26 attributesOfItemAtPath:v25 error:&v52];
    v28 = v52;

    if (v27)
    {
      v29 = [v27 objectForKeyedSubscript:NSFileSize];
      [(BLBookInstallInfo *)v7 setArtworkFileSize:v29];
    }

    else
    {
      v29 = BLBookInstallLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v54 = v6;
        v55 = 2112;
        v56 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Failed to obtain artwork file size. Error:  %@", buf, 0x16u);
      }
    }
  }

  v30 = [v4 kind];
  [(BLBookInstallInfo *)v7 setKind:v30];
  if ([v5 length])
  {
    v31 = [v6 stringByAppendingPathExtension:v5];
    [(BLBookInstallInfo *)v7 setDestinationFilename:v31];
  }

  else
  {
    [(BLBookInstallInfo *)v7 setDestinationFilename:v6];
  }

  v32 = [v4 dpInfo];
  [(BLBookInstallInfo *)v7 setDpInfo:v32];

  v33 = [v4 epubRightsPath];
  [(BLBookInstallInfo *)v7 setEpubRightsPath:v33];

  v34 = [v4 encryptionKey];
  [(BLBookInstallInfo *)v7 setEncryptionKey:v34];

  v35 = [v4 salt];
  [(BLBookInstallInfo *)v7 setSalt:v35];

  [(BLBookInstallInfo *)v7 setProgressDelegate:self];
  v36 = [(BLBookInstallManager *)self databaseManager];
  [(BLBookInstallInfo *)v7 setDatabaseManager:v36];

  -[BLBookInstallInfo setIsAudiobook:](v7, "setIsAudiobook:", [BLDownloadKindAudiobook isEqualToString:v30]);
  v37 = [v4 sinfData];
  if (v37)
  {
    v45 = v25;
    v47 = self;
    v38 = v5;
    objc_opt_class();
    v51 = 0;
    v39 = [NSPropertyListSerialization propertyListWithData:v37 options:0 format:0 error:&v51];
    v40 = v51;
    v41 = BUDynamicCast();

    if (!v41)
    {
      v42 = BLBookInstallLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v54 = v6;
        v55 = 2112;
        v56 = v40;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Failed to deserialized sinf data for download Error:  %@", buf, 0x16u);
      }
    }

    [(BLBookInstallInfo *)v7 setSinfs:v41, v45, v47];

    v5 = v38;
    v25 = v46;
    self = v48;
  }

  v43 = [(BLBookInstallManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A298C;
  block[3] = &unk_10011D1A8;
  block[4] = self;
  v50 = v7;
  v44 = v7;
  dispatch_async(v43, block);
}

- (void)dq_enqueueInstall:(id)a3
{
  v4 = a3;
  v5 = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BLBookInstallManager *)self operationsByDownloadID];
  v7 = [v4 downloadID];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = v8 == 0;

  v10 = BLBookInstallLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 downloadID];
      *buf = 138543362;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Enqueing install operation for download.", buf, 0xCu);
    }

    v14 = [v4 kind];
    v15 = [v4 permlink];
    v16 = [BLAssetContainerFactory assetContainerForDownloadKind:v14 isPermlink:v15 != 0];

    if (!v16)
    {
      v17 = BLBookInstallLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v4 downloadID];
        v19 = [v4 kind];
        *buf = 138543618;
        v38 = v18;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: No assetContainer found for kind %@", buf, 0x16u);
      }
    }

    v11 = [v16 installOperationForInstallInfo:v4];
    v20 = [(BLBookInstallManager *)self progressDelegate];
    if (v11 && ([v11 error], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
    {
      objc_initWeak(buf, self);
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_1000A2DFC;
      v34 = &unk_10011E5E8;
      objc_copyWeak(&v36, buf);
      v27 = v4;
      v35 = v27;
      [v11 setCompletionBlock:&v31];
      v28 = [(BLBookInstallManager *)self operationsByDownloadID:v31];
      v29 = [v27 downloadID];
      [v28 setObject:v11 forKeyedSubscript:v29];

      v30 = [v27 downloadID];
      [v20 installManager:self didStartInstallWithOperation:v11 forDownloadID:v30];

      [(NSOperationQueue *)self->_queue addOperation:v11];
      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      v23 = [(BLBookInstallManager *)self operationsByDownloadID];
      v24 = [v4 downloadID];
      [v23 setObject:v11 forKeyedSubscript:v24];

      v25 = [v4 downloadID];
      [v20 installManager:self didStartInstallWithOperation:v11 forDownloadID:v25];

      v26 = [v4 downloadID];
      [(BLBookInstallManager *)self dq_failOperationForDownloadID:v26];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = [v4 downloadID];
    *buf = 138543362;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Install operation already exists in queue for downloadID", buf, 0xCu);
  }
}

- (void)dq_dequeueOperationForDownloadID:(id)a3 downloadState:(int64_t)a4
{
  v6 = a3;
  v7 = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v7);

  if ([v6 length])
  {
    v8 = [(BLBookInstallManager *)self operationsByDownloadID];
    v9 = [v8 objectForKeyedSubscript:v6];

    if (v9)
    {
      if ([(BLBookInstallManager *)self _assetAlreadyStartedTheInstallationStage:a4])
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = BLBookInstallLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Cancelling operation for download.", buf, 0xCu);
      }

      v11 = [v9 installInfo];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000A3140;
      v13[3] = &unk_10011E008;
      v14 = v9;
      v15 = self;
      v16 = v6;
      [(BLBookInstallManager *)self dq_notifyServerOfDownloadCancelledForInstallOperation:v11 completion:v13];

      v12 = v14;
    }

    else
    {
      v12 = BLBookInstallLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Can't dequeue non-existant download operation", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)dq_failOperationForDownloadID:(id)a3
{
  v4 = a3;
  v5 = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 length])
  {
    v6 = [(BLBookInstallManager *)self operationsByDownloadID];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = BLBookInstallLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        *buf = 138543362;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Operation failed.", buf, 0xCu);
      }

      v10 = [(BLBookInstallManager *)self operationsByDownloadID];
      [v10 removeObjectForKey:v4];

      v8 = [(BLBookInstallManager *)self databaseManager];
      objc_initWeak(buf, self);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000A341C;
      v11[3] = &unk_10011DEA8;
      objc_copyWeak(&v14, buf);
      v12 = v7;
      v13 = v4;
      [v8 saveDownloadStateWithId:v13 state:6 completion:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }

    else if (v9)
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: No operation found.", buf, 0xCu);
    }
  }
}

- (void)dq_completeOperationForDownloadID:(id)a3
{
  v4 = a3;
  v5 = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 length])
  {
    v6 = [(BLBookInstallManager *)self operationsByDownloadID];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = BLBookInstallLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Operation completed.", buf, 0xCu);
      }

      v10 = [v7 success];
      if (v10)
      {
        v11 = 9;
      }

      else
      {
        v11 = 6;
      }

      if (([v7 success] & 1) == 0)
      {
        v12 = BLBookInstallLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v7 error];
          *buf = 138543618;
          v31 = v4;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Operation failed. Error:  %@", buf, 0x16u);
        }
      }

      v14 = [(BLBookInstallManager *)self operationsByDownloadID];
      [v14 removeObjectForKey:v4];

      v9 = [(BLBookInstallManager *)self databaseManager];
      objc_initWeak(buf, self);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000A3864;
      v26[3] = &unk_10011DEA8;
      objc_copyWeak(&v29, buf);
      v15 = v7;
      v27 = v15;
      v16 = v4;
      v28 = v16;
      v17 = objc_retainBlock(v26);
      v18 = v17;
      if (v10)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      [v9 saveDownloadStateWithId:v16 state:v11 completion:v19];
      [v15 installInfo];
      if (v10)
        v20 = {;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000A38D8;
        v22[3] = &unk_10011E610;
        v23 = v9;
        v24 = v16;
        v25 = v18;
        [(BLBookInstallManager *)self dq_notifyServerOfDownloadCompleteForInstallOperation:v20 completion:v22];

        v21 = v23;
      }

      else
        v21 = {;
        [(BLBookInstallManager *)self dq_notifyServerOfDownloadCancelledForInstallOperation:v21 completion:0];
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: No operation found", buf, 0xCu);
    }
  }
}

- (void)dq_notifyServerOfDownloadCompleteForInstallOperation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BLBookInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 downloadID];
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Marking download as [finished] for server.", buf, 0xCu);
  }

  v9 = [v5 accountIdentifier];
  v10 = [v5 downloadID];
  v11 = [v5 storeIdentifier];
  v12 = [v5 transactionIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A3D4C;
  v15[3] = &unk_10011E638;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [BLServerDownloadDoneRequest notifyDownloadDoneWithAccountID:v9 downloadID:v10 storeID:v11 transactionID:v12 completion:v15];
}

- (void)dq_notifyServerOfDownloadCancelledForInstallOperation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 cancelDownloadURL];
  v8 = BLBookInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 downloadID];
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Marking download as [cancelled] for server.", buf, 0xCu);
  }

  v10 = [v5 accountIdentifier];
  v11 = [v5 downloadID];
  v12 = [v5 storeIdentifier];
  v13 = [v5 transactionIdentifier];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A4030;
  v16[3] = &unk_10011E638;
  v17 = v5;
  v18 = v6;
  v14 = v6;
  v15 = v5;
  [BLServerDownloadDoneRequest notifyDownloadCancelledWithAccountID:v10 downloadID:v11 storeID:v12 transactionID:v13 cancelDownloadURL:v7 completion:v16];
}

- (BLBookInstallManagerProgressDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

@end