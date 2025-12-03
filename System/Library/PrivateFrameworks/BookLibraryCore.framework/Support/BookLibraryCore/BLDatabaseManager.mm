@interface BLDatabaseManager
- (BLDatabaseManager)init;
- (BLDatabaseManager)initWithDatabaseFolderBaseURL:(id)l;
- (BOOL)_modelChanged;
- (id)_setupPersistentStore:(BOOL)store;
- (id)_stateForLogWithTimeout:(double)timeout;
- (id)mq_newDownloadPolicyFromDownloadPolicyInfo:(id)info;
- (id)mq_writeArtworkWithURL:(id)l downloadID:(id)d;
- (id)mq_writeMetadata:(id)metadata clientIdentifier:(id)identifier downloadID:(id)d;
- (id)mq_writeSinf:(id)sinf downloadID:(id)d;
- (void)_deleteDownloadPolicyWithID:(id)d save:(BOOL)save completion:(id)completion;
- (void)_fetchDownloadInfoEntityWithID:(id)d sync:(BOOL)sync block:(id)block;
- (void)_fetchDownloadPoliciesWithPredicate:(id)predicate block:(id)block;
- (void)_fetchDownloadPolicyInfoEntityWithID:(id)d relatedPolicyWithStorePlaylistIdentifier:(id)identifier block:(id)block;
- (void)_fetchDownloadsWithIDs:(id)ds block:(id)block;
- (void)_fetchDownloadsWithPredicate:(id)predicate sync:(BOOL)sync block:(id)block;
- (void)addDownloadWithBuyParameters:(id)parameters storeID:(id)d clientIdentifier:(id)identifier completion:(id)completion;
- (void)addDownloadWithPermlink:(id)permlink clientIdentifier:(id)identifier completion:(id)completion;
- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion;
- (void)deleteDownloadWithID:(id)d completion:(id)completion;
- (void)fetchDownloadFromDownloadID:(id)d withCompletion:(id)completion;
- (void)fetchDownloadListWithCompletion:(id)completion;
- (void)fetchDownloadListWithPredicate:(id)predicate sync:(BOOL)sync completion:(id)completion;
- (void)fetchDownloadPolicyWithID:(id)d withCompletion:(id)completion;
- (void)fetchListOfAllDownloadCandidatesWithCompletion:(id)completion;
- (void)fetchListOfAllDownloadPoliciesWithCompletion:(id)completion;
- (void)fetchListOfFailedDownloadsWithCompletion:(id)completion;
- (void)fetchListOfPendingDownloadsSortedByStartTime:(id)time;
- (void)fetchModifiableDownloadsMatchingPredicate:(id)predicate results:(id)results completion:(id)completion;
- (void)finalizeOrCanceAndCleanupWithDownloadID:(id)d cleanupBlock:(id)block completion:(id)completion;
- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion;
- (void)pauseDownloadsWithIDs:(id)ds withCompletion:(id)completion;
- (void)purgeAllStaleDownloadsWithCompletion:(id)completion;
- (void)requestDownloadWithParameters:(id)parameters completion:(id)completion;
- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion;
- (void)resumeDownloadsWithID:(id)d withCompletion:(id)completion;
- (void)saveDownloadPathWithId:(id)id path:(id)path completion:(id)completion;
- (void)saveDownloadSizeWithId:(id)id size:(unint64_t)size completion:(id)completion;
- (void)saveDownloadStateWithId:(id)id state:(int64_t)state completion:(id)completion;
- (void)saveIsLocalCacheServerWithId:(id)id isLocal:(BOOL)local completion:(id)completion;
- (void)saveOrUpdateDownloadPolicy:(id)policy completion:(id)completion;
- (void)syncSaveDownloadStateWithId:(id)id state:(int64_t)state;
- (void)syncTouchDownloadWithId:(id)id;
- (void)updateAllInterruptedDownloadsToTheirProperStatesWithCompletion:(id)completion;
- (void)updateDownloadWithID:(id)d updateBlock:(id)block completion:(id)completion;
@end

@implementation BLDatabaseManager

- (BLDatabaseManager)init
{
  v3 = +[IMLibraryPlist sharedContainerURL];
  if (!v3)
  {
    v4 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = @"/var/mobile/Media/Books/Downloads/Database/";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Database]: System could not produce a shared container. Falling back to using: %@.  Please file a radar.", &v7, 0xCu);
    }

    v3 = [NSURL fileURLWithPath:@"/var/mobile/Media/Books/Downloads/Database/"];
  }

  v5 = [(BLDatabaseManager *)self initWithDatabaseFolderBaseURL:v3];

  return v5;
}

- (BLDatabaseManager)initWithDatabaseFolderBaseURL:(id)l
{
  lCopy = l;
  v36.receiver = self;
  v36.super_class = BLDatabaseManager;
  v5 = [(BLDatabaseManager *)&v36 init];
  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"DownloadsDatabase" withExtension:@"momd"];

    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
    mom = v5->_mom;
    v5->_mom = v8;

    v10 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v5->_mom];
    psc = v5->_psc;
    v5->_psc = v10;

    v12 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    moc = v5->_moc;
    v5->_moc = v12;

    [(NSManagedObjectContext *)v5->_moc setPersistentStoreCoordinator:v5->_psc];
    v14 = +[NSFileManager defaultManager];
    v15 = [lCopy URLByAppendingPathComponent:off_10013E020[0]];
    v16 = v15;
    if (v15)
    {
      path = [v15 path];
      v18 = [v14 fileExistsAtPath:path];

      if (v18)
      {
        v19 = BLServiceDatabaseManagerLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[Database]: Documents folder in shared container already existed.", buf, 2u);
        }

        v20 = 1;
      }

      else
      {
        path2 = [v16 path];
        v35 = 0;
        v22 = [v14 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v35];

        v23 = BLServiceDatabaseManagerLog();
        v19 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[Database]: Created documents folder in shared container.", buf, 2u);
          }

          v20 = 0;
        }

        else
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[Database]: Failed to create documents folder in shared container.", buf, 2u);
          }

          v20 = 0;
          v19 = v16;
          v16 = 0;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v24 = [v16 URLByAppendingPathComponent:@"BLDatabaseManager.sqlite"];
    v25 = BLServiceDatabaseManagerLog();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[Database]: Store is at %{public}@", buf, 0xCu);
      }

      objc_storeStrong(&v5->_persistentStoreURL, v24);
      v27 = [(BLDatabaseManager *)v5 _setupPersistentStore:v20];
      if (v27)
      {
        objc_initWeak(buf, v5);
        v28 = [BUOSStateHandler alloc];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100077B88;
        v33[3] = &unk_10011D880;
        objc_copyWeak(&v34, buf);
        v29 = [v28 initWithTitle:@"BLDatabaseManager" block:v33];
        osStateHandler = v5->_osStateHandler;
        v5->_osStateHandler = v29;

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
LABEL_28:

        goto LABEL_29;
      }

      v31 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[Database]: Failed to initialize database manager.", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[Database]: Failed to initialize database manager.  No URL.", buf, 2u);
      }
    }

    v27 = v5;
    v5 = 0;
    goto LABEL_28;
  }

LABEL_29:

  return v5;
}

- (BOOL)_modelChanged
{
  selfCopy = self;
  v3 = [NSPersistentStoreCoordinator metadataForPersistentStoreOfType:NSSQLiteStoreType URL:self->_persistentStoreURL options:0 error:0];
  LOBYTE(selfCopy) = [(NSManagedObjectModel *)selfCopy->_mom isConfiguration:0 compatibleWithStoreMetadata:v3];

  return selfCopy ^ 1;
}

- (id)_setupPersistentStore:(BOOL)store
{
  storeCopy = store;
  v5 = +[NSFileManager defaultManager];
  v48[0] = NSMigratePersistentStoresAutomaticallyOption;
  v48[1] = NSInferMappingModelAutomaticallyOption;
  v49[0] = &__kCFBooleanTrue;
  v49[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
  _modelChanged = [(BLDatabaseManager *)self _modelChanged];
  persistentStoreURL = self->_persistentStoreURL;
  psc = self->_psc;
  v44 = 0;
  v10 = [(NSPersistentStoreCoordinator *)psc addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:persistentStoreURL options:v6 error:&v44];
  v11 = v44;
  if (v10)
  {
    v12 = _modelChanged == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = +[BLDownloadManager downloadsDirectory];
    v43 = v11;
    [v5 removeItemAtURL:v13 error:&v43];
    v14 = v43;

    if (v14)
    {
      v15 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Database]: Error removing the download scratch directory:  %@", buf, 0xCu);
      }
    }

    if (storeCopy)
    {
      v32 = v13;
      v33 = v10;
      v34 = v6;
      v35 = v5;
      [(NSManagedObjectContext *)self->_moc reset];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      persistentStores = [(NSPersistentStoreCoordinator *)self->_psc persistentStores];
      v17 = [persistentStores countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          v20 = 0;
          v21 = v14;
          do
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(persistentStores);
            }

            v22 = *(*(&v39 + 1) + 8 * v20);
            v23 = self->_psc;
            v38 = v21;
            v24 = [(NSPersistentStoreCoordinator *)v23 removePersistentStore:v22 error:&v38];
            v14 = v38;

            if (v14 || (v24 & 1) == 0)
            {
              v25 = BLServiceDatabaseManagerLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v47 = v14;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[Database]: Error removing the old database persistent store:  %@", buf, 0xCu);
              }
            }

            v20 = v20 + 1;
            v21 = v14;
          }

          while (v18 != v20);
          v18 = [persistentStores countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v18);
      }

      v26 = v14;

      v27 = self->_persistentStoreURL;
      v37 = v14;
      v5 = v35;
      [v35 removeItemAtURL:v27 error:&v37];
      v14 = v37;

      v6 = v34;
      if (v14)
      {
        v28 = BLServiceDatabaseManagerLog();
        v13 = v32;
        v10 = v33;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v47 = v14;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[Database]: Error removing the old database persistent store:  %@", buf, 0xCu);
        }
      }

      else
      {
        v30 = self->_persistentStoreURL;
        v29 = self->_psc;
        v36 = 0;
        v10 = [(NSPersistentStoreCoordinator *)v29 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v30 options:0 error:&v36];
        v14 = v36;
        v13 = v32;
        v28 = v33;
      }
    }

    else
    {
      if (v10)
      {
LABEL_31:

        v11 = v14;
        goto LABEL_32;
      }

      v28 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v14;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[Database]: Error initializing PSC:  %@", buf, 0xCu);
      }

      v10 = 0;
    }

    goto LABEL_31;
  }

LABEL_32:

  return v10;
}

- (void)fetchListOfAllDownloadCandidatesWithCompletion:(id)completion
{
  completionCopy = completion;
  moc = self->_moc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100078110;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)fetchListOfPendingDownloadsSortedByStartTime:(id)time
{
  timeCopy = time;
  moc = self->_moc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000783AC;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = timeCopy;
  v6 = timeCopy;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)fetchListOfFailedDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"state", &off_100129890];
  [(BLDatabaseManager *)self fetchDownloadListWithPredicate:v5 completion:completionCopy];
}

- (void)purgeAllStaleDownloadsWithCompletion:(id)completion
{
  completionCopy = completion;
  moc = self->_moc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007889C;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)saveDownloadStateWithId:(id)id state:(int64_t)state completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v10 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = NSStringFromBLDownloadState();
    *buf = 138543618;
    v19 = idCopy;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "(dID=%{public}@) [Database]: Saving state to %{public}@.", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078F98;
  v14[3] = &unk_10011D8D0;
  v14[4] = self;
  v15 = idCopy;
  v16 = completionCopy;
  stateCopy = state;
  v12 = completionCopy;
  v13 = idCopy;
  [(BLDatabaseManager *)self _fetchDownloadInfoEntityWithID:v13 block:v14];
}

- (void)syncSaveDownloadStateWithId:(id)id state:(int64_t)state
{
  idCopy = id;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100079234;
  v9[3] = &unk_10011D4B8;
  v10 = v7;
  v8 = v7;
  [(BLDatabaseManager *)self saveDownloadStateWithId:idCopy state:state completion:v9];

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)syncTouchDownloadWithId:(id)id
{
  idCopy = id;
  v5 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = idCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Touching download.", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079360;
  v7[3] = &unk_10011D8F8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  [(BLDatabaseManager *)self _fetchDownloadInfoEntityWithID:v6 sync:1 block:v7];
}

- (void)saveDownloadSizeWithId:(id)id size:(unint64_t)size completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100079590;
  v9[3] = &unk_10011D920;
  completionCopy = completion;
  sizeCopy = size;
  v9[4] = self;
  v8 = completionCopy;
  [(BLDatabaseManager *)self _fetchDownloadInfoEntityWithID:id block:v9];
}

- (void)saveIsLocalCacheServerWithId:(id)id isLocal:(BOOL)local completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079780;
  v7[3] = &unk_10011D948;
  localCopy = local;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadInfoEntityWithID:id block:v7];
}

- (void)saveDownloadPathWithId:(id)id path:(id)path completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000799B8;
  v10[3] = &unk_10011D970;
  pathCopy = path;
  selfCopy = self;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = pathCopy;
  [(BLDatabaseManager *)self _fetchDownloadInfoEntityWithID:id block:v10];
}

- (void)updateDownloadWithID:(id)d updateBlock:(id)block completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100079BA8;
  v9[3] = &unk_10011D998;
  selfCopy = self;
  blockCopy = block;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = blockCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadInfoEntityWithID:d block:v9];
}

- (void)updateAllInterruptedDownloadsToTheirProperStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  moc = self->_moc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079DA4;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)fetchDownloadListWithPredicate:(id)predicate sync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007A4B0;
  v8[3] = &unk_10011D9C0;
  selfCopy = self;
  completionCopy = completion;
  v7 = completionCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadsWithPredicate:predicate sync:syncCopy block:v8];
}

- (void)fetchModifiableDownloadsMatchingPredicate:(id)predicate results:(id)results completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007A700;
  v9[3] = &unk_10011D9E8;
  selfCopy = self;
  resultsCopy = results;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = resultsCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadsWithPredicate:predicate block:v9];
}

- (void)deleteDownloadWithID:(id)d completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007A94C;
  v7[3] = &unk_10011D970;
  selfCopy = self;
  dCopy = d;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = dCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadInfoEntityWithID:v6 block:v7];
}

- (void)saveOrUpdateDownloadPolicy:(id)policy completion:(id)completion
{
  policyCopy = policy;
  completionCopy = completion;
  policyID = [policyCopy policyID];
  storePlaylistIdentifier = [policyCopy storePlaylistIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007ABF0;
  v12[3] = &unk_10011DA10;
  v12[4] = self;
  v13 = policyCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = policyCopy;
  [(BLDatabaseManager *)self _fetchDownloadPolicyInfoEntityWithID:policyID relatedPolicyWithStorePlaylistIdentifier:storePlaylistIdentifier block:v12];
}

- (void)_deleteDownloadPolicyWithID:(id)d save:(BOOL)save completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007AF8C;
  v7[3] = &unk_10011DA38;
  saveCopy = save;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadPolicyInfoEntityWithID:d relatedPolicyWithStorePlaylistIdentifier:0 block:v7];
}

- (void)fetchDownloadPolicyWithID:(id)d withCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007B128;
  v6[3] = &unk_10011DA60;
  selfCopy = self;
  completionCopy = completion;
  v5 = completionCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadPolicyInfoEntityWithID:d relatedPolicyWithStorePlaylistIdentifier:0 block:v6];
}

- (void)fetchListOfAllDownloadPoliciesWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007B24C;
  v4[3] = &unk_10011D9C0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadPoliciesWithPredicate:0 block:v4];
}

- (void)fetchDownloadListWithCompletion:(id)completion
{
  completionCopy = completion;
  moc = self->_moc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B47C;
  v7[3] = &unk_10011D430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(NSManagedObjectContext *)moc performBlock:v7];
}

- (void)fetchDownloadFromDownloadID:(id)d withCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007B6D8;
  v6[3] = &unk_10011DA88;
  selfCopy = self;
  completionCopy = completion;
  v5 = completionCopy;
  [(BLDatabaseManager *)selfCopy _fetchDownloadInfoEntityWithID:d block:v6];
}

- (void)addDownloadWithBuyParameters:(id)parameters storeID:(id)d clientIdentifier:(id)identifier completion:(id)completion
{
  parametersCopy = parameters;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = dCopy;
  v15 = v14;
  if (![v14 longLongValue])
  {
    v15 = [BLUtilities storeIDFromBuyParameters:parametersCopy];
  }

  moc = self->_moc;
  if (moc)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10007B9F0;
    v22[3] = &unk_10011DAB0;
    v22[4] = self;
    v23 = parametersCopy;
    v24 = identifierCopy;
    v25 = v15;
    v26 = completionCopy;
    [(NSManagedObjectContext *)moc performBlock:v22];
  }

  else
  {
    v17 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "[Database]: no valid moc when trying to addDownloadWithBuyParameters!", v21, 2u);
    }

    v18 = sub_1000A8F44(26, @"Unable to add download", @"There was no valid moc.");
    v19 = objc_retainBlock(completionCopy);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0, v18);
    }
  }
}

- (void)addDownloadWithPermlink:(id)permlink clientIdentifier:(id)identifier completion:(id)completion
{
  permlinkCopy = permlink;
  identifierCopy = identifier;
  completionCopy = completion;
  moc = self->_moc;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007BD4C;
  v15[3] = &unk_10011DAD8;
  v15[4] = self;
  v16 = permlinkCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = permlinkCopy;
  [(NSManagedObjectContext *)moc performBlock:v15];
}

- (void)requestDownloadWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  moc = self->_moc;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007C08C;
  v11[3] = &unk_10011DB00;
  v12 = parametersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = parametersCopy;
  [(NSManagedObjectContext *)moc performBlock:v11];
}

- (void)pauseDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    v15 = dCopy;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007D044;
    v12[3] = &unk_10011DB28;
    v14 = completionCopy;
    v13 = dCopy;
    [(BLDatabaseManager *)self pauseDownloadsWithIDs:v8 withCompletion:v12];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }
}

- (void)pauseDownloadsWithIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Database]: Pausing downloads: %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D23C;
  v11[3] = &unk_10011DB50;
  v11[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [(BLDatabaseManager *)self _fetchDownloadsWithIDs:v10 block:v11];
}

- (void)cancelDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "(dID=%{public}@) [Database]: Cancelling download", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007D804;
  v11[3] = &unk_10011D970;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  [(BLDatabaseManager *)self _fetchDownloadInfoEntityWithID:v10 block:v11];
}

- (void)finalizeOrCanceAndCleanupWithDownloadID:(id)d cleanupBlock:(id)block completion:(id)completion
{
  dCopy = d;
  blockCopy = block;
  completionCopy = completion;
  v11 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Finalizing or canceling download", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007E1A0;
  v15[3] = &unk_10011DB78;
  v16 = dCopy;
  selfCopy = self;
  v18 = blockCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = blockCopy;
  v14 = dCopy;
  [(BLDatabaseManager *)self _fetchDownloadInfoEntityWithID:v14 block:v15];
}

- (void)resumeDownloadWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    v15 = dCopy;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007E52C;
    v12[3] = &unk_10011DB28;
    v14 = completionCopy;
    v13 = dCopy;
    [(BLDatabaseManager *)self resumeDownloadsWithID:v8 withCompletion:v12];
  }

  else
  {
    v9 = sub_1000A8F44(37, @"Missing downloadID", @"Missing downloadID");
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }
}

- (void)resumeDownloadsWithID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = BLServiceDatabaseManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Database]: Resuming downloads: %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007E724;
  v11[3] = &unk_10011DB50;
  v11[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  [(BLDatabaseManager *)self _fetchDownloadsWithIDs:v10 block:v11];
}

- (void)_fetchDownloadInfoEntityWithID:(id)d sync:(BOOL)sync block:(id)block
{
  syncCopy = sync;
  dCopy = d;
  blockCopy = block;
  if ([dCopy length])
  {
    dCopy = [NSPredicate predicateWithFormat:@"%K == %@", @"downloadID", dCopy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007ED40;
    v13[3] = &unk_10011D9C0;
    v14 = dCopy;
    v15 = blockCopy;
    [(BLDatabaseManager *)self _fetchDownloadsWithPredicate:dCopy sync:syncCopy block:v13];
  }

  else
  {
    v11 = objc_retainBlock(blockCopy);
    if (v11)
    {
      v12 = sub_1000A8F44(23, 0, 0);
      v11[2](v11, 0, v12);
    }
  }
}

- (void)_fetchDownloadsWithIDs:(id)ds block:(id)block
{
  blockCopy = block;
  v7 = [NSPredicate predicateWithFormat:@"%K IN %@", @"downloadID", ds];
  [(BLDatabaseManager *)self _fetchDownloadsWithPredicate:v7 block:blockCopy];
}

- (void)_fetchDownloadsWithPredicate:(id)predicate sync:(BOOL)sync block:(id)block
{
  syncCopy = sync;
  predicateCopy = predicate;
  blockCopy = block;
  v10 = blockCopy;
  if (predicateCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10007F038;
    v15[3] = &unk_10011DB00;
    v16 = predicateCopy;
    selfCopy = self;
    v18 = v10;
    v11 = objc_retainBlock(v15);
    moc = self->_moc;
    if (syncCopy)
    {
      [(NSManagedObjectContext *)moc performBlockAndWait:v11];
    }

    else
    {
      [(NSManagedObjectContext *)moc performBlock:v11];
    }
  }

  else
  {
    v13 = objc_retainBlock(blockCopy);
    if (v13)
    {
      v14 = sub_1000A8F44(0, 0, 0);
      v13[2](v13, 0, v14);
    }
  }
}

- (id)mq_newDownloadPolicyFromDownloadPolicyInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = objc_opt_new();
    policyID = [infoCopy policyID];
    [v4 setPolicyID:policyID];

    policyData = [infoCopy policyData];
    [v4 setPolicyData:policyData];

    storePlaylistIdentifier = [infoCopy storePlaylistIdentifier];

    [v4 setStorePlaylistIdentifier:storePlaylistIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_fetchDownloadPolicyInfoEntityWithID:(id)d relatedPolicyWithStorePlaylistIdentifier:(id)identifier block:(id)block
{
  dCopy = d;
  identifierCopy = identifier;
  blockCopy = block;
  if ([dCopy length])
  {
    if ([identifierCopy longLongValue])
    {
      [NSPredicate predicateWithFormat:@"%K == %@ or %K == %@", @"policyID", dCopy, @"storePlaylistIdentifier", identifierCopy];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K == %@", @"policyID", dCopy, v14, v15];
    }
    v13 = ;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007F36C;
    v16[3] = &unk_10011D9C0;
    v17 = dCopy;
    v18 = blockCopy;
    [(BLDatabaseManager *)self _fetchDownloadPoliciesWithPredicate:v13 block:v16];
  }

  else
  {
    v11 = objc_retainBlock(blockCopy);
    if (v11)
    {
      v12 = sub_1000A8F44(23, 0, 0);
      (*(v11 + 2))(v11, 0, 0, v12);
    }
  }
}

- (void)_fetchDownloadPoliciesWithPredicate:(id)predicate block:(id)block
{
  predicateCopy = predicate;
  blockCopy = block;
  moc = self->_moc;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007F5FC;
  v11[3] = &unk_10011DB00;
  v12 = predicateCopy;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = predicateCopy;
  [(NSManagedObjectContext *)moc performBlock:v11];
}

- (id)mq_writeMetadata:(id)metadata clientIdentifier:(id)identifier downloadID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v10 = [[BLITunesMetadataHelper alloc] initWithClientIdentifier:identifierCopy downloadMetadata:metadataCopy];

  v15 = 0;
  v11 = [(BLITunesMetadataHelper *)v10 writePlistWithDownloadID:dCopy error:&v15];
  v12 = v15;
  if (![v11 length])
  {
    v13 = BLBookInstallLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = dCopy;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Failed to write iTunesMetadata.plist:  %@", buf, 0x16u);
    }
  }

  return v11;
}

- (id)mq_writeSinf:(id)sinf downloadID:(id)d
{
  dCopy = d;
  v11 = 0;
  v6 = [BLSinfHelper writeSinfForDownloadID:dCopy epubRightsData:sinf error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = BLBookInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = dCopy;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Failed to write sinf.xml. Error:  %@", buf, 0x16u);
    }
  }

  path = [v6 path];

  return path;
}

- (id)mq_writeArtworkWithURL:(id)l downloadID:(id)d
{
  dCopy = d;
  v10 = 0;
  v6 = [BLArtworkHelper writeArtworkDownloadID:dCopy artworkURL:l error:&v10];
  v7 = v10;
  if (![v6 length])
  {
    v8 = BLBookInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = dCopy;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Failed to write iTunesArtwork. Error:  %@", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_stateForLogWithTimeout:(double)timeout
{
  v5 = dispatch_group_create();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000C0D18;
  v29 = sub_1000C0D28;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000C0D18;
  v23 = sub_1000C0D28;
  v24 = 0;
  dispatch_group_enter(v5);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C0D30;
  v16[3] = &unk_10011EEA0;
  v18 = &v25;
  v6 = v5;
  v17 = v6;
  [(BLDatabaseManager *)self fetchDownloadListWithCompletion:v16];
  dispatch_group_enter(v6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C0E80;
  v13[3] = &unk_10011EEA0;
  v15 = &v19;
  v7 = v6;
  v14 = v7;
  [(BLDatabaseManager *)self fetchListOfAllDownloadPoliciesWithCompletion:v13];
  v8 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_group_wait(v7, v8);
  v9 = v26[5];
  if (!v9)
  {
    v9 = @"<timed out>";
  }

  v31[0] = @"downloads";
  v31[1] = @"policies";
  v10 = v20[5];
  if (!v10)
  {
    v10 = @"<timed out>";
  }

  v32[0] = v9;
  v32[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

@end