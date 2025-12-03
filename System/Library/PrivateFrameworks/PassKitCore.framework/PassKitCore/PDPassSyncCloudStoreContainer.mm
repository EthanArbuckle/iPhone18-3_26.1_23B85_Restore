@interface PDPassSyncCloudStoreContainer
- (BOOL)canSkipDownloadForReason:(int64_t)reason;
- (BOOL)didEncounterChangeTokenExpiredError:(id)error;
- (BOOL)ensureSyncPreconditionsAreMet;
- (BOOL)isBusy;
- (BOOL)isDeltaSyncPossible;
- (BOOL)isWalletSyncEnabled;
- (NSString)identifier;
- (PDCardCloudManagerLocalStore)localStore;
- (PDPassSyncCloudStoreContainer)initWithConfiguration:(id)configuration;
- (id)allPossibleZoneNamesForContainerDatabase:(id)database;
- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)database;
- (id)allRecordsRequest;
- (id)changesRecordsRequest;
- (id)cloudPassIDForLocalUniqueID:(id)d inDatabase:(id)database;
- (id)cloudStoreZonesForItem:(id)item action:(unint64_t)action inContainerDatabase:(id)database;
- (id)cloudStoreZonesForItemType:(unint64_t)type configuration:(id)configuration action:(unint64_t)action inContainerDatabase:(id)database;
- (id)identifierFromRecord:(id)record;
- (id)lastSyncDateDescription;
- (id)passesZone;
- (id)recordTypeFromRecordName:(id)name;
- (id)recordTypesForCloudStoreItemType:(unint64_t)type;
- (id)requestForAllChangedRecordsInZone:(id)zone;
- (id)requestForAllRecordsInZone:(id)zone;
- (id)stateDescription;
- (id)subscriptionForZone:(id)zone inContainerDatabase:(id)database;
- (id)syncTokenDescription;
- (id)zoneIDForSubscription:(id)subscription inContainerDatabase:(id)database;
- (unint64_t)cloudStoreItemTypeForRecordType:(id)type;
- (void)_queue_cloudStoreAccountChanged:(id)changed;
- (void)_queue_processResultWithError:(id)error nextExpectedState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count shouldRetry:(BOOL)retry completion:(id)completion;
- (void)_queue_setContainerState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count completion:(id)completion;
- (void)abortDownloadOfCloudDataWithReason:(int64_t)reason;
- (void)advanceToNextState:(unint64_t)state;
- (void)advanceToNextState:(unint64_t)state withError:(id)error;
- (void)checkAccountState;
- (void)clearChangeHistory;
- (void)clearSyncToken;
- (void)deleteCloudSyncRelatedInformation;
- (void)doDeltaSyncOfZone:(id)zone andFill:(id)fill completion:(id)completion;
- (void)doFullSyncOfZone:(id)zone andFill:(id)fill completion:(id)completion;
- (void)downloadCloudDataWithReason:(int64_t)reason;
- (void)fetchDiagnosticInformation:(id)information;
- (void)fetchDiagnosticSnapshot:(id)snapshot;
- (void)finishDownloadOfCloudDataWithContents:(id)contents forReason:(int64_t)reason;
- (void)finishInitialDownloadOfCloudDataWithContents:(id)contents;
- (void)finishInvalidStateChange;
- (void)finishRegularDownloadOfCloudDataWithContents:(id)contents;
- (void)markEndOfDownload:(id)download;
- (void)moveItemsFromBatchContents:(id)contents toFinalContents:(id)finalContents;
- (void)moveItemsFromResponse:(id)response duringDeltaSync:(BOOL)sync orError:(id)error toContents:(id)contents;
- (void)onWorkQueue:(id)queue;
- (void)passOnHandlingStateChange;
- (void)performDeletes:(id)deletes completion:(id)completion;
- (void)prepareForDetachment;
- (void)prepareForSetup;
- (void)processChangeHistory;
- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)identifier deletedRecordsByDatabaseIdentifier:(id)databaseIdentifier carriedOverRecordsByDatabaseIdentifier:(id)byDatabaseIdentifier conflictingRecordsByDatabaseIdentifier:(id)recordsByDatabaseIdentifier request:(id)request completion:(id)completion;
- (void)processPendingChanges:(id)changes;
- (void)processPendingChangesWithReason:(int64_t)reason;
- (void)reload;
- (void)removeCloudPassesWithLocalUniqueIDs:(id)ds completion:(id)completion;
- (void)resetContents;
- (void)resetMigration;
- (void)retryExecutingAnyDroppedDownload;
- (void)synchronizeWithReason:(int64_t)reason;
- (void)updateCloudCatalog:(id)catalog completion:(id)completion;
- (void)updateCloudPasses:(id)passes completion:(id)completion;
- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)configurations groupName:(id)name groupNameSuffix:(id)suffix qualityOfService:(int64_t)service completion:(id)completion;
- (void)uploadLocalDataToCloud;
@end

@implementation PDPassSyncCloudStoreContainer

- (PDPassSyncCloudStoreContainer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy setContainerDatabaseDataSource:self];
  v12.receiver = self;
  v12.super_class = PDPassSyncCloudStoreContainer;
  v6 = [(PDCloudStoreContainer *)&v12 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = [(PDCloudStoreContainerConfiguration *)v7->_configuration stringPrefixedWithContainerName:@"PDPassSyncCloudStoreContainerLastDownloadDateKey"];
    v9 = PKSharedCacheGetDateForKey();
    lastDownloadDate = v7->_lastDownloadDate;
    v7->_lastDownloadDate = v9;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NSString)identifier
{
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  container = [containerManager container];
  containerIdentifier = [container containerIdentifier];

  return containerIdentifier;
}

- (void)synchronizeWithReason:(int64_t)reason
{
  if (PKCloudKitPassSyncEnabled())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000843A4;
    v5[3] = &unk_10083D700;
    v5[4] = self;
    v5[5] = reason;
    [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v5];
  }
}

- (void)processPendingChangesWithReason:(int64_t)reason
{
  if (PKCloudKitPassSyncEnabled())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100084658;
    v5[3] = &unk_10083D700;
    v5[4] = self;
    v5[5] = reason;
    [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v5];
  }
}

- (void)reload
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100084A3C;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (BOOL)ensureSyncPreconditionsAreMet
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v24 = 138543362;
    v25 = logDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] checking sync preconditions", &v24, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  isDownloading = self->_isDownloading;
  os_unfair_lock_unlock(&self->_lock);
  if (![(PDCloudStoreContainer *)self isSetup]&& [(PDCloudStoreContainer *)self nextExpectedState]!= 14)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = logDescription2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] not is set up", &v24, 0xCu);
    }

    if ([(PDCloudStoreContainer *)self cloudContainerSetupInProgress])
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = logDescription3;
        v7 = "[PDPassCloudStore(%{public}@)] looks like container is being set up";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    v16 = sub_1000850C8();
    v17 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if ((v16 & 1) == 0)
    {
      if (v17)
      {
        logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = logDescription3;
        v7 = "[PDPassCloudStore(%{public}@)] looks like container is not set up because wallet dataclass is not enabled";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if (v17)
    {
      logDescription4 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = logDescription4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] setting up container", &v24, 0xCu);
    }

    delegate = [(PDCloudStoreContainer *)self delegate];
    v3 = delegate;
    selfCopy2 = self;
    v21 = 0;
    goto LABEL_42;
  }

  if (![(PDPassSyncCloudStoreContainer *)self isWalletSyncEnabled])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      logDescription5 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = logDescription5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] wallet sync was disabled - checking again", &v24, 0xCu);
    }

    if ((PKCloudKitPassSyncEnabled() & 1) == 0)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = logDescription3;
        v7 = "[PDPassCloudStore(%{public}@)] sync swich is still disabled";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if ((sub_1000850C8() & 1) == 0)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = logDescription3;
        v7 = "[PDPassCloudStore(%{public}@)] wallet dataclass is still disabled ";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    cloudContainerSetupInProgress = [(PDCloudStoreContainer *)self cloudContainerSetupInProgress];
    v10 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (cloudContainerSetupInProgress)
    {
      if (v10)
      {
        logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = logDescription3;
        v7 = "[PDPassCloudStore(%{public}@)] wallet dataclass is now enabled - container already being set up";
        goto LABEL_38;
      }

LABEL_43:

      return 0;
    }

    if (v10)
    {
      logDescription6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = logDescription6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] wallet dataclass is now enabled - setting up again", &v24, 0xCu);
    }

    delegate = [(PDCloudStoreContainer *)self delegate];
    v3 = delegate;
    selfCopy2 = self;
    v21 = 1;
LABEL_42:
    [delegate cloudStoreContainer:selfCopy2 reinitializeContainerAndInvalidateFirst:v21];
    goto LABEL_43;
  }

  if (isDownloading)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = logDescription3;
      v7 = "[PDPassCloudStore(%{public}@)] downloading data - uploads and more downloads will happen later";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v7, &v24, 0xCu);

      goto LABEL_43;
    }

    goto LABEL_43;
  }

  didSuccessfullySyncAtLeastOnce = self->_didSuccessfullySyncAtLeastOnce;
  v13 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!didSuccessfullySyncAtLeastOnce)
  {
    if (v13)
    {
      logDescription7 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = logDescription7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] container never synced - tryng to download first", &v24, 0xCu);
    }

    [(PDPassSyncCloudStoreContainer *)self downloadCloudDataWithReason:3];
    return 0;
  }

  if (v13)
  {
    logDescription8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v24 = 138543362;
    v25 = logDescription8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] sync preconditions are met", &v24, 0xCu);
  }

  return 1;
}

- (void)_queue_setContainerState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  suffixCopy = suffix;
  v12 = objc_alloc_init(PDCloudStoreStateConfiguration);
  [(PDCloudStoreStateConfiguration *)v12 setCurrentState:state];
  [(PDCloudStoreStateConfiguration *)v12 setOperationGroupNameSuffix:suffixCopy];

  [(PDCloudStoreStateConfiguration *)v12 setRetryCount:count];
  [(PDCloudStoreStateConfiguration *)v12 setStateChangeCompletion:completionCopy];

  [(PDPassSyncCloudStoreContainer *)self setStateConfiguration:v12];
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v15 = 138543618;
    v16 = logDescription;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] state will advance to %{public}@", &v15, 0x16u);
  }

  if ([(PDCloudStoreContainer *)self _queue_ensureContainerState:state])
  {
    if (state > 4)
    {
      switch(state)
      {
        case 5uLL:
          [(PDPassSyncCloudStoreContainer *)self prepareForSetup];
          goto LABEL_9;
        case 0xDuLL:
          [(PDPassSyncCloudStoreContainer *)self downloadCloudDataWithReason:0];
          goto LABEL_9;
        case 0xEuLL:
          [(PDPassSyncCloudStoreContainer *)self uploadLocalDataToCloud];
          goto LABEL_9;
      }
    }

    else if (state - 2 >= 2)
    {
      if (state == 4)
      {
        [(PDPassSyncCloudStoreContainer *)self checkAccountState];
        goto LABEL_9;
      }
    }

    else
    {
      [(PDPassSyncCloudStoreContainer *)self prepareForDetachment];
    }

    [(PDPassSyncCloudStoreContainer *)self passOnHandlingStateChange];
  }

  else
  {
    [(PDPassSyncCloudStoreContainer *)self finishInvalidStateChange];
  }

LABEL_9:
}

- (void)_queue_processResultWithError:(id)error nextExpectedState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count shouldRetry:(BOOL)retry completion:(id)completion
{
  retryCopy = retry;
  errorCopy = error;
  suffixCopy = suffix;
  completionCopy = completion;
  v17 = [[PKCloudStoreError alloc] initWithError:errorCopy];
  if (([v17 isUnrecoverableDecryptionError] & 1) != 0 || objc_msgSend(v17, "isZoneNotFoundError"))
  {
    localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
    [localStore resetMigration];
  }

  v19.receiver = self;
  v19.super_class = PDPassSyncCloudStoreContainer;
  [(PDCloudStoreContainer *)&v19 _queue_processResultWithError:errorCopy nextExpectedState:state operationGroupNameSuffix:suffixCopy retryCount:count shouldRetry:retryCopy completion:completionCopy];
}

- (void)finishInvalidStateChange
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    stateConfiguration = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
    v9 = 138543618;
    v10 = logDescription;
    v11 = 2114;
    v12 = stateConfiguration;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] encountered invalid state configuration %{public}@", &v9, 0x16u);
  }

  stateConfiguration2 = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  stateChangeCompletion = [stateConfiguration2 stateChangeCompletion];

  if (stateChangeCompletion)
  {
    invalidCloudStoreStateChangeError = [(PDPassSyncCloudStoreContainer *)self invalidCloudStoreStateChangeError];
    (stateChangeCompletion)[2](stateChangeCompletion, 0, invalidCloudStoreStateChangeError);
  }

  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
}

- (void)advanceToNextState:(unint64_t)state
{
  stateConfiguration = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
  [(PDCloudStoreContainer *)self setNextExpectedState:state];
  operationGroupNameSuffix = [stateConfiguration operationGroupNameSuffix];
  retryCount = [stateConfiguration retryCount];
  stateChangeCompletion = [stateConfiguration stateChangeCompletion];
  [(PDPassSyncCloudStoreContainer *)self _queue_setContainerState:state operationGroupNameSuffix:operationGroupNameSuffix retryCount:retryCount completion:stateChangeCompletion];
}

- (void)advanceToNextState:(unint64_t)state withError:(id)error
{
  errorCopy = error;
  stateConfiguration = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
  [(PDCloudStoreContainer *)self setNextExpectedState:state];
  operationGroupNameSuffix = [stateConfiguration operationGroupNameSuffix];
  retryCount = [stateConfiguration retryCount];
  stateChangeCompletion = [stateConfiguration stateChangeCompletion];
  [(PDPassSyncCloudStoreContainer *)self _queue_processResultWithError:errorCopy nextExpectedState:state operationGroupNameSuffix:operationGroupNameSuffix retryCount:retryCount shouldRetry:0 completion:stateChangeCompletion];
}

- (void)passOnHandlingStateChange
{
  stateConfiguration = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
  currentState = [stateConfiguration currentState];
  operationGroupNameSuffix = [stateConfiguration operationGroupNameSuffix];
  retryCount = [stateConfiguration retryCount];
  stateChangeCompletion = [stateConfiguration stateChangeCompletion];
  v8.receiver = self;
  v8.super_class = PDPassSyncCloudStoreContainer;
  [(PDCloudStoreContainer *)&v8 _queue_setContainerState:currentState operationGroupNameSuffix:operationGroupNameSuffix retryCount:retryCount completion:stateChangeCompletion];
}

- (void)checkAccountState
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100085850;
  v2[3] = &unk_100840CC0;
  v2[4] = self;
  [(PDCloudStoreContainer *)self _queue_cloudStoreAccountInformationWithCompletion:v2];
}

- (void)prepareForSetup
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v13 = 138543362;
    v14 = logDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will prepare for setup", &v13, 0xCu);
  }

  if (PKIsCloudKitEnvironmentChangeHandlingDisabled())
  {
    v5 = [(PDCloudStoreContainer *)self errorWithCode:-4008 description:@"CK environment change handling disabled"];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  self->_isWalletDataclassEnabledOnPrimaryAppleAccount = sub_1000850C8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v7 = [NSNumber numberWithBool:self->_isWalletDataclassEnabledOnPrimaryAppleAccount];
    v13 = 138543618;
    v14 = logDescription2;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] wallet dataclass enbabled: %{public}@", &v13, 0x16u);
  }

  if (!self->_isWalletDataclassEnabledOnPrimaryAppleAccount)
  {
    v5 = [(PDCloudStoreContainer *)self errorWithCode:-4008 description:@"Wallet dataclass disabled"];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:
      logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v13 = 138543618;
      v14 = logDescription3;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] error preparing for setup: %{public}@", &v13, 0x16u);
    }

LABEL_18:

    [(PDCloudStoreContainer *)self setOperationError:v5];
    [(PDPassSyncCloudStoreContainer *)self advanceToNextState:3];

    return;
  }

  if (!self->_isReadOnly)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      logDescription4 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      dataSource = [(PDCloudStoreContainer *)self dataSource];
      v13 = 138543618;
      v14 = logDescription4;
      v15 = 2112;
      v16 = dataSource;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] asking %@ to preapre for syncing", &v13, 0x16u);
    }

    localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
    [localStore preapareForSyncingAndRegisterChanges:{-[PDPassSyncCloudStoreContainer isDeltaSyncPossible](self, "isDeltaSyncPossible")}];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logDescription5 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v13 = 138543362;
    v14 = logDescription5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did preapare for setup, advancing", &v13, 0xCu);
  }

  [(PDPassSyncCloudStoreContainer *)self passOnHandlingStateChange];
}

- (void)downloadCloudDataWithReason:(int64_t)reason
{
  if (reason > 4)
  {
    v5 = @"unkown reason";
  }

  else
  {
    v5 = off_100840FA8[reason];
  }

  os_unfair_lock_lock(&self->_lock);
  isDownloading = self->_isDownloading;
  os_unfair_lock_unlock(&self->_lock);
  if (![(PDPassSyncCloudStoreContainer *)self isWalletSyncEnabled])
  {
    v9 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      [(PDPassSyncCloudStoreContainer *)self abortDownloadOfCloudDataWithReason:reason];
      return;
    }

    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    isWalletDataclassEnabledOnPrimaryAppleAccount = self->_isWalletDataclassEnabledOnPrimaryAppleAccount;
    *buf = 138543874;
    v26 = logDescription;
    v27 = 1026;
    *v28 = isWalletDataclassEnabledOnPrimaryAppleAccount;
    *&v28[4] = 1026;
    *&v28[6] = PKCloudKitPassSyncEnabled();
    v12 = "[PDPassCloudStore(%{public}@)] wallet sync is disabled (%{public}d, %{public}d)";
    v13 = v9;
    v14 = 24;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);

    goto LABEL_12;
  }

  if (isDownloading)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543618;
      v26 = logDescription2;
      v27 = 2114;
      *v28 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] download of cloud data already in progress dropping: %{public}@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    self->_didDropDownload = 1;
    os_unfair_lock_unlock(&self->_lock);
    return;
  }

  if ([(PDPassSyncCloudStoreContainer *)self canSkipDownloadForReason:reason])
  {
    v9 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543618;
    v26 = logDescription;
    v27 = 2114;
    *v28 = v5;
    v12 = "[PDPassCloudStore(%{public}@)] skipping download of cloud data: %{public}@";
    v13 = v9;
    v14 = 22;
    goto LABEL_11;
  }

  v15 = objc_alloc_init(PDPassCloudStoreContainerContent);
  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543618;
    v26 = logDescription3;
    v27 = 2114;
    *v28 = v5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] starting of download of cloud data because of: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_isDownloading = 1;
  os_unfair_lock_unlock(&self->_lock);
  isDeltaSyncPossible = [(PDPassSyncCloudStoreContainer *)self isDeltaSyncPossible];
  passesZone = [(PDPassSyncCloudStoreContainer *)self passesZone];
  if (isDeltaSyncPossible)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086410;
    v23[3] = &unk_10083D690;
    v20 = v24;
    v23[4] = self;
    v24[0] = v15;
    v24[1] = reason;
    [(PDPassSyncCloudStoreContainer *)self doDeltaSyncOfZone:passesZone andFill:v15 completion:v23];
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100086454;
    v21[3] = &unk_10083D690;
    v20 = v22;
    v21[4] = self;
    v22[0] = v15;
    v22[1] = reason;
    [(PDPassSyncCloudStoreContainer *)self doFullSyncOfZone:passesZone andFill:v15 completion:v21];
  }
}

- (BOOL)isWalletSyncEnabled
{
  if (self->_isWalletDataclassEnabledOnPrimaryAppleAccount)
  {
    return PKCloudKitPassSyncEnabled();
  }

  else
  {
    return 0;
  }
}

- (BOOL)canSkipDownloadForReason:(int64_t)reason
{
  if (!self->_isReadOnly)
  {
    if (reason)
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
      {
        logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v15 = 138543362;
        v16 = logDescription;
        v8 = "[PDPassCloudStore(%{public}@)] cannot skip download because it not is initial";
LABEL_13:
        _os_log_impl(&_mh_execute_header, &v4->super, OS_LOG_TYPE_DEFAULT, v8, &v15, 0xCu);
      }
    }

    else if ([(PDPassSyncCloudStoreContainer *)self isDeltaSyncPossible])
    {
      os_unfair_lock_lock(&self->_lock);
      v4 = self->_lastDownloadDate;
      os_unfair_lock_unlock(&self->_lock);
      if (v4)
      {
        v9 = +[NSDate date];
        [v9 timeIntervalSinceDate:v4];
        v11 = v10;

        v6 = v11 < 10800.0;
        goto LABEL_15;
      }

      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v15 = 138543362;
        v16 = logDescription2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] cannot skip download because we've never synced", &v15, 0xCu);
      }
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
      {
        logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v15 = 138543362;
        v16 = logDescription;
        v8 = "[PDPassCloudStore(%{public}@)] cannot skip download because full sync is needed";
        goto LABEL_13;
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
  {
    logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v15 = 138543362;
    v16 = logDescription3;
    _os_log_impl(&_mh_execute_header, &v4->super, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] can skip download because readOnly flag is set", &v15, 0xCu);
  }

  v6 = 1;
LABEL_15:

  return v6;
}

- (BOOL)isDeltaSyncPossible
{
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  passesZone = [(PDPassSyncCloudStoreContainer *)self passesZone];
  v5 = [containerManager didFinishInitialSyncForCloudStoreZone:passesZone];

  return v5;
}

- (void)markEndOfDownload:(id)download
{
  downloadCopy = download;
  obj = +[NSDate date];
  errorEncounered = [downloadCopy errorEncounered];

  os_unfair_lock_lock(&self->_lock);
  self->_isDownloading = 0;
  if (errorEncounered)
  {
    objc_storeStrong(&self->_lastDownloadDate, self->_lastDownloadDate);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_lastDownloadDate, obj);
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration stringPrefixedWithContainerName:@"PDPassSyncCloudStoreContainerLastDownloadDateKey"];
    PKSharedCacheSetObjectForKey();
  }
}

- (void)prepareForDetachment
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v6 = 138543362;
    v7 = logDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] clearing state caused by detachment", &v6, 0xCu);
  }

  downloadedContents = self->_downloadedContents;
  self->_downloadedContents = 0;

  self->_didSuccessfullySyncAtLeastOnce = 0;
  os_unfair_lock_lock(&self->_lock);
  self->_didDropDownload = 0;
  self->_isDownloading = 0;
  os_unfair_lock_unlock(&self->_lock);
  self->_isWalletDataclassEnabledOnPrimaryAppleAccount = 0;
  self->_isReadOnly = 0;
  [(PDCloudStoreContainer *)self setAccountChangedNotificationReceived:0];
}

- (void)abortDownloadOfCloudDataWithReason:(int64_t)reason
{
  if (!reason)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v8 = logDescription;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] aborting initial download of cloud data gracefully", buf, 0xCu);
    }

    self->_didSuccessfullySyncAtLeastOnce = 1;
    [(PDPassSyncCloudStoreContainer *)self advanceToNextState:15 withError:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100086B44;
    v6[3] = &unk_10083DFE8;
    v6[4] = self;
    [(PDPassSyncCloudStoreContainer *)self processPendingChanges:v6];
  }
}

- (void)doDeltaSyncOfZone:(id)zone andFill:(id)fill completion:(id)completion
{
  zoneCopy = zone;
  fillCopy = fill;
  completionCopy = completion;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v22 = logDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will attempt to download records (delta-sync)", buf, 0xCu);
  }

  v13 = [(PDPassSyncCloudStoreContainer *)self requestForAllChangedRecordsInZone:zoneCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086E00;
  v17[3] = &unk_100840CE8;
  v17[4] = self;
  v18 = zoneCopy;
  v19 = fillCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = fillCopy;
  v16 = zoneCopy;
  [(PDCloudStoreContainer *)self executeRecordsRequest:v13 completion:v17];
}

- (void)doFullSyncOfZone:(id)zone andFill:(id)fill completion:(id)completion
{
  zoneCopy = zone;
  fillCopy = fill;
  completionCopy = completion;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v26 = logDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will attempt to download records (full-sync)", buf, 0xCu);
  }

  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v14 = [containerManager changeTokenForCloudStoreStore:zoneCopy];

  if (!v14)
  {
    localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
    [localStore prepareToSaveRemoteData];
  }

  v16 = [(PDPassSyncCloudStoreContainer *)self requestForAllRecordsInZone:zoneCopy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100087238;
  v23[3] = &unk_100840D10;
  v23[4] = self;
  v17 = fillCopy;
  v24 = v17;
  [v16 setBatchHandler:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000873F0;
  v20[3] = &unk_100840D38;
  v20[4] = self;
  v21 = v17;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = v17;
  [(PDCloudStoreContainer *)self executeRecordsRequest:v16 completion:v20];
}

- (void)finishDownloadOfCloudDataWithContents:(id)contents forReason:(int64_t)reason
{
  if (reason)
  {
    [(PDPassSyncCloudStoreContainer *)self finishRegularDownloadOfCloudDataWithContents:contents];
  }

  else
  {
    [(PDPassSyncCloudStoreContainer *)self finishInitialDownloadOfCloudDataWithContents:contents];
  }
}

- (void)finishInitialDownloadOfCloudDataWithContents:(id)contents
{
  contentsCopy = contents;
  errorEncounered = [contentsCopy errorEncounered];

  p_super = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (errorEncounered)
  {
    if (v7)
    {
      logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      errorEncounered2 = [contentsCopy errorEncounered];
      v14 = 138543618;
      v15 = logDescription;
      v16 = 2114;
      v17 = errorEncounered2;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] error initially downloading cloud data: %{public}@", &v14, 0x16u);
    }

    v10 = 3;
  }

  else
  {
    if (v7)
    {
      logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v14 = 138543362;
      v15 = logDescription2;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] initial download of cloud data did finish", &v14, 0xCu);
    }

    self->_didSuccessfullySyncAtLeastOnce = 1;
    v12 = contentsCopy;
    p_super = &self->_downloadedContents->super;
    self->_downloadedContents = v12;
    v10 = 14;
  }

  errorEncounered3 = [contentsCopy errorEncounered];
  [(PDPassSyncCloudStoreContainer *)self advanceToNextState:v10 withError:errorEncounered3];
}

- (void)finishRegularDownloadOfCloudDataWithContents:(id)contents
{
  contentsCopy = contents;
  errorEncounered = [contentsCopy errorEncounered];

  if (errorEncounered)
  {
    localStore = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(localStore, OS_LOG_TYPE_DEFAULT))
    {
      logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      errorEncounered2 = [contentsCopy errorEncounered];
      *buf = 138543618;
      v17 = logDescription;
      v18 = 2114;
      v19 = errorEncounered2;
      _os_log_impl(&_mh_execute_header, localStore, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] error downloading cloud data: %{public}@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  self->_didSuccessfullySyncAtLeastOnce = 1;
  typeOfSyncPerformed = [contentsCopy typeOfSyncPerformed];
  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!typeOfSyncPerformed)
  {
    if (v11)
    {
      logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v17 = logDescription2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will upload local data after download (full-sync)", buf, 0xCu);
    }

    localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000879B4;
    v15[3] = &unk_10083DFE8;
    v15[4] = self;
    [localStore saveLocalDataInContainer:contentsCopy completion:v15];
    goto LABEL_11;
  }

  if (v11)
  {
    logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v17 = logDescription3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will upload local data after download (delta-sync)", buf, 0xCu);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100087B48;
  v14[3] = &unk_10083DFE8;
  v14[4] = self;
  [(PDPassSyncCloudStoreContainer *)self processPendingChanges:v14];
LABEL_12:
}

- (void)uploadLocalDataToCloud
{
  v3 = self->_downloadedContents;
  v4 = v3;
  if (v3)
  {
    typeOfSyncPerformed = [(PDPassCloudStoreContainerContent *)v3 typeOfSyncPerformed];
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (typeOfSyncPerformed)
    {
      if (v7)
      {
        logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        *buf = 138543362;
        v17 = logDescription;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will upload local data after download (delta-sync)", buf, 0xCu);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100088164;
      v14[3] = &unk_10083DFE8;
      v14[4] = self;
      [(PDPassSyncCloudStoreContainer *)self processPendingChanges:v14];
    }

    else
    {
      if (v7)
      {
        logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        *buf = 138543362;
        v17 = logDescription2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will upload local data after download (full-sync)", buf, 0xCu);
      }

      localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100087FC0;
      v15[3] = &unk_10083DFE8;
      v15[4] = self;
      [localStore saveLocalDataInContainer:v4 completion:v15];
    }

    downloadedContents = self->_downloadedContents;
    self->_downloadedContents = 0;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logDescription3 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v17 = logDescription3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did not find contents to use, advancing.", buf, 0xCu);
    }

    [(PDPassSyncCloudStoreContainer *)self advanceToNextState:15 withError:0];
  }
}

- (void)processPendingChanges:(id)changes
{
  changesCopy = changes;
  if (self->_isReadOnly)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v8 = 138543362;
      v9 = logDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] won't process pending changes because container is readonly", &v8, 0xCu);
    }

    if (changesCopy)
    {
      changesCopy[2](changesCopy, 1, 0);
    }
  }

  else
  {
    localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
    [localStore processPendingChanges:changesCopy];
  }
}

- (id)requestForAllRecordsInZone:(id)zone
{
  zoneCopy = zone;
  allRecordsRequest = [(PDPassSyncCloudStoreContainer *)self allRecordsRequest];
  [allRecordsRequest setUseLastChangeToken:1];
  [allRecordsRequest setShouldSaveToken:1];
  [allRecordsRequest setStoreChangesInDatabase:0];
  [allRecordsRequest setIgnoreChangesMadeByThisDevice:0];
  [allRecordsRequest setBatchLimit:25];
  [allRecordsRequest setCloudStoreZone:zoneCopy];

  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v7 = [containerManager databaseForScope:2];
  [allRecordsRequest setContainerDatabase:v7];

  return allRecordsRequest;
}

- (id)requestForAllChangedRecordsInZone:(id)zone
{
  zoneCopy = zone;
  changesRecordsRequest = [(PDPassSyncCloudStoreContainer *)self changesRecordsRequest];
  [changesRecordsRequest setUseLastChangeToken:1];
  [changesRecordsRequest setShouldSaveToken:1];
  [changesRecordsRequest setStoreChangesInDatabase:1];
  [changesRecordsRequest setIgnoreChangesMadeByThisDevice:1];
  [changesRecordsRequest setBatchLimit:25];
  [changesRecordsRequest setCloudStoreZone:zoneCopy];

  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v7 = [containerManager databaseForScope:2];
  [changesRecordsRequest setContainerDatabase:v7];

  return changesRecordsRequest;
}

- (id)allRecordsRequest
{
  v2 = [PDCloudStoreRecordsRequest alloc];
  v3 = [(PDCloudStoreRecordsRequest *)v2 initWithRequestType:1 storeChanges:0 returnRecords:1 qualityOfService:17 groupName:PKCloudStoreOperationGroupInitialDownload groupNameSuffix:PKCloudStoreOperationGroupSuffixPKPassdStartup];

  return v3;
}

- (id)changesRecordsRequest
{
  v2 = [PDCloudStoreRecordsRequest alloc];
  v3 = [(PDCloudStoreRecordsRequest *)v2 initWithRequestType:0 storeChanges:1 returnRecords:1 qualityOfService:17 groupName:PKCloudStoreOperationGroupInitialDownload groupNameSuffix:PKCloudStoreOperationGroupSuffixPKPassdStartup];

  return v3;
}

- (BOOL)didEncounterChangeTokenExpiredError:(id)error
{
  if (!error)
  {
    return 0;
  }

  errorCopy = error;
  v4 = [[PKCloudStoreError alloc] initWithError:errorCopy];

  LOBYTE(errorCopy) = [v4 isChangeTokenExpired];
  return errorCopy;
}

- (void)moveItemsFromResponse:(id)response duringDeltaSync:(BOOL)sync orError:(id)error toContents:(id)contents
{
  syncCopy = sync;
  responseCopy = response;
  errorCopy = error;
  contentsCopy = contents;
  [contentsCopy noteTypeOfSyncPerformed:syncCopy];
  if (errorCopy)
  {
    [contentsCopy noteEnounteredError:errorCopy];
  }

  else
  {
    selfCopy = self;
    v24 = responseCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    cloudStoreRecords = [responseCopy cloudStoreRecords];
    allItems = [cloudStoreRecords allItems];

    v15 = [allItems countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(allItems);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [contentsCopy appendPass:v19];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              v22 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                logDescription = [(PDCloudStoreContainerConfiguration *)selfCopy->_configuration logDescription];
                *buf = 138543618;
                v31 = logDescription;
                v32 = 2114;
                v33 = v21;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] skipping item we can't handle %{public}@", buf, 0x16u);
              }
            }
          }
        }

        v16 = [allItems countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    errorCopy = 0;
    responseCopy = v24;
  }
}

- (void)moveItemsFromBatchContents:(id)contents toFinalContents:(id)finalContents
{
  finalContentsCopy = finalContents;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cloudPasses = [contents cloudPasses];
  v7 = [cloudPasses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(cloudPasses);
        }

        [finalContentsCopy appendPassID:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [cloudPasses countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)retryExecutingAnyDroppedDownload
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100088AFC;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (void)onWorkQueue:(id)queue
{
  queueCopy = queue;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  dispatch_async(workQueue, queueCopy);
}

- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)identifier deletedRecordsByDatabaseIdentifier:(id)databaseIdentifier carriedOverRecordsByDatabaseIdentifier:(id)byDatabaseIdentifier conflictingRecordsByDatabaseIdentifier:(id)recordsByDatabaseIdentifier request:(id)request completion:(id)completion
{
  identifierCopy = identifier;
  databaseIdentifierCopy = databaseIdentifier;
  recordsByDatabaseIdentifierCopy = recordsByDatabaseIdentifier;
  completionCopy = completion;
  requestCopy = request;
  PDCloudStoreRecordsRequestTypeToString([requestCopy requestType]);
  v32 = v31 = identifierCopy;
  v18 = [identifierCopy objectForKeyedSubscript:@"Private"];
  v19 = [v18 count];

  v20 = [databaseIdentifierCopy objectForKeyedSubscript:@"Private"];
  v21 = [v20 count];

  v22 = [recordsByDatabaseIdentifierCopy objectForKeyedSubscript:@"Private"];
  v23 = [v22 count];

  v24 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138544386;
    v34 = logDescription;
    v35 = 2050;
    v36 = v19;
    v37 = 2050;
    v38 = v21;
    v39 = 2050;
    v40 = v23;
    v41 = 2114;
    v42 = v32;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] received a batch of updates:%{public}lu deletes:%{public}lu and conflicts:%{public}lu from request %{public}@", buf, 0x34u);
  }

  localStore = [(PDPassSyncCloudStoreContainer *)self localStore];
  v27 = [localStore reflectRemoteUpdates:v31 perRequest:requestCopy];

  localStore2 = [(PDPassSyncCloudStoreContainer *)self localStore];
  [localStore2 reflectRemoteDeletes:databaseIdentifierCopy perRequest:requestCopy];

  localStore3 = [(PDPassSyncCloudStoreContainer *)self localStore];
  v30 = [localStore3 convertConflicts:recordsByDatabaseIdentifierCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v27, 0, v30);
  }
}

- (void)updateCloudPasses:(id)passes completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100088FAC;
  v8[3] = &unk_10083F418;
  passesCopy = passes;
  completionCopy = completion;
  v8[4] = self;
  v6 = passesCopy;
  v7 = completionCopy;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v8];
}

- (void)removeCloudPassesWithLocalUniqueIDs:(id)ds completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089418;
  v8[3] = &unk_10083F418;
  dsCopy = ds;
  completionCopy = completion;
  v8[4] = self;
  v6 = dsCopy;
  v7 = completionCopy;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v8];
}

- (id)cloudPassIDForLocalUniqueID:(id)d inDatabase:(id)database
{
  dCopy = d;
  databaseCopy = database;
  if ([dCopy length])
  {
    v8 = [(PDPassSyncCloudStoreContainer *)self cloudStoreZonesForItemType:2 configuration:0 action:3 inContainerDatabase:databaseCopy];
    v9 = [PKPass recordNameForUniqueID:dCopy];
    anyObject = [v8 anyObject];
    recordZone = [anyObject recordZone];
    zoneID = [recordZone zoneID];

    if (v9 && zoneID)
    {
      v13 = [[CKRecordID alloc] initWithRecordName:v9 zoneID:zoneID];
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v18 = 138543362;
        v19 = logDescription;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] could not generate cloud pass ID", &v18, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v18 = 138543362;
      v19 = logDescription2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] could not generate cloud pass ID given no local ID", &v18, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (void)performDeletes:(id)deletes completion:(id)completion
{
  completionCopy = completion;
  v7 = PKCloudStoreOperationGroupUserActionExplicit;
  v8 = PKCloudStoreOperationGroupSuffixPassRemoved;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089BB0;
  v10[3] = &unk_100840E30;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PDCloudStoreContainer *)self modifyRecordsOperationWithRecordsToSaveByDatabaseIdentifier:0 recordIDsToDeleteByDatabaseIdentifier:deletes recordModificationOperationConfiguration:0 emitErrorIfConflictDetected:0 isModifyingShare:0 operationGroupName:v7 operationGroupNameSuffix:v8 qualityOfService:17 completion:v10];
}

- (void)updateCloudCatalog:(id)catalog completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089EAC;
  v8[3] = &unk_10083F418;
  catalogCopy = catalog;
  completionCopy = completion;
  v8[4] = self;
  v6 = catalogCopy;
  v7 = completionCopy;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v8];
}

- (void)deleteCloudSyncRelatedInformation
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008A300;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (BOOL)isBusy
{
  os_unfair_lock_lock(&self->_lock);
  nextExpectedState = [(PDCloudStoreContainer *)self nextExpectedState];
  isDownloading = self->_isDownloading;
  os_unfair_lock_unlock(&self->_lock);
  if (nextExpectedState == 1)
  {
    return 0;
  }

  if (nextExpectedState == 15)
  {
    return isDownloading;
  }

  return 1;
}

- (void)_queue_cloudStoreAccountChanged:(id)changed
{
  if (PKIsCloudKitEnvironmentChangeHandlingDisabled())
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v11 = logDescription;
      v6 = "[PDPassCloudStore(%{public}@)] CKAccountChangedNotification disabled";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ([(PDCloudStoreContainer *)self cloudContainerSetupInProgress]|| [(PDCloudStoreContainer *)self accountChangedNotificationReceived])
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      logDescription = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v11 = logDescription;
      v6 = "[PDPassCloudStore(%{public}@)] CKAccountChangedNotification ignored";
      goto LABEL_8;
    }

LABEL_9:

    return;
  }

  [(PDCloudStoreContainer *)self setAccountChangedNotificationReceived:1];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logDescription2 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v11 = logDescription2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] received CKAccountChangedNotification", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A628;
  v9[3] = &unk_100840CC0;
  v9[4] = self;
  [(PDCloudStoreContainer *)self _queue_cloudStoreAccountInformationWithCompletion:v9];
}

- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)configurations groupName:(id)name groupNameSuffix:(id)suffix qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  suffixCopy = suffix;
  nameCopy = name;
  v15 = [(PDPassSyncCloudStoreContainer *)self sanitizeItems:configurations];
  v16.receiver = self;
  v16.super_class = PDPassSyncCloudStoreContainer;
  [(PDCloudStoreContainer *)&v16 updateCloudStoreWithLocalItemsWithConfigurations:v15 groupName:nameCopy groupNameSuffix:suffixCopy qualityOfService:service completion:completionCopy];
}

- (id)recordTypesForCloudStoreItemType:(unint64_t)type
{
  if (type == 3)
  {
    v6 = PKCloudPassCatalogRecordType;
    v3 = &v6;
    goto LABEL_5;
  }

  if (type == 2)
  {
    v7 = PKCloudPassRecordType;
    v3 = &v7;
LABEL_5:
    v4 = [NSArray arrayWithObjects:v3 count:1];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (unint64_t)cloudStoreItemTypeForRecordType:(id)type
{
  typeCopy = type;
  v4 = PKCloudPassRecordType;
  v5 = typeCopy;
  v6 = v5;
  if (v4 == v5)
  {

    goto LABEL_7;
  }

  if (v5 && v4)
  {
    v7 = [v5 isEqualToString:v4];

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 2;
    goto LABEL_18;
  }

LABEL_9:
  v9 = PKCloudPassCatalogRecordType;
  v10 = v6;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v6 || !v9)
    {

LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    v12 = [v10 isEqualToString:v9];

    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v8 = 3;
LABEL_18:

  return v8;
}

- (id)identifierFromRecord:(id)record
{
  recordID = [record recordID];
  recordName = [recordID recordName];

  v5 = [recordName rangeOfString:@"-"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [recordName stringByReplacingCharactersInRange:0 withString:{v5 + 1, &stru_10086D930}];

    recordName = v6;
  }

  return recordName;
}

- (id)recordTypeFromRecordName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PDPassSyncCloudStoreContainer;
  v5 = [(PDCloudStoreContainer *)&v14 recordTypeFromRecordName:nameCopy];
  v6 = v5;
  if (v5)
  {
    goto LABEL_7;
  }

  v7 = +[PKPass recordNamePrefix];
  v8 = [nameCopy hasPrefix:v7];

  if (v8)
  {
    v9 = &PKCloudPassRecordType;
LABEL_6:
    v6 = *v9;
LABEL_7:
    v12 = v6;
    goto LABEL_8;
  }

  v10 = +[PKCatalog recordNamePrefix];
  v11 = [nameCopy hasPrefix:v10];

  if (v11)
  {
    v9 = &PKCloudPassCatalogRecordType;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)allPossibleZoneNamesForContainerDatabase:(id)database
{
  if ([database scope] == 2)
  {
    v3 = [NSSet setWithObject:PKCloudStorePassesZoneName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)database
{
  databaseCopy = database;
  if ([databaseCopy scope] == 2)
  {
    v5 = [databaseCopy zoneForZoneName:PKCloudStorePassesZoneName];
    v6 = [(PDPassSyncCloudStoreContainer *)self subscriptionForZone:v5 inContainerDatabase:databaseCopy];

    if (v6)
    {
      [NSSet setWithObject:v6];
    }

    else
    {
      +[NSSet set];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subscriptionForZone:(id)zone inContainerDatabase:(id)database
{
  zoneCopy = zone;
  if ([database scope] != 2)
  {
    goto LABEL_6;
  }

  zoneID = [zoneCopy zoneID];
  zoneName = [zoneID zoneName];
  v8 = PKCloudStorePassesZoneName;
  v9 = zoneName;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (!v9 || !v8)
    {

      v12 = 0;
      goto LABEL_10;
    }

    v11 = [v9 isEqualToString:v8];

    if ((v11 & 1) == 0)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_11;
    }
  }

  v13 = [CKRecordZoneSubscription alloc];
  zoneID = [zoneCopy zoneID];
  v12 = [v13 initWithZoneID:zoneID subscriptionID:PKCloudStorePassesZoneSubscriptionID];
LABEL_10:

LABEL_11:

  return v12;
}

- (id)zoneIDForSubscription:(id)subscription inContainerDatabase:(id)database
{
  subscriptionCopy = subscription;
  databaseCopy = database;
  if ([databaseCopy scope] != 2)
  {
    goto LABEL_6;
  }

  subscriptionID = [subscriptionCopy subscriptionID];
  v8 = PKCloudStorePassesZoneSubscriptionID;
  v9 = subscriptionID;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (!v9 || !v8)
    {

      zoneID = 0;
      goto LABEL_10;
    }

    v11 = [v9 isEqualToString:v8];

    if (!v11)
    {
LABEL_6:
      zoneID = 0;
      goto LABEL_11;
    }
  }

  v10 = [databaseCopy zoneForZoneName:PKCloudStorePassesZoneName];
  zoneID = [v10 zoneID];
LABEL_10:

LABEL_11:

  return zoneID;
}

- (id)cloudStoreZonesForItem:(id)item action:(unint64_t)action inContainerDatabase:(id)database
{
  databaseCopy = database;
  v9 = -[PDPassSyncCloudStoreContainer cloudStoreZonesForItemType:configuration:action:inContainerDatabase:](self, "cloudStoreZonesForItemType:configuration:action:inContainerDatabase:", [item itemType], 0, action, databaseCopy);

  return v9;
}

- (id)cloudStoreZonesForItemType:(unint64_t)type configuration:(id)configuration action:(unint64_t)action inContainerDatabase:(id)database
{
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    databaseCopy = database;
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    v9 = [containerManager cloudStoreZoneForZoneName:PKCloudStorePassesZoneName inContainerDatabase:databaseCopy];

    if (v9)
    {
      v10 = [NSSet setWithObject:v9];
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

  return v10;
}

- (id)passesZone
{
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v4 = [containerManager databaseForScope:2];

  containerManager2 = [(PDCloudStoreContainer *)self containerManager];
  v6 = [containerManager2 cloudStoreZoneForZoneName:PKCloudStorePassesZoneName inContainerDatabase:v4];

  return v6;
}

- (void)fetchDiagnosticInformation:(id)information
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008B4BC;
  v4[3] = &unk_10083DCB8;
  selfCopy = self;
  informationCopy = information;
  v3 = informationCopy;
  [(PDPassSyncCloudStoreContainer *)selfCopy onWorkQueue:v4];
}

- (void)clearSyncToken
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008B714;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (void)resetMigration
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008B900;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (void)clearChangeHistory
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008BA20;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (void)processChangeHistory
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008BAD0;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (void)resetContents
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008BB48;
  v2[3] = &unk_10083C470;
  v2[4] = self;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v2];
}

- (id)stateDescription
{
  nextExpectedState = [(PDCloudStoreContainer *)self nextExpectedState];

  return PDCloudStoreContainerStateToUserString(nextExpectedState);
}

- (id)lastSyncDateDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastDownloadDate;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = [v4 stringFromDate:v3];
  }

  else
  {
    v5 = @"N/A";
  }

  return v5;
}

- (id)syncTokenDescription
{
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  passesZone = [(PDPassSyncCloudStoreContainer *)self passesZone];
  v5 = [containerManager changeTokenForCloudStoreStore:passesZone];

  data = [v5 data];
  v7 = [data length];

  if (v7)
  {
    data2 = [v5 data];
    hexEncoding = [data2 hexEncoding];

    if ([hexEncoding length] > 0x15)
    {
      v11 = [hexEncoding substringToIndex:11];
      v12 = [hexEncoding substringFromIndex:{objc_msgSend(hexEncoding, "length") - 11}];
      v10 = [NSString stringWithFormat:@"%@..%@", v11, v12];
    }

    else
    {
      v10 = hexEncoding;
    }
  }

  else
  {
    v10 = @"N/A";
  }

  return v10;
}

- (void)fetchDiagnosticSnapshot:(id)snapshot
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BED4;
  v4[3] = &unk_10083DCB8;
  selfCopy = self;
  snapshotCopy = snapshot;
  v3 = snapshotCopy;
  [(PDPassSyncCloudStoreContainer *)selfCopy onWorkQueue:v4];
}

- (PDCardCloudManagerLocalStore)localStore
{
  WeakRetained = objc_loadWeakRetained(&self->_localStore);

  return WeakRetained;
}

@end