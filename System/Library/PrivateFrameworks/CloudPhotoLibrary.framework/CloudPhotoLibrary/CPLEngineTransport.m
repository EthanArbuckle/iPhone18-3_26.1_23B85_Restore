@interface CPLEngineTransport
+ (id)platformImplementationProtocol;
- (BOOL)getProposedStagingScopeIdentifier:(id *)a3 stagingTransportScope:(id *)a4 forScope:(id)a5 transportScope:(id)a6 transportUserIdentifier:(id)a7;
- (BOOL)isNewTransportScope:(id)a3 compatibleWithOldTransportScope:(id)a4;
- (BOOL)isResourceDynamic:(id)a3;
- (BOOL)shouldIgnoreScopeWithIdentifier:(id)a3;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineTransport)initWithEngineLibrary:(id)a3;
- (CPLFingerprintContext)fingerprintContext;
- (CPLSharedRecordPropertyMapping)propertyMapping;
- (Class)transportGroupClass;
- (Class)userIdentifierClass;
- (NSArray)involvedProcesses;
- (id)acceptTaskForSharedScope:(id)a3 completionHandler:(id)a4;
- (id)acquireReschedulerTaskWithCompletionHandler:(id)a3;
- (id)bestErrorForUnderlyingError:(id)a3;
- (id)cleanupStagedScope:(id)a3 stagingScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)componentName;
- (id)concreteScopeFromTransportScope:(id)a3;
- (id)createGroupForAcceptingLibraryShare;
- (id)createGroupForAcceptingMomentShare;
- (id)createGroupForAnalysisDownload;
- (id)createGroupForChangeDownload;
- (id)createGroupForChangeUpload;
- (id)createGroupForCleanupLibrary;
- (id)createGroupForComputeStateDownloadOnDemand;
- (id)createGroupForComputeStateDownloadPrefetch;
- (id)createGroupForComputeStateUpload;
- (id)createGroupForDownloadWithIntent:(unint64_t)a3 priority:(unint64_t)a4;
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
- (id)createGroupForMovieStreamingWithIntent:(unint64_t)a3;
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
- (id)createScopeTaskForScope:(id)a3 completionHandler:(id)a4;
- (id)deleteTransportScope:(id)a3 scope:(id)a4 completionHandler:(id)a5;
- (id)descriptionForTransportScope:(id)a3;
- (id)downloadBatchTaskForSyncAnchor:(id)a3 scope:(id)a4 transportScopeMapping:(id)a5 currentScopeChange:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)downloadComputeStatesWithScopedIdentifiers:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetStorageURL:(id)a6 transportScopeMapping:(id)a7 completionHandler:(id)a8;
- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)a3;
- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (id)fetchTaskForScopeWithShareURL:(id)a3 completionHandler:(id)a4;
- (id)fetchTransportScopeForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5;
- (id)fixUpSparseRecordsTaskWithTasks:(id)a3 transportScopeMapping:(id)a4 completionHandler:(id)a5;
- (id)getCurrentSyncAnchorWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6;
- (id)getScopeInfoWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6;
- (id)getStreamingURLTaskForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 target:(id)a7 transportScopeMapping:(id)a8 clientBundleID:(id)a9 completionHandler:(id)a10;
- (id)inMemoryDownloadTaskForResource:(id)a3 record:(id)a4 target:(id)a5 transportScopeMapping:(id)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (id)queryTaskForCursor:(id)a3 class:(Class)a4 scope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)queryUserDetailsTaskForParticipants:(id)a3 completionHandler:(id)a4;
- (id)rampingRequestTaskForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5;
- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 userIdentifiersToRemove:(id)a8 participantIDsToRemove:(id)a9 completionHandler:(id)a10;
- (id)reshareRecordsTaskWithRecords:(id)a3 sourceScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7;
- (id)resourceCheckTaskForResources:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (id)resourcesDownloadTaskWithCompletionHandler:(id)a3;
- (id)scopeNameForTransportScope:(id)a3;
- (id)sendFeedbackTaskForMessages:(id)a3 completionHandler:(id)a4;
- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)a3;
- (id)simpleDescriptionForScopeListSyncAnchor:(id)a3;
- (id)simpleDescriptionForSyncAnchor:(id)a3;
- (id)startExitTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 completionHandler:(id)a8;
- (id)tentativeConcreteScopeForScope:(id)a3;
- (id)transportScopeForUpgradeFromScopeName:(id)a3;
- (id)transportScopeFromConcreteScope:(id)a3;
- (id)updateContributorsTaskWithSharedScope:(id)a3 contributorsUpdates:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (id)updateShareTaskForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5;
- (id)updateTransportScope:(id)a3 scope:(id)a4 scopeChange:(id)a5 completionHandler:(id)a6;
- (id)uploadBatchTaskForBatch:(id)a3 scope:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)uploadComputeStates:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetMapping:(id)a6 transportScopeMapping:(id)a7 knownRecords:(id)a8 completionHandler:(id)a9;
- (void)dropPersistedInitialSyncSession;
- (void)findPersistedInitialSyncSession:(id)a3 completionHandler:(id)a4;
- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)a3;
- (void)getStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)getSystemBudgetsWithCompletionHandler:(id)a3;
- (void)noteClientIsBeginningSignificantWork;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientIsInForeground;
- (void)openWithCompletionHandler:(id)a3;
- (void)upgradeFlags:(id)a3 fromTransportScope:(id)a4;
@end

@implementation CPLEngineTransport

- (id)createGroupForFetchScopeListChanges
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForFetchScopeListChanges];

  return v3;
}

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (id)createGroupForSharedLibraryRampCheck
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForSharedLibraryRampCheck];

  return v3;
}

- (id)createGroupForFetchingExistingSharedScope
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForFetchingExistingSharedScope];

  return v3;
}

- (id)createGroupForExitSharedLibrary
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForExitSharedLibrary];

  return v3;
}

- (id)createGroupForCleanupLibrary
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForCleanupLibrary];

  return v3;
}

- (id)createGroupForAcceptingLibraryShare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForAcceptingLibraryShare];

  return v3;
}

- (id)createGroupForFetchingLibraryShare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForFetchingLibraryShare];

  return v3;
}

- (id)createGroupForPublishingLibraryShare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForPublishingLibraryShare];

  return v3;
}

- (id)createGroupForQueryUserIdentities
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForQueryUserIdentities];

  return v3;
}

- (id)createGroupForAcceptingMomentShare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForAcceptingMomentShare];

  return v3;
}

- (id)createGroupForFetchingMomentShare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForFetchingMomentShare];

  return v3;
}

- (id)createGroupForPublishingMomentShare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForPublishingMomentShare];

  return v3;
}

- (id)createGroupForPruningCheck
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForPruningCheck];

  return v3;
}

- (id)createGroupForAnalysisDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForAnalysisDownload];

  return v3;
}

- (id)createGroupForMovieStreamingWithIntent:(unint64_t)a3
{
  v4 = [(CPLEngineTransport *)self platformObject];
  v5 = [v4 createGroupForMovieStreamingWithIntent:a3];

  return v5;
}

- (id)createGroupForDownloadWithIntent:(unint64_t)a3 priority:(unint64_t)a4
{
  v6 = [(CPLEngineTransport *)self platformObject];
  v7 = [v6 createGroupForDownloadWithIntent:a3 priority:a4];

  return v7;
}

- (id)createGroupForWidgetResourcesDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForWidgetResourcesDownload];

  return v3;
}

- (id)createGroupForResourcesDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForResourcesDownload];

  return v3;
}

- (id)createGroupForThumbnailsDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForThumbnailsDownload];

  return v3;
}

- (id)createGroupForStagedScopeCleanup
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForStagedScopeCleanup];

  return v3;
}

- (id)createGroupForReshare
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForReshare];

  return v3;
}

- (id)createGroupForFixUpTasks
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForFixUpTasks];

  return v3;
}

- (id)createGroupForComputeStateDownloadPrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForComputeStateDownloadPrefetch];

  return v3;
}

- (id)createGroupForComputeStateDownloadOnDemand
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForComputeStateDownloadOnDemand];

  return v3;
}

- (id)createGroupForComputeStateUpload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForComputeStateUpload];

  return v3;
}

- (id)createGroupForChangeDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForChangeDownload];

  return v3;
}

- (id)createGroupForChangeUpload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForChangeUpload];

  return v3;
}

- (id)createGroupForLibraryStateCheck
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForLibraryStateCheck];

  return v3;
}

- (id)createGroupForFeedback
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForFeedback];

  return v3;
}

- (id)createGroupForTransportScopeRefresh
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForTransportScopeRefresh];

  return v3;
}

- (id)createGroupForTransportScopeUpdate
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForTransportScopeUpdate];

  return v3;
}

- (id)createGroupForTransportScopeDelete
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForTransportScopeDelete];

  return v3;
}

- (id)createGroupForSetup
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForSetup];

  return v3;
}

- (id)createGroupForWidgetPrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForWidgetPrefetch];

  return v3;
}

- (id)createGroupForRecoveryDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForRecoveryDownload];

  return v3;
}

- (id)createGroupForMemoriesPrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForMemoriesPrefetch];

  return v3;
}

- (id)createGroupForKeepOriginalsPrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForKeepOriginalsPrefetch];

  return v3;
}

- (id)createGroupForNonDerivativePrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForNonDerivativePrefetch];

  return v3;
}

- (id)createGroupForThumbnailPrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForThumbnailPrefetch];

  return v3;
}

- (id)createGroupForPrefetch
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForPrefetch];

  return v3;
}

- (id)createGroupForInitialDownload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForInitialDownload];

  return v3;
}

- (id)createGroupForResetSync
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForResetSync];

  return v3;
}

- (id)createGroupForInitialUpload
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 createGroupForInitialUpload];

  return v3;
}

- (CPLFingerprintContext)fingerprintContext
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(CPLEngineTransport *)self platformObject];
  v5 = [v4 fingerprintContext];

  if (!v5)
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

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineTransport.m"];
    v12 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:532 description:{@"Trying to access %@ while it has not been set yet", v12}];

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)shouldIgnoreScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 shouldIgnoreScopeWithIdentifier:v4];

  return v6;
}

- (void)dropPersistedInitialSyncSession
{
  v2 = [(CPLEngineTransport *)self platformObject];
  [v2 dropPersistedInitialSyncSession];
}

- (void)findPersistedInitialSyncSession:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  [v8 findPersistedInitialSyncSession:v7 completionHandler:v6];
}

- (BOOL)isResourceDynamic:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 isResourceDynamic:v4];

  return v6;
}

- (void)noteClientIsInBackground
{
  v2 = [(CPLEngineTransport *)self platformObject];
  [v2 noteClientIsInBackground];
}

- (void)noteClientIsInForeground
{
  v2 = [(CPLEngineTransport *)self platformObject];
  [v2 noteClientIsInForeground];
}

- (id)concreteScopeFromTransportScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 concreteScopeFromTransportScope:v4];

  return v6;
}

- (id)transportScopeFromConcreteScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 transportScopeFromConcreteScope:v4];

  return v6;
}

- (void)getStatusDictionaryWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPLEngineTransport *)self platformObject];
    [v6 getStatusDictionaryWithCompletionHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPLEngineTransport *)self platformObject];
    [v6 getStatusWithCompletionHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (id)componentName
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 componentName];

  return v3;
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  [v5 openWithCompletionHandler:v4];
}

- (BOOL)isNewTransportScope:(id)a3 compatibleWithOldTransportScope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  v9 = [v8 isNewTransportScope:v7 compatibleWithOldTransportScope:v6];

  return v9;
}

- (void)upgradeFlags:(id)a3 fromTransportScope:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  [v8 upgradeFlags:v7 fromTransportScope:v6];
}

- (id)transportScopeForUpgradeFromScopeName:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 transportScopeForUpgradeFromScopeName:v4];

  return v6;
}

- (id)scopeNameForTransportScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 scopeNameForTransportScope:v4];

  return v6;
}

- (id)descriptionForTransportScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 descriptionForTransportScope:v4];

  return v6;
}

- (id)tentativeConcreteScopeForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 tentativeConcreteScopeForScope:v4];

  return v6;
}

- (void)noteClientIsEndingSignificantWork
{
  v2 = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [v2 noteClientIsEndingSignificantWork];
  }
}

- (void)noteClientIsBeginningSignificantWork
{
  v2 = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [v2 noteClientIsBeginningSignificantWork];
  }
}

- (void)getSystemBudgetsWithCompletionHandler:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [v5 getSystemBudgetsWithCompletionHandler:v4];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getSystemBudgetsWithCompletionHandler is not implemented"];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 errorWithDomain:@"CloudPhotoLibraryErrorDomain" code:255 userInfo:v8];

    v4[2](v4, 0, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)getProposedStagingScopeIdentifier:(id *)a3 stagingTransportScope:(id *)a4 forScope:(id)a5 transportScope:(id)a6 transportUserIdentifier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [(CPLEngineTransport *)self platformObject];
  LOBYTE(a4) = [v15 getProposedStagingScopeIdentifier:a3 stagingTransportScope:a4 forScope:v14 transportScope:v13 transportUserIdentifier:v12];

  return a4;
}

- (id)simpleDescriptionForScopeListSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 simpleDescriptionForScopeListSyncAnchor:v4];

  return v6;
}

- (id)simpleDescriptionForSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [v5 simpleDescriptionForSyncAnchor:v4];
  }

  else
  {
    [v4 base64EncodedStringWithOptions:0];
  }
  v6 = ;

  return v6;
}

- (id)bestErrorForUnderlyingError:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 bestErrorForUnderlyingError:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)sendFeedbackTaskForMessages:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  v9 = [v8 sendFeedbackTaskForMessages:v7 completionHandler:v6];

  return v9;
}

- (id)queryUserDetailsTaskForParticipants:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  v9 = [v8 queryUserDetailsTaskForParticipants:v7 completionHandler:v6];

  return v9;
}

- (id)cleanupStagedScope:(id)a3 stagingScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(CPLEngineTransport *)self platformObject];
  v21 = [v20 cleanupStagedScope:v19 stagingScope:v18 destinationScope:v17 transportScopeMapping:v16 progressHandler:v15 completionHandler:v14];

  return v21;
}

- (id)updateContributorsTaskWithSharedScope:(id)a3 contributorsUpdates:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLEngineTransport *)self platformObject];
  v15 = [v14 updateContributorsTaskWithSharedScope:v13 contributorsUpdates:v12 transportScopeMapping:v11 completionHandler:v10];

  return v15;
}

- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 sharedLibraryServerRampTaskWithCompletionHandler:v4];

  return v6;
}

- (id)fixUpSparseRecordsTaskWithTasks:(id)a3 transportScopeMapping:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLEngineTransport *)self platformObject];
  v12 = [v11 fixUpSparseRecordsTaskWithTasks:v10 transportScopeMapping:v9 completionHandler:v8];

  return v12;
}

- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 userIdentifiersToRemove:(id)a8 participantIDsToRemove:(id)a9 completionHandler:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(CPLEngineTransport *)self platformObject];
  v24 = [v23 removeParticipantInSharedLibraryTaskFromSharedScope:v22 transportScope:v21 share:v20 retentionPolicy:a6 exitSource:a7 userIdentifiersToRemove:v19 participantIDsToRemove:v18 completionHandler:v17];

  return v24;
}

- (id)startExitTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(CPLEngineTransport *)self platformObject];
  v19 = [v18 startExitTaskFromSharedScope:v17 transportScope:v16 share:v15 retentionPolicy:a6 exitSource:a7 completionHandler:v14];

  return v19;
}

- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 fetchExistingSharedLibraryScopeTaskWithCompletionHandler:v4];

  return v6;
}

- (id)acceptTaskForSharedScope:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  v9 = [v8 acceptTaskForSharedScope:v7 completionHandler:v6];

  return v9;
}

- (id)fetchTaskForScopeWithShareURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  v9 = [v8 fetchTaskForScopeWithShareURL:v7 completionHandler:v6];

  return v9;
}

- (id)updateShareTaskForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLEngineTransport *)self platformObject];
  v12 = [v11 updateShareTaskForScope:v10 transportScope:v9 completionHandler:v8];

  return v12;
}

- (id)createScopeTaskForScope:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CPLEngineTransport *)self platformObject];
  v9 = [v8 createScopeTaskForScope:v7 completionHandler:v6];

  return v9;
}

- (id)inMemoryDownloadTaskForResource:(id)a3 record:(id)a4 target:(id)a5 transportScopeMapping:(id)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(CPLEngineTransport *)self platformObject];
  v21 = [v20 inMemoryDownloadTaskForResource:v19 record:v18 target:v17 transportScopeMapping:v16 clientBundleID:v15 completionHandler:v14];

  return v21;
}

- (id)resourcesDownloadTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 resourcesDownloadTaskWithCompletionHandler:v4];

  return v6;
}

- (id)rampingRequestTaskForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(CPLEngineTransport *)self platformObject];
  v10 = [v9 rampingRequestTaskForResourceType:a3 numRequested:a4 completionHandler:v8];

  return v10;
}

- (id)resourceCheckTaskForResources:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLEngineTransport *)self platformObject];
  v15 = [v14 resourceCheckTaskForResources:v13 targetMapping:v12 transportScopeMapping:v11 completionHandler:v10];

  return v15;
}

- (id)getStreamingURLTaskForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 target:(id)a7 transportScopeMapping:(id)a8 clientBundleID:(id)a9 completionHandler:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a5;
  v22 = a3;
  v23 = [(CPLEngineTransport *)self platformObject];
  v24 = *&a6->var0.var3;
  v27[0] = *&a6->var0.var0;
  v27[1] = v24;
  v27[2] = *&a6->var1.var1;
  v25 = [v23 getStreamingURLTaskForResource:v22 intent:a4 hints:v21 timeRange:v27 target:v20 transportScopeMapping:v19 clientBundleID:v18 completionHandler:v17];

  return v25;
}

- (id)fetchTransportScopeForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLEngineTransport *)self platformObject];
  v12 = [v11 fetchTransportScopeForScope:v10 transportScope:v9 completionHandler:v8];

  return v12;
}

- (id)getCurrentSyncAnchorWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLEngineTransport *)self platformObject];
  v15 = [v14 getCurrentSyncAnchorWithTransportScope:v13 scope:v12 previousScopeChange:v11 completionHandler:v10];

  return v15;
}

- (id)getScopeInfoWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLEngineTransport *)self platformObject];
  v15 = [v14 getScopeInfoWithTransportScope:v13 scope:v12 previousScopeChange:v11 completionHandler:v10];

  return v15;
}

- (id)updateTransportScope:(id)a3 scope:(id)a4 scopeChange:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLEngineTransport *)self platformObject];
  v15 = [v14 updateTransportScope:v13 scope:v12 scopeChange:v11 completionHandler:v10];

  return v15;
}

- (id)deleteTransportScope:(id)a3 scope:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLEngineTransport *)self platformObject];
  v12 = [v11 deleteTransportScope:v10 scope:v9 completionHandler:v8];

  return v12;
}

- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLEngineTransport *)self platformObject];
  v12 = [v11 fetchScopeListChangesForScopeListSyncAnchor:v10 progressHandler:v9 completionHandler:v8];

  return v12;
}

- (id)downloadComputeStatesWithScopedIdentifiers:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetStorageURL:(id)a6 transportScopeMapping:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(CPLEngineTransport *)self platformObject];
  v21 = [v20 downloadComputeStatesWithScopedIdentifiers:v19 scope:v18 sharedScope:v17 targetStorageURL:v16 transportScopeMapping:v15 completionHandler:v14];

  return v21;
}

- (id)uploadComputeStates:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetMapping:(id)a6 transportScopeMapping:(id)a7 knownRecords:(id)a8 completionHandler:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(CPLEngineTransport *)self platformObject];
  v24 = [v23 uploadComputeStates:v22 scope:v21 sharedScope:v20 targetMapping:v19 transportScopeMapping:v18 knownRecords:v17 completionHandler:v16];

  return v24;
}

- (id)downloadBatchTaskForSyncAnchor:(id)a3 scope:(id)a4 transportScopeMapping:(id)a5 currentScopeChange:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(CPLEngineTransport *)self platformObject];
  v21 = [v20 downloadBatchTaskForSyncAnchor:v19 scope:v18 transportScopeMapping:v17 currentScopeChange:v16 progressHandler:v15 completionHandler:v14];

  return v21;
}

- (id)queryTaskForCursor:(id)a3 class:(Class)a4 scope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(CPLEngineTransport *)self platformObject];
  v20 = [v19 queryTaskForCursor:v18 class:a4 scope:v17 transportScopeMapping:v16 progressHandler:v15 completionHandler:v14];

  return v20;
}

- (id)reshareRecordsTaskWithRecords:(id)a3 sourceScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(CPLEngineTransport *)self platformObject];
  v18 = [v17 reshareRecordsTaskWithRecords:v16 sourceScope:v15 destinationScope:v14 transportScopeMapping:v13 completionHandler:v12];

  return v18;
}

- (id)uploadBatchTaskForBatch:(id)a3 scope:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a7;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(CPLEngineTransport *)self platformObject];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __122__CPLEngineTransport_uploadBatchTaskForBatch_scope_targetMapping_transportScopeMapping_progressHandler_completionHandler___block_invoke;
  v24[3] = &unk_1E861C120;
  v25 = v14;
  v21 = v14;
  v22 = [v20 uploadBatchTaskForBatch:v19 scope:v18 targetMapping:v17 transportScopeMapping:v16 progressHandler:v24 completionHandler:v15];

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

- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(CPLEngineTransport *)self platformObject];
  v15 = [v14 fetchRecordsTaskForRecordsWithScopedIdentifiers:v13 targetMapping:v12 transportScopeMapping:v11 completionHandler:v10];

  return v15;
}

- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPLEngineTransport *)self platformObject];
    [v6 getBackgroundSchedulingStatusDictionaryWithCompletionHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F8], 0);
  }
}

- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(CPLEngineTransport *)self platformObject];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPLEngineTransport *)self platformObject];
    [v6 getBackgroundSchedulingStatusWithCompletionHandler:v7];
  }

  else
  {
    v7[2](v7, &stru_1F57BD298, 0);
  }
}

- (id)acquireReschedulerTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineTransport *)self platformObject];
  v6 = [v5 acquireReschedulerTaskWithCompletionHandler:v4];

  return v6;
}

- (CPLSharedRecordPropertyMapping)propertyMapping
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 propertyMapping];

  return v3;
}

- (Class)userIdentifierClass
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 userIdentifierClass];

  return v3;
}

- (Class)transportGroupClass
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 transportGroupClass];

  return v3;
}

- (NSArray)involvedProcesses
{
  v2 = [(CPLEngineTransport *)self platformObject];
  v3 = [v2 involvedProcesses];

  return v3;
}

- (CPLEngineTransport)initWithEngineLibrary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CPLEngineTransport;
  v6 = [(CPLEngineTransport *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_engineLibrary, v5);
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

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineTransport.m"];
      [v16 handleFailureInMethod:a2 object:v7 file:v17 lineNumber:25 description:{@"No platform object specified for %@", objc_opt_class()}];

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