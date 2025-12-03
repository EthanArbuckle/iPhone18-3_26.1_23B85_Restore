@interface BLBookInstallManager
- (BLBookInstallManager)initWithDatabaseManager:(id)manager;
- (BLBookInstallManagerProgressDelegate)progressDelegate;
- (BLDatabaseManager)databaseManager;
- (void)cancelInstallWithDownloadID:(id)d;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)dq_completeOperationForDownloadID:(id)d;
- (void)dq_dequeueOperationForDownloadID:(id)d downloadState:(int64_t)state;
- (void)dq_enqueueInstall:(id)install;
- (void)dq_failOperationForDownloadID:(id)d;
- (void)dq_notifyServerOfDownloadCancelledForInstallOperation:(id)operation completion:(id)completion;
- (void)dq_notifyServerOfDownloadCompleteForInstallOperation:(id)operation completion:(id)completion;
- (void)mq_installDownloadInfo:(id)info;
- (void)operation:(id)operation updatedProgress:(id)progress forInstall:(id)install;
- (void)restartInterruptedInstalls:(id)installs;
- (void)start;
@end

@implementation BLBookInstallManager

- (BLBookInstallManager)initWithDatabaseManager:(id)manager
{
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = BLBookInstallManager;
  v5 = [(BLBookInstallManager *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ibooks.BLService.BLBookInstallManagerQueue", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    objc_storeWeak(&v5->_databaseManager, managerCopy);
    v9 = objc_alloc_init(NSOperationQueue);
    queue = v5->_queue;
    v5->_queue = v9;

    [(NSOperationQueue *)v5->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_queue setQualityOfService:17];
    v11 = objc_opt_new();
    operationsByDownloadID = v5->_operationsByDownloadID;
    v5->_operationsByDownloadID = v11;

    v13 = [managerCopy moc];
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
    fetchedObjects = [(NSFetchedResultsController *)self->_frc fetchedObjects];
    v8 = [fetchedObjects copy];
    pendingInterruptedInstalls = self->_pendingInterruptedInstalls;
    self->_pendingInterruptedInstalls = v8;
  }

  else
  {
    fetchedObjects = BLBookInstallLog();
    if (os_log_type_enabled(fetchedObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, fetchedObjects, OS_LOG_TYPE_ERROR, "[Install-Mgr]: Failed to perform initial fetch on the install manager FRC:  %@", buf, 0xCu);
    }
  }
}

- (void)cancelInstallWithDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A1CA0;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)restartInterruptedInstalls:(id)installs
{
  installsCopy = installs;
  v5 = [(BLBookInstallManager *)self frc];
  managedObjectContext = [v5 managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1D74;
  v8[3] = &unk_10011D430;
  v8[4] = self;
  v9 = installsCopy;
  v7 = installsCopy;
  [managedObjectContext performBlock:v8];
}

- (void)controllerWillChangeContent:(id)content
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Install-Mgr]: controllerWillChangeContent.", v4, 2u);
  }
}

- (void)controllerDidChangeContent:(id)content
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Install-Mgr]: controllerDidChangeContent.", v4, 2u);
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
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
  if (type == 3)
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

  if (type == 2)
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

  if (type != 1)
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

- (void)operation:(id)operation updatedProgress:(id)progress forInstall:(id)install
{
  progressCopy = progress;
  installCopy = install;
  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2278;
  block[3] = &unk_10011D0C8;
  block[4] = self;
  v13 = installCopy;
  v14 = progressCopy;
  v10 = progressCopy;
  v11 = installCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)mq_installDownloadInfo:(id)info
{
  infoCopy = info;
  fileExtension = [infoCopy fileExtension];
  downloadID = [infoCopy downloadID];
  v7 = objc_alloc_init(BLBookInstallInfo);
  [(BLBookInstallInfo *)v7 setDownloadID:downloadID];
  persistentIdentifier = [infoCopy persistentIdentifier];
  [(BLBookInstallInfo *)v7 setPersistentIdentifier:persistentIdentifier];

  transactionIdentifier = [infoCopy transactionIdentifier];
  [(BLBookInstallInfo *)v7 setTransactionIdentifier:transactionIdentifier];

  accountIdentifier = [infoCopy accountIdentifier];
  [(BLBookInstallInfo *)v7 setAccountIdentifier:accountIdentifier];

  familyAccountIdentifier = [infoCopy familyAccountIdentifier];
  [(BLBookInstallInfo *)v7 setFamilyAccountIdentifier:familyAccountIdentifier];

  cancelDownloadURL = [infoCopy cancelDownloadURL];
  [(BLBookInstallInfo *)v7 setCancelDownloadURL:cancelDownloadURL];

  title = [infoCopy title];
  [(BLBookInstallInfo *)v7 setTitle:title];

  subtitle = [infoCopy subtitle];
  [(BLBookInstallInfo *)v7 setSubtitle:subtitle];

  genre = [infoCopy genre];
  [(BLBookInstallInfo *)v7 setGenre:genre];

  artistName = [infoCopy artistName];
  [(BLBookInstallInfo *)v7 setArtistName:artistName];

  thumbnailImageURL = [infoCopy thumbnailImageURL];
  [(BLBookInstallInfo *)v7 setThumbnailImageURL:thumbnailImageURL];

  isRestore = [infoCopy isRestore];
  [(BLBookInstallInfo *)v7 setIsRestore:isRestore];

  isSample = [infoCopy isSample];
  [(BLBookInstallInfo *)v7 setIsSample:isSample];

  isPurchase = [infoCopy isPurchase];
  [(BLBookInstallInfo *)v7 setIsPurchase:isPurchase];

  assetPath = [infoCopy assetPath];
  [(BLBookInstallInfo *)v7 setAssetPath:assetPath];

  v22 = [infoCopy size];
  [(BLBookInstallInfo *)v7 setAssetFileSize:v22];

  plistPath = [infoCopy plistPath];
  [(BLBookInstallInfo *)v7 setPlistPath:plistPath];

  racGUID = [infoCopy racGUID];
  [(BLBookInstallInfo *)v7 setRacGUID:racGUID];

  artworkPath = [infoCopy artworkPath];
  if (artworkPath)
  {
    [(BLBookInstallInfo *)v7 setArtworkPath:artworkPath];
    v26 = +[NSFileManager defaultManager];
    v52 = 0;
    v27 = [v26 attributesOfItemAtPath:artworkPath error:&v52];
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
        v54 = downloadID;
        v55 = 2112;
        v56 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Failed to obtain artwork file size. Error:  %@", buf, 0x16u);
      }
    }
  }

  kind = [infoCopy kind];
  [(BLBookInstallInfo *)v7 setKind:kind];
  if ([fileExtension length])
  {
    v31 = [downloadID stringByAppendingPathExtension:fileExtension];
    [(BLBookInstallInfo *)v7 setDestinationFilename:v31];
  }

  else
  {
    [(BLBookInstallInfo *)v7 setDestinationFilename:downloadID];
  }

  dpInfo = [infoCopy dpInfo];
  [(BLBookInstallInfo *)v7 setDpInfo:dpInfo];

  epubRightsPath = [infoCopy epubRightsPath];
  [(BLBookInstallInfo *)v7 setEpubRightsPath:epubRightsPath];

  encryptionKey = [infoCopy encryptionKey];
  [(BLBookInstallInfo *)v7 setEncryptionKey:encryptionKey];

  salt = [infoCopy salt];
  [(BLBookInstallInfo *)v7 setSalt:salt];

  [(BLBookInstallInfo *)v7 setProgressDelegate:self];
  databaseManager = [(BLBookInstallManager *)self databaseManager];
  [(BLBookInstallInfo *)v7 setDatabaseManager:databaseManager];

  -[BLBookInstallInfo setIsAudiobook:](v7, "setIsAudiobook:", [BLDownloadKindAudiobook isEqualToString:kind]);
  sinfData = [infoCopy sinfData];
  if (sinfData)
  {
    v45 = artworkPath;
    selfCopy = self;
    v38 = fileExtension;
    objc_opt_class();
    v51 = 0;
    v39 = [NSPropertyListSerialization propertyListWithData:sinfData options:0 format:0 error:&v51];
    v40 = v51;
    v41 = BUDynamicCast();

    if (!v41)
    {
      v42 = BLBookInstallLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v54 = downloadID;
        v55 = 2112;
        v56 = v40;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Failed to deserialized sinf data for download Error:  %@", buf, 0x16u);
      }
    }

    [(BLBookInstallInfo *)v7 setSinfs:v41, v45, selfCopy];

    fileExtension = v38;
    artworkPath = v46;
    self = v48;
  }

  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A298C;
  block[3] = &unk_10011D1A8;
  block[4] = self;
  v50 = v7;
  v44 = v7;
  dispatch_async(dispatchQueue, block);
}

- (void)dq_enqueueInstall:(id)install
{
  installCopy = install;
  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  operationsByDownloadID = [(BLBookInstallManager *)self operationsByDownloadID];
  downloadID = [installCopy downloadID];
  v8 = [operationsByDownloadID objectForKeyedSubscript:downloadID];
  v9 = v8 == 0;

  v10 = BLBookInstallLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      downloadID2 = [installCopy downloadID];
      *buf = 138543362;
      v38 = downloadID2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Enqueing install operation for download.", buf, 0xCu);
    }

    kind = [installCopy kind];
    permlink = [installCopy permlink];
    v16 = [BLAssetContainerFactory assetContainerForDownloadKind:kind isPermlink:permlink != 0];

    if (!v16)
    {
      v17 = BLBookInstallLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        downloadID3 = [installCopy downloadID];
        kind2 = [installCopy kind];
        *buf = 138543618;
        v38 = downloadID3;
        v39 = 2112;
        v40 = kind2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: No assetContainer found for kind %@", buf, 0x16u);
      }
    }

    v11 = [v16 installOperationForInstallInfo:installCopy];
    progressDelegate = [(BLBookInstallManager *)self progressDelegate];
    if (v11 && ([v11 error], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
    {
      objc_initWeak(buf, self);
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_1000A2DFC;
      v34 = &unk_10011E5E8;
      objc_copyWeak(&v36, buf);
      v27 = installCopy;
      v35 = v27;
      [v11 setCompletionBlock:&v31];
      v28 = [(BLBookInstallManager *)self operationsByDownloadID:v31];
      downloadID4 = [v27 downloadID];
      [v28 setObject:v11 forKeyedSubscript:downloadID4];

      downloadID5 = [v27 downloadID];
      [progressDelegate installManager:self didStartInstallWithOperation:v11 forDownloadID:downloadID5];

      [(NSOperationQueue *)self->_queue addOperation:v11];
      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);
    }

    else
    {
      operationsByDownloadID2 = [(BLBookInstallManager *)self operationsByDownloadID];
      downloadID6 = [installCopy downloadID];
      [operationsByDownloadID2 setObject:v11 forKeyedSubscript:downloadID6];

      downloadID7 = [installCopy downloadID];
      [progressDelegate installManager:self didStartInstallWithOperation:v11 forDownloadID:downloadID7];

      downloadID8 = [installCopy downloadID];
      [(BLBookInstallManager *)self dq_failOperationForDownloadID:downloadID8];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    downloadID9 = [installCopy downloadID];
    *buf = 138543362;
    v38 = downloadID9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Install operation already exists in queue for downloadID", buf, 0xCu);
  }
}

- (void)dq_dequeueOperationForDownloadID:(id)d downloadState:(int64_t)state
{
  dCopy = d;
  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([dCopy length])
  {
    operationsByDownloadID = [(BLBookInstallManager *)self operationsByDownloadID];
    v9 = [operationsByDownloadID objectForKeyedSubscript:dCopy];

    if (v9)
    {
      if ([(BLBookInstallManager *)self _assetAlreadyStartedTheInstallationStage:state])
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = BLBookInstallLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = dCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Cancelling operation for download.", buf, 0xCu);
      }

      installInfo = [v9 installInfo];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000A3140;
      v13[3] = &unk_10011E008;
      v14 = v9;
      selfCopy = self;
      v16 = dCopy;
      [(BLBookInstallManager *)self dq_notifyServerOfDownloadCancelledForInstallOperation:installInfo completion:v13];

      v12 = v14;
    }

    else
    {
      v12 = BLBookInstallLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = dCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Can't dequeue non-existant download operation", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)dq_failOperationForDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([dCopy length])
  {
    operationsByDownloadID = [(BLBookInstallManager *)self operationsByDownloadID];
    v7 = [operationsByDownloadID objectForKeyedSubscript:dCopy];

    databaseManager = BLBookInstallLog();
    v9 = os_log_type_enabled(databaseManager, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        *buf = 138543362;
        v16 = dCopy;
        _os_log_impl(&_mh_execute_header, databaseManager, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Operation failed.", buf, 0xCu);
      }

      operationsByDownloadID2 = [(BLBookInstallManager *)self operationsByDownloadID];
      [operationsByDownloadID2 removeObjectForKey:dCopy];

      databaseManager = [(BLBookInstallManager *)self databaseManager];
      objc_initWeak(buf, self);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000A341C;
      v11[3] = &unk_10011DEA8;
      objc_copyWeak(&v14, buf);
      v12 = v7;
      v13 = dCopy;
      [databaseManager saveDownloadStateWithId:v13 state:6 completion:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }

    else if (v9)
    {
      *buf = 138543362;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, databaseManager, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: No operation found.", buf, 0xCu);
    }
  }
}

- (void)dq_completeOperationForDownloadID:(id)d
{
  dCopy = d;
  dispatchQueue = [(BLBookInstallManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([dCopy length])
  {
    operationsByDownloadID = [(BLBookInstallManager *)self operationsByDownloadID];
    v7 = [operationsByDownloadID objectForKeyedSubscript:dCopy];

    v8 = BLBookInstallLog();
    databaseManager = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = dCopy;
        _os_log_impl(&_mh_execute_header, databaseManager, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Operation completed.", buf, 0xCu);
      }

      success = [v7 success];
      if (success)
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
          error = [v7 error];
          *buf = 138543618;
          v31 = dCopy;
          v32 = 2112;
          v33 = error;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Operation failed. Error:  %@", buf, 0x16u);
        }
      }

      operationsByDownloadID2 = [(BLBookInstallManager *)self operationsByDownloadID];
      [operationsByDownloadID2 removeObjectForKey:dCopy];

      databaseManager = [(BLBookInstallManager *)self databaseManager];
      objc_initWeak(buf, self);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000A3864;
      v26[3] = &unk_10011DEA8;
      objc_copyWeak(&v29, buf);
      v15 = v7;
      v27 = v15;
      v16 = dCopy;
      v28 = v16;
      v17 = objc_retainBlock(v26);
      v18 = v17;
      if (success)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      [databaseManager saveDownloadStateWithId:v16 state:v11 completion:v19];
      [v15 installInfo];
      if (success)
        v20 = {;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000A38D8;
        v22[3] = &unk_10011E610;
        v23 = databaseManager;
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
      v31 = dCopy;
      _os_log_impl(&_mh_execute_header, databaseManager, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: No operation found", buf, 0xCu);
    }
  }
}

- (void)dq_notifyServerOfDownloadCompleteForInstallOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  v7 = BLBookInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    downloadID = [operationCopy downloadID];
    *buf = 138543362;
    v19 = downloadID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Marking download as [finished] for server.", buf, 0xCu);
  }

  accountIdentifier = [operationCopy accountIdentifier];
  downloadID2 = [operationCopy downloadID];
  storeIdentifier = [operationCopy storeIdentifier];
  transactionIdentifier = [operationCopy transactionIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A3D4C;
  v15[3] = &unk_10011E638;
  v16 = operationCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = operationCopy;
  [BLServerDownloadDoneRequest notifyDownloadDoneWithAccountID:accountIdentifier downloadID:downloadID2 storeID:storeIdentifier transactionID:transactionIdentifier completion:v15];
}

- (void)dq_notifyServerOfDownloadCancelledForInstallOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  cancelDownloadURL = [operationCopy cancelDownloadURL];
  v8 = BLBookInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    downloadID = [operationCopy downloadID];
    *buf = 138543362;
    v20 = downloadID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Marking download as [cancelled] for server.", buf, 0xCu);
  }

  accountIdentifier = [operationCopy accountIdentifier];
  downloadID2 = [operationCopy downloadID];
  storeIdentifier = [operationCopy storeIdentifier];
  transactionIdentifier = [operationCopy transactionIdentifier];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A4030;
  v16[3] = &unk_10011E638;
  v17 = operationCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = operationCopy;
  [BLServerDownloadDoneRequest notifyDownloadCancelledWithAccountID:accountIdentifier downloadID:downloadID2 storeID:storeIdentifier transactionID:transactionIdentifier cancelDownloadURL:cancelDownloadURL completion:v16];
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