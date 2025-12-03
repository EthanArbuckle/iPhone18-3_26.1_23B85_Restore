@interface IXSClientConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (BOOL)clientProcessExists;
- (BOOL)interestedInCoordinatorUUID:(id)d;
- (BOOL)interestedInPromiseUUID:(id)d;
- (IXSClientConnection)initWithConnection:(id)connection;
- (NSString)description;
- (NSXPCConnection)xpcConnection;
- (void)_client_coordinatorDidCompleteSuccessfullyWithUUID:(id)d forRecordPromise:(id)promise;
- (void)_client_coordinatorDidInstallPlaceholderWithUUID:(id)d forRecordPromise:(id)promise;
- (void)_client_coordinatorDidRegisterForObservationWithUUID:(id)d;
- (void)_client_coordinatorShouldBeginPostProcessingWithUUID:(id)d forRecordPromise:(id)promise;
- (void)_client_coordinatorShouldBeginRestoringUserDataWithUUID:(id)d;
- (void)_client_coordinatorShouldPauseWithUUID:(id)d;
- (void)_client_coordinatorShouldPrioritizeWithUUID:(id)d;
- (void)_client_coordinatorShouldResumeWithUUID:(id)d;
- (void)_client_coordinatorWithUUID:(id)d configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment;
- (void)_client_coordinatorWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client;
- (void)_client_coordinatorWithUUID:(id)d didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)_client_promiseDidCompleteSuccessfullyWithUUID:(id)d;
- (void)_client_promiseWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client;
- (void)_fetchDataPromiseForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error;
- (void)_fetchIXSCoordinatedAppInstallForUUID:(id)d method:(const char *)method andRunWithCoordinator:(id)coordinator error:(id)error;
- (void)_fetchOwnedDataPromiseForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error;
- (void)_fetchPlaceholderForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error;
- (void)_fetchPromisedOutOfBandStreamingZipTransferForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error;
- (void)_fetchPromisedStreamingZipTransferForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error;
- (void)_fetchPromisedTransferToPathForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error;
- (void)_remote_IXSCoordinatedAppInstall:(id)install appAssetPromiseHasBegunFulfillment:(id)fulfillment;
- (void)_remote_IXSCoordinatedAppInstall:(id)install cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install convertToGloballyScopedWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install conveyPriorityReplacingExisting:(BOOL)existing withCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install fireObserversWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getAppAssetPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getAppAssetPromiseDRI:(id)i;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getCoordinationState:(id)state;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getCoordinatorScopeWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getDataImportPromises:(id)promises;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getDeviceSecurityPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getErrorInfo:(id)info;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getEssentialAssetPromises:(id)promises;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getHasDeviceSecurityPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getInitialODRAssetPromises:(id)promises;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getInstallOptions:(id)options;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getIsComplete:(id)complete;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getIsPausedWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getNeedsPostProcessing:(id)processing;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getPlaceholderDispositionWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getPlaceholderPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getPostProcessingShouldBegin:(id)begin;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getPreparationPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getProgressHintWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getUserDataPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install getUserDataRestoreShouldBegin:(id)begin;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasAppAssetPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasDataImportPromises:(id)promises;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasEssentialAssetPromises:(id)promises;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasInitialODRAssetPromises:(id)promises;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasInstallOptions:(id)options;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasPlaceholderPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install hasUserDataPromise:(id)promise;
- (void)_remote_IXSCoordinatedAppInstall:(id)install importanceWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install prioritizeWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install removabilityWithCompletion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setAppAssetPromiseDRI:(unint64_t)i completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setAppAssetPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setDataImportPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setDeviceSecurityPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setEssentialAssetPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setImportance:(unint64_t)importance completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setInitialODRAssetPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setInstallOptionsPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setIsPaused:(BOOL)paused completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setNeedsPostProcessing:(BOOL)processing completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setPlaceholderDisposition:(unint64_t)disposition completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setPlaceholderPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setPreparationPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setProgressHint:(id)hint completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setRemovability:(unint64_t)removability byClient:(unint64_t)client completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setTargetGizmoPairingID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install setUserDataPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSCoordinatedAppInstall:(id)install targetGizmoPairingIDWithCompletion:(id)completion;
- (void)_remote_IXSDataPromise:(id)promise cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion;
- (void)_remote_IXSDataPromise:(id)promise getErrorInfo:(id)info;
- (void)_remote_IXSDataPromise:(id)promise getIsComplete:(id)complete;
- (void)_remote_IXSDataPromise:(id)promise getPercentComplete:(id)complete;
- (void)_remote_IXSDataPromise:(id)promise preflightWithCompletion:(id)completion;
- (void)_remote_IXSDataPromise:(id)promise resetWithCompletion:(id)completion;
- (void)_remote_IXSDataPromise:(id)promise setIsComplete:(BOOL)complete completion:(id)completion;
- (void)_remote_IXSDataPromise:(id)promise setPercentComplete:(double)complete;
- (void)_remote_IXSOwnedDataPromise:(id)promise getStagedPath:(id)path;
- (void)_remote_IXSOwnedDataPromise:(id)promise getTargetLastPathComponent:(id)component;
- (void)_remote_IXSOwnedDataPromise:(id)promise setStagedPath:(id)path;
- (void)_remote_IXSOwnedDataPromise:(id)promise setTargetLastPathComponent:(id)component withCompletion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder getAppExtensionPlaceholderPromises:(id)promises;
- (void)_remote_IXSPlaceholder:(id)placeholder getAttributesWithCompletion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder getEntitlementsPromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder getIconPromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder getIconResourcesPromiseAndInfoPlistContentPromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder getInfoPlistLoctablePromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder getLaunchProhibitedWithCompletion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder getLocalizationDictionary:(id)dictionary;
- (void)_remote_IXSPlaceholder:(id)placeholder getMetadataWithCompletion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder getSinfDataWithCompletion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder hasAppExtensionPlaceholderPromises:(id)promises;
- (void)_remote_IXSPlaceholder:(id)placeholder hasEntitlementsPromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder hasIconPromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder hasIconResourcesPromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder hasInfoPlistLoctablePromise:(id)promise;
- (void)_remote_IXSPlaceholder:(id)placeholder setAppExtensionPlaceholderPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setAttributes:(id)attributes completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setConfigurationCompleteWithCompletion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setEntitlementsPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setIconPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setIconResourcesPromiseUUID:(id)d withInfoPlistIconContentPromiseUUID:(id)iD completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setInfoPlistLoctablePromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setLaunchProhibited:(BOOL)prohibited completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setLocalizationPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setMetadataPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSPlaceholder:(id)placeholder setSinfPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_IXSPromisedOutOfBandStreamingZipTransfer:(id)transfer setArchiveBytesConsumed:(unint64_t)consumed;
- (void)_remote_IXSPromisedStreamingZipTransfer:(id)transfer setArchiveBytesConsumed:(unint64_t)consumed;
- (void)_remote_IXSPromisedTransferToPath:(id)path setShouldCopy:(BOOL)copy;
- (void)_remote_IXSPromisedTransferToPath:(id)path setTransferPath:(id)transferPath;
- (void)_remote_IXSPromisedTransferToPath:(id)path setTryDeltaCopy:(BOOL)copy;
- (void)_remote_addBundleIDs:(id)ds toMappingsForPersona:(id)persona completion:(id)completion;
- (void)_remote_addObserversForCoordinatorsWithUUIDs:(id)ds fireObserverMethods:(BOOL)methods;
- (void)_remote_associateMultiPersonaAppsWithBundleIDs:(id)ds withPersona:(id)persona completion:(id)completion;
- (void)_remote_cancelCoordinatorForAppWithIdentity:(id)identity reason:(id)reason client:(unint64_t)client completion:(id)completion;
- (void)_remote_cancelCoordinatorsForAppsWithIdentities:(id)identities reason:(id)reason client:(unint64_t)client completion:(id)completion;
- (void)_remote_checkIfDataPromiseExistsForUUID:(id)d completion:(id)completion;
- (void)_remote_createAppReferenceDataPromiseWithSeed:(id)seed ifMatchingPredicate:(id)predicate completion:(id)completion;
- (void)_remote_createInMemoryDataPromiseWithSeed:(id)seed data:(id)data completion:(id)completion;
- (void)_remote_createInMemoryDictionaryPromiseWithSeed:(id)seed dictionary:(id)dictionary completion:(id)completion;
- (void)_remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:(id)seed completion:(id)completion;
- (void)_remote_createOutOfBandTransferPromiseWithSeed:(id)seed completion:(id)completion;
- (void)_remote_createPlaceholderDataPromiseWithSeed:(id)seed completion:(id)completion;
- (void)_remote_createStreamingZipTransferDataPromiseWithSeed:(id)seed completion:(id)completion;
- (void)_remote_createTransferToPathDataPromiseWithSeed:(id)seed completion:(id)completion;
- (void)_remote_defaultAppMetadataForAppIdentity:(id)identity completion:(id)completion;
- (void)_remote_defaultAppMetadataListWithCompletion:(id)completion;
- (void)_remote_displayUserPresentableErrorForApp:(id)app code:(int64_t)code;
- (void)_remote_displayUserPresentableErrorForAppWithLocalizedName:(id)name code:(int64_t)code;
- (void)_remote_displayUserPresentableErrorForApps:(id)apps code:(int64_t)code;
- (void)_remote_fakeClientDeathWithCompletion:(id)completion;
- (void)_remote_fetchRegisteredDataPromiseInfoForCreator:(unint64_t)creator completion:(id)completion;
- (void)_remote_fetchSeedsForCoordinatorsWithIntent:(unint64_t)intent completion:(id)completion;
- (void)_remote_killDaemonForTestingWithCompletion:(id)completion;
- (void)_remote_pingDaemonWithCompletion:(id)completion;
- (void)_remote_postNSCurrentLocaleDidChangeNotification:(id)notification;
- (void)_remote_prioritizeCoordinatorForAppWithIdentity:(id)identity completion:(id)completion;
- (void)_remote_purgeRegisteredCoordinatorsAndPromisesForCreator:(unint64_t)creator completion:(id)completion;
- (void)_remote_refreshContainersWithOptions:(id)options forAppWithIdentity:(id)identity completion:(id)completion;
- (void)_remote_registerContentForOSModuleAtURL:(id)l options:(id)options completion:(id)completion;
- (void)_remote_registerContentsForDiskImageAtURL:(id)l options:(id)options completion:(id)completion;
- (void)_remote_registerObserverMachServiceName:(id)name forClientIdentifiers:(id)identifiers respondingToSelectors:(unint64_t)selectors;
- (void)_remote_registerTransientObserver:(id)observer forClientIdentifiers:(id)identifiers respondingToSelectors:(unint64_t)selectors;
- (void)_remote_removabilityDataWithCompletion:(id)completion;
- (void)_remote_removabilityForAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion;
- (void)_remote_removabilityForAppWithIdentity:(id)identity completion:(id)completion;
- (void)_remote_removeBundleIDs:(id)ds fromMappingsForPersona:(id)persona completion:(id)completion;
- (void)_remote_revertAppWithIdentity:(id)identity completion:(id)completion;
- (void)_remote_setKnownOSModuleURLs:(id)ls options:(id)options completion:(id)completion;
- (void)_remote_setRemovability:(unint64_t)removability forAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion;
- (void)_remote_setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode testSpecificValidationData:(id)data completion:(id)completion;
- (void)_remote_setTestingEnabled:(BOOL)enabled completion:(id)completion;
- (void)_remote_stagingLocationForInstallLocation:(id)location completion:(id)completion;
- (void)_remote_uninstallAppWithIdentity:(id)identity options:(id)options completion:(id)completion;
- (void)_remote_unregisterContentForOSModuleAtURL:(id)l options:(id)options completion:(id)completion;
- (void)_remote_unregisterContentsForDiskImageAtURL:(id)l options:(id)options completion:(id)completion;
- (void)_remote_updateSINFForAppWithIdentity:(id)identity sinfData:(id)data options:(id)options completion:(id)completion;
- (void)_remote_updateiTunesMetadata:(id)metadata forAppWithIdentity:(id)identity completion:(id)completion;
- (void)addInterestedCoordinatorUUID:(id)d;
- (void)addInterestedCoordinatorUUIDs:(id)ds;
- (void)addInterestedPromiseUUID:(id)d;
- (void)addInterestedPromiseUUIDs:(id)ds;
- (void)cancelOrphanedPromisesAndRemovePromiseReferences;
- (void)connectionInvalidated;
- (void)removeInterestedCoordinatorUUID:(id)d;
- (void)removeInterestedCoordinatorUUIDs:(id)ds;
- (void)removeInterestedPromiseUUID:(id)d;
- (void)removeInterestedPromiseUUIDs:(id)ds;
@end

@implementation IXSClientConnection

- (IXSClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = IXSClientConnection;
  v5 = [(IXSClientConnection *)&v21 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.installcoordinationd.IXSClientConnection.internal", v6);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v7;

    v9 = objc_opt_new();
    interestedCoordinatorUUIDs = v5->_interestedCoordinatorUUIDs;
    v5->_interestedCoordinatorUUIDs = v9;

    v11 = objc_opt_new();
    interestedPromiseUUIDs = v5->_interestedPromiseUUIDs;
    v5->_interestedPromiseUUIDs = v11;

    v13 = sub_10000D6A0(connectionCopy);
    clientName = v5->_clientName;
    v5->_clientName = v13;

    *&v5->_invalidated = 0;
    v15 = +[NSUUID UUID];
    connectionUUID = v5->_connectionUUID;
    v5->_connectionUUID = v15;

    [(IXSClientConnection *)v5 setXpcConnection:connectionCopy];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    *v5->_clientAuditToken.val = v19;
    *&v5->_clientAuditToken.val[4] = v20;
    v17 = [IXSAppInstallObserverManager sharedInstance:v19];
    [v17 registerClientConnection:v5];
  }

  return v5;
}

- (BOOL)clientProcessExists
{
  if ([(IXSClientConnection *)self fakeClientProcessDeath])
  {
    return 0;
  }

  [(IXSClientConnection *)self clientAuditToken:0];
  return proc_pidpath_audittoken(&v4, buffer, 0x1000u) > 0;
}

- (void)connectionInvalidated
{
  if (![(IXSClientConnection *)self invalidated])
  {
    [(IXSClientConnection *)self setInvalidated:1];
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IXSClientConnection connectionInvalidated]";
      v8 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Connection Invalidated", &v6, 0x16u);
    }

    v4 = +[IXSAppInstallObserverManager sharedInstance];
    [v4 unregisterClientConnection:self];

    v5 = +[IXSCoordinatorManager sharedInstance];
    [v5 connectionInvalidated:self];

    [(IXSClientConnection *)self cancelOrphanedPromisesAndRemovePromiseReferences];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  clientName = [(IXSClientConnection *)self clientName];
  connectionUUID = [(IXSClientConnection *)self connectionUUID];
  v7 = [NSString stringWithFormat:@"<%@<%p> client:%@ uuid:%@>", v4, self, clientName, connectionUUID];

  return v7;
}

- (void)addInterestedCoordinatorUUIDs:(id)ds
{
  dsCopy = ds;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074E14;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)addInterestedCoordinatorUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074FB4;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeInterestedCoordinatorUUIDs:(id)ds
{
  dsCopy = ds;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075154;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeInterestedCoordinatorUUID:(id)d
{
  v4 = [NSSet setWithObject:d];
  [(IXSClientConnection *)self removeInterestedCoordinatorUUIDs:v4];
}

- (BOOL)interestedInCoordinatorUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000756AC;
  block[3] = &unk_1001012B0;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (void)cancelOrphanedPromisesAndRemovePromiseReferences
{
  v3 = +[IXSDataPromiseManager sharedInstance];
  clientName = [(IXSClientConnection *)self clientName];
  v6 = sub_1000405FC("[IXSClientConnection cancelOrphanedPromisesAndRemovePromiseReferences]", 259, @"IXErrorDomain", 0x12uLL, 0, 0, @"Promise was not attached to a coordinator and is no longer referenced by client %@", v5, clientName);

  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075838;
  block[3] = &unk_100101300;
  block[4] = self;
  v11 = v3;
  v12 = v6;
  v8 = v6;
  v9 = v3;
  dispatch_sync(internalQueue, block);
}

- (void)addInterestedPromiseUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075A00;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)addInterestedPromiseUUIDs:(id)ds
{
  dsCopy = ds;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075BA0;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeInterestedPromiseUUIDs:(id)ds
{
  dsCopy = ds;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075D40;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)removeInterestedPromiseUUID:(id)d
{
  v4 = [NSSet setWithObject:d];
  [(IXSClientConnection *)self removeInterestedPromiseUUIDs:v4];
}

- (BOOL)interestedInPromiseUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007610C;
  block[3] = &unk_1001012B0;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (void)_remote_createPlaceholderDataPromiseWithSeed:(id)seed completion:(id)completion
{
  seedCopy = seed;
  completionCopy = completion;
  v8 = [IXSPlaceholder alloc];
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v37 = 0;
  v10 = [(IXSPlaceholder *)v8 initWithSeed:seedCopy fromConnection:xpcConnection error:&v37];
  v11 = v37;

  if (v10)
  {
    v12 = +[IXSDataPromiseManager sharedInstance];
    [v12 registerPromise:v10];

    uniqueIdentifier = [(IXSDataPromise *)v10 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1000764A0;
    v35 = sub_1000764B0;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_1000764A0;
    v29 = sub_1000764B0;
    v30 = 0;
    accessQueue = [(IXSDataPromise *)v10 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000764B8;
    block[3] = &unk_1001019C0;
    v22 = v10;
    v23 = &v25;
    v24 = &v31;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v32[5], v26[5]);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3DA0(seedCopy);
    }

    name = [seedCopy name];
    bundleName = [seedCopy bundleName];
    v20 = IXStringForClientID([seedCopy creatorIdentifier]);
    v19 = sub_1000405FC("[IXSClientConnection _remote_createPlaceholderDataPromiseWithSeed:completion:]", 341, @"IXErrorDomain", 2uLL, v11, 0, @"Failed to create placeholder data promise with name: %@ bundleName: %@ client: %@", v18, name);

    completionCopy[2](completionCopy, 0, v19);
    v11 = v19;
  }
}

- (void)_remote_createTransferToPathDataPromiseWithSeed:(id)seed completion:(id)completion
{
  seedCopy = seed;
  completionCopy = completion;
  v36 = 0;
  v8 = [[IXSPromisedTransferToPath alloc] initWithSeed:seedCopy error:&v36];
  v9 = v36;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    uniqueIdentifier = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1000764A0;
    v34 = sub_1000764B0;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000764A0;
    v28 = sub_1000764B0;
    v29 = 0;
    accessQueue = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007685C;
    block[3] = &unk_1001019C0;
    v21 = v8;
    v22 = &v24;
    v23 = &v30;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v31[5], v25[5]);
    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3E88(seedCopy);
    }

    name = [seedCopy name];
    transferPath = [seedCopy transferPath];
    path = [transferPath path];
    v19 = IXStringForClientID([seedCopy creatorIdentifier]);
    v18 = sub_1000405FC("[IXSClientConnection _remote_createTransferToPathDataPromiseWithSeed:completion:]", 367, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create promised transfer to path data promise with name: %@ path: %@ client: %@", v17, name);

    completionCopy[2](completionCopy, 0, v18);
    v9 = v18;
  }
}

- (void)_remote_createStreamingZipTransferDataPromiseWithSeed:(id)seed completion:(id)completion
{
  seedCopy = seed;
  completionCopy = completion;
  v34 = 0;
  v8 = [[IXSPromisedStreamingZipTransfer alloc] initWithSeed:seedCopy error:&v34];
  v9 = v34;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    uniqueIdentifier = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1000764A0;
    v32 = sub_1000764B0;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1000764A0;
    v26 = sub_1000764B0;
    v27 = 0;
    accessQueue = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076BD0;
    block[3] = &unk_1001019C0;
    v19 = v8;
    v20 = &v22;
    v21 = &v28;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v29[5], v23[5]);
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3F80();
    }

    name = [seedCopy name];
    v17 = IXStringForClientID([seedCopy creatorIdentifier]);
    v16 = sub_1000405FC("[IXSClientConnection _remote_createStreamingZipTransferDataPromiseWithSeed:completion:]", 393, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create streaming zip transfer data promise with name: %@ client: %@", v15, name);

    completionCopy[2](completionCopy, 0, v16);
    v9 = v16;
  }
}

- (void)_remote_createInMemoryDataPromiseWithSeed:(id)seed data:(id)data completion:(id)completion
{
  seedCopy = seed;
  dataCopy = data;
  completionCopy = completion;
  v30 = 0;
  v11 = [[IXSPromisedInMemoryData alloc] initWithSeed:seedCopy data:dataCopy error:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = +[IXSDataPromiseManager sharedInstance];
    [v13 registerPromise:v11];

    uniqueIdentifier = [(IXSDataPromise *)v11 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000764A0;
    v28 = sub_1000764B0;
    v29 = 0;
    accessQueue = [(IXSDataPromise *)v11 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076F00;
    block[3] = &unk_100101268;
    v23 = &v24;
    v22 = v11;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v25[5], 0);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4034();
    }

    name = [seedCopy name];
    v20 = IXStringForClientID([seedCopy creatorIdentifier]);
    v19 = sub_1000405FC("[IXSClientConnection _remote_createInMemoryDataPromiseWithSeed:data:completion:]", 420, @"IXErrorDomain", 2uLL, v12, 0, @"Failed to create in memory data promise with name: %@ client: %@", v18, name);

    completionCopy[2](completionCopy, 0, v19);
    v12 = v19;
  }
}

- (void)_remote_createInMemoryDictionaryPromiseWithSeed:(id)seed dictionary:(id)dictionary completion:(id)completion
{
  seedCopy = seed;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v30 = 0;
  v11 = [[IXSPromisedInMemoryDictionary alloc] initWithSeed:seedCopy dictionary:dictionaryCopy error:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = +[IXSDataPromiseManager sharedInstance];
    [v13 registerPromise:v11];

    uniqueIdentifier = [(IXSDataPromise *)v11 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000764A0;
    v28 = sub_1000764B0;
    v29 = 0;
    accessQueue = [(IXSDataPromise *)v11 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000771FC;
    block[3] = &unk_100101268;
    v23 = &v24;
    v22 = v11;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v25[5], 0);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A40E8();
    }

    name = [seedCopy name];
    v20 = IXStringForClientID([seedCopy creatorIdentifier]);
    v19 = sub_1000405FC("[IXSClientConnection _remote_createInMemoryDictionaryPromiseWithSeed:dictionary:completion:]", 442, @"IXErrorDomain", 2uLL, v12, 0, @"Failed to create in memory dictionary promise with name: %@ client: %@", v18, name);

    completionCopy[2](completionCopy, 0, v19);
    v12 = v19;
  }
}

- (void)_remote_createOutOfBandTransferPromiseWithSeed:(id)seed completion:(id)completion
{
  seedCopy = seed;
  completionCopy = completion;
  v27 = 0;
  v8 = [(IXSDataPromise *)[IXSPromisedOutOfBandTransfer alloc] initWithSeed:seedCopy error:&v27];
  v9 = v27;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    uniqueIdentifier = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1000764A0;
    v25 = sub_1000764B0;
    v26 = 0;
    accessQueue = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000774E4;
    block[3] = &unk_100101268;
    v20 = &v21;
    v19 = v8;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v22[5], 0);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A419C();
    }

    name = [seedCopy name];
    v17 = IXStringForClientID([seedCopy creatorIdentifier]);
    v16 = sub_1000405FC("[IXSClientConnection _remote_createOutOfBandTransferPromiseWithSeed:completion:]", 464, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create out of band transfer promise with name: %@ client: %@", v15, name);

    completionCopy[2](completionCopy, 0, v16);
    v9 = v16;
  }
}

- (void)_remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:(id)seed completion:(id)completion
{
  seedCopy = seed;
  completionCopy = completion;
  v27 = 0;
  v8 = [[IXSPromisedOutOfBandStreamingZipTransfer alloc] initWithSeed:seedCopy error:&v27];
  v9 = v27;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    uniqueIdentifier = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1000764A0;
    v25 = sub_1000764B0;
    v26 = 0;
    accessQueue = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000777CC;
    block[3] = &unk_100101268;
    v20 = &v21;
    v19 = v8;
    dispatch_sync(accessQueue, block);

    completionCopy[2](completionCopy, v22[5], 0);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4250();
    }

    name = [seedCopy name];
    v17 = IXStringForClientID([seedCopy creatorIdentifier]);
    v16 = sub_1000405FC("[IXSClientConnection _remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:completion:]", 486, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create out of band streaming zip transfer promise with name: %@ client: %@", v15, name);

    completionCopy[2](completionCopy, 0, v16);
    v9 = v16;
  }
}

- (void)_remote_createAppReferenceDataPromiseWithSeed:(id)seed ifMatchingPredicate:(id)predicate completion:(id)completion
{
  seedCopy = seed;
  predicateCopy = predicate;
  completionCopy = completion;
  identity = [seedCopy identity];
  v28 = 0;
  v12 = [identity resolvePersonaWithError:&v28];
  v13 = v28;

  if (v12)
  {
    v27 = v13;
    v14 = [[IXSPromisedAppReference alloc] initWithSeed:seedCopy ifMatchingPredicate:predicateCopy error:&v27];
    v15 = v27;

    if (v14)
    {
      v16 = +[IXSDataPromiseManager sharedInstance];
      [v16 registerPromise:v14];

      uniqueIdentifier = [(IXSDataPromise *)v14 uniqueIdentifier];
      [(IXSClientConnection *)self addInterestedPromiseUUID:uniqueIdentifier];

      accessQueue = [(IXSDataPromise *)v14 accessQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100077AA8;
      v24[3] = &unk_1001028F8;
      v26 = completionCopy;
      v25 = v14;
      sub_100071134(accessQueue, v24);
    }

    else
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4304();
      }

      name = [seedCopy name];
      v23 = IXStringForClientID([seedCopy creatorIdentifier]);
      v22 = sub_1000405FC("[IXSClientConnection _remote_createAppReferenceDataPromiseWithSeed:ifMatchingPredicate:completion:]", 515, @"IXErrorDomain", 2uLL, v15, 0, @"Failed to create promised app reference with name: %@ client: %@", v21, name);

      (*(completionCopy + 2))(completionCopy, 0, v22);
      v15 = v22;
    }

    v13 = v15;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

- (void)_remote_fetchSeedsForCoordinatorsWithIntent:(unint64_t)intent completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_opt_new();
  v8 = +[IXSCoordinatorManager sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078C90;
  v14[3] = &unk_100103290;
  intentCopy = intent;
  v9 = v7;
  v15 = v9;
  [v8 enumerateCoordinatorsApplicableToConnection:self usingBlock:v14];

  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    clientName = [(IXSClientConnection *)self clientName];
    v12 = [v9 count];
    if (intent >= 8)
    {
      intent = [NSString stringWithFormat:@"Unknown intent value %lu", intent];
    }

    else
    {
      intent = off_100103838[intent];
    }

    *buf = 136315906;
    v18 = "[IXSClientConnection _remote_fetchSeedsForCoordinatorsWithIntent:completion:]";
    v19 = 2112;
    v20 = clientName;
    v21 = 2048;
    v22 = v12;
    v23 = 2112;
    v24 = intent;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ fetched %lu coordinators for enumeration with intent %@", buf, 0x2Au);
  }

  completionCopy[2](completionCopy, v9, 0);
}

- (void)_remote_fetchRegisteredDataPromiseInfoForCreator:(unint64_t)creator completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_opt_new();
  v7 = +[IXSDataPromiseManager sharedInstance];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100078DF8;
  v13 = &unk_1001032B8;
  v14 = v6;
  creatorCopy = creator;
  v8 = v6;
  [v7 enumeratePromises:&v10];

  v9 = [v8 copy];
  completionCopy[2](completionCopy, v9, 0);
}

- (void)_remote_checkIfDataPromiseExistsForUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = +[IXSDataPromiseManager sharedInstance];
  v8 = [v7 promiseForUUID:dCopy];

  completionCopy[2](completionCopy, v8 != 0, 0);
}

- (void)_remote_cancelCoordinatorForAppWithIdentity:(id)identity reason:(id)reason client:(unint64_t)client completion:(id)completion
{
  identityCopy = identity;
  reasonCopy = reason;
  completionCopy = completion;
  v33 = 0;
  v13 = [identityCopy resolvePersonaWithError:&v33];
  v14 = v33;
  if (v13)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = IXStringForClientID(client);
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v35 = "[IXSClientConnection _remote_cancelCoordinatorForAppWithIdentity:reason:client:completion:]";
      v36 = 2112;
      v37 = identityCopy;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = clientName;
      v42 = 2112;
      v43 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Cancellation for %@ (client %@) requested by %@ for reason %@", buf, 0x34u);
    }

    v18 = +[IXSCoordinatorManager sharedInstance];
    v19 = [v18 coordinatorForIdentity:identityCopy];

    if (v19)
    {
      buf[0] = 0;
      v32 = 0;
      v20 = [v19 cancelForReason:reasonCopy client:client needsLSDatabaseSync:buf error:&v32];
      v21 = v32;
      v22 = v21;
      v23 = 0;
      if ((v20 & 1) == 0)
      {
        v23 = v21;
      }

      completionCopy[2](completionCopy, buf[0], v23);

LABEL_13:
LABEL_14:

      goto LABEL_15;
    }

    if (client == 8)
    {
LABEL_10:
      v24 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[IXSClientConnection _remote_cancelCoordinatorForAppWithIdentity:reason:client:completion:]";
        v36 = 2112;
        v37 = identityCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: No coordinator existed for %@, but SpringBoard is canceling so transforming into an uninstall", buf, 0x16u);
      }

      v23 = objc_opt_new();
      [v23 setRequestUserConfirmation:0];
      [v23 setWaitForDeletion:0];
      [v23 setShowArchiveOption:0];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100079318;
      v30[3] = &unk_1001032E0;
      v31 = completionCopy;
      [(IXSClientConnection *)self _remote_uninstallAppWithIdentity:identityCopy options:v23 completion:v30];

      goto LABEL_13;
    }

    domain = [reasonCopy domain];
    if ([domain isEqualToString:@"IXUserPresentableErrorDomain"])
    {
      code = [reasonCopy code];

      if (code == 3)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v27 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000A46B4();
    }

    v29 = sub_1000405FC("[IXSClientConnection _remote_cancelCoordinatorForAppWithIdentity:reason:client:completion:]", 744, @"IXErrorDomain", 6uLL, 0, 0, @"Coordinator did not exist for bundle ID %@", v28, identityCopy);
    completionCopy[2](completionCopy, 0, v29);

    goto LABEL_14;
  }

  completionCopy[2](completionCopy, 0, v14);
LABEL_15:
}

- (void)_remote_cancelCoordinatorsForAppsWithIdentities:(id)identities reason:(id)reason client:(unint64_t)client completion:(id)completion
{
  identitiesCopy = identities;
  reasonCopy = reason;
  completionCopy = completion;
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [identitiesCopy count];
    v11 = IXStringForClientID(client);
    clientName = [(IXSClientConnection *)self clientName];
    *buf = 136316162;
    *&buf[4] = "[IXSClientConnection _remote_cancelCoordinatorsForAppsWithIdentities:reason:client:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2112;
    *&buf[20] = v11;
    *&buf[28] = 2112;
    *&buf[30] = clientName;
    *&buf[38] = 2112;
    v68 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Bulk cancellation of %d coordinators (client %@) requested by %@ for reason %@", buf, 0x30u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_1000764A0;
  *&buf[32] = sub_1000764B0;
  v68 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = identitiesCopy;
  v13 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v13)
  {
    v14 = *v62;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v61 + 1) + 8 * i);
        v17 = *&buf[8];
        v60 = *(*&buf[8] + 40);
        v18 = [v16 resolvePersonaWithError:&v60];
        objc_storeStrong((v17 + 40), v60);
        if ((v18 & 1) == 0)
        {
          (*(completionCopy + 2))(completionCopy, 0, *(*&buf[8] + 40));

          goto LABEL_26;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_1000764A0;
  v58[4] = sub_1000764B0;
  v59 = objc_opt_new();
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v19 = reasonCopy;
  domain = [v19 domain];
  if ([domain isEqualToString:@"IXUserPresentableErrorDomain"])
  {
    userInfo = [v19 userInfo];
    v22 = [userInfo objectForKeyedSubscript:@"AlertUser"];
    v23 = sub_10008F068(v22, 0);

    if (!v23)
    {
      v31 = 0;
      v36 = v19;
      goto LABEL_18;
    }

    userInfo2 = [v19 userInfo];
    domain = [userInfo2 mutableCopy];

    [domain removeObjectForKey:@"AlertUser"];
    domain2 = [v19 domain];
    v36 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain2, [v19 code], domain);

    v31 = 1;
  }

  else
  {
    v31 = 0;
    v36 = v19;
  }

LABEL_18:
  v26 = dispatch_group_create();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v35 = obj;
  v27 = [v35 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v27)
  {
    v28 = *v53;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v35);
        }

        v30 = *(*(&v52 + 1) + 8 * j);
        dispatch_group_enter(v26);
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100079994;
        v48[3] = &unk_100101528;
        v50 = buf;
        v51 = v56;
        v49 = v26;
        [(IXSClientConnection *)self _remote_cancelCoordinatorForAppWithIdentity:v30 reason:v36 client:client completion:v48];
      }

      v27 = [v35 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v27);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079A24;
  block[3] = &unk_100103308;
  v47 = v31;
  v40 = v19;
  v41 = v35;
  v43 = v58;
  clientCopy = client;
  v44 = v56;
  v42 = completionCopy;
  v45 = buf;
  dispatch_group_notify(v26, &_dispatch_main_q, block);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

LABEL_26:
  _Block_object_dispose(buf, 8);
}

- (void)_remote_prioritizeCoordinatorForAppWithIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v73 = 0;
  v8 = [identityCopy resolvePersonaWithError:&v73];
  v9 = v73;
  if (v8)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
      v76 = 2112;
      v77 = identityCopy;
      v78 = 2112;
      v79 = clientName;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Prioritizing coordinator for %@ as requested by %@", buf, 0x20u);
    }

    v12 = +[IXSCoordinatorManager sharedInstance];
    v13 = [v12 coordinatorForIdentity:identityCopy];

    if (v13)
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10007A728;
      v71[3] = &unk_100103330;
      v72 = completionCopy;
      [v13 prioritizeWithCompletion:v71];
      bundleID = v72;
LABEL_75:

      goto LABEL_76;
    }

    v66 = sub_10007127C();
    bundleID = [identityCopy bundleID];
    v70 = v9;
    v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleID allowPlaceholder:0 error:&v70];
    v16 = v70;

    if (v15)
    {
      if ([v15 hasParallelPlaceholder])
      {
        clientName2 = [(IXSClientConnection *)self clientName];
        identityCopy = [NSString stringWithFormat:@"Uninstalling orphaned parallel placeholder for %@ when %@ sent us a prioritize message", identityCopy, clientName2];

        v19 = +[IXSAppUninstaller sharedUninstaller];
        [v19 uninstallParallelPlaceholderForIdentity:identityCopy reason:identityCopy];

        v20 = 1;
LABEL_73:

        goto LABEL_74;
      }

      v46 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
        v76 = 2112;
        v77 = identityCopy;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s: Discovered that app %@ is fully installed when trying to prioritize; this doesn't make sense.", buf, 0x16u);
      }

      if (!v66)
      {
        v20 = 0;
LABEL_74:
        (*(completionCopy + 2))(completionCopy, v20, v16);

        v9 = v16;
        goto LABEL_75;
      }

      identityCopy = [NSString stringWithFormat:@"Attempted to prioritize app %@ but it was fully installed!", identityCopy];
      sub_100013A40(identityCopy, 0);
LABEL_72:
      v20 = 0;
      goto LABEL_73;
    }

    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
      v76 = 2112;
      v77 = bundleID;
      v78 = 2112;
      v79 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch LSApplicationRecord for application with identifier %@: %@", buf, 0x20u);
    }

    v69 = 0;
    identityCopy = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleID allowPlaceholder:1 error:&v69];
    v22 = v69;
    v23 = v22;
    if (!identityCopy)
    {
      v47 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000A481C();
      }

      v16 = sub_1000405FC("[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]", 898, @"IXErrorDomain", 1uLL, v23, 0, @"Failed to get a placeholder app record for %@ it does not appear to be installed.", v48, identityCopy);;

      if (!v66)
      {
        v20 = 0;
        v15 = 0;
        goto LABEL_73;
      }

      identityCopy2 = [NSString stringWithFormat:@"Got prioritize for app %@ but it's not installed nor is it a placeholder!", identityCopy];
      sub_100013A40(identityCopy2, 0);
      v15 = 0;
      goto LABEL_71;
    }

    v68 = v22;
    v24 = MobileInstallationCopyAppMetadata();
    v16 = v68;

    if (!v24)
    {
      v50 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1000A479C();
      }

      v15 = 0;
      if (!v66)
      {
        identityCopy2 = 0;
LABEL_71:

        goto LABEL_72;
      }

      identityCopy3 = [NSString stringWithFormat:@"Failed to get bundle metadata for %@", identityCopy];
      sub_100013A40(identityCopy3, v16);
      identityCopy2 = 0;
LABEL_70:

      goto LABEL_71;
    }

    v63 = v16;
    placeholderFailureReason = [v24 placeholderFailureReason];
    v67 = v24;
    placeholderFailureUnderlyingErrorSource = [v24 placeholderFailureUnderlyingErrorSource];
    iTunesMetadata = [identityCopy iTunesMetadata];
    distributorInfo = [iTunesMetadata distributorInfo];

    v65 = distributorInfo;
    distributorIsThirdParty = [distributorInfo distributorIsThirdParty];
    v59 = sub_10003B2E0(bundleID, 13);
    v57 = sub_10003B2E0(bundleID, 2);
    isAppStoreVendable = [identityCopy isAppStoreVendable];
    v30 = identityCopy;
    v31 = isAppStoreVendable;
    v64 = v30;
    iTunesMetadata2 = [v30 iTunesMetadata];
    managementDeclarationIdentifier = [iTunesMetadata2 managementDeclarationIdentifier];

    if (managementDeclarationIdentifier)
    {
      v34 = 1;
    }

    else
    {
      v34 = distributorIsThirdParty;
    }

    v35 = placeholderFailureUnderlyingErrorSource;
    if (v31)
    {
      v35 = 1;
    }

    if (v34)
    {
      v36 = 28;
    }

    else
    {
      v36 = v35;
    }

    IsHardError = IXUserPresentableErrorCodeIsHardError(placeholderFailureReason, v36);
    v38 = IsHardError;
    v62 = placeholderFailureReason;
    if (placeholderFailureReason && (IsHardError & 1) != 0)
    {
LABEL_24:
      v60 = v36;
      placeholderFailureUnderlyingError = [v67 placeholderFailureUnderlyingError];
      v39 = 8;
      if (v31)
      {
        v39 = 0;
      }

      if (!placeholderFailureReason)
      {
        placeholderFailureReason = v39;
      }

      v40 = sub_1000031B0(off_100121958);
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        v42 = placeholderFailureUnderlyingError;
        v16 = v63;
        if (v41)
        {
          *buf = 136315650;
          v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
          v76 = 2112;
          v77 = identityCopy;
          v78 = 2048;
          v79 = placeholderFailureReason;
          v43 = "%s: No coordinator found for %@ and error is a hard error (%ld) so showing alert";
          v44 = v40;
          v45 = 32;
LABEL_58:
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
        }

LABEL_59:

        v54 = +[IXSErrorPresenter sharedPresenter];
        [v54 presentErrorForIdentity:identityCopy code:placeholderFailureReason underlyingError:v42 errorSource:v60];
        v15 = 0;
        identityCopy = v64;
LABEL_69:

        identityCopy2 = v67;
        identityCopy3 = v65;
        goto LABEL_70;
      }

      v16 = v63;
      if (v31)
      {
        v42 = placeholderFailureUnderlyingError;
        if (!v41)
        {
          goto LABEL_59;
        }

        *buf = 136315394;
        v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
        v76 = 2112;
        v77 = identityCopy;
        v43 = "%s: No coordinator found for %@ and prioritize is otherwise unhandled; showing alert";
      }

      else
      {
        v42 = placeholderFailureUnderlyingError;
        if (!v41)
        {
          goto LABEL_59;
        }

        *buf = 136315394;
        v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
        v76 = 2112;
        v77 = identityCopy;
        v43 = "%s: No coordinator found for %@ and app is not vendable by App Store so showing alert";
      }

      v44 = v40;
      v45 = 22;
      goto LABEL_58;
    }

    if ((v59 | v57))
    {
      v52 = 13;
      v16 = v63;
      identityCopy = v64;
    }

    else
    {
      if (v36 == 23)
      {
        v53 = sub_1000031B0(off_100121958);
        v16 = v63;
        identityCopy = v64;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
          v76 = 2112;
          v77 = identityCopy;
          v78 = 2048;
          v79 = placeholderFailureReason;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%s: No coordinator found for %@ and app is vendable by MDM (error %ld); sending message to prioritize by identity.", buf, 0x20u);
        }

        v52 = 23;
      }

      else
      {
        if (!v31)
        {
          goto LABEL_24;
        }

        if (distributorIsThirdParty)
        {
          v52 = 28;
        }

        else
        {
          v52 = 1;
        }

        v53 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = IXStringForClientID(v52);
          *buf = 136315906;
          v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
          v76 = 2112;
          v77 = identityCopy;
          v78 = 2048;
          v79 = v62;
          v80 = 2112;
          v81 = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%s: No coordinator found for %@ and app is vendable by App Store (error %ld); sending message to prioritize by identity to %@.", buf, 0x2Au);
        }

        v16 = v63;
        identityCopy = v64;
      }
    }

    v42 = +[IXSAppInstallObserverManager sharedInstance];
    v54 = [NSNumber numberWithUnsignedInteger:v52];
    v56 = [NSSet setWithObjects:v54, 0];
    [v42 shouldPrioritizeAppWithIdentity:identityCopy forClientIDs:v56];

    v15 = 0;
    goto LABEL_69;
  }

  (*(completionCopy + 2))(completionCopy, 0, v9);
LABEL_76:
}

- (void)_remote_purgeRegisteredCoordinatorsAndPromisesForCreator:(unint64_t)creator completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v8 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v9 = sub_1000031B0(off_100121958);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = IXStringForClientID(creator);
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v20 = "[IXSClientConnection _remote_purgeRegisteredCoordinatorsAndPromisesForCreator:completion:]";
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = clientName;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Purging all registered coordinators and promises for creator %@ as requested by %@", buf, 0x20u);
    }

    v13 = +[IXSCoordinatorManager sharedInstance];
    [v13 clearAllCoordinatorsForCreator:creator];

    v14 = +[IXSDataPromiseManager sharedInstance];
    [v14 clearAllPromisesForCreator:creator];

    v15 = +[IXSPendingOperationsTracker sharedInstance];
    [v15 clearAllPendingOperations];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A489C(self);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v18 = sub_1000405FC("[IXSClientConnection _remote_purgeRegisteredCoordinatorsAndPromisesForCreator:completion:]", 996, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v17, clientName2);

    completionCopy[2](completionCopy, v18);
    completionCopy = v18;
  }
}

- (void)_remote_killDaemonForTestingWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315394;
      v14 = "[IXSClientConnection _remote_killDaemonForTestingWithCompletion:]";
      v15 = 2112;
      v16 = clientName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Exiting because testing client %@ told us to", buf, 0x16u);
    }

    exit(1);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000A4934(self);
  }

  clientName2 = [(IXSClientConnection *)self clientName];
  v11 = sub_1000405FC("[IXSClientConnection _remote_killDaemonForTestingWithCompletion:]", 1016, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v10, clientName2);

  completionCopy[2](completionCopy, v11);
}

- (void)_remote_pingDaemonWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[IXSClientConnection _remote_pingDaemonWithCompletion:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Ping", buf, 0xCu);
    }

    v9 = getpid();
    completionCopy[2](completionCopy, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A49CC(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    v12 = sub_1000405FC("[IXSClientConnection _remote_pingDaemonWithCompletion:]", 1033, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v11, clientName);

    completionCopy[2](completionCopy, 0xFFFFFFFFLL, v12);
    completionCopy = v12;
  }
}

- (void)_remote_fakeClientDeathWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315394;
      v14 = "[IXSClientConnection _remote_fakeClientDeathWithCompletion:]";
      v15 = 2112;
      v16 = clientName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Faking death of client %@", buf, 0x16u);
    }

    [(IXSClientConnection *)self setFakeClientProcessDeath:1];
    [(IXSClientConnection *)self cancelOrphanedPromisesAndRemovePromiseReferences];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4A64(self);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v12 = sub_1000405FC("[IXSClientConnection _remote_fakeClientDeathWithCompletion:]", 1049, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v11, clientName2);

    completionCopy[2](completionCopy, v12);
    completionCopy = v12;
  }
}

- (void)_remote_postNSCurrentLocaleDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315394;
      v15 = "[IXSClientConnection _remote_postNSCurrentLocaleDidChangeNotification:]";
      v16 = 2112;
      v17 = clientName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Posting NSCurrentLocaleDidChangeNotification because testing client %@ told us to", buf, 0x16u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:NSCurrentLocaleDidChangeNotification object:0];

    notificationCopy[2](notificationCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4AFC(self);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v13 = sub_1000405FC("[IXSClientConnection _remote_postNSCurrentLocaleDidChangeNotification:]", 1075, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v12, clientName2);

    notificationCopy[2](notificationCopy, v13);
    notificationCopy = v13;
  }
}

- (void)_remote_setTestingEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v8 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v9 = sub_1000031B0(off_100121958);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (enabledCopy)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v17 = "[IXSClientConnection _remote_setTestingEnabled:completion:]";
      v18 = 1024;
      v19 = v11;
      v20 = 2112;
      v21 = clientName;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Setting testing enabled to %c by client %@", buf, 0x1Cu);
    }

    if (enabledCopy)
    {
      sub_10003B480();
    }

    else
    {
      sub_10003B494();
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4B94(self);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v15 = sub_1000405FC("[IXSClientConnection _remote_setTestingEnabled:completion:]", 1093, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v14, clientName2);

    completionCopy[2](completionCopy, v15);
    completionCopy = v15;
  }
}

- (void)_remote_setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode testSpecificValidationData:(id)data completion:(id)completion
{
  prefixCopy = prefix;
  dataCopy = data;
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v14 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.unitTestRunner");

  v15 = sub_1000031B0(off_100121958);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v22 = "[IXSClientConnection _remote_setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:completion:]";
      v23 = 2048;
      modeCopy = mode;
      v25 = 2112;
      v26 = prefixCopy;
      v27 = 2112;
      v28 = clientName;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Setting test mode %lu for bundle prefix %@ by client %@", buf, 0x2Au);
    }

    sub_10003B2E8(prefixCopy, mode, dataCopy);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4C2C(self);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v20 = sub_1000405FC("[IXSClientConnection _remote_setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:completion:]", 1115, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v19, clientName2);

    completionCopy[2](completionCopy, v20);
    completionCopy = v20;
  }
}

- (void)_remote_registerContentsForDiskImageAtURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v11 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.diskImageContentRegistration");

  if ((v11 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4CC4(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_registerContentsForDiskImageAtURL:options:completion:]", 1155, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing disk image (client registration/unregistration) operation entitlement.", v17, clientName);
    goto LABEL_9;
  }

  v12 = sub_1000031B0(off_100121958);
  v13 = v12;
  if (options)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4D5C(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_registerContentsForDiskImageAtURL:options:completion:]", 1161, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, clientName);
    v18 = LABEL_9:;

    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    clientName2 = [(IXSClientConnection *)self clientName];
    *buf = 136315650;
    v23 = "[IXSClientConnection _remote_registerContentsForDiskImageAtURL:options:completion:]";
    v24 = 2112;
    v25 = path;
    v26 = 2112;
    v27 = clientName2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Registering contents for disk image mounted at %@ by client %@", buf, 0x20u);
  }

  v21 = MobileInstallationRegisterContentsForDiskImageAtURL();
  v18 = 0;
  completionCopy[2](completionCopy, v21, v18);
LABEL_10:
}

- (void)_remote_unregisterContentsForDiskImageAtURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v11 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.diskImageContentRegistration");

  if ((v11 & 1) == 0)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4DF4(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]", 1179, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing disk image (contents registration/unregistration) operation entitlement.", v16, clientName);
    goto LABEL_9;
  }

  if (options)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4E8C(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]", 1185, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v14, clientName);
    v17 = LABEL_9:;

    completionCopy[2](completionCopy, 0, v17);
    goto LABEL_10;
  }

  path = [lCopy path];
  v19 = realpath_DARWIN_EXTSN([path fileSystemRepresentation], 0);
  if (v19)
  {
    v20 = [NSString stringWithFileSystemRepresentation:v19];
    v21 = 0;
  }

  else
  {
    v22 = __error();
    v52 = *v22;
    strerror(*v22);
    v21 = sub_1000405FC("_SanitizedRealPath", 1135, NSPOSIXErrorDomain, v52, 0, 0, @"Failed to retrieve realpath for %@ : %d (%s)", v23, path);
    v20 = 0;
  }

  free(v19);
  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v25 = v21;
    v24 = v21;
  }

  v57 = v24;
  if (!v20)
  {
    v44 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      clientName2 = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v66 = "[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]";
      v67 = 2112;
      v68 = clientName2;
      v69 = 2112;
      v70 = path;
      v71 = 2112;
      v72 = v57;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: Client %@ has passed an invalid disk image path %@ : %@", buf, 0x2Au);
    }

    clientName3 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]", 1196, @"IXErrorDomain", 0x35uLL, v57, 0, @"Client %@ has passed an invalid disk image path %@", v46, clientName3);

    completionCopy[2](completionCopy, 0, v17);
    goto LABEL_47;
  }

  selfCopy = self;
  v54 = path;
  v55 = completionCopy;
  v56 = lCopy;
  v26 = [LSApplicationRecord enumeratorWithOptions:0];
  v27 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = v29;
  v31 = *v61;
  do
  {
    for (i = 0; i != v30; i = i + 1)
    {
      if (*v61 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v60 + 1) + 8 * i);
      bundleIdentifier = [v33 URL];
      path2 = [bundleIdentifier path];
      if ([path2 hasPrefix:v20])
      {
        isPlaceholder = [v33 isPlaceholder];

        if (isPlaceholder)
        {
          continue;
        }

        bundleIdentifier = [v33 bundleIdentifier];
        [v27 addObject:bundleIdentifier];
      }

      else
      {
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v60 objects:v64 count:16];
  }

  while (v30);
LABEL_30:

  if (![v27 count])
  {
    v40 = 0;
    v42 = v57;
    goto LABEL_38;
  }

  v37 = [IXTerminationAssertion alloc];
  v38 = [v27 copy];
  v39 = [NSString stringWithFormat:@"Unregistering %@ for unmounting disk image at %@", v27, v20];
  v59 = v57;
  v40 = [(IXTerminationAssertion *)v37 initForBundleIDs:v38 description:v39 terminationResistance:40 error:&v59];
  v17 = v59;

  if (v40)
  {
    v58 = v17;
    v41 = [v40 acquireAssertion:&v58];
    v42 = v58;

    if (!v41)
    {
      v43 = 0;
      v17 = v42;
      goto LABEL_46;
    }

LABEL_38:
    v47 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      clientName4 = [(IXSClientConnection *)selfCopy clientName];
      *buf = 136315650;
      v66 = "[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]";
      v67 = 2112;
      v68 = v20;
      v69 = 2112;
      v70 = clientName4;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%s: Unregistering contents on disk image mounted at %@ by client %@", buf, 0x20u);
    }

    v49 = MobileInstallationUnregisterContentsForDiskImageAtURL();
    v17 = v42;

    if (v49)
    {
      v43 = 1;
      goto LABEL_46;
    }

    v50 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4F24();
    }
  }

  v43 = 0;
LABEL_46:
  completionCopy = v55;
  [v40 invalidate];
  completionCopy[2](completionCopy, v43, v17);

  lCopy = v56;
  path = v54;
LABEL_47:

LABEL_10:
}

- (void)_remote_registerContentForOSModuleAtURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  clientName = [(IXSClientConnection *)self clientName];
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v12 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.OSModuleOperations");

  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4FA4();
    }

    sub_1000405FC("[IXSClientConnection _remote_registerContentForOSModuleAtURL:options:completion:]", 1246, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing OSModule operation entitlement.", v17, clientName);
    goto LABEL_9;
  }

  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (options)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5018();
    }

    sub_1000405FC("[IXSClientConnection _remote_registerContentForOSModuleAtURL:options:completion:]", 1252, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, clientName);
    v18 = LABEL_9:;
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 136315650;
    v22 = "[IXSClientConnection _remote_registerContentForOSModuleAtURL:options:completion:]";
    v23 = 2112;
    v24 = path;
    v25 = 2112;
    v26 = clientName;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Registering contents for OSModule at %@ by client %@", buf, 0x20u);
  }

  v20 = MobileInstallationRegisterContentsOnOSModuleAtURL();
  v18 = 0;
  completionCopy[2](completionCopy, v20, v18);
LABEL_10:
}

- (void)_remote_unregisterContentForOSModuleAtURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  clientName = [(IXSClientConnection *)self clientName];
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v12 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.OSModuleOperations");

  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A508C();
    }

    sub_1000405FC("[IXSClientConnection _remote_unregisterContentForOSModuleAtURL:options:completion:]", 1279, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing OS Module operation entitlement.", v17, clientName);
    goto LABEL_9;
  }

  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (options)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5100();
    }

    sub_1000405FC("[IXSClientConnection _remote_unregisterContentForOSModuleAtURL:options:completion:]", 1285, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, clientName);
    v18 = LABEL_9:;
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 136315650;
    v22 = "[IXSClientConnection _remote_unregisterContentForOSModuleAtURL:options:completion:]";
    v23 = 2112;
    v24 = path;
    v25 = 2112;
    v26 = clientName;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Unregistering contents of OSModule at %@ by client %@", buf, 0x20u);
  }

  v20 = MobileInstallationUnregisterContentsOnOSModuleAtURL();
  v18 = 0;
  completionCopy[2](completionCopy, v20, v18);
LABEL_10:
}

- (void)_remote_setKnownOSModuleURLs:(id)ls options:(id)options completion:(id)completion
{
  lsCopy = ls;
  completionCopy = completion;
  clientName = [(IXSClientConnection *)self clientName];
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v12 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.OSModuleOperations");

  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5174();
    }

    sub_1000405FC("[IXSClientConnection _remote_setKnownOSModuleURLs:options:completion:]", 1312, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing OSModule operation entitlement.", v17, clientName);
    goto LABEL_9;
  }

  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (options)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A51E8();
    }

    sub_1000405FC("[IXSClientConnection _remote_setKnownOSModuleURLs:options:completion:]", 1318, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, clientName);
    v18 = LABEL_9:;
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[IXSClientConnection _remote_setKnownOSModuleURLs:options:completion:]";
    v22 = 2112;
    v23 = lsCopy;
    v24 = 2112;
    v25 = clientName;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Reconciling known OSModule URLs %@ set by client %@", buf, 0x20u);
  }

  v19 = MobileInstallationReconcileContentsOnKnownOSModules();
  v18 = 0;
  completionCopy[2](completionCopy, v19, v18);
LABEL_10:
}

- (void)_remote_associateMultiPersonaAppsWithBundleIDs:(id)ds withPersona:(id)persona completion:(id)completion
{
  dsCopy = ds;
  personaCopy = persona;
  completionCopy = completion;
  v30 = 0;
  v11 = sub_10007C830(&v30);
  v12 = v30;
  if (v11)
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    v14 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.personaBasedMultiUser");

    v15 = sub_1000031B0(off_100121958);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        clientName = [(IXSClientConnection *)self clientName];
        allObjects = [dsCopy allObjects];
        v19 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 136315906;
        v32 = "[IXSClientConnection _remote_associateMultiPersonaAppsWithBundleIDs:withPersona:completion:]";
        v33 = 2112;
        v34 = clientName;
        v35 = 2112;
        v36 = personaCopy;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client %@ associating persona %@ with bundle IDs: %@", buf, 0x2Au);
      }

      v20 = [IXTerminationAssertion alloc];
      dsCopy = [NSString stringWithFormat:@"Assertion for associating persona %@ : %@", personaCopy, dsCopy];
      v29 = v12;
      v22 = [(IXTerminationAssertion *)v20 initForBundleIDs:dsCopy description:dsCopy terminationResistance:50 error:&v29];
      v23 = v29;

      if (v22)
      {
        v28 = v23;
        v24 = [v22 acquireAssertion:&v28];
        v25 = v28;

        if (v24)
        {
          v24 = MobileInstallationSetPersonaForDataSeparatedApps();
          v23 = v25;
        }

        else
        {
          v23 = v25;
        }
      }

      else
      {
        v24 = 0;
      }

      [v22 invalidate];
      completionCopy[2](completionCopy, v24, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A525C(self);
      }

      clientName2 = [(IXSClientConnection *)self clientName];
      v23 = sub_1000405FC("[IXSClientConnection _remote_associateMultiPersonaAppsWithBundleIDs:withPersona:completion:]", 1380, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing persona based multi user (associating bundleIDs with persona) operation entitlement.", v27, clientName2);

      completionCopy[2](completionCopy, 0, v23);
    }

    v12 = v23;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)_remote_addBundleIDs:(id)ds toMappingsForPersona:(id)persona completion:(id)completion
{
  dsCopy = ds;
  personaCopy = persona;
  completionCopy = completion;
  v30 = 0;
  v11 = sub_10007C830(&v30);
  v12 = v30;
  if (v11)
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    v14 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.personaBasedMultiUser");

    v15 = sub_1000031B0(off_100121958);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        clientName = [(IXSClientConnection *)self clientName];
        allObjects = [dsCopy allObjects];
        v19 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 136315906;
        v32 = "[IXSClientConnection _remote_addBundleIDs:toMappingsForPersona:completion:]";
        v33 = 2112;
        v34 = clientName;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = personaCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client %@ adding bundleID %@ to persona: %@", buf, 0x2Au);
      }

      v20 = [IXTerminationAssertion alloc];
      dsCopy = [NSString stringWithFormat:@"Assertion for associating persona %@ : %@", personaCopy, dsCopy];
      v29 = v12;
      v22 = [(IXTerminationAssertion *)v20 initForBundleIDs:dsCopy description:dsCopy terminationResistance:50 error:&v29];
      v23 = v29;

      if (v22)
      {
        v28 = v23;
        v24 = [v22 acquireAssertion:&v28];
        v25 = v28;

        if (v24)
        {
          v24 = MobileInstallationAddDataSeparatedAppsToPersona();
          v23 = v25;
        }

        else
        {
          v23 = v25;
        }
      }

      else
      {
        v24 = 0;
      }

      [v22 invalidate];
      completionCopy[2](completionCopy, v24, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A53FC(self);
      }

      clientName2 = [(IXSClientConnection *)self clientName];
      v23 = sub_1000405FC("[IXSClientConnection _remote_addBundleIDs:toMappingsForPersona:completion:]", 1414, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing persona based multi user (associating bundleIDs with persona) operation entitlement.", v27, clientName2);

      completionCopy[2](completionCopy, 0, v23);
    }

    v12 = v23;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)_remote_removeBundleIDs:(id)ds fromMappingsForPersona:(id)persona completion:(id)completion
{
  dsCopy = ds;
  personaCopy = persona;
  completionCopy = completion;
  v30 = 0;
  v11 = sub_10007C830(&v30);
  v12 = v30;
  if (v11)
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    v14 = sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.personaBasedMultiUser");

    v15 = sub_1000031B0(off_100121958);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        clientName = [(IXSClientConnection *)self clientName];
        allObjects = [dsCopy allObjects];
        v19 = [allObjects componentsJoinedByString:{@", "}];
        *buf = 136315906;
        v32 = "[IXSClientConnection _remote_removeBundleIDs:fromMappingsForPersona:completion:]";
        v33 = 2112;
        v34 = clientName;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = personaCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client %@ removing bundle IDs: %@ from persona %@", buf, 0x2Au);
      }

      v20 = [IXTerminationAssertion alloc];
      dsCopy = [NSString stringWithFormat:@"Assertion for disassociating persona %@ : %@", personaCopy, dsCopy];
      v29 = v12;
      v22 = [(IXTerminationAssertion *)v20 initForBundleIDs:dsCopy description:dsCopy terminationResistance:50 error:&v29];
      v23 = v29;

      if (v22)
      {
        v28 = v23;
        v24 = [v22 acquireAssertion:&v28];
        v25 = v28;

        if (v24)
        {
          v24 = MobileInstallationRemoveDataSeparatedAppsFromPersona();
          v23 = v25;
        }

        else
        {
          v23 = v25;
        }
      }

      else
      {
        v24 = 0;
      }

      [v22 invalidate];
      completionCopy[2](completionCopy, v24, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5494(self);
      }

      clientName2 = [(IXSClientConnection *)self clientName];
      v23 = sub_1000405FC("[IXSClientConnection _remote_removeBundleIDs:fromMappingsForPersona:completion:]", 1448, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing persona based multi user (associating bundleIDs with persona) operation entitlement.", v27, clientName2);

      completionCopy[2](completionCopy, 0, v23);
    }

    v12 = v23;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)_remote_removabilityForAppWithIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v17 = 0;
  v8 = [identityCopy resolvePersonaWithError:&v17];
  v9 = v17;
  if (v8)
  {
    bundleID = [identityCopy bundleID];
    v11 = +[IXSAppRemovabilityManager sharedInstance];
    v12 = [v11 removabilityMetadataForAppWithIdentity:identityCopy];

    removability = [v12 removability];
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = IXStringForAppRemovability(removability);
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v19 = "[IXSClientConnection _remote_removabilityForAppWithIdentity:completion:]";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = bundleID;
      v24 = 2112;
      v25 = clientName;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Returning removability %@ for %@ to client %@", buf, 0x2Au);
    }

    completionCopy[2](completionCopy, removability, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)_remote_removabilityForAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v18 = 0;
  v10 = [identityCopy resolvePersonaWithError:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = +[IXSAppRemovabilityManager sharedInstance];
    v13 = [v12 removabilityForAppWithIdentity:identityCopy client:client];

    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = IXStringForAppRemovability(v13);
      v16 = IXStringForAppRemovabilityClient(client);
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v20 = "[IXSClientConnection _remote_removabilityForAppWithIdentity:byClient:completion:]";
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = identityCopy;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = clientName;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Returning removability %@ set for %@ by client %@ to caller %@", buf, 0x34u);
    }

    completionCopy[2](completionCopy, v13, 0);
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v11);
  }
}

- (void)_remote_setRemovability:(unint64_t)removability forAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v31 = 0;
  v12 = [identityCopy resolvePersonaWithError:&v31];
  v13 = v31;
  if (v12)
  {
    bundleID = [identityCopy bundleID];
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    v15 = sub_10000D71C(xpcConnection, @"com.apple.springboard.application-removability.proxy");
    v16 = sub_1000031B0(off_100121958);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = IXStringForAppRemovability(removability);
        clientName = [(IXSClientConnection *)self clientName];
        v20 = IXStringForAppRemovabilityClient(client);
        *buf = 136316162;
        v33 = "[IXSClientConnection _remote_setRemovability:forAppWithIdentity:byClient:completion:]";
        v34 = 2112;
        v35 = bundleID;
        v36 = 2112;
        v37 = v18;
        v38 = 2112;
        v39 = clientName;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Setting removability for %@ to %@ for client %@ with type %@", buf, 0x34u);
      }

      v21 = +[IXSAppRemovabilityManager sharedInstance];
      v30 = v13;
      v22 = [v21 setRemovability:removability forAppWithIdentity:identityCopy byClient:client error:&v30];
      v23 = v30;

      if (v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
        if (!v23)
        {
          v27 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000A55D0();
          }

          v24 = sub_1000405FC("[IXSClientConnection _remote_setRemovability:forAppWithIdentity:byClient:completion:]", 1538, @"IXErrorDomain", 0xEuLL, 0, 0, @"[IXSAppRemovabilityManager setRemovability:] for %@ returned NO but did not set an error.", v28, bundleID);
          v23 = v24;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000A552C(self);
      }

      clientName2 = [(IXSClientConnection *)self clientName];
      v24 = sub_1000405FC("[IXSClientConnection _remote_setRemovability:forAppWithIdentity:byClient:completion:]", 1524, @"IXErrorDomain", 4uLL, 0, 0, @"Client %@ is missing %@ entitlement, rejecting attempt to set app removability.", v26, clientName2);

      v23 = v24;
    }

    completionCopy[2](completionCopy, v24);

    v13 = v23;
  }

  else
  {
    completionCopy[2](completionCopy, v13);
  }
}

- (void)_remote_removabilityDataWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(xpcConnection, @"com.apple.springboard.application-removability.proxy");
  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A56E8(self, v8);
    }

    v9 = +[IXSAppRemovabilityManager sharedInstance];
    v22 = 0;
    v10 = [v9 removabilityDataWithChangeClock:&v22];
    v11 = v22;

    if (v10)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10007D990;
      v20[3] = &unk_100101FE0;
      v21 = objc_opt_new();
      v12 = v21;
      [v10 enumerateKeysAndObjectsUsingBlock:v20];
      v13 = [v12 copy];
      completionCopy[2](completionCopy, v13, v11, 0);

      v14 = 0;
    }

    else
    {
      v17 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000A578C();
      }

      v14 = sub_1000405FC("[IXSClientConnection _remote_removabilityDataWithCompletion:]", 1565, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpectedly received nil value for app removability data", v18, v19);
      (completionCopy)[2](completionCopy, 0, 0, v14);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5644(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    v14 = sub_1000405FC("[IXSClientConnection _remote_removabilityDataWithCompletion:]", 1553, @"IXErrorDomain", 4uLL, 0, 0, @"Client %@ is missing %@ entitlement, rejecting attempt to read app removability data.", v16, clientName);

    (completionCopy)[2](completionCopy, 0, 0, v14);
  }
}

- (void)_remote_defaultAppMetadataForAppIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v7 = +[IXSDefaultAppDeletionManager sharedInstance];
  v10 = 0;
  v8 = [v7 defaultAppMetadataForAppIdentity:identityCopy error:&v10];

  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)_remote_defaultAppMetadataListWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IXSDefaultAppDeletionManager sharedInstance];
  v7 = 0;
  v5 = [v4 defaultAppMetadataListWithError:&v7];
  v6 = v7;

  completionCopy[2](completionCopy, v5, v6);
}

- (void)_remote_uninstallAppWithIdentity:(id)identity options:(id)options completion:(id)completion
{
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  if ((sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.uninstall") & 1) == 0)
  {
    v12 = sub_10000D834(xpcConnection, @"UninstallForLaunchServices");

    v13 = sub_1000031B0(off_100121958);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        sub_1000A5810(self);
      }

      clientName = [(IXSClientConnection *)self clientName];
      sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1608, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing entitlement %@ : TRUE (BOOLean) to uninstall applications", v16, clientName);
      v20 = LABEL_46:;

LABEL_47:
      completionCopy[2](completionCopy, 0, v20);
      goto LABEL_48;
    }

    if (v14)
    {
      sub_1000A58B4(self);
    }
  }

  if ([optionsCopy ignoreRemovability] && (sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.ignoreRemovability") & 1) == 0)
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5978(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1616, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing ignore removability operation entitlement.", v25, clientName);
    goto LABEL_46;
  }

  if ([optionsCopy ignoreRestrictions] && (sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.ignoreRestrictions") & 1) == 0)
  {
    v26 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5A10(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1624, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing ignore restrictions operation entitlement.", v27, clientName);
    goto LABEL_46;
  }

  if ([optionsCopy ignoreAppProtection] && (sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.ignoreAppProtection") & 1) == 0)
  {
    v28 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5AA8(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1632, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing ignore app protection operation entitlement.", v29, clientName);
    goto LABEL_46;
  }

  v17 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    clientName2 = [(IXSClientConnection *)self clientName];
    *buf = 136315906;
    v34 = "[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]";
    v35 = 2112;
    v36 = identityCopy;
    v37 = 2112;
    v38 = clientName2;
    v39 = 2112;
    v40 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Uninstall of %@ requested by client %@ with uninstall options %@", buf, 0x2Au);
  }

  v32 = 0;
  v19 = [identityCopy resolvePersonaWithError:&v32];
  v20 = v32;
  if ((v19 & 1) == 0)
  {
    goto LABEL_47;
  }

  if ([optionsCopy requestUserConfirmation])
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if ([optionsCopy waitForDeletion])
  {
    v21 |= 4uLL;
  }

  if ([optionsCopy showArchiveOption])
  {
    v21 |= 8uLL;
  }

  if ([optionsCopy systemAppNotAllowed])
  {
    v21 |= 0x10uLL;
  }

  if ([optionsCopy showDemotionOption])
  {
    v21 |= 0x20uLL;
  }

  if ([optionsCopy ignoreRemovability])
  {
    v21 |= 0x40uLL;
  }

  if ([optionsCopy ignoreRestrictions])
  {
    v21 |= 0x80uLL;
  }

  if ([optionsCopy ignoreAppProtection])
  {
    v21 |= 0x100uLL;
  }

  v22 = +[IXSAppUninstaller sharedUninstaller];
  clientName3 = [(IXSClientConnection *)self clientName];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10007E078;
  v30[3] = &unk_1001032E0;
  v31 = completionCopy;
  [v22 uninstallAppWithIdentity:identityCopy clientName:clientName3 options:v21 completion:v30];

LABEL_48:
}

- (void)_remote_revertAppWithIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v13 = 0;
  v8 = [identityCopy resolvePersonaWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v15 = "[IXSClientConnection _remote_revertAppWithIdentity:completion:]";
      v16 = 2112;
      v17 = identityCopy;
      v18 = 2112;
      v19 = clientName;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Revert of %@ requested by client %@", buf, 0x20u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    [IXSRevertManager revertAppWithIdentity:identityCopy forClientWithName:clientName2 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (void)_remote_refreshContainersWithOptions:(id)options forAppWithIdentity:(id)identity completion:(id)completion
{
  optionsCopy = options;
  identityCopy = identity;
  completionCopy = completion;
  v24 = 0;
  v11 = [identityCopy resolvePersonaWithError:&v24];
  v12 = v24;
  if (v11)
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if ((sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.refreshContainerTypes") & 1) == 0)
    {
      v14 = sub_10000D834(xpcConnection, @"UninstallForLaunchServices");

      v15 = sub_1000031B0(off_100121958);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          sub_1000A5B40(self);
        }

        clientName = [(IXSClientConnection *)self clientName];
        v19 = sub_1000405FC("[IXSClientConnection _remote_refreshContainersWithOptions:forAppWithIdentity:completion:]", 1708, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing entitlement %@ = TRUE (BOOLean) to refresh containers", v18, clientName);

        completionCopy[2](completionCopy, v19);
        v12 = v19;
LABEL_14:

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1000A5BE4(self);
      }
    }

    v20 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      containerTypes = [optionsCopy containerTypes];
      clientName2 = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v26 = "[IXSClientConnection _remote_refreshContainersWithOptions:forAppWithIdentity:completion:]";
      v27 = 2048;
      v28 = containerTypes;
      v29 = 2112;
      v30 = identityCopy;
      v31 = 2112;
      v32 = clientName2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Refreshing container types 0x%lx of %@ requested by client %@", buf, 0x2Au);
    }

    v23 = +[IXSContainerRefreshManager sharedInstance];
    [v23 refreshContainerTypesWithOptions:optionsCopy forAppWithIdentity:identityCopy completion:completionCopy];

    goto LABEL_14;
  }

  completionCopy[2](completionCopy, v12);
LABEL_15:
}

- (void)_remote_registerObserverMachServiceName:(id)name forClientIdentifiers:(id)identifiers respondingToSelectors:(unint64_t)selectors
{
  nameCopy = name;
  identifiersCopy = identifiers;
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    clientName = [(IXSClientConnection *)self clientName];
    v13 = 136316162;
    v14 = "[IXSClientConnection _remote_registerObserverMachServiceName:forClientIdentifiers:respondingToSelectors:]";
    v15 = 2112;
    v16 = clientName;
    v17 = 2112;
    v18 = nameCopy;
    v19 = 2112;
    v20 = identifiersCopy;
    v21 = 2048;
    selectorsCopy = selectors;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ registered mach service name %@ for client identifiers %@ responding to selectors %lu", &v13, 0x34u);
  }

  v12 = +[IXSAppInstallObserverManager sharedInstance];
  [v12 registerMachServiceName:nameCopy forClientIDs:identifiersCopy respondingToSelectors:selectors];
}

- (void)_remote_registerTransientObserver:(id)observer forClientIdentifiers:(id)identifiers respondingToSelectors:(unint64_t)selectors
{
  observerCopy = observer;
  identifiersCopy = identifiers;
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    clientName = [(IXSClientConnection *)self clientName];
    v13 = 136316162;
    v14 = "[IXSClientConnection _remote_registerTransientObserver:forClientIdentifiers:respondingToSelectors:]";
    v15 = 2112;
    v16 = clientName;
    v17 = 2112;
    v18 = observerCopy;
    v19 = 2112;
    v20 = identifiersCopy;
    v21 = 2048;
    selectorsCopy = selectors;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ registered transient observer %@ for client identifiers %@ responding to selectors %lu", &v13, 0x34u);
  }

  v12 = +[IXSAppInstallObserverManager sharedInstance];
  [v12 registerListenerEndpoint:observerCopy forClientIDs:identifiersCopy respondingToSelectors:selectors];
}

- (void)_remote_displayUserPresentableErrorForApp:(id)app code:(int64_t)code
{
  appCopy = app;
  v7 = appCopy;
  if (!appCopy)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      v11 = 136315650;
      v12 = "[IXSClientConnection _remote_displayUserPresentableErrorForApp:code:]";
      v13 = 2080;
      v14 = "[IXSClientConnection _remote_displayUserPresentableErrorForApp:code:]";
      v15 = 2112;
      v16 = clientName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Got nil identity in call to %s from client %@", &v11, 0x20u);
    }

    goto LABEL_8;
  }

  if (([appCopy resolvePersonaWithError:0] & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[IXSClientConnection _remote_displayUserPresentableErrorForApp:code:]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to resolve persona for %@", &v11, 0x16u);
    }

LABEL_8:

    goto LABEL_9;
  }

  v8 = +[IXSErrorPresenter sharedPresenter];
  [v8 presentErrorForIdentity:v7 code:code underlyingError:0 errorSource:0];

LABEL_9:
}

- (void)_remote_displayUserPresentableErrorForApps:(id)apps code:(int64_t)code
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  appsCopy = apps;
  v6 = [appsCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(appsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 resolvePersonaWithError:{0, v13}] & 1) == 0)
        {
          v12 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v18 = "[IXSClientConnection _remote_displayUserPresentableErrorForApps:code:]";
            v19 = 2112;
            v20 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to resolve persona for %@", buf, 0x16u);
          }

          v11 = appsCopy;
          goto LABEL_13;
        }
      }

      v7 = [appsCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[IXSErrorPresenter sharedPresenter];
  [v11 presentErrorForIdentities:appsCopy code:code underlyingError:0 errorSource:0];
LABEL_13:
}

- (void)_remote_displayUserPresentableErrorForAppWithLocalizedName:(id)name code:(int64_t)code
{
  nameCopy = name;
  v6 = +[IXSErrorPresenter sharedPresenter];
  [v6 presentErrorForAppWithLocalizedName:nameCopy code:code underlyingError:0 errorSource:0];
}

- (void)_remote_addObserversForCoordinatorsWithUUIDs:(id)ds fireObserverMethods:(BOOL)methods
{
  methodsCopy = methods;
  dsCopy = ds;
  [(IXSClientConnection *)self addInterestedCoordinatorUUIDs:dsCopy];
  if (methodsCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = dsCopy;
    v7 = dsCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = +[IXSCoordinatorManager sharedInstance];
          v15 = [v14 coordinatorForUUID:v12];

          if (v15)
          {
            [v15 _remote_fireObserversForClient:self completion:&stru_100103370];
          }

          else
          {
            v16 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v25 = "[IXSClientConnection _remote_addObserversForCoordinatorsWithUUIDs:fireObserverMethods:]";
              v26 = 2112;
              v27 = v12;
              v28 = 2112;
              v29 = 0;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Failed to locate coordinator with UUID %@ when trying to add observer for it : %@", buf, 0x20u);
            }

            v18 = sub_1000405FC("[IXSClientConnection _remote_addObserversForCoordinatorsWithUUIDs:fireObserverMethods:]", 1798, @"IXErrorDomain", 6uLL, 0, 0, @"Failed to locate coordinator with UUID %@ when trying to add observer for it", v17, v12);
            [(IXSClientConnection *)self _client_coordinatorWithUUID:v12 didCancelWithReason:v18 client:15];
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v9);
    }

    dsCopy = v19;
  }
}

- (void)_remote_updateSINFForAppWithIdentity:(id)identity sinfData:(id)data options:(id)options completion:(id)completion
{
  identityCopy = identity;
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  v25 = 0;
  v14 = [identityCopy resolvePersonaWithError:&v25];
  v15 = v25;
  if (v14)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v27 = "[IXSClientConnection _remote_updateSINFForAppWithIdentity:sinfData:options:completion:]";
      v28 = 2112;
      v29 = clientName;
      v30 = 2112;
      v31 = identityCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ wants to update the SINF of %@", buf, 0x20u);
    }

    +[IXSCoordinatorManager sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10007F018;
    v20 = v19[3] = &unk_100103188;
    v21 = identityCopy;
    v22 = optionsCopy;
    v23 = dataCopy;
    v24 = completionCopy;
    v18 = v20;
    [v18 performCreationBlockingOperation:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

- (void)_remote_updateiTunesMetadata:(id)metadata forAppWithIdentity:(id)identity completion:(id)completion
{
  metadataCopy = metadata;
  identityCopy = identity;
  completionCopy = completion;
  v25 = 0;
  v11 = [identityCopy resolvePersonaWithError:&v25];
  v12 = v25;
  if (v11)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v27 = "[IXSClientConnection _remote_updateiTunesMetadata:forAppWithIdentity:completion:]";
      v28 = 2112;
      v29 = clientName;
      v30 = 2112;
      v31 = identityCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@ wants to update the iTunesMetadata of %@", buf, 0x20u);
    }

    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    v24 = v12;
    v16 = sub_10000DB10(metadataCopy, xpcConnection, @"updated metadata", &v24);
    v17 = v24;

    if (v16)
    {
      +[IXSCoordinatorManager sharedInstance];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10007F458;
      v20 = v19[3] = &unk_1001010C8;
      v21 = identityCopy;
      v16 = v16;
      v22 = v16;
      v23 = completionCopy;
      v18 = v20;
      [v18 performCreationBlockingOperation:v19];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v17);
    }

    v12 = v17;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v12);
    v16 = 0;
  }
}

- (void)_remote_stagingLocationForInstallLocation:(id)location completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  v7 = +[MIHelperServiceFrameworkClient sharedInstance];
  v21 = 0;
  v8 = [v7 stagingLocationForInstallLocation:locationCopy withinStagingSubsytem:3 usingUniqueName:0 error:&v21];

  v9 = v21;
  if (v8)
  {
    v20 = v9;
    v10 = [v8 resolveWithError:&v20];
    v11 = v20;

    if (v10)
    {
      v12 = +[IXFileManager defaultManager];
      v19 = v11;
      v13 = [v12 issueSandboxExtensionForURL:v10 withExtensionClass:APP_SANDBOX_READ_WRITE error:&v19];
      v9 = v19;

      if (v13)
      {
        v10 = v10;
        v14 = v10;
      }

      else
      {
        v15 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000A5EA8();
        }

        path = [v10 path];
        v18 = sub_1000405FC("[IXSClientConnection _remote_stagingLocationForInstallLocation:completion:]", 1956, @"IXErrorDomain", 1uLL, v9, 0, @"Failed to provide access to %@", v17, path);

        v13 = 0;
        v14 = 0;
        v9 = v18;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v9 = v11;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v14 = 0;
  }

  completionCopy[2](completionCopy, v14, v13, v9);
}

- (void)_fetchIXSCoordinatedAppInstallForUUID:(id)d method:(const char *)method andRunWithCoordinator:(id)coordinator error:(id)error
{
  dCopy = d;
  coordinatorCopy = coordinator;
  errorCopy = error;
  v13 = +[IXSCoordinatorManager sharedInstance];
  v14 = [v13 coordinatorForUUID:dCopy];

  if (v14)
  {
    coordinatorCopy[2](coordinatorCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchIXSCoordinatedAppInstallForUUID:method:andRunWithCoordinator:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Coordinator did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchIXSCoordinatedAppInstallForUUID:method:andRunWithCoordinator:error:]", 1977, @"IXErrorDomain", 6uLL, 0, 0, @"Coordinator did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install appAssetPromiseHasBegunFulfillment:(id)fulfillment
{
  installCopy = install;
  fulfillmentCopy = fulfillment;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FBB0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007FC3C;
  v13[3] = &unk_100103398;
  v14 = fulfillmentCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007FC48;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:appAssetPromiseHasBegunFulfillment:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  installCopy = install;
  reasonCopy = reason;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FE20;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v24 = installCopy;
  v14 = installCopy;
  dispatch_sync(internalQueue, block);

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007FEAC;
  v19[3] = &unk_1001033C0;
  v20 = reasonCopy;
  clientCopy = client;
  v21 = completionCopy;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007FEBC;
  v17[3] = &unk_100103330;
  v18 = v21;
  v15 = v21;
  v16 = reasonCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v14 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:cancelForReason:client:completion:]" andRunWithCoordinator:v19 error:v17];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install fireObserversWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080064;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000800F0;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000800FC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:fireObserversWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getAppAssetPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008029C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080328;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080458;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getAppAssetPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getAppAssetPromiseDRI:(id)i
{
  installCopy = install;
  iCopy = i;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000805FC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080688;
  v13[3] = &unk_100103398;
  v14 = iCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080694;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getAppAssetPromiseDRI:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getCoordinationState:(id)state
{
  installCopy = install;
  stateCopy = state;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080838;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000808C4;
  v13[3] = &unk_100103398;
  v14 = stateCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000808D0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getCoordinationState:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getErrorInfo:(id)info
{
  installCopy = install;
  infoCopy = info;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080A74;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080B00;
  v13[3] = &unk_100103398;
  v14 = infoCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080B0C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getErrorInfo:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getInitialODRAssetPromises:(id)promises
{
  installCopy = install;
  promisesCopy = promises;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080CB4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080D40;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promisesCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080F14;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getInitialODRAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getIsComplete:(id)complete
{
  installCopy = install;
  completeCopy = complete;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000810B8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081144;
  v13[3] = &unk_100103398;
  v14 = completeCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100081150;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getIsComplete:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getIsPausedWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000812F4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081380;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008138C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getIsPausedWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getPlaceholderPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081534;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000815C0;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000816F0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPlaceholderPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getPreparationPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081898;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081924;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100081A54;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPreparationPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getUserDataPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081BFC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081C88;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100081DB8;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getUserDataPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getDeviceSecurityPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081F60;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081FEC;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008211C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getDeviceSecurityPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getHasDeviceSecurityPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000822C0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008234C;
  v13[3] = &unk_100103398;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100082358;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getHasDeviceSecurityPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setNeedsPostProcessing:(BOOL)processing completion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082504;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = installCopy;
  v11 = installCopy;
  dispatch_sync(internalQueue, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100082590;
  v15[3] = &unk_100103460;
  processingCopy = processing;
  v16 = completionCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000825A0;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setNeedsPostProcessing:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getNeedsPostProcessing:(id)processing
{
  installCopy = install;
  processingCopy = processing;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008273C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000827C8;
  v13[3] = &unk_100103398;
  v14 = processingCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000827D4;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getNeedsPostProcessing:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getPostProcessingShouldBegin:(id)begin
{
  installCopy = install;
  beginCopy = begin;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082978;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082A04;
  v13[3] = &unk_100103398;
  v14 = beginCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100082A10;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPostProcessingShouldBegin:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setEssentialAssetPromiseUUIDs:(id)ds completion:(id)completion
{
  installCopy = install;
  dsCopy = ds;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082BD8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100082C64;
  v17[3] = &unk_1001033E8;
  v18 = dsCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100082C70;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dsCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setEssentialAssetPromiseUUIDs:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getEssentialAssetPromises:(id)promises
{
  installCopy = install;
  promisesCopy = promises;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082E10;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082E9C;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promisesCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083070;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getEssentialAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasEssentialAssetPromises:(id)promises
{
  installCopy = install;
  promisesCopy = promises;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083214;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000832A0;
  v13[3] = &unk_100103398;
  v14 = promisesCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000832AC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasEssentialAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setDataImportPromiseUUIDs:(id)ds completion:(id)completion
{
  installCopy = install;
  dsCopy = ds;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083474;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100083500;
  v17[3] = &unk_1001033E8;
  v18 = dsCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008350C;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dsCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setDataImportPromiseUUIDs:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getDataImportPromises:(id)promises
{
  installCopy = install;
  promisesCopy = promises;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000836AC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083738;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = promisesCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008390C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getDataImportPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasDataImportPromises:(id)promises
{
  installCopy = install;
  promisesCopy = promises;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083AB0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083B3C;
  v13[3] = &unk_100103398;
  v14 = promisesCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083B48;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasDataImportPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getUserDataRestoreShouldBegin:(id)begin
{
  installCopy = install;
  beginCopy = begin;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083CEC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083D78;
  v13[3] = &unk_100103398;
  v14 = beginCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083D84;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getUserDataRestoreShouldBegin:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasAppAssetPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083F28;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083FB4;
  v13[3] = &unk_100103398;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083FC0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasAppAssetPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasInitialODRAssetPromises:(id)promises
{
  installCopy = install;
  promisesCopy = promises;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084164;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000841F0;
  v13[3] = &unk_100103398;
  v14 = promisesCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000841FC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasInitialODRAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasInstallOptions:(id)options
{
  installCopy = install;
  optionsCopy = options;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000843A0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008442C;
  v13[3] = &unk_100103398;
  v14 = optionsCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084438;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasInstallOptions:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getInstallOptions:(id)options
{
  installCopy = install;
  optionsCopy = options;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000845DC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084668;
  v13[3] = &unk_100103398;
  v14 = optionsCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084674;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getInstallOptions:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasPlaceholderPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084818;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000848A4;
  v13[3] = &unk_100103398;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000848B0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasPlaceholderPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install hasUserDataPromise:(id)promise
{
  installCopy = install;
  promiseCopy = promise;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084A54;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084AE0;
  v13[3] = &unk_100103398;
  v14 = promiseCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084AEC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasUserDataPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setImportance:(unint64_t)importance completion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084C98;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = installCopy;
  v11 = installCopy;
  dispatch_sync(internalQueue, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100084D24;
  v15[3] = &unk_100103488;
  importanceCopy = importance;
  v16 = completionCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084D30;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setImportance:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install importanceWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084ECC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084F58;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084F64;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:importanceWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install conveyPriorityReplacingExisting:(BOOL)existing withCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085114;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = installCopy;
  v11 = installCopy;
  dispatch_sync(internalQueue, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000851A0;
  v15[3] = &unk_1001034B0;
  existingCopy = existing;
  v15[4] = self;
  v16 = completionCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008521C;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:conveyPriorityReplacingExisting:withCompletion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install prioritizeWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000853B8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085444;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100085450;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:prioritizeWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setTargetGizmoPairingID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085610;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008569C;
  v17[3] = &unk_1001033E8;
  v18 = dCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000856A8;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setTargetGizmoPairingID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install targetGizmoPairingIDWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085844;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000858D0;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000858DC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:targetGizmoPairingIDWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setAppAssetPromiseDRI:(unint64_t)i completion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085A88;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = installCopy;
  v11 = installCopy;
  dispatch_sync(internalQueue, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100085B14;
  v15[3] = &unk_100103488;
  iCopy = i;
  v16 = completionCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085B20;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setAppAssetPromiseDRI:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setAppAssetPromiseUUID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085CE0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v22 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100085D6C;
  v17[3] = &unk_1001034D8;
  v18 = dCopy;
  selfCopy = self;
  v20 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100085DE4;
  v15[3] = &unk_100103330;
  v16 = v20;
  v13 = v20;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setAppAssetPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setInitialODRAssetPromiseUUIDs:(id)ds completion:(id)completion
{
  installCopy = install;
  dsCopy = ds;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085FA4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086030;
  v17[3] = &unk_1001033E8;
  v18 = dsCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008603C;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dsCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setInitialODRAssetPromiseUUIDs:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setInstallOptionsPromiseUUID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000861FC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v22 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086288;
  v17[3] = &unk_1001034D8;
  v18 = dCopy;
  selfCopy = self;
  v20 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086300;
  v15[3] = &unk_100103330;
  v16 = v20;
  v13 = v20;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setInstallOptionsPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setIsPaused:(BOOL)paused completion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000864A4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = installCopy;
  v11 = installCopy;
  dispatch_sync(internalQueue, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086530;
  v15[3] = &unk_100103460;
  pausedCopy = paused;
  v16 = completionCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100086540;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setIsPaused:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setPlaceholderPromiseUUID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086700;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008678C;
  v17[3] = &unk_1001033E8;
  v18 = dCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086798;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPlaceholderPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setPreparationPromiseUUID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086958;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000869E4;
  v17[3] = &unk_1001033E8;
  v18 = dCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000869F0;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPreparationPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setUserDataPromiseUUID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086BB0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086C3C;
  v17[3] = &unk_1001033E8;
  v18 = dCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086C48;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setUserDataPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setDeviceSecurityPromiseUUID:(id)d completion:(id)completion
{
  installCopy = install;
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086E08;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086E94;
  v17[3] = &unk_1001033E8;
  v18 = dCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086EA0;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = dCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setDeviceSecurityPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getCoordinatorScopeWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008703C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000870C8;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000870D4;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getCoordinatorScopeWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install convertToGloballyScopedWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087278;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087304;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087310;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:convertToGloballyScopedWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setPlaceholderDisposition:(unint64_t)disposition completion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  xpcConnection = [(IXSClientConnection *)self xpcConnection];
  if (sub_10000D71C(xpcConnection, @"com.apple.private.InstallCoordination.overridePlaceholderDisposition"))
  {
    internalQueue = [(IXSClientConnection *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100087588;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v12 = installCopy;
    v23 = v12;
    dispatch_sync(internalQueue, block);

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100087614;
    v19[3] = &unk_100103488;
    dispositionCopy = disposition;
    v20 = completionCopy;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100087620;
    v17[3] = &unk_100103330;
    v18 = v20;
    [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPlaceholderDisposition:completion:]" andRunWithCoordinator:v19 error:v17];
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A7BCC(self);
    }

    clientName = [(IXSClientConnection *)self clientName];
    v16 = sub_1000405FC("[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPlaceholderDisposition:completion:]", 2311, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing entitlement to set placeholder disposition.", v15, clientName);

    (*(completionCopy + 2))(completionCopy, v16);
  }
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getPlaceholderDispositionWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000877BC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087848;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087854;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPlaceholderDispositionWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setProgressHint:(id)hint completion:(id)completion
{
  installCopy = install;
  hintCopy = hint;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087A1C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = installCopy;
  v12 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100087AA8;
  v17[3] = &unk_1001033E8;
  v18 = hintCopy;
  v19 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100087AB4;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = hintCopy;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setProgressHint:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install getProgressHintWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087C50;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087CDC;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087CE8;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getProgressHintWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install setRemovability:(unint64_t)removability byClient:(unint64_t)client completion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087EA0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v22 = installCopy;
  v13 = installCopy;
  dispatch_sync(internalQueue, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100087F2C;
  v17[3] = &unk_100103500;
  removabilityCopy = removability;
  clientCopy = client;
  v18 = completionCopy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100087F3C;
  v15[3] = &unk_100103330;
  v16 = v18;
  v14 = v18;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v13 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setRemovability:byClient:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)install removabilityWithCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  internalQueue = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000880D8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = installCopy;
  v9 = installCopy;
  dispatch_sync(internalQueue, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088164;
  v13[3] = &unk_100103398;
  v14 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100088170;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:removabilityWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_fetchDataPromiseForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error
{
  dCopy = d;
  promiseCopy = promise;
  errorCopy = error;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v14)
  {
    promiseCopy[2](promiseCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchDataPromiseForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: DataPromise did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchDataPromiseForUUID:method:andRunWithPromise:error:]", 2428, @"IXErrorDomain", 3uLL, 0, 0, @"DataPromise did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSDataPromise:(id)promise getPercentComplete:(id)complete
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000884A0;
  v9[3] = &unk_100103528;
  completeCopy = complete;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000884AC;
  v7[3] = &unk_100103330;
  v8 = completeCopy;
  v6 = completeCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:getPercentComplete:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)promise setPercentComplete:(double)complete
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008853C;
  v4[3] = &unk_100103548;
  *&v4[4] = complete;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:setPercentComplete:]" andRunWithPromise:v4 error:&stru_100103568];
}

- (void)_remote_IXSDataPromise:(id)promise getIsComplete:(id)complete
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088650;
  v9[3] = &unk_100103528;
  completeCopy = complete;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008865C;
  v7[3] = &unk_100103330;
  v8 = completeCopy;
  v6 = completeCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:getIsComplete:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)promise setIsComplete:(BOOL)complete completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100088780;
  v10[3] = &unk_100103590;
  completeCopy = complete;
  completionCopy = completion;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008879C;
  v8[3] = &unk_100103330;
  v9 = completionCopy;
  v7 = completionCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:setIsComplete:completion:]" andRunWithPromise:v10 error:v8];
}

- (void)_remote_IXSDataPromise:(id)promise cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000888E4;
  v14[3] = &unk_1001035B8;
  reasonCopy = reason;
  clientCopy = client;
  completionCopy = completion;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000888F4;
  v12[3] = &unk_100103330;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = reasonCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:cancelForReason:client:completion:]" andRunWithPromise:v14 error:v12];
}

- (void)_remote_IXSDataPromise:(id)promise resetWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088A08;
  v9[3] = &unk_100103528;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088A14;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:resetWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)promise getErrorInfo:(id)info
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088B28;
  v9[3] = &unk_100103528;
  infoCopy = info;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088B34;
  v7[3] = &unk_100103330;
  v8 = infoCopy;
  v6 = infoCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:getErrorInfo:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)promise preflightWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088C50;
  v9[3] = &unk_100103528;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088C5C;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSDataPromise:preflightWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_fetchOwnedDataPromiseForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error
{
  dCopy = d;
  promiseCopy = promise;
  errorCopy = error;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v14)
  {
    promiseCopy[2](promiseCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchOwnedDataPromiseForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: OwnedDataPromise did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchOwnedDataPromiseForUUID:method:andRunWithPromise:error:]", 2472, @"IXErrorDomain", 3uLL, 0, 0, @"OwnedDataPromise did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSOwnedDataPromise:(id)promise setStagedPath:(id)path
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088F38;
  v7[3] = &unk_1001035E0;
  pathCopy = path;
  v6 = pathCopy;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSOwnedDataPromise:setStagedPath:]" andRunWithPromise:v7 error:&stru_100103600];
}

- (void)_remote_IXSOwnedDataPromise:(id)promise getStagedPath:(id)path
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008904C;
  v9[3] = &unk_100103628;
  pathCopy = path;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089058;
  v7[3] = &unk_100103330;
  v8 = pathCopy;
  v6 = pathCopy;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSOwnedDataPromise:getStagedPath:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSOwnedDataPromise:(id)promise setTargetLastPathComponent:(id)component withCompletion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089198;
  v12[3] = &unk_100103650;
  componentCopy = component;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000891A4;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = componentCopy;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSOwnedDataPromise:setTargetLastPathComponent:withCompletion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSOwnedDataPromise:(id)promise getTargetLastPathComponent:(id)component
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000892B8;
  v9[3] = &unk_100103628;
  componentCopy = component;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000892C4;
  v7[3] = &unk_100103330;
  v8 = componentCopy;
  v6 = componentCopy;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:promise method:"[IXSClientConnection _remote_IXSOwnedDataPromise:getTargetLastPathComponent:]" andRunWithPromise:v9 error:v7];
}

- (void)_fetchPlaceholderForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error
{
  dCopy = d;
  promiseCopy = promise;
  errorCopy = error;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v14)
  {
    promiseCopy[2](promiseCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPlaceholderForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Placeholder did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPlaceholderForUUID:method:andRunWithPromise:error:]", 2496, @"IXErrorDomain", 3uLL, 0, 0, @"Placeholder did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSPlaceholder:(id)placeholder setMetadataPromiseUUID:(id)d completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089618;
  v12[3] = &unk_100103678;
  dCopy = d;
  selfCopy = self;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089690;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setMetadataPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getMetadataWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000897A4;
  v9[3] = &unk_1001036A0;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000897B0;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getMetadataWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setSinfPromiseUUID:(id)d completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000898F0;
  v12[3] = &unk_1001036C8;
  dCopy = d;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000898FC;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setSinfPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getSinfDataWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100089A10;
  v9[3] = &unk_1001036A0;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089A1C;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getSinfDataWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setLaunchProhibited:(BOOL)prohibited completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089B40;
  v10[3] = &unk_1001036F0;
  prohibitedCopy = prohibited;
  completionCopy = completion;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089B50;
  v8[3] = &unk_100103330;
  v9 = completionCopy;
  v7 = completionCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setLaunchProhibited:completion:]" andRunWithPromise:v10 error:v8];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getLaunchProhibitedWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100089C64;
  v9[3] = &unk_1001036A0;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089C70;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getLaunchProhibitedWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setAttributes:(id)attributes completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089DB0;
  v12[3] = &unk_1001036C8;
  attributesCopy = attributes;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089DBC;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = attributesCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setAttributes:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getAttributesWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100089ED0;
  v9[3] = &unk_1001036A0;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089EDC;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getAttributesWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setIconPromiseUUID:(id)d completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008A01C;
  v12[3] = &unk_1001036C8;
  dCopy = d;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008A028;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setIconPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder hasIconPromise:(id)promise
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A13C;
  v9[3] = &unk_1001036A0;
  promiseCopy = promise;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A148;
  v7[3] = &unk_100103330;
  v8 = promiseCopy;
  v6 = promiseCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:hasIconPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getIconPromise:(id)promise
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008A268;
  v8[3] = &unk_1001036C8;
  selfCopy = self;
  promiseCopy = promise;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008A398;
  v6[3] = &unk_100103330;
  v7 = promiseCopy;
  v5 = promiseCopy;
  [(IXSClientConnection *)selfCopy _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getIconPromise:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setIconResourcesPromiseUUID:(id)d withInfoPlistIconContentPromiseUUID:(id)iD completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008A500;
  v15[3] = &unk_100103678;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008A510;
  v13[3] = &unk_100103330;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = iDCopy;
  v12 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setIconResourcesPromiseUUID:withInfoPlistIconContentPromiseUUID:completion:]" andRunWithPromise:v15 error:v13];
}

- (void)_remote_IXSPlaceholder:(id)placeholder hasIconResourcesPromise:(id)promise
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A624;
  v9[3] = &unk_1001036A0;
  promiseCopy = promise;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A630;
  v7[3] = &unk_100103330;
  v8 = promiseCopy;
  v6 = promiseCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:hasIconResourcesPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getIconResourcesPromiseAndInfoPlistContentPromise:(id)promise
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A74C;
  v9[3] = &unk_1001036A0;
  promiseCopy = promise;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A758;
  v7[3] = &unk_100103330;
  v8 = promiseCopy;
  v6 = promiseCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getIconResourcesPromiseAndInfoPlistContentPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setLocalizationPromiseUUID:(id)d completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008A89C;
  v12[3] = &unk_1001036C8;
  dCopy = d;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008A8A8;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setLocalizationPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getLocalizationDictionary:(id)dictionary
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A9BC;
  v9[3] = &unk_1001036A0;
  dictionaryCopy = dictionary;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A9C8;
  v7[3] = &unk_100103330;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getLocalizationDictionary:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setEntitlementsPromiseUUID:(id)d completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008AB08;
  v12[3] = &unk_1001036C8;
  dCopy = d;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008AB14;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setEntitlementsPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder hasEntitlementsPromise:(id)promise
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008AC28;
  v9[3] = &unk_1001036A0;
  promiseCopy = promise;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008AC34;
  v7[3] = &unk_100103330;
  v8 = promiseCopy;
  v6 = promiseCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:hasEntitlementsPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getEntitlementsPromise:(id)promise
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008AD54;
  v8[3] = &unk_1001036C8;
  selfCopy = self;
  promiseCopy = promise;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008AE84;
  v6[3] = &unk_100103330;
  v7 = promiseCopy;
  v5 = promiseCopy;
  [(IXSClientConnection *)selfCopy _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getEntitlementsPromise:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setInfoPlistLoctablePromiseUUID:(id)d completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008AFC4;
  v12[3] = &unk_1001036C8;
  dCopy = d;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008AFD0;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setInfoPlistLoctablePromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder hasInfoPlistLoctablePromise:(id)promise
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B0E4;
  v9[3] = &unk_1001036A0;
  promiseCopy = promise;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B0F0;
  v7[3] = &unk_100103330;
  v8 = promiseCopy;
  v6 = promiseCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:hasInfoPlistLoctablePromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getInfoPlistLoctablePromise:(id)promise
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008B210;
  v8[3] = &unk_1001036C8;
  selfCopy = self;
  promiseCopy = promise;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B340;
  v6[3] = &unk_100103330;
  v7 = promiseCopy;
  v5 = promiseCopy;
  [(IXSClientConnection *)selfCopy _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getInfoPlistLoctablePromise:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setAppExtensionPlaceholderPromiseUUIDs:(id)ds completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008B480;
  v12[3] = &unk_1001036C8;
  dsCopy = ds;
  completionCopy = completion;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008B48C;
  v10[3] = &unk_100103330;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = dsCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setAppExtensionPlaceholderPromiseUUIDs:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)placeholder hasAppExtensionPlaceholderPromises:(id)promises
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B5A0;
  v9[3] = &unk_1001036A0;
  promisesCopy = promises;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B5AC;
  v7[3] = &unk_100103330;
  v8 = promisesCopy;
  v6 = promisesCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:hasAppExtensionPlaceholderPromises:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)placeholder getAppExtensionPlaceholderPromises:(id)promises
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008B6CC;
  v8[3] = &unk_1001036C8;
  selfCopy = self;
  promisesCopy = promises;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B8A0;
  v6[3] = &unk_100103330;
  v7 = promisesCopy;
  v5 = promisesCopy;
  [(IXSClientConnection *)selfCopy _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:getAppExtensionPlaceholderPromises:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)placeholder setConfigurationCompleteWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B9BC;
  v9[3] = &unk_1001036A0;
  completionCopy = completion;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B9C8;
  v7[3] = &unk_100103330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:placeholder method:"[IXSClientConnection _remote_IXSPlaceholder:setConfigurationCompleteWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_fetchPromisedTransferToPathForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error
{
  dCopy = d;
  promiseCopy = promise;
  errorCopy = error;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v14)
  {
    promiseCopy[2](promiseCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPromisedTransferToPathForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: PromisedTransferToPath did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPromisedTransferToPathForUUID:method:andRunWithPromise:error:]", 2655, @"IXErrorDomain", 3uLL, 0, 0, @"PromisedTransferToPath did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSPromisedTransferToPath:(id)path setTransferPath:(id)transferPath
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008BCA0;
  v7[3] = &unk_100103718;
  transferPathCopy = transferPath;
  v6 = transferPathCopy;
  [(IXSClientConnection *)self _fetchPromisedTransferToPathForUUID:path method:"[IXSClientConnection _remote_IXSPromisedTransferToPath:setTransferPath:]" andRunWithPromise:v7 error:&stru_100103738];
}

- (void)_remote_IXSPromisedTransferToPath:(id)path setShouldCopy:(BOOL)copy
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BD2C;
  v4[3] = &unk_100103758;
  copyCopy = copy;
  [(IXSClientConnection *)self _fetchPromisedTransferToPathForUUID:path method:"[IXSClientConnection _remote_IXSPromisedTransferToPath:setShouldCopy:]" andRunWithPromise:v4 error:&stru_100103778];
}

- (void)_remote_IXSPromisedTransferToPath:(id)path setTryDeltaCopy:(BOOL)copy
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BDB8;
  v4[3] = &unk_100103758;
  copyCopy = copy;
  [(IXSClientConnection *)self _fetchPromisedTransferToPathForUUID:path method:"[IXSClientConnection _remote_IXSPromisedTransferToPath:setTryDeltaCopy:]" andRunWithPromise:v4 error:&stru_100103798];
}

- (void)_fetchPromisedStreamingZipTransferForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error
{
  dCopy = d;
  promiseCopy = promise;
  errorCopy = error;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v14)
  {
    promiseCopy[2](promiseCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPromisedStreamingZipTransferForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: PromisedStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPromisedStreamingZipTransferForUUID:method:andRunWithPromise:error:]", 2675, @"IXErrorDomain", 3uLL, 0, 0, @"PromisedStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSPromisedStreamingZipTransfer:(id)transfer setArchiveBytesConsumed:(unint64_t)consumed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C058;
  v4[3] = &unk_1001037B8;
  v4[4] = consumed;
  [(IXSClientConnection *)self _fetchPromisedStreamingZipTransferForUUID:transfer method:"[IXSClientConnection _remote_IXSPromisedStreamingZipTransfer:setArchiveBytesConsumed:]" andRunWithPromise:v4 error:&stru_1001037D8];
}

- (void)_fetchPromisedOutOfBandStreamingZipTransferForUUID:(id)d method:(const char *)method andRunWithPromise:(id)promise error:(id)error
{
  dCopy = d;
  promiseCopy = promise;
  errorCopy = error;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v14)
  {
    promiseCopy[2](promiseCopy, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPromisedOutOfBandStreamingZipTransferForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = dCopy;
      v24 = 2080;
      methodCopy = method;
      v26 = 2112;
      v27 = clientName;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: PromisedOutOfBandStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    clientName2 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPromisedOutOfBandStreamingZipTransferForUUID:method:andRunWithPromise:error:]", 2684, @"IXErrorDomain", 3uLL, 0, 0, @"PromisedOutOfBandStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@", v16, dCopy);

    errorCopy[2](errorCopy, v17);
  }
}

- (void)_remote_IXSPromisedOutOfBandStreamingZipTransfer:(id)transfer setArchiveBytesConsumed:(unint64_t)consumed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C2F8;
  v4[3] = &unk_1001037F8;
  v4[4] = consumed;
  [(IXSClientConnection *)self _fetchPromisedOutOfBandStreamingZipTransferForUUID:transfer method:"[IXSClientConnection _remote_IXSPromisedOutOfBandStreamingZipTransfer:setArchiveBytesConsumed:]" andRunWithPromise:v4 error:&stru_100103818];
}

- (void)_client_coordinatorDidRegisterForObservationWithUUID:(id)d
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorDidRegisterForObservationWithUUID:]";
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorDidRegisterForObservationWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008C4F8;
      v8[3] = &unk_100101808;
      v8[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)clientName _client_coordinatorDidRegisterForObservationWithUUID:dCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorDidRegisterForObservationWithUUID:]";
      v11 = 2112;
      selfCopy = clientName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldPrioritizeWithUUID:(id)d
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldPrioritizeWithUUID:]";
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldPrioritizeWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008C7DC;
      v8[3] = &unk_100101808;
      v8[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)clientName _client_coordinatorShouldPrioritizeWithUUID:dCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldPrioritizeWithUUID:]";
      v11 = 2112;
      selfCopy = clientName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldResumeWithUUID:(id)d
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldResumeWithUUID:]";
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldResumeWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008CAC0;
      v8[3] = &unk_100101808;
      v8[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)clientName _client_coordinatorShouldResumeWithUUID:dCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldResumeWithUUID:]";
      v11 = 2112;
      selfCopy = clientName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldPauseWithUUID:(id)d
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldPauseWithUUID:]";
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldPauseWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008CDA4;
      v8[3] = &unk_100101808;
      v8[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)clientName _client_coordinatorShouldPauseWithUUID:dCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldPauseWithUUID:]";
      v11 = 2112;
      selfCopy = clientName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorWithUUID:(id)d configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v8 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "[IXSClientConnection _client_coordinatorWithUUID:configuredPromiseDidBeginFulfillment:]";
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorWithUUID:uuid configuredPromiseDidBeginFulfillment:ident to %@", buf, 0x16u);
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10008D098;
      v10[3] = &unk_100101808;
      v10[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
      [(IXSClientConnection *)clientName _client_coordinatorWithUUID:dCopy configuredPromiseDidBeginFulfillment:fulfillment];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v12 = "[IXSClientConnection _client_coordinatorWithUUID:configuredPromiseDidBeginFulfillment:]";
      v13 = 2112;
      selfCopy = clientName;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldBeginRestoringUserDataWithUUID:(id)d
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldBeginRestoringUserDataWithUUID:]";
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldBeginRestoringUserDataWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008D37C;
      v8[3] = &unk_100101808;
      v8[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)clientName _client_coordinatorShouldBeginRestoringUserDataWithUUID:dCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldBeginRestoringUserDataWithUUID:]";
      v11 = 2112;
      selfCopy = clientName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldBeginPostProcessingWithUUID:(id)d forRecordPromise:(id)promise
{
  dCopy = d;
  promiseCopy = promise;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IXSClientConnection _client_coordinatorShouldBeginPostProcessingWithUUID:forRecordPromise:]";
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldBeginPostProcessingWithUUID:uuid forRecordPromise:recordPromise to %@", buf, 0x16u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10008D67C;
      v11[3] = &unk_100101808;
      v11[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
      [(IXSClientConnection *)clientName _client_coordinatorShouldBeginPostProcessingWithUUID:dCopy forRecordPromise:promiseCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v13 = "[IXSClientConnection _client_coordinatorShouldBeginPostProcessingWithUUID:forRecordPromise:]";
      v14 = 2112;
      selfCopy = clientName;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorDidInstallPlaceholderWithUUID:(id)d forRecordPromise:(id)promise
{
  dCopy = d;
  promiseCopy = promise;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IXSClientConnection _client_coordinatorDidInstallPlaceholderWithUUID:forRecordPromise:]";
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorDidInstallPlaceholderWithUUID:uuid forRecordPromise:recordPromise to %@", buf, 0x16u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10008D97C;
      v11[3] = &unk_100101808;
      v11[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
      [(IXSClientConnection *)clientName _client_coordinatorDidInstallPlaceholderWithUUID:dCopy forRecordPromise:promiseCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v13 = "[IXSClientConnection _client_coordinatorDidInstallPlaceholderWithUUID:forRecordPromise:]";
      v14 = 2112;
      selfCopy = clientName;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorDidCompleteSuccessfullyWithUUID:(id)d forRecordPromise:(id)promise
{
  dCopy = d;
  promiseCopy = promise;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IXSClientConnection _client_coordinatorDidCompleteSuccessfullyWithUUID:forRecordPromise:]";
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorDidCompleteSuccessfullyWithUUID:uuid forRecordPromise:recordPromise to %@", buf, 0x16u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10008DC7C;
      v11[3] = &unk_100101808;
      v11[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v11];
      [(IXSClientConnection *)clientName _client_coordinatorDidCompleteSuccessfullyWithUUID:dCopy forRecordPromise:promiseCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v13 = "[IXSClientConnection _client_coordinatorDidCompleteSuccessfullyWithUUID:forRecordPromise:]";
      v14 = 2112;
      selfCopy = clientName;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client
{
  dCopy = d;
  reasonCopy = reason;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v11 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[IXSClientConnection _client_coordinatorWithUUID:didCancelWithReason:client:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorWithUUID:uuid didCancelWithReason:cancelReason client:client to %@", buf, 0x16u);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10008DF84;
      v13[3] = &unk_100101808;
      v13[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v13];
      [(IXSClientConnection *)clientName _client_coordinatorWithUUID:dCopy didCancelWithReason:reasonCopy client:client];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v15 = "[IXSClientConnection _client_coordinatorWithUUID:didCancelWithReason:client:]";
      v16 = 2112;
      selfCopy = clientName;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorWithUUID:(id)d didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[IXSClientConnection _client_coordinatorWithUUID:didUpdateProgress:forPhase:overallProgress:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorWithUUID:uuid didUpdateProgress:percentComplete forPhase:phase overallProgress:overallProgress to %@", buf, 0x16u);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10008E290;
      v14[3] = &unk_100101808;
      v14[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
      [(IXSClientConnection *)clientName _client_coordinatorWithUUID:dCopy didUpdateProgress:phase forPhase:progress overallProgress:overallProgress];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v16 = "[IXSClientConnection _client_coordinatorWithUUID:didUpdateProgress:forPhase:overallProgress:]";
      v17 = 2112;
      selfCopy = clientName;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_promiseDidCompleteSuccessfullyWithUUID:(id)d
{
  dCopy = d;
  if ([(IXSClientConnection *)self interestedInPromiseUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_promiseDidCompleteSuccessfullyWithUUID:]";
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_promiseDidCompleteSuccessfullyWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008E574;
      v8[3] = &unk_100101808;
      v8[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)clientName _client_promiseDidCompleteSuccessfullyWithUUID:dCopy];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_promiseDidCompleteSuccessfullyWithUUID:]";
      v11 = 2112;
      selfCopy = clientName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in promise UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_promiseWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client
{
  dCopy = d;
  reasonCopy = reason;
  if ([(IXSClientConnection *)self interestedInPromiseUUID:dCopy])
  {
    xpcConnection = [(IXSClientConnection *)self xpcConnection];
    if (xpcConnection)
    {
      v11 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[IXSClientConnection _client_promiseWithUUID:didCancelWithReason:client:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_promiseWithUUID:uuid didCancelWithReason:cancelReason client:client to %@", buf, 0x16u);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10008E87C;
      v13[3] = &unk_100101808;
      v13[4] = self;
      clientName = [xpcConnection remoteObjectProxyWithErrorHandler:v13];
      [(IXSClientConnection *)clientName _client_promiseWithUUID:dCopy didCancelWithReason:reasonCopy client:client];
      goto LABEL_8;
    }
  }

  else
  {
    xpcConnection = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(xpcConnection, OS_LOG_TYPE_DEFAULT))
    {
      clientName = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v15 = "[IXSClientConnection _client_promiseWithUUID:didCancelWithReason:client:]";
      v16 = 2112;
      selfCopy = clientName;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, xpcConnection, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in promise UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[2].var0[4];
  *retstr->var0 = *self[2].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end