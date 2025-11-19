@interface CPLEngineScopeStorage
- (BOOL)_activateSharedScopeIfPresentWithError:(id *)a3;
- (BOOL)_doesScopeContributeToGlobalStatus:(id)a3;
- (BOOL)_dropSharingScopeIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_forceClientToPullScopeIfNecessary:(id)a3 error:(id *)a4;
- (BOOL)_handledDisabledFeaturesForScopeIfNecessary:(id)a3 type:(int64_t)a4 error:(id *)a5;
- (BOOL)_isAvailableSharingScope:(void *)a1;
- (BOOL)_isValidSharingScope:(id)a3 forScopeIdentifier:(id)a4;
- (BOOL)_isValidSharingScopeIdentifier:(id)a3 scopeType:(int64_t)a4 forScopeIdentifier:(id)a5;
- (BOOL)_resetCompleteSyncStateForScope:(id)a3 error:(id *)a4;
- (BOOL)_resetLocalSyncStateForScope:(id)a3 error:(id *)a4;
- (BOOL)_setScopeType:(int64_t)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)_setSharingScopeIdentifier:(id)a3 error:(id *)a4;
- (BOOL)activateScope:(id)a3 error:(id *)a4;
- (BOOL)addCleanupTasksForScope:(id)a3 error:(id *)a4;
- (BOOL)addRewindSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)clearAllQuotaFlagsForMainScopeWithReason:(id)a3 error:(id *)a4;
- (BOOL)clearTransportGroupsForScope:(id)a3 error:(id *)a4;
- (BOOL)clientAcknowledgedScopeChanges:(id)a3 error:(id *)a4;
- (BOOL)commitSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)deactivateScope:(id)a3 error:(id *)a4;
- (BOOL)deleteScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)didDropSomeRecordsForScope:(id)a3;
- (BOOL)disableInitialQueriesForScope:(id)a3 error:(id *)a4;
- (BOOL)disablePrimaryScopeWithError:(id *)a3;
- (BOOL)discardStagedSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)doScopesNeedMetadataSync:(id)a3;
- (BOOL)doesScopeAllowCourtesyMingling:(id)a3;
- (BOOL)doesScopeNeedToBePulledByClient:(id)a3;
- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)a3;
- (BOOL)doesScopeNeedToPushChangesToTransport:(id)a3;
- (BOOL)doesScopeNeedToUpdateTransport:(id)a3;
- (BOOL)doesScopeNeedToUploadComputeState:(id)a3;
- (BOOL)doesScopeSupportToBePulledByClient:(id)a3;
- (BOOL)enablePrimaryScopeWithError:(id *)a3;
- (BOOL)hasFinishedAFullSyncForScope:(id)a3;
- (BOOL)hasFinishedInitialDownloadForScope:(id)a3;
- (BOOL)hasFinishedInitialSyncForScope:(id)a3;
- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)a3;
- (BOOL)hasScopesNeedingToPullChangesFromTransport;
- (BOOL)hasScopesNeedingToPushChangesToTransport;
- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport;
- (BOOL)hasScopesNeedingToUploadComputeState;
- (BOOL)hasStagedSyncAnchorForScope:(id)a3;
- (BOOL)hasStagedSyncAnchors;
- (BOOL)markInitialQueryIsDoneForRecordsOfClass:(Class)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)noteDidCheckAssetWithServerWhenOverQuotaForScope:(id)a3 error:(id *)a4;
- (BOOL)openWithError:(id *)a3;
- (BOOL)resetCloudRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resetCompleteSyncStateForScope:(id)a3 error:(id *)a4;
- (BOOL)resetCompleteSyncStateIncludingIDMappingForScope:(id)a3 error:(id *)a4;
- (BOOL)resetDidCheckAssetWithServerWhenOverQuotaForScope:(id)a3 error:(id *)a4;
- (BOOL)resetInitialSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)resetLocalRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resetLocalSyncStateForScope:(id)a3 error:(id *)a4;
- (BOOL)resetStableRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resetSyncAnchorForScope:(id)a3 error:(id *)a4;
- (BOOL)resetSyncStateForScope:(id)a3 error:(id *)a4;
- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)a3;
- (BOOL)setCloudScopeIndexOnChange:(id)a3;
- (BOOL)setDeleteDate:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setDidDropSomeRecordsForScope:(id)a3 error:(id *)a4;
- (BOOL)setDisabledDate:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setHasFinishedInitialDownloadForScope:(id)a3 error:(id *)a4;
- (BOOL)setHasUpdatedScope:(id)a3 fromTransportWithError:(id *)a4;
- (BOOL)setInitialSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setLocalScopeIndexOnChange:(id)a3;
- (BOOL)setPullFromTransportExpirationInterval:(double)a3 scope:(id)a4 error:(id *)a5;
- (BOOL)setScope:(id)a3 hasCompletedInitialMinglingWithError:(id *)a4;
- (BOOL)setScope:(id)a3 hasCompletedPullFromTransportTask:(int64_t)a4 error:(id *)a5;
- (BOOL)setScope:(id)a3 hasCompletedPushToTransportTask:(int64_t)a4 error:(id *)a5;
- (BOOL)setScope:(id)a3 hasCompletedTransportUpdate:(int64_t)a4 error:(id *)a5;
- (BOOL)setScope:(id)a3 hasCompletedUploadComputeStateTask:(int64_t)a4 error:(id *)a5;
- (BOOL)setScopeHasChangesToPullFromTransport:(id)a3 error:(id *)a4;
- (BOOL)setScopeHasChangesToPushToTransport:(id)a3 changeTypes:(unint64_t)a4 error:(id *)a5;
- (BOOL)setScopeNeedsToBePulledByClient:(id)a3 error:(id *)a4;
- (BOOL)setScopeNeedsToUpdateTransport:(id)a3 error:(id *)a4;
- (BOOL)setScopeNeedsToUploadComputeState:(id)a3 error:(id *)a4;
- (BOOL)setScopeNeedsUpdateFromTransport:(id)a3 error:(id *)a4;
- (BOOL)setSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setTransportScope:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)setupAnchorResetTransportGroupForScope:(id)a3 error:(id *)a4;
- (BOOL)setupInitialSyncTransportGroupsForScope:(id)a3 error:(id *)a4;
- (BOOL)setupResetSyncTransportGroupForScope:(id)a3 error:(id *)a4;
- (BOOL)shouldAutoactivateScopeWithIdentifier:(id)a3 scopeType:(int64_t)a4;
- (BOOL)shouldCheckAssetsWithServerWhenOverQuotaForScope:(id)a3;
- (BOOL)shouldDropAllUploadsForScope:(id)a3 dropReason:(id *)a4 shouldQuarantineRecords:(BOOL *)a5;
- (BOOL)shouldTrackAdditionalInitialSyncDatesForScope:(id)a3;
- (BOOL)storeBusyState:(int64_t)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeEstimatedSize:(unint64_t)a3 estimatedAssetCount:(unint64_t)a4 forScope:(id)a5 error:(id *)a6;
- (BOOL)storeLastDateOfClearedPushRepository:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeRewindSyncAnchors:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeScopeChange:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeScopeListSyncAnchor:(id)a3 error:(id *)a4;
- (BOOL)storeSupervisorInfo:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)storeTransientSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)supportedFeatureVersionIsMostRecentForScope:(id)a3;
- (BOOL)updateFlags:(id)a3 forScope:(id)a4 error:(id *)a5;
- (BOOL)updateInitialSyncTransportGroupEstimatedSize:(unint64_t)a3 assetCount:(unint64_t)a4 forScope:(id)a5 error:(id *)a6;
- (BOOL)updateScopeWithChange:(id)a3 error:(id *)a4;
- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)a3 error:(id *)a4;
- (BOOL)valueForFlag:(int64_t)a3 forScope:(id)a4;
- (CPLEngineScopeStorage)initWithEngineStore:(id)a3 name:(id)a4;
- (Class)classOfRecordsForInitialQueryForScope:(id)a3;
- (id)_createScopeFromScopeChange:(id)a3 error:(id *)a4;
- (id)_realScopeIdentifiersFromScopeIdentifiers:(id)a3;
- (id)_scopeChangeToBePulledByClientForScope:(id)a3;
- (id)_scopeWithIdentifier:(id)a3;
- (id)activationDateForScope:(id)a3;
- (id)createScopeWithIdentifier:(id)a3 scopeType:(int64_t)a4 flags:(int64_t)a5 transportScope:(id)a6 error:(id *)a7;
- (id)deleteDateForScope:(id)a3;
- (id)disabledDateForScope:(id)a3;
- (id)downloadTransportGroupForScope:(id)a3;
- (id)enumeratorForDeletedStagedScopes;
- (id)enumeratorForScopesNeedingToPullChangesFromTransport;
- (id)enumeratorForScopesNeedingToPushChangesToTransport;
- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport;
- (id)enumeratorForScopesNeedingToUpdateTransport;
- (id)enumeratorForScopesNeedingToUploadComputeState;
- (id)enumeratorForScopesNeedingUpdateFromTransport;
- (id)enumeratorForScopesWithMingling;
- (id)filterForExcludedScopeIdentifiers:(id)a3;
- (id)filterForIncludedScopeIdentifiers:(id)a3;
- (id)flagsForScope:(id)a3;
- (id)initialMetadataDownloadDateForScope:(id)a3;
- (id)initialMetadataQueriesDateForScope:(id)a3;
- (id)initialMingleDateForScope:(id)a3;
- (id)initialSyncAnchorForScope:(id)a3;
- (id)lastDateOfClearedPushRepositoryForScope:(id)a3;
- (id)lastDateOfCompletedPullFromTransportForScope:(id)a3;
- (id)mostCurrentChangesSyncAnchorForScope:(id)a3;
- (id)primaryScope;
- (id)remainingClassesForInitialQueryForScope:(id)a3;
- (id)rewindSyncAnchorsForScope:(id)a3;
- (id)scopeChangeForScope:(id)a3;
- (id)scopeChangesNeedingToBePulledByClientWithMaximumCount:(unint64_t)a3;
- (id)scopeForSharingScope:(id)a3;
- (id)scopeIdentifierForCloudScopeIndex:(int64_t)a3;
- (id)scopeIdentifierForLocalScopeIndex:(int64_t)a3;
- (id)scopeListSyncAnchor;
- (id)scopeWithCloudScopeIndex:(int64_t)a3;
- (id)scopeWithLocalScopeIndex:(int64_t)a3;
- (id)scopeWithStableIndex:(int64_t)a3;
- (id)scopedIdentifierForCloudScopedIdentifier:(id)a3;
- (id)scopedIdentifierForLocalScopedIdentifier:(id)a3;
- (id)sharingScopeForScope:(id)a3;
- (id)stagingScopeForScope:(id)a3;
- (id)status;
- (id)statusDictionaryForScope:(id)a3;
- (id)supervisorInfoForScope:(id)a3;
- (id)syncAnchorForScope:(id)a3;
- (id)transientSyncAnchorForScope:(id)a3;
- (id)transportScopeForScope:(id)a3;
- (id)updatedScopeFilter:(id)a3;
- (id)uploadTransportGroupForScope:(id)a3;
- (id)validCloudScopeIndexes;
- (id)validLocalScopeIndexes;
- (int64_t)busyStateForScope:(id)a3;
- (int64_t)indexForCloudScopeIdentifier:(id)a3;
- (int64_t)indexForLocalScopeIdentifier:(id)a3;
- (int64_t)pullFromTransportTaskForScope:(id)a3;
- (int64_t)pushToTransportTaskForScope:(id)a3;
- (int64_t)stableScopeIndexForScopeIdentifier:(id)a3;
- (int64_t)transportUpdateTaskForScope:(id)a3;
- (int64_t)uploadComputeStateTaskForScope:(id)a3;
- (unint64_t)_indexOfCurrentClassForInitialQueriesForScope:(id)a3;
- (unint64_t)estimatedAssetCountForScope:(id)a3;
- (unint64_t)estimatedSizeForScope:(id)a3;
- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)a3;
- (void)_checkSyncManagerPriorityBoost;
- (void)_clearScopeCache;
- (void)_fixGlobalStatus;
- (void)_notifyScopeObserversForScope:(id)a3 flagsUpdate:(id)a4;
- (void)_removeBrokenScope:(id)a3;
- (void)_resetGlobalsForMainScope;
- (void)_updateGlobalStatusWithScopeChange:(id)a3 forScope:(id)a4;
- (void)addScopeFlagsObserver:(id)a3 withIdentifier:(id)a4;
- (void)beginCreatingScopeWithIdentifier:(id)a3;
- (void)endCreatingScopeWithIdentifier:(id)a3;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineScopeStorage

- (id)enumeratorForScopesNeedingToUpdateTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesNeedingToUpdateTransport];

  return v3;
}

- (id)scopeListSyncAnchor
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 scopeListSyncAnchor];

  return v3;
}

- (BOOL)hasStagedSyncAnchors
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasStagedSyncAnchors];

  return v3;
}

- (void)writeTransactionDidSucceed
{
  v54 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = CPLEngineScopeStorage;
  [(CPLEngineStorage *)&v50 writeTransactionDidSucceed];
  if (self->_shouldResetGlobalsForMainScope)
  {
    [(CPLEngineScopeStorage *)self _resetGlobalsForMainScope];
    self->_shouldResetGlobalsForMainScope = 0;
  }

  if (self->_scheduleATransportUpdate)
  {
    v3 = [(CPLEngineStorage *)self engineStore];
    v4 = [v3 engineLibrary];
    v5 = [v4 scheduler];
    [v5 noteTransportNeedsUpdate];

    self->_scheduleATransportUpdate = 0;
  }

  if (self->_scheduleAScopeUpdate)
  {
    v6 = [(CPLEngineStorage *)self engineStore];
    v7 = [v6 engineLibrary];
    v8 = [v7 scheduler];
    [v8 noteScopeNeedsUpdate];

    self->_scheduleAScopeUpdate = 0;
  }

  if (self->_schedulePushHighPriorityToTransportChangeTypes)
  {
    v9 = [(CPLEngineStorage *)self engineStore];
    v10 = [v9 engineLibrary];
    v11 = [v10 scheduler];
    [v11 noteScopeNeedsToPushHighPriorityToTransport];

    self->_schedulePushHighPriorityToTransportChangeTypes = 0;
  }

  if (self->_schedulePushToTransportChangeTypes)
  {
    v12 = [(CPLEngineStorage *)self engineStore];
    v13 = [v12 engineLibrary];
    v14 = [v13 scheduler];
    [v14 noteScopeNeedsToPushToTransportWithChangeTypes:self->_schedulePushToTransportChangeTypes];

    self->_schedulePushToTransportChangeTypes = 0;
  }

  if (self->_schedulePullFromTransport)
  {
    v15 = [(CPLEngineStorage *)self engineStore];
    v16 = [v15 engineLibrary];
    v17 = [v16 scheduler];
    [v17 noteScopeNeedsToPullFromTransport];

    self->_schedulePullFromTransport = 0;
  }

  if (self->_schedulePullFromClient)
  {
    v18 = [(CPLEngineStorage *)self engineStore];
    v19 = [v18 engineLibrary];
    [v19 notifyAttachedObjectsPullQueueIsFull];

    self->_schedulePullFromClient = 0;
  }

  if (self->_shouldChangeSyncManagerPriorityBoost)
  {
    v20 = [(CPLEngineStorage *)self engineStore];
    v21 = [v20 engineLibrary];
    v22 = [v21 syncManager];
    [v22 setBoostPriority:self->_syncManagerPriorityBoost];

    self->_shouldChangeSyncManagerPriorityBoost = 0;
  }

  if (self->_clearSomeScopeMightHaveToBePulledByClient)
  {
    self->_someScopeMightHaveToBePulledByClient = 0;
    self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  }

  scopesToRemoveFromBrokenScopes = self->_scopesToRemoveFromBrokenScopes;
  if (scopesToRemoveFromBrokenScopes)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = scopesToRemoveFromBrokenScopes;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v47;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v46 + 1) + 8 * i);
          v30 = [(CPLEngineStorage *)self engineStore];
          v31 = [v30 engineLibrary];
          v32 = [v31 syncManager];
          [v32 removeBrokenScope:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v26);
    }

    v33 = self->_scopesToRemoveFromBrokenScopes;
    self->_scopesToRemoveFromBrokenScopes = 0;
  }

  if (self->_shouldUpdateGlobalStatusAtEndOfTransaction)
  {
    self->_shouldUpdateGlobalStatusAtEndOfTransaction = 0;
    v34 = [(CPLEngineStorage *)self engineStore];
    v35 = [v34 engineLibrary];

    [v35 updateAssetCountsFromServer:self->_assetCountsToUpdate];
    [v35 setServerFeatureCompatibleVersion:self->_serverFeatureCompatibleVersionToUpdate];
    self->_serverFeatureCompatibleVersionToUpdate = 0;
    assetCountsToUpdate = self->_assetCountsToUpdate;
    self->_assetCountsToUpdate = 0;
  }

  if ([(NSCountedSet *)self->_scopeIdentifiersBeingCreated count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v38 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = [(NSCountedSet *)self->_scopeIdentifiersBeingCreated allObjects];
        v40 = [v39 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v52 = v40;
        _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_ERROR, "Missing calls to -endCreatingScopeWithIdentifier: for %@", buf, 0xCu);
      }
    }

    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    v43 = [(NSCountedSet *)self->_scopeIdentifiersBeingCreated allObjects];
    v44 = [v43 componentsJoinedByString:{@", "}];
    [v41 handleFailureInMethod:a2 object:self file:v42 lineNumber:1396 description:{@"Missing calls to -endCreatingScopeWithIdentifier: for %@", v44}];

    abort();
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldDropAllUploadsForScope:(id)a3 dropReason:(id *)a4 shouldQuarantineRecords:(BOOL *)a5
{
  v8 = a3;
  if (CPLIsInTestReadonlyMode())
  {
    v9 = 0;
    v10 = @"test read-only mode";
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = [(CPLEngineStorage *)self engineStore];
  v12 = [v11 engineLibrary];
  v13 = [v12 iCloudLibraryClientVersionTooOld];

  if (v13)
  {
    v9 = 0;
    v10 = @"client version is too old";
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v14 = [(CPLEngineScopeStorage *)self flagsForScope:v8];
  v15 = [v14 flags];

  if ((v15 & 4) != 0)
  {
    v9 = 0;
    v10 = @"scope has been deleted";
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v15 & 0x10) != 0)
  {
    v9 = 0;
    v10 = @"scope has been de-activated";
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v15)
  {
    v9 = 1;
    v10 = @"scope is read-only";
    if (!a5)
    {
LABEL_18:
      *a4 = v10;
      v16 = 1;
      goto LABEL_19;
    }

LABEL_17:
    *a5 = v9;
    goto LABEL_18;
  }

  if ((v15 & 8) != 0)
  {
    v9 = 1;
    v10 = @"scope has been disabled";
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)initialMingleDateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 initialMingleDateForScope:v4];

  return v6;
}

- (BOOL)setScope:(id)a3 hasCompletedInitialMinglingWithError:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [MEMORY[0x1E695DF00] date];
  LOBYTE(a4) = [v7 storeInitialMingleDate:v8 forScope:v6 error:a4];

  return a4;
}

- (id)initialMetadataDownloadDateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 initialMetadataDownloadDateForScope:v4];

  return v6;
}

- (id)initialMetadataQueriesDateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 initialMetadataQueriesDateForScope:v4];

  return v6;
}

- (id)activationDateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 activationDateForScope:v4];

  return v6;
}

- (BOOL)shouldTrackAdditionalInitialSyncDatesForScope:(id)a3
{
  v3 = [(CPLEngineScopeStorage *)self activationDateForScope:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)addScopeFlagsObserver:(id)a3 withIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_scopeObservers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeObservers = self->_scopeObservers;
    self->_scopeObservers = v7;
  }

  v9 = [v11 copy];
  v10 = MEMORY[0x1E128EBA0]();
  [(NSMutableDictionary *)self->_scopeObservers setObject:v10 forKeyedSubscript:v6];
}

- (BOOL)resetDidCheckAssetWithServerWhenOverQuotaForScope:(id)a3 error:(id *)a4
{
  v4 = [a3 scopeIdentifier];
  v5 = [v4 isEqualToString:@"PrimarySync"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:@"_CPLLastAssetCheckOverQuotaDateForPrimarySync"];
  }

  return 1;
}

- (BOOL)noteDidCheckAssetWithServerWhenOverQuotaForScope:(id)a3 error:(id *)a4
{
  v4 = [a3 scopeIdentifier];
  v5 = [v4 isEqualToString:@"PrimarySync"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [MEMORY[0x1E695DF00] date];
    [v6 setObject:v7 forKey:@"_CPLLastAssetCheckOverQuotaDateForPrimarySync"];
  }

  return 1;
}

- (BOOL)shouldCheckAssetsWithServerWhenOverQuotaForScope:(id)a3
{
  v4 = [a3 scopeIdentifier];
  v5 = [v4 isEqualToString:@"PrimarySync"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 objectForKey:@"_CPLLastAssetCheckOverQuotaDateForPrimarySync"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v7)
      {
        v8 = [MEMORY[0x1E695E000] standardUserDefaults];
        v9 = [v8 objectForKey:@"CPLMinimumIntervalBetweenOverQuotaRechecks"];

        if (v9)
        {
          [v9 doubleValue];
          v11 = v10;
        }

        else
        {
          v13 = [(CPLEngineStorage *)self engineStore];
          v14 = [v13 engineLibrary];
          v15 = [v14 configuration];
          v16 = [v15 objectForKeyedSubscript:@"over_quota.minimum_interval_between_rechecks.seconds"];

          if (v16)
          {
            [v16 doubleValue];
            v11 = v17;
          }

          else
          {
            v11 = 604800.0;
          }
        }

        [v7 timeIntervalSinceNow];
        v19 = -v18;

        if (v11 > v19)
        {
          v12 = 0;
          goto LABEL_14;
        }
      }
    }

    else
    {

      v7 = 0;
    }

    v12 = 1;
LABEL_14:

    return v12;
  }

  return 1;
}

- (void)endCreatingScopeWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (([(NSCountedSet *)self->_scopeIdentifiersBeingCreated containsObject:?]& 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        *buf = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to call %@ for %@ too many times", buf, 0x16u);
      }
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    v10 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:2835 description:{@"Trying to call %@ for %@ too many times", v10, v11}];

    abort();
  }

  [(NSCountedSet *)self->_scopeIdentifiersBeingCreated removeObject:v11];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginCreatingScopeWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = v5;
  if (!self->_scopeIdentifiersBeingCreated)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    scopeIdentifiersBeingCreated = self->_scopeIdentifiersBeingCreated;
    self->_scopeIdentifiersBeingCreated = v6;

    v5 = v13;
  }

  v8 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:v5];

  if (v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v13;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Begin creation of %@ but it is already present", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:2829 description:{@"Begin creation of %@ but it is already present", v13}];

    abort();
  }

  [(NSCountedSet *)self->_scopeIdentifiersBeingCreated addObject:v13];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)mostCurrentChangesSyncAnchorForScope:(id)a3
{
  v4 = a3;
  if ([(CPLEngineScopeStorage *)self classOfRecordsForInitialQueryForScope:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CPLEngineStorage *)self platformObject];
    v5 = [v6 transientSyncAnchorForScope:v4];

    if (!v5)
    {
      v9 = 0;
      v7 = [(CPLEngineStorage *)self platformObject];
      v5 = [v7 syncAnchorForScope:v4 isCommitted:&v9];
    }
  }

  return v5;
}

- (id)supervisorInfoForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 supervisorInfoForScope:v4];

  return v6;
}

- (BOOL)storeSupervisorInfo:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 storeSupervisorInfo:v9 forScope:v8 error:a5];

  return a5;
}

- (int64_t)busyStateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 busyStateForScope:v4];

  return v6;
}

- (BOOL)storeBusyState:(int64_t)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 storeBusyState:a3 forScope:v8 error:a5];

  if (v10)
  {
    v11 = [v8 scopeIdentifier];
    v12 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = [(CPLEngineStorage *)self engineStore];
      v15 = [v14 engineLibrary];
      [v15 setBusyState:a3];
    }
  }

  return v10;
}

- (BOOL)addRewindSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CPLEngineStorage *)self platformObject];
  v11 = [v10 rewindSyncAnchorsForScope:v9];

  v12 = v11;
  v13 = v12;
  if (v12)
  {
    if ([v12 containsObject:v8])
    {
      v14 = 1;
      v15 = v13;
      goto LABEL_11;
    }

    v15 = [v13 mutableCopy];
    [v15 addObject:v8];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
  }

  if (v15 == v13)
  {
    v14 = 1;
  }

  else
  {
    v16 = [(CPLEngineStorage *)self platformObject];
    v17 = [v16 storeRewindSyncAnchors:v15 forScope:v9 error:a5];

    if (v17)
    {
      v14 = [(CPLEngineScopeStorage *)self setScopeHasChangesToPullFromTransport:v9 error:a5];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_11:

  return v14;
}

- (BOOL)storeRewindSyncAnchors:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 storeRewindSyncAnchors:v9 forScope:v8 error:a5];

  return a5;
}

- (id)rewindSyncAnchorsForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 rewindSyncAnchorsForScope:v4];

  return v6;
}

- (id)stagingScopeForScope:(id)a3
{
  v4 = a3;
  if ([(CPLEngineScopeStorage *)self valueForFlag:64 forScope:v4])
  {
    v5 = [(CPLEngineStorage *)self platformObject];
    v6 = [v5 stagingScopeForScope:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)scopeForSharingScope:(id)a3
{
  v4 = a3;
  if (([v4 scopeType] - 6) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v6 = [(CPLEngineStorage *)self engineStore];
    v7 = [v6 sharingScopeIdentifier];

    if (v7 && ([v4 scopeIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", v7), v8, v9))
    {
      v10 = [(CPLEngineScopeStorage *)self primaryScope];
      if ([(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v10]|| [(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v4])
      {
        v5 = 0;
      }

      else
      {
        v5 = v10;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sharingScopeForScope:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 scopeType] != 1)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 sharingScopeIdentifier];

  if (!v6 || ([v4 scopeIdentifier], v7 = objc_claimAutoreleasedReturnValue(), -[CPLEngineStorage mainScopeIdentifier](self, "mainScopeIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, !v9))
  {
    v10 = [(CPLEngineScopeStorage *)self flagsForScope:v4];
    if (([v10 valueForFlag:4] & 1) == 0 && objc_msgSend(v10, "valueForFlag:", 16))
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = [(CPLEngineScopeStorage *)self enumeratorForScopesIncludeInactive:1];
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v22 = v6;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v18 = [v4 scopeIdentifier];
            if ([(CPLEngineScopeStorage *)self _isValidSharingScope:v17 forScopeIdentifier:v18])
            {
              v19 = [(CPLEngineScopeStorage *)self _isAvailableSharingScope:v17];

              if (v19)
              {
                v11 = v17;
                goto LABEL_22;
              }
            }

            else
            {
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
        v11 = 0;
LABEL_22:
        v6 = v22;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v10 = [(CPLEngineScopeStorage *)self scopeWithIdentifier:v6];
  if (![(CPLEngineScopeStorage *)self _isAvailableSharingScope:v10])
  {
LABEL_21:
    v11 = 0;
    goto LABEL_25;
  }

  v11 = v10;
LABEL_25:

LABEL_26:
  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)_isAvailableSharingScope:(void *)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [a1 flagsForScope:v3];
    v5 = 1;
    if ([v6 valueForFlag:4])
    {
      v7 = [a1 stagingScopeForScope:v4];

      if (!v7)
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (BOOL)doesScopeAllowCourtesyMingling:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 sharingScopeIdentifier];

  if (v6)
  {
    v7 = [v4 scopeIdentifier];
    v8 = [v7 isEqualToString:v6];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)updatedScopeFilter:(id)a3
{
  v5 = a3;
  v6 = [v5 includedScopeIdentifiers];
  if ([v6 count])
  {
    v7 = [(CPLEngineScopeStorage *)self _realScopeIdentifiersFromScopeIdentifiers:v6];
    if (v6 != v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Unexpected new scope identifiers list", v14, 2u);
          }
        }

        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
        [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:2658 description:@"Unexpected new scope identifiers list"];

        abort();
      }

      if (([v6 isEqualToSet:v7] & 1) == 0)
      {
        v8 = [(CPLEngineStorage *)self platformObject];
        v9 = [v8 filterForIncludedScopeIdentifiers:v7];

        v5 = v9;
      }
    }
  }

  return v5;
}

- (id)filterForExcludedScopeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 filterForExcludedScopeIdentifiers:v4];

  return v6;
}

- (id)filterForIncludedScopeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [(CPLEngineScopeStorage *)self _realScopeIdentifiersFromScopeIdentifiers:v4];

  v7 = [v5 filterForIncludedScopeIdentifiers:v6];

  return v7;
}

- (id)_realScopeIdentifiersFromScopeIdentifiers:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 sharingScopeIdentifier];

  if (v6)
  {
    v7 = [(CPLEngineScopeStorage *)self primaryScope];
    if (!v7)
    {
LABEL_16:

      goto LABEL_17;
    }

    v8 = [(CPLEngineScopeStorage *)self sharingScopeForScope:v7];
    if (!v8)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(CPLEngineStorage *)self mainScopeIdentifier];
      if ([v4 containsObject:v9])
      {
        v10 = [v8 scopeIdentifier];
        v11 = [v4 containsObject:v10];

        if ((v11 & 1) == 0)
        {
          v12 = [v8 scopeIdentifier];
          v13 = [v4 arrayByAddingObject:v12];
LABEL_12:
          v16 = v13;

LABEL_15:
          v4 = v16;
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = v7;
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = v4;
        v19 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v33;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v33 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v32 + 1) + 8 * i);
              [v16 addObject:{v24, v30}];
              v25 = [(CPLEngineStorage *)self mainScopeIdentifier];
              v26 = [v24 isEqualToString:v25];

              if (v26)
              {
                if ((v21 & 1) == 0)
                {
                  v27 = [v8 scopeIdentifier];
                  [v16 addObject:v27];
                }

                v21 = 1;
              }

              else
              {
                v28 = [v8 scopeIdentifier];
                v29 = [v24 isEqualToString:v28];

                v21 |= v29;
              }
            }

            v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v20);
        }

        v7 = v30;
        goto LABEL_15;
      }

      v9 = [(CPLEngineStorage *)self mainScopeIdentifier];
      if ([v4 containsObject:v9])
      {
        v14 = [v8 scopeIdentifier];
        v15 = [v4 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          v12 = [v8 scopeIdentifier];
          v13 = [v4 setByAddingObject:v12];
          goto LABEL_12;
        }

LABEL_14:
        v16 = v4;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)storeScopeListSyncAnchor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 storeScopeListSyncAnchor:v6 error:a4];

  if (!v6 && v8)
  {
    self->_someScopeMightHaveToBePulledByClient = 1;
    self->_clearSomeScopeMightHaveToBePulledByClient = 0;
    self->_schedulePullFromClient = 1;
  }

  return v8;
}

- (BOOL)shouldAutoactivateScopeWithIdentifier:(id)a3 scopeType:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![CPLScopeChange shouldAutoActivateScopeWithType:a4])
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if (CPLAllowsInactiveSharedLibraryScope_onceToken != -1)
  {
    dispatch_once(&CPLAllowsInactiveSharedLibraryScope_onceToken, &__block_literal_global_5_24591);
  }

  v7 = 1;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4 && (CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope & 1) == 0)
  {
    v8 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v9 = [(CPLEngineScopeStorage *)self _isValidSharingScopeIdentifier:v6 scopeType:a4 forScopeIdentifier:v8];

    if (v9)
    {
      v10 = [(CPLEngineStorage *)self engineStore];
      v11 = [v10 sharingScopeIdentifier];

      if (v11 && ([v11 isEqualToString:v6] & 1) == 0)
      {
        if (_CPLSilentLogging)
        {
          v7 = 0;
          goto LABEL_22;
        }

        v12 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543618;
          v17 = v6;
          v18 = 2114;
          v19 = v11;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Won't auto-activate %{public}@ as %{public}@ is already in use", &v16, 0x16u);
        }
      }

      else
      {
        v12 = [(CPLEngineScopeStorage *)self primaryScope];
        if (v12 && ![(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v12])
        {
          goto LABEL_21;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138543362;
            v17 = v6;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Won't auto-activate %{public}@ as iCPL is off", &v16, 0xCu);
          }
        }
      }

      v7 = 0;
LABEL_21:

LABEL_22:
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)deactivateScope:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self flagsForScope:v6];
  if ([v7 valueForFlag:16])
  {
    v8 = 1;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Deactivating %@", &v12, 0xCu);
      }
    }

    [v7 setValue:1 forFlag:16];
    if ([(CPLEngineScopeStorage *)self updateFlags:v7 forScope:v6 error:a4])
    {
      v8 = [(CPLEngineScopeStorage *)self _forceClientToPullScopeIfNecessary:v6 error:a4];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)activateScope:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self flagsForScope:v6];
  if ([v7 valueForFlag:16])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Activating %@", &v12, 0xCu);
      }
    }

    [v7 setValue:0 forFlag:16];
    v9 = [(CPLEngineScopeStorage *)self updateFlags:v7 forScope:v6 error:a4]&& [(CPLEngineScopeStorage *)self setTransportScope:0 forScope:v6 error:a4]&& [(CPLEngineScopeStorage *)self _forceClientToPullScopeIfNecessary:v6 error:a4];
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_forceClientToPullScopeIfNecessary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self engineStore];
  v8 = [v7 libraryOptions];

  v9 = (v8 & 0x400) == 0 || [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:v6 error:a4];
  return v9;
}

- (BOOL)disablePrimaryScopeWithError:(id *)a3
{
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 libraryOptions];

  if (v6)
  {
    v9 = [(CPLEngineStorage *)self platformObject];
    v10 = [v9 primaryScope];

    if (v10)
    {
      v8 = [(CPLEngineScopeStorage *)self deactivateScope:v10 error:a3];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Client tried to disable main scope manually while the option is not set", v12, 2u);
      }
    }

    if (a3)
    {
      [CPLErrors incorrectParametersErrorForParameter:@"libraryOptions"];
      *a3 = v8 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (BOOL)enablePrimaryScopeWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 libraryOptions];

  if (v6)
  {
    v9 = [(CPLEngineStorage *)self platformObject];
    v10 = [v9 primaryScope];

    if (!v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(CPLEngineStorage *)self mainScopeIdentifier];
          v21 = 138543362;
          v22 = v13;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Creating %{public}@", &v21, 0xCu);
        }
      }

      v14 = [(CPLEngineStorage *)self mainScopeIdentifier];
      v15 = [(CPLEngineScopeStorage *)self createScopeWithIdentifier:v14 scopeType:1 flags:0 transportScope:0 error:a3];

      v10 = 0;
      if (v15)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if ([v10 scopeType]== 1)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_34;
      }

      v11 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Activating %@", &v21, 0xCu);
      }
    }

    else
    {
      if ([v10 scopeType])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v21 = 138412290;
            v22 = v10;
            _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Trying to enable main scope %@ but it is not a library", &v21, 0xCu);
          }
        }

        if (a3)
        {
          +[CPLErrors unknownError];
          *a3 = v8 = 0;
LABEL_37:

          goto LABEL_38;
        }

        goto LABEL_36;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [CPLScopeChange descriptionForScopeType:1];
          v21 = 138412546;
          v22 = v10;
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Found main scope %@ which has not been identified yet - forcing scope type to %@", &v21, 0x16u);
        }
      }

      if (![(CPLEngineScopeStorage *)self _setScopeType:1 forScope:v10 error:a3])
      {
        goto LABEL_36;
      }

      v11 = v10;
      v10 = [v10 copyWithScopeType:1];
    }

LABEL_34:
    if ([(CPLEngineScopeStorage *)self activateScope:v10 error:a3])
    {
LABEL_35:
      v8 = [(CPLEngineScopeStorage *)self _activateSharedScopeIfPresentWithError:a3];
      goto LABEL_37;
    }

LABEL_36:
    v8 = 0;
    goto LABEL_37;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Client tried to enable main scope manually while the option is not set", &v21, 2u);
    }
  }

  if (a3)
  {
    [CPLErrors incorrectParametersErrorForParameter:@"libraryOptions"];
    *a3 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_38:
  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_activateSharedScopeIfPresentWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 sharingScopeIdentifier];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = 1;
    v8 = [(CPLEngineScopeStorage *)self enumeratorForScopesIncludeInactive:1, 0];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if (([v13 scopeType] & 0xFFFFFFFFFFFFFFFELL) == 4)
          {
            v14 = [v13 scopeIdentifier];
            v15 = -[CPLEngineScopeStorage shouldAutoactivateScopeWithIdentifier:scopeType:](self, "shouldAutoactivateScopeWithIdentifier:scopeType:", v14, [v13 scopeType]);

            if (v15)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v16 = __CPLStorageOSLogDomain_8656();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v24 = v13;
                  _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Auto-activating %@ after iCPL has been turned on", buf, 0xCu);
                }
              }

              v7 = [(CPLEngineScopeStorage *)self activateScope:v13 error:a3];
              goto LABEL_18;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v7 = 1;
    }

LABEL_18:
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)primaryScope
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 primaryScope];

  return v3;
}

- (id)statusDictionaryForScope:(id)a3
{
  v76[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v4 scopeType]);
  [v5 setObject:v6 forKeyedSubscript:@"scope type"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "localIndex")}];
  v76[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "cloudIndex")}];
  v76[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "stableIndex")}];
  v76[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
  [v5 setObject:v10 forKeyedSubscript:@"indexes"];

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __50__CPLEngineScopeStorage_statusDictionaryForScope___block_invoke;
  v74[3] = &unk_1E861CA88;
  v72 = v5;
  v75 = v72;
  v11 = MEMORY[0x1E128EBA0](v74);
  v12 = [(CPLEngineStorage *)self platformObject];
  v13 = [(CPLEngineStorage *)self engineStore];
  v14 = [v13 engineLibrary];
  v15 = [v14 transport];

  v16 = [v4 creationDate];
  (v11)[2](v11, @"creation date", v16);

  v17 = [v12 flagsForScope:v4];
  v18 = [v17 arrayDescription];

  if ([v18 count])
  {
    (v11)[2](v11, @"flags", v18);
  }

  v19 = [v12 busyStateForScope:v4];
  if (v19)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    (v11)[2](v11, @"busyState", v20);
  }

  v21 = [v12 transportScopeForScope:v4];
  v70 = v21;
  if (v21)
  {
    v22 = [v15 scopeNameForTransportScope:v21];
    (v11)[2](v11, @"zone", v22);
  }

  else
  {
    (v11)[2](v11, @"zone", @"not fetched yet");
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v12 doesScopeNeedToPushChangesToTransport:v4])
  {
    [v23 addObject:@"push-to-transport"];
  }

  if ([v12 doesScopeNeedToPullChangesFromTransport:v4])
  {
    [v23 addObject:@"pull-from-transport"];
  }

  if ([v12 doesScopeNeedToBePulledByClient:v4])
  {
    [v23 addObject:@"client-must-pull"];
  }

  if ([v12 doesScopeNeedToUpdateTransport:v4])
  {
    [v23 addObject:@"must-update-transport"];
  }

  if ([v12 doesScopeNeedToUploadComputeState:v4])
  {
    [v23 addObject:@"upload-compute-states"];
  }

  if ([v23 count])
  {
    (v11)[2](v11, @"todo", v23);
  }

  v69 = v23;
  v71 = v18;
  v24 = [v12 disabledDateForScope:v4];
  (v11)[2](v11, @"disabled date", v24);

  v25 = [v12 deleteDateForScope:v4];
  (v11)[2](v11, @"delete date", v25);

  v26 = [v12 initialSyncDateForScope:v4];
  v68 = v26;
  if (v26)
  {
    (v11)[2](v11, @"initial sync", v26);
  }

  else
  {
    v27 = [(CPLEngineScopeStorage *)self estimatedSizeForScope:v4];
    v28 = [(CPLEngineScopeStorage *)self estimatedAssetCountForScope:v4];
    if (v27 | v28)
    {
      v29 = v28;
      v30 = self;
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v32 = [MEMORY[0x1E696AAF0] stringFromByteCount:v27 countStyle:1];
      v33 = v31;
      self = v30;
      v34 = [v33 initWithFormat:@"%@ for %lu assets", v32, v29];
      (v11)[2](v11, @"init. est. size", v34);
    }
  }

  v67 = [v12 initialDownloadDateForScope:v4];
  (v11[2])(v11, @"initial client download");
  v66 = [v12 activationDateForScope:v4];
  (v11[2])(v11, @"activation");
  v65 = [v12 initialMetadataQueriesDateForScope:v4];
  (v11[2])(v11, @"initial metadata queries");
  v64 = [v12 initialMetadataDownloadDateForScope:v4];
  (v11[2])(v11, @"initial metadata download");
  v35 = [(CPLEngineScopeStorage *)self sharingScopeForScope:v4];
  if (v35)
  {
    v36 = [v12 initialMetadataDownloadDateForScope:v35];
    (v11)[2](v11, @"initial shared metadata download", v36);
  }

  v62 = [v12 initialMingleDateForScope:v4];
  (v11[2])(v11, @"initial mingle");
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CPLEngineScopeStorage supportedFeatureVersionInLastSyncForScope:](self, "supportedFeatureVersionInLastSyncForScope:", v4)}];
  (v11)[2](v11, @"last supported feature version", v37);

  v38 = [v12 lastScopeChangeUpdateDateForScope:v4];
  v61 = v38;
  if (v38)
  {
    (v11)[2](v11, @"scope info", v38);
  }

  else
  {
    v39 = [v12 scopeChangeForScope:v4];
    v40 = [v39 libraryInfo];

    if (v40)
    {
      v41 = @"needs update";
    }

    else
    {
      v41 = @"none";
    }

    (v11)[2](v11, @"scope info", v41);
  }

  v63 = v35;
  v73 = 0;
  v42 = [v12 syncAnchorForScope:v4 isCommitted:&v73];
  if (v42)
  {
    v43 = v15;
    v44 = [v15 simpleDescriptionForSyncAnchor:v42];
    v45 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v73)
    {
      v46 = "";
    }

    else
    {
      v46 = " uncommitted";
    }

    v47 = [v45 initWithFormat:@" %@%s", v44, v46];
    (v11)[2](v11, @"anch", v47);
  }

  else
  {
    v43 = v15;
    (v11)[2](v11, @"anch", @"none");
  }

  v48 = [(CPLEngineScopeStorage *)self remainingClassesForInitialQueryForScope:v4];
  if ([v48 count])
  {
    v49 = [v48 valueForKey:@"description"];
    (v11)[2](v11, @"queries", v49);
  }

  v50 = [v12 transientSyncAnchorForScope:v4];
  if (v50)
  {
    v51 = [v43 simpleDescriptionForSyncAnchor:v50];
    (v11)[2](v11, @"transient", v51);
  }

  v52 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:v4];
  [v52 cplDebugDescription];
  v60 = v43;
  v54 = v53 = self;
  (v11)[2](v11, @"upload group", v54);

  v55 = [(CPLEngineScopeStorage *)v53 downloadTransportGroupForScope:v4];

  v56 = [v55 cplDebugDescription];
  (v11)[2](v11, @"download group", v56);

  v57 = v72;
  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

uint64_t __50__CPLEngineScopeStorage_statusDictionaryForScope___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)a3 error:(id *)a4
{
  if (!a3)
  {
    return 1;
  }

  self->_someScopeMightHaveToBePulledByClient = 1;
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  self->_schedulePullFromClient = 1;
  v6 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v6 upgradeScopesWithNewLibraryOptions:a3 error:a4];

  return a4;
}

- (unint64_t)estimatedAssetCountForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 estimatedAssetCountForScope:v4];

  return v6;
}

- (unint64_t)estimatedSizeForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 estimatedSizeForScope:v4];

  return v6;
}

- (BOOL)storeEstimatedSize:(unint64_t)a3 estimatedAssetCount:(unint64_t)a4 forScope:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 scopeIdentifier];
      v13 = [MEMORY[0x1E696AAF0] stringFromByteCount:a3 countStyle:1];
      v19 = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Updating estimated size for %@ to %@ / %lu assets", &v19, 0x20u);
    }
  }

  v14 = [(CPLEngineStorage *)self platformObject];
  v15 = [v14 storeEstimatedSize:a3 estimatedAssetCount:a4 forScope:v10 error:a6];

  if (v15)
  {
    v16 = [(CPLEngineScopeStorage *)self updateInitialSyncTransportGroupEstimatedSize:a3 assetCount:a4 forScope:v10 error:a6];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)supportedFeatureVersionIsMostRecentForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 supportedFeatureVersionInLastSyncForScope:v4];

  v7 = +[CPLFingerprintScheme supportsEPP];
  v8 = 21;
  if (v7)
  {
    v8 = 22;
  }

  v9 = v6 >= v8;

  return v9;
}

- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)a3 forScope:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Set last supported feature version for %@ to %lu", &v14, 0x16u);
    }
  }

  v10 = [(CPLEngineStorage *)self platformObject];
  v11 = [v10 storeSupportedFeatureVersionInLastSync:a3 forScope:v8 error:a5];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 supportedFeatureVersionInLastSyncForScope:v4];

  return v6;
}

- (id)lastDateOfCompletedPullFromTransportForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 lastDateOfCompletedPullFromTransportForScope:v4];

  return v6;
}

- (BOOL)storeLastDateOfClearedPushRepository:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 storeLastDateOfClearedPushRepository:v9 forScope:v8 error:a5];

  return a5;
}

- (id)lastDateOfClearedPushRepositoryForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 lastDateOfClearedPushRepositoryForScope:v4];

  return v6;
}

- (BOOL)hasFinishedAFullSyncForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasFinishedAFullSyncForScope:v4];

  return v6;
}

- (BOOL)setHasFinishedInitialDownloadForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [MEMORY[0x1E695DF00] date];
  LOBYTE(a4) = [v7 setInitialDownloadDate:v8 forScope:v6 error:a4];

  return a4;
}

- (BOOL)hasFinishedInitialDownloadForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 initialSyncDateForScope:v4];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CPLEngineStorage *)self platformObject];
    v9 = [v8 initialDownloadDateForScope:v4];
    v7 = v9 != 0;
  }

  return v7;
}

- (BOOL)hasFinishedInitialSyncForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 initialSyncDateForScope:v4];

  return v6 != 0;
}

- (id)remainingClassesForInitialQueryForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineScopeStorage *)self _indexOfCurrentClassForInitialQueriesForScope:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = _ClassesForInitialQueries([v4 scopeType]);
    v6 = [v8 subarrayWithRange:{v7, objc_msgSend(v8, "count") - v7}];
  }

  return v6;
}

- (BOOL)resetInitialSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 setInitialSyncAnchor:0 forScope:v6 error:a4];

  if (v8 && (-[CPLEngineStorage platformObject](self, "platformObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 setClassNameOfRecordsForInitialQuery:0 forScope:v6 error:a4], v9, v10))
  {
    v11 = [(CPLEngineStorage *)self platformObject];
    v12 = [v11 setHasFetchedInitialSyncAnchor:0 forScope:v6 error:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)initialSyncAnchorForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 initialSyncAnchorForScope:v4];

  return v6;
}

- (BOOL)setInitialSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 setInitialSyncAnchor:v9 forScope:v8 error:a5];

  return a5;
}

- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasScopeFetchedInitialSyncAnchor:v4];

  return v6;
}

- (BOOL)markInitialQueryIsDoneForRecordsOfClass:(Class)a3 forScope:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = _ClassesForInitialQueries([v8 scopeType]);
  if (![v9 count])
  {
    v21 = 1;
    goto LABEL_21;
  }

  v10 = [(CPLEngineScopeStorage *)self _indexOfCurrentClassForInitialQueriesForScope:v8];
  v11 = [v9 indexOfObject:a3];
  if (v11 != v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = v11;
      v23 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v33 = a3;
        v34 = 2048;
        v35 = v22;
        v36 = 2048;
        v37 = v10;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Incorrect class passed for initial queries %@ (class index %lu instead of %lu)", buf, 0x20u);
      }
    }

    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Incorrect class %@ passed for initial queries", a3];
    if (a5)
    {
      *a5 = [CPLErrors invalidCloudCacheErrorWithReason:v24];
    }

    goto LABEL_20;
  }

  if (v10 + 1 != [v9 count])
  {
    v27 = [v9 objectAtIndex:v10 + 1];
    v28 = [(CPLEngineStorage *)self platformObject];
    v29 = NSStringFromClass(v27);
    v30 = [v28 setClassNameOfRecordsForInitialQuery:v29 forScope:v8 error:a5];

    if (v30)
    {
      v31 = [(CPLEngineStorage *)self platformObject];
      v21 = [v31 storeTransientSyncAnchor:0 forScope:v8 error:a5];

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 scopeIdentifier];
      *buf = 138412290;
      v33 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "All classes have been retrieved as part of the initial queries for %@. Moving to regular changes fetch", buf, 0xCu);
    }
  }

  v14 = [(CPLEngineStorage *)self platformObject];
  v15 = [v14 setClassNameOfRecordsForInitialQuery:&stru_1F57BD298 forScope:v8 error:a5];

  if (!v15 || -[CPLEngineScopeStorage shouldTrackAdditionalInitialSyncDatesForScope:](self, "shouldTrackAdditionalInitialSyncDatesForScope:", v8) && (-[CPLEngineStorage platformObject](self, "platformObject"), v16 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E695DF00] date], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "storeInitialMetadataQueriesDate:forScope:error:", v17, v8, a5), v17, v16, !v18))
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v19 = [(CPLEngineScopeStorage *)self initialSyncAnchorForScope:v8];
  v20 = [(CPLEngineStorage *)self platformObject];
  v21 = [v20 storeTransientSyncAnchor:v19 forScope:v8 error:a5];

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (Class)classOfRecordsForInitialQueryForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineScopeStorage *)self _indexOfCurrentClassForInitialQueriesForScope:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = _ClassesForInitialQueries([v4 scopeType]);
    v6 = [v8 objectAtIndex:v7];
  }

  return v6;
}

- (unint64_t)_indexOfCurrentClassForInitialQueriesForScope:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ClassesForInitialQueries([v4 scopeType]);
  if ([v5 count])
  {
    v6 = [(CPLEngineStorage *)self platformObject];
    v7 = [v6 classNameOfRecordsForInitialQueryForScope:v4];

    if (v7)
    {
      if (![v7 length])
      {
LABEL_17:
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_18;
      }

      v8 = NSClassFromString(v7);
      if (!v8)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v17 = 138412290;
            *&v17[4] = v7;
            v12 = "Unable to find a class named '%@' for initial queries. Marking store as corrupted";
            goto LABEL_14;
          }

LABEL_15:
        }

LABEL_16:
        v13 = [(CPLEngineStorage *)self engineStore];
        v14 = [v13 engineLibrary];
        [v14 reportLibraryCorrupted];

        goto LABEL_17;
      }

      v9 = v8;
      v10 = [v5 indexOfObject:v8];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v17 = 138412290;
            *&v17[4] = v9;
            v12 = "Incorrect class %@ for initial queries. Marking store as corupted";
LABEL_14:
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, v12, v17, 0xCu);
            goto LABEL_15;
          }

          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)disableInitialQueriesForScope:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 scopeIdentifier];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Disabling initial queries for %@. Moving to regular changes fetch", &v17, 0xCu);
    }
  }

  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 setClassNameOfRecordsForInitialQuery:&stru_1F57BD298 forScope:v6 error:a4];

  if (v10 && (-[CPLEngineStorage platformObject](self, "platformObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 storeTransientSyncAnchor:0 forScope:v6 error:a4], v11, v12))
  {
    v13 = [(CPLEngineStorage *)self platformObject];
    v14 = [v13 setHasFetchedInitialSyncAnchor:1 forScope:v6 error:a4];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)storeTransientSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 storeTransientSyncAnchor:v9 forScope:v8 error:a5];

  return a5;
}

- (id)transientSyncAnchorForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 transientSyncAnchorForScope:v4];

  return v6;
}

- (BOOL)hasStagedSyncAnchorForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasStagedSyncAnchorForScope:v4];

  return v6;
}

- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 discardStagedSyncAnchorWithScopeFilter:v6 error:a4];

  return a4;
}

- (BOOL)discardStagedSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 discardStagedSyncAnchorForScope:v6 error:a4];

  return a4;
}

- (BOOL)commitSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 commitSyncAnchorForScope:v6 error:a4];

  return a4;
}

- (BOOL)setSyncAnchor:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 setSyncAnchor:v9 forScope:v8 error:a5];

  return a5;
}

- (id)syncAnchorForScope:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 syncAnchorForScope:v4 isCommitted:&v8];

  return v6;
}

- (BOOL)setDidDropSomeRecordsForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 setDidDropSomeRecordsForScope:v6 error:a4];

  return a4;
}

- (BOOL)didDropSomeRecordsForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 didDropSomeRecordsForScope:v4];

  return v6;
}

- (BOOL)storeScopeChange:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(CPLEngineScopeStorage *)self _doesScopeContributeToGlobalStatus:v9])
  {
    [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:v8 forScope:v9];
  }

  v10 = [v9 scopeIdentifier];
  v11 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [(CPLEngineStorage *)self engineStore];
    v14 = [v13 engineLibrary];

    v15 = [v8 libraryInfo];
    v16 = [v15 accountFlagsData];
    if (v16)
    {
      [v14 updateAccountFlagsData:v16];
    }

    [v14 setICloudLibraryClientVersionTooOld:0];
    [v14 setIsStuckInExitForSharedLibrary:{objc_msgSend(v8, "hasProblematicFormerSharedScope")}];
  }

  v34 = 0;
  v17 = [v8 scopeType];
  if (v17 != [v9 scopeType] && !-[CPLEngineScopeStorage _setScopeType:forScope:error:](self, "_setScopeType:forScope:error:", objc_msgSend(v8, "scopeType"), v9, a5))
  {
    goto LABEL_22;
  }

  v18 = [(CPLEngineStorage *)self platformObject];
  v19 = [v18 storeScopeChange:v8 forScope:v9 scopeChangeHasBeenUpdated:&v34 error:a5];

  if (!v19)
  {
    goto LABEL_22;
  }

  if (v34 == 1)
  {
    v20 = [(CPLEngineStorage *)self platformObject];
    v21 = [v20 flagsForScope:v9];
    v22 = [v21 valueForFlag:0x10000];

    if (!v22)
    {
      goto LABEL_26;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v10;
        v37 = 2112;
        v38 = v8;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Scope change for %@ has been updated, notifying client: %@", buf, 0x16u);
      }
    }

    if ([(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:v9 error:a5])
    {
LABEL_26:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (![v8 isCurrentUserExiting])
      {
        goto LABEL_20;
      }

      v24 = MEMORY[0x1E696AEC0];
      v25 = [v8 scopeIdentifier];
      v26 = [v24 stringWithFormat:@"scope change with current user exiting, scopeIdentifier: %@", v25];
      v27 = [(CPLEngineScopeStorage *)self clearAllQuotaFlagsForMainScopeWithReason:v26 error:a5];

      if (v27)
      {
LABEL_20:
        v28 = [(CPLEngineStorage *)self engineStore];
        v29 = [v28 engineLibrary];
        v30 = [v29 supervisor];
        [v30 scopeStorage:self didUpdateScopeChange:v8 forScope:v9];

        goto LABEL_21;
      }
    }

LABEL_22:
    v31 = 0;
    goto LABEL_23;
  }

LABEL_21:
  v31 = 1;
LABEL_23:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)_updateGlobalStatusWithScopeChange:(id)a3 forScope:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 libraryInfo];
  v9 = [v8 assetCounts];
  v10 = [v9 mutableCopy];

  v40 = v6;
  v11 = v6;
  v12 = self;
  v13 = [v11 libraryInfo];
  v14 = [v13 featureCompatibleVersion];
  v41 = [v14 integerValue];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = [(CPLEngineStorage *)self platformObject];
  v16 = [v15 enumeratorForScopesIncludeInactive:0];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        v22 = [v21 scopeIdentifier];
        v23 = [v7 scopeIdentifier];
        if ([v22 isEqualToString:v23])
        {
        }

        else
        {
          v24 = [(CPLEngineScopeStorage *)v12 _doesScopeContributeToGlobalStatus:v21];

          if (!v24)
          {
            continue;
          }

          v25 = v12;
          v26 = [(CPLEngineStorage *)v12 platformObject];
          v22 = [v26 scopeChangeForScope:v21];

          v27 = [v22 libraryInfo];
          v28 = [v27 assetCounts];
          v29 = v28;
          if (v10)
          {

            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __69__CPLEngineScopeStorage__updateGlobalStatusWithScopeChange_forScope___block_invoke;
            v43[3] = &unk_1E861FF60;
            v10 = v10;
            v44 = v10;
            [(NSDictionary *)v29 enumerateKeysAndObjectsUsingBlock:v43];
            v30 = v44;
            v27 = v29;
          }

          else
          {
            v10 = [(NSDictionary *)v28 mutableCopy];
            v30 = v29;
          }

          v31 = [v22 libraryInfo];
          v32 = [v31 featureCompatibleVersion];
          v33 = [v32 integerValue];

          v34 = v41;
          if (v41 <= v33)
          {
            v34 = v33;
          }

          v41 = v34;
          v12 = v25;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v18);
  }

  assetCountsToUpdate = v12->_assetCountsToUpdate;
  v12->_assetCountsToUpdate = v10;
  v36 = v10;
  v37 = v12;
  v38 = v36;

  v37->_serverFeatureCompatibleVersionToUpdate = v41;
  v37->_shouldUpdateGlobalStatusAtEndOfTransaction = 1;

  v39 = *MEMORY[0x1E69E9840];
}

void __69__CPLEngineScopeStorage__updateGlobalStatusWithScopeChange_forScope___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v12 = [v6 objectForKeyedSubscript:v8];
  v9 = [v12 integerValue];
  v10 = [v7 integerValue];

  v11 = [v5 numberWithInteger:v10 + v9];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];
}

- (BOOL)_doesScopeContributeToGlobalStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = 1;
  }

  else if (([v4 scopeType] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v8 = [(CPLEngineScopeStorage *)self _isValidSharingScope:v4 forScopeIdentifier:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)scopeChangeForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 scopeChangeForScope:v4];

  return v6;
}

- (BOOL)setTransportScope:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  v11 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 scopeIdentifier];
        v30 = 138412290;
        v31 = v14;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "%@ transport scope exists", &v30, 0xCu);
      }
    }

    v15 = [(CPLEngineStorage *)self engineStore];
    v16 = [v15 engineLibrary];
    [v16 setICloudLibraryExists:v8 != 0];
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v17 = [(CPLEngineStorage *)self platformObject];
  v18 = [v17 transportScopeForScope:v9];

  if (!v18)
  {
LABEL_11:

LABEL_12:
    v22 = [(CPLEngineStorage *)self platformObject];
    v23 = [v22 setTransportScope:v8 forScope:v9 error:a5];

    if (v8 || !v23)
    {
      v24 = v23 ^ 1;
      if (!v8)
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0)
      {
        LOBYTE(v23) = 1;
        if ([(CPLEngineScopeStorage *)self doesScopeNeedToUpdateTransport:v9])
        {
          self->_scheduleATransportUpdate = 1;
        }
      }
    }

    else
    {
      self->_scheduleAScopeUpdate = 1;
    }

    goto LABEL_25;
  }

  v19 = [(CPLEngineStorage *)self engineStore];
  v20 = [v19 engineLibrary];
  v21 = [v20 transport];

  if ([v21 isNewTransportScope:v8 compatibleWithOldTransportScope:v18])
  {

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v25 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v21 descriptionForTransportScope:v18];
      v27 = [v21 descriptionForTransportScope:v8];
      v30 = 138412546;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "Trying to change a transport scope %@ to an incompatible one (%@) - ignoring", &v30, 0x16u);
    }
  }

  LOBYTE(v23) = 1;
LABEL_25:

  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)transportScopeForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 transportScopeForScope:v4];

  return v6;
}

- (BOOL)setHasUpdatedScope:(id)a3 fromTransportWithError:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 setHasUpdatedScope:v6 fromTransportWithError:a4];

  return a4;
}

- (BOOL)setScopeNeedsUpdateFromTransport:(id)a3 error:(id *)a4
{
  self->_scheduleAScopeUpdate = 1;
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 setScopeNeedsUpdateFromTransport:v6 error:a4];

  return a4;
}

- (BOOL)clearTransportGroupsForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 storeUploadTransportGroup:0 forScope:v6 error:a4];

  if (v8)
  {
    v9 = [(CPLEngineStorage *)self platformObject];
    v10 = [v9 storeDownloadTransportGroup:0 forScope:v6 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setupAnchorResetTransportGroupForScope:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CPLEngineScopeStorage *)self hasFinishedInitialSyncForScope:v6])
  {
    v7 = [(CPLEngineScopeStorage *)self downloadTransportGroupForScope:v6];
    if (v7)
    {
      v8 = v7;
      v9 = 1;
    }

    else
    {
      v10 = [(CPLEngineStorage *)self engineStore];
      v11 = [v10 engineLibrary];
      v12 = [v11 transport];
      v8 = [v12 createGroupForInitialDownload];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v6 scopeIdentifier];
          v15 = [v8 cplDebugDescription];
          v19 = 138412546;
          v20 = v14;
          v21 = 2112;
          v22 = v15;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Set up anchor reset download transport group for %@ to %@", &v19, 0x16u);
        }
      }

      v16 = [(CPLEngineStorage *)self platformObject];
      v9 = [v16 storeDownloadTransportGroup:v8 forScope:v6 error:a4];
    }
  }

  else
  {
    v9 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setupResetSyncTransportGroupForScope:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CPLEngineScopeStorage *)self hasFinishedInitialSyncForScope:v6])
  {
    v7 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:v6];
    if (v7)
    {
      v8 = v7;
      v9 = 1;
    }

    else
    {
      v10 = [(CPLEngineStorage *)self engineStore];
      v11 = [v10 engineLibrary];
      v12 = [v11 transport];

      v13 = [v12 createGroupForResetSync];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v6 scopeIdentifier];
          v16 = [v13 cplDebugDescription];
          v25 = 138412546;
          v26 = v15;
          v27 = 2112;
          v28 = v16;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Set up reset sync upload transport group for %@ to %@", &v25, 0x16u);
        }
      }

      v17 = [(CPLEngineStorage *)self platformObject];
      v18 = [v17 storeUploadTransportGroup:v13 forScope:v6 error:a4];

      if (v18)
      {
        v8 = [v12 createGroupForInitialDownload];

        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v6 scopeIdentifier];
            v21 = [v8 cplDebugDescription];
            v25 = 138412546;
            v26 = v20;
            v27 = 2112;
            v28 = v21;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Set up reset sync download transport group for %@ to %@", &v25, 0x16u);
          }
        }

        v22 = [(CPLEngineStorage *)self platformObject];
        v9 = [v22 storeDownloadTransportGroup:v8 forScope:v6 error:a4];
      }

      else
      {
        v9 = 0;
        v8 = v13;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)updateInitialSyncTransportGroupEstimatedSize:(unint64_t)a3 assetCount:(unint64_t)a4 forScope:(id)a5 error:(id *)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:v10];
  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 scopeIdentifier];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Updating upload transfer group estimated upload sizes for %@", &v18, 0xCu);
      }
    }

    [v11 setRoughCPLRecordCount:a4];
    [v11 setRoughCPLUploadEstimatedSize:a3];
    v14 = [(CPLEngineStorage *)self platformObject];
    v15 = [v14 storeUploadTransportGroup:v11 forScope:v10 error:a6];
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)setupInitialSyncTransportGroupsForScope:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:v6];
  if (v7)
  {
    v8 = v7;
    if (_CPLSilentLogging)
    {
      v10 = 1;
      goto LABEL_22;
    }

    v9 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Initial upload group has already been set", &v27, 2u);
    }

    v10 = 1;
  }

  else
  {
    v11 = [(CPLEngineStorage *)self engineStore];
    v12 = [v11 engineLibrary];
    v9 = [v12 transport];

    v13 = [v9 createGroupForInitialUpload];
    v14 = [(CPLEngineScopeStorage *)self estimatedSizeForScope:v6];
    v15 = [(CPLEngineScopeStorage *)self estimatedAssetCountForScope:v6];
    if (v14)
    {
      [v13 setRoughCPLUploadEstimatedSize:v14];
    }

    if (v15)
    {
      [v13 setRoughCPLRecordCount:v15];
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v6 scopeIdentifier];
        v18 = [v13 cplDebugDescription];
        v27 = 138412546;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Set up initial upload transport group for %@ to %@", &v27, 0x16u);
      }
    }

    v19 = [(CPLEngineStorage *)self platformObject];
    v20 = [v19 storeUploadTransportGroup:v13 forScope:v6 error:a4];

    if (v20)
    {
      v8 = [v9 createGroupForInitialDownload];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v6 scopeIdentifier];
          v23 = [v8 cplDebugDescription];
          v27 = 138412546;
          v28 = v22;
          v29 = 2112;
          v30 = v23;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Set up initial download transport group for %@ to %@", &v27, 0x16u);
        }
      }

      v24 = [(CPLEngineStorage *)self platformObject];
      v10 = [v24 storeDownloadTransportGroup:v8 forScope:v6 error:a4];
    }

    else
    {
      v10 = 0;
      v8 = v13;
    }
  }

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)downloadTransportGroupForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 downloadTransportGroupForScope:v4];

  return v6;
}

- (id)uploadTransportGroupForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 uploadTransportGroupForScope:v4];

  return v6;
}

- (BOOL)resetSyncStateForScope:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 resetSyncStateForScope:v6 error:a4];

  if (!v8)
  {
    goto LABEL_8;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 scopeIdentifier];
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Disabling initial queries for %@ after a reset of sync anchor", &v17, 0xCu);
    }
  }

  v11 = [(CPLEngineStorage *)self platformObject];
  v12 = [v11 setClassNameOfRecordsForInitialQuery:&stru_1F57BD298 forScope:v6 error:a4];

  if (v12)
  {
    v13 = [(CPLEngineStorage *)self platformObject];
    v14 = [v13 setHasFetchedInitialSyncAnchor:1 forScope:v6 error:a4];
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)setDeleteDate:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 scopeIdentifier];
  v11 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [(CPLEngineStorage *)self engineStore];
    v14 = [v13 engineLibrary];
    [v14 setExitDeleteTime:v8];
  }

  v15 = [(CPLEngineStorage *)self platformObject];
  v16 = [v15 setDeleteDate:v8 forScope:v9 error:a5];

  return v16;
}

- (id)deleteDateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 deleteDateForScope:v4];

  return v6;
}

- (BOOL)setDisabledDate:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v10 setDisabledDate:v9 forScope:v8 error:a5];

  return a5;
}

- (id)disabledDateForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 disabledDateForScope:v4];

  return v6;
}

- (BOOL)clearAllQuotaFlagsForMainScopeWithReason:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = v6;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Clearing all over-quota flags for main scope optimistically, reason: %{public}@", &v20, 0xCu);
    }
  }

  v8 = [(CPLEngineScopeStorage *)self primaryScope];
  if (!v8)
  {
LABEL_11:
    v17 = [(CPLEngineStorage *)self engineStore];
    v9 = [v17 engineLibrary];

    [v9 setIsExceedingQuota:0];
    [v9 setIsExceedingSharedLibraryQuota:0];
    goto LABEL_12;
  }

  v9 = [(CPLEngineScopeStorage *)self flagsForScope:v8];
  [v9 setValue:0 forFlag:2];
  v10 = [(CPLEngineStorage *)self platformObject];
  v11 = [v10 updateFlags:v9 forScope:v8 error:a4];

  [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:v8 flagsUpdate:v9];
  if (v11)
  {
    v12 = [(CPLEngineScopeStorage *)self sharingScopeForScope:v8];
    if (v12)
    {
      v13 = v12;
      v14 = [(CPLEngineScopeStorage *)self flagsForScope:v12];

      [v14 setValue:0 forFlag:2];
      v15 = [(CPLEngineStorage *)self platformObject];
      v16 = [v15 updateFlags:v14 forScope:v13 error:a4];

      [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:v13 flagsUpdate:v14];
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)valueForFlag:(int64_t)a3 forScope:(id)a4
{
  v5 = [(CPLEngineScopeStorage *)self flagsForScope:a4];
  LOBYTE(a3) = [v5 valueForFlag:a3];

  return a3;
}

- (BOOL)updateFlags:(id)a3 forScope:(id)a4 error:(id *)a5
{
  v96 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 updatedFlagsMask];
  v12 = [(CPLEngineScopeStorage *)self flagsForScope:v10];
  v13 = v12;
  v91 = a5;
  if ((v11 & 0x10) != 0)
  {
    if ([v9 valueForFlag:16])
    {
      v14 = 0;
    }

    else
    {
      if (!+[CPLScopeChange supportsActivationOfScopeWithType:](CPLScopeChange, "supportsActivationOfScopeWithType:", [v10 scopeType]))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v83 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = [v10 scopeIdentifier];
            v85 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v10 scopeType]);
            *buf = 138412546;
            v93 = v84;
            v94 = 2112;
            v95 = v85;
            _os_log_impl(&dword_1DC05A000, v83, OS_LOG_TYPE_ERROR, "Trying to activate %@ (%@) but this is not supported by this engine", buf, 0x16u);
          }
        }

        v86 = [MEMORY[0x1E696AAA8] currentHandler];
        v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
        v88 = [v10 scopeIdentifier];
        v89 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [v10 scopeType]);
        [v86 handleFailureInMethod:a2 object:self file:v87 lineNumber:1453 description:{@"Trying to activate %@ (%@) but this is not supported by this engine", v88, v89}];

        abort();
      }

      if (![(CPLEngineScopeStorage *)self resetDidCheckAssetWithServerWhenOverQuotaForScope:v10 error:a5])
      {
        goto LABEL_124;
      }

      v17 = [(CPLEngineStorage *)self platformObject];
      v18 = [MEMORY[0x1E695DF00] date];
      v19 = [v17 storeActivationDate:v18 forScope:v10 error:a5];

      if (!v19)
      {
        goto LABEL_124;
      }

      v20 = [v10 scopeIdentifier];
      v21 = [(CPLEngineStorage *)self mainScopeIdentifier];
      v14 = [v20 isEqualToString:v21];
    }

    v15 = (v11 & 4) == 0;
    v16 = v9;
  }

  else
  {
    v14 = 0;
    if ((v11 & 4) == 0)
    {
      v90 = 0;
      v15 = 1;
LABEL_28:
      v29 = 1;
      goto LABEL_29;
    }

    v16 = v12;
    v15 = 0;
  }

  v22 = [(CPLEngineStorage *)self engineStore];
  v23 = [v22 libraryOptions];

  v24 = [v9 valueForFlag:0x10000];
  v25 = [v16 valueForFlag:16];
  if (v15)
  {
    v26 = v13;
  }

  else
  {
    v26 = v9;
  }

  v27 = [v26 valueForFlag:4];
  if (v25 && v27)
  {
    if ((v24 & ((v23 & 0x400) != 0)) != 0)
    {
      v90 = v14;
      v28 = [v10 scopeIdentifier];
      v29 = [(CPLEngineScopeStorage *)self resetCloudRecordsForScopeWithIdentifier:v28 error:v91];

      goto LABEL_29;
    }

    v53 = v91;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v54 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v10 scopeIdentifier];
        *buf = 138543362;
        v93 = v55;
        v56 = "Deleting inactive scope %{public}@";
LABEL_115:
        _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);

        goto LABEL_116;
      }

      goto LABEL_116;
    }

    goto LABEL_117;
  }

  v90 = v14;
  if (!(v24 & 1 | ((v27 & 1) == 0)))
  {
    v30 = [v10 scopeIdentifier];
    v31 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v32 = [v30 isEqualToString:v31];

    if ((v32 & 1) == 0)
    {
      v53 = v91;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v54 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v10 scopeIdentifier];
          *buf = 138543362;
          v93 = v55;
          v56 = "Deleting active scope %{public}@ because client does not care";
          goto LABEL_115;
        }

LABEL_116:
      }

LABEL_117:
      v74 = [v10 scopeIdentifier];
      LOBYTE(v53) = [(CPLEngineScopeStorage *)self deleteScopeWithIdentifier:v74 error:v53];
LABEL_129:

      goto LABEL_130;
    }
  }

  if (!v25)
  {
    goto LABEL_28;
  }

  v33 = [(CPLEngineStorage *)self platformObject];
  v34 = [v33 activationDateForScope:v10];

  if (!v34)
  {
    goto LABEL_28;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v35 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v93 = v10;
      _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_DEFAULT, "Clearing activation date for %@", buf, 0xCu);
    }
  }

  v36 = [(CPLEngineStorage *)self platformObject];
  v29 = [v36 storeActivationDate:0 forScope:v10 error:v91];

LABEL_29:
  v37 = [v10 scopeIdentifier];
  v38 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v39 = [v37 isEqualToString:v38];

  if (v39)
  {
    v40 = [(CPLEngineStorage *)self engineStore];
    v41 = [v40 engineLibrary];

    if (!v15)
    {
      [v41 setICloudLibraryHasBeenWiped:{objc_msgSend(v9, "valueForFlag:", 4)}];
    }

    v42 = v91;
    if ((v11 & 2) != 0)
    {
      [v41 setIsExceedingQuota:{objc_msgSend(v9, "valueForFlag:", 2)}];
    }
  }

  else
  {
    v43 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v44 = [(CPLEngineScopeStorage *)self _isValidSharingScope:v10 forScopeIdentifier:v43];

    v42 = v91;
    if (!v44)
    {
      goto LABEL_38;
    }

    v45 = [(CPLEngineStorage *)self engineStore];
    v41 = [v45 engineLibrary];

    if ((v11 & 2) != 0)
    {
      [v41 setIsExceedingSharedLibraryQuota:{objc_msgSend(v9, "valueForFlag:", 2)}];
    }
  }

LABEL_38:
  v46 = v29 ^ 1;
  if ((v11 & 0x40) == 0)
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    if (([v13 valueForFlag:64] & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v52 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v10;
          _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_DEFAULT, "%@ has been staged - reset sync anchor", buf, 0xCu);
        }
      }

      v29 = [(CPLEngineScopeStorage *)self resetSyncAnchorForScope:v10 error:v42];
      if (!v29)
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    v29 = 1;
  }

  if (!v29)
  {
    goto LABEL_49;
  }

LABEL_44:
  if ((v11 & 8) != 0)
  {
    if ([v9 valueForFlag:8] & 1) != 0 || !objc_msgSend(v13, "valueForFlag:", 8) || (objc_msgSend(v13, "valueForFlag:", 16))
    {
      v29 = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v75 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v76 = [v10 scopeIdentifier];
          *buf = 138412290;
          v93 = v76;
          _os_log_impl(&dword_1DC05A000, v75, OS_LOG_TYPE_ERROR, "%@ has been re-enabled - triggering a reset sync", buf, 0xCu);
        }
      }

      v77 = [(CPLEngineStorage *)self engineStore];
      v78 = [v77 resetLocalSyncStateWithCause:@"scope has been re-enabled" error:v42];

      if (!v78)
      {
        goto LABEL_124;
      }

      v29 = 1;
      self->_schedulePullFromClient = 1;
    }
  }

LABEL_49:
  if ((v11 & 0x10) == 0 || !v29)
  {
    goto LABEL_77;
  }

  v47 = [v9 valueForFlag:16];
  v48 = [v13 valueForFlag:16];
  if (v47 && (v48 & 1) == 0)
  {
    if ([(CPLEngineScopeStorage *)self resetCompleteSyncStateIncludingIDMappingForScope:v10 error:v42])
    {
      v49 = [(CPLEngineScopeStorage *)self sharingScopeForScope:v10];
      if (!v49)
      {
        v82 = [v10 scopeIdentifier];
        v29 = [(CPLEngineScopeStorage *)self _dropSharingScopeIdentifier:v82 error:v42];

        if (!v29)
        {
          goto LABEL_74;
        }

        goto LABEL_132;
      }

      v50 = v49;
      v51 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:16 forScope:v49 error:v42];

      if (v51)
      {
LABEL_132:
        if ([(CPLEngineScopeStorage *)self _doesScopeContributeToGlobalStatus:v10])
        {
          [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:0 forScope:v10];
        }

        goto LABEL_64;
      }
    }

LABEL_73:
    v29 = 0;
    goto LABEL_74;
  }

  if (!(v47 & 1 | ((v48 & 1) == 0)))
  {
    if ([(CPLEngineScopeStorage *)self _setSharingScopeIdentifier:v10 error:v42]&& [(CPLEngineScopeStorage *)self setScopeHasChangesToPullFromTransport:v10 error:v42]&& [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:v10 error:v42])
    {
      if ([(CPLEngineScopeStorage *)self _doesScopeContributeToGlobalStatus:v10])
      {
        v57 = [(CPLEngineStorage *)self platformObject];
        v58 = [v57 scopeChangeForScope:v10];

        [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:v58 forScope:v10];
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

LABEL_64:
  v29 = 1;
LABEL_74:
  v59 = [v10 scopeIdentifier];
  v60 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v61 = [v59 isEqualToString:v60];

  if (v61)
  {
    self->_shouldResetGlobalsForMainScope = 1;
  }

  [(CPLEngineScopeStorage *)self _clearScopeCache];
  v42 = v91;
LABEL_77:
  if (v29 && (v11 & 0x44) != 0)
  {
    if ([v13 valueForFlag:4])
    {
      v62 = [v13 valueForFlag:64] ^ 1;
    }

    else
    {
      v62 = 0;
    }

    v29 = ![v9 valueForFlag:4] || ((v62 | objc_msgSend(v9, "valueForFlag:", 64)) & 1) != 0 || -[CPLEngineScopeStorage addCleanupTasksForScope:error:](self, "addCleanupTasksForScope:error:", v10, v42);
  }

  if (((v15 | v29 ^ 1) & 1) == 0 && [v9 valueForFlag:4])
  {
    v29 = [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:v10 error:v42];
    if (v29)
    {
      [(CPLEngineScopeStorage *)self _removeBrokenScope:v10];
    }

    v63 = [(CPLEngineScopeStorage *)self sharingScopeForScope:v10];
    if (v63)
    {
      v29 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:16 forScope:v63 error:v42];
    }
  }

  if (v29 && (v11 & 0x20) != 0)
  {
    if ([v9 valueForFlag:32])
    {
      if (![(CPLEngineScopeStorage *)self setScopeNeedsToUpdateTransport:v10 error:v42])
      {
        goto LABEL_124;
      }

      [(CPLEngineScopeStorage *)self _removeBrokenScope:v10];
    }

    v29 = 1;
  }

  if (v29)
  {
    if ((v11 & 0x20000) != 0)
    {
      if ([v9 valueForFlag:0x20000])
      {
        v64 = [(CPLEngineStorage *)self engineStore];
        v65 = [v64 pushRepository];
        v66 = [v10 scopeIdentifier];
        v67 = [v65 hasChangesInScopeWithIdentifier:v66];

        v42 = v91;
        if (v67)
        {
          self->_schedulePushHighPriorityToTransportChangeTypes = 122;
          goto LABEL_105;
        }
      }
    }
  }

  if (!v29)
  {
LABEL_124:
    LOBYTE(v53) = 0;
    goto LABEL_130;
  }

LABEL_105:
  v68 = [(CPLEngineStorage *)self platformObject];
  v69 = [v68 updateFlags:v9 forScope:v10 error:v42];

  [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:v10 flagsUpdate:v9];
  if (!v69)
  {
    goto LABEL_124;
  }

  [(CPLEngineScopeStorage *)self _checkSyncManagerPriorityBoost];
  v70 = [v10 scopeIdentifier];
  v71 = [(CPLEngineStorage *)self mainScopeIdentifier];
  if ([v70 isEqualToString:v71])
  {

    v72 = v90;
    if ((v11 & 0x7C) != 0)
    {
      goto LABEL_108;
    }

LABEL_111:
    LODWORD(v53) = 1;
    goto LABEL_127;
  }

  v73 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v72 = v90;
  if (![(CPLEngineScopeStorage *)self _isValidSharingScope:v10 forScopeIdentifier:v73])
  {

    LODWORD(v53) = 1;
    goto LABEL_126;
  }

  v42 = v91;
  if ((v11 & 0x7C) == 0)
  {
    goto LABEL_111;
  }

LABEL_108:
  v53 = MEMORY[0x1E696AEC0];
  v70 = [v10 scopeIdentifier];
  v71 = [v53 stringWithFormat:@"updated scope flags: %@, scopeIdentifier: %@", v9, v70];
  LODWORD(v53) = [(CPLEngineScopeStorage *)self clearAllQuotaFlagsForMainScopeWithReason:v71 error:v42];
LABEL_126:

LABEL_127:
  if ((v53 & v72) == 1)
  {
    v74 = [(CPLEngineStorage *)self engineStore];
    v79 = [v74 engineLibrary];
    [v79 noteMainScopeHasBeenActivated];

    LOBYTE(v53) = 1;
    goto LABEL_129;
  }

LABEL_130:

  v80 = *MEMORY[0x1E69E9840];
  return v53;
}

- (void)_notifyScopeObserversForScope:(id)a3 flagsUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  scopeObservers = self->_scopeObservers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CPLEngineScopeStorage__notifyScopeObserversForScope_flagsUpdate___block_invoke;
  v11[3] = &unk_1E861CA50;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableDictionary *)scopeObservers enumerateKeysAndObjectsUsingBlock:v11];
}

- (BOOL)_isValidSharingScope:(id)a3 forScopeIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 scopeIdentifier];
  v9 = [v7 scopeType];

  LOBYTE(v7) = [(CPLEngineScopeStorage *)self _isValidSharingScopeIdentifier:v8 scopeType:v9 forScopeIdentifier:v6];
  return v7;
}

- (BOOL)_isValidSharingScopeIdentifier:(id)a3 scopeType:(int64_t)a4 forScopeIdentifier:(id)a5
{
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    return 0;
  }

  v7 = a5;
  v8 = a3;
  v9 = [(CPLEngineStorage *)self engineStore];
  v10 = [v9 supportsSharingScopeWithIdentifier:v8 forScopeWithIdentifier:v7];

  return v10;
}

- (id)flagsForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 flagsForScope:v4];

  return v6;
}

- (void)writeTransactionDidFail
{
  v6.receiver = self;
  v6.super_class = CPLEngineScopeStorage;
  [(CPLEngineStorage *)&v6 writeTransactionDidFail];
  self->_shouldResetGlobalsForMainScope = 0;
  self->_scheduleATransportUpdate = 0;
  self->_scheduleAScopeUpdate = 0;
  self->_schedulePushHighPriorityToTransportChangeTypes = 0;
  self->_schedulePushToTransportChangeTypes = 0;
  self->_schedulePullFromTransport = 0;
  self->_schedulePullFromClient = 0;
  self->_shouldChangeSyncManagerPriorityBoost = 0;
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  scopesToRemoveFromBrokenScopes = self->_scopesToRemoveFromBrokenScopes;
  self->_scopesToRemoveFromBrokenScopes = 0;

  self->_shouldUpdateGlobalStatusAtEndOfTransaction = 0;
  self->_serverFeatureCompatibleVersionToUpdate = 0;
  assetCountsToUpdate = self->_assetCountsToUpdate;
  self->_assetCountsToUpdate = 0;

  scopeIdentifiersBeingCreated = self->_scopeIdentifiersBeingCreated;
  self->_scopeIdentifiersBeingCreated = 0;

  [(CPLEngineScopeStorage *)self _clearScopeCache];
}

- (id)status
{
  v57 = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = CPLEngineScopeStorage;
  v3 = [(CPLEngineStorage *)&v55 status];
  v4 = [v3 mutableCopy];

  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 shouldSyncScopeList];

  if (v6)
  {
    v7 = [(CPLEngineScopeStorage *)self scopeListSyncAnchor];
    if (v7)
    {
      v8 = [(CPLEngineStorage *)self engineStore];
      v9 = [v8 engineLibrary];
      v10 = [v9 transport];
      v11 = [v10 simpleDescriptionForScopeListSyncAnchor:v7];
      [v4 appendFormat:@" - global sync anchor: %@", v11];
    }
  }

  if (self->_someScopeMightHaveToBePulledByClient)
  {
    v12 = [(CPLEngineStorage *)self platformObject];
    v13 = [v12 isEmpty];

    if ((v13 & 1) == 0)
    {
      [v4 appendString:@" [client needs to pull some scopes]"];
    }
  }

  v14 = [MEMORY[0x1E695DF00] date];
  if (status_onceToken != -1)
  {
    dispatch_once(&status_onceToken, &__block_literal_global_8776);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __31__CPLEngineScopeStorage_status__block_invoke_2;
  v38[3] = &unk_1E861CA28;
  v33 = v15;
  v39 = v33;
  v40 = self;
  v43 = &v50;
  v44 = &v46;
  v45 = v54;
  v30 = v14;
  v41 = v30;
  v31 = v4;
  v42 = v31;
  v16 = MEMORY[0x1E128EBA0](v38);
  v32 = [(CPLEngineScopeStorage *)self primaryScope];
  if (v32)
  {
    (v16)[2](v16, v32, 0);
    v17 = [(CPLEngineScopeStorage *)self sharingScopeForScope:v32];
    if (v17)
    {
      (v16)[2](v16, v17, 0);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [(CPLEngineScopeStorage *)self enumeratorForScopesIncludeInactive:1];
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v56 count:16];
  if (v19)
  {
    v20 = *v35;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v34 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        v24 = [v22 scopeIdentifier];
        v25 = [v33 containsObject:v24];

        if ((v25 & 1) == 0)
        {
          (v16)[2](v16, v22, 1);
        }

        objc_autoreleasePoolPop(v23);
      }

      v19 = [v18 countByEnumeratingWithState:&v34 objects:v56 count:16];
    }

    while (v19);
  }

  if (v47[3])
  {
    v26 = v51[3];
    if (v26)
    {
      [v31 appendFormat:@"\nand %lu more scopes - %lu inactive (use cplctl scope for more info)", v47[3], v26, v30];
    }

    else
    {
      [v31 appendFormat:@"\nand %lu more scopes (use cplctl scope for more info)", v47[3]];
    }
  }

  v27 = v31;

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __31__CPLEngineScopeStorage_status__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 scopeIdentifier];
  [v6 addObject:v7];

  v8 = [*(a1 + 40) flagsForScope:v5];
  v9 = [v8 valueForFlag:16];

  if (!a3)
  {
    goto LABEL_10;
  }

  if (!v9)
  {
    if (*(*(*(a1 + 80) + 8) + 24) >= 3uLL)
    {
      goto LABEL_5;
    }

    v10 = [*(a1 + 40) platformObject];
    v11 = [v10 lastScopeChangeUpdateDateForScope:v5];

    if (v11)
    {
      [*(a1 + 48) timeIntervalSinceDate:v11];
      if (v12 > 600.0)
      {
        ++*(*(*(a1 + 72) + 8) + 24);
LABEL_11:

        goto LABEL_12;
      }
    }

LABEL_10:
    ++*(*(*(a1 + 80) + 8) + 24);
    v11 = [*(a1 + 40) statusDictionaryForScope:v5];
    [*(a1 + 56) appendString:@"\n\t"];
    v13 = [v5 scopeType];
    v14 = (v13 < 6) & (0x32u >> v13);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __31__CPLEngineScopeStorage_status__block_invoke_3;
    v28[3] = &unk_1E861C988;
    v29 = *(a1 + 48);
    v15 = MEMORY[0x1E128EBA0](v28);
    v16 = [v5 scopeIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __31__CPLEngineScopeStorage_status__block_invoke_4;
    v26[3] = &unk_1E861C9B0;
    v27 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __31__CPLEngineScopeStorage_status__block_invoke_5;
    v23[3] = &unk_1E861C9D8;
    v24 = *(a1 + 56);
    v25 = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __31__CPLEngineScopeStorage_status__block_invoke_6;
    v18[3] = &unk_1E861CA00;
    v21 = v14;
    v22 = v9;
    v19 = *(a1 + 56);
    v20 = v25;
    v17 = v25;
    [CPLEngineScope formatStatusDictionary:v11 forScopeWithIdentifier:v16 appendString:v26 appendTopLevelStatus:v23 appendLineStatus:v18];

    goto LABEL_11;
  }

  ++*(*(*(a1 + 64) + 8) + 24);
LABEL_5:
  ++*(*(*(a1 + 72) + 8) + 24);
LABEL_12:
}

id __31__CPLEngineScopeStorage_status__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [CPLEngineScope separatorForStatusKey:v5];
    v8 = [v6 componentsJoinedByString:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [v6 description];
      goto LABEL_3;
    }

    if (![v5 isEqualToString:@"scope info"])
    {
      v7 = [CPLDateFormatter stringFromDateAgo:v6 now:*(a1 + 32)];
      goto LABEL_3;
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [CPLDateFormatter stringFromDateAgo:v6 now:*(a1 + 32)];
    v8 = [v11 initWithFormat:@"updated %@", v12];
  }

LABEL_6:

  return v8;
}

void __31__CPLEngineScopeStorage_status__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

void __31__CPLEngineScopeStorage_status__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (((*(a1 + 48) & 1) != 0 || ([status_avoidKeyIfNotLibrary containsObject:v13] & 1) == 0) && (*(a1 + 49) != 1 || (objc_msgSend(status_avoidKeysIfInactive, "containsObject:", v13) & 1) == 0))
  {
    if ([(__CFString *)v13 isEqualToString:@"scope info"])
    {
      if (*(a1 + 48))
      {
        v6 = @"library info";
      }

      else
      {
        v6 = v13;
      }

      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(v7 + 16);
      v10 = v6;
      v11 = v9(v7, v13, v5);
      [v8 appendFormat:@"\n\t\t%@: %@", v10, v11];
    }

    else
    {
      v12 = *(a1 + 32);
      v11 = (*(*(a1 + 40) + 16))();
      [v12 appendFormat:@"\n\t\t%@: %@", v13, v11];
    }
  }
}

uint64_t __31__CPLEngineScopeStorage_status__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"init. est. size", @"last supported feature version", @"anch", @"queries", @"transient", @"upload group", @"download group", @"initial sync", 0}];
  v1 = status_avoidKeysIfInactive;
  status_avoidKeysIfInactive = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"init. est. size", @"last supported feature version", 0}];
  v3 = status_avoidKeyIfNotLibrary;
  status_avoidKeyIfNotLibrary = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (BOOL)resetStableRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self stableScopeIndexForScopeIdentifier:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    [(CPLEngineScopeStorage *)self _clearScopeCache];
    v10 = [(CPLEngineStorage *)self platformObject];
    v11 = [v10 bumpStableIndexForScopeWithIdentifier:v6 error:a4];

    if (v11)
    {
      v12 = [(CPLEngineStorage *)self engineStore];
      v13 = [v12 cleanupTasks];
      v8 = [v13 addCleanupTaskForScopeWithIndex:v9 scopeIdentifier:v6 scopeType:3 error:a4];

      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
  *a4 = v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)resetCloudRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self indexForCloudScopeIdentifier:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    [(CPLEngineScopeStorage *)self _clearScopeCache];
    v10 = [(CPLEngineStorage *)self platformObject];
    v11 = [v10 bumpCloudIndexForScopeWithIdentifier:v6 error:a4];

    if (v11)
    {
      v12 = [(CPLEngineStorage *)self engineStore];
      v13 = [v12 cleanupTasks];
      v8 = [v13 addCleanupTaskForScopeWithIndex:v9 scopeIdentifier:v6 scopeType:2 error:a4];

      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
  *a4 = v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)resetLocalRecordsForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self indexForLocalScopeIdentifier:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    [(CPLEngineScopeStorage *)self _clearScopeCache];
    v10 = [(CPLEngineStorage *)self platformObject];
    v11 = [v10 bumpLocalIndexForScopeWithIdentifier:v6 error:a4];

    if (v11)
    {
      v12 = [(CPLEngineStorage *)self engineStore];
      v13 = [v12 cleanupTasks];
      v14 = [v13 addCleanupTaskForScopeWithIndex:v9 scopeIdentifier:v6 scopeType:1 error:a4];

      if (v14)
      {
        [(CPLEngineScopeStorage *)self _checkSyncManagerPriorityBoost];
        v8 = 1;
        goto LABEL_8;
      }
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
  *a4 = v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)resetSyncAnchorForScope:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self doesScopeNeedToPushChangesToTransport:v6];
  v25 = 0;
  v8 = [(CPLEngineScopeStorage *)self resetSyncStateForScope:v6 error:&v25];
  v9 = v25;
  v10 = v9;
  if (v8 && v7)
  {
    v24 = v9;
    v11 = [(CPLEngineScopeStorage *)self setScopeHasChangesToPushToTransport:v6 changeTypes:122 error:&v24];
    v12 = v24;

    v10 = v12;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  v23 = v10;
  v13 = [(CPLEngineScopeStorage *)self setupAnchorResetTransportGroupForScope:v6 error:&v23];
  v14 = v23;

  if (v13)
  {
    v22 = v14;
    v15 = [(CPLEngineScopeStorage *)self setScopeHasChangesToPullFromTransport:v6 error:&v22];
    v10 = v22;

    if (v15)
    {
      v16 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v10 = v14;
  }

LABEL_10:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 scopeIdentifier];
      *buf = 138412546;
      v27 = v18;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Unable to reset sync anchor for %@: %@", buf, 0x16u);
    }
  }

  if (a4)
  {
    v19 = v10;
    v16 = 0;
    *a4 = v10;
  }

  else
  {
    v16 = 0;
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)resetCompleteSyncStateIncludingIDMappingForScope:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  scopeIdentifiersBeingCreated = self->_scopeIdentifiersBeingCreated;
  v8 = [v6 scopeIdentifier];
  LOBYTE(scopeIdentifiersBeingCreated) = [(NSCountedSet *)scopeIdentifiersBeingCreated containsObject:v8];

  if (scopeIdentifiersBeingCreated)
  {
    v9 = 1;
  }

  else
  {
    v19 = 0;
    v10 = [(CPLEngineScopeStorage *)self _resetCompleteSyncStateForScope:v6 error:&v19];
    v11 = v19;
    if (v10 && ([v6 scopeIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[CPLEngineScopeStorage resetStableRecordsForScopeWithIdentifier:error:](self, "resetStableRecordsForScopeWithIdentifier:error:", v12, a4), v12, v13))
    {
      v9 = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [v6 scopeIdentifier];
          *buf = 138412546;
          v21 = v15;
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to reset complete sync state, including ID mapping, for %@: %@", buf, 0x16u);
        }
      }

      if (a4)
      {
        v16 = v11;
        v9 = 0;
        *a4 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)resetCompleteSyncStateForScope:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0;
  v7 = [(CPLEngineScopeStorage *)self _resetCompleteSyncStateForScope:v6 error:&v14];
  v8 = v14;
  if (!v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 scopeIdentifier];
        *buf = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Unable to reset complete sync state for %@: %@", buf, 0x16u);
      }
    }

    if (a4)
    {
      v11 = v8;
      *a4 = v8;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_resetCompleteSyncStateForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self _resetLocalSyncStateForScope:v6 error:a4];
  v8 = [(CPLEngineStorage *)self engineStore];
  v9 = [v6 scopeIdentifier];

  if (v7 && [(CPLEngineScopeStorage *)self resetCloudRecordsForScopeWithIdentifier:v9 error:a4])
  {
    v10 = [v8 idMapping];
    v11 = [v10 resetAllFinalCloudIdentifiersForScopeWithIdentifier:v9 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)resetLocalSyncStateForScope:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17 = 0;
  v7 = [(CPLEngineScopeStorage *)self _resetLocalSyncStateForScope:v6 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = [(CPLEngineStorage *)self engineStore];
    v10 = [v9 quarantinedRecords];
    v11 = [v10 resetRejectedRecordsWithError:a4];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v6 scopeIdentifier];
        *buf = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Unable to reset local sync state for %@: %@", buf, 0x16u);
      }
    }

    if (a4)
    {
      v14 = v8;
      v11 = 0;
      *a4 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_resetLocalSyncStateForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLEngineStorage *)self engineStore];
  if (![v8 forceApplyPendingChangeSessionUpdateWithError:a4])
  {
    goto LABEL_11;
  }

  v9 = [v8 derivativesCache];
  [v9 discardCache];

  v10 = [v8 cloudCache];
  v11 = [v10 discardStagedChangesForScopeWithIdentifier:v7 error:a4];

  if (!v11 || ![(CPLEngineScopeStorage *)self resetSyncStateForScope:v6 error:a4])
  {
    goto LABEL_11;
  }

  v12 = +[CPLFingerprintScheme supportsEPP]? 22 : 21;
  if ([(CPLEngineScopeStorage *)self storeSupportedFeatureVersionInLastSync:v12 forScope:v6 error:a4]&& [(CPLEngineScopeStorage *)self setupResetSyncTransportGroupForScope:v6 error:a4]&& [(CPLEngineScopeStorage *)self resetLocalRecordsForScopeWithIdentifier:v7 error:a4])
  {
    v13 = [(CPLEngineStorage *)self engineStore];
    v14 = [v13 statusCenter];
    [v14 resetTransientStatusesWithScopeIdentifier:v7];

    v15 = 1;
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  return v15;
}

- (int64_t)stableScopeIndexForScopeIdentifier:(id)a3
{
  v3 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stableIndex];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)validCloudScopeIndexes
{
  v3 = [(_CPLEngineScopeCache *)self->_scopeCache validCloudIndexes];
  if (!v3)
  {
    v4 = [(CPLEngineStorage *)self platformObject];
    v3 = [v4 validCloudIndexes];

    [(_CPLEngineScopeCache *)self->_scopeCache cacheValidCloudIndexes:v3];
  }

  return v3;
}

- (id)validLocalScopeIndexes
{
  v3 = [(_CPLEngineScopeCache *)self->_scopeCache validLocalIndexes];
  if (!v3)
  {
    v4 = [(CPLEngineStorage *)self platformObject];
    v3 = [v4 validLocalIndexes];

    [(_CPLEngineScopeCache *)self->_scopeCache cacheValidLocalIndexes:v3];
  }

  return v3;
}

- (BOOL)setCloudScopeIndexOnChange:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 scopedIdentifier];
  if (!v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "invalid record", buf, 2u);
      }
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    [v17 handleFailureInMethod:a2 object:self file:v18 lineNumber:981 description:@"invalid record"];

    abort();
  }

  v7 = v6;
  v8 = [(CPLEngineScopeStorage *)self scopedIdentifierForCloudScopedIdentifier:v6];

  if (v8 && [v5 supportsResources] && objc_msgSend(v5, "hasChangeType:", 8))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 resources];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v19 + 1) + 8 * i) setItemScopedIdentifier:v8];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)setLocalScopeIndexOnChange:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 scopedIdentifier];
  if (!v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "invalid record", buf, 2u);
      }
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    [v17 handleFailureInMethod:a2 object:self file:v18 lineNumber:964 description:@"invalid record"];

    abort();
  }

  v7 = v6;
  v8 = [(CPLEngineScopeStorage *)self scopedIdentifierForLocalScopedIdentifier:v6];

  if (v8 && [v5 supportsResources] && objc_msgSend(v5, "hasChangeType:", 8))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 resources];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v19 + 1) + 8 * i) setItemScopedIdentifier:v8];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (id)scopeIdentifierForCloudScopeIndex:(int64_t)a3
{
  v3 = [(CPLEngineScopeStorage *)self scopeWithCloudScopeIndex:a3];
  v4 = [v3 scopeIdentifier];

  return v4;
}

- (id)scopeIdentifierForLocalScopeIndex:(int64_t)a3
{
  v3 = [(CPLEngineScopeStorage *)self scopeWithLocalScopeIndex:a3];
  v4 = [v3 scopeIdentifier];

  return v4;
}

- (int64_t)indexForCloudScopeIdentifier:(id)a3
{
  v3 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cloudIndex];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (int64_t)indexForLocalScopeIdentifier:(id)a3
{
  v3 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localIndex];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)scopedIdentifierForCloudScopedIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 scopeIndex];
  v7 = [v5 scopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self indexForCloudScopeIdentifier:v7];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      goto LABEL_12;
    }

    [v5 setScopeIndex:v8];
  }

  else
  {

    if (v6 != v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Incorrect index for cloud scoped identifier %@", buf, 0xCu);
        }
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
      [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:924 description:{@"Incorrect index for cloud scoped identifier %@", v5}];

      abort();
    }
  }

  v9 = v5;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)scopedIdentifierForLocalScopedIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 scopeIndex];
  v7 = [v5 scopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self indexForLocalScopeIdentifier:v7];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      goto LABEL_12;
    }

    [v5 setScopeIndex:v8];
  }

  else
  {

    if (v6 != v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Incorrect index for local scoped identifier %@", buf, 0xCu);
        }
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
      [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:905 description:{@"Incorrect index for local scoped identifier %@", v5}];

      abort();
    }
  }

  v9 = v5;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_setScopeType:(int64_t)a3 forScope:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 scopeType];
  if (v9 == a3)
  {
    LOBYTE(a5) = 1;
  }

  else
  {
    v10 = v9;
    if (v9)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [CPLScopeChange descriptionForScopeType:v10];
          v13 = [CPLScopeChange descriptionForScopeType:a3];
          v14 = [v8 scopeIdentifier];
          *buf = 138412802;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          v29 = 2112;
          v30 = v14;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Trying to change scope type from %@ to %@ for %@", buf, 0x20u);
        }
      }

      if (a5)
      {
        v15 = [CPLScopeChange descriptionForScopeType:v10];
        v16 = [CPLScopeChange descriptionForScopeType:a3];
        v17 = [v8 scopeIdentifier];
        *a5 = [CPLErrors cplErrorWithCode:50 description:@"Trying to change scope type from %@ to %@ for %@", v15, v16, v17];

        LOBYTE(a5) = 0;
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v8 scopeIdentifier];
          v20 = [CPLScopeChange descriptionForScopeType:a3];
          *buf = 138412546;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Upgrading scope type of %@ to %@", buf, 0x16u);
        }
      }

      v21 = [(CPLEngineStorage *)self platformObject];
      v22 = [v21 setScopeType:a3 forScope:v8 error:a5];

      LOBYTE(a5) = v22 && [(CPLEngineScopeStorage *)self _handledDisabledFeaturesForScopeIfNecessary:v8 type:a3 error:a5]&& [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:v8 error:a5];
      [(CPLEngineScopeStorage *)self _clearScopeCache];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return a5;
}

- (BOOL)deleteScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:v6];
  if (!v7)
  {
    v11 = 1;
    goto LABEL_14;
  }

  v8 = [(CPLEngineStorage *)self mainScopeIdentifier];
  if (([v6 isEqualToString:v8] & 1) != 0 || objc_msgSend(v7, "scopeType") == 4)
  {

    goto LABEL_5;
  }

  v12 = [v7 scopeType];

  if (v12 == 5)
  {
LABEL_5:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scope deleted, scopeIdentifier: %@", v6];
    v10 = [(CPLEngineScopeStorage *)self clearAllQuotaFlagsForMainScopeWithReason:v9 error:a4];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  if (-[CPLEngineScopeStorage addCleanupTasksForScope:error:](self, "addCleanupTasksForScope:error:", v7, a4) && (-[CPLEngineStorage platformObject](self, "platformObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 deleteScopeWithIdentifier:v6 error:a4], v13, v14))
  {
    [(CPLEngineScopeStorage *)self _removeBrokenScope:v7];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  [(CPLEngineScopeStorage *)self _clearScopeCache];
LABEL_14:
  v15 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v16 = [v6 isEqualToString:v15];

  if (v16)
  {
    self->_shouldResetGlobalsForMainScope = 1;
  }

  [(CPLEngineScopeStorage *)self _checkSyncManagerPriorityBoost];
  v17 = v11 ^ 1;
  if (!v7)
  {
    v17 = 1;
  }

  if (v17)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_22:
    v19 = [(CPLEngineStorage *)self engineStore];
    v20 = [v19 quarantinedRecords];
    v18 = [v20 resetRejectedRecordsWithError:a4];

    goto LABEL_23;
  }

  if ([(CPLEngineScopeStorage *)self _dropSharingScopeIdentifier:v6 error:a4])
  {
    goto LABEL_22;
  }

LABEL_20:
  v18 = 0;
LABEL_23:

  return v18;
}

- (BOOL)addCleanupTasksForScope:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 scopeType])
  {
    v7 = [v6 scopeIdentifier];
    v8 = [(CPLEngineStorage *)self engineStore];
    v9 = [v8 cleanupTasks];

    if ([v9 addCleanupTaskForScopeWithIndex:objc_msgSend(v6 scopeIdentifier:"localIndex") scopeType:v7 error:{1, a4}] && objc_msgSend(v9, "addCleanupTaskForScopeWithIndex:scopeIdentifier:scopeType:error:", objc_msgSend(v6, "cloudIndex"), v7, 2, a4))
    {
      v10 = [v9 addCleanupTaskForScopeWithIndex:objc_msgSend(v6 scopeIdentifier:"stableIndex") scopeType:v7 error:{3, a4}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_setSharingScopeIdentifier:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self _isValidSharingScope:v6 forScopeIdentifier:v7];

  if (v8)
  {
    v9 = [(CPLEngineStorage *)self engineStore];
    v10 = [v6 scopeIdentifier];
    v11 = [v9 sharingScopeIdentifier];
    v12 = v11;
    if (v11 && ([v11 isEqualToString:v10] & 1) == 0)
    {
      if (_CPLSilentLogging)
      {
        v15 = 1;
        goto LABEL_20;
      }

      v13 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v12;
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ is already registered as sharing scope. Ignoring %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [(CPLEngineScopeStorage *)self primaryScope];
      if (!v13 || [(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v13])
      {
        if (a4)
        {
          v14 = [v6 scopeIdentifier];
          *a4 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't use %@ as sharing scope when iCPL is off", v14];
        }

        v15 = 0;
        goto LABEL_19;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v6;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Activating %@ as sharing scope. Informing store", buf, 0xCu);
        }
      }

      v17 = [(CPLEngineStorage *)self engineStore];
      [v17 storeSharingScopeIdentifier:v10];

      v18 = [(CPLEngineStorage *)self engineStore];
      v19 = [v18 engineLibrary];
      v20 = [v19 supervisor];
      [v20 scopeStorage:self didStoreSharingScopeIdentifier:v10];
    }

    v15 = 1;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v15 = 1;
LABEL_21:

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_dropSharingScopeIdentifier:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStorage *)self engineStore];
  v8 = v6;
  v38 = v7;
  v9 = [v7 sharingScopeIdentifier];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
LABEL_4:
      v12 = 0;
      v13 = 1;
      goto LABEL_39;
    }
  }

  else
  {

    if (v8 | v10)
    {
      goto LABEL_4;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v8;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Dropping %{public}@ as sharing scope", buf, 0xCu);
    }
  }

  v15 = [(CPLEngineStorage *)self engineStore];
  [v15 dropSharingScopeIdentifier:v8];

  v16 = [(CPLEngineStorage *)self engineStore];
  v17 = [v16 engineLibrary];
  v18 = [v17 supervisor];
  v37 = v8;
  [v18 scopeStorage:self didDropSharingScopeIdentifier:v8];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = [(CPLEngineScopeStorage *)self enumeratorForScopesIncludeInactive:1];
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v36 = a4;
    v39 = 0;
    v22 = *v42;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * i);
        v25 = objc_autoreleasePoolPush();
        v26 = [(CPLEngineStorage *)self platformObject];
        v27 = [v26 flagsForScope:v24];

        if ([v27 valueForFlag:16] && (objc_msgSend(v27, "valueForFlag:", 36) & 1) == 0 && (objc_msgSend(v24, "scopeType") & 0xFFFFFFFFFFFFFFFELL) == 4 && (objc_msgSend(v24, "scopeIdentifier"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[CPLEngineScopeStorage shouldAutoactivateScopeWithIdentifier:scopeType:](self, "shouldAutoactivateScopeWithIdentifier:scopeType:", v28, objc_msgSend(v24, "scopeType")), v28, v29))
        {
          v30 = v24;

          objc_autoreleasePoolPop(v25);
          if (v30)
          {

            v31 = [(CPLEngineScopeStorage *)self primaryScope];
            if (v31)
            {
              v8 = v37;
              v7 = v38;
              if ([(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v31])
              {
                v12 = 0;
                v13 = 1;
              }

              else
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v32 = __CPLStorageOSLogDomain_8656();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v46 = v30;
                    v47 = 2114;
                    v48 = v37;
                    _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, "Activating %@ as a new Shared library since %{public}@ has been dropped", buf, 0x16u);
                  }
                }

                [v27 setValue:0 forFlag:16];
                v40 = 0;
                v13 = [(CPLEngineScopeStorage *)self updateFlags:v27 forScope:v30 error:&v40];
                v12 = v40;
              }
            }

            else
            {
              v12 = 0;
              v13 = 1;
              v8 = v37;
              v7 = v38;
            }

            if (v36 && !v13)
            {
              v33 = v12;
              v13 = 0;
              *v36 = v12;
            }

            goto LABEL_39;
          }

          v39 = v27;
        }

        else
        {

          objc_autoreleasePoolPop(v25);
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v39 = 0;
  }

  v12 = 0;
  v13 = 1;
  v8 = v37;
  v7 = v38;
LABEL_39:

  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)createScopeWithIdentifier:(id)a3 scopeType:(int64_t)a4 flags:(int64_t)a5 transportScope:(id)a6 error:(id *)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:v13];
  v16 = v15;
  if (a4 != 2)
  {
    if (!v15)
    {
      goto LABEL_15;
    }

    if (!a4)
    {
LABEL_9:
      v20 = [(CPLEngineStorage *)self platformObject];
      v21 = [v20 flagsForScope:v16];

      [v21 setValue:1 forFlag:a5];
      if ((a5 & 0x10) == 0)
      {
        [v21 setValue:0 forFlag:16];
      }

      v22 = [(CPLEngineScopeStorage *)self updateFlags:v21 forScope:v16 error:a7];

      if (v14 && v22)
      {
        if ([(CPLEngineScopeStorage *)self setTransportScope:v14 forScope:v16 error:a7])
        {
          goto LABEL_23;
        }
      }

      else if (v22)
      {
        goto LABEL_23;
      }

LABEL_22:

      v16 = 0;
      goto LABEL_23;
    }

LABEL_8:
    v19 = [v16 copyWithScopeType:a4];

    v16 = v19;
    if (![(CPLEngineScopeStorage *)self _setScopeType:a4 forScope:v19 error:a7])
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x1E695E000] standardUserDefaults];
  v18 = [v17 BOOLForKey:@"CPLOwnedMomentSharesAreHighPriority"];

  if (v18)
  {
    a5 |= 0x20000uLL;
  }

  if (v16)
  {
    goto LABEL_8;
  }

LABEL_15:
  v23 = [(CPLEngineStorage *)self platformObject];
  v16 = [v23 addScopeWithIdentifier:v13 scopeType:a4 error:a7];

  if (!v16)
  {
    goto LABEL_23;
  }

  if (![(CPLEngineScopeStorage *)self _handledDisabledFeaturesForScopeIfNecessary:v16 type:a4 error:a7])
  {
    goto LABEL_22;
  }

  [(CPLEngineScopeStorage *)self _clearScopeCache];
  v24 = [(CPLEngineScopeStorage *)self setTransportScope:v14 forScope:v16 error:a7];
  if (a5 && v24)
  {
    v25 = [[CPLEngineScopeFlagsUpdate alloc] initWithFlags:0];
    [(CPLEngineScopeFlagsUpdate *)v25 setValue:1 forFlag:a5];
    v26 = [(CPLEngineStorage *)self platformObject];
    v27 = [v26 updateFlags:v25 forScope:v16 error:a7];

    [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:v16 flagsUpdate:v25];
    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (!v24)
    {
LABEL_38:
      v36 = 0;
      goto LABEL_47;
    }

    if ([(NSMutableDictionary *)self->_scopeObservers count])
    {
      v30 = [[CPLEngineScopeFlagsUpdate alloc] initWithFlags:0];
      [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:v16 flagsUpdate:v30];
    }
  }

  if (overridesSharedLibraryFeatureFlag != 1 || (isSharedLibraryFeatureEnabled & 1) != 0)
  {
    v32 = a5 & 0x10;
  }

  else
  {
    v31 = [v16 scopeType];
    v32 = a5 & 0x10;
    if ((a5 & 0x10) == 0 && (v31 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v33 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v16;
          _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "Trying to create an active shared library scope but the feature is disabled %@", buf, 0xCu);
        }
      }

      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
      [v34 handleFailureInMethod:a2 object:self file:v35 lineNumber:706 description:{@"Trying to create an active shared library scope but the feature is disabled %@", v16}];

      abort();
    }
  }

  if (v32)
  {
    v36 = 1;
  }

  else
  {
    if ([(CPLEngineScopeStorage *)self _setSharingScopeIdentifier:v16 error:a7])
    {
      v37 = [(CPLEngineStorage *)self platformObject];
      v38 = [MEMORY[0x1E695DF00] date];
      v36 = [v37 storeActivationDate:v38 forScope:v16 error:a7];
    }

    else
    {
      v36 = 0;
    }

    v39 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v40 = [v13 isEqualToString:v39];

    if (v40)
    {
      v41 = [(CPLEngineStorage *)self engineStore];
      v42 = [v41 engineLibrary];
      [v42 noteMainScopeHasBeenActivated];
    }
  }

LABEL_47:
  v43 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v44 = [v13 isEqualToString:v43];

  if (v44)
  {
    self->_shouldResetGlobalsForMainScope = 1;
  }

  self->_scheduleAScopeUpdate = 1;
  if ((v36 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:

  v28 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)_handledDisabledFeaturesForScopeIfNecessary:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v7 = [(CPLEngineStorage *)self engineStore];
  v8 = [v7 disabledFeatures];

  if ([v8 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [CPLFeature featureWithName:*(*(&v22 + 1) + 8 * i)];
          if (v14)
          {
            v15 = [(CPLEngineStorage *)self engineStore];
            v16 = [v14 handleScopeWhenFeatureIsDisabled:v21 scopeType:a4 store:v15 error:a5];

            if ((v16 & 1) == 0)
            {

              v17 = 0;
              goto LABEL_15;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v17 = 1;
    }

    else
    {
      v17 = 1;
    }

LABEL_15:
  }

  else
  {
    v17 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)_resetGlobalsForMainScope
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CPLEngineStorage *)self mainScopeIdentifier];
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Resetting global status for %@", &v8, 0xCu);
    }
  }

  v5 = [(CPLEngineStorage *)self engineStore];
  v6 = [v5 engineLibrary];

  [v6 setICloudLibraryHasBeenWiped:0];
  [v6 setIsExceedingQuota:0];
  [v6 setIsExceedingSharedLibraryQuota:0];
  [v6 setExitDeleteTime:0];
  [v6 updateInitialSyncDate:0];
  [v6 updateAccountFlagsData:0];
  [v6 setBusyState:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)doesScopeNeedToUploadComputeState:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 doesScopeNeedToUploadComputeState:v4];

  return v6;
}

- (BOOL)setScope:(id)a3 hasCompletedUploadComputeStateTask:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v9 setScope:v8 hasCompletedUploadComputeStateTask:a4 error:a5];

  return a5;
}

- (int64_t)uploadComputeStateTaskForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 uploadComputeStateTaskForScope:v4];

  return v6;
}

- (BOOL)setScopeNeedsToUploadComputeState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 setScopeNeedsToUploadComputeState:v6 error:a4];

  return a4;
}

- (BOOL)hasScopesNeedingToUploadComputeState
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasScopesNeedingToUploadComputeState];

  return v3;
}

- (id)enumeratorForScopesNeedingToUploadComputeState
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesNeedingToUploadComputeState];

  return v3;
}

- (BOOL)doesScopeNeedToUpdateTransport:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 doesScopeNeedToUpdateTransport:v4];

  return v6;
}

- (BOOL)setScope:(id)a3 hasCompletedTransportUpdate:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v9 setScope:v8 hasCompletedTransportUpdate:a4 error:a5];

  return a5;
}

- (int64_t)transportUpdateTaskForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 transportUpdateTaskForScope:v4];

  return v6;
}

- (BOOL)setScopeNeedsToUpdateTransport:(id)a3 error:(id *)a4
{
  self->_scheduleATransportUpdate = 1;
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 setScopeNeedsToUpdateTransport:v6 error:a4];

  return a4;
}

- (BOOL)updateScopeWithChange:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:v7];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __53__CPLEngineScopeStorage_updateScopeWithChange_error___block_invoke;
  v37[3] = &unk_1E861F868;
  v39 = v40;
  v37[4] = self;
  v9 = v7;
  v38 = v9;
  v10 = MEMORY[0x1E128EBA0](v37);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __53__CPLEngineScopeStorage_updateScopeWithChange_error___block_invoke_2;
  v34[3] = &unk_1E861F868;
  v36 = v40;
  v34[4] = self;
  v11 = v9;
  v35 = v11;
  v12 = MEMORY[0x1E128EBA0](v34);
  if ([v6 isDelete])
  {
    if (!v8 || (v13 = [v8 scopeType]) == 0)
    {
      v13 = [v6 scopeType];
    }

    if (!v13)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          buf = 138412290;
          v43 = v11;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Client tried to delete an unknown scope %@", &buf, 0xCu);
        }
      }

      if (a4)
      {
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    if (v13 == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          buf = 138412290;
          v43 = v11;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Client tried to delete library %@", &buf, 0xCu);
        }
      }

      if (a4)
      {
LABEL_45:
        [CPLErrors invalidScopeErrorWithScopeIdentifier:v11];
        *a4 = v21 = 0;
        goto LABEL_67;
      }

LABEL_58:
      v21 = 0;
      goto LABEL_67;
    }
  }

  v15 = v8 != 0;
  if (!v8)
  {
    v10[2](v10);
    v8 = [(CPLEngineScopeStorage *)self _createScopeFromScopeChange:v6 error:a4];
    if (!v8)
    {
      goto LABEL_58;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        buf = 138412290;
        v43 = v8;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Client re-created scope %@", &buf, 0xCu);
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (![(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v8])
  {
LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if (![(CPLEngineScopeStorage *)self deleteScopeWithIdentifier:v11 error:a4])
  {
    goto LABEL_58;
  }

  v10[2](v10);
  v16 = [(CPLEngineScopeStorage *)self _createScopeFromScopeChange:v6 error:a4];

  if (!v16)
  {
    v8 = 0;
    goto LABEL_58;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138412290;
      v43 = v16;
      _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Client activated scope %@", &buf, 0xCu);
    }

    v8 = v16;
LABEL_25:

    goto LABEL_27;
  }

  v15 = 1;
  v8 = v16;
LABEL_27:
  if (![v6 isDelete])
  {
    if (v15)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          buf = 138412290;
          v43 = v8;
          _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Client just created %@ - we will try to update it in the cloud", &buf, 0xCu);
        }
      }

      v19 = [(CPLEngineScopeStorage *)self setScopeNeedsToUpdateTransport:v8 error:a4];
      goto LABEL_39;
    }

    v23 = [(CPLEngineStorage *)self platformObject];
    v24 = [v23 flagsForScope:v8];

    if ([v24 valueForFlag:16])
    {
      v21 = 1;
LABEL_66:

      goto LABEL_67;
    }

    v25 = [(CPLEngineStorage *)self platformObject];
    v32 = [v25 scopeChangeForScope:v8];

    v33 = 0;
    [v32 updateScopeFromScopeChange:v6 direction:1 didHaveChanges:&v33];
    if (v33 == 1)
    {
      v33 = 0;
      v26 = [(CPLEngineStorage *)self platformObject];
      v27 = [v26 storeScopeChange:v32 forScope:v8 scopeChangeHasBeenUpdated:&v33 error:a4];

      if (!v27)
      {
        goto LABEL_59;
      }

      if (v33 == 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v28 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            buf = 138412290;
            v43 = v8;
            _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_DEFAULT, "Client pushed a scope change for %@ - we may have to update the cloud", &buf, 0xCu);
          }
        }

        if ([(CPLEngineScopeStorage *)self setScopeNeedsToUpdateTransport:v8 error:a4, v32])
        {
          v21 = [(CPLEngineScopeStorage *)self setScopeNeedsUpdateFromTransport:v8 error:a4];
LABEL_65:

          goto LABEL_66;
        }

LABEL_59:
        v21 = 0;
        goto LABEL_65;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          buf = 138412290;
          v43 = v8;
          _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_DEFAULT, "Client pushed a scope change for %@ which did not result in an actual change", &buf, 0xCu);
        }
      }
    }

    v21 = 1;
    goto LABEL_65;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v18 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138412290;
      v43 = v8;
      _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Client pushed a scope delete for %@ - we will try to delete it in the cloud", &buf, 0xCu);
    }
  }

  v19 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:48 forScope:v8 error:a4];
LABEL_39:
  v21 = v19;
LABEL_67:
  v12[2](v12);

  _Block_object_dispose(v40, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __53__CPLEngineScopeStorage_updateScopeWithChange_error___block_invoke(uint64_t result)
{
  v1 = *(*(result + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return [*(result + 32) beginCreatingScopeWithIdentifier:*(result + 40)];
  }

  return result;
}

uint64_t __53__CPLEngineScopeStorage_updateScopeWithChange_error___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    v1 = result;
    result = [*(result + 32) endCreatingScopeWithIdentifier:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (id)_createScopeFromScopeChange:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopeIdentifier];
  v8 = -[CPLEngineScopeStorage createScopeWithIdentifier:scopeType:flags:transportScope:error:](self, "createScopeWithIdentifier:scopeType:flags:transportScope:error:", v7, [v6 scopeType], objc_msgSend(v6, "defaultFlags"), 0, a4);

  if (v8)
  {
    v12 = 0;
    v9 = [(CPLEngineStorage *)self platformObject];
    v10 = [v9 storeScopeChange:v6 forScope:v8 scopeChangeHasBeenUpdated:&v12 error:a4];

    if ((v10 & 1) == 0)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)doesScopeSupportToBePulledByClient:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 doesScopeSupportToBePulledByClient:v4];

  return v6;
}

- (BOOL)doesScopeNeedToBePulledByClient:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 doesScopeNeedToBePulledByClient:v4];

  return v6;
}

- (BOOL)setScopeNeedsToBePulledByClient:(id)a3 error:(id *)a4
{
  self->_someScopeMightHaveToBePulledByClient = 1;
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  self->_schedulePullFromClient = 1;
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 setScopeNeedsToBePulledByClient:v6 error:a4];

  return a4;
}

- (BOOL)clientAcknowledgedScopeChanges:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        v13 = [v12 isScopeChange];
        v14 = v13;
        if (a4 && (v13 & 1) == 0)
        {
          *a4 = [CPLErrors cplErrorWithCode:50 description:@"incorrect change of class %@ in a batch of scope changes", objc_opt_class()];
        }

        v15 = [v12 scope];
        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = v14;
        }

        if (v16 == 1)
        {
          if (a4)
          {
            v17 = [v12 scopeIdentifier];
            *a4 = [CPLErrors cplErrorWithCode:50 description:@"missing inner scope in scope change for %@", v17];
LABEL_30:
          }

LABEL_31:
          v26 = 0;
          goto LABEL_32;
        }

        v17 = v15;
        if (!v14)
        {
          goto LABEL_30;
        }

        v18 = [(CPLEngineStorage *)self platformObject];
        v19 = [v18 setScope:v17 hasCompletedClientNeedsToPullTask:objc_msgSend(v12 error:{"pullTaskItem"), a4}];

        if (!v19)
        {
          goto LABEL_30;
        }

        if ([v12 isDelete])
        {
          v20 = [(CPLEngineStorage *)self engineStore];
          v21 = [v20 libraryOptions];

          if ((v21 & 0x400) != 0 || [(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v17])
          {
            v22 = [v12 scopeIdentifier];
            v23 = [(CPLEngineScopeStorage *)self deleteScopeWithIdentifier:v22 error:a4];

            if (!v23)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v24 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:16 forScope:v17 error:a4];

            if (!v24)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
        }

        ++v11;
      }

      while (v9 != v11);
      v25 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v9 = v25;
      v26 = 1;
    }

    while (v25);
  }

  else
  {
    v26 = 1;
  }

LABEL_32:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)scopeChangesNeedingToBePulledByClientWithMaximumCount:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  if (self->_someScopeMightHaveToBePulledByClient)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(CPLEngineStorage *)self platformObject];
    v7 = [v6 enumeratorForScopesNeedingToBePulledByClientWithMaximumCount:a3];

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [(CPLEngineScopeStorage *)self _scopeChangeToBePulledByClientForScope:v13];
          if (!v14)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v18 = __CPLStorageOSLogDomain_8656();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = [v13 scopeIdentifier];
                *buf = 138412290;
                v28 = v19;
                _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "failed to create a scope change for %@", buf, 0xCu);
              }
            }

            v20 = [MEMORY[0x1E696AAA8] currentHandler];
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
            v22 = [v13 scopeIdentifier];
            [v20 handleFailureInMethod:a2 object:self file:v21 lineNumber:362 description:{@"failed to create a scope change for %@", v22}];

            abort();
          }

          v15 = v14;
          if (!v10)
          {
            v10 = objc_alloc_init(CPLChangeBatch);
          }

          [(CPLChangeBatch *)v10 addRecord:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v9);
    }

    else
    {

      v10 = 0;
      self->_clearSomeScopeMightHaveToBePulledByClient = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_scopeChangeToBePulledByClientForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 flagsForScope:v4];

  v7 = +[CPLScopeChange scopeChangeClassForType:](CPLScopeChange, "scopeChangeClassForType:", [v4 scopeType]);
  if ([v6 valueForFlag:4] && (objc_msgSend(v6, "valueForFlag:", 64) & 1) == 0)
  {
    v8 = [v4 scopeIdentifier];
    v9 = -[objc_class newDeleteScopeChangeWithScopeIdentifier:type:](v7, "newDeleteScopeChangeWithScopeIdentifier:type:", v8, [v4 scopeType]);
  }

  else
  {
    v8 = [(CPLEngineStorage *)self platformObject];
    v9 = [v8 scopeChangeForScope:v4];
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(CPLEngineStorage *)self platformObject];
    v12 = [v11 clientNeedsToPullTaskForScope:v4];

    [v10 setPullTaskItem:v12];
    [v10 setScope:v4];
  }

  return v10;
}

- (BOOL)doScopesNeedMetadataSync:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  if ([v5 doScopesNeedMetadataSync:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CPLEngineStorage *)self engineStore];
    v8 = [v7 transientPullRepository];
    v6 = [v8 hasUnmingledOrStashedRecordsWithScopeFilter:v4];
  }

  return v6;
}

- (id)enumeratorForScopesWithMingling
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesWithMingling];

  return v3;
}

- (BOOL)setPullFromTransportExpirationInterval:(double)a3 scope:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a5) = [v9 setPullFromTransportExpirationInterval:v8 scope:a5 error:a3];

  return a5;
}

- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 doesScopeNeedToPullChangesFromTransport:v4];

  return v6;
}

- (BOOL)setScope:(id)a3 hasCompletedPullFromTransportTask:(int64_t)a4 error:(id *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  LODWORD(a4) = [v9 setScope:v8 hasCompletedPullFromTransportTask:a4 error:a5];

  if (a4)
  {
    if ([(CPLEngineScopeStorage *)self shouldTrackAdditionalInitialSyncDatesForScope:v8]&& ([(CPLEngineScopeStorage *)self initialMetadataDownloadDateForScope:v8], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = v8;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Setting initial metadata download date for %@", &v17, 0xCu);
        }
      }

      v15 = [(CPLEngineStorage *)self platformObject];
      v16 = [MEMORY[0x1E695DF00] date];
      v11 = [v15 storeInitialMetadataDownloadDate:v16 forScope:v8 error:a5];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)pullFromTransportTaskForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 pullFromTransportTaskForScope:v4];

  return v6;
}

- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)a3
{
  self->_schedulePullFromTransport = 1;
  v4 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a3) = [v4 setAllScopesHasChangesToPullFromTransportWithError:a3];

  return a3;
}

- (BOOL)setScopeHasChangesToPullFromTransport:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CPLEngineScopeStorage *)self valueForFlag:16 forScope:v6])
  {
    v7 = [(CPLEngineScopeStorage *)self setScopeNeedsUpdateFromTransport:v6 error:a4];
  }

  else
  {
    self->_schedulePullFromTransport = 1;
    v8 = [(CPLEngineScopeStorage *)self scopeChangeForScope:v6];
    if ([v8 shouldAlwaysUpdateScopeInfoWhenPossible] && !-[CPLEngineScopeStorage setScopeNeedsUpdateFromTransport:error:](self, "setScopeNeedsUpdateFromTransport:error:", v6, a4))
    {
      v7 = 0;
    }

    else
    {
      v9 = [(CPLEngineStorage *)self platformObject];
      v7 = [v9 setScopeHasChangesToPullFromTransport:v6 error:a4];
    }
  }

  return v7;
}

- (BOOL)hasScopesNeedingToPullChangesFromTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasScopesNeedingToPullChangesFromTransport];

  return v3;
}

- (id)enumeratorForScopesNeedingToPullChangesFromTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesNeedingToPullChangesFromTransport];

  return v3;
}

- (BOOL)doesScopeNeedToPushChangesToTransport:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 doesScopeNeedToPushChangesToTransport:v4];

  return v6;
}

- (BOOL)setScope:(id)a3 hasCompletedPushToTransportTask:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 setScope:v8 hasCompletedPushToTransportTask:a4 error:a5];

  if (v10)
  {
    [(CPLEngineScopeStorage *)self _checkSyncManagerPriorityBoost];
  }

  return v10;
}

- (int64_t)pushToTransportTaskForScope:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 pushToTransportTaskForScope:v4];

  return v6;
}

- (BOOL)setScopeHasChangesToPushToTransport:(id)a3 changeTypes:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFEFFLL) != 0)
  {
    v9 = a4 & 0xFFFFFFFFFFFFFEFFLL;
  }

  else
  {
    v9 = 122;
  }

  v10 = [(CPLEngineStorage *)self platformObject];
  v11 = [v10 flagsForScope:v8];

  if ([v11 valueForFlag:0x20000])
  {
    self->_schedulePushHighPriorityToTransportChangeTypes |= v9;
    [(CPLEngineScopeStorage *)self _forceSyncManagerPriorityBoost];
  }

  else
  {
    self->_schedulePushToTransportChangeTypes |= v9;
  }

  v12 = [(CPLEngineStorage *)self platformObject];
  v13 = [v12 setScopeHasChangesToPushToTransport:v8 error:a5];

  return v13;
}

- (BOOL)hasScopesNeedingToPushChangesToTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasScopesNeedingToPushChangesToTransport];

  return v3;
}

- (id)enumeratorForScopesNeedingToPushChangesToTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesNeedingToPushChangesToTransport];

  return v3;
}

- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasScopesNeedingToPushHighPriorityChangesToTransport];

  return v3;
}

- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesNeedingToPushHighPriorityChangesToTransport];

  return v3;
}

- (id)enumeratorForScopesNeedingUpdateFromTransport
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForScopesNeedingUpdateFromTransport];

  return v3;
}

- (id)enumeratorForDeletedStagedScopes
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 enumeratorForDeletedStagedScopes];

  return v3;
}

- (void)_checkSyncManagerPriorityBoost
{
  self->_shouldChangeSyncManagerPriorityBoost = 1;
  v3 = [(CPLEngineStorage *)self platformObject];
  self->_syncManagerPriorityBoost = [v3 hasScopesNeedingToPushHighPriorityChangesToTransport];
}

- (id)scopeWithStableIndex:(int64_t)a3
{
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithStableIndex:?];
  if (!v5)
  {
    v6 = [(CPLEngineStorage *)self platformObject];
    v5 = [v6 scopeWithStableIndex:a3];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (id)scopeWithCloudScopeIndex:(int64_t)a3
{
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithCloudIndex:?];
  if (!v5)
  {
    v6 = [(CPLEngineStorage *)self platformObject];
    v5 = [v6 scopeWithCloudIndex:a3];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (id)scopeWithLocalScopeIndex:(int64_t)a3
{
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithLocalIndex:?];
  if (!v5)
  {
    v6 = [(CPLEngineStorage *)self platformObject];
    v5 = [v6 scopeWithLocalIndex:a3];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (id)_scopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithIdentifier:v4];
  if (!v5)
  {
    v6 = [(CPLEngineStorage *)self platformObject];
    v5 = [v6 scopeWithIdentifier:v4];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (void)_removeBrokenScope:(id)a3
{
  v4 = a3;
  scopesToRemoveFromBrokenScopes = self->_scopesToRemoveFromBrokenScopes;
  v8 = v4;
  if (!scopesToRemoveFromBrokenScopes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_scopesToRemoveFromBrokenScopes;
    self->_scopesToRemoveFromBrokenScopes = v6;

    v4 = v8;
    scopesToRemoveFromBrokenScopes = self->_scopesToRemoveFromBrokenScopes;
  }

  [(NSMutableArray *)scopesToRemoveFromBrokenScopes addObject:v4];
}

- (void)_clearScopeCache
{
  v3 = objc_alloc_init(_CPLEngineScopeCache);
  scopeCache = self->_scopeCache;
  self->_scopeCache = v3;

  MEMORY[0x1EEE66BB8](v3, scopeCache);
}

- (void)_fixGlobalStatus
{
  v3 = [(CPLEngineScopeStorage *)self primaryScope];
  if (v3)
  {
    v6 = v3;
    v4 = [(CPLEngineScopeStorage *)self scopeChangeForScope:?];
    if (v4)
    {
      v5 = v4;
      [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:v4 forScope:v6];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)openWithError:(id *)a3
{
  v7.receiver = self;
  v7.super_class = CPLEngineScopeStorage;
  v4 = [(CPLEngineStorage *)&v7 openWithError:a3];
  if (v4)
  {
    v5 = [(CPLEngineStorage *)self engineStore];
    self->_someScopeMightHaveToBePulledByClient = [v5 shouldSyncScopeList];
  }

  return v4;
}

- (CPLEngineScopeStorage)initWithEngineStore:(id)a3 name:(id)a4
{
  v8.receiver = self;
  v8.super_class = CPLEngineScopeStorage;
  v4 = [(CPLEngineStorage *)&v8 initWithEngineStore:a3 name:a4];
  if (v4)
  {
    v5 = objc_alloc_init(_CPLEngineScopeCache);
    scopeCache = v4->_scopeCache;
    v4->_scopeCache = v5;
  }

  return v4;
}

@end