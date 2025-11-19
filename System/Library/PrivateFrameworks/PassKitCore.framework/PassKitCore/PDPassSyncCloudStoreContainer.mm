@interface PDPassSyncCloudStoreContainer
- (BOOL)canSkipDownloadForReason:(int64_t)a3;
- (BOOL)didEncounterChangeTokenExpiredError:(id)a3;
- (BOOL)ensureSyncPreconditionsAreMet;
- (BOOL)isBusy;
- (BOOL)isDeltaSyncPossible;
- (BOOL)isWalletSyncEnabled;
- (NSString)identifier;
- (PDCardCloudManagerLocalStore)localStore;
- (PDPassSyncCloudStoreContainer)initWithConfiguration:(id)a3;
- (id)allPossibleZoneNamesForContainerDatabase:(id)a3;
- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)a3;
- (id)allRecordsRequest;
- (id)changesRecordsRequest;
- (id)cloudPassIDForLocalUniqueID:(id)a3 inDatabase:(id)a4;
- (id)cloudStoreZonesForItem:(id)a3 action:(unint64_t)a4 inContainerDatabase:(id)a5;
- (id)cloudStoreZonesForItemType:(unint64_t)a3 configuration:(id)a4 action:(unint64_t)a5 inContainerDatabase:(id)a6;
- (id)identifierFromRecord:(id)a3;
- (id)lastSyncDateDescription;
- (id)passesZone;
- (id)recordTypeFromRecordName:(id)a3;
- (id)recordTypesForCloudStoreItemType:(unint64_t)a3;
- (id)requestForAllChangedRecordsInZone:(id)a3;
- (id)requestForAllRecordsInZone:(id)a3;
- (id)stateDescription;
- (id)subscriptionForZone:(id)a3 inContainerDatabase:(id)a4;
- (id)syncTokenDescription;
- (id)zoneIDForSubscription:(id)a3 inContainerDatabase:(id)a4;
- (unint64_t)cloudStoreItemTypeForRecordType:(id)a3;
- (void)_queue_cloudStoreAccountChanged:(id)a3;
- (void)_queue_processResultWithError:(id)a3 nextExpectedState:(unint64_t)a4 operationGroupNameSuffix:(id)a5 retryCount:(unint64_t)a6 shouldRetry:(BOOL)a7 completion:(id)a8;
- (void)_queue_setContainerState:(unint64_t)a3 operationGroupNameSuffix:(id)a4 retryCount:(unint64_t)a5 completion:(id)a6;
- (void)abortDownloadOfCloudDataWithReason:(int64_t)a3;
- (void)advanceToNextState:(unint64_t)a3;
- (void)advanceToNextState:(unint64_t)a3 withError:(id)a4;
- (void)checkAccountState;
- (void)clearChangeHistory;
- (void)clearSyncToken;
- (void)deleteCloudSyncRelatedInformation;
- (void)doDeltaSyncOfZone:(id)a3 andFill:(id)a4 completion:(id)a5;
- (void)doFullSyncOfZone:(id)a3 andFill:(id)a4 completion:(id)a5;
- (void)downloadCloudDataWithReason:(int64_t)a3;
- (void)fetchDiagnosticInformation:(id)a3;
- (void)fetchDiagnosticSnapshot:(id)a3;
- (void)finishDownloadOfCloudDataWithContents:(id)a3 forReason:(int64_t)a4;
- (void)finishInitialDownloadOfCloudDataWithContents:(id)a3;
- (void)finishInvalidStateChange;
- (void)finishRegularDownloadOfCloudDataWithContents:(id)a3;
- (void)markEndOfDownload:(id)a3;
- (void)moveItemsFromBatchContents:(id)a3 toFinalContents:(id)a4;
- (void)moveItemsFromResponse:(id)a3 duringDeltaSync:(BOOL)a4 orError:(id)a5 toContents:(id)a6;
- (void)onWorkQueue:(id)a3;
- (void)passOnHandlingStateChange;
- (void)performDeletes:(id)a3 completion:(id)a4;
- (void)prepareForDetachment;
- (void)prepareForSetup;
- (void)processChangeHistory;
- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)a3 deletedRecordsByDatabaseIdentifier:(id)a4 carriedOverRecordsByDatabaseIdentifier:(id)a5 conflictingRecordsByDatabaseIdentifier:(id)a6 request:(id)a7 completion:(id)a8;
- (void)processPendingChanges:(id)a3;
- (void)processPendingChangesWithReason:(int64_t)a3;
- (void)reload;
- (void)removeCloudPassesWithLocalUniqueIDs:(id)a3 completion:(id)a4;
- (void)resetContents;
- (void)resetMigration;
- (void)retryExecutingAnyDroppedDownload;
- (void)synchronizeWithReason:(int64_t)a3;
- (void)updateCloudCatalog:(id)a3 completion:(id)a4;
- (void)updateCloudPasses:(id)a3 completion:(id)a4;
- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)a3 groupName:(id)a4 groupNameSuffix:(id)a5 qualityOfService:(int64_t)a6 completion:(id)a7;
- (void)uploadLocalDataToCloud;
@end

@implementation PDPassSyncCloudStoreContainer

- (PDPassSyncCloudStoreContainer)initWithConfiguration:(id)a3
{
  v5 = a3;
  [v5 setContainerDatabaseDataSource:self];
  v12.receiver = self;
  v12.super_class = PDPassSyncCloudStoreContainer;
  v6 = [(PDCloudStoreContainer *)&v12 initWithConfiguration:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
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
  v2 = [(PDCloudStoreContainer *)self containerManager];
  v3 = [v2 container];
  v4 = [v3 containerIdentifier];

  return v4;
}

- (void)synchronizeWithReason:(int64_t)a3
{
  if (PKCloudKitPassSyncEnabled())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000843A4;
    v5[3] = &unk_10083D700;
    v5[4] = self;
    v5[5] = a3;
    [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v5];
  }
}

- (void)processPendingChangesWithReason:(int64_t)a3
{
  if (PKCloudKitPassSyncEnabled())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100084658;
    v5[3] = &unk_10083D700;
    v5[4] = self;
    v5[5] = a3;
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
    v4 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v24 = 138543362;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] checking sync preconditions", &v24, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  isDownloading = self->_isDownloading;
  os_unfair_lock_unlock(&self->_lock);
  if (![(PDCloudStoreContainer *)self isSetup]&& [(PDCloudStoreContainer *)self nextExpectedState]!= 14)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] not is set up", &v24, 0xCu);
    }

    if ([(PDCloudStoreContainer *)self cloudContainerSetupInProgress])
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = v6;
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
        v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = v6;
        v7 = "[PDPassCloudStore(%{public}@)] looks like container is not set up because wallet dataclass is not enabled";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if (v17)
    {
      v18 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] setting up container", &v24, 0xCu);
    }

    v19 = [(PDCloudStoreContainer *)self delegate];
    v3 = v19;
    v20 = self;
    v21 = 0;
    goto LABEL_42;
  }

  if (![(PDPassSyncCloudStoreContainer *)self isWalletSyncEnabled])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] wallet sync was disabled - checking again", &v24, 0xCu);
    }

    if ((PKCloudKitPassSyncEnabled() & 1) == 0)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = v6;
        v7 = "[PDPassCloudStore(%{public}@)] sync swich is still disabled";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if ((sub_1000850C8() & 1) == 0)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = v6;
        v7 = "[PDPassCloudStore(%{public}@)] wallet dataclass is still disabled ";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    v9 = [(PDCloudStoreContainer *)self cloudContainerSetupInProgress];
    v10 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v10)
      {
        v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v24 = 138543362;
        v25 = v6;
        v7 = "[PDPassCloudStore(%{public}@)] wallet dataclass is now enabled - container already being set up";
        goto LABEL_38;
      }

LABEL_43:

      return 0;
    }

    if (v10)
    {
      v23 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] wallet dataclass is now enabled - setting up again", &v24, 0xCu);
    }

    v19 = [(PDCloudStoreContainer *)self delegate];
    v3 = v19;
    v20 = self;
    v21 = 1;
LABEL_42:
    [v19 cloudStoreContainer:v20 reinitializeContainerAndInvalidateFirst:v21];
    goto LABEL_43;
  }

  if (isDownloading)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = v6;
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
      v22 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] container never synced - tryng to download first", &v24, 0xCu);
    }

    [(PDPassSyncCloudStoreContainer *)self downloadCloudDataWithReason:3];
    return 0;
  }

  if (v13)
  {
    v14 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v24 = 138543362;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] sync preconditions are met", &v24, 0xCu);
  }

  return 1;
}

- (void)_queue_setContainerState:(unint64_t)a3 operationGroupNameSuffix:(id)a4 retryCount:(unint64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = objc_alloc_init(PDCloudStoreStateConfiguration);
  [(PDCloudStoreStateConfiguration *)v12 setCurrentState:a3];
  [(PDCloudStoreStateConfiguration *)v12 setOperationGroupNameSuffix:v11];

  [(PDCloudStoreStateConfiguration *)v12 setRetryCount:a5];
  [(PDCloudStoreStateConfiguration *)v12 setStateChangeCompletion:v10];

  [(PDPassSyncCloudStoreContainer *)self setStateConfiguration:v12];
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v15 = 138543618;
    v16 = v14;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] state will advance to %{public}@", &v15, 0x16u);
  }

  if ([(PDCloudStoreContainer *)self _queue_ensureContainerState:a3])
  {
    if (a3 > 4)
    {
      switch(a3)
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

    else if (a3 - 2 >= 2)
    {
      if (a3 == 4)
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

- (void)_queue_processResultWithError:(id)a3 nextExpectedState:(unint64_t)a4 operationGroupNameSuffix:(id)a5 retryCount:(unint64_t)a6 shouldRetry:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = [[PKCloudStoreError alloc] initWithError:v14];
  if (([v17 isUnrecoverableDecryptionError] & 1) != 0 || objc_msgSend(v17, "isZoneNotFoundError"))
  {
    v18 = [(PDPassSyncCloudStoreContainer *)self localStore];
    [v18 resetMigration];
  }

  v19.receiver = self;
  v19.super_class = PDPassSyncCloudStoreContainer;
  [(PDCloudStoreContainer *)&v19 _queue_processResultWithError:v14 nextExpectedState:a4 operationGroupNameSuffix:v15 retryCount:a6 shouldRetry:v9 completion:v16];
}

- (void)finishInvalidStateChange
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v5 = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] encountered invalid state configuration %{public}@", &v9, 0x16u);
  }

  v6 = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  v7 = [v6 stateChangeCompletion];

  if (v7)
  {
    v8 = [(PDPassSyncCloudStoreContainer *)self invalidCloudStoreStateChangeError];
    (v7)[2](v7, 0, v8);
  }

  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
}

- (void)advanceToNextState:(unint64_t)a3
{
  v8 = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
  [(PDCloudStoreContainer *)self setNextExpectedState:a3];
  v5 = [v8 operationGroupNameSuffix];
  v6 = [v8 retryCount];
  v7 = [v8 stateChangeCompletion];
  [(PDPassSyncCloudStoreContainer *)self _queue_setContainerState:a3 operationGroupNameSuffix:v5 retryCount:v6 completion:v7];
}

- (void)advanceToNextState:(unint64_t)a3 withError:(id)a4
{
  v6 = a4;
  v10 = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
  [(PDCloudStoreContainer *)self setNextExpectedState:a3];
  v7 = [v10 operationGroupNameSuffix];
  v8 = [v10 retryCount];
  v9 = [v10 stateChangeCompletion];
  [(PDPassSyncCloudStoreContainer *)self _queue_processResultWithError:v6 nextExpectedState:a3 operationGroupNameSuffix:v7 retryCount:v8 shouldRetry:0 completion:v9];
}

- (void)passOnHandlingStateChange
{
  v3 = [(PDPassSyncCloudStoreContainer *)self stateConfiguration];
  [(PDPassSyncCloudStoreContainer *)self eraseStateConfiguration];
  v4 = [v3 currentState];
  v5 = [v3 operationGroupNameSuffix];
  v6 = [v3 retryCount];
  v7 = [v3 stateChangeCompletion];
  v8.receiver = self;
  v8.super_class = PDPassSyncCloudStoreContainer;
  [(PDCloudStoreContainer *)&v8 _queue_setContainerState:v4 operationGroupNameSuffix:v5 retryCount:v6 completion:v7];
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
    v4 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v13 = 138543362;
    v14 = v4;
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
    v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v7 = [NSNumber numberWithBool:self->_isWalletDataclassEnabledOnPrimaryAppleAccount];
    v13 = 138543618;
    v14 = v6;
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
      v12 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v13 = 138543618;
      v14 = v12;
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
      v8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v9 = [(PDCloudStoreContainer *)self dataSource];
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] asking %@ to preapre for syncing", &v13, 0x16u);
    }

    v10 = [(PDPassSyncCloudStoreContainer *)self localStore];
    [v10 preapareForSyncingAndRegisterChanges:{-[PDPassSyncCloudStoreContainer isDeltaSyncPossible](self, "isDeltaSyncPossible")}];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did preapare for setup, advancing", &v13, 0xCu);
  }

  [(PDPassSyncCloudStoreContainer *)self passOnHandlingStateChange];
}

- (void)downloadCloudDataWithReason:(int64_t)a3
{
  if (a3 > 4)
  {
    v5 = @"unkown reason";
  }

  else
  {
    v5 = off_100840FA8[a3];
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

      [(PDPassSyncCloudStoreContainer *)self abortDownloadOfCloudDataWithReason:a3];
      return;
    }

    v10 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    isWalletDataclassEnabledOnPrimaryAppleAccount = self->_isWalletDataclassEnabledOnPrimaryAppleAccount;
    *buf = 138543874;
    v26 = v10;
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
      v8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543618;
      v26 = v8;
      v27 = 2114;
      *v28 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] download of cloud data already in progress dropping: %{public}@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    self->_didDropDownload = 1;
    os_unfair_lock_unlock(&self->_lock);
    return;
  }

  if ([(PDPassSyncCloudStoreContainer *)self canSkipDownloadForReason:a3])
  {
    v9 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543618;
    v26 = v10;
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
    v17 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543618;
    v26 = v17;
    v27 = 2114;
    *v28 = v5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] starting of download of cloud data because of: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_isDownloading = 1;
  os_unfair_lock_unlock(&self->_lock);
  v18 = [(PDPassSyncCloudStoreContainer *)self isDeltaSyncPossible];
  v19 = [(PDPassSyncCloudStoreContainer *)self passesZone];
  if (v18)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086410;
    v23[3] = &unk_10083D690;
    v20 = v24;
    v23[4] = self;
    v24[0] = v15;
    v24[1] = a3;
    [(PDPassSyncCloudStoreContainer *)self doDeltaSyncOfZone:v19 andFill:v15 completion:v23];
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
    v22[1] = a3;
    [(PDPassSyncCloudStoreContainer *)self doFullSyncOfZone:v19 andFill:v15 completion:v21];
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

- (BOOL)canSkipDownloadForReason:(int64_t)a3
{
  if (!self->_isReadOnly)
  {
    if (a3)
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v15 = 138543362;
        v16 = v7;
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
        v14 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] cannot skip download because we've never synced", &v15, 0xCu);
      }
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v15 = 138543362;
        v16 = v7;
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
    v5 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &v4->super, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] can skip download because readOnly flag is set", &v15, 0xCu);
  }

  v6 = 1;
LABEL_15:

  return v6;
}

- (BOOL)isDeltaSyncPossible
{
  v3 = [(PDCloudStoreContainer *)self containerManager];
  v4 = [(PDPassSyncCloudStoreContainer *)self passesZone];
  v5 = [v3 didFinishInitialSyncForCloudStoreZone:v4];

  return v5;
}

- (void)markEndOfDownload:(id)a3
{
  v4 = a3;
  obj = +[NSDate date];
  v5 = [v4 errorEncounered];

  os_unfair_lock_lock(&self->_lock);
  self->_isDownloading = 0;
  if (v5)
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
    v4 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    v6 = 138543362;
    v7 = v4;
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

- (void)abortDownloadOfCloudDataWithReason:(int64_t)a3
{
  if (!a3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v8 = v5;
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

- (void)doDeltaSyncOfZone:(id)a3 andFill:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will attempt to download records (delta-sync)", buf, 0xCu);
  }

  v13 = [(PDPassSyncCloudStoreContainer *)self requestForAllChangedRecordsInZone:v8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086E00;
  v17[3] = &unk_100840CE8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [(PDCloudStoreContainer *)self executeRecordsRequest:v13 completion:v17];
}

- (void)doFullSyncOfZone:(id)a3 andFill:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will attempt to download records (full-sync)", buf, 0xCu);
  }

  v13 = [(PDCloudStoreContainer *)self containerManager];
  v14 = [v13 changeTokenForCloudStoreStore:v8];

  if (!v14)
  {
    v15 = [(PDPassSyncCloudStoreContainer *)self localStore];
    [v15 prepareToSaveRemoteData];
  }

  v16 = [(PDPassSyncCloudStoreContainer *)self requestForAllRecordsInZone:v8];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100087238;
  v23[3] = &unk_100840D10;
  v23[4] = self;
  v17 = v9;
  v24 = v17;
  [v16 setBatchHandler:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000873F0;
  v20[3] = &unk_100840D38;
  v20[4] = self;
  v21 = v17;
  v22 = v10;
  v18 = v10;
  v19 = v17;
  [(PDCloudStoreContainer *)self executeRecordsRequest:v16 completion:v20];
}

- (void)finishDownloadOfCloudDataWithContents:(id)a3 forReason:(int64_t)a4
{
  if (a4)
  {
    [(PDPassSyncCloudStoreContainer *)self finishRegularDownloadOfCloudDataWithContents:a3];
  }

  else
  {
    [(PDPassSyncCloudStoreContainer *)self finishInitialDownloadOfCloudDataWithContents:a3];
  }
}

- (void)finishInitialDownloadOfCloudDataWithContents:(id)a3
{
  v4 = a3;
  v5 = [v4 errorEncounered];

  p_super = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v9 = [v4 errorEncounered];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] error initially downloading cloud data: %{public}@", &v14, 0x16u);
    }

    v10 = 3;
  }

  else
  {
    if (v7)
    {
      v11 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] initial download of cloud data did finish", &v14, 0xCu);
    }

    self->_didSuccessfullySyncAtLeastOnce = 1;
    v12 = v4;
    p_super = &self->_downloadedContents->super;
    self->_downloadedContents = v12;
    v10 = 14;
  }

  v13 = [v4 errorEncounered];
  [(PDPassSyncCloudStoreContainer *)self advanceToNextState:v10 withError:v13];
}

- (void)finishRegularDownloadOfCloudDataWithContents:(id)a3
{
  v4 = a3;
  v5 = [v4 errorEncounered];

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v8 = [v4 errorEncounered];
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] error downloading cloud data: %{public}@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  self->_didSuccessfullySyncAtLeastOnce = 1;
  v9 = [v4 typeOfSyncPerformed];
  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      v13 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will upload local data after download (full-sync)", buf, 0xCu);
    }

    v6 = [(PDPassSyncCloudStoreContainer *)self localStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000879B4;
    v15[3] = &unk_10083DFE8;
    v15[4] = self;
    [v6 saveLocalDataInContainer:v4 completion:v15];
    goto LABEL_11;
  }

  if (v11)
  {
    v12 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v17 = v12;
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
    v5 = [(PDPassCloudStoreContainerContent *)v3 typeOfSyncPerformed];
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        *buf = 138543362;
        v17 = v8;
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
        v11 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will upload local data after download (full-sync)", buf, 0xCu);
      }

      v12 = [(PDPassSyncCloudStoreContainer *)self localStore];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100087FC0;
      v15[3] = &unk_10083DFE8;
      v15[4] = self;
      [v12 saveLocalDataInContainer:v4 completion:v15];
    }

    downloadedContents = self->_downloadedContents;
    self->_downloadedContents = 0;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did not find contents to use, advancing.", buf, 0xCu);
    }

    [(PDPassSyncCloudStoreContainer *)self advanceToNextState:15 withError:0];
  }
}

- (void)processPendingChanges:(id)a3
{
  v4 = a3;
  if (self->_isReadOnly)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] won't process pending changes because container is readonly", &v8, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 1, 0);
    }
  }

  else
  {
    v7 = [(PDPassSyncCloudStoreContainer *)self localStore];
    [v7 processPendingChanges:v4];
  }
}

- (id)requestForAllRecordsInZone:(id)a3
{
  v4 = a3;
  v5 = [(PDPassSyncCloudStoreContainer *)self allRecordsRequest];
  [v5 setUseLastChangeToken:1];
  [v5 setShouldSaveToken:1];
  [v5 setStoreChangesInDatabase:0];
  [v5 setIgnoreChangesMadeByThisDevice:0];
  [v5 setBatchLimit:25];
  [v5 setCloudStoreZone:v4];

  v6 = [(PDCloudStoreContainer *)self containerManager];
  v7 = [v6 databaseForScope:2];
  [v5 setContainerDatabase:v7];

  return v5;
}

- (id)requestForAllChangedRecordsInZone:(id)a3
{
  v4 = a3;
  v5 = [(PDPassSyncCloudStoreContainer *)self changesRecordsRequest];
  [v5 setUseLastChangeToken:1];
  [v5 setShouldSaveToken:1];
  [v5 setStoreChangesInDatabase:1];
  [v5 setIgnoreChangesMadeByThisDevice:1];
  [v5 setBatchLimit:25];
  [v5 setCloudStoreZone:v4];

  v6 = [(PDCloudStoreContainer *)self containerManager];
  v7 = [v6 databaseForScope:2];
  [v5 setContainerDatabase:v7];

  return v5;
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

- (BOOL)didEncounterChangeTokenExpiredError:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [[PKCloudStoreError alloc] initWithError:v3];

  LOBYTE(v3) = [v4 isChangeTokenExpired];
  return v3;
}

- (void)moveItemsFromResponse:(id)a3 duringDeltaSync:(BOOL)a4 orError:(id)a5 toContents:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [v12 noteTypeOfSyncPerformed:v8];
  if (v11)
  {
    [v12 noteEnounteredError:v11];
  }

  else
  {
    v25 = self;
    v24 = v10;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v10 cloudStoreRecords];
    v14 = [v13 allItems];

    v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 appendPass:v19];
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
                v23 = [(PDCloudStoreContainerConfiguration *)v25->_configuration logDescription];
                *buf = 138543618;
                v31 = v23;
                v32 = 2114;
                v33 = v21;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] skipping item we can't handle %{public}@", buf, 0x16u);
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    v11 = 0;
    v10 = v24;
  }
}

- (void)moveItemsFromBatchContents:(id)a3 toFinalContents:(id)a4
{
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 cloudPasses];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 appendPassID:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)onWorkQueue:(id)a3
{
  v4 = a3;
  v5 = [(PDCloudStoreContainer *)self workQueue];
  dispatch_async(v5, v4);
}

- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)a3 deletedRecordsByDatabaseIdentifier:(id)a4 carriedOverRecordsByDatabaseIdentifier:(id)a5 conflictingRecordsByDatabaseIdentifier:(id)a6 request:(id)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  PDCloudStoreRecordsRequestTypeToString([v17 requestType]);
  v32 = v31 = v13;
  v18 = [v13 objectForKeyedSubscript:@"Private"];
  v19 = [v18 count];

  v20 = [v14 objectForKeyedSubscript:@"Private"];
  v21 = [v20 count];

  v22 = [v15 objectForKeyedSubscript:@"Private"];
  v23 = [v22 count];

  v24 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138544386;
    v34 = v25;
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

  v26 = [(PDPassSyncCloudStoreContainer *)self localStore];
  v27 = [v26 reflectRemoteUpdates:v31 perRequest:v17];

  v28 = [(PDPassSyncCloudStoreContainer *)self localStore];
  [v28 reflectRemoteDeletes:v14 perRequest:v17];

  v29 = [(PDPassSyncCloudStoreContainer *)self localStore];
  v30 = [v29 convertConflicts:v15];

  if (v16)
  {
    v16[2](v16, v27, 0, v30);
  }
}

- (void)updateCloudPasses:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100088FAC;
  v8[3] = &unk_10083F418;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v8];
}

- (void)removeCloudPassesWithLocalUniqueIDs:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089418;
  v8[3] = &unk_10083F418;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(PDPassSyncCloudStoreContainer *)self onWorkQueue:v8];
}

- (id)cloudPassIDForLocalUniqueID:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(PDPassSyncCloudStoreContainer *)self cloudStoreZonesForItemType:2 configuration:0 action:3 inContainerDatabase:v7];
    v9 = [PKPass recordNameForUniqueID:v6];
    v10 = [v8 anyObject];
    v11 = [v10 recordZone];
    v12 = [v11 zoneID];

    if (v9 && v12)
    {
      v13 = [[CKRecordID alloc] initWithRecordName:v9 zoneID:v12];
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
        v18 = 138543362;
        v19 = v16;
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
      v14 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] could not generate cloud pass ID given no local ID", &v18, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (void)performDeletes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = PKCloudStoreOperationGroupUserActionExplicit;
  v8 = PKCloudStoreOperationGroupSuffixPassRemoved;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089BB0;
  v10[3] = &unk_100840E30;
  v11 = v6;
  v9 = v6;
  [(PDCloudStoreContainer *)self modifyRecordsOperationWithRecordsToSaveByDatabaseIdentifier:0 recordIDsToDeleteByDatabaseIdentifier:a3 recordModificationOperationConfiguration:0 emitErrorIfConflictDetected:0 isModifyingShare:0 operationGroupName:v7 operationGroupNameSuffix:v8 qualityOfService:17 completion:v10];
}

- (void)updateCloudCatalog:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089EAC;
  v8[3] = &unk_10083F418;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
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
  v3 = [(PDCloudStoreContainer *)self nextExpectedState];
  isDownloading = self->_isDownloading;
  os_unfair_lock_unlock(&self->_lock);
  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 15)
  {
    return isDownloading;
  }

  return 1;
}

- (void)_queue_cloudStoreAccountChanged:(id)a3
{
  if (PKIsCloudKitEnvironmentChangeHandlingDisabled())
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v11 = v5;
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
      v5 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
      *buf = 138543362;
      v11 = v5;
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
    v8 = [(PDCloudStoreContainerConfiguration *)self->_configuration logDescription];
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] received CKAccountChangedNotification", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A628;
  v9[3] = &unk_100840CC0;
  v9[4] = self;
  [(PDCloudStoreContainer *)self _queue_cloudStoreAccountInformationWithCompletion:v9];
}

- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)a3 groupName:(id)a4 groupNameSuffix:(id)a5 qualityOfService:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [(PDPassSyncCloudStoreContainer *)self sanitizeItems:a3];
  v16.receiver = self;
  v16.super_class = PDPassSyncCloudStoreContainer;
  [(PDCloudStoreContainer *)&v16 updateCloudStoreWithLocalItemsWithConfigurations:v15 groupName:v14 groupNameSuffix:v13 qualityOfService:a6 completion:v12];
}

- (id)recordTypesForCloudStoreItemType:(unint64_t)a3
{
  if (a3 == 3)
  {
    v6 = PKCloudPassCatalogRecordType;
    v3 = &v6;
    goto LABEL_5;
  }

  if (a3 == 2)
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

- (unint64_t)cloudStoreItemTypeForRecordType:(id)a3
{
  v3 = a3;
  v4 = PKCloudPassRecordType;
  v5 = v3;
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

- (id)identifierFromRecord:(id)a3
{
  v3 = [a3 recordID];
  v4 = [v3 recordName];

  v5 = [v4 rangeOfString:@"-"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 stringByReplacingCharactersInRange:0 withString:{v5 + 1, &stru_10086D930}];

    v4 = v6;
  }

  return v4;
}

- (id)recordTypeFromRecordName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PDPassSyncCloudStoreContainer;
  v5 = [(PDCloudStoreContainer *)&v14 recordTypeFromRecordName:v4];
  v6 = v5;
  if (v5)
  {
    goto LABEL_7;
  }

  v7 = +[PKPass recordNamePrefix];
  v8 = [v4 hasPrefix:v7];

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
  v11 = [v4 hasPrefix:v10];

  if (v11)
  {
    v9 = &PKCloudPassCatalogRecordType;
    goto LABEL_6;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)allPossibleZoneNamesForContainerDatabase:(id)a3
{
  if ([a3 scope] == 2)
  {
    v3 = [NSSet setWithObject:PKCloudStorePassesZoneName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)a3
{
  v4 = a3;
  if ([v4 scope] == 2)
  {
    v5 = [v4 zoneForZoneName:PKCloudStorePassesZoneName];
    v6 = [(PDPassSyncCloudStoreContainer *)self subscriptionForZone:v5 inContainerDatabase:v4];

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

- (id)subscriptionForZone:(id)a3 inContainerDatabase:(id)a4
{
  v5 = a3;
  if ([a4 scope] != 2)
  {
    goto LABEL_6;
  }

  v6 = [v5 zoneID];
  v7 = [v6 zoneName];
  v8 = PKCloudStorePassesZoneName;
  v9 = v7;
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
  v6 = [v5 zoneID];
  v12 = [v13 initWithZoneID:v6 subscriptionID:PKCloudStorePassesZoneSubscriptionID];
LABEL_10:

LABEL_11:

  return v12;
}

- (id)zoneIDForSubscription:(id)a3 inContainerDatabase:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 scope] != 2)
  {
    goto LABEL_6;
  }

  v7 = [v5 subscriptionID];
  v8 = PKCloudStorePassesZoneSubscriptionID;
  v9 = v7;
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

    if (!v11)
    {
LABEL_6:
      v12 = 0;
      goto LABEL_11;
    }
  }

  v10 = [v6 zoneForZoneName:PKCloudStorePassesZoneName];
  v12 = [v10 zoneID];
LABEL_10:

LABEL_11:

  return v12;
}

- (id)cloudStoreZonesForItem:(id)a3 action:(unint64_t)a4 inContainerDatabase:(id)a5
{
  v8 = a5;
  v9 = -[PDPassSyncCloudStoreContainer cloudStoreZonesForItemType:configuration:action:inContainerDatabase:](self, "cloudStoreZonesForItemType:configuration:action:inContainerDatabase:", [a3 itemType], 0, a4, v8);

  return v9;
}

- (id)cloudStoreZonesForItemType:(unint64_t)a3 configuration:(id)a4 action:(unint64_t)a5 inContainerDatabase:(id)a6
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = a6;
    v8 = [(PDCloudStoreContainer *)self containerManager];
    v9 = [v8 cloudStoreZoneForZoneName:PKCloudStorePassesZoneName inContainerDatabase:v7];

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
  v3 = [(PDCloudStoreContainer *)self containerManager];
  v4 = [v3 databaseForScope:2];

  v5 = [(PDCloudStoreContainer *)self containerManager];
  v6 = [v5 cloudStoreZoneForZoneName:PKCloudStorePassesZoneName inContainerDatabase:v4];

  return v6;
}

- (void)fetchDiagnosticInformation:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008B4BC;
  v4[3] = &unk_10083DCB8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PDPassSyncCloudStoreContainer *)v5 onWorkQueue:v4];
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
  v2 = [(PDCloudStoreContainer *)self nextExpectedState];

  return PDCloudStoreContainerStateToUserString(v2);
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
  v3 = [(PDCloudStoreContainer *)self containerManager];
  v4 = [(PDPassSyncCloudStoreContainer *)self passesZone];
  v5 = [v3 changeTokenForCloudStoreStore:v4];

  v6 = [v5 data];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v5 data];
    v9 = [v8 hexEncoding];

    if ([v9 length] > 0x15)
    {
      v11 = [v9 substringToIndex:11];
      v12 = [v9 substringFromIndex:{objc_msgSend(v9, "length") - 11}];
      v10 = [NSString stringWithFormat:@"%@..%@", v11, v12];
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = @"N/A";
  }

  return v10;
}

- (void)fetchDiagnosticSnapshot:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BED4;
  v4[3] = &unk_10083DCB8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PDPassSyncCloudStoreContainer *)v5 onWorkQueue:v4];
}

- (PDCardCloudManagerLocalStore)localStore
{
  WeakRetained = objc_loadWeakRetained(&self->_localStore);

  return WeakRetained;
}

@end