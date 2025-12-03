@interface CPLEngineTransport
+ (id)platformImplementationProtocol;
- (BOOL)getProposedStagingScopeIdentifier:(id *)identifier stagingTransportScope:(id *)scope forScope:(id)forScope transportScope:(id)transportScope transportUserIdentifier:(id)userIdentifier;
- (BOOL)isNewTransportScope:(id)scope compatibleWithOldTransportScope:(id)transportScope;
- (BOOL)isResourceDynamic:(id)dynamic;
- (BOOL)shouldIgnoreScopeWithIdentifier:(id)identifier;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineTransport)initWithEngineLibrary:(id)library;
- (CPLFingerprintContext)fingerprintContext;
- (CPLSharedRecordPropertyMapping)propertyMapping;
- (Class)transportGroupClass;
- (Class)userIdentifierClass;
- (NSArray)involvedProcesses;
- (id)acceptTaskForSharedScope:(id)scope completionHandler:(id)handler;
- (id)acquireReschedulerTaskWithCompletionHandler:(id)handler;
- (id)bestErrorForUnderlyingError:(id)error;
- (id)cleanupStagedScope:(id)scope stagingScope:(id)stagingScope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)componentName;
- (id)concreteScopeFromTransportScope:(id)scope;
- (id)createGroupForAcceptingLibraryShare;
- (id)createGroupForAcceptingMomentShare;
- (id)createGroupForAnalysisDownload;
- (id)createGroupForChangeDownload;
- (id)createGroupForChangeUpload;
- (id)createGroupForCleanupLibrary;
- (id)createGroupForComputeStateDownloadOnDemand;
- (id)createGroupForComputeStateDownloadPrefetch;
- (id)createGroupForComputeStateUpload;
- (id)createGroupForDownloadWithIntent:(unint64_t)intent priority:(unint64_t)priority;
- (id)createGroupForExitSharedLibrary;
- (id)createGroupForFeedback;
- (id)createGroupForFetchScopeListChanges;
- (id)createGroupForFetchingExistingSharedScope;
- (id)createGroupForFetchingLibraryShare;
- (id)createGroupForFetchingMomentShare;
- (id)createGroupForFixUpTasks;
- (id)createGroupForInitialDownload;
- (id)createGroupForInitialUpload;
- (id)createGroupForKeepOriginalsPrefetch;
- (id)createGroupForLibraryStateCheck;
- (id)createGroupForMemoriesPrefetch;
- (id)createGroupForMovieStreamingWithIntent:(unint64_t)intent;
- (id)createGroupForNonDerivativePrefetch;
- (id)createGroupForPrefetch;
- (id)createGroupForPruningCheck;
- (id)createGroupForPublishingLibraryShare;
- (id)createGroupForPublishingMomentShare;
- (id)createGroupForQueryUserIdentities;
- (id)createGroupForRecoveryDownload;
- (id)createGroupForResetSync;
- (id)createGroupForReshare;
- (id)createGroupForResourcesDownload;
- (id)createGroupForSetup;
- (id)createGroupForSharedLibraryRampCheck;
- (id)createGroupForStagedScopeCleanup;
- (id)createGroupForThumbnailPrefetch;
- (id)createGroupForThumbnailsDownload;
- (id)createGroupForTransportScopeDelete;
- (id)createGroupForTransportScopeRefresh;
- (id)createGroupForTransportScopeUpdate;
- (id)createGroupForWidgetPrefetch;
- (id)createGroupForWidgetResourcesDownload;
- (id)createScopeTaskForScope:(id)scope completionHandler:(id)handler;
- (id)deleteTransportScope:(id)scope scope:(id)a4 completionHandler:(id)handler;
- (id)descriptionForTransportScope:(id)scope;
- (id)downloadBatchTaskForSyncAnchor:(id)anchor scope:(id)scope transportScopeMapping:(id)mapping currentScopeChange:(id)change progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)downloadComputeStatesWithScopedIdentifiers:(id)identifiers scope:(id)scope sharedScope:(id)sharedScope targetStorageURL:(id)l transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)handler;
- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)identifiers targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)anchor progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)fetchTaskForScopeWithShareURL:(id)l completionHandler:(id)handler;
- (id)fetchTransportScopeForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler;
- (id)fixUpSparseRecordsTaskWithTasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)getCurrentSyncAnchorWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler;
- (id)getScopeInfoWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler;
- (id)getStreamingURLTaskForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)self0;
- (id)inMemoryDownloadTaskForResource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)handler;
- (id)queryTaskForCursor:(id)cursor class:(Class)class scope:(id)scope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)queryUserDetailsTaskForParticipants:(id)participants completionHandler:(id)handler;
- (id)rampingRequestTaskForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler;
- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source userIdentifiersToRemove:(id)remove participantIDsToRemove:(id)toRemove completionHandler:(id)self0;
- (id)reshareRecordsTaskWithRecords:(id)records sourceScope:(id)scope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)resourceCheckTaskForResources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (id)resourcesDownloadTaskWithCompletionHandler:(id)handler;
- (id)scopeNameForTransportScope:(id)scope;
- (id)sendFeedbackTaskForMessages:(id)messages completionHandler:(id)handler;
- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)handler;
- (id)simpleDescriptionForScopeListSyncAnchor:(id)anchor;
- (id)simpleDescriptionForSyncAnchor:(id)anchor;
- (id)startExitTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (id)tentativeConcreteScopeForScope:(id)scope;
- (id)transportScopeForUpgradeFromScopeName:(id)name;
- (id)transportScopeFromConcreteScope:(id)scope;
- (id)updateContributorsTaskWithSharedScope:(id)scope contributorsUpdates:(id)updates transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)updateShareTaskForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler;
- (id)updateTransportScope:(id)scope scope:(id)a4 scopeChange:(id)change completionHandler:(id)handler;
- (id)uploadBatchTaskForBatch:(id)batch scope:(id)scope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)uploadComputeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)handler;
- (void)dropPersistedInitialSyncSession;
- (void)findPersistedInitialSyncSession:(id)session completionHandler:(id)handler;
- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)handler;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)getSystemBudgetsWithCompletionHandler:(id)handler;
- (void)noteClientIsBeginningSignificantWork;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientIsInForeground;
- (void)openWithCompletionHandler:(id)handler;
- (void)upgradeFlags:(id)flags fromTransportScope:(id)scope;
@end

@implementation CPLEngineTransport

- (id)createGroupForFetchScopeListChanges
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForFetchScopeListChanges = [platformObject createGroupForFetchScopeListChanges];

  return createGroupForFetchScopeListChanges;
}

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (id)createGroupForSharedLibraryRampCheck
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForSharedLibraryRampCheck = [platformObject createGroupForSharedLibraryRampCheck];

  return createGroupForSharedLibraryRampCheck;
}

- (id)createGroupForFetchingExistingSharedScope
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForFetchingExistingSharedScope = [platformObject createGroupForFetchingExistingSharedScope];

  return createGroupForFetchingExistingSharedScope;
}

- (id)createGroupForExitSharedLibrary
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForExitSharedLibrary = [platformObject createGroupForExitSharedLibrary];

  return createGroupForExitSharedLibrary;
}

- (id)createGroupForCleanupLibrary
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForCleanupLibrary = [platformObject createGroupForCleanupLibrary];

  return createGroupForCleanupLibrary;
}

- (id)createGroupForAcceptingLibraryShare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForAcceptingLibraryShare = [platformObject createGroupForAcceptingLibraryShare];

  return createGroupForAcceptingLibraryShare;
}

- (id)createGroupForFetchingLibraryShare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForFetchingLibraryShare = [platformObject createGroupForFetchingLibraryShare];

  return createGroupForFetchingLibraryShare;
}

- (id)createGroupForPublishingLibraryShare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForPublishingLibraryShare = [platformObject createGroupForPublishingLibraryShare];

  return createGroupForPublishingLibraryShare;
}

- (id)createGroupForQueryUserIdentities
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForQueryUserIdentities = [platformObject createGroupForQueryUserIdentities];

  return createGroupForQueryUserIdentities;
}

- (id)createGroupForAcceptingMomentShare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForAcceptingMomentShare = [platformObject createGroupForAcceptingMomentShare];

  return createGroupForAcceptingMomentShare;
}

- (id)createGroupForFetchingMomentShare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForFetchingMomentShare = [platformObject createGroupForFetchingMomentShare];

  return createGroupForFetchingMomentShare;
}

- (id)createGroupForPublishingMomentShare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForPublishingMomentShare = [platformObject createGroupForPublishingMomentShare];

  return createGroupForPublishingMomentShare;
}

- (id)createGroupForPruningCheck
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForPruningCheck = [platformObject createGroupForPruningCheck];

  return createGroupForPruningCheck;
}

- (id)createGroupForAnalysisDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForAnalysisDownload = [platformObject createGroupForAnalysisDownload];

  return createGroupForAnalysisDownload;
}

- (id)createGroupForMovieStreamingWithIntent:(unint64_t)intent
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  v5 = [platformObject createGroupForMovieStreamingWithIntent:intent];

  return v5;
}

- (id)createGroupForDownloadWithIntent:(unint64_t)intent priority:(unint64_t)priority
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  v7 = [platformObject createGroupForDownloadWithIntent:intent priority:priority];

  return v7;
}

- (id)createGroupForWidgetResourcesDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForWidgetResourcesDownload = [platformObject createGroupForWidgetResourcesDownload];

  return createGroupForWidgetResourcesDownload;
}

- (id)createGroupForResourcesDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForResourcesDownload = [platformObject createGroupForResourcesDownload];

  return createGroupForResourcesDownload;
}

- (id)createGroupForThumbnailsDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForThumbnailsDownload = [platformObject createGroupForThumbnailsDownload];

  return createGroupForThumbnailsDownload;
}

- (id)createGroupForStagedScopeCleanup
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForStagedScopeCleanup = [platformObject createGroupForStagedScopeCleanup];

  return createGroupForStagedScopeCleanup;
}

- (id)createGroupForReshare
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForReshare = [platformObject createGroupForReshare];

  return createGroupForReshare;
}

- (id)createGroupForFixUpTasks
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForFixUpTasks = [platformObject createGroupForFixUpTasks];

  return createGroupForFixUpTasks;
}

- (id)createGroupForComputeStateDownloadPrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForComputeStateDownloadPrefetch = [platformObject createGroupForComputeStateDownloadPrefetch];

  return createGroupForComputeStateDownloadPrefetch;
}

- (id)createGroupForComputeStateDownloadOnDemand
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForComputeStateDownloadOnDemand = [platformObject createGroupForComputeStateDownloadOnDemand];

  return createGroupForComputeStateDownloadOnDemand;
}

- (id)createGroupForComputeStateUpload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForComputeStateUpload = [platformObject createGroupForComputeStateUpload];

  return createGroupForComputeStateUpload;
}

- (id)createGroupForChangeDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForChangeDownload = [platformObject createGroupForChangeDownload];

  return createGroupForChangeDownload;
}

- (id)createGroupForChangeUpload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForChangeUpload = [platformObject createGroupForChangeUpload];

  return createGroupForChangeUpload;
}

- (id)createGroupForLibraryStateCheck
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForLibraryStateCheck = [platformObject createGroupForLibraryStateCheck];

  return createGroupForLibraryStateCheck;
}

- (id)createGroupForFeedback
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForFeedback = [platformObject createGroupForFeedback];

  return createGroupForFeedback;
}

- (id)createGroupForTransportScopeRefresh
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForTransportScopeRefresh = [platformObject createGroupForTransportScopeRefresh];

  return createGroupForTransportScopeRefresh;
}

- (id)createGroupForTransportScopeUpdate
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForTransportScopeUpdate = [platformObject createGroupForTransportScopeUpdate];

  return createGroupForTransportScopeUpdate;
}

- (id)createGroupForTransportScopeDelete
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForTransportScopeDelete = [platformObject createGroupForTransportScopeDelete];

  return createGroupForTransportScopeDelete;
}

- (id)createGroupForSetup
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForSetup = [platformObject createGroupForSetup];

  return createGroupForSetup;
}

- (id)createGroupForWidgetPrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForWidgetPrefetch = [platformObject createGroupForWidgetPrefetch];

  return createGroupForWidgetPrefetch;
}

- (id)createGroupForRecoveryDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForRecoveryDownload = [platformObject createGroupForRecoveryDownload];

  return createGroupForRecoveryDownload;
}

- (id)createGroupForMemoriesPrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForMemoriesPrefetch = [platformObject createGroupForMemoriesPrefetch];

  return createGroupForMemoriesPrefetch;
}

- (id)createGroupForKeepOriginalsPrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForKeepOriginalsPrefetch = [platformObject createGroupForKeepOriginalsPrefetch];

  return createGroupForKeepOriginalsPrefetch;
}

- (id)createGroupForNonDerivativePrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForNonDerivativePrefetch = [platformObject createGroupForNonDerivativePrefetch];

  return createGroupForNonDerivativePrefetch;
}

- (id)createGroupForThumbnailPrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForThumbnailPrefetch = [platformObject createGroupForThumbnailPrefetch];

  return createGroupForThumbnailPrefetch;
}

- (id)createGroupForPrefetch
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForPrefetch = [platformObject createGroupForPrefetch];

  return createGroupForPrefetch;
}

- (id)createGroupForInitialDownload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForInitialDownload = [platformObject createGroupForInitialDownload];

  return createGroupForInitialDownload;
}

- (id)createGroupForResetSync
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForResetSync = [platformObject createGroupForResetSync];

  return createGroupForResetSync;
}

- (id)createGroupForInitialUpload
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  createGroupForInitialUpload = [platformObject createGroupForInitialUpload];

  return createGroupForInitialUpload;
}

- (CPLFingerprintContext)fingerprintContext
{
  v15 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineTransport *)self platformObject];
  fingerprintContext = [platformObject fingerprintContext];

  if (!fingerprintContext)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to access %@ while it has not been set yet", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineTransport.m"];
    v12 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:532 description:{@"Trying to access %@ while it has not been set yet", v12}];

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];

  return fingerprintContext;
}

- (BOOL)shouldIgnoreScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject shouldIgnoreScopeWithIdentifier:identifierCopy];

  return v6;
}

- (void)dropPersistedInitialSyncSession
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  [platformObject dropPersistedInitialSyncSession];
}

- (void)findPersistedInitialSyncSession:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  sessionCopy = session;
  platformObject = [(CPLEngineTransport *)self platformObject];
  [platformObject findPersistedInitialSyncSession:sessionCopy completionHandler:handlerCopy];
}

- (BOOL)isResourceDynamic:(id)dynamic
{
  dynamicCopy = dynamic;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject isResourceDynamic:dynamicCopy];

  return v6;
}

- (void)noteClientIsInBackground
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  [platformObject noteClientIsInBackground];
}

- (void)noteClientIsInForeground
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  [platformObject noteClientIsInForeground];
}

- (id)concreteScopeFromTransportScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject concreteScopeFromTransportScope:scopeCopy];

  return v6;
}

- (id)transportScopeFromConcreteScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject transportScopeFromConcreteScope:scopeCopy];

  return v6;
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    platformObject2 = [(CPLEngineTransport *)self platformObject];
    [platformObject2 getStatusDictionaryWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    platformObject2 = [(CPLEngineTransport *)self platformObject];
    [platformObject2 getStatusWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)componentName
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  componentName = [platformObject componentName];

  return componentName;
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  [platformObject openWithCompletionHandler:handlerCopy];
}

- (BOOL)isNewTransportScope:(id)scope compatibleWithOldTransportScope:(id)transportScope
{
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v9 = [platformObject isNewTransportScope:scopeCopy compatibleWithOldTransportScope:transportScopeCopy];

  return v9;
}

- (void)upgradeFlags:(id)flags fromTransportScope:(id)scope
{
  scopeCopy = scope;
  flagsCopy = flags;
  platformObject = [(CPLEngineTransport *)self platformObject];
  [platformObject upgradeFlags:flagsCopy fromTransportScope:scopeCopy];
}

- (id)transportScopeForUpgradeFromScopeName:(id)name
{
  nameCopy = name;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject transportScopeForUpgradeFromScopeName:nameCopy];

  return v6;
}

- (id)scopeNameForTransportScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject scopeNameForTransportScope:scopeCopy];

  return v6;
}

- (id)descriptionForTransportScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject descriptionForTransportScope:scopeCopy];

  return v6;
}

- (id)tentativeConcreteScopeForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject tentativeConcreteScopeForScope:scopeCopy];

  return v6;
}

- (void)noteClientIsEndingSignificantWork
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [platformObject noteClientIsEndingSignificantWork];
  }
}

- (void)noteClientIsBeginningSignificantWork
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [platformObject noteClientIsBeginningSignificantWork];
  }
}

- (void)getSystemBudgetsWithCompletionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [platformObject getSystemBudgetsWithCompletionHandler:handlerCopy];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getSystemBudgetsWithCompletionHandler is not implemented"];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 errorWithDomain:@"CloudPhotoLibraryErrorDomain" code:255 userInfo:v8];

    handlerCopy[2](handlerCopy, 0, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)getProposedStagingScopeIdentifier:(id *)identifier stagingTransportScope:(id *)scope forScope:(id)forScope transportScope:(id)transportScope transportUserIdentifier:(id)userIdentifier
{
  userIdentifierCopy = userIdentifier;
  transportScopeCopy = transportScope;
  forScopeCopy = forScope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  LOBYTE(scope) = [platformObject getProposedStagingScopeIdentifier:identifier stagingTransportScope:scope forScope:forScopeCopy transportScope:transportScopeCopy transportUserIdentifier:userIdentifierCopy];

  return scope;
}

- (id)simpleDescriptionForScopeListSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject simpleDescriptionForScopeListSyncAnchor:anchorCopy];

  return v6;
}

- (id)simpleDescriptionForSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  platformObject = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [platformObject simpleDescriptionForSyncAnchor:anchorCopy];
  }

  else
  {
    [anchorCopy base64EncodedStringWithOptions:0];
  }
  v6 = ;

  return v6;
}

- (id)bestErrorForUnderlyingError:(id)error
{
  errorCopy = error;
  platformObject = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    v6 = [platformObject bestErrorForUnderlyingError:errorCopy];
  }

  else
  {
    v6 = errorCopy;
  }

  v7 = v6;

  return v7;
}

- (id)sendFeedbackTaskForMessages:(id)messages completionHandler:(id)handler
{
  handlerCopy = handler;
  messagesCopy = messages;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v9 = [platformObject sendFeedbackTaskForMessages:messagesCopy completionHandler:handlerCopy];

  return v9;
}

- (id)queryUserDetailsTaskForParticipants:(id)participants completionHandler:(id)handler
{
  handlerCopy = handler;
  participantsCopy = participants;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v9 = [platformObject queryUserDetailsTaskForParticipants:participantsCopy completionHandler:handlerCopy];

  return v9;
}

- (id)cleanupStagedScope:(id)scope stagingScope:(id)stagingScope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  mappingCopy = mapping;
  destinationScopeCopy = destinationScope;
  stagingScopeCopy = stagingScope;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v21 = [platformObject cleanupStagedScope:scopeCopy stagingScope:stagingScopeCopy destinationScope:destinationScopeCopy transportScopeMapping:mappingCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v21;
}

- (id)updateContributorsTaskWithSharedScope:(id)scope contributorsUpdates:(id)updates transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  updatesCopy = updates;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v15 = [platformObject updateContributorsTaskWithSharedScope:scopeCopy contributorsUpdates:updatesCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v15;
}

- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject sharedLibraryServerRampTaskWithCompletionHandler:handlerCopy];

  return v6;
}

- (id)fixUpSparseRecordsTaskWithTasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  tasksCopy = tasks;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v12 = [platformObject fixUpSparseRecordsTaskWithTasks:tasksCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v12;
}

- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source userIdentifiersToRemove:(id)remove participantIDsToRemove:(id)toRemove completionHandler:(id)self0
{
  handlerCopy = handler;
  toRemoveCopy = toRemove;
  removeCopy = remove;
  shareCopy = share;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v24 = [platformObject removeParticipantInSharedLibraryTaskFromSharedScope:scopeCopy transportScope:transportScopeCopy share:shareCopy retentionPolicy:policy exitSource:source userIdentifiersToRemove:removeCopy participantIDsToRemove:toRemoveCopy completionHandler:handlerCopy];

  return v24;
}

- (id)startExitTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  handlerCopy = handler;
  shareCopy = share;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v19 = [platformObject startExitTaskFromSharedScope:scopeCopy transportScope:transportScopeCopy share:shareCopy retentionPolicy:policy exitSource:source completionHandler:handlerCopy];

  return v19;
}

- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject fetchExistingSharedLibraryScopeTaskWithCompletionHandler:handlerCopy];

  return v6;
}

- (id)acceptTaskForSharedScope:(id)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v9 = [platformObject acceptTaskForSharedScope:scopeCopy completionHandler:handlerCopy];

  return v9;
}

- (id)fetchTaskForScopeWithShareURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v9 = [platformObject fetchTaskForScopeWithShareURL:lCopy completionHandler:handlerCopy];

  return v9;
}

- (id)updateShareTaskForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler
{
  handlerCopy = handler;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v12 = [platformObject updateShareTaskForScope:scopeCopy transportScope:transportScopeCopy completionHandler:handlerCopy];

  return v12;
}

- (id)createScopeTaskForScope:(id)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v9 = [platformObject createScopeTaskForScope:scopeCopy completionHandler:handlerCopy];

  return v9;
}

- (id)inMemoryDownloadTaskForResource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  mappingCopy = mapping;
  targetCopy = target;
  recordCopy = record;
  resourceCopy = resource;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v21 = [platformObject inMemoryDownloadTaskForResource:resourceCopy record:recordCopy target:targetCopy transportScopeMapping:mappingCopy clientBundleID:dCopy completionHandler:handlerCopy];

  return v21;
}

- (id)resourcesDownloadTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject resourcesDownloadTaskWithCompletionHandler:handlerCopy];

  return v6;
}

- (id)rampingRequestTaskForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v10 = [platformObject rampingRequestTaskForResourceType:type numRequested:requested completionHandler:handlerCopy];

  return v10;
}

- (id)resourceCheckTaskForResources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  resourcesCopy = resources;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v15 = [platformObject resourceCheckTaskForResources:resourcesCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy completionHandler:handlerCopy];

  return v15;
}

- (id)getStreamingURLTaskForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)self0
{
  handlerCopy = handler;
  dCopy = d;
  mappingCopy = mapping;
  targetCopy = target;
  hintsCopy = hints;
  resourceCopy = resource;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v24 = *&range->var0.var3;
  v27[0] = *&range->var0.var0;
  v27[1] = v24;
  v27[2] = *&range->var1.var1;
  v25 = [platformObject getStreamingURLTaskForResource:resourceCopy intent:intent hints:hintsCopy timeRange:v27 target:targetCopy transportScopeMapping:mappingCopy clientBundleID:dCopy completionHandler:handlerCopy];

  return v25;
}

- (id)fetchTransportScopeForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler
{
  handlerCopy = handler;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v12 = [platformObject fetchTransportScopeForScope:scopeCopy transportScope:transportScopeCopy completionHandler:handlerCopy];

  return v12;
}

- (id)getCurrentSyncAnchorWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v12 = a4;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v15 = [platformObject getCurrentSyncAnchorWithTransportScope:scopeCopy scope:v12 previousScopeChange:changeCopy completionHandler:handlerCopy];

  return v15;
}

- (id)getScopeInfoWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v12 = a4;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v15 = [platformObject getScopeInfoWithTransportScope:scopeCopy scope:v12 previousScopeChange:changeCopy completionHandler:handlerCopy];

  return v15;
}

- (id)updateTransportScope:(id)scope scope:(id)a4 scopeChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v12 = a4;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v15 = [platformObject updateTransportScope:scopeCopy scope:v12 scopeChange:changeCopy completionHandler:handlerCopy];

  return v15;
}

- (id)deleteTransportScope:(id)scope scope:(id)a4 completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = a4;
  scopeCopy = scope;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v12 = [platformObject deleteTransportScope:scopeCopy scope:v9 completionHandler:handlerCopy];

  return v12;
}

- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)anchor progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  anchorCopy = anchor;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v12 = [platformObject fetchScopeListChangesForScopeListSyncAnchor:anchorCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v12;
}

- (id)downloadComputeStatesWithScopedIdentifiers:(id)identifiers scope:(id)scope sharedScope:(id)sharedScope targetStorageURL:(id)l transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  lCopy = l;
  sharedScopeCopy = sharedScope;
  scopeCopy = scope;
  identifiersCopy = identifiers;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v21 = [platformObject downloadComputeStatesWithScopedIdentifiers:identifiersCopy scope:scopeCopy sharedScope:sharedScopeCopy targetStorageURL:lCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v21;
}

- (id)uploadComputeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)handler
{
  handlerCopy = handler;
  recordsCopy = records;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  sharedScopeCopy = sharedScope;
  scopeCopy = scope;
  statesCopy = states;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v24 = [platformObject uploadComputeStates:statesCopy scope:scopeCopy sharedScope:sharedScopeCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy knownRecords:recordsCopy completionHandler:handlerCopy];

  return v24;
}

- (id)downloadBatchTaskForSyncAnchor:(id)anchor scope:(id)scope transportScopeMapping:(id)mapping currentScopeChange:(id)change progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  changeCopy = change;
  mappingCopy = mapping;
  scopeCopy = scope;
  anchorCopy = anchor;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v21 = [platformObject downloadBatchTaskForSyncAnchor:anchorCopy scope:scopeCopy transportScopeMapping:mappingCopy currentScopeChange:changeCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v21;
}

- (id)queryTaskForCursor:(id)cursor class:(Class)class scope:(id)scope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  mappingCopy = mapping;
  scopeCopy = scope;
  cursorCopy = cursor;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v20 = [platformObject queryTaskForCursor:cursorCopy class:class scope:scopeCopy transportScopeMapping:mappingCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v20;
}

- (id)reshareRecordsTaskWithRecords:(id)records sourceScope:(id)scope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  destinationScopeCopy = destinationScope;
  scopeCopy = scope;
  recordsCopy = records;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v18 = [platformObject reshareRecordsTaskWithRecords:recordsCopy sourceScope:scopeCopy destinationScope:destinationScopeCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v18;
}

- (id)uploadBatchTaskForBatch:(id)batch scope:(id)scope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  scopeCopy = scope;
  batchCopy = batch;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __122__CPLEngineTransport_uploadBatchTaskForBatch_scope_targetMapping_transportScopeMapping_progressHandler_completionHandler___block_invoke;
  v24[3] = &unk_1E861C120;
  v25 = handlerCopy;
  v21 = handlerCopy;
  v22 = [platformObject uploadBatchTaskForBatch:batchCopy scope:scopeCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy progressHandler:v24 completionHandler:completionHandlerCopy];

  return v22;
}

uint64_t __122__CPLEngineTransport_uploadBatchTaskForBatch_scope_targetMapping_transportScopeMapping_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)identifiers targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  identifiersCopy = identifiers;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v15 = [platformObject fetchRecordsTaskForRecordsWithScopedIdentifiers:identifiersCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy completionHandler:handlerCopy];

  return v15;
}

- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    platformObject2 = [(CPLEngineTransport *)self platformObject];
    [platformObject2 getBackgroundSchedulingStatusDictionaryWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0);
  }
}

- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    platformObject2 = [(CPLEngineTransport *)self platformObject];
    [platformObject2 getBackgroundSchedulingStatusWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, &stru_1F57BD298, 0);
  }
}

- (id)acquireReschedulerTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  platformObject = [(CPLEngineTransport *)self platformObject];
  v6 = [platformObject acquireReschedulerTaskWithCompletionHandler:handlerCopy];

  return v6;
}

- (CPLSharedRecordPropertyMapping)propertyMapping
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  propertyMapping = [platformObject propertyMapping];

  return propertyMapping;
}

- (Class)userIdentifierClass
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  userIdentifierClass = [platformObject userIdentifierClass];

  return userIdentifierClass;
}

- (Class)transportGroupClass
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  transportGroupClass = [platformObject transportGroupClass];

  return transportGroupClass;
}

- (NSArray)involvedProcesses
{
  platformObject = [(CPLEngineTransport *)self platformObject];
  involvedProcesses = [platformObject involvedProcesses];

  return involvedProcesses;
}

- (CPLEngineTransport)initWithEngineLibrary:(id)library
{
  v21 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = CPLEngineTransport;
  v6 = [(CPLEngineTransport *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engineLibrary, libraryCopy);
    v8 = +[CPLPlatform currentPlatform];
    v9 = [v8 newPlatformImplementationForObject:v7];
    platformObject = v7->_platformObject;
    v7->_platformObject = v9;

    if (!v7->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_opt_class();
          *buf = 138412290;
          v20 = v14;
          v15 = v14;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineTransport.m"];
      [currentHandler handleFailureInMethod:a2 object:v7 file:v17 lineNumber:25 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

@end