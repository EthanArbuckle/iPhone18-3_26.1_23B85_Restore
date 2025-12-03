@interface CPLDirectLibraryManager
- (BOOL)_isManagementLibraryManager;
- (BOOL)_isValidScopeForClient:(id)client error:(id *)error;
- (BOOL)_resetStore:(id)store reason:(id)reason resetSelector:(SEL)selector error:(id *)error;
- (BOOL)isLibraryManagerForEngineLibrary:(id)library;
- (CPLDirectLibraryManager)initWithAbstractObject:(id)object;
- (CPLFingerprintContext)fingerprintContextIfKnown;
- (NSString)description;
- (id)_cloudResourcesToLocalResourcesWithLocalResources:(id)resources targetMapping:(id)mapping;
- (id)_localResourceFromCloudResources:(id)resources usingMapping:(id)mapping;
- (id)_localResourceFromCloudResourcesAndErrors:(id)errors usingMapping:(id)mapping;
- (id)displayableNameForEngineLibrary:(id)library;
- (id)ownerNameForEngineLibrary:(id)library;
- (id)safeResourcesToDeleteFromProposedResources:(id)resources realPrune:(BOOL)prune checkServerIfNecessary:(BOOL)necessary allowUnconfirmed:(BOOL)unconfirmed resourcesToCheckOnServer:(id *)server targetScopeMapping:(id)mapping unsafeResources:(id)unsafeResources;
- (void)_cleanupComputeStateDownloadQueue;
- (void)_deleteResources:(id)resources dryRun:(BOOL)run checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler;
- (void)_dispatchForceSyncForScopeIdentifiers:(id)identifiers errors:(id)errors completionHandler:(id)handler;
- (void)_endComputeStateDownload;
- (void)_fetchExistingSharedLibraryScopeWithProgress:(id)progress blocker:(id)blocker completionHandler:(id)handler;
- (void)_fetchTransportScopeForScope:(id)scope transportGroup:(id)group progress:(id)progress completionHandler:(id)handler;
- (void)_startComputeStateDownload;
- (void)acceptSharedScope:(id)scope completionHandler:(id)handler;
- (void)acknowledgeChangedStatuses:(id)statuses;
- (void)activateScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)addInfoToLog:(id)log;
- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)identifiers persist:(BOOL)persist;
- (void)attachComputeStates:(id)states completionHandler:(id)handler;
- (void)beginDownloadForResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier completionHandler:(id)handler;
- (void)beginInMemoryDownloadOfResource:(id)resource clientBundleID:(id)d completionHandler:(id)handler;
- (void)blockEngineElement:(id)element;
- (void)boostPriorityForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)handler;
- (void)checkServerForResources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (void)closeWithCompletionHandler:(id)handler;
- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)identifier related:(BOOL)related completionHandler:(id)handler;
- (void)compactFileCacheWithCompletionHandler:(id)handler;
- (void)createScope:(id)scope completionHandler:(id)handler;
- (void)deactivateScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deactivateWithCompletionHandler:(id)handler;
- (void)deleteScopeWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler;
- (void)disableMainScopeWithCompletionHandler:(id)handler;
- (void)disableMingling;
- (void)disableSynchronizationWithReason:(id)reason;
- (void)enableMainScopeWithCompletionHandler:(id)handler;
- (void)enableMingling;
- (void)enableSynchronizationWithReason:(id)reason;
- (void)engineLibrary:(id)library didCloseWithError:(id)error;
- (void)engineLibrary:(id)library didDownloadResourceInBackground:(id)background;
- (void)engineLibrary:(id)library didFailBackgroundDownloadOfResource:(id)resource;
- (void)engineLibrary:(id)library didStartUploadTask:(id)task;
- (void)engineLibrary:(id)library getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)engineLibrary:(id)library getStatusWithCompletionHandler:(id)handler;
- (void)engineLibrary:(id)library provideLocalResource:(id)resource recordClass:(Class)class completionHandler:(id)handler;
- (void)engineLibrary:(id)library providePayloadForComputeStates:(id)states inFolderWithURL:(id)l completionHandler:(id)handler;
- (void)engineLibrary:(id)library pushAllChangesWithCompletionHandler:(id)handler;
- (void)engineLibrary:(id)library sizeOfResourcesToUploadDidChangeToSize:(unint64_t)size sizeOfOriginalResourcesToUpload:(unint64_t)upload numberOfImages:(unint64_t)images numberOfVideos:(unint64_t)videos numberOfOtherItems:(unint64_t)items;
- (void)engineLibrary:(id)library uploadTask:(id)task didFinishWithError:(id)error;
- (void)engineLibrary:(id)library uploadTask:(id)task didProgress:(float)progress;
- (void)engineLibraryHasChangesInPullQueue:(id)queue;
- (void)engineLibraryHasStatusChanges:(id)changes;
- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)identifiers validator:(id)validator shouldDecrypt:(BOOL)decrypt onDemand:(BOOL)demand completionHandler:(id)handler;
- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)handler;
- (void)fetchSharedScopeFromShareURL:(id)l completionHandler:(id)handler;
- (void)forceBackupWithCompletionHandler:(id)handler;
- (void)forceSynchronizingScopeWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getChangedStatusesWithCompletionHandler:(id)handler;
- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)identifiers desiredProperties:(id)properties completionHandler:(id)handler;
- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)identifiers inAreLocalIdentifiers:(BOOL)localIdentifiers completionHandler:(id)handler;
- (void)getResourcesForItemWithScopedIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)identifier maximumCount:(unint64_t)count completionHandler:(id)handler;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getStatusesForScopesWithIdentifiers:(id)identifiers includeStorages:(BOOL)storages completionHandler:(id)handler;
- (void)getStreamingURLForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range clientBundleID:(id)d completionHandler:(id)handler;
- (void)getSystemBudgetsWithCompletionHandler:(id)handler;
- (void)getTargetsForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)markLibraryManagerAsInvalid;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientReceivedNotificationOfServerChanges;
- (void)openWithCompletionHandler:(id)handler;
- (void)queryUserDetailsForShareParticipants:(id)participants completionHandler:(id)handler;
- (void)rampingRequestForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler;
- (void)refreshScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeParticipants:(id)participants fromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)reportMiscInformation:(id)information;
- (void)reportSetting:(id)setting hasBeenSetToValue:(id)value;
- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)handler;
- (void)resetCacheWithOption:(unint64_t)option reason:(id)reason completionHandler:(id)handler;
- (void)resetStatus;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)setShouldOverride:(BOOL)override forSystemBudgets:(unint64_t)budgets;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)handler;
- (void)startExitFromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)testKey:(id)key value:(id)value completionHandler:(id)handler;
- (void)unblockEngineElement:(id)element;
- (void)unblockEngineElementOnce:(id)once;
- (void)updateShareForScope:(id)scope completionHandler:(id)handler;
@end

@implementation CPLDirectLibraryManager

- (CPLDirectLibraryManager)initWithAbstractObject:(id)object
{
  v12.receiver = self;
  v12.super_class = CPLDirectLibraryManager;
  v3 = [(CPLDirectLibraryManager *)&v12 initWithAbstractObject:object];
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

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  clientLibraryBaseURL = [abstractObject clientLibraryBaseURL];
  if (clientLibraryBaseURL)
  {
    cloudLibraryStateStorageURL = [abstractObject cloudLibraryStateStorageURL];
    if (cloudLibraryStateStorageURL)
    {
      cloudLibraryResourceStorageURL = [abstractObject cloudLibraryResourceStorageURL];
      if (cloudLibraryResourceStorageURL)
      {
        libraryIdentifier = [abstractObject libraryIdentifier];
        v10 = libraryIdentifier != 0;
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
  v11 = handlerCopy;
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
    abstractObject2 = [(CPLDirectLibraryManager *)self abstractObject];
    clientLibraryBaseURL2 = [abstractObject2 clientLibraryBaseURL];
    abstractObject3 = [(CPLDirectLibraryManager *)self abstractObject];
    cloudLibraryStateStorageURL2 = [abstractObject3 cloudLibraryStateStorageURL];
    abstractObject4 = [(CPLDirectLibraryManager *)self abstractObject];
    cloudLibraryResourceStorageURL2 = [abstractObject4 cloudLibraryResourceStorageURL];
    abstractObject5 = [(CPLDirectLibraryManager *)self abstractObject];
    libraryIdentifier2 = [abstractObject5 libraryIdentifier];
    abstractObject6 = [(CPLDirectLibraryManager *)self abstractObject];
    mainScopeIdentifier = [abstractObject6 mainScopeIdentifier];
    abstractObject7 = [(CPLDirectLibraryManager *)self abstractObject];
    v19 = [v27 initWithClientLibraryBaseURL:clientLibraryBaseURL2 cloudLibraryStateStorageURL:cloudLibraryStateStorageURL2 cloudLibraryResourceStorageURL:cloudLibraryResourceStorageURL2 libraryIdentifier:libraryIdentifier2 mainScopeIdentifier:mainScopeIdentifier options:{objc_msgSend(abstractObject7, "libraryOptions")}];
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
        selfCopy = self;
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

- (void)closeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  self->_closing = 1;
  scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
  v6 = scheduler;
  if (self->_foregroundCalls)
  {
    [scheduler noteClientIsInBackground];
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
    v23 = handlerCopy;
    v18 = handlerCopy;
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
    v21 = handlerCopy;
    v19 = handlerCopy;
    [(CPLEngineLibrary *)engineLibrary detachObject:self withCompletionHandler:v20];
  }
}

- (void)deactivateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CPLEngineLibrary *)engineLibrary closeAndDeactivate:1 completionHandler:v11];
}

- (BOOL)_isManagementLibraryManager
{
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  delegate = [abstractObject delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate isManagementLibraryManager:abstractObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enableMainScopeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011CA84;
  v8 = v7[3] = &unk_100279798;
  selfCopy = self;
  v10 = handlerCopy;
  v5 = handlerCopy;
  v6 = v8;
  [v6 blockWriteTransactionsWithCompletionHandler:v7];
}

- (void)disableMainScopeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011CECC;
  v8 = v7[3] = &unk_100279798;
  selfCopy = self;
  v10 = handlerCopy;
  v5 = handlerCopy;
  v6 = v8;
  [v6 blockWriteTransactionsWithCompletionHandler:v7];
}

- (void)activateScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  mainScopeIdentifier = [abstractObject mainScopeIdentifier];
  v10 = [identifierCopy isEqualToString:mainScopeIdentifier];

  if (v10)
  {
    [(CPLDirectLibraryManager *)self enableMainScopeWithCompletionHandler:handlerCopy];
  }

  else
  {
    [(CPLEngineLibrary *)self->_engineLibrary store];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011D380;
    v13 = v12[3] = &unk_1002797E8;
    v14 = identifierCopy;
    selfCopy = self;
    v16 = handlerCopy;
    v11 = v13;
    [v11 blockWriteTransactionsWithCompletionHandler:v12];
  }
}

- (void)deactivateScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  mainScopeIdentifier = [abstractObject mainScopeIdentifier];
  v10 = [identifierCopy isEqualToString:mainScopeIdentifier];

  if (v10)
  {
    [(CPLDirectLibraryManager *)self disableMainScopeWithCompletionHandler:handlerCopy];
  }

  else
  {
    [(CPLEngineLibrary *)self->_engineLibrary store];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011D92C;
    v13 = v12[3] = &unk_1002797E8;
    v14 = identifierCopy;
    selfCopy = self;
    v16 = handlerCopy;
    v11 = v13;
    [v11 blockWriteTransactionsWithCompletionHandler:v12];
  }
}

- (void)boostPriorityForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  [store scopes];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011DEB0;
  v16 = v15[3] = &unk_1002726D0;
  v17 = identifierCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011E01C;
  v13[3] = &unk_100279860;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  v11 = v16;
  v12 = [store performWriteTransactionWithBlock:v15 completionHandler:v13];
}

- (void)beginDownloadForResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier completionHandler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = [resource copy];
  if (!optionsCopy)
  {
    optionsCopy = +[CPLResourceTransferTaskOptions defaultOptions];
  }

  [(CPLEngineLibrary *)self->_engineLibrary store];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10011E244;
  v25[3] = &unk_100279928;
  v17 = v25[4] = self;
  v26 = v17;
  v27 = v16;
  v28 = dCopy;
  v18 = optionsCopy;
  v29 = v18;
  v30 = identifierCopy;
  v31 = handlerCopy;
  v19 = handlerCopy;
  v20 = identifierCopy;
  v21 = dCopy;
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

- (void)getStreamingURLForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range clientBundleID:(id)d completionHandler:(id)handler
{
  resourceCopy = resource;
  hintsCopy = hints;
  dCopy = d;
  handlerCopy = handler;
  if (intent - 2 <= 2 && (-[CPLDirectLibraryManager engineLibrary](self, "engineLibrary"), v18 = objc_claimAutoreleasedReturnValue(), [v18 systemMonitor], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isNetworkConstrained"), v19, v18, v20))
  {
    clientQueue = self->_clientQueue;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10011F108;
    v56[3] = &unk_100271E98;
    v57 = handlerCopy;
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
    v26 = hintsCopy;
  }

  else
  {
    itemScopedIdentifier = [resourceCopy itemScopedIdentifier];

    if (itemScopedIdentifier)
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
      store = [(CPLEngineLibrary *)self->_engineLibrary store];
      downloadQueue = [store downloadQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10011F188;
      v44[3] = &unk_100279A00;
      v44[4] = self;
      v51 = handlerCopy;
      v45 = v29;
      v46 = resourceCopy;
      v47 = store;
      v48 = downloadQueue;
      intentCopy = intent;
      v26 = hintsCopy;
      v49 = hintsCopy;
      v32 = *&range->var0.var3;
      v53 = *&range->var0.var0;
      v54 = v32;
      v55 = *&range->var1.var1;
      dCopy = v40;
      v50 = v40;
      v33 = downloadQueue;
      v34 = store;
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
      v43 = handlerCopy;
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
      dCopy = v40;
      v26 = hintsCopy;
    }
  }
}

- (void)rampingRequestForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler
{
  handlerCopy = handler;
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
  typeCopy = type;
  requestedCopy = requested;
  v19 = v11;
  v20 = handlerCopy;
  v18[4] = self;
  v13 = v18;
  block = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100002BB8;
  v26 = &unk_100271E98;
  v27 = v13;
  v14 = clientQueue;
  v15 = v11;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v14, v17);
}

- (void)beginInMemoryDownloadOfResource:(id)resource clientBundleID:(id)d completionHandler:(id)handler
{
  resourceCopy = resource;
  dCopy = d;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  [store downloadQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100120148;
  v18[3] = &unk_100279BB8;
  v18[4] = self;
  v19 = resourceCopy;
  v21 = v20 = store;
  v22 = dCopy;
  v23 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = v21;
  v15 = store;
  v16 = resourceCopy;
  v17 = [v15 performReadTransactionWithBlock:v18];
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  [store idMapping];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100120F18;
  v17[3] = &unk_1002797C0;
  v19 = v18 = identifiersCopy;
  v20 = objc_alloc_init(NSMutableDictionary);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001210F4;
  v14[3] = &unk_100279C08;
  v15 = v20;
  v16 = handlerCopy;
  v9 = v20;
  v10 = handlerCopy;
  v11 = v19;
  v12 = identifiersCopy;
  v13 = [store performWriteTransactionWithBlock:v17 completionHandler:v14];
}

- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)identifiers inAreLocalIdentifiers:(BOOL)localIdentifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  [store idMapping];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001212B0;
  v17 = v15[3] = &unk_100279C30;
  v18 = handlerCopy;
  localIdentifiersCopy = localIdentifiers;
  v16 = identifiersCopy;
  v11 = v17;
  v12 = identifiersCopy;
  v13 = handlerCopy;
  v14 = [store performReadTransactionWithBlock:v15];
}

- (void)createScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  if (!CPLIsInTestReadonlyMode())
  {
    if ([scopeCopy scopeType] == 4 && (CPLIsSharedLibraryFeatureEnabled() & 1) == 0)
    {
      v13 = @"Shared Library is not enabled on this device";
    }

    else
    {
      if ([scopeCopy scopeType] != 2 || (+[CPLFingerprintScheme supportsEPP](CPLFingerprintScheme, "supportsEPP") & 1) != 0 || !objc_msgSend(scopeCopy, "hasEPPAssets"))
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
        engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
        store = [engineLibrary store];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100121804;
        v21[3] = &unk_100279DC0;
        v26 = handlerCopy;
        v22 = v15;
        selfCopy = self;
        v27 = a2;
        v24 = scopeCopy;
        v25 = store;
        v18 = store;
        v19 = v15;
        [v18 blockWriteTransactionsWithCompletionHandler:v21];

        goto LABEL_12;
      }

      v13 = @"EPP CMM is not enabled on this device";
    }

    v20 = [CPLErrors cplErrorWithCode:1002 description:v13];
    (*(handlerCopy + 2))(handlerCopy, 0, v20);

    goto LABEL_12;
  }

  clientQueue = self->_clientQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100121788;
  v28[3] = &unk_100271E98;
  v29 = handlerCopy;
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

- (void)updateShareForScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100122970;
    v28[3] = &unk_100271E98;
    v29 = handlerCopy;
    v10 = v28;
    block = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100002BB8;
    v33 = &unk_100271E98;
    v34 = v10;
    v11 = handlerCopy;
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
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    store = [engineLibrary store];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001229EC;
    v21[3] = &unk_100279DC0;
    v26 = handlerCopy;
    v22 = v16;
    v23 = store;
    v24 = scopeCopy;
    selfCopy = self;
    v27 = a2;
    v19 = store;
    v14 = v16;
    v20 = handlerCopy;
    [v19 blockWriteTransactionsWithCompletionHandler:v21];
  }
}

- (void)deleteScopeWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001238EC;
    v27[3] = &unk_100271E98;
    v28 = handlerCopy;
    v11 = v27;
    block = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100002BB8;
    v32 = &unk_100271E98;
    v33 = v11;
    v12 = handlerCopy;
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
    v25 = handlerCopy;
    forcedCopy = forced;
    v23 = identifierCopy;
    v24 = v16;
    v18 = v22;
    block = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100002BB8;
    v32 = &unk_100271E98;
    v33 = v18;
    v19 = v17;
    v15 = v16;
    v20 = handlerCopy;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v19, v21);
  }
}

- (void)_fetchTransportScopeForScope:(id)scope transportGroup:(id)group progress:(id)progress completionHandler:(id)handler
{
  handlerCopy = handler;
  progressCopy = progress;
  groupCopy = group;
  scopeCopy = scope;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  transport = [engineLibrary transport];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100124300;
  v21[3] = &unk_100279F00;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = [transport fetchTransportScopeForScope:scopeCopy transportScope:0 completionHandler:v21];

  [v17 setTransportGroup:groupCopy];
  [v17 setShouldCreateScopeIfNecessary:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100124314;
  v19[3] = &unk_1002720E0;
  v19[4] = self;
  v20 = v17;
  v18 = v17;
  [progressCopy performAsCurrentWithPendingUnitCount:1 usingBlock:v19];
}

- (void)refreshScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100124608;
    v29[3] = &unk_100271E98;
    v30 = handlerCopy;
    v10 = v29;
    block = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100002BB8;
    v34 = &unk_100271E98;
    v35 = v10;
    v11 = handlerCopy;
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
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    store = [engineLibrary store];

    engineLibrary2 = [(CPLDirectLibraryManager *)self engineLibrary];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100124684;
    v22[3] = &unk_10027A058;
    v27 = handlerCopy;
    v23 = v16;
    v24 = store;
    v25 = identifierCopy;
    selfCopy = self;
    v28 = a2;
    v20 = store;
    v14 = v16;
    v21 = handlerCopy;
    [engineLibrary2 blockEngineWithReason:@"Refreshing scope" onlyIfBlocked:0 block:v22];
  }
}

- (BOOL)_isValidScopeForClient:(id)client error:(id *)error
{
  clientCopy = client;
  if (([clientCopy scopeType] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_4;
  }

  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  libraryOptions = [engineLibrary libraryOptions];

  if ((libraryOptions & 2) != 0)
  {
    goto LABEL_4;
  }

  engineLibrary2 = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary2 store];
  scopeIdentifier = [clientCopy scopeIdentifier];
  v12 = [store mainScopeSupportsSharingScopeWithIdentifier:scopeIdentifier];

  if (v12)
  {
LABEL_4:
    v13 = 1;
  }

  else
  {
    scopeIdentifier2 = [clientCopy scopeIdentifier];
    v16 = [CPLErrors cplErrorWithCode:2001 description:@"%@ is not a valid scope for this engine", scopeIdentifier2];

    if (error)
    {
      v17 = v16;
      *error = v16;
    }

    v13 = 0;
  }

  return v13;
}

- (void)fetchSharedScopeFromShareURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100125EC0;
    v26[3] = &unk_100271E98;
    v27 = handlerCopy;
    v10 = v26;
    block = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100002BB8;
    v31 = &unk_100271E98;
    v32 = v10;
    v11 = handlerCopy;
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
    v25 = handlerCopy;
    v22[4] = self;
    v23 = v16;
    v24 = lCopy;
    v18 = v22;
    block = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100002BB8;
    v31 = &unk_100271E98;
    v32 = v18;
    v19 = v17;
    v14 = v16;
    v20 = handlerCopy;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v19, v21);
  }
}

- (void)acceptSharedScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  if (!CPLIsInTestReadonlyMode())
  {
    if ([scopeCopy scopeType] == 5 && (CPLIsSharedLibraryFeatureEnabled() & 1) == 0)
    {
      v14 = [CPLErrors cplErrorWithCode:1002 description:@"Shared Library is not enabled on this device"];
    }

    else
    {
      v26 = 0;
      v13 = [(CPLDirectLibraryManager *)self _isValidScopeForClient:scopeCopy error:&v26];
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
        engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
        store = [engineLibrary store];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100126CE8;
        v21[3] = &unk_10027A210;
        v21[4] = self;
        v25 = handlerCopy;
        v22 = v16;
        v23 = scopeCopy;
        v24 = store;
        v19 = store;
        v20 = v16;
        [v19 blockWriteTransactionsWithCompletionHandler:v21];

LABEL_9:
        goto LABEL_10;
      }
    }

    (*(handlerCopy + 2))(handlerCopy, v14);
    goto LABEL_9;
  }

  clientQueue = self->_clientQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100126C70;
  v27[3] = &unk_100271E98;
  v28 = handlerCopy;
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

- (void)_fetchExistingSharedLibraryScopeWithProgress:(id)progress blocker:(id)blocker completionHandler:(id)handler
{
  blockerCopy = blocker;
  handlerCopy = handler;
  progressCopy = progress;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  transport = [engineLibrary transport];

  engineLibrary2 = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary2 store];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001279B0;
  v21[3] = &unk_10027A238;
  v22 = store;
  v23 = blockerCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = blockerCopy;
  v17 = store;
  [transport fetchExistingSharedLibraryScopeTaskWithCompletionHandler:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100127CAC;
  v19[3] = &unk_1002720E0;
  v20 = v19[4] = self;
  v18 = v20;
  [progressCopy performAsCurrentWithPendingUnitCount:1 usingBlock:v19];
}

- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100127F54;
    v22[3] = &unk_100271E98;
    v23 = handlerCopy;
    v7 = v22;
    block = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100002BB8;
    v27 = &unk_100271E98;
    v28 = v7;
    v8 = handlerCopy;
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
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    store = [engineLibrary store];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100127FD0;
    v18[3] = &unk_10027A2B0;
    v18[4] = self;
    v19 = v13;
    v20 = store;
    v21 = handlerCopy;
    v16 = store;
    v11 = v13;
    v17 = handlerCopy;
    [v16 blockWriteTransactionsWithCompletionHandler:v18];
  }
}

- (void)startExitFromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100128A20;
    v30[3] = &unk_100271E98;
    v31 = handlerCopy;
    v13 = v30;
    block = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100002BB8;
    v35 = &unk_100271E98;
    v36 = v13;
    v14 = handlerCopy;
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
    v27 = handlerCopy;
    policyCopy = policy;
    sourceCopy = source;
    v25 = identifierCopy;
    v26 = v18;
    v20 = v24;
    block = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100002BB8;
    v35 = &unk_100271E98;
    v36 = v20;
    v21 = v19;
    v17 = v18;
    v22 = handlerCopy;
    v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v21, v23);
  }
}

- (void)removeParticipants:(id)participants fromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  participantsCopy = participants;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (CPLIsInTestReadonlyMode())
  {
    clientQueue = self->_clientQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100129AA8;
    v34[3] = &unk_100271E98;
    v35 = handlerCopy;
    v16 = v34;
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002BB8;
    v39 = &unk_100271E98;
    v40 = v16;
    v17 = handlerCopy;
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
    v31 = handlerCopy;
    v28 = identifierCopy;
    policyCopy = policy;
    sourceCopy = source;
    v29 = participantsCopy;
    v30 = v21;
    v23 = v27;
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100002BB8;
    v39 = &unk_100271E98;
    v40 = v23;
    v24 = v22;
    v20 = v21;
    v25 = handlerCopy;
    v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v24, v26);
  }
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)identifier maximumCount:(unint64_t)count completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (count < 0x1F5)
  {
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    store = [engineLibrary store];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012B460;
    v19[3] = &unk_10027A4B8;
    v23 = v10;
    v20 = store;
    v21 = identifierCopy;
    selfCopy = self;
    countCopy = count;
    v15 = store;
    v18 = [v15 performReadTransactionWithBlock:v19];
  }

  else
  {
    clientQueue = self->_clientQueue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10012B3F0;
    v25[3] = &unk_100271E98;
    v26 = handlerCopy;
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

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100002BB8;
  v20 = &unk_100271E98;
  v21 = v9;
  v10 = clientQueue;
  v11 = v7;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

- (void)queryUserDetailsForShareParticipants:(id)participants completionHandler:(id)handler
{
  participantsCopy = participants;
  handlerCopy = handler;
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
  v19 = participantsCopy;
  v20 = v10;
  v21 = handlerCopy;
  v12 = v18;
  block = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100002BB8;
  v25 = &unk_100271E98;
  v26 = v12;
  v13 = clientQueue;
  v14 = v10;
  v15 = handlerCopy;
  v16 = participantsCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

- (void)_dispatchForceSyncForScopeIdentifiers:(id)identifiers errors:(id)errors completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  errorsCopy = errors;
  handlerCopy = handler;
  clientQueue = self->_clientQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012C860;
  v18[3] = &unk_1002731C0;
  v19 = identifiersCopy;
  selfCopy = self;
  v21 = errorsCopy;
  v22 = handlerCopy;
  v12 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v24 = v12;
  v13 = clientQueue;
  v14 = errorsCopy;
  v15 = handlerCopy;
  v16 = identifiersCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

- (void)forceSynchronizingScopeWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012CA44;
  v13[3] = &unk_10027A5A8;
  v14 = store;
  selfCopy = self;
  v16 = identifiersCopy;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  v12 = store;
  [scheduler getCurrentRequiredStateWithCompletionHandler:v13];
}

- (void)disableSynchronizationWithReason:(id)reason
{
  reasonCopy = reason;
  [(NSCountedSet *)self->_disablingReasons addObject:reasonCopy];
  if ([(NSCountedSet *)self->_disablingReasons countForObject:reasonCopy]== 1)
  {
    scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
    [scheduler disableSynchronizationWithReason:reasonCopy];
  }
}

- (void)disableMingling
{
  disablingMinglingCount = self->_disablingMinglingCount;
  if (!disablingMinglingCount)
  {
    scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
    [scheduler disableMingling];

    disablingMinglingCount = self->_disablingMinglingCount;
  }

  self->_disablingMinglingCount = disablingMinglingCount + 1;
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012D834;
  v10[3] = &unk_10027A198;
  v11 = engineLibrary;
  v12 = handlerCopy;
  v7 = handlerCopy;
  v8 = engineLibrary;
  v9 = [store performReadTransactionWithBlock:v10];
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012D9B8;
  v14[3] = &unk_10027A5D0;
  v15 = store;
  v16 = identifiersCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  v12 = store;
  v13 = [v12 performReadTransactionWithBlock:v14];
}

- (void)getChangedStatusesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012DC00;
  v10[3] = &unk_100279770;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = store;
  v7 = handlerCopy;
  v8 = store;
  v9 = [v8 performReadTransactionWithBlock:v10];
}

- (void)acknowledgeChangedStatuses:(id)statuses
{
  statusesCopy = statuses;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012DE9C;
  v12[3] = &unk_1002726D0;
  v13 = store;
  v14 = statusesCopy;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B1A5C;
  v10[3] = &unk_100273588;
  v11 = v14;
  v7 = v14;
  v8 = store;
  v9 = [v8 performWriteTransactionWithBlock:v12 completionHandler:v10];
}

- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)identifiers persist:(BOOL)persist
{
  identifiersCopy = identifiers;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012E0D0;
  v14[3] = &unk_10027A620;
  v15 = store;
  v16 = identifiersCopy;
  persistCopy = persist;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B1B40;
  v12[3] = &unk_100273588;
  v13 = v16;
  v9 = v16;
  v10 = store;
  v11 = [v10 performWriteTransactionWithBlock:v14 completionHandler:v12];
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012E3D8;
  v14[3] = &unk_10027A648;
  v14[4] = self;
  v15 = store;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v10 = identifierCopy;
  v11 = store;
  v12 = handlerCopy;
  v13 = [v11 performReadTransactionWithBlock:v14];
}

- (id)_cloudResourcesToLocalResourcesWithLocalResources:(id)resources targetMapping:(id)mapping
{
  resourcesCopy = resources;
  mappingCopy = mapping;
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  store = [engineLibrary store];

  [store cloudCache];
  v26 = v25 = store;
  idMapping = [store idMapping];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = resourcesCopy;
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
        itemScopedIdentifier = [v17 itemScopedIdentifier];
        v19 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:itemScopedIdentifier isFinal:&v27];

        if (!v19)
        {
          itemScopedIdentifier2 = [v17 itemScopedIdentifier];
          v19 = [itemScopedIdentifier2 copy];
        }

        v21 = [mappingCopy targetForRecordWithScopedIdentifier:v19];

        if (!v21)
        {
          v22 = [v26 targetForRecordWithCloudScopedIdentifier:v19];
          [mappingCopy setTarget:v22 forRecordWithScopedIdentifier:v19];
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

- (id)_localResourceFromCloudResources:(id)resources usingMapping:(id)mapping
{
  resourcesCopy = resources;
  mappingCopy = mapping;
  if ([resourcesCopy count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = resourcesCopy;
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

          v13 = [mappingCopy objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
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

- (id)_localResourceFromCloudResourcesAndErrors:(id)errors usingMapping:(id)mapping
{
  errorsCopy = errors;
  mappingCopy = mapping;
  if ([errorsCopy count])
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(errorsCopy, "count")}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012ED24;
    v12[3] = &unk_10027A670;
    v13 = mappingCopy;
    v8 = v7;
    v14 = v8;
    [errorsCopy enumerateKeysAndObjectsUsingBlock:v12];
    v9 = v14;
    v10 = v8;
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

- (void)checkServerForResources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  transport = [engineLibrary transport];
  allKeys = [resourcesCopy allKeys];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10012EF00;
  v21[3] = &unk_10027A698;
  v22 = resourcesCopy;
  v23 = handlerCopy;
  v21[4] = self;
  v17 = resourcesCopy;
  v18 = handlerCopy;
  v19 = [transport resourceCheckTaskForResources:allKeys targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy completionHandler:v21];

  syncManager = [engineLibrary syncManager];
  [syncManager configureDirectTransportTask:v19];

  [v19 runWithNoSyncSession];
}

- (id)safeResourcesToDeleteFromProposedResources:(id)resources realPrune:(BOOL)prune checkServerIfNecessary:(BOOL)necessary allowUnconfirmed:(BOOL)unconfirmed resourcesToCheckOnServer:(id *)server targetScopeMapping:(id)mapping unsafeResources:(id)unsafeResources
{
  unconfirmedCopy = unconfirmed;
  necessaryCopy = necessary;
  resourcesCopy = resources;
  mappingCopy = mapping;
  unsafeResourcesCopy = unsafeResources;
  v88 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableArray);
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  scopes = [store scopes];
  cloudCache = [store cloudCache];
  outgoingResources = [store outgoingResources];
  idMapping = [store idMapping];
  v87 = store;
  resourceStorage = [store resourceStorage];
  v91 = objc_alloc_init(NSMutableDictionary);
  v92 = objc_alloc_init(NSMutableDictionary);
  v85 = objc_alloc_init(NSMutableSet);
  v97 = objc_alloc_init(NSMutableDictionary);
  v99 = objc_alloc_init(NSMutableSet);
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_10012FEE4;
  v115[3] = &unk_10027A6C0;
  v19 = resourceStorage;
  v116 = v19;
  pruneCopy = prune;
  v20 = unsafeResourcesCopy;
  v117 = v20;
  v21 = objc_retainBlock(v115);
  v84 = necessaryCopy;
  v98 = v16;
  v82 = v20;
  serverCopy = server;
  v81 = v19;
  if (necessaryCopy)
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
  obj = resourcesCopy;
  v106 = [obj countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (v106)
  {
    v104 = *v112;
    v90 = mappingCopy;
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
        itemScopedIdentifier = [v23 itemScopedIdentifier];
        if (!itemScopedIdentifier)
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

        if ([outgoingResources shouldUploadResource:v23])
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

        scopeIdentifier = [itemScopedIdentifier scopeIdentifier];
        if (([v99 containsObject:scopeIdentifier] & 1) == 0)
        {
          v26 = [v97 objectForKeyedSubscript:scopeIdentifier];
          if (v26)
          {
            goto LABEL_61;
          }

          v38 = [scopes scopeWithIdentifier:scopeIdentifier];
          if (!v38)
          {
            v26 = @"scope is unknown";
            goto LABEL_60;
          }

          v39 = [scopes flagsForScope:v38];
          v26 = @"scope has been deleted";
          if ([v39 valueForFlag:4] & 1) != 0 || (v26 = @"scope has been disabled", (objc_msgSend(v39, "valueForFlag:", 8)) || (v26 = @"scope is inactive", objc_msgSend(v39, "valueForFlag:", 16)))
          {

LABEL_60:
            [v97 setObject:v26 forKeyedSubscript:scopeIdentifier];

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

          [v99 addObject:scopeIdentifier];
        }

        v110 = 0;
        v33 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:itemScopedIdentifier isFinal:&v110];
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
          v40 = [cloudCache recordWithScopedIdentifier:v33 isConfirmed:&v109 isStaged:&v108];
          if (!v40)
          {
            sub_1001B428C(v92, v33);
            goto LABEL_30;
          }

          v35 = v40;
          [v92 setObject:v40 forKey:v33];
          if ((v109 & 1) != 0 || unconfirmedCopy)
          {
            [v85 addObject:v33];
          }
        }

        v41 = [v91 objectForKey:itemScopedIdentifier];
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
          transactionClientCacheView = [v87 transactionClientCacheView];
          v45 = [transactionClientCacheView recordViewWithScopedIdentifier:itemScopedIdentifier];
          v42 = [v45 changeForType:8];

          if (!v42)
          {
            v42 = +[NSNull null];
            [v91 setObject:v42 forKey:itemScopedIdentifier];
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
            identity = [v42 identity];
            fingerPrint = [identity fingerPrint];

            identity2 = [v23 identity];
            fingerPrint2 = [identity2 fingerPrint];

            if (fingerPrint && fingerPrint2)
            {
              v68 = [fingerPrint isEqual:fingerPrint2];

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

              if (fingerPrint | fingerPrint2)
              {
                goto LABEL_103;
              }
            }

            identity3 = [v42 identity];
            fileUTI = [identity3 fileUTI];

            identity4 = [v23 identity];
            fileUTI2 = [identity4 fileUTI];

            if (fileUTI && fileUTI2)
            {
              v73 = [fileUTI isEqual:fileUTI2];

              if (v73)
              {
                goto LABEL_115;
              }
            }

            else
            {

              if (!(fileUTI | fileUTI2))
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
            [v91 setObject:v62 forKey:itemScopedIdentifier];

            goto LABEL_88;
          }

          [v91 setObject:v42 forKey:itemScopedIdentifier];
        }

        v93 = v42;
        v42 = -[NSObject resourceForType:](v42, "resourceForType:", [v23 resourceType]);
        identity5 = [v42 identity];
        fingerPrint3 = [identity5 fingerPrint];

        identity6 = [v23 identity];
        fingerPrint4 = [identity6 fingerPrint];

        if (fingerPrint3 && fingerPrint4)
        {
          v50 = [fingerPrint3 isEqual:fingerPrint4];

          if ((v50 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {

          if (fingerPrint3 | fingerPrint4)
          {
            goto LABEL_74;
          }
        }

        identity7 = [v42 identity];
        fileUTI3 = [identity7 fileUTI];

        identity8 = [v23 identity];
        fileUTI4 = [identity8 fileUTI];

        if (fileUTI3 && fileUTI4)
        {
          v56 = [fileUTI3 isEqual:fileUTI4];

          if (v56)
          {
            goto LABEL_82;
          }
        }

        else
        {

          if (!(fileUTI3 | fileUTI4))
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
        mappingCopy = v90;
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
        itemScopedIdentifier2 = [v23 itemScopedIdentifier];
        scopeIdentifier2 = [itemScopedIdentifier2 scopeIdentifier];

        v107 = 0;
        v30 = [mappingCopy addTransportScopeForScopeIdentifier:scopeIdentifier2 scopes:scopes useStagingScopeIfNecessary:1 error:&v107];
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

  if (serverCopy)
  {
    v79 = v98;
    *serverCopy = v98;
  }

  return v88;
}

- (void)_deleteResources:(id)resources dryRun:(BOOL)run checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  runCopy = run;
  resourcesCopy = resources;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  resourceStorage = [store resourceStorage];
  if ([(CPLEngineLibrary *)self->_engineLibrary iCloudLibraryClientVersionTooOld])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10011B768();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "prune";
        if (runCopy)
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
    v88 = handlerCopy;
    v86 = resourcesCopy;
    v87 = resourceStorage;
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
    v17 = resourceStorage;
    v78 = !runCopy;
    v76 = v17;
    v77 = v81;
    v18 = objc_retainBlock(v75);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1001308F4;
    v67[3] = &unk_10027A710;
    v73 = runCopy;
    v74 = !runCopy;
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
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    transport = [engineLibrary transport];
    v24 = [v21 initWithTranslator:transport];

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
    necessaryCopy = necessary;
    v52[4] = self;
    v64 = !runCopy;
    v53 = resourcesCopy;
    v58 = v79;
    v54 = v24;
    v59 = v81;
    v62 = a2;
    v57 = v19;
    p_buf = &buf;
    v55 = store;
    v61 = v65;
    v56 = v20;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100130C40;
    v37[3] = &unk_10027A828;
    v50 = runCopy;
    v45 = v83;
    v37[4] = self;
    v43 = handlerCopy;
    v38 = v53;
    v51 = !runCopy;
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

- (void)getResourcesForItemWithScopedIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  cloudCache = [store cloudCache];
  outgoingResources = [store outgoingResources];
  [store idMapping];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100131F5C;
  v18[3] = &unk_100279928;
  v19 = identifierCopy;
  v21 = v20 = store;
  v22 = cloudCache;
  v23 = outgoingResources;
  selfCopy = self;
  v25 = handlerCopy;
  v11 = handlerCopy;
  v12 = outgoingResources;
  v13 = cloudCache;
  v14 = v21;
  v15 = store;
  v16 = identifierCopy;
  v17 = [v15 performReadTransactionWithBlock:v18];
}

- (void)compactFileCacheWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001328F0;
  v11 = v10[3] = &unk_100273588;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001329C0;
  v8[3] = &unk_100279860;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = v11;
  v7 = [v6 performWriteTransactionWithBlock:v10 completionHandler:v8];
}

- (void)testKey:(id)key value:(id)value completionHandler:(id)handler
{
  keyCopy = key;
  valueCopy = value;
  handlerCopy = handler;
  if ([(CPLDirectLibraryManager *)self _isManagementLibraryManager])
  {
    engineLibrary = self->_engineLibrary;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100132C88;
    v19[3] = &unk_10027A878;
    v19[4] = self;
    v20 = handlerCopy;
    v12 = handlerCopy;
    [(CPLEngineLibrary *)engineLibrary testKey:keyCopy value:valueCopy completionHandler:v19];
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
    v22 = handlerCopy;
    v15 = v21;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v24 = v15;
    v16 = clientQueue;
    v17 = handlerCopy;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v16, v18);

    v13 = v22;
  }
}

- (void)getTargetsForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100132EF8;
  v12[3] = &unk_10027A8A0;
  v14 = identifiersCopy;
  v13 = v15 = handlerCopy;
  v8 = identifiersCopy;
  v9 = v13;
  v10 = handlerCopy;
  v11 = [v9 performReadTransactionWithBlock:v12];
}

- (void)engineLibrary:(id)library didStartUploadTask:(id)task
{
  taskCopy = task;
  clientQueue = self->_clientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133418;
  v11[3] = &unk_1002720E0;
  v11[4] = self;
  v12 = taskCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = clientQueue;
  v9 = taskCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)engineLibrary:(id)library uploadTask:(id)task didProgress:(float)progress
{
  taskCopy = task;
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  clientQueue = self->_clientQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001335EC;
  v15[3] = &unk_10027A8C8;
  progressCopy = progress;
  v16 = abstractObject;
  v17 = taskCopy;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v20 = v10;
  v11 = clientQueue;
  v12 = taskCopy;
  v13 = abstractObject;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

- (void)engineLibrary:(id)library uploadTask:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  clientQueue = self->_clientQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013379C;
  v15[3] = &unk_1002721A0;
  v15[4] = self;
  v16 = taskCopy;
  v17 = errorCopy;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v19 = v10;
  v11 = clientQueue;
  v12 = errorCopy;
  v13 = taskCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

- (void)engineLibrary:(id)library sizeOfResourcesToUploadDidChangeToSize:(unint64_t)size sizeOfOriginalResourcesToUpload:(unint64_t)upload numberOfImages:(unint64_t)images numberOfVideos:(unint64_t)videos numberOfOtherItems:(unint64_t)items
{
  clientQueue = self->_clientQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100133924;
  v12[3] = &unk_10027A8F0;
  v12[4] = self;
  v12[5] = size;
  v12[6] = upload;
  v12[7] = images;
  v12[8] = videos;
  v12[9] = items;
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

- (void)engineLibrary:(id)library provideLocalResource:(id)resource recordClass:(Class)class completionHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  clientQueue = self->_clientQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100133AD0;
  v17[3] = &unk_10027A918;
  v17[4] = self;
  v18 = resourceCopy;
  v19 = handlerCopy;
  classCopy = class;
  v12 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v22 = v12;
  v13 = clientQueue;
  v14 = handlerCopy;
  v15 = resourceCopy;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

- (void)engineLibrary:(id)library pushAllChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = self->_clientQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133C70;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = handlerCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = clientQueue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)engineLibrary:(id)library providePayloadForComputeStates:(id)states inFolderWithURL:(id)l completionHandler:(id)handler
{
  statesCopy = states;
  lCopy = l;
  handlerCopy = handler;
  v12 = [NSProgress progressWithTotalUnitCount:1];
  clientQueue = self->_clientQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100133E88;
  v21[3] = &unk_100272568;
  v22 = v12;
  selfCopy = self;
  v24 = statesCopy;
  v25 = lCopy;
  v26 = handlerCopy;
  v14 = v21;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v28 = v14;
  v15 = clientQueue;
  v16 = handlerCopy;
  v17 = lCopy;
  v18 = statesCopy;
  v19 = v12;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v15, v20);
}

- (NSString)description
{
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  delegate = [abstractObject delegate];

  v4 = objc_opt_class();
  if (delegate)
  {
    [NSString stringWithFormat:@"<%@ %@>", v4, delegate];
  }

  else
  {
    [NSString stringWithFormat:@"<%@ standalone>", v4, v7];
  }
  v5 = ;

  return v5;
}

- (BOOL)_resetStore:(id)store reason:(id)reason resetSelector:(SEL)selector error:(id *)error
{
  reasonCopy = reason;
  storeCopy = store;
  v11 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v11, selector);
  LOBYTE(error) = (MethodImplementation)(storeCopy, selector, reasonCopy, error);

  return error;
}

- (void)resetCacheWithOption:(unint64_t)option reason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  v11 = store;
  if (option == 101)
  {
    [store markAsCorrupted];
    handlerCopy[2](handlerCopy, 0);
  }

  else if (option == 100)
  {
    handlerCopy[2](handlerCopy, 0);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013443C;
    v19[3] = &unk_100271F40;
    v19[4] = self;
    [v11 wipeStoreAtNextOpeningWithReason:reasonCopy completionBlock:v19];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001344AC;
    v15[3] = &unk_10027A990;
    optionCopy = option;
    v15[4] = self;
    v16 = store;
    v17 = reasonCopy;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013455C;
    v13[3] = &unk_10027A198;
    v13[4] = self;
    v14 = handlerCopy;
    v12 = [v16 performWriteTransactionWithBlock:v15 completionHandler:v13];
  }
}

- (void)getStatusesForScopesWithIdentifiers:(id)identifiers includeStorages:(BOOL)storages completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  [store scopes];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100134844;
  v16[3] = &unk_10027A9E0;
  storagesCopy = storages;
  v18 = v17 = store;
  v19 = identifiersCopy;
  v20 = handlerCopy;
  v11 = identifiersCopy;
  v12 = v18;
  v13 = store;
  v14 = handlerCopy;
  v15 = [v13 performReadTransactionWithBlock:v16];
}

- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)identifiers desiredProperties:(id)properties completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  handlerCopy = handler;
  store = [(CPLEngineLibrary *)self->_engineLibrary store];
  if (propertiesCopy)
  {
    v12 = [[NSSet alloc] initWithArray:propertiesCopy];
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
  v22 = handlerCopy;
  v18[4] = self;
  v19 = identifiersCopy;
  v20 = store;
  v13 = v12;
  v14 = store;
  v15 = identifiersCopy;
  v16 = handlerCopy;
  v17 = [v14 performReadTransactionWithBlock:v18];
}

- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)identifier related:(BOOL)related completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  [(CPLEngineLibrary *)self->_engineLibrary store];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001355FC;
  v14[3] = &unk_10027AA08;
  v14[4] = self;
  v16 = v15 = identifierCopy;
  v17 = handlerCopy;
  relatedCopy = related;
  v10 = v16;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v13 = [v10 performReadTransactionWithBlock:v14];
}

- (void)forceBackupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  [engineLibrary forceBackupWithActivity:0 forceClientPush:1 completionHandler:handlerCopy];
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  [engineLibrary requestClientToPushAllChangesWithCompletionHandler:handlerCopy];
}

- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
  [engineLibrary requestClientToPullAllChangesWithScopeIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (id)displayableNameForEngineLibrary:(id)library
{
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  delegate = [abstractObject delegate];

  if (!delegate || (objc_opt_respondsToSelector() & 1) == 0 || (-[CPLDirectLibraryManager abstractObject](self, "abstractObject"), v6 = objc_claimAutoreleasedReturnValue(), [delegate displayableNameForLibraryManager:v6], processName = objc_claimAutoreleasedReturnValue(), v6, !processName))
  {
    v8 = +[NSProcessInfo processInfo];
    processName = [v8 processName];
  }

  return processName;
}

- (BOOL)isLibraryManagerForEngineLibrary:(id)library
{
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  delegate = [abstractObject delegate];

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    abstractObject2 = [(CPLDirectLibraryManager *)self abstractObject];
    v7 = [delegate isLibraryManager:abstractObject2];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)attachComputeStates:(id)states completionHandler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
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
  v8 = statesCopy;
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
  v10 = handlerCopy;
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
    sub_1001B4A14(a2, self, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, selfCopy, v22, v23, v24, v25, vars0, vars8);
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
    selfCopy = self;
    dispatch_source_set_event_handler(v14, &v17);
    cleanupComputeStateDownloadTimer = self->_cleanupComputeStateDownloadTimer;
    self->_cleanupComputeStateDownloadTimer = v14;
    v16 = v14;

    dispatch_activate(v16);
  }
}

- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)identifiers validator:(id)validator shouldDecrypt:(BOOL)decrypt onDemand:(BOOL)demand completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  validatorCopy = validator;
  handlerCopy = handler;
  if ([identifiersCopy count])
  {
    decryptCopy = decrypt;
    store = [(CPLEngineLibrary *)self->_engineLibrary store];
    scopes = [store scopes];
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
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    transport = [engineLibrary transport];

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
    demandCopy = demand;
    v39 = validatorCopy;
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
    v38 = handlerCopy;
    v71 = handlerCopy;
    v22 = objc_retainBlock(v69);
    recordComputeStatePushQueue = [store recordComputeStatePushQueue];
    [recordComputeStatePushQueue noteComputeStateDownloadRequest];
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

    v28 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10013784C;
    v59[3] = &unk_10027AB40;
    v60 = identifiersCopy;
    v64 = v85;
    v61 = scopes;
    v62 = store;
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
    selfCopy = self;
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
    v57 = decryptCopy;
    v33 = v37;
    v49 = v33;
    v58 = demandCopy;
    v34 = transport;
    v50 = v34;
    v35 = [v31 performWriteTransactionWithBlock:v59 completionHandler:v43];

    _Block_object_dispose(v75, 8);
    _Block_object_dispose(v77, 8);

    _Block_object_dispose(v79, 8);
    _Block_object_dispose(v81, 8);

    _Block_object_dispose(v83, 8);
    _Block_object_dispose(v85, 8);

    handlerCopy = v38;
    validatorCopy = v39;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0);
  }
}

- (void)reportSetting:(id)setting hasBeenSetToValue:(id)value
{
  engineLibrary = self->_engineLibrary;
  valueCopy = value;
  settingCopy = setting;
  feedback = [(CPLEngineLibrary *)engineLibrary feedback];
  [feedback reportSetting:settingCopy hasBeenSetToValue:valueCopy];
}

- (void)reportMiscInformation:(id)information
{
  informationCopy = information;
  v5 = [informationCopy objectForKeyedSubscript:CPLMiscInformationAppendCPLReport];

  if (v5)
  {
    engineLibrary = [(CPLDirectLibraryManager *)self engineLibrary];
    store = [engineLibrary store];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100138964;
    v10[3] = &unk_1002797C0;
    v11 = informationCopy;
    v12 = store;
    selfCopy = self;
    feedback = store;
    v9 = [feedback performReadTransactionWithBlock:v10];
  }

  else
  {
    feedback = [(CPLEngineLibrary *)self->_engineLibrary feedback];
    [feedback reportMiscInformation:informationCopy];
  }
}

- (void)blockEngineElement:(id)element
{
  if (element)
  {
    engineLibrary = self->_engineLibrary;
    elementCopy = element;
    scheduler = [(CPLEngineLibrary *)engineLibrary scheduler];
    [scheduler blockEngineElement:elementCopy];
  }
}

- (void)unblockEngineElement:(id)element
{
  if (element)
  {
    engineLibrary = self->_engineLibrary;
    elementCopy = element;
    scheduler = [(CPLEngineLibrary *)engineLibrary scheduler];
    [scheduler unblockEngineElement:elementCopy];
  }
}

- (void)unblockEngineElementOnce:(id)once
{
  if (once)
  {
    engineLibrary = self->_engineLibrary;
    onceCopy = once;
    scheduler = [(CPLEngineLibrary *)engineLibrary scheduler];
    [scheduler unblockEngineElementOnce:onceCopy];
  }
}

- (CPLFingerprintContext)fingerprintContextIfKnown
{
  transport = [(CPLEngineLibrary *)self->_engineLibrary transport];
  fingerprintContext = [transport fingerprintContext];

  return fingerprintContext;
}

- (id)ownerNameForEngineLibrary:(id)library
{
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  owner = [abstractObject owner];
  v5 = [owner ownerNameForLibraryManager:abstractObject];

  return v5;
}

- (void)engineLibrary:(id)library getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  owner = [abstractObject owner];
  v7 = owner;
  if (owner)
  {
    [owner libraryManager:abstractObject getStatusWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)engineLibrary:(id)library getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
  owner = [abstractObject owner];
  v7 = owner;
  if (owner)
  {
    [owner libraryManager:abstractObject getStatusDictionaryWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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
      scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
      [scheduler noteClientIsInBackground];

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

  scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
  [scheduler noteServerHasChanges];
}

- (void)enableSynchronizationWithReason:(id)reason
{
  reasonCopy = reason;
  if ([(NSCountedSet *)self->_disablingReasons countForObject:reasonCopy])
  {
    [(NSCountedSet *)self->_disablingReasons removeObject:reasonCopy];
    if (![(NSCountedSet *)self->_disablingReasons countForObject:reasonCopy])
    {
      self = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
      [(CPLDirectLibraryManager *)self enableSynchronizationWithReason:reasonCopy];
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

- (void)getSystemBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  transport = [(CPLEngineLibrary *)self->_engineLibrary transport];
  [transport getSystemBudgetsWithCompletionHandler:handlerCopy];
}

- (void)setShouldOverride:(BOOL)override forSystemBudgets:(unint64_t)budgets
{
  sub_10002B0F4();
  v6 = v5;
  v8 = v7;
  systemMonitor = [*(v9 + 96) systemMonitor];
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
    [systemMonitor startOverridingSystemBudgetsForClient:v6];
  }

  else
  {
    [systemMonitor stopOverridingSystemBudgetsForClient:v6];
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
      scheduler = [(CPLEngineLibrary *)self->_engineLibrary scheduler];
      [scheduler enableMingling];
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

- (void)engineLibrary:(id)library didCloseWithError:(id)error
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

- (void)engineLibraryHasChangesInPullQueue:(id)queue
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (sub_100021E38(v5))
    {
      abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
      delegate = [abstractObject delegate];
      LODWORD(block) = 138412290;
      *(&block + 4) = delegate;
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

- (void)engineLibraryHasStatusChanges:(id)changes
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (sub_100021E38(v5))
    {
      abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
      delegate = [abstractObject delegate];
      LODWORD(block) = 138412290;
      *(&block + 4) = delegate;
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

- (void)engineLibrary:(id)library didDownloadResourceInBackground:(id)background
{
  backgroundCopy = background;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768();
    if (sub_100021E20(v7))
    {
      abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
      resourceProgressDelegate = [abstractObject resourceProgressDelegate];
      sub_10013948C();
      sub_100037514(&_mh_execute_header, v4, v10, "Notifying %@ that %@ was downloaded in background", block);
    }
  }

  sub_100139354(104);
  selfCopy = self;
  v12 = v11;
  *block = _NSConcreteStackBlock;
  v29 = 3221225472;
  sub_1001392E0();
  v30 = v13;
  v31 = &unk_100271E98;
  v32 = v14;
  v15 = v4;
  v16 = backgroundCopy;
  v24 = sub_1001393C0(v16, v17, v18, v19, v20, v21, v22, v23, v25, 3221225472, sub_1001331DC, &unk_1002720E0, selfCopy, backgroundCopy, block[0]);
  sub_1001393A4(v24);
}

- (void)engineLibrary:(id)library didFailBackgroundDownloadOfResource:(id)resource
{
  resourceCopy = resource;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768();
    if (sub_100021E20(v7))
    {
      abstractObject = [(CPLDirectLibraryManager *)self abstractObject];
      resourceProgressDelegate = [abstractObject resourceProgressDelegate];
      sub_10013948C();
      sub_100037514(&_mh_execute_header, v4, v10, "Notifying %@ that %@ did fail to download in background", block);
    }
  }

  sub_100139354(104);
  selfCopy = self;
  v12 = v11;
  *block = _NSConcreteStackBlock;
  v29 = 3221225472;
  sub_1001392E0();
  v30 = v13;
  v31 = &unk_100271E98;
  v32 = v14;
  v15 = v4;
  v16 = resourceCopy;
  v24 = sub_1001393C0(v16, v17, v18, v19, v20, v21, v22, v23, v25, 3221225472, sub_100133264, &unk_1002720E0, selfCopy, resourceCopy, block[0]);
  sub_1001393A4(v24);
}

- (void)addInfoToLog:(id)log
{
  logCopy = log;
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