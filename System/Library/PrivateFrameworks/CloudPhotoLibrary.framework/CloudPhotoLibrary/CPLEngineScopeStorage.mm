@interface CPLEngineScopeStorage
- (BOOL)_activateSharedScopeIfPresentWithError:(id *)error;
- (BOOL)_doesScopeContributeToGlobalStatus:(id)status;
- (BOOL)_dropSharingScopeIdentifier:(id)identifier error:(id *)error;
- (BOOL)_forceClientToPullScopeIfNecessary:(id)necessary error:(id *)error;
- (BOOL)_handledDisabledFeaturesForScopeIfNecessary:(id)necessary type:(int64_t)type error:(id *)error;
- (BOOL)_isAvailableSharingScope:(void *)scope;
- (BOOL)_isValidSharingScope:(id)scope forScopeIdentifier:(id)identifier;
- (BOOL)_isValidSharingScopeIdentifier:(id)identifier scopeType:(int64_t)type forScopeIdentifier:(id)scopeIdentifier;
- (BOOL)_resetCompleteSyncStateForScope:(id)scope error:(id *)error;
- (BOOL)_resetLocalSyncStateForScope:(id)scope error:(id *)error;
- (BOOL)_setScopeType:(int64_t)type forScope:(id)scope error:(id *)error;
- (BOOL)_setSharingScopeIdentifier:(id)identifier error:(id *)error;
- (BOOL)activateScope:(id)scope error:(id *)error;
- (BOOL)addCleanupTasksForScope:(id)scope error:(id *)error;
- (BOOL)addRewindSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)clearAllQuotaFlagsForMainScopeWithReason:(id)reason error:(id *)error;
- (BOOL)clearTransportGroupsForScope:(id)scope error:(id *)error;
- (BOOL)clientAcknowledgedScopeChanges:(id)changes error:(id *)error;
- (BOOL)commitSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)deactivateScope:(id)scope error:(id *)error;
- (BOOL)deleteScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)didDropSomeRecordsForScope:(id)scope;
- (BOOL)disableInitialQueriesForScope:(id)scope error:(id *)error;
- (BOOL)disablePrimaryScopeWithError:(id *)error;
- (BOOL)discardStagedSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)doScopesNeedMetadataSync:(id)sync;
- (BOOL)doesScopeAllowCourtesyMingling:(id)mingling;
- (BOOL)doesScopeNeedToBePulledByClient:(id)client;
- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)transport;
- (BOOL)doesScopeNeedToPushChangesToTransport:(id)transport;
- (BOOL)doesScopeNeedToUpdateTransport:(id)transport;
- (BOOL)doesScopeNeedToUploadComputeState:(id)state;
- (BOOL)doesScopeSupportToBePulledByClient:(id)client;
- (BOOL)enablePrimaryScopeWithError:(id *)error;
- (BOOL)hasFinishedAFullSyncForScope:(id)scope;
- (BOOL)hasFinishedInitialDownloadForScope:(id)scope;
- (BOOL)hasFinishedInitialSyncForScope:(id)scope;
- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)anchor;
- (BOOL)hasScopesNeedingToPullChangesFromTransport;
- (BOOL)hasScopesNeedingToPushChangesToTransport;
- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport;
- (BOOL)hasScopesNeedingToUploadComputeState;
- (BOOL)hasStagedSyncAnchorForScope:(id)scope;
- (BOOL)hasStagedSyncAnchors;
- (BOOL)markInitialQueryIsDoneForRecordsOfClass:(Class)class forScope:(id)scope error:(id *)error;
- (BOOL)noteDidCheckAssetWithServerWhenOverQuotaForScope:(id)scope error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)resetCloudRecordsForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetCompleteSyncStateForScope:(id)scope error:(id *)error;
- (BOOL)resetCompleteSyncStateIncludingIDMappingForScope:(id)scope error:(id *)error;
- (BOOL)resetDidCheckAssetWithServerWhenOverQuotaForScope:(id)scope error:(id *)error;
- (BOOL)resetInitialSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)resetLocalRecordsForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetLocalSyncStateForScope:(id)scope error:(id *)error;
- (BOOL)resetStableRecordsForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetSyncAnchorForScope:(id)scope error:(id *)error;
- (BOOL)resetSyncStateForScope:(id)scope error:(id *)error;
- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)error;
- (BOOL)setCloudScopeIndexOnChange:(id)change;
- (BOOL)setDeleteDate:(id)date forScope:(id)scope error:(id *)error;
- (BOOL)setDidDropSomeRecordsForScope:(id)scope error:(id *)error;
- (BOOL)setDisabledDate:(id)date forScope:(id)scope error:(id *)error;
- (BOOL)setHasFinishedInitialDownloadForScope:(id)scope error:(id *)error;
- (BOOL)setHasUpdatedScope:(id)scope fromTransportWithError:(id *)error;
- (BOOL)setInitialSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)setLocalScopeIndexOnChange:(id)change;
- (BOOL)setPullFromTransportExpirationInterval:(double)interval scope:(id)scope error:(id *)error;
- (BOOL)setScope:(id)scope hasCompletedInitialMinglingWithError:(id *)error;
- (BOOL)setScope:(id)scope hasCompletedPullFromTransportTask:(int64_t)task error:(id *)error;
- (BOOL)setScope:(id)scope hasCompletedPushToTransportTask:(int64_t)task error:(id *)error;
- (BOOL)setScope:(id)scope hasCompletedTransportUpdate:(int64_t)update error:(id *)error;
- (BOOL)setScope:(id)scope hasCompletedUploadComputeStateTask:(int64_t)task error:(id *)error;
- (BOOL)setScopeHasChangesToPullFromTransport:(id)transport error:(id *)error;
- (BOOL)setScopeHasChangesToPushToTransport:(id)transport changeTypes:(unint64_t)types error:(id *)error;
- (BOOL)setScopeNeedsToBePulledByClient:(id)client error:(id *)error;
- (BOOL)setScopeNeedsToUpdateTransport:(id)transport error:(id *)error;
- (BOOL)setScopeNeedsToUploadComputeState:(id)state error:(id *)error;
- (BOOL)setScopeNeedsUpdateFromTransport:(id)transport error:(id *)error;
- (BOOL)setSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)setTransportScope:(id)scope forScope:(id)forScope error:(id *)error;
- (BOOL)setupAnchorResetTransportGroupForScope:(id)scope error:(id *)error;
- (BOOL)setupInitialSyncTransportGroupsForScope:(id)scope error:(id *)error;
- (BOOL)setupResetSyncTransportGroupForScope:(id)scope error:(id *)error;
- (BOOL)shouldAutoactivateScopeWithIdentifier:(id)identifier scopeType:(int64_t)type;
- (BOOL)shouldCheckAssetsWithServerWhenOverQuotaForScope:(id)scope;
- (BOOL)shouldDropAllUploadsForScope:(id)scope dropReason:(id *)reason shouldQuarantineRecords:(BOOL *)records;
- (BOOL)shouldTrackAdditionalInitialSyncDatesForScope:(id)scope;
- (BOOL)storeBusyState:(int64_t)state forScope:(id)scope error:(id *)error;
- (BOOL)storeEstimatedSize:(unint64_t)size estimatedAssetCount:(unint64_t)count forScope:(id)scope error:(id *)error;
- (BOOL)storeLastDateOfClearedPushRepository:(id)repository forScope:(id)scope error:(id *)error;
- (BOOL)storeRewindSyncAnchors:(id)anchors forScope:(id)scope error:(id *)error;
- (BOOL)storeScopeChange:(id)change forScope:(id)scope error:(id *)error;
- (BOOL)storeScopeListSyncAnchor:(id)anchor error:(id *)error;
- (BOOL)storeSupervisorInfo:(id)info forScope:(id)scope error:(id *)error;
- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)sync forScope:(id)scope error:(id *)error;
- (BOOL)storeTransientSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error;
- (BOOL)supportedFeatureVersionIsMostRecentForScope:(id)scope;
- (BOOL)updateFlags:(id)flags forScope:(id)scope error:(id *)error;
- (BOOL)updateInitialSyncTransportGroupEstimatedSize:(unint64_t)size assetCount:(unint64_t)count forScope:(id)scope error:(id *)error;
- (BOOL)updateScopeWithChange:(id)change error:(id *)error;
- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)options error:(id *)error;
- (BOOL)valueForFlag:(int64_t)flag forScope:(id)scope;
- (CPLEngineScopeStorage)initWithEngineStore:(id)store name:(id)name;
- (Class)classOfRecordsForInitialQueryForScope:(id)scope;
- (id)_createScopeFromScopeChange:(id)change error:(id *)error;
- (id)_realScopeIdentifiersFromScopeIdentifiers:(id)identifiers;
- (id)_scopeChangeToBePulledByClientForScope:(id)scope;
- (id)_scopeWithIdentifier:(id)identifier;
- (id)activationDateForScope:(id)scope;
- (id)createScopeWithIdentifier:(id)identifier scopeType:(int64_t)type flags:(int64_t)flags transportScope:(id)scope error:(id *)error;
- (id)deleteDateForScope:(id)scope;
- (id)disabledDateForScope:(id)scope;
- (id)downloadTransportGroupForScope:(id)scope;
- (id)enumeratorForDeletedStagedScopes;
- (id)enumeratorForScopesNeedingToPullChangesFromTransport;
- (id)enumeratorForScopesNeedingToPushChangesToTransport;
- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport;
- (id)enumeratorForScopesNeedingToUpdateTransport;
- (id)enumeratorForScopesNeedingToUploadComputeState;
- (id)enumeratorForScopesNeedingUpdateFromTransport;
- (id)enumeratorForScopesWithMingling;
- (id)filterForExcludedScopeIdentifiers:(id)identifiers;
- (id)filterForIncludedScopeIdentifiers:(id)identifiers;
- (id)flagsForScope:(id)scope;
- (id)initialMetadataDownloadDateForScope:(id)scope;
- (id)initialMetadataQueriesDateForScope:(id)scope;
- (id)initialMingleDateForScope:(id)scope;
- (id)initialSyncAnchorForScope:(id)scope;
- (id)lastDateOfClearedPushRepositoryForScope:(id)scope;
- (id)lastDateOfCompletedPullFromTransportForScope:(id)scope;
- (id)mostCurrentChangesSyncAnchorForScope:(id)scope;
- (id)primaryScope;
- (id)remainingClassesForInitialQueryForScope:(id)scope;
- (id)rewindSyncAnchorsForScope:(id)scope;
- (id)scopeChangeForScope:(id)scope;
- (id)scopeChangesNeedingToBePulledByClientWithMaximumCount:(unint64_t)count;
- (id)scopeForSharingScope:(id)scope;
- (id)scopeIdentifierForCloudScopeIndex:(int64_t)index;
- (id)scopeIdentifierForLocalScopeIndex:(int64_t)index;
- (id)scopeListSyncAnchor;
- (id)scopeWithCloudScopeIndex:(int64_t)index;
- (id)scopeWithLocalScopeIndex:(int64_t)index;
- (id)scopeWithStableIndex:(int64_t)index;
- (id)scopedIdentifierForCloudScopedIdentifier:(id)identifier;
- (id)scopedIdentifierForLocalScopedIdentifier:(id)identifier;
- (id)sharingScopeForScope:(id)scope;
- (id)stagingScopeForScope:(id)scope;
- (id)status;
- (id)statusDictionaryForScope:(id)scope;
- (id)supervisorInfoForScope:(id)scope;
- (id)syncAnchorForScope:(id)scope;
- (id)transientSyncAnchorForScope:(id)scope;
- (id)transportScopeForScope:(id)scope;
- (id)updatedScopeFilter:(id)filter;
- (id)uploadTransportGroupForScope:(id)scope;
- (id)validCloudScopeIndexes;
- (id)validLocalScopeIndexes;
- (int64_t)busyStateForScope:(id)scope;
- (int64_t)indexForCloudScopeIdentifier:(id)identifier;
- (int64_t)indexForLocalScopeIdentifier:(id)identifier;
- (int64_t)pullFromTransportTaskForScope:(id)scope;
- (int64_t)pushToTransportTaskForScope:(id)scope;
- (int64_t)stableScopeIndexForScopeIdentifier:(id)identifier;
- (int64_t)transportUpdateTaskForScope:(id)scope;
- (int64_t)uploadComputeStateTaskForScope:(id)scope;
- (unint64_t)_indexOfCurrentClassForInitialQueriesForScope:(id)scope;
- (unint64_t)estimatedAssetCountForScope:(id)scope;
- (unint64_t)estimatedSizeForScope:(id)scope;
- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)scope;
- (void)_checkSyncManagerPriorityBoost;
- (void)_clearScopeCache;
- (void)_fixGlobalStatus;
- (void)_notifyScopeObserversForScope:(id)scope flagsUpdate:(id)update;
- (void)_removeBrokenScope:(id)scope;
- (void)_resetGlobalsForMainScope;
- (void)_updateGlobalStatusWithScopeChange:(id)change forScope:(id)scope;
- (void)addScopeFlagsObserver:(id)observer withIdentifier:(id)identifier;
- (void)beginCreatingScopeWithIdentifier:(id)identifier;
- (void)endCreatingScopeWithIdentifier:(id)identifier;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineScopeStorage

- (id)enumeratorForScopesNeedingToUpdateTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesNeedingToUpdateTransport = [platformObject enumeratorForScopesNeedingToUpdateTransport];

  return enumeratorForScopesNeedingToUpdateTransport;
}

- (id)scopeListSyncAnchor
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  scopeListSyncAnchor = [platformObject scopeListSyncAnchor];

  return scopeListSyncAnchor;
}

- (BOOL)hasStagedSyncAnchors
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasStagedSyncAnchors = [platformObject hasStagedSyncAnchors];

  return hasStagedSyncAnchors;
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
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler noteTransportNeedsUpdate];

    self->_scheduleATransportUpdate = 0;
  }

  if (self->_scheduleAScopeUpdate)
  {
    engineStore2 = [(CPLEngineStorage *)self engineStore];
    engineLibrary2 = [engineStore2 engineLibrary];
    scheduler2 = [engineLibrary2 scheduler];
    [scheduler2 noteScopeNeedsUpdate];

    self->_scheduleAScopeUpdate = 0;
  }

  if (self->_schedulePushHighPriorityToTransportChangeTypes)
  {
    engineStore3 = [(CPLEngineStorage *)self engineStore];
    engineLibrary3 = [engineStore3 engineLibrary];
    scheduler3 = [engineLibrary3 scheduler];
    [scheduler3 noteScopeNeedsToPushHighPriorityToTransport];

    self->_schedulePushHighPriorityToTransportChangeTypes = 0;
  }

  if (self->_schedulePushToTransportChangeTypes)
  {
    engineStore4 = [(CPLEngineStorage *)self engineStore];
    engineLibrary4 = [engineStore4 engineLibrary];
    scheduler4 = [engineLibrary4 scheduler];
    [scheduler4 noteScopeNeedsToPushToTransportWithChangeTypes:self->_schedulePushToTransportChangeTypes];

    self->_schedulePushToTransportChangeTypes = 0;
  }

  if (self->_schedulePullFromTransport)
  {
    engineStore5 = [(CPLEngineStorage *)self engineStore];
    engineLibrary5 = [engineStore5 engineLibrary];
    scheduler5 = [engineLibrary5 scheduler];
    [scheduler5 noteScopeNeedsToPullFromTransport];

    self->_schedulePullFromTransport = 0;
  }

  if (self->_schedulePullFromClient)
  {
    engineStore6 = [(CPLEngineStorage *)self engineStore];
    engineLibrary6 = [engineStore6 engineLibrary];
    [engineLibrary6 notifyAttachedObjectsPullQueueIsFull];

    self->_schedulePullFromClient = 0;
  }

  if (self->_shouldChangeSyncManagerPriorityBoost)
  {
    engineStore7 = [(CPLEngineStorage *)self engineStore];
    engineLibrary7 = [engineStore7 engineLibrary];
    syncManager = [engineLibrary7 syncManager];
    [syncManager setBoostPriority:self->_syncManagerPriorityBoost];

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
          engineStore8 = [(CPLEngineStorage *)self engineStore];
          engineLibrary8 = [engineStore8 engineLibrary];
          syncManager2 = [engineLibrary8 syncManager];
          [syncManager2 removeBrokenScope:v29];
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
    engineStore9 = [(CPLEngineStorage *)self engineStore];
    engineLibrary9 = [engineStore9 engineLibrary];

    [engineLibrary9 updateAssetCountsFromServer:self->_assetCountsToUpdate];
    [engineLibrary9 setServerFeatureCompatibleVersion:self->_serverFeatureCompatibleVersionToUpdate];
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
        allObjects = [(NSCountedSet *)self->_scopeIdentifiersBeingCreated allObjects];
        v40 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v52 = v40;
        _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_ERROR, "Missing calls to -endCreatingScopeWithIdentifier: for %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    allObjects2 = [(NSCountedSet *)self->_scopeIdentifiersBeingCreated allObjects];
    v44 = [allObjects2 componentsJoinedByString:{@", "}];
    [currentHandler handleFailureInMethod:a2 object:self file:v42 lineNumber:1396 description:{@"Missing calls to -endCreatingScopeWithIdentifier: for %@", v44}];

    abort();
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldDropAllUploadsForScope:(id)scope dropReason:(id *)reason shouldQuarantineRecords:(BOOL *)records
{
  scopeCopy = scope;
  if (CPLIsInTestReadonlyMode())
  {
    v9 = 0;
    v10 = @"test read-only mode";
    if (!records)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];
  iCloudLibraryClientVersionTooOld = [engineLibrary iCloudLibraryClientVersionTooOld];

  if (iCloudLibraryClientVersionTooOld)
  {
    v9 = 0;
    v10 = @"client version is too old";
    if (!records)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v14 = [(CPLEngineScopeStorage *)self flagsForScope:scopeCopy];
  flags = [v14 flags];

  if ((flags & 4) != 0)
  {
    v9 = 0;
    v10 = @"scope has been deleted";
    if (!records)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((flags & 0x10) != 0)
  {
    v9 = 0;
    v10 = @"scope has been de-activated";
    if (!records)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (flags)
  {
    v9 = 1;
    v10 = @"scope is read-only";
    if (!records)
    {
LABEL_18:
      *reason = v10;
      v16 = 1;
      goto LABEL_19;
    }

LABEL_17:
    *records = v9;
    goto LABEL_18;
  }

  if ((flags & 8) != 0)
  {
    v9 = 1;
    v10 = @"scope has been disabled";
    if (!records)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)initialMingleDateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject initialMingleDateForScope:scopeCopy];

  return v6;
}

- (BOOL)setScope:(id)scope hasCompletedInitialMinglingWithError:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(error) = [platformObject storeInitialMingleDate:date forScope:scopeCopy error:error];

  return error;
}

- (id)initialMetadataDownloadDateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject initialMetadataDownloadDateForScope:scopeCopy];

  return v6;
}

- (id)initialMetadataQueriesDateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject initialMetadataQueriesDateForScope:scopeCopy];

  return v6;
}

- (id)activationDateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject activationDateForScope:scopeCopy];

  return v6;
}

- (BOOL)shouldTrackAdditionalInitialSyncDatesForScope:(id)scope
{
  v3 = [(CPLEngineScopeStorage *)self activationDateForScope:scope];
  v4 = v3 != 0;

  return v4;
}

- (void)addScopeFlagsObserver:(id)observer withIdentifier:(id)identifier
{
  observerCopy = observer;
  identifierCopy = identifier;
  if (!self->_scopeObservers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scopeObservers = self->_scopeObservers;
    self->_scopeObservers = v7;
  }

  v9 = [observerCopy copy];
  v10 = MEMORY[0x1E128EBA0]();
  [(NSMutableDictionary *)self->_scopeObservers setObject:v10 forKeyedSubscript:identifierCopy];
}

- (BOOL)resetDidCheckAssetWithServerWhenOverQuotaForScope:(id)scope error:(id *)error
{
  scopeIdentifier = [scope scopeIdentifier];
  v5 = [scopeIdentifier isEqualToString:@"PrimarySync"];

  if (v5)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:@"_CPLLastAssetCheckOverQuotaDateForPrimarySync"];
  }

  return 1;
}

- (BOOL)noteDidCheckAssetWithServerWhenOverQuotaForScope:(id)scope error:(id *)error
{
  scopeIdentifier = [scope scopeIdentifier];
  v5 = [scopeIdentifier isEqualToString:@"PrimarySync"];

  if (v5)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    date = [MEMORY[0x1E695DF00] date];
    [standardUserDefaults setObject:date forKey:@"_CPLLastAssetCheckOverQuotaDateForPrimarySync"];
  }

  return 1;
}

- (BOOL)shouldCheckAssetsWithServerWhenOverQuotaForScope:(id)scope
{
  scopeIdentifier = [scope scopeIdentifier];
  v5 = [scopeIdentifier isEqualToString:@"PrimarySync"];

  if (v5)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"_CPLLastAssetCheckOverQuotaDateForPrimarySync"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v7)
      {
        standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
        v9 = [standardUserDefaults2 objectForKey:@"CPLMinimumIntervalBetweenOverQuotaRechecks"];

        if (v9)
        {
          [v9 doubleValue];
          v11 = v10;
        }

        else
        {
          engineStore = [(CPLEngineStorage *)self engineStore];
          engineLibrary = [engineStore engineLibrary];
          configuration = [engineLibrary configuration];
          v16 = [configuration objectForKeyedSubscript:@"over_quota.minimum_interval_between_rechecks.seconds"];

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

- (void)endCreatingScopeWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
        v15 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to call %@ for %@ too many times", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v9 lineNumber:2835 description:{@"Trying to call %@ for %@ too many times", v10, identifierCopy}];

    abort();
  }

  [(NSCountedSet *)self->_scopeIdentifiersBeingCreated removeObject:identifierCopy];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)beginCreatingScopeWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = identifierCopy;
  if (!self->_scopeIdentifiersBeingCreated)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    scopeIdentifiersBeingCreated = self->_scopeIdentifiersBeingCreated;
    self->_scopeIdentifiersBeingCreated = v6;

    identifierCopy = v13;
  }

  v8 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:identifierCopy];

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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:2829 description:{@"Begin creation of %@ but it is already present", v13}];

    abort();
  }

  [(NSCountedSet *)self->_scopeIdentifiersBeingCreated addObject:v13];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)mostCurrentChangesSyncAnchorForScope:(id)scope
{
  scopeCopy = scope;
  if ([(CPLEngineScopeStorage *)self classOfRecordsForInitialQueryForScope:scopeCopy])
  {
    v5 = 0;
  }

  else
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v5 = [platformObject transientSyncAnchorForScope:scopeCopy];

    if (!v5)
    {
      v9 = 0;
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v5 = [platformObject2 syncAnchorForScope:scopeCopy isCommitted:&v9];
    }
  }

  return v5;
}

- (id)supervisorInfoForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject supervisorInfoForScope:scopeCopy];

  return v6;
}

- (BOOL)storeSupervisorInfo:(id)info forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  infoCopy = info;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject storeSupervisorInfo:infoCopy forScope:scopeCopy error:error];

  return error;
}

- (int64_t)busyStateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject busyStateForScope:scopeCopy];

  return v6;
}

- (BOOL)storeBusyState:(int64_t)state forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject storeBusyState:state forScope:scopeCopy error:error];

  if (v10)
  {
    scopeIdentifier = [scopeCopy scopeIdentifier];
    mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
    v13 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

    if (v13)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore engineLibrary];
      [engineLibrary setBusyState:state];
    }
  }

  return v10;
}

- (BOOL)addRewindSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  anchorCopy = anchor;
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject rewindSyncAnchorsForScope:scopeCopy];

  v12 = v11;
  v13 = v12;
  if (v12)
  {
    if ([v12 containsObject:anchorCopy])
    {
      v14 = 1;
      v15 = v13;
      goto LABEL_11;
    }

    v15 = [v13 mutableCopy];
    [v15 addObject:anchorCopy];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{anchorCopy, 0}];
  }

  if (v15 == v13)
  {
    v14 = 1;
  }

  else
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v17 = [platformObject2 storeRewindSyncAnchors:v15 forScope:scopeCopy error:error];

    if (v17)
    {
      v14 = [(CPLEngineScopeStorage *)self setScopeHasChangesToPullFromTransport:scopeCopy error:error];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_11:

  return v14;
}

- (BOOL)storeRewindSyncAnchors:(id)anchors forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  anchorsCopy = anchors;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject storeRewindSyncAnchors:anchorsCopy forScope:scopeCopy error:error];

  return error;
}

- (id)rewindSyncAnchorsForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject rewindSyncAnchorsForScope:scopeCopy];

  return v6;
}

- (id)stagingScopeForScope:(id)scope
{
  scopeCopy = scope;
  if ([(CPLEngineScopeStorage *)self valueForFlag:64 forScope:scopeCopy])
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v6 = [platformObject stagingScopeForScope:scopeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)scopeForSharingScope:(id)scope
{
  scopeCopy = scope;
  if (([scopeCopy scopeType] - 6) >= 0xFFFFFFFFFFFFFFFELL)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    sharingScopeIdentifier = [engineStore sharingScopeIdentifier];

    if (sharingScopeIdentifier && ([scopeCopy scopeIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", sharingScopeIdentifier), v8, v9))
    {
      primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
      if ([(CPLEngineScopeStorage *)self valueForFlag:16 forScope:primaryScope]|| [(CPLEngineScopeStorage *)self valueForFlag:16 forScope:scopeCopy])
      {
        v5 = 0;
      }

      else
      {
        v5 = primaryScope;
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

- (id)sharingScopeForScope:(id)scope
{
  v28 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if ([scopeCopy scopeType] != 1)
  {
    v11 = 0;
    goto LABEL_26;
  }

  engineStore = [(CPLEngineStorage *)self engineStore];
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];

  if (!sharingScopeIdentifier || ([scopeCopy scopeIdentifier], v7 = objc_claimAutoreleasedReturnValue(), -[CPLEngineStorage mainScopeIdentifier](self, "mainScopeIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, !v9))
  {
    v10 = [(CPLEngineScopeStorage *)self flagsForScope:scopeCopy];
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
        v22 = sharingScopeIdentifier;
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
            scopeIdentifier = [scopeCopy scopeIdentifier];
            if ([(CPLEngineScopeStorage *)self _isValidSharingScope:v17 forScopeIdentifier:scopeIdentifier])
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
        sharingScopeIdentifier = v22;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v10 = [(CPLEngineScopeStorage *)self scopeWithIdentifier:sharingScopeIdentifier];
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

- (BOOL)_isAvailableSharingScope:(void *)scope
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (scope && v3)
  {
    v6 = [scope flagsForScope:v3];
    v5 = 1;
    if ([v6 valueForFlag:4])
    {
      v7 = [scope stagingScopeForScope:v4];

      if (!v7)
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (BOOL)doesScopeAllowCourtesyMingling:(id)mingling
{
  minglingCopy = mingling;
  engineStore = [(CPLEngineStorage *)self engineStore];
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];

  if (sharingScopeIdentifier)
  {
    scopeIdentifier = [minglingCopy scopeIdentifier];
    v8 = [scopeIdentifier isEqualToString:sharingScopeIdentifier];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)updatedScopeFilter:(id)filter
{
  filterCopy = filter;
  includedScopeIdentifiers = [filterCopy includedScopeIdentifiers];
  if ([includedScopeIdentifiers count])
  {
    v7 = [(CPLEngineScopeStorage *)self _realScopeIdentifiersFromScopeIdentifiers:includedScopeIdentifiers];
    if (includedScopeIdentifiers != v7)
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

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
        [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:2658 description:@"Unexpected new scope identifiers list"];

        abort();
      }

      if (([includedScopeIdentifiers isEqualToSet:v7] & 1) == 0)
      {
        platformObject = [(CPLEngineStorage *)self platformObject];
        v9 = [platformObject filterForIncludedScopeIdentifiers:v7];

        filterCopy = v9;
      }
    }
  }

  return filterCopy;
}

- (id)filterForExcludedScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject filterForExcludedScopeIdentifiers:identifiersCopy];

  return v6;
}

- (id)filterForIncludedScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [(CPLEngineScopeStorage *)self _realScopeIdentifiersFromScopeIdentifiers:identifiersCopy];

  v7 = [platformObject filterForIncludedScopeIdentifiers:v6];

  return v7;
}

- (id)_realScopeIdentifiersFromScopeIdentifiers:(id)identifiers
{
  v37 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  engineStore = [(CPLEngineStorage *)self engineStore];
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];

  if (sharingScopeIdentifier)
  {
    primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
    if (!primaryScope)
    {
LABEL_16:

      goto LABEL_17;
    }

    v8 = [(CPLEngineScopeStorage *)self sharingScopeForScope:primaryScope];
    if (!v8)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
      if ([identifiersCopy containsObject:mainScopeIdentifier])
      {
        scopeIdentifier = [v8 scopeIdentifier];
        v11 = [identifiersCopy containsObject:scopeIdentifier];

        if ((v11 & 1) == 0)
        {
          scopeIdentifier2 = [v8 scopeIdentifier];
          v13 = [identifiersCopy arrayByAddingObject:scopeIdentifier2];
LABEL_12:
          v16 = v13;

LABEL_15:
          identifiersCopy = v16;
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
        v30 = primaryScope;
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = identifiersCopy;
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
              mainScopeIdentifier2 = [(CPLEngineStorage *)self mainScopeIdentifier];
              v26 = [v24 isEqualToString:mainScopeIdentifier2];

              if (v26)
              {
                if ((v21 & 1) == 0)
                {
                  scopeIdentifier3 = [v8 scopeIdentifier];
                  [v16 addObject:scopeIdentifier3];
                }

                v21 = 1;
              }

              else
              {
                scopeIdentifier4 = [v8 scopeIdentifier];
                v29 = [v24 isEqualToString:scopeIdentifier4];

                v21 |= v29;
              }
            }

            v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v20);
        }

        primaryScope = v30;
        goto LABEL_15;
      }

      mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
      if ([identifiersCopy containsObject:mainScopeIdentifier])
      {
        scopeIdentifier5 = [v8 scopeIdentifier];
        v15 = [identifiersCopy containsObject:scopeIdentifier5];

        if ((v15 & 1) == 0)
        {
          scopeIdentifier2 = [v8 scopeIdentifier];
          v13 = [identifiersCopy setByAddingObject:scopeIdentifier2];
          goto LABEL_12;
        }

LABEL_14:
        v16 = identifiersCopy;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];

  return identifiersCopy;
}

- (BOOL)storeScopeListSyncAnchor:(id)anchor error:(id *)error
{
  anchorCopy = anchor;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject storeScopeListSyncAnchor:anchorCopy error:error];

  if (!anchorCopy && v8)
  {
    self->_someScopeMightHaveToBePulledByClient = 1;
    self->_clearSomeScopeMightHaveToBePulledByClient = 0;
    self->_schedulePullFromClient = 1;
  }

  return v8;
}

- (BOOL)shouldAutoactivateScopeWithIdentifier:(id)identifier scopeType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![CPLScopeChange shouldAutoActivateScopeWithType:type])
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
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 4 && (CPLAllowsInactiveSharedLibraryScope_allowsInactiveSharedLibraryScope & 1) == 0)
  {
    mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
    v9 = [(CPLEngineScopeStorage *)self _isValidSharingScopeIdentifier:identifierCopy scopeType:type forScopeIdentifier:mainScopeIdentifier];

    if (v9)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      sharingScopeIdentifier = [engineStore sharingScopeIdentifier];

      if (sharingScopeIdentifier && ([sharingScopeIdentifier isEqualToString:identifierCopy] & 1) == 0)
      {
        if (_CPLSilentLogging)
        {
          v7 = 0;
          goto LABEL_22;
        }

        primaryScope = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(primaryScope, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543618;
          v17 = identifierCopy;
          v18 = 2114;
          v19 = sharingScopeIdentifier;
          _os_log_impl(&dword_1DC05A000, primaryScope, OS_LOG_TYPE_DEFAULT, "Won't auto-activate %{public}@ as %{public}@ is already in use", &v16, 0x16u);
        }
      }

      else
      {
        primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
        if (primaryScope && ![(CPLEngineScopeStorage *)self valueForFlag:16 forScope:primaryScope])
        {
          goto LABEL_21;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 138543362;
            v17 = identifierCopy;
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

- (BOOL)deactivateScope:(id)scope error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v7 = [(CPLEngineScopeStorage *)self flagsForScope:scopeCopy];
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
        v13 = scopeCopy;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Deactivating %@", &v12, 0xCu);
      }
    }

    [v7 setValue:1 forFlag:16];
    if ([(CPLEngineScopeStorage *)self updateFlags:v7 forScope:scopeCopy error:error])
    {
      v8 = [(CPLEngineScopeStorage *)self _forceClientToPullScopeIfNecessary:scopeCopy error:error];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)activateScope:(id)scope error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v7 = [(CPLEngineScopeStorage *)self flagsForScope:scopeCopy];
  if ([v7 valueForFlag:16])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = scopeCopy;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Activating %@", &v12, 0xCu);
      }
    }

    [v7 setValue:0 forFlag:16];
    v9 = [(CPLEngineScopeStorage *)self updateFlags:v7 forScope:scopeCopy error:error]&& [(CPLEngineScopeStorage *)self setTransportScope:0 forScope:scopeCopy error:error]&& [(CPLEngineScopeStorage *)self _forceClientToPullScopeIfNecessary:scopeCopy error:error];
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_forceClientToPullScopeIfNecessary:(id)necessary error:(id *)error
{
  necessaryCopy = necessary;
  engineStore = [(CPLEngineStorage *)self engineStore];
  libraryOptions = [engineStore libraryOptions];

  v9 = (libraryOptions & 0x400) == 0 || [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:necessaryCopy error:error];
  return v9;
}

- (BOOL)disablePrimaryScopeWithError:(id *)error
{
  engineStore = [(CPLEngineStorage *)self engineStore];
  libraryOptions = [engineStore libraryOptions];

  if (libraryOptions)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    primaryScope = [platformObject primaryScope];

    if (primaryScope)
    {
      v8 = [(CPLEngineScopeStorage *)self deactivateScope:primaryScope error:error];
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

    if (error)
    {
      [CPLErrors incorrectParametersErrorForParameter:@"libraryOptions"];
      *error = v8 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (BOOL)enablePrimaryScopeWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  engineStore = [(CPLEngineStorage *)self engineStore];
  libraryOptions = [engineStore libraryOptions];

  if (libraryOptions)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    primaryScope = [platformObject primaryScope];

    if (!primaryScope)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
          v21 = 138543362;
          v22 = mainScopeIdentifier;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Creating %{public}@", &v21, 0xCu);
        }
      }

      mainScopeIdentifier2 = [(CPLEngineStorage *)self mainScopeIdentifier];
      v15 = [(CPLEngineScopeStorage *)self createScopeWithIdentifier:mainScopeIdentifier2 scopeType:1 flags:0 transportScope:0 error:error];

      primaryScope = 0;
      if (v15)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if ([primaryScope scopeType]== 1)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_34;
      }

      v11 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = primaryScope;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Activating %@", &v21, 0xCu);
      }
    }

    else
    {
      if ([primaryScope scopeType])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v21 = 138412290;
            v22 = primaryScope;
            _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Trying to enable main scope %@ but it is not a library", &v21, 0xCu);
          }
        }

        if (error)
        {
          +[CPLErrors unknownError];
          *error = v8 = 0;
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
          v22 = primaryScope;
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Found main scope %@ which has not been identified yet - forcing scope type to %@", &v21, 0x16u);
        }
      }

      if (![(CPLEngineScopeStorage *)self _setScopeType:1 forScope:primaryScope error:error])
      {
        goto LABEL_36;
      }

      v11 = primaryScope;
      primaryScope = [primaryScope copyWithScopeType:1];
    }

LABEL_34:
    if ([(CPLEngineScopeStorage *)self activateScope:primaryScope error:error])
    {
LABEL_35:
      v8 = [(CPLEngineScopeStorage *)self _activateSharedScopeIfPresentWithError:error];
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

  if (error)
  {
    [CPLErrors incorrectParametersErrorForParameter:@"libraryOptions"];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_38:
  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_activateSharedScopeIfPresentWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  engineStore = [(CPLEngineStorage *)self engineStore];
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];

  if (sharingScopeIdentifier)
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
            scopeIdentifier = [v13 scopeIdentifier];
            v15 = -[CPLEngineScopeStorage shouldAutoactivateScopeWithIdentifier:scopeType:](self, "shouldAutoactivateScopeWithIdentifier:scopeType:", scopeIdentifier, [v13 scopeType]);

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

              v7 = [(CPLEngineScopeStorage *)self activateScope:v13 error:error];
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
  platformObject = [(CPLEngineStorage *)self platformObject];
  primaryScope = [platformObject primaryScope];

  return primaryScope;
}

- (id)statusDictionaryForScope:(id)scope
{
  v76[3] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [scopeCopy scopeType]);
  [v5 setObject:v6 forKeyedSubscript:@"scope type"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(scopeCopy, "localIndex")}];
  v76[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(scopeCopy, "cloudIndex")}];
  v76[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(scopeCopy, "stableIndex")}];
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
  platformObject = [(CPLEngineStorage *)self platformObject];
  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];
  transport = [engineLibrary transport];

  creationDate = [scopeCopy creationDate];
  (v11)[2](v11, @"creation date", creationDate);

  v17 = [platformObject flagsForScope:scopeCopy];
  arrayDescription = [v17 arrayDescription];

  if ([arrayDescription count])
  {
    (v11)[2](v11, @"flags", arrayDescription);
  }

  v19 = [platformObject busyStateForScope:scopeCopy];
  if (v19)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
    (v11)[2](v11, @"busyState", v20);
  }

  v21 = [platformObject transportScopeForScope:scopeCopy];
  v70 = v21;
  if (v21)
  {
    v22 = [transport scopeNameForTransportScope:v21];
    (v11)[2](v11, @"zone", v22);
  }

  else
  {
    (v11)[2](v11, @"zone", @"not fetched yet");
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([platformObject doesScopeNeedToPushChangesToTransport:scopeCopy])
  {
    [v23 addObject:@"push-to-transport"];
  }

  if ([platformObject doesScopeNeedToPullChangesFromTransport:scopeCopy])
  {
    [v23 addObject:@"pull-from-transport"];
  }

  if ([platformObject doesScopeNeedToBePulledByClient:scopeCopy])
  {
    [v23 addObject:@"client-must-pull"];
  }

  if ([platformObject doesScopeNeedToUpdateTransport:scopeCopy])
  {
    [v23 addObject:@"must-update-transport"];
  }

  if ([platformObject doesScopeNeedToUploadComputeState:scopeCopy])
  {
    [v23 addObject:@"upload-compute-states"];
  }

  if ([v23 count])
  {
    (v11)[2](v11, @"todo", v23);
  }

  v69 = v23;
  v71 = arrayDescription;
  v24 = [platformObject disabledDateForScope:scopeCopy];
  (v11)[2](v11, @"disabled date", v24);

  v25 = [platformObject deleteDateForScope:scopeCopy];
  (v11)[2](v11, @"delete date", v25);

  v26 = [platformObject initialSyncDateForScope:scopeCopy];
  v68 = v26;
  if (v26)
  {
    (v11)[2](v11, @"initial sync", v26);
  }

  else
  {
    v27 = [(CPLEngineScopeStorage *)self estimatedSizeForScope:scopeCopy];
    v28 = [(CPLEngineScopeStorage *)self estimatedAssetCountForScope:scopeCopy];
    if (v27 | v28)
    {
      v29 = v28;
      selfCopy = self;
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v32 = [MEMORY[0x1E696AAF0] stringFromByteCount:v27 countStyle:1];
      v33 = v31;
      self = selfCopy;
      v34 = [v33 initWithFormat:@"%@ for %lu assets", v32, v29];
      (v11)[2](v11, @"init. est. size", v34);
    }
  }

  v67 = [platformObject initialDownloadDateForScope:scopeCopy];
  (v11[2])(v11, @"initial client download");
  v66 = [platformObject activationDateForScope:scopeCopy];
  (v11[2])(v11, @"activation");
  v65 = [platformObject initialMetadataQueriesDateForScope:scopeCopy];
  (v11[2])(v11, @"initial metadata queries");
  v64 = [platformObject initialMetadataDownloadDateForScope:scopeCopy];
  (v11[2])(v11, @"initial metadata download");
  v35 = [(CPLEngineScopeStorage *)self sharingScopeForScope:scopeCopy];
  if (v35)
  {
    v36 = [platformObject initialMetadataDownloadDateForScope:v35];
    (v11)[2](v11, @"initial shared metadata download", v36);
  }

  v62 = [platformObject initialMingleDateForScope:scopeCopy];
  (v11[2])(v11, @"initial mingle");
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CPLEngineScopeStorage supportedFeatureVersionInLastSyncForScope:](self, "supportedFeatureVersionInLastSyncForScope:", scopeCopy)}];
  (v11)[2](v11, @"last supported feature version", v37);

  v38 = [platformObject lastScopeChangeUpdateDateForScope:scopeCopy];
  v61 = v38;
  if (v38)
  {
    (v11)[2](v11, @"scope info", v38);
  }

  else
  {
    v39 = [platformObject scopeChangeForScope:scopeCopy];
    libraryInfo = [v39 libraryInfo];

    if (libraryInfo)
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
  v42 = [platformObject syncAnchorForScope:scopeCopy isCommitted:&v73];
  if (v42)
  {
    v43 = transport;
    v44 = [transport simpleDescriptionForSyncAnchor:v42];
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
    v43 = transport;
    (v11)[2](v11, @"anch", @"none");
  }

  v48 = [(CPLEngineScopeStorage *)self remainingClassesForInitialQueryForScope:scopeCopy];
  if ([v48 count])
  {
    v49 = [v48 valueForKey:@"description"];
    (v11)[2](v11, @"queries", v49);
  }

  v50 = [platformObject transientSyncAnchorForScope:scopeCopy];
  if (v50)
  {
    v51 = [v43 simpleDescriptionForSyncAnchor:v50];
    (v11)[2](v11, @"transient", v51);
  }

  v52 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:scopeCopy];
  [v52 cplDebugDescription];
  v60 = v43;
  v54 = v53 = self;
  (v11)[2](v11, @"upload group", v54);

  v55 = [(CPLEngineScopeStorage *)v53 downloadTransportGroupForScope:scopeCopy];

  cplDebugDescription = [v55 cplDebugDescription];
  (v11)[2](v11, @"download group", cplDebugDescription);

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

- (BOOL)upgradeScopesWithNewLibraryOptions:(unint64_t)options error:(id *)error
{
  if (!options)
  {
    return 1;
  }

  self->_someScopeMightHaveToBePulledByClient = 1;
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  self->_schedulePullFromClient = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject upgradeScopesWithNewLibraryOptions:options error:error];

  return error;
}

- (unint64_t)estimatedAssetCountForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject estimatedAssetCountForScope:scopeCopy];

  return v6;
}

- (unint64_t)estimatedSizeForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject estimatedSizeForScope:scopeCopy];

  return v6;
}

- (BOOL)storeEstimatedSize:(unint64_t)size estimatedAssetCount:(unint64_t)count forScope:(id)scope error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [scopeCopy scopeIdentifier];
      v13 = [MEMORY[0x1E696AAF0] stringFromByteCount:size countStyle:1];
      v19 = 138412802;
      v20 = scopeIdentifier;
      v21 = 2112;
      v22 = v13;
      v23 = 2048;
      countCopy = count;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Updating estimated size for %@ to %@ / %lu assets", &v19, 0x20u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v15 = [platformObject storeEstimatedSize:size estimatedAssetCount:count forScope:scopeCopy error:error];

  if (v15)
  {
    v16 = [(CPLEngineScopeStorage *)self updateInitialSyncTransportGroupEstimatedSize:size assetCount:count forScope:scopeCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)supportedFeatureVersionIsMostRecentForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject supportedFeatureVersionInLastSyncForScope:scopeCopy];

  v7 = +[CPLFingerprintScheme supportsEPP];
  v8 = 21;
  if (v7)
  {
    v8 = 22;
  }

  v9 = v6 >= v8;

  return v9;
}

- (BOOL)storeSupportedFeatureVersionInLastSync:(unint64_t)sync forScope:(id)scope error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = scopeCopy;
      v16 = 2048;
      syncCopy = sync;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Set last supported feature version for %@ to %lu", &v14, 0x16u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject storeSupportedFeatureVersionInLastSync:sync forScope:scopeCopy error:error];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)supportedFeatureVersionInLastSyncForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject supportedFeatureVersionInLastSyncForScope:scopeCopy];

  return v6;
}

- (id)lastDateOfCompletedPullFromTransportForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject lastDateOfCompletedPullFromTransportForScope:scopeCopy];

  return v6;
}

- (BOOL)storeLastDateOfClearedPushRepository:(id)repository forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  repositoryCopy = repository;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject storeLastDateOfClearedPushRepository:repositoryCopy forScope:scopeCopy error:error];

  return error;
}

- (id)lastDateOfClearedPushRepositoryForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject lastDateOfClearedPushRepositoryForScope:scopeCopy];

  return v6;
}

- (BOOL)hasFinishedAFullSyncForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasFinishedAFullSyncForScope:scopeCopy];

  return v6;
}

- (BOOL)setHasFinishedInitialDownloadForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(error) = [platformObject setInitialDownloadDate:date forScope:scopeCopy error:error];

  return error;
}

- (BOOL)hasFinishedInitialDownloadForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject initialSyncDateForScope:scopeCopy];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v9 = [platformObject2 initialDownloadDateForScope:scopeCopy];
    v7 = v9 != 0;
  }

  return v7;
}

- (BOOL)hasFinishedInitialSyncForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject initialSyncDateForScope:scopeCopy];

  return v6 != 0;
}

- (id)remainingClassesForInitialQueryForScope:(id)scope
{
  scopeCopy = scope;
  v5 = [(CPLEngineScopeStorage *)self _indexOfCurrentClassForInitialQueriesForScope:scopeCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = _ClassesForInitialQueries([scopeCopy scopeType]);
    v6 = [v8 subarrayWithRange:{v7, objc_msgSend(v8, "count") - v7}];
  }

  return v6;
}

- (BOOL)resetInitialSyncAnchorForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject setInitialSyncAnchor:0 forScope:scopeCopy error:error];

  if (v8 && (-[CPLEngineStorage platformObject](self, "platformObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 setClassNameOfRecordsForInitialQuery:0 forScope:scopeCopy error:error], v9, v10))
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v12 = [platformObject2 setHasFetchedInitialSyncAnchor:0 forScope:scopeCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)initialSyncAnchorForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject initialSyncAnchorForScope:scopeCopy];

  return v6;
}

- (BOOL)setInitialSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  anchorCopy = anchor;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setInitialSyncAnchor:anchorCopy forScope:scopeCopy error:error];

  return error;
}

- (BOOL)hasScopeFetchedInitialSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasScopeFetchedInitialSyncAnchor:anchorCopy];

  return v6;
}

- (BOOL)markInitialQueryIsDoneForRecordsOfClass:(Class)class forScope:(id)scope error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v9 = _ClassesForInitialQueries([scopeCopy scopeType]);
  if (![v9 count])
  {
    v21 = 1;
    goto LABEL_21;
  }

  v10 = [(CPLEngineScopeStorage *)self _indexOfCurrentClassForInitialQueriesForScope:scopeCopy];
  v11 = [v9 indexOfObject:class];
  if (v11 != v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = v11;
      v23 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        classCopy = class;
        v34 = 2048;
        v35 = v22;
        v36 = 2048;
        v37 = v10;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Incorrect class passed for initial queries %@ (class index %lu instead of %lu)", buf, 0x20u);
      }
    }

    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Incorrect class %@ passed for initial queries", class];
    if (error)
    {
      *error = [CPLErrors invalidCloudCacheErrorWithReason:v24];
    }

    goto LABEL_20;
  }

  if (v10 + 1 != [v9 count])
  {
    v27 = [v9 objectAtIndex:v10 + 1];
    platformObject = [(CPLEngineStorage *)self platformObject];
    v29 = NSStringFromClass(v27);
    v30 = [platformObject setClassNameOfRecordsForInitialQuery:v29 forScope:scopeCopy error:error];

    if (v30)
    {
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v21 = [platformObject2 storeTransientSyncAnchor:0 forScope:scopeCopy error:error];

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [scopeCopy scopeIdentifier];
      *buf = 138412290;
      classCopy = scopeIdentifier;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "All classes have been retrieved as part of the initial queries for %@. Moving to regular changes fetch", buf, 0xCu);
    }
  }

  platformObject3 = [(CPLEngineStorage *)self platformObject];
  v15 = [platformObject3 setClassNameOfRecordsForInitialQuery:&stru_1F57BD298 forScope:scopeCopy error:error];

  if (!v15 || -[CPLEngineScopeStorage shouldTrackAdditionalInitialSyncDatesForScope:](self, "shouldTrackAdditionalInitialSyncDatesForScope:", scopeCopy) && (-[CPLEngineStorage platformObject](self, "platformObject"), v16 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E695DF00] date], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "storeInitialMetadataQueriesDate:forScope:error:", v17, scopeCopy, error), v17, v16, !v18))
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v19 = [(CPLEngineScopeStorage *)self initialSyncAnchorForScope:scopeCopy];
  platformObject4 = [(CPLEngineStorage *)self platformObject];
  v21 = [platformObject4 storeTransientSyncAnchor:v19 forScope:scopeCopy error:error];

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

- (Class)classOfRecordsForInitialQueryForScope:(id)scope
{
  scopeCopy = scope;
  v5 = [(CPLEngineScopeStorage *)self _indexOfCurrentClassForInitialQueriesForScope:scopeCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = _ClassesForInitialQueries([scopeCopy scopeType]);
    v6 = [v8 objectAtIndex:v7];
  }

  return v6;
}

- (unint64_t)_indexOfCurrentClassForInitialQueriesForScope:(id)scope
{
  v18 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v5 = _ClassesForInitialQueries([scopeCopy scopeType]);
  if ([v5 count])
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v7 = [platformObject classNameOfRecordsForInitialQueryForScope:scopeCopy];

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
        engineStore = [(CPLEngineStorage *)self engineStore];
        engineLibrary = [engineStore engineLibrary];
        [engineLibrary reportLibraryCorrupted];

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

- (BOOL)disableInitialQueriesForScope:(id)scope error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [scopeCopy scopeIdentifier];
      v17 = 138412290;
      v18 = scopeIdentifier;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Disabling initial queries for %@. Moving to regular changes fetch", &v17, 0xCu);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject setClassNameOfRecordsForInitialQuery:&stru_1F57BD298 forScope:scopeCopy error:error];

  if (v10 && (-[CPLEngineStorage platformObject](self, "platformObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 storeTransientSyncAnchor:0 forScope:scopeCopy error:error], v11, v12))
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v14 = [platformObject2 setHasFetchedInitialSyncAnchor:1 forScope:scopeCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)storeTransientSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  anchorCopy = anchor;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject storeTransientSyncAnchor:anchorCopy forScope:scopeCopy error:error];

  return error;
}

- (id)transientSyncAnchorForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject transientSyncAnchorForScope:scopeCopy];

  return v6;
}

- (BOOL)hasStagedSyncAnchorForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasStagedSyncAnchorForScope:scopeCopy];

  return v6;
}

- (BOOL)discardStagedSyncAnchorWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject discardStagedSyncAnchorWithScopeFilter:filterCopy error:error];

  return error;
}

- (BOOL)discardStagedSyncAnchorForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject discardStagedSyncAnchorForScope:scopeCopy error:error];

  return error;
}

- (BOOL)commitSyncAnchorForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject commitSyncAnchorForScope:scopeCopy error:error];

  return error;
}

- (BOOL)setSyncAnchor:(id)anchor forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  anchorCopy = anchor;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setSyncAnchor:anchorCopy forScope:scopeCopy error:error];

  return error;
}

- (id)syncAnchorForScope:(id)scope
{
  v8 = 0;
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject syncAnchorForScope:scopeCopy isCommitted:&v8];

  return v6;
}

- (BOOL)setDidDropSomeRecordsForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setDidDropSomeRecordsForScope:scopeCopy error:error];

  return error;
}

- (BOOL)didDropSomeRecordsForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject didDropSomeRecordsForScope:scopeCopy];

  return v6;
}

- (BOOL)storeScopeChange:(id)change forScope:(id)scope error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopeCopy = scope;
  if ([(CPLEngineScopeStorage *)self _doesScopeContributeToGlobalStatus:scopeCopy])
  {
    [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:changeCopy forScope:scopeCopy];
  }

  scopeIdentifier = [scopeCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v12)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];

    libraryInfo = [changeCopy libraryInfo];
    accountFlagsData = [libraryInfo accountFlagsData];
    if (accountFlagsData)
    {
      [engineLibrary updateAccountFlagsData:accountFlagsData];
    }

    [engineLibrary setICloudLibraryClientVersionTooOld:0];
    [engineLibrary setIsStuckInExitForSharedLibrary:{objc_msgSend(changeCopy, "hasProblematicFormerSharedScope")}];
  }

  v34 = 0;
  scopeType = [changeCopy scopeType];
  if (scopeType != [scopeCopy scopeType] && !-[CPLEngineScopeStorage _setScopeType:forScope:error:](self, "_setScopeType:forScope:error:", objc_msgSend(changeCopy, "scopeType"), scopeCopy, error))
  {
    goto LABEL_22;
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v19 = [platformObject storeScopeChange:changeCopy forScope:scopeCopy scopeChangeHasBeenUpdated:&v34 error:error];

  if (!v19)
  {
    goto LABEL_22;
  }

  if (v34 == 1)
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v21 = [platformObject2 flagsForScope:scopeCopy];
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
        v36 = scopeIdentifier;
        v37 = 2112;
        v38 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Scope change for %@ has been updated, notifying client: %@", buf, 0x16u);
      }
    }

    if ([(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:scopeCopy error:error])
    {
LABEL_26:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (![changeCopy isCurrentUserExiting])
      {
        goto LABEL_20;
      }

      v24 = MEMORY[0x1E696AEC0];
      scopeIdentifier2 = [changeCopy scopeIdentifier];
      v26 = [v24 stringWithFormat:@"scope change with current user exiting, scopeIdentifier: %@", scopeIdentifier2];
      v27 = [(CPLEngineScopeStorage *)self clearAllQuotaFlagsForMainScopeWithReason:v26 error:error];

      if (v27)
      {
LABEL_20:
        engineStore2 = [(CPLEngineStorage *)self engineStore];
        engineLibrary2 = [engineStore2 engineLibrary];
        supervisor = [engineLibrary2 supervisor];
        [supervisor scopeStorage:self didUpdateScopeChange:changeCopy forScope:scopeCopy];

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

- (void)_updateGlobalStatusWithScopeChange:(id)change forScope:(id)scope
{
  v50 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopeCopy = scope;
  libraryInfo = [changeCopy libraryInfo];
  assetCounts = [libraryInfo assetCounts];
  v10 = [assetCounts mutableCopy];

  v40 = changeCopy;
  v11 = changeCopy;
  selfCopy = self;
  libraryInfo2 = [v11 libraryInfo];
  featureCompatibleVersion = [libraryInfo2 featureCompatibleVersion];
  integerValue = [featureCompatibleVersion integerValue];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v16 = [platformObject enumeratorForScopesIncludeInactive:0];

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
        scopeIdentifier = [v21 scopeIdentifier];
        scopeIdentifier2 = [scopeCopy scopeIdentifier];
        if ([scopeIdentifier isEqualToString:scopeIdentifier2])
        {
        }

        else
        {
          v24 = [(CPLEngineScopeStorage *)selfCopy _doesScopeContributeToGlobalStatus:v21];

          if (!v24)
          {
            continue;
          }

          v25 = selfCopy;
          platformObject2 = [(CPLEngineStorage *)selfCopy platformObject];
          scopeIdentifier = [platformObject2 scopeChangeForScope:v21];

          libraryInfo3 = [scopeIdentifier libraryInfo];
          assetCounts2 = [libraryInfo3 assetCounts];
          v29 = assetCounts2;
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
            libraryInfo3 = v29;
          }

          else
          {
            v10 = [(NSDictionary *)assetCounts2 mutableCopy];
            v30 = v29;
          }

          libraryInfo4 = [scopeIdentifier libraryInfo];
          featureCompatibleVersion2 = [libraryInfo4 featureCompatibleVersion];
          integerValue2 = [featureCompatibleVersion2 integerValue];

          v34 = integerValue;
          if (integerValue <= integerValue2)
          {
            v34 = integerValue2;
          }

          integerValue = v34;
          selfCopy = v25;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v18);
  }

  assetCountsToUpdate = selfCopy->_assetCountsToUpdate;
  selfCopy->_assetCountsToUpdate = v10;
  v36 = v10;
  v37 = selfCopy;
  v38 = v36;

  v37->_serverFeatureCompatibleVersionToUpdate = integerValue;
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

- (BOOL)_doesScopeContributeToGlobalStatus:(id)status
{
  statusCopy = status;
  scopeIdentifier = [statusCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v7 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v7)
  {
    v8 = 1;
  }

  else if (([statusCopy scopeType] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    mainScopeIdentifier2 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v8 = [(CPLEngineScopeStorage *)self _isValidSharingScope:statusCopy forScopeIdentifier:mainScopeIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)scopeChangeForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject scopeChangeForScope:scopeCopy];

  return v6;
}

- (BOOL)setTransportScope:(id)scope forScope:(id)forScope error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  forScopeCopy = forScope;
  scopeIdentifier = [forScopeCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier2 = [forScopeCopy scopeIdentifier];
        v30 = 138412290;
        v31 = scopeIdentifier2;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "%@ transport scope exists", &v30, 0xCu);
      }
    }

    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    [engineLibrary setICloudLibraryExists:scopeCopy != 0];
  }

  if (!scopeCopy)
  {
    goto LABEL_12;
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v18 = [platformObject transportScopeForScope:forScopeCopy];

  if (!v18)
  {
LABEL_11:

LABEL_12:
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v23 = [platformObject2 setTransportScope:scopeCopy forScope:forScopeCopy error:error];

    if (scopeCopy || !v23)
    {
      v24 = v23 ^ 1;
      if (!scopeCopy)
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0)
      {
        LOBYTE(v23) = 1;
        if ([(CPLEngineScopeStorage *)self doesScopeNeedToUpdateTransport:forScopeCopy])
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

  engineStore2 = [(CPLEngineStorage *)self engineStore];
  engineLibrary2 = [engineStore2 engineLibrary];
  transport = [engineLibrary2 transport];

  if ([transport isNewTransportScope:scopeCopy compatibleWithOldTransportScope:v18])
  {

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v25 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [transport descriptionForTransportScope:v18];
      v27 = [transport descriptionForTransportScope:scopeCopy];
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

- (id)transportScopeForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject transportScopeForScope:scopeCopy];

  return v6;
}

- (BOOL)setHasUpdatedScope:(id)scope fromTransportWithError:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setHasUpdatedScope:scopeCopy fromTransportWithError:error];

  return error;
}

- (BOOL)setScopeNeedsUpdateFromTransport:(id)transport error:(id *)error
{
  self->_scheduleAScopeUpdate = 1;
  transportCopy = transport;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setScopeNeedsUpdateFromTransport:transportCopy error:error];

  return error;
}

- (BOOL)clearTransportGroupsForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject storeUploadTransportGroup:0 forScope:scopeCopy error:error];

  if (v8)
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v10 = [platformObject2 storeDownloadTransportGroup:0 forScope:scopeCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setupAnchorResetTransportGroupForScope:(id)scope error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if ([(CPLEngineScopeStorage *)self hasFinishedInitialSyncForScope:scopeCopy])
  {
    v7 = [(CPLEngineScopeStorage *)self downloadTransportGroupForScope:scopeCopy];
    if (v7)
    {
      createGroupForInitialDownload = v7;
      v9 = 1;
    }

    else
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore engineLibrary];
      transport = [engineLibrary transport];
      createGroupForInitialDownload = [transport createGroupForInitialDownload];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          scopeIdentifier = [scopeCopy scopeIdentifier];
          cplDebugDescription = [createGroupForInitialDownload cplDebugDescription];
          v19 = 138412546;
          v20 = scopeIdentifier;
          v21 = 2112;
          v22 = cplDebugDescription;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Set up anchor reset download transport group for %@ to %@", &v19, 0x16u);
        }
      }

      platformObject = [(CPLEngineStorage *)self platformObject];
      v9 = [platformObject storeDownloadTransportGroup:createGroupForInitialDownload forScope:scopeCopy error:error];
    }
  }

  else
  {
    v9 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setupResetSyncTransportGroupForScope:(id)scope error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  if ([(CPLEngineScopeStorage *)self hasFinishedInitialSyncForScope:scopeCopy])
  {
    v7 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:scopeCopy];
    if (v7)
    {
      createGroupForInitialDownload = v7;
      v9 = 1;
    }

    else
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore engineLibrary];
      transport = [engineLibrary transport];

      createGroupForResetSync = [transport createGroupForResetSync];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          scopeIdentifier = [scopeCopy scopeIdentifier];
          cplDebugDescription = [createGroupForResetSync cplDebugDescription];
          v25 = 138412546;
          v26 = scopeIdentifier;
          v27 = 2112;
          v28 = cplDebugDescription;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Set up reset sync upload transport group for %@ to %@", &v25, 0x16u);
        }
      }

      platformObject = [(CPLEngineStorage *)self platformObject];
      v18 = [platformObject storeUploadTransportGroup:createGroupForResetSync forScope:scopeCopy error:error];

      if (v18)
      {
        createGroupForInitialDownload = [transport createGroupForInitialDownload];

        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            scopeIdentifier2 = [scopeCopy scopeIdentifier];
            cplDebugDescription2 = [createGroupForInitialDownload cplDebugDescription];
            v25 = 138412546;
            v26 = scopeIdentifier2;
            v27 = 2112;
            v28 = cplDebugDescription2;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Set up reset sync download transport group for %@ to %@", &v25, 0x16u);
          }
        }

        platformObject2 = [(CPLEngineStorage *)self platformObject];
        v9 = [platformObject2 storeDownloadTransportGroup:createGroupForInitialDownload forScope:scopeCopy error:error];
      }

      else
      {
        v9 = 0;
        createGroupForInitialDownload = createGroupForResetSync;
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

- (BOOL)updateInitialSyncTransportGroupEstimatedSize:(unint64_t)size assetCount:(unint64_t)count forScope:(id)scope error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v11 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:scopeCopy];
  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier = [scopeCopy scopeIdentifier];
        v18 = 138412290;
        v19 = scopeIdentifier;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Updating upload transfer group estimated upload sizes for %@", &v18, 0xCu);
      }
    }

    [v11 setRoughCPLRecordCount:count];
    [v11 setRoughCPLUploadEstimatedSize:size];
    platformObject = [(CPLEngineStorage *)self platformObject];
    v15 = [platformObject storeUploadTransportGroup:v11 forScope:scopeCopy error:error];
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)setupInitialSyncTransportGroupsForScope:(id)scope error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v7 = [(CPLEngineScopeStorage *)self uploadTransportGroupForScope:scopeCopy];
  if (v7)
  {
    createGroupForInitialDownload = v7;
    if (_CPLSilentLogging)
    {
      v10 = 1;
      goto LABEL_22;
    }

    transport = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(transport, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1DC05A000, transport, OS_LOG_TYPE_ERROR, "Initial upload group has already been set", &v27, 2u);
    }

    v10 = 1;
  }

  else
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    transport = [engineLibrary transport];

    createGroupForInitialUpload = [transport createGroupForInitialUpload];
    v14 = [(CPLEngineScopeStorage *)self estimatedSizeForScope:scopeCopy];
    v15 = [(CPLEngineScopeStorage *)self estimatedAssetCountForScope:scopeCopy];
    if (v14)
    {
      [createGroupForInitialUpload setRoughCPLUploadEstimatedSize:v14];
    }

    if (v15)
    {
      [createGroupForInitialUpload setRoughCPLRecordCount:v15];
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier = [scopeCopy scopeIdentifier];
        cplDebugDescription = [createGroupForInitialUpload cplDebugDescription];
        v27 = 138412546;
        v28 = scopeIdentifier;
        v29 = 2112;
        v30 = cplDebugDescription;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Set up initial upload transport group for %@ to %@", &v27, 0x16u);
      }
    }

    platformObject = [(CPLEngineStorage *)self platformObject];
    v20 = [platformObject storeUploadTransportGroup:createGroupForInitialUpload forScope:scopeCopy error:error];

    if (v20)
    {
      createGroupForInitialDownload = [transport createGroupForInitialDownload];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          scopeIdentifier2 = [scopeCopy scopeIdentifier];
          cplDebugDescription2 = [createGroupForInitialDownload cplDebugDescription];
          v27 = 138412546;
          v28 = scopeIdentifier2;
          v29 = 2112;
          v30 = cplDebugDescription2;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Set up initial download transport group for %@ to %@", &v27, 0x16u);
        }
      }

      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v10 = [platformObject2 storeDownloadTransportGroup:createGroupForInitialDownload forScope:scopeCopy error:error];
    }

    else
    {
      v10 = 0;
      createGroupForInitialDownload = createGroupForInitialUpload;
    }
  }

LABEL_22:
  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)downloadTransportGroupForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject downloadTransportGroupForScope:scopeCopy];

  return v6;
}

- (id)uploadTransportGroupForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject uploadTransportGroupForScope:scopeCopy];

  return v6;
}

- (BOOL)resetSyncStateForScope:(id)scope error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject resetSyncStateForScope:scopeCopy error:error];

  if (!v8)
  {
    goto LABEL_8;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [scopeCopy scopeIdentifier];
      v17 = 138412290;
      v18 = scopeIdentifier;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Disabling initial queries for %@ after a reset of sync anchor", &v17, 0xCu);
    }
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject2 setClassNameOfRecordsForInitialQuery:&stru_1F57BD298 forScope:scopeCopy error:error];

  if (v12)
  {
    platformObject3 = [(CPLEngineStorage *)self platformObject];
    v14 = [platformObject3 setHasFetchedInitialSyncAnchor:1 forScope:scopeCopy error:error];
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)setDeleteDate:(id)date forScope:(id)scope error:(id *)error
{
  dateCopy = date;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v12)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    [engineLibrary setExitDeleteTime:dateCopy];
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v16 = [platformObject setDeleteDate:dateCopy forScope:scopeCopy error:error];

  return v16;
}

- (id)deleteDateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject deleteDateForScope:scopeCopy];

  return v6;
}

- (BOOL)setDisabledDate:(id)date forScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  dateCopy = date;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setDisabledDate:dateCopy forScope:scopeCopy error:error];

  return error;
}

- (id)disabledDateForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject disabledDateForScope:scopeCopy];

  return v6;
}

- (BOOL)clearAllQuotaFlagsForMainScopeWithReason:(id)reason error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_8656();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = reasonCopy;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Clearing all over-quota flags for main scope optimistically, reason: %{public}@", &v20, 0xCu);
    }
  }

  primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
  if (!primaryScope)
  {
LABEL_11:
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];

    [engineLibrary setIsExceedingQuota:0];
    [engineLibrary setIsExceedingSharedLibraryQuota:0];
    goto LABEL_12;
  }

  engineLibrary = [(CPLEngineScopeStorage *)self flagsForScope:primaryScope];
  [engineLibrary setValue:0 forFlag:2];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject updateFlags:engineLibrary forScope:primaryScope error:error];

  [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:primaryScope flagsUpdate:engineLibrary];
  if (v11)
  {
    v12 = [(CPLEngineScopeStorage *)self sharingScopeForScope:primaryScope];
    if (v12)
    {
      v13 = v12;
      v14 = [(CPLEngineScopeStorage *)self flagsForScope:v12];

      [v14 setValue:0 forFlag:2];
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v16 = [platformObject2 updateFlags:v14 forScope:v13 error:error];

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

- (BOOL)valueForFlag:(int64_t)flag forScope:(id)scope
{
  v5 = [(CPLEngineScopeStorage *)self flagsForScope:scope];
  LOBYTE(flag) = [v5 valueForFlag:flag];

  return flag;
}

- (BOOL)updateFlags:(id)flags forScope:(id)scope error:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  scopeCopy = scope;
  updatedFlagsMask = [flagsCopy updatedFlagsMask];
  v12 = [(CPLEngineScopeStorage *)self flagsForScope:scopeCopy];
  v13 = v12;
  errorCopy = error;
  if ((updatedFlagsMask & 0x10) != 0)
  {
    if ([flagsCopy valueForFlag:16])
    {
      v14 = 0;
    }

    else
    {
      if (!+[CPLScopeChange supportsActivationOfScopeWithType:](CPLScopeChange, "supportsActivationOfScopeWithType:", [scopeCopy scopeType]))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v83 = __CPLStorageOSLogDomain_8656();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            scopeIdentifier = [scopeCopy scopeIdentifier];
            v85 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [scopeCopy scopeType]);
            *buf = 138412546;
            v93 = scopeIdentifier;
            v94 = 2112;
            v95 = v85;
            _os_log_impl(&dword_1DC05A000, v83, OS_LOG_TYPE_ERROR, "Trying to activate %@ (%@) but this is not supported by this engine", buf, 0x16u);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
        scopeIdentifier2 = [scopeCopy scopeIdentifier];
        v89 = +[CPLScopeChange descriptionForScopeType:](CPLScopeChange, "descriptionForScopeType:", [scopeCopy scopeType]);
        [currentHandler handleFailureInMethod:a2 object:self file:v87 lineNumber:1453 description:{@"Trying to activate %@ (%@) but this is not supported by this engine", scopeIdentifier2, v89}];

        abort();
      }

      if (![(CPLEngineScopeStorage *)self resetDidCheckAssetWithServerWhenOverQuotaForScope:scopeCopy error:error])
      {
        goto LABEL_124;
      }

      platformObject = [(CPLEngineStorage *)self platformObject];
      date = [MEMORY[0x1E695DF00] date];
      v19 = [platformObject storeActivationDate:date forScope:scopeCopy error:error];

      if (!v19)
      {
        goto LABEL_124;
      }

      scopeIdentifier3 = [scopeCopy scopeIdentifier];
      mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
      v14 = [scopeIdentifier3 isEqualToString:mainScopeIdentifier];
    }

    v15 = (updatedFlagsMask & 4) == 0;
    v16 = flagsCopy;
  }

  else
  {
    v14 = 0;
    if ((updatedFlagsMask & 4) == 0)
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

  engineStore = [(CPLEngineStorage *)self engineStore];
  libraryOptions = [engineStore libraryOptions];

  v24 = [flagsCopy valueForFlag:0x10000];
  v25 = [v16 valueForFlag:16];
  if (v15)
  {
    v26 = v13;
  }

  else
  {
    v26 = flagsCopy;
  }

  v27 = [v26 valueForFlag:4];
  if (v25 && v27)
  {
    if ((v24 & ((libraryOptions & 0x400) != 0)) != 0)
    {
      v90 = v14;
      scopeIdentifier4 = [scopeCopy scopeIdentifier];
      v29 = [(CPLEngineScopeStorage *)self resetCloudRecordsForScopeWithIdentifier:scopeIdentifier4 error:errorCopy];

      goto LABEL_29;
    }

    v53 = errorCopy;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v54 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier5 = [scopeCopy scopeIdentifier];
        *buf = 138543362;
        v93 = scopeIdentifier5;
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
    scopeIdentifier6 = [scopeCopy scopeIdentifier];
    mainScopeIdentifier2 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v32 = [scopeIdentifier6 isEqualToString:mainScopeIdentifier2];

    if ((v32 & 1) == 0)
    {
      v53 = errorCopy;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v54 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          scopeIdentifier5 = [scopeCopy scopeIdentifier];
          *buf = 138543362;
          v93 = scopeIdentifier5;
          v56 = "Deleting active scope %{public}@ because client does not care";
          goto LABEL_115;
        }

LABEL_116:
      }

LABEL_117:
      scopeIdentifier7 = [scopeCopy scopeIdentifier];
      LOBYTE(v53) = [(CPLEngineScopeStorage *)self deleteScopeWithIdentifier:scopeIdentifier7 error:v53];
LABEL_129:

      goto LABEL_130;
    }
  }

  if (!v25)
  {
    goto LABEL_28;
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v34 = [platformObject2 activationDateForScope:scopeCopy];

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
      v93 = scopeCopy;
      _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_DEFAULT, "Clearing activation date for %@", buf, 0xCu);
    }
  }

  platformObject3 = [(CPLEngineStorage *)self platformObject];
  v29 = [platformObject3 storeActivationDate:0 forScope:scopeCopy error:errorCopy];

LABEL_29:
  scopeIdentifier8 = [scopeCopy scopeIdentifier];
  mainScopeIdentifier3 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v39 = [scopeIdentifier8 isEqualToString:mainScopeIdentifier3];

  if (v39)
  {
    engineStore2 = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore2 engineLibrary];

    if (!v15)
    {
      [engineLibrary setICloudLibraryHasBeenWiped:{objc_msgSend(flagsCopy, "valueForFlag:", 4)}];
    }

    v42 = errorCopy;
    if ((updatedFlagsMask & 2) != 0)
    {
      [engineLibrary setIsExceedingQuota:{objc_msgSend(flagsCopy, "valueForFlag:", 2)}];
    }
  }

  else
  {
    mainScopeIdentifier4 = [(CPLEngineStorage *)self mainScopeIdentifier];
    v44 = [(CPLEngineScopeStorage *)self _isValidSharingScope:scopeCopy forScopeIdentifier:mainScopeIdentifier4];

    v42 = errorCopy;
    if (!v44)
    {
      goto LABEL_38;
    }

    engineStore3 = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore3 engineLibrary];

    if ((updatedFlagsMask & 2) != 0)
    {
      [engineLibrary setIsExceedingSharedLibraryQuota:{objc_msgSend(flagsCopy, "valueForFlag:", 2)}];
    }
  }

LABEL_38:
  v46 = v29 ^ 1;
  if ((updatedFlagsMask & 0x40) == 0)
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
          v93 = scopeCopy;
          _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_DEFAULT, "%@ has been staged - reset sync anchor", buf, 0xCu);
        }
      }

      v29 = [(CPLEngineScopeStorage *)self resetSyncAnchorForScope:scopeCopy error:v42];
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
  if ((updatedFlagsMask & 8) != 0)
  {
    if ([flagsCopy valueForFlag:8] & 1) != 0 || !objc_msgSend(v13, "valueForFlag:", 8) || (objc_msgSend(v13, "valueForFlag:", 16))
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
          scopeIdentifier9 = [scopeCopy scopeIdentifier];
          *buf = 138412290;
          v93 = scopeIdentifier9;
          _os_log_impl(&dword_1DC05A000, v75, OS_LOG_TYPE_ERROR, "%@ has been re-enabled - triggering a reset sync", buf, 0xCu);
        }
      }

      engineStore4 = [(CPLEngineStorage *)self engineStore];
      v78 = [engineStore4 resetLocalSyncStateWithCause:@"scope has been re-enabled" error:v42];

      if (!v78)
      {
        goto LABEL_124;
      }

      v29 = 1;
      self->_schedulePullFromClient = 1;
    }
  }

LABEL_49:
  if ((updatedFlagsMask & 0x10) == 0 || !v29)
  {
    goto LABEL_77;
  }

  v47 = [flagsCopy valueForFlag:16];
  v48 = [v13 valueForFlag:16];
  if (v47 && (v48 & 1) == 0)
  {
    if ([(CPLEngineScopeStorage *)self resetCompleteSyncStateIncludingIDMappingForScope:scopeCopy error:v42])
    {
      v49 = [(CPLEngineScopeStorage *)self sharingScopeForScope:scopeCopy];
      if (!v49)
      {
        scopeIdentifier10 = [scopeCopy scopeIdentifier];
        v29 = [(CPLEngineScopeStorage *)self _dropSharingScopeIdentifier:scopeIdentifier10 error:v42];

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
        if ([(CPLEngineScopeStorage *)self _doesScopeContributeToGlobalStatus:scopeCopy])
        {
          [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:0 forScope:scopeCopy];
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
    if ([(CPLEngineScopeStorage *)self _setSharingScopeIdentifier:scopeCopy error:v42]&& [(CPLEngineScopeStorage *)self setScopeHasChangesToPullFromTransport:scopeCopy error:v42]&& [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:scopeCopy error:v42])
    {
      if ([(CPLEngineScopeStorage *)self _doesScopeContributeToGlobalStatus:scopeCopy])
      {
        platformObject4 = [(CPLEngineStorage *)self platformObject];
        v58 = [platformObject4 scopeChangeForScope:scopeCopy];

        [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:v58 forScope:scopeCopy];
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

LABEL_64:
  v29 = 1;
LABEL_74:
  scopeIdentifier11 = [scopeCopy scopeIdentifier];
  mainScopeIdentifier5 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v61 = [scopeIdentifier11 isEqualToString:mainScopeIdentifier5];

  if (v61)
  {
    self->_shouldResetGlobalsForMainScope = 1;
  }

  [(CPLEngineScopeStorage *)self _clearScopeCache];
  v42 = errorCopy;
LABEL_77:
  if (v29 && (updatedFlagsMask & 0x44) != 0)
  {
    if ([v13 valueForFlag:4])
    {
      v62 = [v13 valueForFlag:64] ^ 1;
    }

    else
    {
      v62 = 0;
    }

    v29 = ![flagsCopy valueForFlag:4] || ((v62 | objc_msgSend(flagsCopy, "valueForFlag:", 64)) & 1) != 0 || -[CPLEngineScopeStorage addCleanupTasksForScope:error:](self, "addCleanupTasksForScope:error:", scopeCopy, v42);
  }

  if (((v15 | v29 ^ 1) & 1) == 0 && [flagsCopy valueForFlag:4])
  {
    v29 = [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:scopeCopy error:v42];
    if (v29)
    {
      [(CPLEngineScopeStorage *)self _removeBrokenScope:scopeCopy];
    }

    v63 = [(CPLEngineScopeStorage *)self sharingScopeForScope:scopeCopy];
    if (v63)
    {
      v29 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:16 forScope:v63 error:v42];
    }
  }

  if (v29 && (updatedFlagsMask & 0x20) != 0)
  {
    if ([flagsCopy valueForFlag:32])
    {
      if (![(CPLEngineScopeStorage *)self setScopeNeedsToUpdateTransport:scopeCopy error:v42])
      {
        goto LABEL_124;
      }

      [(CPLEngineScopeStorage *)self _removeBrokenScope:scopeCopy];
    }

    v29 = 1;
  }

  if (v29)
  {
    if ((updatedFlagsMask & 0x20000) != 0)
    {
      if ([flagsCopy valueForFlag:0x20000])
      {
        engineStore5 = [(CPLEngineStorage *)self engineStore];
        pushRepository = [engineStore5 pushRepository];
        scopeIdentifier12 = [scopeCopy scopeIdentifier];
        v67 = [pushRepository hasChangesInScopeWithIdentifier:scopeIdentifier12];

        v42 = errorCopy;
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
  platformObject5 = [(CPLEngineStorage *)self platformObject];
  v69 = [platformObject5 updateFlags:flagsCopy forScope:scopeCopy error:v42];

  [(CPLEngineScopeStorage *)self _notifyScopeObserversForScope:scopeCopy flagsUpdate:flagsCopy];
  if (!v69)
  {
    goto LABEL_124;
  }

  [(CPLEngineScopeStorage *)self _checkSyncManagerPriorityBoost];
  scopeIdentifier13 = [scopeCopy scopeIdentifier];
  mainScopeIdentifier6 = [(CPLEngineStorage *)self mainScopeIdentifier];
  if ([scopeIdentifier13 isEqualToString:mainScopeIdentifier6])
  {

    v72 = v90;
    if ((updatedFlagsMask & 0x7C) != 0)
    {
      goto LABEL_108;
    }

LABEL_111:
    LODWORD(v53) = 1;
    goto LABEL_127;
  }

  mainScopeIdentifier7 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v72 = v90;
  if (![(CPLEngineScopeStorage *)self _isValidSharingScope:scopeCopy forScopeIdentifier:mainScopeIdentifier7])
  {

    LODWORD(v53) = 1;
    goto LABEL_126;
  }

  v42 = errorCopy;
  if ((updatedFlagsMask & 0x7C) == 0)
  {
    goto LABEL_111;
  }

LABEL_108:
  v53 = MEMORY[0x1E696AEC0];
  scopeIdentifier13 = [scopeCopy scopeIdentifier];
  mainScopeIdentifier6 = [v53 stringWithFormat:@"updated scope flags: %@, scopeIdentifier: %@", flagsCopy, scopeIdentifier13];
  LODWORD(v53) = [(CPLEngineScopeStorage *)self clearAllQuotaFlagsForMainScopeWithReason:mainScopeIdentifier6 error:v42];
LABEL_126:

LABEL_127:
  if ((v53 & v72) == 1)
  {
    scopeIdentifier7 = [(CPLEngineStorage *)self engineStore];
    engineLibrary2 = [scopeIdentifier7 engineLibrary];
    [engineLibrary2 noteMainScopeHasBeenActivated];

    LOBYTE(v53) = 1;
    goto LABEL_129;
  }

LABEL_130:

  v80 = *MEMORY[0x1E69E9840];
  return v53;
}

- (void)_notifyScopeObserversForScope:(id)scope flagsUpdate:(id)update
{
  scopeCopy = scope;
  updateCopy = update;
  scopeObservers = self->_scopeObservers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CPLEngineScopeStorage__notifyScopeObserversForScope_flagsUpdate___block_invoke;
  v11[3] = &unk_1E861CA50;
  v11[4] = self;
  v12 = scopeCopy;
  v13 = updateCopy;
  v9 = updateCopy;
  v10 = scopeCopy;
  [(NSMutableDictionary *)scopeObservers enumerateKeysAndObjectsUsingBlock:v11];
}

- (BOOL)_isValidSharingScope:(id)scope forScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  scopeType = [scopeCopy scopeType];

  LOBYTE(scopeCopy) = [(CPLEngineScopeStorage *)self _isValidSharingScopeIdentifier:scopeIdentifier scopeType:scopeType forScopeIdentifier:identifierCopy];
  return scopeCopy;
}

- (BOOL)_isValidSharingScopeIdentifier:(id)identifier scopeType:(int64_t)type forScopeIdentifier:(id)scopeIdentifier
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    return 0;
  }

  scopeIdentifierCopy = scopeIdentifier;
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  v10 = [engineStore supportsSharingScopeWithIdentifier:identifierCopy forScopeWithIdentifier:scopeIdentifierCopy];

  return v10;
}

- (id)flagsForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject flagsForScope:scopeCopy];

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
  status = [(CPLEngineStorage *)&v55 status];
  v4 = [status mutableCopy];

  engineStore = [(CPLEngineStorage *)self engineStore];
  shouldSyncScopeList = [engineStore shouldSyncScopeList];

  if (shouldSyncScopeList)
  {
    scopeListSyncAnchor = [(CPLEngineScopeStorage *)self scopeListSyncAnchor];
    if (scopeListSyncAnchor)
    {
      engineStore2 = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore2 engineLibrary];
      transport = [engineLibrary transport];
      v11 = [transport simpleDescriptionForScopeListSyncAnchor:scopeListSyncAnchor];
      [v4 appendFormat:@" - global sync anchor: %@", v11];
    }
  }

  if (self->_someScopeMightHaveToBePulledByClient)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    isEmpty = [platformObject isEmpty];

    if ((isEmpty & 1) == 0)
    {
      [v4 appendString:@" [client needs to pull some scopes]"];
    }
  }

  date = [MEMORY[0x1E695DF00] date];
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
  selfCopy = self;
  v43 = &v50;
  v44 = &v46;
  v45 = v54;
  v30 = date;
  v41 = v30;
  v31 = v4;
  v42 = v31;
  v16 = MEMORY[0x1E128EBA0](v38);
  primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
  if (primaryScope)
  {
    (v16)[2](v16, primaryScope, 0);
    v17 = [(CPLEngineScopeStorage *)self sharingScopeForScope:primaryScope];
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
        scopeIdentifier = [v22 scopeIdentifier];
        v25 = [v33 containsObject:scopeIdentifier];

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

- (BOOL)resetStableRecordsForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLEngineScopeStorage *)self stableScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    [(CPLEngineScopeStorage *)self _clearScopeCache];
    platformObject = [(CPLEngineStorage *)self platformObject];
    v11 = [platformObject bumpStableIndexForScopeWithIdentifier:identifierCopy error:error];

    if (v11)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      cleanupTasks = [engineStore cleanupTasks];
      v8 = [cleanupTasks addCleanupTaskForScopeWithIndex:v9 scopeIdentifier:identifierCopy scopeType:3 error:error];

      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!error)
  {
    goto LABEL_6;
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)resetCloudRecordsForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLEngineScopeStorage *)self indexForCloudScopeIdentifier:identifierCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    [(CPLEngineScopeStorage *)self _clearScopeCache];
    platformObject = [(CPLEngineStorage *)self platformObject];
    v11 = [platformObject bumpCloudIndexForScopeWithIdentifier:identifierCopy error:error];

    if (v11)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      cleanupTasks = [engineStore cleanupTasks];
      v8 = [cleanupTasks addCleanupTaskForScopeWithIndex:v9 scopeIdentifier:identifierCopy scopeType:2 error:error];

      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!error)
  {
    goto LABEL_6;
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)resetLocalRecordsForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLEngineScopeStorage *)self indexForLocalScopeIdentifier:identifierCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
    [(CPLEngineScopeStorage *)self _clearScopeCache];
    platformObject = [(CPLEngineStorage *)self platformObject];
    v11 = [platformObject bumpLocalIndexForScopeWithIdentifier:identifierCopy error:error];

    if (v11)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      cleanupTasks = [engineStore cleanupTasks];
      v14 = [cleanupTasks addCleanupTaskForScopeWithIndex:v9 scopeIdentifier:identifierCopy scopeType:1 error:error];

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

  if (!error)
  {
    goto LABEL_7;
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
  *error = v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)resetSyncAnchorForScope:(id)scope error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v7 = [(CPLEngineScopeStorage *)self doesScopeNeedToPushChangesToTransport:scopeCopy];
  v25 = 0;
  v8 = [(CPLEngineScopeStorage *)self resetSyncStateForScope:scopeCopy error:&v25];
  v9 = v25;
  v10 = v9;
  if (v8 && v7)
  {
    v24 = v9;
    v11 = [(CPLEngineScopeStorage *)self setScopeHasChangesToPushToTransport:scopeCopy changeTypes:122 error:&v24];
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
  v13 = [(CPLEngineScopeStorage *)self setupAnchorResetTransportGroupForScope:scopeCopy error:&v23];
  v14 = v23;

  if (v13)
  {
    v22 = v14;
    v15 = [(CPLEngineScopeStorage *)self setScopeHasChangesToPullFromTransport:scopeCopy error:&v22];
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
      scopeIdentifier = [scopeCopy scopeIdentifier];
      *buf = 138412546;
      v27 = scopeIdentifier;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Unable to reset sync anchor for %@: %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v19 = v10;
    v16 = 0;
    *error = v10;
  }

  else
  {
    v16 = 0;
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)resetCompleteSyncStateIncludingIDMappingForScope:(id)scope error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  scopeIdentifiersBeingCreated = self->_scopeIdentifiersBeingCreated;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  LOBYTE(scopeIdentifiersBeingCreated) = [(NSCountedSet *)scopeIdentifiersBeingCreated containsObject:scopeIdentifier];

  if (scopeIdentifiersBeingCreated)
  {
    v9 = 1;
  }

  else
  {
    v19 = 0;
    v10 = [(CPLEngineScopeStorage *)self _resetCompleteSyncStateForScope:scopeCopy error:&v19];
    v11 = v19;
    if (v10 && ([scopeCopy scopeIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[CPLEngineScopeStorage resetStableRecordsForScopeWithIdentifier:error:](self, "resetStableRecordsForScopeWithIdentifier:error:", v12, error), v12, v13))
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
          scopeIdentifier2 = [scopeCopy scopeIdentifier];
          *buf = 138412546;
          v21 = scopeIdentifier2;
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to reset complete sync state, including ID mapping, for %@: %@", buf, 0x16u);
        }
      }

      if (error)
      {
        v16 = v11;
        v9 = 0;
        *error = v11;
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

- (BOOL)resetCompleteSyncStateForScope:(id)scope error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v14 = 0;
  v7 = [(CPLEngineScopeStorage *)self _resetCompleteSyncStateForScope:scopeCopy error:&v14];
  v8 = v14;
  if (!v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        scopeIdentifier = [scopeCopy scopeIdentifier];
        *buf = 138412546;
        v16 = scopeIdentifier;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Unable to reset complete sync state for %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v11 = v8;
      *error = v8;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_resetCompleteSyncStateForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  v7 = [(CPLEngineScopeStorage *)self _resetLocalSyncStateForScope:scopeCopy error:error];
  engineStore = [(CPLEngineStorage *)self engineStore];
  scopeIdentifier = [scopeCopy scopeIdentifier];

  if (v7 && [(CPLEngineScopeStorage *)self resetCloudRecordsForScopeWithIdentifier:scopeIdentifier error:error])
  {
    idMapping = [engineStore idMapping];
    v11 = [idMapping resetAllFinalCloudIdentifiersForScopeWithIdentifier:scopeIdentifier error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)resetLocalSyncStateForScope:(id)scope error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  v17 = 0;
  v7 = [(CPLEngineScopeStorage *)self _resetLocalSyncStateForScope:scopeCopy error:&v17];
  v8 = v17;
  if (v7)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    quarantinedRecords = [engineStore quarantinedRecords];
    v11 = [quarantinedRecords resetRejectedRecordsWithError:error];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        scopeIdentifier = [scopeCopy scopeIdentifier];
        *buf = 138412546;
        v19 = scopeIdentifier;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Unable to reset local sync state for %@: %@", buf, 0x16u);
      }
    }

    if (error)
    {
      v14 = v8;
      v11 = 0;
      *error = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_resetLocalSyncStateForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  engineStore = [(CPLEngineStorage *)self engineStore];
  if (![engineStore forceApplyPendingChangeSessionUpdateWithError:error])
  {
    goto LABEL_11;
  }

  derivativesCache = [engineStore derivativesCache];
  [derivativesCache discardCache];

  cloudCache = [engineStore cloudCache];
  v11 = [cloudCache discardStagedChangesForScopeWithIdentifier:scopeIdentifier error:error];

  if (!v11 || ![(CPLEngineScopeStorage *)self resetSyncStateForScope:scopeCopy error:error])
  {
    goto LABEL_11;
  }

  v12 = +[CPLFingerprintScheme supportsEPP]? 22 : 21;
  if ([(CPLEngineScopeStorage *)self storeSupportedFeatureVersionInLastSync:v12 forScope:scopeCopy error:error]&& [(CPLEngineScopeStorage *)self setupResetSyncTransportGroupForScope:scopeCopy error:error]&& [(CPLEngineScopeStorage *)self resetLocalRecordsForScopeWithIdentifier:scopeIdentifier error:error])
  {
    engineStore2 = [(CPLEngineStorage *)self engineStore];
    statusCenter = [engineStore2 statusCenter];
    [statusCenter resetTransientStatusesWithScopeIdentifier:scopeIdentifier];

    v15 = 1;
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  return v15;
}

- (int64_t)stableScopeIndexForScopeIdentifier:(id)identifier
{
  v3 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    stableIndex = [v3 stableIndex];
  }

  else
  {
    stableIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return stableIndex;
}

- (id)validCloudScopeIndexes
{
  validCloudIndexes = [(_CPLEngineScopeCache *)self->_scopeCache validCloudIndexes];
  if (!validCloudIndexes)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    validCloudIndexes = [platformObject validCloudIndexes];

    [(_CPLEngineScopeCache *)self->_scopeCache cacheValidCloudIndexes:validCloudIndexes];
  }

  return validCloudIndexes;
}

- (id)validLocalScopeIndexes
{
  validLocalIndexes = [(_CPLEngineScopeCache *)self->_scopeCache validLocalIndexes];
  if (!validLocalIndexes)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    validLocalIndexes = [platformObject validLocalIndexes];

    [(_CPLEngineScopeCache *)self->_scopeCache cacheValidLocalIndexes:validLocalIndexes];
  }

  return validLocalIndexes;
}

- (BOOL)setCloudScopeIndexOnChange:(id)change
{
  v25 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  if (!scopedIdentifier)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v18 lineNumber:981 description:@"invalid record"];

    abort();
  }

  v7 = scopedIdentifier;
  v8 = [(CPLEngineScopeStorage *)self scopedIdentifierForCloudScopedIdentifier:scopedIdentifier];

  if (v8 && [changeCopy supportsResources] && objc_msgSend(changeCopy, "hasChangeType:", 8))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    resources = [changeCopy resources];
    v10 = [resources countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(resources);
          }

          [*(*(&v19 + 1) + 8 * i) setItemScopedIdentifier:v8];
        }

        v11 = [resources countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)setLocalScopeIndexOnChange:(id)change
{
  v25 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  if (!scopedIdentifier)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v18 lineNumber:964 description:@"invalid record"];

    abort();
  }

  v7 = scopedIdentifier;
  v8 = [(CPLEngineScopeStorage *)self scopedIdentifierForLocalScopedIdentifier:scopedIdentifier];

  if (v8 && [changeCopy supportsResources] && objc_msgSend(changeCopy, "hasChangeType:", 8))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    resources = [changeCopy resources];
    v10 = [resources countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(resources);
          }

          [*(*(&v19 + 1) + 8 * i) setItemScopedIdentifier:v8];
        }

        v11 = [resources countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (id)scopeIdentifierForCloudScopeIndex:(int64_t)index
{
  v3 = [(CPLEngineScopeStorage *)self scopeWithCloudScopeIndex:index];
  scopeIdentifier = [v3 scopeIdentifier];

  return scopeIdentifier;
}

- (id)scopeIdentifierForLocalScopeIndex:(int64_t)index
{
  v3 = [(CPLEngineScopeStorage *)self scopeWithLocalScopeIndex:index];
  scopeIdentifier = [v3 scopeIdentifier];

  return scopeIdentifier;
}

- (int64_t)indexForCloudScopeIdentifier:(id)identifier
{
  v3 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    cloudIndex = [v3 cloudIndex];
  }

  else
  {
    cloudIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return cloudIndex;
}

- (int64_t)indexForLocalScopeIdentifier:(id)identifier
{
  v3 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    localIndex = [v3 localIndex];
  }

  else
  {
    localIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return localIndex;
}

- (id)scopedIdentifierForCloudScopedIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeIndex = [identifierCopy scopeIndex];
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self indexForCloudScopeIdentifier:scopeIdentifier];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      goto LABEL_12;
    }

    [identifierCopy setScopeIndex:v8];
  }

  else
  {

    if (scopeIndex != v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = identifierCopy;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Incorrect index for cloud scoped identifier %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:924 description:{@"Incorrect index for cloud scoped identifier %@", identifierCopy}];

      abort();
    }
  }

  v9 = identifierCopy;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)scopedIdentifierForLocalScopedIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeIndex = [identifierCopy scopeIndex];
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self indexForLocalScopeIdentifier:scopeIdentifier];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      goto LABEL_12;
    }

    [identifierCopy setScopeIndex:v8];
  }

  else
  {

    if (scopeIndex != v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = identifierCopy;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Incorrect index for local scoped identifier %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:905 description:{@"Incorrect index for local scoped identifier %@", identifierCopy}];

      abort();
    }
  }

  v9 = identifierCopy;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_setScopeType:(int64_t)type forScope:(id)scope error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  scopeType = [scopeCopy scopeType];
  if (scopeType == type)
  {
    LOBYTE(error) = 1;
  }

  else
  {
    v10 = scopeType;
    if (scopeType)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [CPLScopeChange descriptionForScopeType:v10];
          v13 = [CPLScopeChange descriptionForScopeType:type];
          scopeIdentifier = [scopeCopy scopeIdentifier];
          *buf = 138412802;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          v29 = 2112;
          v30 = scopeIdentifier;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Trying to change scope type from %@ to %@ for %@", buf, 0x20u);
        }
      }

      if (error)
      {
        v15 = [CPLScopeChange descriptionForScopeType:v10];
        v16 = [CPLScopeChange descriptionForScopeType:type];
        scopeIdentifier2 = [scopeCopy scopeIdentifier];
        *error = [CPLErrors cplErrorWithCode:50 description:@"Trying to change scope type from %@ to %@ for %@", v15, v16, scopeIdentifier2];

        LOBYTE(error) = 0;
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          scopeIdentifier3 = [scopeCopy scopeIdentifier];
          v20 = [CPLScopeChange descriptionForScopeType:type];
          *buf = 138412546;
          v26 = scopeIdentifier3;
          v27 = 2112;
          v28 = v20;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Upgrading scope type of %@ to %@", buf, 0x16u);
        }
      }

      platformObject = [(CPLEngineStorage *)self platformObject];
      v22 = [platformObject setScopeType:type forScope:scopeCopy error:error];

      LOBYTE(error) = v22 && [(CPLEngineScopeStorage *)self _handledDisabledFeaturesForScopeIfNecessary:scopeCopy type:type error:error]&& [(CPLEngineScopeStorage *)self setScopeNeedsToBePulledByClient:scopeCopy error:error];
      [(CPLEngineScopeStorage *)self _clearScopeCache];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)deleteScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:identifierCopy];
  if (!v7)
  {
    v11 = 1;
    goto LABEL_14;
  }

  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  if (([identifierCopy isEqualToString:mainScopeIdentifier] & 1) != 0 || objc_msgSend(v7, "scopeType") == 4)
  {

    goto LABEL_5;
  }

  scopeType = [v7 scopeType];

  if (scopeType == 5)
  {
LABEL_5:
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"scope deleted, scopeIdentifier: %@", identifierCopy];
    v10 = [(CPLEngineScopeStorage *)self clearAllQuotaFlagsForMainScopeWithReason:identifierCopy error:error];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  if (-[CPLEngineScopeStorage addCleanupTasksForScope:error:](self, "addCleanupTasksForScope:error:", v7, error) && (-[CPLEngineStorage platformObject](self, "platformObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 deleteScopeWithIdentifier:identifierCopy error:error], v13, v14))
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
  mainScopeIdentifier2 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v16 = [identifierCopy isEqualToString:mainScopeIdentifier2];

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
    engineStore = [(CPLEngineStorage *)self engineStore];
    quarantinedRecords = [engineStore quarantinedRecords];
    v18 = [quarantinedRecords resetRejectedRecordsWithError:error];

    goto LABEL_23;
  }

  if ([(CPLEngineScopeStorage *)self _dropSharingScopeIdentifier:identifierCopy error:error])
  {
    goto LABEL_22;
  }

LABEL_20:
  v18 = 0;
LABEL_23:

  return v18;
}

- (BOOL)addCleanupTasksForScope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  if ([scopeCopy scopeType])
  {
    scopeIdentifier = [scopeCopy scopeIdentifier];
    engineStore = [(CPLEngineStorage *)self engineStore];
    cleanupTasks = [engineStore cleanupTasks];

    if ([cleanupTasks addCleanupTaskForScopeWithIndex:objc_msgSend(scopeCopy scopeIdentifier:"localIndex") scopeType:scopeIdentifier error:{1, error}] && objc_msgSend(cleanupTasks, "addCleanupTaskForScopeWithIndex:scopeIdentifier:scopeType:error:", objc_msgSend(scopeCopy, "cloudIndex"), scopeIdentifier, 2, error))
    {
      v10 = [cleanupTasks addCleanupTaskForScopeWithIndex:objc_msgSend(scopeCopy scopeIdentifier:"stableIndex") scopeType:scopeIdentifier error:{3, error}];
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

- (BOOL)_setSharingScopeIdentifier:(id)identifier error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self _isValidSharingScope:identifierCopy forScopeIdentifier:mainScopeIdentifier];

  if (v8)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopeIdentifier = [identifierCopy scopeIdentifier];
    sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
    v12 = sharingScopeIdentifier;
    if (sharingScopeIdentifier && ([sharingScopeIdentifier isEqualToString:scopeIdentifier] & 1) == 0)
    {
      if (_CPLSilentLogging)
      {
        v15 = 1;
        goto LABEL_20;
      }

      primaryScope = __CPLStorageOSLogDomain_8656();
      if (os_log_type_enabled(primaryScope, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = v12;
        v25 = 2114;
        v26 = scopeIdentifier;
        _os_log_impl(&dword_1DC05A000, primaryScope, OS_LOG_TYPE_DEFAULT, "%{public}@ is already registered as sharing scope. Ignoring %{public}@", buf, 0x16u);
      }
    }

    else
    {
      primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
      if (!primaryScope || [(CPLEngineScopeStorage *)self valueForFlag:16 forScope:primaryScope])
      {
        if (error)
        {
          scopeIdentifier2 = [identifierCopy scopeIdentifier];
          *error = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't use %@ as sharing scope when iCPL is off", scopeIdentifier2];
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
          v24 = identifierCopy;
          _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Activating %@ as sharing scope. Informing store", buf, 0xCu);
        }
      }

      engineStore2 = [(CPLEngineStorage *)self engineStore];
      [engineStore2 storeSharingScopeIdentifier:scopeIdentifier];

      engineStore3 = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore3 engineLibrary];
      supervisor = [engineLibrary supervisor];
      [supervisor scopeStorage:self didStoreSharingScopeIdentifier:scopeIdentifier];
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

- (BOOL)_dropSharingScopeIdentifier:(id)identifier error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  v8 = identifierCopy;
  v38 = engineStore;
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
  v10 = sharingScopeIdentifier;
  if (v8 && sharingScopeIdentifier)
  {
    v11 = [v8 isEqual:sharingScopeIdentifier];

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

  engineStore2 = [(CPLEngineStorage *)self engineStore];
  [engineStore2 dropSharingScopeIdentifier:v8];

  engineStore3 = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore3 engineLibrary];
  supervisor = [engineLibrary supervisor];
  v37 = v8;
  [supervisor scopeStorage:self didDropSharingScopeIdentifier:v8];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = [(CPLEngineScopeStorage *)self enumeratorForScopesIncludeInactive:1];
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    errorCopy = error;
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
        platformObject = [(CPLEngineStorage *)self platformObject];
        v27 = [platformObject flagsForScope:v24];

        if ([v27 valueForFlag:16] && (objc_msgSend(v27, "valueForFlag:", 36) & 1) == 0 && (objc_msgSend(v24, "scopeType") & 0xFFFFFFFFFFFFFFFELL) == 4 && (objc_msgSend(v24, "scopeIdentifier"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[CPLEngineScopeStorage shouldAutoactivateScopeWithIdentifier:scopeType:](self, "shouldAutoactivateScopeWithIdentifier:scopeType:", v28, objc_msgSend(v24, "scopeType")), v28, v29))
        {
          v30 = v24;

          objc_autoreleasePoolPop(v25);
          if (v30)
          {

            primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
            if (primaryScope)
            {
              v8 = v37;
              engineStore = v38;
              if ([(CPLEngineScopeStorage *)self valueForFlag:16 forScope:primaryScope])
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
              engineStore = v38;
            }

            if (errorCopy && !v13)
            {
              v33 = v12;
              v13 = 0;
              *errorCopy = v12;
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
  engineStore = v38;
LABEL_39:

  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)createScopeWithIdentifier:(id)identifier scopeType:(int64_t)type flags:(int64_t)flags transportScope:(id)scope error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeCopy = scope;
  v15 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:identifierCopy];
  v16 = v15;
  if (type != 2)
  {
    if (!v15)
    {
      goto LABEL_15;
    }

    if (!type)
    {
LABEL_9:
      platformObject = [(CPLEngineStorage *)self platformObject];
      v21 = [platformObject flagsForScope:v16];

      [v21 setValue:1 forFlag:flags];
      if ((flags & 0x10) == 0)
      {
        [v21 setValue:0 forFlag:16];
      }

      v22 = [(CPLEngineScopeStorage *)self updateFlags:v21 forScope:v16 error:error];

      if (scopeCopy && v22)
      {
        if ([(CPLEngineScopeStorage *)self setTransportScope:scopeCopy forScope:v16 error:error])
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
    v19 = [v16 copyWithScopeType:type];

    v16 = v19;
    if (![(CPLEngineScopeStorage *)self _setScopeType:type forScope:v19 error:error])
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v18 = [standardUserDefaults BOOLForKey:@"CPLOwnedMomentSharesAreHighPriority"];

  if (v18)
  {
    flags |= 0x20000uLL;
  }

  if (v16)
  {
    goto LABEL_8;
  }

LABEL_15:
  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v16 = [platformObject2 addScopeWithIdentifier:identifierCopy scopeType:type error:error];

  if (!v16)
  {
    goto LABEL_23;
  }

  if (![(CPLEngineScopeStorage *)self _handledDisabledFeaturesForScopeIfNecessary:v16 type:type error:error])
  {
    goto LABEL_22;
  }

  [(CPLEngineScopeStorage *)self _clearScopeCache];
  v24 = [(CPLEngineScopeStorage *)self setTransportScope:scopeCopy forScope:v16 error:error];
  if (flags && v24)
  {
    v25 = [[CPLEngineScopeFlagsUpdate alloc] initWithFlags:0];
    [(CPLEngineScopeFlagsUpdate *)v25 setValue:1 forFlag:flags];
    platformObject3 = [(CPLEngineStorage *)self platformObject];
    v27 = [platformObject3 updateFlags:v25 forScope:v16 error:error];

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
    v32 = flags & 0x10;
  }

  else
  {
    scopeType = [v16 scopeType];
    v32 = flags & 0x10;
    if ((flags & 0x10) == 0 && (scopeType & 0xFFFFFFFFFFFFFFFELL) == 4)
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v35 lineNumber:706 description:{@"Trying to create an active shared library scope but the feature is disabled %@", v16}];

      abort();
    }
  }

  if (v32)
  {
    v36 = 1;
  }

  else
  {
    if ([(CPLEngineScopeStorage *)self _setSharingScopeIdentifier:v16 error:error])
    {
      platformObject4 = [(CPLEngineStorage *)self platformObject];
      date = [MEMORY[0x1E695DF00] date];
      v36 = [platformObject4 storeActivationDate:date forScope:v16 error:error];
    }

    else
    {
      v36 = 0;
    }

    mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
    v40 = [identifierCopy isEqualToString:mainScopeIdentifier];

    if (v40)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      engineLibrary = [engineStore engineLibrary];
      [engineLibrary noteMainScopeHasBeenActivated];
    }
  }

LABEL_47:
  mainScopeIdentifier2 = [(CPLEngineStorage *)self mainScopeIdentifier];
  v44 = [identifierCopy isEqualToString:mainScopeIdentifier2];

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

- (BOOL)_handledDisabledFeaturesForScopeIfNecessary:(id)necessary type:(int64_t)type error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  engineStore = [(CPLEngineStorage *)self engineStore];
  disabledFeatures = [engineStore disabledFeatures];

  if ([disabledFeatures count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = disabledFeatures;
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
            engineStore2 = [(CPLEngineStorage *)self engineStore];
            v16 = [v14 handleScopeWhenFeatureIsDisabled:necessaryCopy scopeType:type store:engineStore2 error:error];

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
      mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
      v8 = 138412290;
      v9 = mainScopeIdentifier;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Resetting global status for %@", &v8, 0xCu);
    }
  }

  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];

  [engineLibrary setICloudLibraryHasBeenWiped:0];
  [engineLibrary setIsExceedingQuota:0];
  [engineLibrary setIsExceedingSharedLibraryQuota:0];
  [engineLibrary setExitDeleteTime:0];
  [engineLibrary updateInitialSyncDate:0];
  [engineLibrary updateAccountFlagsData:0];
  [engineLibrary setBusyState:0];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)doesScopeNeedToUploadComputeState:(id)state
{
  stateCopy = state;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject doesScopeNeedToUploadComputeState:stateCopy];

  return v6;
}

- (BOOL)setScope:(id)scope hasCompletedUploadComputeStateTask:(int64_t)task error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setScope:scopeCopy hasCompletedUploadComputeStateTask:task error:error];

  return error;
}

- (int64_t)uploadComputeStateTaskForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject uploadComputeStateTaskForScope:scopeCopy];

  return v6;
}

- (BOOL)setScopeNeedsToUploadComputeState:(id)state error:(id *)error
{
  stateCopy = state;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setScopeNeedsToUploadComputeState:stateCopy error:error];

  return error;
}

- (BOOL)hasScopesNeedingToUploadComputeState
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasScopesNeedingToUploadComputeState = [platformObject hasScopesNeedingToUploadComputeState];

  return hasScopesNeedingToUploadComputeState;
}

- (id)enumeratorForScopesNeedingToUploadComputeState
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesNeedingToUploadComputeState = [platformObject enumeratorForScopesNeedingToUploadComputeState];

  return enumeratorForScopesNeedingToUploadComputeState;
}

- (BOOL)doesScopeNeedToUpdateTransport:(id)transport
{
  transportCopy = transport;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject doesScopeNeedToUpdateTransport:transportCopy];

  return v6;
}

- (BOOL)setScope:(id)scope hasCompletedTransportUpdate:(int64_t)update error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setScope:scopeCopy hasCompletedTransportUpdate:update error:error];

  return error;
}

- (int64_t)transportUpdateTaskForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject transportUpdateTaskForScope:scopeCopy];

  return v6;
}

- (BOOL)setScopeNeedsToUpdateTransport:(id)transport error:(id *)error
{
  self->_scheduleATransportUpdate = 1;
  transportCopy = transport;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setScopeNeedsToUpdateTransport:transportCopy error:error];

  return error;
}

- (BOOL)updateScopeWithChange:(id)change error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  scopeIdentifier = [changeCopy scopeIdentifier];
  v8 = [(CPLEngineScopeStorage *)self _scopeWithIdentifier:scopeIdentifier];
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
  v9 = scopeIdentifier;
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
  if ([changeCopy isDelete])
  {
    if (!v8 || (scopeType = [v8 scopeType]) == 0)
    {
      scopeType = [changeCopy scopeType];
    }

    if (!scopeType)
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

      if (error)
      {
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    if (scopeType == 1)
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

      if (error)
      {
LABEL_45:
        [CPLErrors invalidScopeErrorWithScopeIdentifier:v11];
        *error = v21 = 0;
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
    v8 = [(CPLEngineScopeStorage *)self _createScopeFromScopeChange:changeCopy error:error];
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

  if (![(CPLEngineScopeStorage *)self deleteScopeWithIdentifier:v11 error:error])
  {
    goto LABEL_58;
  }

  v10[2](v10);
  v16 = [(CPLEngineScopeStorage *)self _createScopeFromScopeChange:changeCopy error:error];

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
  if (![changeCopy isDelete])
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

      v19 = [(CPLEngineScopeStorage *)self setScopeNeedsToUpdateTransport:v8 error:error];
      goto LABEL_39;
    }

    platformObject = [(CPLEngineStorage *)self platformObject];
    v24 = [platformObject flagsForScope:v8];

    if ([v24 valueForFlag:16])
    {
      v21 = 1;
LABEL_66:

      goto LABEL_67;
    }

    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v32 = [platformObject2 scopeChangeForScope:v8];

    v33 = 0;
    [v32 updateScopeFromScopeChange:changeCopy direction:1 didHaveChanges:&v33];
    if (v33 == 1)
    {
      v33 = 0;
      platformObject3 = [(CPLEngineStorage *)self platformObject];
      v27 = [platformObject3 storeScopeChange:v32 forScope:v8 scopeChangeHasBeenUpdated:&v33 error:error];

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

        if ([(CPLEngineScopeStorage *)self setScopeNeedsToUpdateTransport:v8 error:error, v32])
        {
          v21 = [(CPLEngineScopeStorage *)self setScopeNeedsUpdateFromTransport:v8 error:error];
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

  v19 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:48 forScope:v8 error:error];
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

- (id)_createScopeFromScopeChange:(id)change error:(id *)error
{
  changeCopy = change;
  scopeIdentifier = [changeCopy scopeIdentifier];
  v8 = -[CPLEngineScopeStorage createScopeWithIdentifier:scopeType:flags:transportScope:error:](self, "createScopeWithIdentifier:scopeType:flags:transportScope:error:", scopeIdentifier, [changeCopy scopeType], objc_msgSend(changeCopy, "defaultFlags"), 0, error);

  if (v8)
  {
    v12 = 0;
    platformObject = [(CPLEngineStorage *)self platformObject];
    v10 = [platformObject storeScopeChange:changeCopy forScope:v8 scopeChangeHasBeenUpdated:&v12 error:error];

    if ((v10 & 1) == 0)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)doesScopeSupportToBePulledByClient:(id)client
{
  clientCopy = client;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject doesScopeSupportToBePulledByClient:clientCopy];

  return v6;
}

- (BOOL)doesScopeNeedToBePulledByClient:(id)client
{
  clientCopy = client;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject doesScopeNeedToBePulledByClient:clientCopy];

  return v6;
}

- (BOOL)setScopeNeedsToBePulledByClient:(id)client error:(id *)error
{
  self->_someScopeMightHaveToBePulledByClient = 1;
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  self->_schedulePullFromClient = 1;
  clientCopy = client;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setScopeNeedsToBePulledByClient:clientCopy error:error];

  return error;
}

- (BOOL)clientAcknowledgedScopeChanges:(id)changes error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  objc_opt_class();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = changesCopy;
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
        isScopeChange = [v12 isScopeChange];
        v14 = isScopeChange;
        if (error && (isScopeChange & 1) == 0)
        {
          *error = [CPLErrors cplErrorWithCode:50 description:@"incorrect change of class %@ in a batch of scope changes", objc_opt_class()];
        }

        scope = [v12 scope];
        if (scope)
        {
          v16 = 0;
        }

        else
        {
          v16 = v14;
        }

        if (v16 == 1)
        {
          if (error)
          {
            scopeIdentifier = [v12 scopeIdentifier];
            *error = [CPLErrors cplErrorWithCode:50 description:@"missing inner scope in scope change for %@", scopeIdentifier];
LABEL_30:
          }

LABEL_31:
          v26 = 0;
          goto LABEL_32;
        }

        scopeIdentifier = scope;
        if (!v14)
        {
          goto LABEL_30;
        }

        platformObject = [(CPLEngineStorage *)self platformObject];
        v19 = [platformObject setScope:scopeIdentifier hasCompletedClientNeedsToPullTask:objc_msgSend(v12 error:{"pullTaskItem"), error}];

        if (!v19)
        {
          goto LABEL_30;
        }

        if ([v12 isDelete])
        {
          engineStore = [(CPLEngineStorage *)self engineStore];
          libraryOptions = [engineStore libraryOptions];

          if ((libraryOptions & 0x400) != 0 || [(CPLEngineScopeStorage *)self valueForFlag:16 forScope:scopeIdentifier])
          {
            scopeIdentifier2 = [v12 scopeIdentifier];
            v23 = [(CPLEngineScopeStorage *)self deleteScopeWithIdentifier:scopeIdentifier2 error:error];

            if (!v23)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v24 = [(CPLEngineScopeStorage *)self setValue:1 forFlag:16 forScope:scopeIdentifier error:error];

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

- (id)scopeChangesNeedingToBePulledByClientWithMaximumCount:(unint64_t)count
{
  v30 = *MEMORY[0x1E69E9840];
  self->_clearSomeScopeMightHaveToBePulledByClient = 0;
  if (self->_someScopeMightHaveToBePulledByClient)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    platformObject = [(CPLEngineStorage *)self platformObject];
    v7 = [platformObject enumeratorForScopesNeedingToBePulledByClientWithMaximumCount:count];

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
                scopeIdentifier = [v13 scopeIdentifier];
                *buf = 138412290;
                v28 = scopeIdentifier;
                _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "failed to create a scope change for %@", buf, 0xCu);
              }
            }

            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScopeStorage.m"];
            scopeIdentifier2 = [v13 scopeIdentifier];
            [currentHandler handleFailureInMethod:a2 object:self file:v21 lineNumber:362 description:{@"failed to create a scope change for %@", scopeIdentifier2}];

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

- (id)_scopeChangeToBePulledByClientForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject flagsForScope:scopeCopy];

  v7 = +[CPLScopeChange scopeChangeClassForType:](CPLScopeChange, "scopeChangeClassForType:", [scopeCopy scopeType]);
  if ([v6 valueForFlag:4] && (objc_msgSend(v6, "valueForFlag:", 64) & 1) == 0)
  {
    scopeIdentifier = [scopeCopy scopeIdentifier];
    v9 = -[objc_class newDeleteScopeChangeWithScopeIdentifier:type:](v7, "newDeleteScopeChangeWithScopeIdentifier:type:", scopeIdentifier, [scopeCopy scopeType]);
  }

  else
  {
    scopeIdentifier = [(CPLEngineStorage *)self platformObject];
    v9 = [scopeIdentifier scopeChangeForScope:scopeCopy];
  }

  v10 = v9;

  if (v10)
  {
    platformObject2 = [(CPLEngineStorage *)self platformObject];
    v12 = [platformObject2 clientNeedsToPullTaskForScope:scopeCopy];

    [v10 setPullTaskItem:v12];
    [v10 setScope:scopeCopy];
  }

  return v10;
}

- (BOOL)doScopesNeedMetadataSync:(id)sync
{
  syncCopy = sync;
  platformObject = [(CPLEngineStorage *)self platformObject];
  if ([platformObject doScopesNeedMetadataSync:syncCopy])
  {
    v6 = 1;
  }

  else
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    transientPullRepository = [engineStore transientPullRepository];
    v6 = [transientPullRepository hasUnmingledOrStashedRecordsWithScopeFilter:syncCopy];
  }

  return v6;
}

- (id)enumeratorForScopesWithMingling
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesWithMingling = [platformObject enumeratorForScopesWithMingling];

  return enumeratorForScopesWithMingling;
}

- (BOOL)setPullFromTransportExpirationInterval:(double)interval scope:(id)scope error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setPullFromTransportExpirationInterval:scopeCopy scope:error error:interval];

  return error;
}

- (BOOL)doesScopeNeedToPullChangesFromTransport:(id)transport
{
  transportCopy = transport;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject doesScopeNeedToPullChangesFromTransport:transportCopy];

  return v6;
}

- (BOOL)setScope:(id)scope hasCompletedPullFromTransportTask:(int64_t)task error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LODWORD(task) = [platformObject setScope:scopeCopy hasCompletedPullFromTransportTask:task error:error];

  if (task)
  {
    if ([(CPLEngineScopeStorage *)self shouldTrackAdditionalInitialSyncDatesForScope:scopeCopy]&& ([(CPLEngineScopeStorage *)self initialMetadataDownloadDateForScope:scopeCopy], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStorageOSLogDomain_8656();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = scopeCopy;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Setting initial metadata download date for %@", &v17, 0xCu);
        }
      }

      platformObject2 = [(CPLEngineStorage *)self platformObject];
      date = [MEMORY[0x1E695DF00] date];
      v11 = [platformObject2 storeInitialMetadataDownloadDate:date forScope:scopeCopy error:error];
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

- (int64_t)pullFromTransportTaskForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject pullFromTransportTaskForScope:scopeCopy];

  return v6;
}

- (BOOL)setAllScopesHasChangesToPullFromTransportWithError:(id *)error
{
  self->_schedulePullFromTransport = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject setAllScopesHasChangesToPullFromTransportWithError:error];

  return error;
}

- (BOOL)setScopeHasChangesToPullFromTransport:(id)transport error:(id *)error
{
  transportCopy = transport;
  if ([(CPLEngineScopeStorage *)self valueForFlag:16 forScope:transportCopy])
  {
    v7 = [(CPLEngineScopeStorage *)self setScopeNeedsUpdateFromTransport:transportCopy error:error];
  }

  else
  {
    self->_schedulePullFromTransport = 1;
    v8 = [(CPLEngineScopeStorage *)self scopeChangeForScope:transportCopy];
    if ([v8 shouldAlwaysUpdateScopeInfoWhenPossible] && !-[CPLEngineScopeStorage setScopeNeedsUpdateFromTransport:error:](self, "setScopeNeedsUpdateFromTransport:error:", transportCopy, error))
    {
      v7 = 0;
    }

    else
    {
      platformObject = [(CPLEngineStorage *)self platformObject];
      v7 = [platformObject setScopeHasChangesToPullFromTransport:transportCopy error:error];
    }
  }

  return v7;
}

- (BOOL)hasScopesNeedingToPullChangesFromTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasScopesNeedingToPullChangesFromTransport = [platformObject hasScopesNeedingToPullChangesFromTransport];

  return hasScopesNeedingToPullChangesFromTransport;
}

- (id)enumeratorForScopesNeedingToPullChangesFromTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesNeedingToPullChangesFromTransport = [platformObject enumeratorForScopesNeedingToPullChangesFromTransport];

  return enumeratorForScopesNeedingToPullChangesFromTransport;
}

- (BOOL)doesScopeNeedToPushChangesToTransport:(id)transport
{
  transportCopy = transport;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject doesScopeNeedToPushChangesToTransport:transportCopy];

  return v6;
}

- (BOOL)setScope:(id)scope hasCompletedPushToTransportTask:(int64_t)task error:(id *)error
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject setScope:scopeCopy hasCompletedPushToTransportTask:task error:error];

  if (v10)
  {
    [(CPLEngineScopeStorage *)self _checkSyncManagerPriorityBoost];
  }

  return v10;
}

- (int64_t)pushToTransportTaskForScope:(id)scope
{
  scopeCopy = scope;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject pushToTransportTaskForScope:scopeCopy];

  return v6;
}

- (BOOL)setScopeHasChangesToPushToTransport:(id)transport changeTypes:(unint64_t)types error:(id *)error
{
  transportCopy = transport;
  if ((types & 0xFFFFFFFFFFFFFEFFLL) != 0)
  {
    v9 = types & 0xFFFFFFFFFFFFFEFFLL;
  }

  else
  {
    v9 = 122;
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject flagsForScope:transportCopy];

  if ([v11 valueForFlag:0x20000])
  {
    self->_schedulePushHighPriorityToTransportChangeTypes |= v9;
    [(CPLEngineScopeStorage *)self _forceSyncManagerPriorityBoost];
  }

  else
  {
    self->_schedulePushToTransportChangeTypes |= v9;
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v13 = [platformObject2 setScopeHasChangesToPushToTransport:transportCopy error:error];

  return v13;
}

- (BOOL)hasScopesNeedingToPushChangesToTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasScopesNeedingToPushChangesToTransport = [platformObject hasScopesNeedingToPushChangesToTransport];

  return hasScopesNeedingToPushChangesToTransport;
}

- (id)enumeratorForScopesNeedingToPushChangesToTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesNeedingToPushChangesToTransport = [platformObject enumeratorForScopesNeedingToPushChangesToTransport];

  return enumeratorForScopesNeedingToPushChangesToTransport;
}

- (BOOL)hasScopesNeedingToPushHighPriorityChangesToTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasScopesNeedingToPushHighPriorityChangesToTransport = [platformObject hasScopesNeedingToPushHighPriorityChangesToTransport];

  return hasScopesNeedingToPushHighPriorityChangesToTransport;
}

- (id)enumeratorForScopesNeedingToPushHighPriorityChangesToTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesNeedingToPushHighPriorityChangesToTransport = [platformObject enumeratorForScopesNeedingToPushHighPriorityChangesToTransport];

  return enumeratorForScopesNeedingToPushHighPriorityChangesToTransport;
}

- (id)enumeratorForScopesNeedingUpdateFromTransport
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForScopesNeedingUpdateFromTransport = [platformObject enumeratorForScopesNeedingUpdateFromTransport];

  return enumeratorForScopesNeedingUpdateFromTransport;
}

- (id)enumeratorForDeletedStagedScopes
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  enumeratorForDeletedStagedScopes = [platformObject enumeratorForDeletedStagedScopes];

  return enumeratorForDeletedStagedScopes;
}

- (void)_checkSyncManagerPriorityBoost
{
  self->_shouldChangeSyncManagerPriorityBoost = 1;
  platformObject = [(CPLEngineStorage *)self platformObject];
  self->_syncManagerPriorityBoost = [platformObject hasScopesNeedingToPushHighPriorityChangesToTransport];
}

- (id)scopeWithStableIndex:(int64_t)index
{
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithStableIndex:?];
  if (!v5)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v5 = [platformObject scopeWithStableIndex:index];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (id)scopeWithCloudScopeIndex:(int64_t)index
{
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithCloudIndex:?];
  if (!v5)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v5 = [platformObject scopeWithCloudIndex:index];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (id)scopeWithLocalScopeIndex:(int64_t)index
{
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithLocalIndex:?];
  if (!v5)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v5 = [platformObject scopeWithLocalIndex:index];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (id)_scopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_CPLEngineScopeCache *)self->_scopeCache scopeWithIdentifier:identifierCopy];
  if (!v5)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v5 = [platformObject scopeWithIdentifier:identifierCopy];

    [(CPLEngineScopeStorage *)self _cacheScope:v5];
  }

  return v5;
}

- (void)_removeBrokenScope:(id)scope
{
  scopeCopy = scope;
  scopesToRemoveFromBrokenScopes = self->_scopesToRemoveFromBrokenScopes;
  v8 = scopeCopy;
  if (!scopesToRemoveFromBrokenScopes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_scopesToRemoveFromBrokenScopes;
    self->_scopesToRemoveFromBrokenScopes = v6;

    scopeCopy = v8;
    scopesToRemoveFromBrokenScopes = self->_scopesToRemoveFromBrokenScopes;
  }

  [(NSMutableArray *)scopesToRemoveFromBrokenScopes addObject:scopeCopy];
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
  primaryScope = [(CPLEngineScopeStorage *)self primaryScope];
  if (primaryScope)
  {
    v6 = primaryScope;
    v4 = [(CPLEngineScopeStorage *)self scopeChangeForScope:?];
    if (v4)
    {
      v5 = v4;
      [(CPLEngineScopeStorage *)self _updateGlobalStatusWithScopeChange:v4 forScope:v6];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)openWithError:(id *)error
{
  v7.receiver = self;
  v7.super_class = CPLEngineScopeStorage;
  v4 = [(CPLEngineStorage *)&v7 openWithError:error];
  if (v4)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    self->_someScopeMightHaveToBePulledByClient = [engineStore shouldSyncScopeList];
  }

  return v4;
}

- (CPLEngineScopeStorage)initWithEngineStore:(id)store name:(id)name
{
  v8.receiver = self;
  v8.super_class = CPLEngineScopeStorage;
  v4 = [(CPLEngineStorage *)&v8 initWithEngineStore:store name:name];
  if (v4)
  {
    v5 = objc_alloc_init(_CPLEngineScopeCache);
    scopeCache = v4->_scopeCache;
    v4->_scopeCache = v5;
  }

  return v4;
}

@end