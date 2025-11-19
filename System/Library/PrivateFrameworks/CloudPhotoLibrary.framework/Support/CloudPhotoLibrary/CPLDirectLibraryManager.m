@interface CPLDirectLibraryManager
- (BOOL)_isManagementLibraryManager;
- (BOOL)_isValidScopeForClient:(id)a3 error:(id *)a4;
- (BOOL)_resetStore:(id)a3 reason:(id)a4 resetSelector:(SEL)a5 error:(id *)a6;
- (BOOL)isLibraryManagerForEngineLibrary:(id)a3;
- (CPLDirectLibraryManager)initWithAbstractObject:(id)a3;
- (CPLFingerprintContext)fingerprintContextIfKnown;
- (NSString)description;
- (id)_cloudResourcesToLocalResourcesWithLocalResources:(id)a3 targetMapping:(id)a4;
- (id)_localResourceFromCloudResources:(id)a3 usingMapping:(id)a4;
- (id)_localResourceFromCloudResourcesAndErrors:(id)a3 usingMapping:(id)a4;
- (id)displayableNameForEngineLibrary:(id)a3;
- (id)ownerNameForEngineLibrary:(id)a3;
- (id)safeResourcesToDeleteFromProposedResources:(id)a3 realPrune:(BOOL)a4 checkServerIfNecessary:(BOOL)a5 allowUnconfirmed:(BOOL)a6 resourcesToCheckOnServer:(id *)a7 targetScopeMapping:(id)a8 unsafeResources:(id)a9;
- (void)_cleanupComputeStateDownloadQueue;
- (void)_deleteResources:(id)a3 dryRun:(BOOL)a4 checkServerIfNecessary:(BOOL)a5 completionHandler:(id)a6;
- (void)_dispatchForceSyncForScopeIdentifiers:(id)a3 errors:(id)a4 completionHandler:(id)a5;
- (void)_endComputeStateDownload;
- (void)_fetchExistingSharedLibraryScopeWithProgress:(id)a3 blocker:(id)a4 completionHandler:(id)a5;
- (void)_fetchTransportScopeForScope:(id)a3 transportGroup:(id)a4 progress:(id)a5 completionHandler:(id)a6;
- (void)_startComputeStateDownload;
- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4;
- (void)acknowledgeChangedStatuses:(id)a3;
- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)addInfoToLog:(id)a3;
- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)a3 persist:(BOOL)a4;
- (void)attachComputeStates:(id)a3 completionHandler:(id)a4;
- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7;
- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5;
- (void)blockEngineElement:(id)a3;
- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3;
- (void)checkServerForResources:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (void)closeWithCompletionHandler:(id)a3;
- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)a3 related:(BOOL)a4 completionHandler:(id)a5;
- (void)compactFileCacheWithCompletionHandler:(id)a3;
- (void)createScope:(id)a3 completionHandler:(id)a4;
- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)deactivateWithCompletionHandler:(id)a3;
- (void)deleteScopeWithIdentifier:(id)a3 forced:(BOOL)a4 completionHandler:(id)a5;
- (void)disableMainScopeWithCompletionHandler:(id)a3;
- (void)disableMingling;
- (void)disableSynchronizationWithReason:(id)a3;
- (void)enableMainScopeWithCompletionHandler:(id)a3;
- (void)enableMingling;
- (void)enableSynchronizationWithReason:(id)a3;
- (void)engineLibrary:(id)a3 didCloseWithError:(id)a4;
- (void)engineLibrary:(id)a3 didDownloadResourceInBackground:(id)a4;
- (void)engineLibrary:(id)a3 didFailBackgroundDownloadOfResource:(id)a4;
- (void)engineLibrary:(id)a3 didStartUploadTask:(id)a4;
- (void)engineLibrary:(id)a3 getStatusDictionaryWithCompletionHandler:(id)a4;
- (void)engineLibrary:(id)a3 getStatusWithCompletionHandler:(id)a4;
- (void)engineLibrary:(id)a3 provideLocalResource:(id)a4 recordClass:(Class)a5 completionHandler:(id)a6;
- (void)engineLibrary:(id)a3 providePayloadForComputeStates:(id)a4 inFolderWithURL:(id)a5 completionHandler:(id)a6;
- (void)engineLibrary:(id)a3 pushAllChangesWithCompletionHandler:(id)a4;
- (void)engineLibrary:(id)a3 sizeOfResourcesToUploadDidChangeToSize:(unint64_t)a4 sizeOfOriginalResourcesToUpload:(unint64_t)a5 numberOfImages:(unint64_t)a6 numberOfVideos:(unint64_t)a7 numberOfOtherItems:(unint64_t)a8;
- (void)engineLibrary:(id)a3 uploadTask:(id)a4 didFinishWithError:(id)a5;
- (void)engineLibrary:(id)a3 uploadTask:(id)a4 didProgress:(float)a5;
- (void)engineLibraryHasChangesInPullQueue:(id)a3;
- (void)engineLibraryHasStatusChanges:(id)a3;
- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)a3 validator:(id)a4 shouldDecrypt:(BOOL)a5 onDemand:(BOOL)a6 completionHandler:(id)a7;
- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)a3;
- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4;
- (void)forceBackupWithCompletionHandler:(id)a3;
- (void)forceSynchronizingScopeWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getChangedStatusesWithCompletionHandler:(id)a3;
- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)a3 desiredProperties:(id)a4 completionHandler:(id)a5;
- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)a3 inAreLocalIdentifiers:(BOOL)a4 completionHandler:(id)a5;
- (void)getResourcesForItemWithScopedIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getStatusesForScopesWithIdentifiers:(id)a3 includeStorages:(BOOL)a4 completionHandler:(id)a5;
- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (void)getSystemBudgetsWithCompletionHandler:(id)a3;
- (void)getTargetsForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)markLibraryManagerAsInvalid;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientReceivedNotificationOfServerChanges;
- (void)openWithCompletionHandler:(id)a3;
- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4;
- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5;
- (void)refreshScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7;
- (void)reportMiscInformation:(id)a3;
- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4;
- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3;
- (void)resetCacheWithOption:(unint64_t)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)resetStatus;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)setShouldOverride:(BOOL)a3 forSystemBudgets:(unint64_t)a4;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3;
- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)unblockEngineElement:(id)a3;
- (void)unblockEngineElementOnce:(id)a3;
- (void)updateShareForScope:(id)a3 completionHandler:(id)a4;
@end

@implementation CPLDirectLibraryManager

- (CPLDirectLibraryManager)initWithAbstractObject:(id)a3
{
  v12.receiver = self;
  v12.super_class = CPLDirectLibraryManager;
  v3 = [(CPLDirectLibraryManager *)&v12 initWithAbstractObject:a3];
  if (v3)
  {
    v4 = CPLCopyDefaultSerialQueueAttributes();
    v5 = dispatch_queue_create("com.apple.cpl.librarymanager.direct.client", v4);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v5;

    v7 = objc_alloc_init(NSCountedSet);
    disablingReasons = v3->_disablingReasons;
    v3->_disablingReasons = v7;

    v9 = objc_alloc_init(NSMutableArray);
    currentComputeStateDownloadTasks = v3->_currentComputeStateDownloadTasks;
    v3->_currentComputeStateDownloadTasks = v9;
  }

  return v3;
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLDirectLibraryManager *)self abstractObject];
  v6 = [v5 clientLibraryBaseURL];
  if (v6)
  {
    v7 = [v5 cloudLibraryStateStorageURL];
    if (v7)
    {
      v8 = [v5 cloudLibraryResourceStorageURL];
      if (v8)
      {
        v9 = [v5 libraryIdentifier];
        v10 = v9 != 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001B013C;
  v36[3] = &unk_100275AF0;
  v36[4] = self;
  v38 = v10;
  v11 = v4;
  v37 = v11;
  v12 = objc_retainBlock(v36);
  v13 = v12;
  if (self->_engineLibrary)
  {
    (v12[2])(v12);
  }

  else if (v10)
  {
    self->_ownsLibrary = 1;
    v27 = [CPLEngineLibrary alloc];
    v30 = [(CPLDirectLibraryManager *)self abstractObject];
    v32 = [v30 clientLibraryBaseURL];
    v29 = [(CPLDirectLibraryManager *)self abstractObject];
    v31 = [v29 cloudLibraryStateStorageURL];
    v28 = [(CPLDirectLibraryManager *)self abstractObject];
    v14 = [v28 cloudLibraryResourceStorageURL];
    v26 = [(CPLDirectLibraryManager *)self abstractObject];
    v15 = [v26 libraryIdentifier];
    v16 = [(CPLDirectLibraryManager *)self abstractObject];
    v17 = [v16 mainScopeIdentifier];
    v18 = [(CPLDirectLibraryManager *)self abstractObject];
    v19 = [v27 initWithClientLibraryBaseURL:v32 cloudLibraryStateStorageURL:v31 cloudLibraryResourceStorageURL:v14 libraryIdentifier:v15 mainScopeIdentifier:v17 options:{objc_msgSend(v18, "libraryOptions")}];
    engineLibrary = self->_engineLibrary;
    self->_engineLibrary = v19;

    [(CPLEngineLibrary *)self->_engineLibrary setOwner:self];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_10011B768();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = self->_engineLibrary;
        *buf = 138412546;
        v40 = self;
        v41 = 2112;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ will own %@", buf, 0x16u);
      }
    }

    configureEngineBeforeOpeningBlock = self->_configureEngineBeforeOpeningBlock;
    if (configureEngineBeforeOpeningBlock)
    {
      configureEngineBeforeOpeningBlock[2](configureEngineBeforeOpeningBlock, self->_engineLibrary);
    }

    v24 = self->_engineLibrary;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10011C19C;
    v33[3] = &unk_100279720;
    v33[4] = self;
    v34 = v13;
    v35 = v11;
    [(CPLEngineLibrary *)v24 openWithCompletionHandler:v33];
  }

  else
  {
    v25 = [CPLErrors incorrectMachineStateErrorWithReason:@"Library Manager has no Engine to manage"];
    (*(v11 + 2))(v11, v25, 0, 0, 0, 0);
  }
}

- (void)closeWithCompletionHandler:(id)a3
{
  v4 = a3;
  self->_closing = 1;
  v5 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
  v6 = v5;
  if (self->_foregroundCalls)
  {
    [v5 noteClientIsInBackground];
    self->_foregroundCallsHaveBeenQuiet = 0;
    self->_foregroundCalls = 0;
  }

  if ([(NSCountedSet *)self->_disablingReasons count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_disablingReasons;
    v8 = [(NSCountedSet *)v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 enableSynchronizationWithReason:*(*(&v25 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSCountedSet *)v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v9);
    }

    [(NSCountedSet *)self->_disablingReasons removeAllObjects];
  }

  if (self->_significantWorkCalls)
  {
    self->_significantWorkCalls = 0;
  }

  if (self->_disablingMinglingCount)
  {
    [v6 enableMingling];
    self->_disablingMinglingCount = 0;
  }

  clientQueue = self->_clientQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10011C548;
  v24[3] = &unk_100271F40;
  v24[4] = self;
  v13 = v24;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v30 = v13;
  v14 = clientQueue;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v15);

  engineLibrary = self->_engineLibrary;
  if (self->_ownsLibrary)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10011C5EC;
    v22[3] = &unk_1002727E8;
    v17 = &v23;
    v22[4] = self;
    v23 = v4;
    v18 = v4;
    [(CPLEngineLibrary *)engineLibrary closeAndDeactivate:0 completionHandler:v22];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001B072C;
    v20[3] = &unk_1002727E8;
    v17 = &v21;
    v20[4] = self;
    v21 = v4;
    v19 = v4;
    [(CPLEngineLibrary *)engineLibrary detachObject:self withCompletionHandler:v20];
  }
}

- (void)deactivateWithCompletionHandler:(id)a3
{
  v4 = a3;
  clientQueue = self->_clientQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011C864;
  v13[3] = &unk_100271F40;
  v13[4] = self;
  v6 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v15 = v6;
  v7 = clientQueue;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);

  engineLibrary = self->_engineLibrary;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011C8EC;
  v11[3] = &unk_100272EC0;
  v12 = v4;
  v10 = v4;
  [(CPLEngineLibrary *)engineLibrary closeAndDeactivate:1 completionHandler:v11];
}

- (BOOL)_isManagementLibraryManager
{
  v2 = [(CPLDirectLibraryManager *)self abstractObject];
  v3 = [v2 delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 isManagementLibraryManager:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enableMainScopeWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011CA84;
  v8 = v7[3] = &unk_100279798;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  [v6 blockWriteTransactionsWithCompletionHandler:v7];
}

- (void)disableMainScopeWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011CECC;
  v8 = v7[3] = &unk_100279798;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  [v6 blockWriteTransactionsWithCompletionHandler:v7];
}

- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLDirectLibraryManager *)self abstractObject];
  v9 = [v8 mainScopeIdentifier];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    [(CPLDirectLibraryManager *)self enableMainScopeWithCompletionHandler:v7];
  }

  else
  {
    [(CPLEngineLibrary *)self->_engineLibrary store];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011D380;
    v13 = v12[3] = &unk_1002797E8;
    v14 = v6;
    v15 = self;
    v16 = v7;
    v11 = v13;
    [v11 blockWriteTransactionsWithCompletionHandler:v12];
  }
}

- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLDirectLibraryManager *)self abstractObject];
  v9 = [v8 mainScopeIdentifier];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    [(CPLDirectLibraryManager *)self disableMainScopeWithCompletionHandler:v7];
  }

  else
  {
    [(CPLEngineLibrary *)self->_engineLibrary store];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011D92C;
    v13 = v12[3] = &unk_1002797E8;
    v14 = v6;
    v15 = self;
    v16 = v7;
    v11 = v13;
    [v11 blockWriteTransactionsWithCompletionHandler:v12];
  }
}

- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLEngineLibrary *)self->_engineLibrary store];
  [v8 scopes];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011DEB0;
  v16 = v15[3] = &unk_1002726D0;
  v17 = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011E01C;
  v13[3] = &unk_100279860;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v16;
  v12 = [v8 performWriteTransactionWithBlock:v15 completionHandler:v13];
}

- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a3 copy];
  if (!v13)
  {
    v13 = +[CPLResourceTransferTaskOptions defaultOptions];
  }

  [(CPLEngineLibrary *)self->_engineLibrary store];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10011E244;
  v25[3] = &unk_100279928;
  v17 = v25[4] = self;
  v26 = v17;
  v27 = v16;
  v28 = v12;
  v18 = v13;
  v29 = v18;
  v30 = v14;
  v31 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v12;
  v22 = v16;
  v23 = objc_retainBlock(v25);
  if ([v18 isHighPriority])
  {
    v24 = [v17 performWriteTransactionWithBlock:v23 completionHandler:&stru_100279968];
  }

  else
  {
    [v17 performBatchedWriteTransactionWithBlock:v23 completionHandler:&stru_100279988];
  }
}

- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v41 = a5;
  v16 = a7;
  v17 = a8;
  if (a4 - 2 <= 2 && (-[CPLDirectLibraryManager engineLibrary](self, "engineLibrary"), v18 = objc_claimAutoreleasedReturnValue(), [v18 systemMonitor], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isNetworkConstrained"), v19, v18, v20))
  {
    clientQueue = self->_clientQueue;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10011F108;
    v56[3] = &unk_100271E98;
    v57 = v17;
    v22 = v56;
    block = _NSConcreteStackBlock;
    v59 = 3221225472;
    v60 = sub_100002BB8;
    v61 = &unk_100271E98;
    v62 = v22;
    v23 = clientQueue;
    v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v23, v24);

    v25 = v57;
    v26 = v41;
  }

  else
  {
    v27 = [v15 itemScopedIdentifier];

    if (v27)
    {
      v28 = objc_opt_class();
      v29 = [NSProgress progressWithTotalUnitCount:1];
      block = _NSConcreteStackBlock;
      v59 = 3221225472;
      v60 = sub_1001B29E0;
      v61 = &unk_10027AC90;
      v62 = v28;
      v63 = a2;
      [v29 setCancellationHandler:&block];
      v30 = [(CPLEngineLibrary *)self->_engineLibrary store];
      v31 = [v30 downloadQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10011F188;
      v44[3] = &unk_100279A00;
      v44[4] = self;
      v51 = v17;
      v45 = v29;
      v46 = v15;
      v47 = v30;
      v48 = v31;
      v52 = a4;
      v26 = v41;
      v49 = v41;
      v32 = *&a6->var0.var3;
      v53 = *&a6->var0.var0;
      v54 = v32;
      v55 = *&a6->var1.var1;
      v16 = v40;
      v50 = v40;
      v33 = v31;
      v34 = v30;
      v25 = v29;
      v35 = [v34 performReadTransactionWithBlock:v44];
    }

    else
    {
      v36 = self->_clientQueue;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10011F928;
      v42[3] = &unk_100271E98;
      v43 = v17;
      v37 = v42;
      block = _NSConcreteStackBlock;
      v59 = 3221225472;
      v60 = sub_100002BB8;
      v61 = &unk_100271E98;
      v62 = v37;
      v38 = v36;
      v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v38, v39);

      v25 = v43;
      v16 = v40;
      v26 = v41;
    }
  }
}

- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = objc_opt_class();
  v11 = [NSProgress progressWithTotalUnitCount:1];
  block = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001B29E0;
  v26 = &unk_10027AC90;
  v27 = v10;
  v28 = a2;
  [v11 setCancellationHandler:&block];
  clientQueue = self->_clientQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10011FB68;
  v18[3] = &unk_100279A78;
  v21 = a3;
  v22 = a4;
  v19 = v11;
  v20 = v9;
  v18[4] = self;
  v13 = v18;
  block = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100002BB8;
  v26 = &unk_100271E98;
  v27 = v13;
  v14 = clientQueue;
  v15 = v11;
  v16 = v9;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v14, v17);
}

- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CPLEngineLibrary *)self->_engineLibrary store];
  [v11 downloadQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100120148;
  v18[3] = &unk_100279BB8;
  v18[4] = self;
  v19 = v8;
  v21 = v20 = v11;
  v22 = v9;
  v23 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v21;
  v15 = v11;
  v16 = v8;
  v17 = [v15 performReadTransactionWithBlock:v18];
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLEngineLibrary *)self->_engineLibrary store];
  [v8 idMapping];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100120F18;
  v17[3] = &unk_1002797C0;
  v19 = v18 = v6;
  v20 = objc_alloc_init(NSMutableDictionary);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001210F4;
  v14[3] = &unk_100279C08;
  v15 = v20;
  v16 = v7;
  v9 = v20;
  v10 = v7;
  v11 = v19;
  v12 = v6;
  v13 = [v8 performWriteTransactionWithBlock:v17 completionHandler:v14];
}

- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)a3 inAreLocalIdentifiers:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CPLEngineLibrary *)self->_engineLibrary store];
  [v10 idMapping];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001212B0;
  v17 = v15[3] = &unk_100279C30;
  v18 = v9;
  v19 = a4;
  v16 = v8;
  v11 = v17;
  v12 = v8;
  v13 = v9;
  v14 = [v10 performReadTransactionWithBlock:v15];
}

- (void)createScope:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!CPLIsInTestReadonlyMode())
  {
    if ([v7 scopeType] == 4 && (CPLIsSharedLibraryFeatureEnabled() & 1) == 0)
    {
      v13 = @"Shared Library is not enabled on this device";
    }

    else
    {
      if ([v7 scopeType] != 2 || (+[CPLFingerprintScheme supportsEPP](CPLFingerprintScheme, "supportsEPP") & 1) != 0 || !objc_msgSend(v7, "hasEPPAssets"))
      {
        v14 = objc_opt_class();
        v15 = [NSProgress progressWithTotalUnitCount:1];
        block = _NSConcreteStackBlock;
        v31 = 3221225472;
        v32 = sub_1001B29E0;
        v33 = &unk_10027AC90;
        v34 = v14;
        v35 = a2;
        [v15 setCancellationHandler:&block];
        v16 = [(CPLDirectLibraryManager *)self engineLibrary];
        v17 = [v16 store];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100121804;
        v21[3] = &unk_100279DC0;
        v26 = v8;
        v22 = v15;
        v23 = self;
        v27 = a2;
        v24 = v7;
        v25 = v17;
        v18 = v17;
        v19 = v15;
        [v18 blockWriteTransactionsWithCompletionHandler:v21];

        goto LABEL_12;
      }

      v13 = @"EPP CMM is not enabled on this device";
    }

    v20 = [CPLErrors cplErrorWithCode:1002 description:v13];
    (*(v8 + 2))(v8, 0, v20);

    goto LABEL_12;
  }

  clientQueue = self->_clientQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100121788;
  v28[3] = &unk_100271E98;
  v29 = v8;
  v10 = v28;
  block = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100002BB8;
  v33 = &unk_100271E98;
  v34 = v10;
  v11 = clientQueue;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v11, v12);

LABEL_12:
}

- (void)updateShareForScope:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100122970;
    v28[3] = &unk_100271E98;
    v29 = v8;
    v10 = v28;
    block = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100002BB8;
    v33 = &unk_100271E98;
    v34 = v10;
    v11 = v8;
    v12 = clientQueue;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v12, v13);

    v14 = v29;
  }

  else
  {
    v15 = objc_opt_class();
    v16 = [NSProgress progressWithTotalUnitCount:1];
    block = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_1001B29E0;
    v33 = &unk_10027AC90;
    v34 = v15;
    v35 = a2;
    [v16 setCancellationHandler:&block];
    v17 = [(CPLDirectLibraryManager *)self engineLibrary];
    v18 = [v17 store];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001229EC;
    v21[3] = &unk_100279DC0;
    v26 = v8;
    v22 = v16;
    v23 = v18;
    v24 = v7;
    v25 = self;
    v27 = a2;
    v19 = v18;
    v14 = v16;
    v20 = v8;
    [v19 blockWriteTransactionsWithCompletionHandler:v21];
  }
}

- (void)deleteScopeWithIdentifier:(id)a3 forced:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001238EC;
    v27[3] = &unk_100271E98;
    v28 = v9;
    v11 = v27;
    block = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100002BB8;
    v32 = &unk_100271E98;
    v33 = v11;
    v12 = v9;
    v13 = clientQueue;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v13, v14);

    v15 = v28;
  }

  else
  {
    v16 = [NSProgress progressWithTotalUnitCount:1];
    v17 = self->_clientQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100123964;
    v22[3] = &unk_100279ED8;
    v22[4] = self;
    v25 = v9;
    v26 = a4;
    v23 = v8;
    v24 = v16;
    v18 = v22;
    block = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100002BB8;
    v32 = &unk_100271E98;
    v33 = v18;
    v19 = v17;
    v15 = v16;
    v20 = v9;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v19, v21);
  }
}

- (void)_fetchTransportScopeForScope:(id)a3 transportGroup:(id)a4 progress:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLDirectLibraryManager *)self engineLibrary];
  v15 = [v14 transport];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100124300;
  v21[3] = &unk_100279F00;
  v22 = v10;
  v16 = v10;
  v17 = [v15 fetchTransportScopeForScope:v13 transportScope:0 completionHandler:v21];

  [v17 setTransportGroup:v12];
  [v17 setShouldCreateScopeIfNecessary:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100124314;
  v19[3] = &unk_1002720E0;
  v19[4] = self;
  v20 = v17;
  v18 = v17;
  [v11 performAsCurrentWithPendingUnitCount:1 usingBlock:v19];
}

- (void)refreshScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100124608;
    v29[3] = &unk_100271E98;
    v30 = v8;
    v10 = v29;
    block = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100002BB8;
    v34 = &unk_100271E98;
    v35 = v10;
    v11 = v8;
    v12 = clientQueue;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v12, v13);

    v14 = v30;
  }

  else
  {
    v15 = objc_opt_class();
    v16 = [NSProgress progressWithTotalUnitCount:1];
    block = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_1001B29E0;
    v34 = &unk_10027AC90;
    v35 = v15;
    v36 = a2;
    [v16 setCancellationHandler:&block];
    v17 = [(CPLDirectLibraryManager *)self engineLibrary];
    v18 = [v17 store];

    v19 = [(CPLDirectLibraryManager *)self engineLibrary];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100124684;
    v22[3] = &unk_10027A058;
    v27 = v8;
    v23 = v16;
    v24 = v18;
    v25 = v7;
    v26 = self;
    v28 = a2;
    v20 = v18;
    v14 = v16;
    v21 = v8;
    [v19 blockEngineWithReason:@"Refreshing scope" onlyIfBlocked:0 block:v22];
  }
}

- (BOOL)_isValidScopeForClient:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([v6 scopeType] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_4;
  }

  v7 = [(CPLDirectLibraryManager *)self engineLibrary];
  v8 = [v7 libraryOptions];

  if ((v8 & 2) != 0)
  {
    goto LABEL_4;
  }

  v9 = [(CPLDirectLibraryManager *)self engineLibrary];
  v10 = [v9 store];
  v11 = [v6 scopeIdentifier];
  v12 = [v10 mainScopeSupportsSharingScopeWithIdentifier:v11];

  if (v12)
  {
LABEL_4:
    v13 = 1;
  }

  else
  {
    v15 = [v6 scopeIdentifier];
    v16 = [CPLErrors cplErrorWithCode:2001 description:@"%@ is not a valid scope for this engine", v15];

    if (a4)
    {
      v17 = v16;
      *a4 = v16;
    }

    v13 = 0;
  }

  return v13;
}

- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100125EC0;
    v26[3] = &unk_100271E98;
    v27 = v8;
    v10 = v26;
    block = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100002BB8;
    v31 = &unk_100271E98;
    v32 = v10;
    v11 = v8;
    v12 = clientQueue;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v12, v13);

    v14 = v27;
  }

  else
  {
    v15 = objc_opt_class();
    v16 = [NSProgress progressWithTotalUnitCount:1];
    block = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1001B29E0;
    v31 = &unk_10027AC90;
    v32 = v15;
    v33 = a2;
    [v16 setCancellationHandler:&block];
    v17 = self->_clientQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100125F3C;
    v22[3] = &unk_1002731C0;
    v25 = v8;
    v22[4] = self;
    v23 = v16;
    v24 = v7;
    v18 = v22;
    block = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100002BB8;
    v31 = &unk_100271E98;
    v32 = v18;
    v19 = v17;
    v14 = v16;
    v20 = v8;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v19, v21);
  }
}

- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!CPLIsInTestReadonlyMode())
  {
    if ([v7 scopeType] == 5 && (CPLIsSharedLibraryFeatureEnabled() & 1) == 0)
    {
      v14 = [CPLErrors cplErrorWithCode:1002 description:@"Shared Library is not enabled on this device"];
    }

    else
    {
      v26 = 0;
      v13 = [(CPLDirectLibraryManager *)self _isValidScopeForClient:v7 error:&v26];
      v14 = v26;
      if (v13)
      {
        v15 = objc_opt_class();
        v16 = [NSProgress progressWithTotalUnitCount:1];
        block = _NSConcreteStackBlock;
        v30 = 3221225472;
        v31 = sub_1001B29E0;
        v32 = &unk_10027AC90;
        v33 = v15;
        v34 = a2;
        [v16 setCancellationHandler:&block];
        v17 = [(CPLDirectLibraryManager *)self engineLibrary];
        v18 = [v17 store];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100126CE8;
        v21[3] = &unk_10027A210;
        v21[4] = self;
        v25 = v8;
        v22 = v16;
        v23 = v7;
        v24 = v18;
        v19 = v18;
        v20 = v16;
        [v19 blockWriteTransactionsWithCompletionHandler:v21];

LABEL_9:
        goto LABEL_10;
      }
    }

    (*(v8 + 2))(v8, v14);
    goto LABEL_9;
  }

  clientQueue = self->_clientQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100126C70;
  v27[3] = &unk_100271E98;
  v28 = v8;
  v10 = v27;
  block = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100002BB8;
  v32 = &unk_100271E98;
  v33 = v10;
  v11 = clientQueue;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v11, v12);

LABEL_10:
}

- (void)_fetchExistingSharedLibraryScopeWithProgress:(id)a3 blocker:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CPLDirectLibraryManager *)self engineLibrary];
  v12 = [v11 transport];

  v13 = [(CPLDirectLibraryManager *)self engineLibrary];
  v14 = [v13 store];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001279B0;
  v21[3] = &unk_10027A238;
  v22 = v14;
  v23 = v8;
  v24 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v14;
  [v12 fetchExistingSharedLibraryScopeTaskWithCompletionHandler:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100127CAC;
  v19[3] = &unk_1002720E0;
  v20 = v19[4] = self;
  v18 = v20;
  [v10 performAsCurrentWithPendingUnitCount:1 usingBlock:v19];
}

- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100127F54;
    v22[3] = &unk_100271E98;
    v23 = v5;
    v7 = v22;
    block = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100002BB8;
    v27 = &unk_100271E98;
    v28 = v7;
    v8 = v5;
    v9 = clientQueue;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v9, v10);

    v11 = v23;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = [NSProgress progressWithTotalUnitCount:1];
    block = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1001B29E0;
    v27 = &unk_10027AC90;
    v28 = v12;
    v29 = a2;
    [v13 setCancellationHandler:&block];
    v14 = [(CPLDirectLibraryManager *)self engineLibrary];
    v15 = [v14 store];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100127FD0;
    v18[3] = &unk_10027A2B0;
    v18[4] = self;
    v19 = v13;
    v20 = v15;
    v21 = v5;
    v16 = v15;
    v11 = v13;
    v17 = v5;
    [v16 blockWriteTransactionsWithCompletionHandler:v18];
  }
}

- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100128A20;
    v30[3] = &unk_100271E98;
    v31 = v11;
    v13 = v30;
    block = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100002BB8;
    v35 = &unk_100271E98;
    v36 = v13;
    v14 = v11;
    v15 = clientQueue;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v15, v16);

    v17 = v31;
  }

  else
  {
    v18 = [NSProgress progressWithTotalUnitCount:1];
    v19 = self->_clientQueue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100128A9C;
    v24[3] = &unk_10027A3C8;
    v24[4] = self;
    v27 = v11;
    v28 = a4;
    v29 = a5;
    v25 = v10;
    v26 = v18;
    v20 = v24;
    block = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100002BB8;
    v35 = &unk_100271E98;
    v36 = v20;
    v21 = v19;
    v17 = v18;
    v22 = v11;
    v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v21, v23);
  }
}

- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100129AA8;
    v34[3] = &unk_100271E98;
    v35 = v14;
    v16 = v34;
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002BB8;
    v39 = &unk_100271E98;
    v40 = v16;
    v17 = v14;
    v18 = clientQueue;
    v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v18, v19);

    v20 = v35;
  }

  else
  {
    v21 = [NSProgress progressWithTotalUnitCount:1];
    v22 = self->_clientQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100129B24;
    v27[3] = &unk_10027A490;
    v27[4] = self;
    v31 = v14;
    v28 = v13;
    v32 = a5;
    v33 = a6;
    v29 = v12;
    v30 = v21;
    v23 = v27;
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002BB8;
    v39 = &unk_100271E98;
    v40 = v23;
    v24 = v22;
    v20 = v21;
    v25 = v14;
    v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v24, v26);
  }
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 < 0x1F5)
  {
    v16 = [(CPLDirectLibraryManager *)self engineLibrary];
    v17 = [v16 store];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012B460;
    v19[3] = &unk_10027A4B8;
    v23 = v10;
    v20 = v17;
    v21 = v8;
    v22 = self;
    v24 = a4;
    v15 = v17;
    v18 = [v15 performReadTransactionWithBlock:v19];
  }

  else
  {
    clientQueue = self->_clientQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10012B3F0;
    v25[3] = &unk_100271E98;
    v26 = v9;
    v12 = v25;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v28 = v12;
    v13 = clientQueue;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v13, v14);

    v15 = v26;
  }
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [NSProgress progressWithTotalUnitCount:1];
  block = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1001B29E0;
  v20 = &unk_10027AC90;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  clientQueue = self->_clientQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012BE38;
  v14[3] = &unk_100272C08;
  v15 = v7;
  v16 = v5;
  v14[4] = self;
  v9 = v14;
  block = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100002BB8;
  v20 = &unk_100271E98;
  v21 = v9;
  v10 = clientQueue;
  v11 = v7;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = [NSProgress progressWithTotalUnitCount:1];
  block = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1001B29E0;
  v25 = &unk_10027AC90;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  clientQueue = self->_clientQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012C370;
  v18[3] = &unk_100274E78;
  v18[4] = self;
  v19 = v7;
  v20 = v10;
  v21 = v8;
  v12 = v18;
  block = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100002BB8;
  v25 = &unk_100271E98;
  v26 = v12;
  v13 = clientQueue;
  v14 = v10;
  v15 = v8;
  v16 = v7;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

- (void)_dispatchForceSyncForScopeIdentifiers:(id)a3 errors:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  clientQueue = self->_clientQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012C860;
  v18[3] = &unk_1002731C0;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = v10;
  v12 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v24 = v12;
  v13 = clientQueue;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

- (void)forceSynchronizingScopeWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLEngineLibrary *)self->_engineLibrary store];
  v9 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012CA44;
  v13[3] = &unk_10027A5A8;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  [v9 getCurrentRequiredStateWithCompletionHandler:v13];
}

- (void)disableSynchronizationWithReason:(id)a3
{
  v5 = a3;
  [(NSCountedSet *)self->_disablingReasons addObject:v5];
  if ([(NSCountedSet *)self->_disablingReasons countForObject:v5]== 1)
  {
    v4 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
    [v4 disableSynchronizationWithReason:v5];
  }
}

- (void)disableMingling
{
  disablingMinglingCount = self->_disablingMinglingCount;
  if (!disablingMinglingCount)
  {
    v4 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
    [v4 disableMingling];

    disablingMinglingCount = self->_disablingMinglingCount;
  }

  self->_disablingMinglingCount = disablingMinglingCount + 1;
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLDirectLibraryManager *)self engineLibrary];
  v6 = [v5 store];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012D834;
  v10[3] = &unk_10027A198;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  v9 = [v6 performReadTransactionWithBlock:v10];
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLDirectLibraryManager *)self engineLibrary];
  v9 = [v8 store];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012D9B8;
  v14[3] = &unk_10027A5D0;
  v15 = v9;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v9;
  v13 = [v12 performReadTransactionWithBlock:v14];
}

- (void)getChangedStatusesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLDirectLibraryManager *)self engineLibrary];
  v6 = [v5 store];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012DC00;
  v10[3] = &unk_100279770;
  v12 = self;
  v13 = v4;
  v11 = v6;
  v7 = v4;
  v8 = v6;
  v9 = [v8 performReadTransactionWithBlock:v10];
}

- (void)acknowledgeChangedStatuses:(id)a3
{
  v4 = a3;
  v5 = [(CPLDirectLibraryManager *)self engineLibrary];
  v6 = [v5 store];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012DE9C;
  v12[3] = &unk_1002726D0;
  v13 = v6;
  v14 = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B1A5C;
  v10[3] = &unk_100273588;
  v11 = v14;
  v7 = v14;
  v8 = v6;
  v9 = [v8 performWriteTransactionWithBlock:v12 completionHandler:v10];
}

- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)a3 persist:(BOOL)a4
{
  v6 = a3;
  v7 = [(CPLDirectLibraryManager *)self engineLibrary];
  v8 = [v7 store];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012E0D0;
  v14[3] = &unk_10027A620;
  v15 = v8;
  v16 = v6;
  v17 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B1B40;
  v12[3] = &unk_100273588;
  v13 = v16;
  v9 = v16;
  v10 = v8;
  v11 = [v10 performWriteTransactionWithBlock:v14 completionHandler:v12];
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLDirectLibraryManager *)self engineLibrary];
  v9 = [v8 store];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012E3D8;
  v14[3] = &unk_10027A648;
  v14[4] = self;
  v15 = v9;
  v16 = v6;
  v17 = v7;
  v10 = v6;
  v11 = v9;
  v12 = v7;
  v13 = [v11 performReadTransactionWithBlock:v14];
}

- (id)_cloudResourcesToLocalResourcesWithLocalResources:(id)a3 targetMapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [(CPLDirectLibraryManager *)self engineLibrary];
  v10 = [v9 store];

  [v10 cloudCache];
  v26 = v25 = v10;
  v11 = [v10 idMapping];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        v18 = [v17 itemScopedIdentifier];
        v19 = [v11 cloudScopedIdentifierForLocalScopedIdentifier:v18 isFinal:&v27];

        if (!v19)
        {
          v20 = [v17 itemScopedIdentifier];
          v19 = [v20 copy];
        }

        v21 = [v7 targetForRecordWithScopedIdentifier:v19];

        if (!v21)
        {
          v22 = [v26 targetForRecordWithCloudScopedIdentifier:v19];
          [v7 setTarget:v22 forRecordWithScopedIdentifier:v19];
        }

        v23 = [v17 copy];
        [v23 setItemScopedIdentifier:v19];
        [v8 setObject:v17 forKeyedSubscript:v23];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  return v8;
}

- (id)_localResourceFromCloudResources:(id)a3 usingMapping:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)_localResourceFromCloudResourcesAndErrors:(id)a3 usingMapping:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012ED24;
    v12[3] = &unk_10027A670;
    v13 = v6;
    v8 = v7;
    v14 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v14;
    v10 = v8;
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

- (void)checkServerForResources:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(CPLDirectLibraryManager *)self engineLibrary];
  v15 = [v14 transport];
  v16 = [v10 allKeys];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10012EF00;
  v21[3] = &unk_10027A698;
  v22 = v10;
  v23 = v11;
  v21[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = [v15 resourceCheckTaskForResources:v16 targetMapping:v13 transportScopeMapping:v12 completionHandler:v21];

  v20 = [v14 syncManager];
  [v20 configureDirectTransportTask:v19];

  [v19 runWithNoSyncSession];
}

- (id)safeResourcesToDeleteFromProposedResources:(id)a3 realPrune:(BOOL)a4 checkServerIfNecessary:(BOOL)a5 allowUnconfirmed:(BOOL)a6 resourcesToCheckOnServer:(id *)a7 targetScopeMapping:(id)a8 unsafeResources:(id)a9
{
  v86 = a6;
  v11 = a5;
  v105 = a3;
  v14 = a8;
  v15 = a9;
  v88 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableArray);
  v17 = [(CPLEngineLibrary *)self->_engineLibrary store];
  v101 = [v17 scopes];
  v89 = [v17 cloudCache];
  v102 = [v17 outgoingResources];
  v96 = [v17 idMapping];
  v87 = v17;
  v18 = [v17 resourceStorage];
  v91 = objc_alloc_init(NSMutableDictionary);
  v92 = objc_alloc_init(NSMutableDictionary);
  v85 = objc_alloc_init(NSMutableSet);
  v97 = objc_alloc_init(NSMutableDictionary);
  v99 = objc_alloc_init(NSMutableSet);
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_10012FEE4;
  v115[3] = &unk_10027A6C0;
  v19 = v18;
  v116 = v19;
  v118 = a4;
  v20 = v15;
  v117 = v20;
  v21 = objc_retainBlock(v115);
  v84 = v11;
  v98 = v16;
  v82 = v20;
  v83 = a7;
  v81 = v19;
  if (v11)
  {
    if (qword_1002D2800 != -1)
    {
      sub_1001B4264();
    }

    v103 = byte_1002D2808;
  }

  else
  {
    v103 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v105;
  v106 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (v106)
  {
    v104 = *v112;
    v90 = v14;
    do
    {
      v22 = 0;
      do
      {
        if (*v112 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v111 + 1) + 8 * v22);
        v24 = [v23 itemScopedIdentifier];
        if (!v24)
        {
          if (_CPLSilentLogging)
          {
            v26 = @"resource has no item identifier";
            v27 = 50;
          }

          else
          {
            v25 = sub_10011B768();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v120 = v23;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Client is asking to delete a resource with no item identifier: %@", buf, 0xCu);
            }

            v26 = @"resource has no item identifier";
            v27 = 50;
LABEL_21:
          }

          goto LABEL_22;
        }

        if ([v102 shouldUploadResource:v23])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = sub_10011B768();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v120 = v23;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but that resource is still in transit for upload", buf, 0xCu);
            }

            v26 = @"resource has not been uploaded yet";
            v27 = 27;
            goto LABEL_21;
          }

          v26 = @"resource has not been uploaded yet";
          v27 = 27;
LABEL_22:
          if ((v103 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_23;
        }

        v32 = [v24 scopeIdentifier];
        if (([v99 containsObject:v32] & 1) == 0)
        {
          v26 = [v97 objectForKeyedSubscript:v32];
          if (v26)
          {
            goto LABEL_61;
          }

          v38 = [v101 scopeWithIdentifier:v32];
          if (!v38)
          {
            v26 = @"scope is unknown";
            goto LABEL_60;
          }

          v39 = [v101 flagsForScope:v38];
          v26 = @"scope has been deleted";
          if ([v39 valueForFlag:4] & 1) != 0 || (v26 = @"scope has been disabled", (objc_msgSend(v39, "valueForFlag:", 8)) || (v26 = @"scope is inactive", objc_msgSend(v39, "valueForFlag:", 16)))
          {

LABEL_60:
            [v97 setObject:v26 forKeyedSubscript:v32];

LABEL_61:
            if ((_CPLSilentLogging & 1) == 0)
            {
              v51 = sub_10011B768();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v120 = v23;
                v121 = 2112;
                v122 = v26;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but it's not safe because of its scope: %@", buf, 0x16u);
              }
            }

            if ((v103 & 1) == 0)
            {
              v27 = 33;
              goto LABEL_67;
            }

            goto LABEL_23;
          }

          [v99 addObject:v32];
        }

        v110 = 0;
        v33 = [v96 cloudScopedIdentifierForLocalScopedIdentifier:v24 isFinal:&v110];
        if (!v33)
        {
          goto LABEL_30;
        }

        v34 = [v92 objectForKey:v33];
        if (v34)
        {
          v35 = v34;
          v36 = +[NSNull null];

          if (v35 == v36)
          {

LABEL_30:
            if ((_CPLSilentLogging & 1) == 0)
            {
              v37 = sub_10011B768();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v120 = v23;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but the record is not even in the cloud", buf, 0xCu);
              }
            }

            if ((v103 & 1) == 0)
            {
              v26 = @"record is not in the cloud";
              v27 = 25;
LABEL_67:
              (v21[2])(v21, v23, v27, v26);
              goto LABEL_68;
            }

            v26 = @"record is not in the cloud";
            goto LABEL_23;
          }
        }

        else
        {
          v109 = 0;
          v108 = 0;
          v40 = [v89 recordWithScopedIdentifier:v33 isConfirmed:&v109 isStaged:&v108];
          if (!v40)
          {
            sub_1001B428C(v92, v33);
            goto LABEL_30;
          }

          v35 = v40;
          [v92 setObject:v40 forKey:v33];
          if ((v109 & 1) != 0 || v86)
          {
            [v85 addObject:v33];
          }
        }

        v41 = [v91 objectForKey:v24];
        v94 = v33;
        v95 = v35;
        if (v41)
        {
          v42 = v41;
          v43 = +[NSNull null];

          if (v42 == v43)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v44 = [v87 transactionClientCacheView];
          v45 = [v44 recordViewWithScopedIdentifier:v24];
          v42 = [v45 changeForType:8];

          if (!v42)
          {
            v42 = +[NSNull null];
            [v91 setObject:v42 forKey:v24];
LABEL_88:
            v93 = 0;
LABEL_89:

            if ([v35 serverRecordIsCorrupted])
            {
              if (_CPLSilentLogging)
              {
                v58 = 1;
                v26 = @"record's resources is corrupted";
                v27 = 31;
                v63 = v103;
                goto LABEL_110;
              }

              v42 = sub_10011B768();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v120 = v23;
                v121 = 2112;
                v122 = v35;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but we determined %@ is incoherent on server", buf, 0x16u);
              }

              v58 = 1;
              v26 = @"record's resources is corrupted";
              v27 = 31;
              goto LABEL_94;
            }

            v42 = [v35 resourceForType:{objc_msgSend(v23, "resourceType")}];
            v64 = [v42 identity];
            v65 = [v64 fingerPrint];

            v66 = [v23 identity];
            v67 = [v66 fingerPrint];

            if (v65 && v67)
            {
              v68 = [v65 isEqual:v67];

              if ((v68 & 1) == 0)
              {
LABEL_103:
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v74 = sub_10011B768();
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v120 = v23;
                    v121 = 2112;
                    v122 = v42;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but it does not match the cloud cache: %@", buf, 0x16u);
                  }

                  v58 = 1;
                  v26 = @"resource is stale";
                  goto LABEL_107;
                }

                goto LABEL_78;
              }
            }

            else
            {

              if (v65 | v67)
              {
                goto LABEL_103;
              }
            }

            v69 = [v42 identity];
            v70 = [v69 fileUTI];

            v71 = [v23 identity];
            v72 = [v71 fileUTI];

            if (v70 && v72)
            {
              v73 = [v70 isEqual:v72];

              if (v73)
              {
                goto LABEL_115;
              }
            }

            else
            {

              if (!(v70 | v72))
              {
LABEL_115:
                if ([v85 containsObject:v33])
                {
                  if (_CPLSilentLogging)
                  {
                    v26 = 0;
                    v27 = 0;
                    v58 = v103;
                    v63 = v103;
                    goto LABEL_109;
                  }

                  v76 = sub_10011B768();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v120 = v23;
                    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Client is asking to delete %@ and it seems safe to do so", buf, 0xCu);
                  }

                  v26 = 0;
                  v27 = 0;
                  v58 = v103;
                  v75 = v76;
                  v63 = v103;
                  goto LABEL_108;
                }

                if (v84)
                {
                  if (_CPLSilentLogging)
                  {
                    v26 = 0;
                    v27 = 0;
                    v63 = 1;
                    v58 = 1;
                    goto LABEL_109;
                  }

                  v77 = sub_10011B768();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v120 = v23;
                    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEBUG, "Client is asking to delete %@ and we need to confirm with server", buf, 0xCu);
                  }

                  v26 = 0;
                  v27 = 0;
                  v75 = v77;
                  v63 = 1;
                  v58 = 1;
                  goto LABEL_108;
                }

                if ((_CPLSilentLogging & 1) == 0)
                {
                  v74 = sub_10011B768();
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v120 = v23;
                    v121 = 2112;
                    v122 = v42;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but it has not been confirmed yet: %@", buf, 0x16u);
                  }

                  v58 = 1;
                  v26 = @"resource is not confirmed";
LABEL_107:
                  v27 = 27;
                  v75 = v74;
                  v63 = v103;
LABEL_108:

                  goto LABEL_109;
                }

                v58 = 1;
                v26 = @"resource is not confirmed";
                goto LABEL_79;
              }
            }

            goto LABEL_103;
          }

          if (([v42 supportsResources]& 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v59 = sub_10011B768();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v60 = objc_opt_class();
                *buf = 138412546;
                v120 = v60;
                v121 = 2112;
                v122 = v23;
                v61 = v60;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Client is asking to delete a resource for a record that does not support resources (%@): %@", buf, 0x16u);
              }
            }

            v62 = +[NSNull null];
            [v91 setObject:v62 forKey:v24];

            goto LABEL_88;
          }

          [v91 setObject:v42 forKey:v24];
        }

        v93 = v42;
        v42 = -[NSObject resourceForType:](v42, "resourceForType:", [v23 resourceType]);
        v46 = [v42 identity];
        v47 = [v46 fingerPrint];

        v48 = [v23 identity];
        v49 = [v48 fingerPrint];

        if (v47 && v49)
        {
          v50 = [v47 isEqual:v49];

          if ((v50 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {

          if (v47 | v49)
          {
            goto LABEL_74;
          }
        }

        v52 = [v42 identity];
        v53 = [v52 fileUTI];

        v54 = [v23 identity];
        v55 = [v54 fileUTI];

        if (v53 && v55)
        {
          v56 = [v53 isEqual:v55];

          if (v56)
          {
            goto LABEL_82;
          }
        }

        else
        {

          if (!(v53 | v55))
          {
LABEL_82:
            v35 = v95;
            goto LABEL_89;
          }
        }

LABEL_74:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v57 = sub_10011B768();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v120 = v23;
            v121 = 2112;
            v122 = v42;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Client is asking to delete %@ but it does not match the client cache: %@", buf, 0x16u);
          }
        }

LABEL_78:
        v58 = 1;
        v26 = @"resource is stale";
LABEL_79:
        v27 = 27;
LABEL_94:
        v63 = v103;
LABEL_109:

LABEL_110:
        v14 = v90;
        if ((v58 & 1) == 0)
        {
          [v88 addObject:v23];
          goto LABEL_68;
        }

        if ((v63 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_23:
        v28 = [v23 itemScopedIdentifier];
        v29 = [v28 scopeIdentifier];

        v107 = 0;
        v30 = [v14 addTransportScopeForScopeIdentifier:v29 scopes:v101 useStagingScopeIfNecessary:1 error:&v107];
        v31 = v107;
        if (v30)
        {
          [v98 addObject:v23];
        }

        else
        {
          (v21[2])(v21, v23, 2001, @"can't find a valid transport scope");
        }

LABEL_68:
        v22 = v22 + 1;
      }

      while (v106 != v22);
      v78 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
      v106 = v78;
    }

    while (v78);
  }

  if (v83)
  {
    v79 = v98;
    *v83 = v98;
  }

  return v88;
}

- (void)_deleteResources:(id)a3 dryRun:(BOOL)a4 checkServerIfNecessary:(BOOL)a5 completionHandler:(id)a6
{
  v8 = a4;
  v33 = a3;
  v34 = a6;
  v36 = [(CPLEngineLibrary *)self->_engineLibrary store];
  v35 = [v36 resourceStorage];
  if ([(CPLEngineLibrary *)self->_engineLibrary iCloudLibraryClientVersionTooOld])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10011B768();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "prune";
        if (v8)
        {
          v11 = "check (prune)";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asked to %s some resources while engine not syncing due to server blacklisting client", &buf, 0xCu);
      }
    }

    clientQueue = self->_clientQueue;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10013078C;
    v85[3] = &unk_100272E20;
    v88 = v34;
    v86 = v33;
    v87 = v35;
    v13 = v85;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v90 = sub_100002BB8;
    v91 = &unk_100271E98;
    v92 = v13;
    v14 = clientQueue;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
    dispatch_async(v14, v15);
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v90 = 0x3032000000;
    v91 = sub_100004550;
    v92 = sub_10000538C;
    v93 = 0;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x3032000000;
    v83[3] = sub_100004550;
    v83[4] = sub_10000538C;
    v84 = objc_alloc_init(NSMutableArray);
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x3032000000;
    v81[3] = sub_100004550;
    v81[4] = sub_10000538C;
    v82 = objc_alloc_init(NSMutableDictionary);
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x3032000000;
    v79[3] = sub_100004550;
    v79[4] = sub_10000538C;
    v80 = 0;
    v16 = +[NSFileManager defaultManager];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100130830;
    v75[3] = &unk_10027A6E8;
    v17 = v35;
    v78 = !v8;
    v76 = v17;
    v77 = v81;
    v18 = objc_retainBlock(v75);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1001308F4;
    v67[3] = &unk_10027A710;
    v73 = v8;
    v74 = !v8;
    v31 = v17;
    v68 = v31;
    v71 = v83;
    v29 = v16;
    v69 = v29;
    v72 = v81;
    v30 = v18;
    v70 = v30;
    v19 = objc_retainBlock(v67);
    v20 = objc_alloc_init(CPLRecordTargetMapping);
    v21 = [CPLTransportScopeMapping alloc];
    v22 = [(CPLDirectLibraryManager *)self engineLibrary];
    v23 = [v22 transport];
    v24 = [v21 initWithTranslator:v23];

    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = sub_100004550;
    v65[4] = sub_10000538C;
    v66 = 0;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100130A34;
    v52[3] = &unk_10027A738;
    v63 = a5;
    v52[4] = self;
    v64 = !v8;
    v53 = v33;
    v58 = v79;
    v54 = v24;
    v59 = v81;
    v62 = a2;
    v57 = v19;
    p_buf = &buf;
    v55 = v36;
    v61 = v65;
    v56 = v20;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100130C40;
    v37[3] = &unk_10027A828;
    v50 = v8;
    v45 = v83;
    v37[4] = self;
    v43 = v34;
    v38 = v53;
    v51 = !v8;
    v39 = v31;
    v46 = v65;
    v47 = v81;
    v25 = v56;
    v40 = v25;
    v26 = v54;
    v41 = v26;
    v48 = v79;
    v42 = v55;
    v49 = &buf;
    v27 = v57;
    v44 = v27;
    v28 = [v42 performWriteTransactionWithBlock:v52 completionHandler:v37];

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v79, 8);

    _Block_object_dispose(v81, 8);
    _Block_object_dispose(v83, 8);

    _Block_object_dispose(&buf, 8);
  }
}

- (void)getResourcesForItemWithScopedIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLEngineLibrary *)self->_engineLibrary store];
  v9 = [v8 cloudCache];
  v10 = [v8 outgoingResources];
  [v8 idMapping];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100131F5C;
  v18[3] = &unk_100279928;
  v19 = v6;
  v21 = v20 = v8;
  v22 = v9;
  v23 = v10;
  v24 = self;
  v25 = v7;
  v11 = v7;
  v12 = v10;
  v13 = v9;
  v14 = v21;
  v15 = v8;
  v16 = v6;
  v17 = [v15 performReadTransactionWithBlock:v18];
}

- (void)compactFileCacheWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001328F0;
  v11 = v10[3] = &unk_100273588;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001329C0;
  v8[3] = &unk_100279860;
  v9 = v4;
  v5 = v4;
  v6 = v11;
  v7 = [v6 performWriteTransactionWithBlock:v10 completionHandler:v8];
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CPLDirectLibraryManager *)self _isManagementLibraryManager])
  {
    engineLibrary = self->_engineLibrary;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100132C88;
    v19[3] = &unk_10027A878;
    v19[4] = self;
    v20 = v10;
    v12 = v10;
    [(CPLEngineLibrary *)engineLibrary testKey:v8 value:v9 completionHandler:v19];
    v13 = v20;
  }

  else
  {
    clientQueue = self->_clientQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100132BE4;
    v21[3] = &unk_100272350;
    v21[4] = self;
    v22 = v10;
    v15 = v21;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v24 = v15;
    v16 = clientQueue;
    v17 = v10;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v16, v18);

    v13 = v22;
  }
}

- (void)getTargetsForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100132EF8;
  v12[3] = &unk_10027A8A0;
  v14 = v6;
  v13 = v15 = v7;
  v8 = v6;
  v9 = v13;
  v10 = v7;
  v11 = [v9 performReadTransactionWithBlock:v12];
}

- (void)engineLibrary:(id)a3 didStartUploadTask:(id)a4
{
  v5 = a4;
  clientQueue = self->_clientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133418;
  v11[3] = &unk_1002720E0;
  v11[4] = self;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = clientQueue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)engineLibrary:(id)a3 uploadTask:(id)a4 didProgress:(float)a5
{
  v7 = a4;
  v8 = [(CPLDirectLibraryManager *)self abstractObject];
  clientQueue = self->_clientQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001335EC;
  v15[3] = &unk_10027A8C8;
  v18 = a5;
  v16 = v8;
  v17 = v7;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v20 = v10;
  v11 = clientQueue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

- (void)engineLibrary:(id)a3 uploadTask:(id)a4 didFinishWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  clientQueue = self->_clientQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013379C;
  v15[3] = &unk_1002721A0;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v19 = v10;
  v11 = clientQueue;
  v12 = v8;
  v13 = v7;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

- (void)engineLibrary:(id)a3 sizeOfResourcesToUploadDidChangeToSize:(unint64_t)a4 sizeOfOriginalResourcesToUpload:(unint64_t)a5 numberOfImages:(unint64_t)a6 numberOfVideos:(unint64_t)a7 numberOfOtherItems:(unint64_t)a8
{
  clientQueue = self->_clientQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100133924;
  v12[3] = &unk_10027A8F0;
  v12[4] = self;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v12[8] = a7;
  v12[9] = a8;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v9;
  v10 = clientQueue;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v11);
}

- (void)engineLibrary:(id)a3 provideLocalResource:(id)a4 recordClass:(Class)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a6;
  clientQueue = self->_clientQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100133AD0;
  v17[3] = &unk_10027A918;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = a5;
  v12 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v22 = v12;
  v13 = clientQueue;
  v14 = v10;
  v15 = v9;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

- (void)engineLibrary:(id)a3 pushAllChangesWithCompletionHandler:(id)a4
{
  v5 = a4;
  clientQueue = self->_clientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133C70;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = clientQueue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)engineLibrary:(id)a3 providePayloadForComputeStates:(id)a4 inFolderWithURL:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [NSProgress progressWithTotalUnitCount:1];
  clientQueue = self->_clientQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100133E88;
  v21[3] = &unk_100272568;
  v22 = v12;
  v23 = self;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v14 = v21;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v28 = v14;
  v15 = clientQueue;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v12;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v15, v20);
}

- (NSString)description
{
  v2 = [(CPLDirectLibraryManager *)self abstractObject];
  v3 = [v2 delegate];

  v4 = objc_opt_class();
  if (v3)
  {
    [NSString stringWithFormat:@"<%@ %@>", v4, v3];
  }

  else
  {
    [NSString stringWithFormat:@"<%@ standalone>", v4, v7];
  }
  v5 = ;

  return v5;
}

- (BOOL)_resetStore:(id)a3 reason:(id)a4 resetSelector:(SEL)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v11, a5);
  LOBYTE(a6) = (MethodImplementation)(v10, a5, v9, a6);

  return a6;
}

- (void)resetCacheWithOption:(unint64_t)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CPLEngineLibrary *)self->_engineLibrary store];
  v11 = v10;
  if (a3 == 101)
  {
    [v10 markAsCorrupted];
    v9[2](v9, 0);
  }

  else if (a3 == 100)
  {
    v9[2](v9, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013443C;
    v19[3] = &unk_100271F40;
    v19[4] = self;
    [v11 wipeStoreAtNextOpeningWithReason:v8 completionBlock:v19];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001344AC;
    v15[3] = &unk_10027A990;
    v18 = a3;
    v15[4] = self;
    v16 = v10;
    v17 = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013455C;
    v13[3] = &unk_10027A198;
    v13[4] = self;
    v14 = v9;
    v12 = [v16 performWriteTransactionWithBlock:v15 completionHandler:v13];
  }
}

- (void)getStatusesForScopesWithIdentifiers:(id)a3 includeStorages:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CPLEngineLibrary *)self->_engineLibrary store];
  [v10 scopes];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100134844;
  v16[3] = &unk_10027A9E0;
  v21 = a4;
  v18 = v17 = v10;
  v19 = v8;
  v20 = v9;
  v11 = v8;
  v12 = v18;
  v13 = v10;
  v14 = v9;
  v15 = [v13 performReadTransactionWithBlock:v16];
}

- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)a3 desiredProperties:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CPLEngineLibrary *)self->_engineLibrary store];
  if (v9)
  {
    v12 = [[NSSet alloc] initWithArray:v9];
  }

  else
  {
    v12 = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100135074;
  v18[3] = &unk_10027A288;
  v21 = v12;
  v22 = v10;
  v18[4] = self;
  v19 = v8;
  v20 = v11;
  v13 = v12;
  v14 = v11;
  v15 = v8;
  v16 = v10;
  v17 = [v14 performReadTransactionWithBlock:v18];
}

- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)a3 related:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001355FC;
  v14[3] = &unk_10027AA08;
  v14[4] = self;
  v16 = v15 = v8;
  v17 = v9;
  v18 = a4;
  v10 = v16;
  v11 = v8;
  v12 = v9;
  v13 = [v10 performReadTransactionWithBlock:v14];
}

- (void)forceBackupWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLDirectLibraryManager *)self engineLibrary];
  [v5 forceBackupWithActivity:0 forceClientPush:1 completionHandler:v4];
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLDirectLibraryManager *)self engineLibrary];
  [v5 requestClientToPushAllChangesWithCompletionHandler:v4];
}

- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLDirectLibraryManager *)self engineLibrary];
  [v8 requestClientToPullAllChangesWithScopeIdentifiers:v7 completionHandler:v6];
}

- (id)displayableNameForEngineLibrary:(id)a3
{
  v4 = [(CPLDirectLibraryManager *)self abstractObject];
  v5 = [v4 delegate];

  if (!v5 || (objc_opt_respondsToSelector() & 1) == 0 || (-[CPLDirectLibraryManager abstractObject](self, "abstractObject"), v6 = objc_claimAutoreleasedReturnValue(), [v5 displayableNameForLibraryManager:v6], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = +[NSProcessInfo processInfo];
    v7 = [v8 processName];
  }

  return v7;
}

- (BOOL)isLibraryManagerForEngineLibrary:(id)a3
{
  v4 = [(CPLDirectLibraryManager *)self abstractObject];
  v5 = [v4 delegate];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(CPLDirectLibraryManager *)self abstractObject];
    v7 = [v5 isLibraryManager:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)attachComputeStates:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100004550;
  v24[4] = sub_10000538C;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100136438;
  v18 = v17[3] = &unk_10027AA58;
  v8 = v6;
  v19 = v8;
  v20 = v26;
  v21 = v22;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100136950;
  v12[3] = &unk_10027AA80;
  v15 = v24;
  v16 = v22;
  v9 = v18;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  v11 = [v9 performWriteTransactionWithBlock:v17 completionHandler:v12];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

- (void)_cleanupComputeStateDownloadQueue
{
  dispatch_assert_queue_V2(self->_clientQueue);
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100136AE4;
  v5[3] = &unk_1002726D0;
  v6 = v5[4] = self;
  v3 = v6;
  v4 = [v3 performWriteTransactionWithBlock:v5 completionHandler:&stru_10027AAA0];
}

- (void)_startComputeStateDownload
{
  dispatch_assert_queue_V2(self->_clientQueue);
  ++self->_computeStateDownloadCount;
  cleanupComputeStateDownloadTimer = self->_cleanupComputeStateDownloadTimer;
  if (cleanupComputeStateDownloadTimer)
  {
    dispatch_source_cancel(cleanupComputeStateDownloadTimer);
    v4 = self->_cleanupComputeStateDownloadTimer;
    self->_cleanupComputeStateDownloadTimer = 0;
  }
}

- (void)_endComputeStateDownload
{
  dispatch_assert_queue_V2(self->_clientQueue);
  computeStateDownloadCount = self->_computeStateDownloadCount;
  if (!computeStateDownloadCount)
  {
    sub_1001B4A14(a2, self, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, vars0, vars8);
  }

  v11 = computeStateDownloadCount - 1;
  self->_computeStateDownloadCount = v11;
  if (!v11)
  {
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_clientQueue);
    v13 = dispatch_time(0, 3600000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    *&v19 = sub_100136E48;
    *(&v19 + 1) = &unk_1002720E0;
    v14 = v12;
    v20 = v14;
    v21 = self;
    dispatch_source_set_event_handler(v14, &v17);
    cleanupComputeStateDownloadTimer = self->_cleanupComputeStateDownloadTimer;
    self->_cleanupComputeStateDownloadTimer = v14;
    v16 = v14;

    dispatch_activate(v16);
  }
}

- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)a3 validator:(id)a4 shouldDecrypt:(BOOL)a5 onDemand:(BOOL)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if ([v13 count])
  {
    v42 = a5;
    v16 = [(CPLEngineLibrary *)self->_engineLibrary store];
    v17 = [v16 scopes];
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x3032000000;
    v85[3] = sub_100004550;
    v85[4] = sub_10000538C;
    v86 = 0;
    v83[0] = 0;
    v83[1] = v83;
    v83[2] = 0x3032000000;
    v83[3] = sub_100004550;
    v83[4] = sub_10000538C;
    v84 = 0;
    v18 = [(CPLDirectLibraryManager *)self engineLibrary];
    v41 = [v18 transport];

    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x3032000000;
    v81[3] = sub_100004550;
    v81[4] = sub_10000538C;
    v82 = 0;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x3032000000;
    v79[3] = sub_100004550;
    v79[4] = sub_10000538C;
    v80 = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x3032000000;
    v77[3] = sub_100004550;
    v77[4] = sub_10000538C;
    v78 = 0;
    v19 = objc_opt_class();
    v20 = [NSProgress progressWithTotalUnitCount:1];
    block = _NSConcreteStackBlock;
    v88 = 3221225472;
    v89 = sub_1001B29E0;
    v90 = &unk_10027AC90;
    v91 = v19;
    v92 = a2;
    [v20 setCancellationHandler:&block];
    v40 = a6;
    v39 = v14;
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x2020000000;
    v76 = 0;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100137588;
    v69[3] = &unk_10027AAF0;
    v69[4] = self;
    v72 = v75;
    v73 = v77;
    v74 = v79;
    v21 = v20;
    v70 = v21;
    v38 = v15;
    v71 = v15;
    v22 = objc_retainBlock(v69);
    v23 = [v16 recordComputeStatePushQueue];
    [v23 noteComputeStateDownloadRequest];
    v36 = v22;
    v37 = v21;

    clientQueue = self->_clientQueue;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100137844;
    v68[3] = &unk_100271F40;
    v68[4] = self;
    v25 = v68;
    block = _NSConcreteStackBlock;
    v88 = 3221225472;
    v89 = sub_100002BB8;
    v90 = &unk_100271E98;
    v91 = v25;
    v26 = clientQueue;
    v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v26, v27);

    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10013784C;
    v59[3] = &unk_10027AB40;
    v60 = v13;
    v64 = v85;
    v61 = v17;
    v62 = v16;
    v63 = v28;
    v65 = v81;
    v66 = v83;
    v67 = v79;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100137DDC;
    v43[3] = &unk_10027AC30;
    v29 = v36;
    v51 = v29;
    v30 = v63;
    v44 = v30;
    v45 = self;
    v46 = v60;
    v52 = v77;
    v53 = v85;
    v54 = v83;
    v55 = v79;
    v56 = v81;
    v31 = v62;
    v47 = v31;
    v32 = v61;
    v48 = v32;
    v57 = v42;
    v33 = v37;
    v49 = v33;
    v58 = v40;
    v34 = v41;
    v50 = v34;
    v35 = [v31 performWriteTransactionWithBlock:v59 completionHandler:v43];

    _Block_object_dispose(v75, 8);
    _Block_object_dispose(v77, 8);

    _Block_object_dispose(v79, 8);
    _Block_object_dispose(v81, 8);

    _Block_object_dispose(v83, 8);
    _Block_object_dispose(v85, 8);

    v15 = v38;
    v14 = v39;
  }

  else
  {
    (*(v15 + 2))(v15, &__NSDictionary0__struct, 0);
  }
}

- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4
{
  engineLibrary = self->_engineLibrary;
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineLibrary *)engineLibrary feedback];
  [v8 reportSetting:v7 hasBeenSetToValue:v6];
}

- (void)reportMiscInformation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:CPLMiscInformationAppendCPLReport];

  if (v5)
  {
    v6 = [(CPLDirectLibraryManager *)self engineLibrary];
    v7 = [v6 store];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100138964;
    v10[3] = &unk_1002797C0;
    v11 = v4;
    v12 = v7;
    v13 = self;
    v8 = v7;
    v9 = [v8 performReadTransactionWithBlock:v10];
  }

  else
  {
    v8 = [(CPLEngineLibrary *)self->_engineLibrary feedback];
    [v8 reportMiscInformation:v4];
  }
}

- (void)blockEngineElement:(id)a3
{
  if (a3)
  {
    engineLibrary = self->_engineLibrary;
    v4 = a3;
    v5 = [(CPLEngineLibrary *)engineLibrary scheduler];
    [v5 blockEngineElement:v4];
  }
}

- (void)unblockEngineElement:(id)a3
{
  if (a3)
  {
    engineLibrary = self->_engineLibrary;
    v4 = a3;
    v5 = [(CPLEngineLibrary *)engineLibrary scheduler];
    [v5 unblockEngineElement:v4];
  }
}

- (void)unblockEngineElementOnce:(id)a3
{
  if (a3)
  {
    engineLibrary = self->_engineLibrary;
    v4 = a3;
    v5 = [(CPLEngineLibrary *)engineLibrary scheduler];
    [v5 unblockEngineElementOnce:v4];
  }
}

- (CPLFingerprintContext)fingerprintContextIfKnown
{
  v2 = [(CPLEngineLibrary *)self->_engineLibrary transport];
  v3 = [v2 fingerprintContext];

  return v3;
}

- (id)ownerNameForEngineLibrary:(id)a3
{
  v3 = [(CPLDirectLibraryManager *)self abstractObject];
  v4 = [v3 owner];
  v5 = [v4 ownerNameForLibraryManager:v3];

  return v5;
}

- (void)engineLibrary:(id)a3 getStatusWithCompletionHandler:(id)a4
{
  v5 = a4;
  v8 = [(CPLDirectLibraryManager *)self abstractObject];
  v6 = [v8 owner];
  v7 = v6;
  if (v6)
  {
    [v6 libraryManager:v8 getStatusWithCompletionHandler:v5];
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

- (void)engineLibrary:(id)a3 getStatusDictionaryWithCompletionHandler:(id)a4
{
  v5 = a4;
  v8 = [(CPLDirectLibraryManager *)self abstractObject];
  v6 = [v8 owner];
  v7 = v6;
  if (v6)
  {
    [v6 libraryManager:v8 getStatusDictionaryWithCompletionHandler:v5];
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

- (void)resetStatus
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768();
    if (sub_10000FBDC(v4))
    {
      v5 = NSStringFromSelector(a2);
      sub_10000AF90();
      sub_100139378();
      sub_1000139CC(v6, v7, v8, v9, v10);
    }
  }
}

- (void)noteClientIsInBackground
{
  foregroundCalls = self->_foregroundCalls;
  if (foregroundCalls)
  {
    v5 = foregroundCalls - 1;
    self->_foregroundCalls = v5;
    if (!v5)
    {
      v6 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
      [v6 noteClientIsInBackground];

      self->_foregroundCallsHaveBeenQuiet = 0;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10011B768();
    if (sub_10000FBDC(v8))
    {
      v9 = NSStringFromSelector(a2);
      sub_10000AF90();
      sub_100139378();
      sub_1000139CC(v10, v11, v12, v13, v14);
    }
  }
}

- (void)noteClientReceivedNotificationOfServerChanges
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768();
    if (sub_100021E38(v4))
    {
      LOWORD(v10) = 0;
      sub_100013984();
      _os_log_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 2u);
    }
  }

  v9 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
  [v9 noteServerHasChanges];
}

- (void)enableSynchronizationWithReason:(id)a3
{
  v5 = a3;
  if ([(NSCountedSet *)self->_disablingReasons countForObject:v5])
  {
    [(NSCountedSet *)self->_disablingReasons removeObject:v5];
    if (![(NSCountedSet *)self->_disablingReasons countForObject:v5])
    {
      self = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
      [(CPLDirectLibraryManager *)self enableSynchronizationWithReason:v5];
LABEL_7:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768();
    if (sub_100003448(v6))
    {
      v7 = NSStringFromSelector(a2);
      sub_10000AF90();
      sub_100021D44();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }

    goto LABEL_7;
  }
}

- (void)getSystemBudgetsWithCompletionHandler:(id)a3
{
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768();
    if (sub_100021E20(v6))
    {
      LOWORD(v12) = 0;
      sub_100139348();
      _os_log_impl(v7, v8, OS_LOG_TYPE_DEBUG, v9, v10, 2u);
    }
  }

  v11 = [(CPLEngineLibrary *)self->_engineLibrary transport];
  [v11 getSystemBudgetsWithCompletionHandler:v5];
}

- (void)setShouldOverride:(BOOL)a3 forSystemBudgets:(unint64_t)a4
{
  sub_10002B0F4();
  v6 = v5;
  v8 = v7;
  v10 = [*(v9 + 96) systemMonitor];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10011B768();
    if (sub_10000FBAC(v11))
    {
      v12 = [objc_opt_class() descriptionForBudgets:v6];
      sub_100139338();
      sub_100139440();
      _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    }
  }

  if (v8)
  {
    [v10 startOverridingSystemBudgetsForClient:v6];
  }

  else
  {
    [v10 stopOverridingSystemBudgetsForClient:v6];
  }

  sub_100139520();
}

- (void)noteClientIsEndingSignificantWork
{
  significantWorkCalls = self->_significantWorkCalls;
  if (significantWorkCalls)
  {
    self->_significantWorkCalls = significantWorkCalls - 1;
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (sub_10000FBDC(v5))
    {
      v6 = NSStringFromSelector(a2);
      sub_10000AF90();
      sub_100139378();
      sub_1000139CC(v7, v8, v9, v10, v11);
    }
  }
}

- (void)enableMingling
{
  disablingMinglingCount = self->_disablingMinglingCount;
  if (disablingMinglingCount)
  {
    v4 = disablingMinglingCount - 1;
    self->_disablingMinglingCount = v4;
    if (!v4)
    {
      v9 = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
      [v9 enableMingling];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768();
    if (sub_10000FBDC(v6))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412290;
      v11 = v7;
      sub_1000139CC(&_mh_execute_header, v2, v8, "%@ has been called too many times", &v10);
    }
  }
}

- (void)markLibraryManagerAsInvalid
{
  if (self->_ownsLibrary)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10011B768();
      if (sub_100003448(v5))
      {
        v6 = NSStringFromSelector(a2);
        sub_10000AF90();
        sub_100021D44();
        _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
      }
    }
  }

  else
  {
    engineLibrary = self->_engineLibrary;

    [(CPLEngineLibrary *)engineLibrary markAttachedObjectAsInvalid:self];
  }
}

- (void)engineLibrary:(id)a3 didCloseWithError:(id)a4
{
  if (!self->_closing && (_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      engineLibrary = self->_engineLibrary;
      sub_10000343C();
      sub_100139378();
      sub_10000FB94(v7, v8, v9, v10, v11);
    }
  }
}

- (void)engineLibraryHasChangesInPullQueue:(id)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (sub_100021E38(v5))
    {
      v6 = [(CPLDirectLibraryManager *)self abstractObject];
      v7 = [v6 delegate];
      LODWORD(block) = 138412290;
      *(&block + 4) = v7;
      sub_10000FB94(&_mh_execute_header, v3, v8, "Notifying %@ of changes in pull queue", &block);
    }
  }

  clientQueue = self->_clientQueue;
  sub_1000033D8();
  v11 = v10;
  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 3221225472;
  sub_1001392E0();
  v26 = v12;
  v27 = &unk_100271E98;
  v28 = v13;
  v14 = clientQueue;
  v22 = sub_1001393C0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, 3221225472, sub_1001330C8, &unk_100271F40, self, block);
  dispatch_async(self, v22);
}

- (void)engineLibraryHasStatusChanges:(id)a3
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (sub_100021E38(v5))
    {
      v6 = [(CPLDirectLibraryManager *)self abstractObject];
      v7 = [v6 delegate];
      LODWORD(block) = 138412290;
      *(&block + 4) = v7;
      sub_10000FB94(&_mh_execute_header, v3, v8, "Notifying %@ of status changes", &block);
    }
  }

  clientQueue = self->_clientQueue;
  sub_1000033D8();
  v11 = v10;
  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 3221225472;
  sub_1001392E0();
  v26 = v12;
  v27 = &unk_100271E98;
  v28 = v13;
  v14 = clientQueue;
  v22 = sub_1001393C0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, 3221225472, sub_100133144, &unk_100271F40, self, block);
  dispatch_async(self, v22);
}

- (void)engineLibrary:(id)a3 didDownloadResourceInBackground:(id)a4
{
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768();
    if (sub_100021E20(v7))
    {
      v8 = [(CPLDirectLibraryManager *)self abstractObject];
      v9 = [v8 resourceProgressDelegate];
      sub_10013948C();
      sub_100037514(&_mh_execute_header, v4, v10, "Notifying %@ that %@ was downloaded in background", block);
    }
  }

  sub_100139354(104);
  v26 = self;
  v12 = v11;
  *block = _NSConcreteStackBlock;
  v29 = 3221225472;
  sub_1001392E0();
  v30 = v13;
  v31 = &unk_100271E98;
  v32 = v14;
  v15 = v4;
  v16 = v6;
  v24 = sub_1001393C0(v16, v17, v18, v19, v20, v21, v22, v23, v25, 3221225472, sub_1001331DC, &unk_1002720E0, v26, v6, block[0]);
  sub_1001393A4(v24);
}

- (void)engineLibrary:(id)a3 didFailBackgroundDownloadOfResource:(id)a4
{
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768();
    if (sub_100021E20(v7))
    {
      v8 = [(CPLDirectLibraryManager *)self abstractObject];
      v9 = [v8 resourceProgressDelegate];
      sub_10013948C();
      sub_100037514(&_mh_execute_header, v4, v10, "Notifying %@ that %@ did fail to download in background", block);
    }
  }

  sub_100139354(104);
  v26 = self;
  v12 = v11;
  *block = _NSConcreteStackBlock;
  v29 = 3221225472;
  sub_1001392E0();
  v30 = v13;
  v31 = &unk_100271E98;
  v32 = v14;
  v15 = v4;
  v16 = v6;
  v24 = sub_1001393C0(v16, v17, v18, v19, v20, v21, v22, v23, v25, 3221225472, sub_100133264, &unk_1002720E0, v26, v6, block[0]);
  sub_1001393A4(v24);
}

- (void)addInfoToLog:(id)a3
{
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_10000FABC(v5))
    {
      sub_1000187DC();
      sub_100139324();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }
  }
}

@end