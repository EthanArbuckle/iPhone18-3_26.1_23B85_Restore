@interface IXSClientConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (BOOL)clientProcessExists;
- (BOOL)interestedInCoordinatorUUID:(id)a3;
- (BOOL)interestedInPromiseUUID:(id)a3;
- (IXSClientConnection)initWithConnection:(id)a3;
- (NSString)description;
- (NSXPCConnection)xpcConnection;
- (void)_client_coordinatorDidCompleteSuccessfullyWithUUID:(id)a3 forRecordPromise:(id)a4;
- (void)_client_coordinatorDidInstallPlaceholderWithUUID:(id)a3 forRecordPromise:(id)a4;
- (void)_client_coordinatorDidRegisterForObservationWithUUID:(id)a3;
- (void)_client_coordinatorShouldBeginPostProcessingWithUUID:(id)a3 forRecordPromise:(id)a4;
- (void)_client_coordinatorShouldBeginRestoringUserDataWithUUID:(id)a3;
- (void)_client_coordinatorShouldPauseWithUUID:(id)a3;
- (void)_client_coordinatorShouldPrioritizeWithUUID:(id)a3;
- (void)_client_coordinatorShouldResumeWithUUID:(id)a3;
- (void)_client_coordinatorWithUUID:(id)a3 configuredPromiseDidBeginFulfillment:(unint64_t)a4;
- (void)_client_coordinatorWithUUID:(id)a3 didCancelWithReason:(id)a4 client:(unint64_t)a5;
- (void)_client_coordinatorWithUUID:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6;
- (void)_client_promiseDidCompleteSuccessfullyWithUUID:(id)a3;
- (void)_client_promiseWithUUID:(id)a3 didCancelWithReason:(id)a4 client:(unint64_t)a5;
- (void)_fetchDataPromiseForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6;
- (void)_fetchIXSCoordinatedAppInstallForUUID:(id)a3 method:(const char *)a4 andRunWithCoordinator:(id)a5 error:(id)a6;
- (void)_fetchOwnedDataPromiseForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6;
- (void)_fetchPlaceholderForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6;
- (void)_fetchPromisedOutOfBandStreamingZipTransferForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6;
- (void)_fetchPromisedStreamingZipTransferForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6;
- (void)_fetchPromisedTransferToPathForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 appAssetPromiseHasBegunFulfillment:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 cancelForReason:(id)a4 client:(unint64_t)a5 completion:(id)a6;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 convertToGloballyScopedWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 conveyPriorityReplacingExisting:(BOOL)a4 withCompletion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 fireObserversWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getAppAssetPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getAppAssetPromiseDRI:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getCoordinationState:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getCoordinatorScopeWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getDataImportPromises:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getDeviceSecurityPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getErrorInfo:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getEssentialAssetPromises:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getHasDeviceSecurityPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getInitialODRAssetPromises:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getInstallOptions:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getIsComplete:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getIsPausedWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getNeedsPostProcessing:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPlaceholderDispositionWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPlaceholderPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPostProcessingShouldBegin:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPreparationPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getProgressHintWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getUserDataPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getUserDataRestoreShouldBegin:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasAppAssetPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasDataImportPromises:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasEssentialAssetPromises:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasInitialODRAssetPromises:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasInstallOptions:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasPlaceholderPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasUserDataPromise:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 importanceWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 prioritizeWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 removabilityWithCompletion:(id)a4;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setAppAssetPromiseDRI:(unint64_t)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setAppAssetPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setDataImportPromiseUUIDs:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setDeviceSecurityPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setEssentialAssetPromiseUUIDs:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setImportance:(unint64_t)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setInitialODRAssetPromiseUUIDs:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setInstallOptionsPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setIsPaused:(BOOL)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setNeedsPostProcessing:(BOOL)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setPlaceholderDisposition:(unint64_t)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setPlaceholderPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setPreparationPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setProgressHint:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setRemovability:(unint64_t)a4 byClient:(unint64_t)a5 completion:(id)a6;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setTargetGizmoPairingID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setUserDataPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSCoordinatedAppInstall:(id)a3 targetGizmoPairingIDWithCompletion:(id)a4;
- (void)_remote_IXSDataPromise:(id)a3 cancelForReason:(id)a4 client:(unint64_t)a5 completion:(id)a6;
- (void)_remote_IXSDataPromise:(id)a3 getErrorInfo:(id)a4;
- (void)_remote_IXSDataPromise:(id)a3 getIsComplete:(id)a4;
- (void)_remote_IXSDataPromise:(id)a3 getPercentComplete:(id)a4;
- (void)_remote_IXSDataPromise:(id)a3 preflightWithCompletion:(id)a4;
- (void)_remote_IXSDataPromise:(id)a3 resetWithCompletion:(id)a4;
- (void)_remote_IXSDataPromise:(id)a3 setIsComplete:(BOOL)a4 completion:(id)a5;
- (void)_remote_IXSDataPromise:(id)a3 setPercentComplete:(double)a4;
- (void)_remote_IXSOwnedDataPromise:(id)a3 getStagedPath:(id)a4;
- (void)_remote_IXSOwnedDataPromise:(id)a3 getTargetLastPathComponent:(id)a4;
- (void)_remote_IXSOwnedDataPromise:(id)a3 setStagedPath:(id)a4;
- (void)_remote_IXSOwnedDataPromise:(id)a3 setTargetLastPathComponent:(id)a4 withCompletion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 getAppExtensionPlaceholderPromises:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getAttributesWithCompletion:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getEntitlementsPromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getIconPromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getIconResourcesPromiseAndInfoPlistContentPromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getInfoPlistLoctablePromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getLaunchProhibitedWithCompletion:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getLocalizationDictionary:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getMetadataWithCompletion:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 getSinfDataWithCompletion:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 hasAppExtensionPlaceholderPromises:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 hasEntitlementsPromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 hasIconPromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 hasIconResourcesPromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 hasInfoPlistLoctablePromise:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 setAppExtensionPlaceholderPromiseUUIDs:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setAttributes:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setConfigurationCompleteWithCompletion:(id)a4;
- (void)_remote_IXSPlaceholder:(id)a3 setEntitlementsPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setIconPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setIconResourcesPromiseUUID:(id)a4 withInfoPlistIconContentPromiseUUID:(id)a5 completion:(id)a6;
- (void)_remote_IXSPlaceholder:(id)a3 setInfoPlistLoctablePromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setLaunchProhibited:(BOOL)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setLocalizationPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setMetadataPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSPlaceholder:(id)a3 setSinfPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_IXSPromisedOutOfBandStreamingZipTransfer:(id)a3 setArchiveBytesConsumed:(unint64_t)a4;
- (void)_remote_IXSPromisedStreamingZipTransfer:(id)a3 setArchiveBytesConsumed:(unint64_t)a4;
- (void)_remote_IXSPromisedTransferToPath:(id)a3 setShouldCopy:(BOOL)a4;
- (void)_remote_IXSPromisedTransferToPath:(id)a3 setTransferPath:(id)a4;
- (void)_remote_IXSPromisedTransferToPath:(id)a3 setTryDeltaCopy:(BOOL)a4;
- (void)_remote_addBundleIDs:(id)a3 toMappingsForPersona:(id)a4 completion:(id)a5;
- (void)_remote_addObserversForCoordinatorsWithUUIDs:(id)a3 fireObserverMethods:(BOOL)a4;
- (void)_remote_associateMultiPersonaAppsWithBundleIDs:(id)a3 withPersona:(id)a4 completion:(id)a5;
- (void)_remote_cancelCoordinatorForAppWithIdentity:(id)a3 reason:(id)a4 client:(unint64_t)a5 completion:(id)a6;
- (void)_remote_cancelCoordinatorsForAppsWithIdentities:(id)a3 reason:(id)a4 client:(unint64_t)a5 completion:(id)a6;
- (void)_remote_checkIfDataPromiseExistsForUUID:(id)a3 completion:(id)a4;
- (void)_remote_createAppReferenceDataPromiseWithSeed:(id)a3 ifMatchingPredicate:(id)a4 completion:(id)a5;
- (void)_remote_createInMemoryDataPromiseWithSeed:(id)a3 data:(id)a4 completion:(id)a5;
- (void)_remote_createInMemoryDictionaryPromiseWithSeed:(id)a3 dictionary:(id)a4 completion:(id)a5;
- (void)_remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:(id)a3 completion:(id)a4;
- (void)_remote_createOutOfBandTransferPromiseWithSeed:(id)a3 completion:(id)a4;
- (void)_remote_createPlaceholderDataPromiseWithSeed:(id)a3 completion:(id)a4;
- (void)_remote_createStreamingZipTransferDataPromiseWithSeed:(id)a3 completion:(id)a4;
- (void)_remote_createTransferToPathDataPromiseWithSeed:(id)a3 completion:(id)a4;
- (void)_remote_defaultAppMetadataForAppIdentity:(id)a3 completion:(id)a4;
- (void)_remote_defaultAppMetadataListWithCompletion:(id)a3;
- (void)_remote_displayUserPresentableErrorForApp:(id)a3 code:(int64_t)a4;
- (void)_remote_displayUserPresentableErrorForAppWithLocalizedName:(id)a3 code:(int64_t)a4;
- (void)_remote_displayUserPresentableErrorForApps:(id)a3 code:(int64_t)a4;
- (void)_remote_fakeClientDeathWithCompletion:(id)a3;
- (void)_remote_fetchRegisteredDataPromiseInfoForCreator:(unint64_t)a3 completion:(id)a4;
- (void)_remote_fetchSeedsForCoordinatorsWithIntent:(unint64_t)a3 completion:(id)a4;
- (void)_remote_killDaemonForTestingWithCompletion:(id)a3;
- (void)_remote_pingDaemonWithCompletion:(id)a3;
- (void)_remote_postNSCurrentLocaleDidChangeNotification:(id)a3;
- (void)_remote_prioritizeCoordinatorForAppWithIdentity:(id)a3 completion:(id)a4;
- (void)_remote_purgeRegisteredCoordinatorsAndPromisesForCreator:(unint64_t)a3 completion:(id)a4;
- (void)_remote_refreshContainersWithOptions:(id)a3 forAppWithIdentity:(id)a4 completion:(id)a5;
- (void)_remote_registerContentForOSModuleAtURL:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_remote_registerContentsForDiskImageAtURL:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_remote_registerObserverMachServiceName:(id)a3 forClientIdentifiers:(id)a4 respondingToSelectors:(unint64_t)a5;
- (void)_remote_registerTransientObserver:(id)a3 forClientIdentifiers:(id)a4 respondingToSelectors:(unint64_t)a5;
- (void)_remote_removabilityDataWithCompletion:(id)a3;
- (void)_remote_removabilityForAppWithIdentity:(id)a3 byClient:(unint64_t)a4 completion:(id)a5;
- (void)_remote_removabilityForAppWithIdentity:(id)a3 completion:(id)a4;
- (void)_remote_removeBundleIDs:(id)a3 fromMappingsForPersona:(id)a4 completion:(id)a5;
- (void)_remote_revertAppWithIdentity:(id)a3 completion:(id)a4;
- (void)_remote_setKnownOSModuleURLs:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_remote_setRemovability:(unint64_t)a3 forAppWithIdentity:(id)a4 byClient:(unint64_t)a5 completion:(id)a6;
- (void)_remote_setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 testSpecificValidationData:(id)a5 completion:(id)a6;
- (void)_remote_setTestingEnabled:(BOOL)a3 completion:(id)a4;
- (void)_remote_stagingLocationForInstallLocation:(id)a3 completion:(id)a4;
- (void)_remote_uninstallAppWithIdentity:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_remote_unregisterContentForOSModuleAtURL:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_remote_unregisterContentsForDiskImageAtURL:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_remote_updateSINFForAppWithIdentity:(id)a3 sinfData:(id)a4 options:(id)a5 completion:(id)a6;
- (void)_remote_updateiTunesMetadata:(id)a3 forAppWithIdentity:(id)a4 completion:(id)a5;
- (void)addInterestedCoordinatorUUID:(id)a3;
- (void)addInterestedCoordinatorUUIDs:(id)a3;
- (void)addInterestedPromiseUUID:(id)a3;
- (void)addInterestedPromiseUUIDs:(id)a3;
- (void)cancelOrphanedPromisesAndRemovePromiseReferences;
- (void)connectionInvalidated;
- (void)removeInterestedCoordinatorUUID:(id)a3;
- (void)removeInterestedCoordinatorUUIDs:(id)a3;
- (void)removeInterestedPromiseUUID:(id)a3;
- (void)removeInterestedPromiseUUIDs:(id)a3;
@end

@implementation IXSClientConnection

- (IXSClientConnection)initWithConnection:(id)a3
{
  v4 = a3;
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

    v13 = sub_10000D6A0(v4);
    clientName = v5->_clientName;
    v5->_clientName = v13;

    *&v5->_invalidated = 0;
    v15 = +[NSUUID UUID];
    connectionUUID = v5->_connectionUUID;
    v5->_connectionUUID = v15;

    [(IXSClientConnection *)v5 setXpcConnection:v4];
    if (v4)
    {
      [v4 auditToken];
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
      v9 = self;
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
  v5 = [(IXSClientConnection *)self clientName];
  v6 = [(IXSClientConnection *)self connectionUUID];
  v7 = [NSString stringWithFormat:@"<%@<%p> client:%@ uuid:%@>", v4, self, v5, v6];

  return v7;
}

- (void)addInterestedCoordinatorUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074E14;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addInterestedCoordinatorUUID:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074FB4;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeInterestedCoordinatorUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075154;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeInterestedCoordinatorUUID:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(IXSClientConnection *)self removeInterestedCoordinatorUUIDs:v4];
}

- (BOOL)interestedInCoordinatorUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000756AC;
  block[3] = &unk_1001012B0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)cancelOrphanedPromisesAndRemovePromiseReferences
{
  v3 = +[IXSDataPromiseManager sharedInstance];
  v4 = [(IXSClientConnection *)self clientName];
  v6 = sub_1000405FC("[IXSClientConnection cancelOrphanedPromisesAndRemovePromiseReferences]", 259, @"IXErrorDomain", 0x12uLL, 0, 0, @"Promise was not attached to a coordinator and is no longer referenced by client %@", v5, v4);

  v7 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075838;
  block[3] = &unk_100101300;
  block[4] = self;
  v11 = v3;
  v12 = v6;
  v8 = v6;
  v9 = v3;
  dispatch_sync(v7, block);
}

- (void)addInterestedPromiseUUID:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075A00;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addInterestedPromiseUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075BA0;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeInterestedPromiseUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100075D40;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeInterestedPromiseUUID:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(IXSClientConnection *)self removeInterestedPromiseUUIDs:v4];
}

- (BOOL)interestedInPromiseUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007610C;
  block[3] = &unk_1001012B0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_remote_createPlaceholderDataPromiseWithSeed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [IXSPlaceholder alloc];
  v9 = [(IXSClientConnection *)self xpcConnection];
  v37 = 0;
  v10 = [(IXSPlaceholder *)v8 initWithSeed:v6 fromConnection:v9 error:&v37];
  v11 = v37;

  if (v10)
  {
    v12 = +[IXSDataPromiseManager sharedInstance];
    [v12 registerPromise:v10];

    v13 = [(IXSDataPromise *)v10 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v13];

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
    v14 = [(IXSDataPromise *)v10 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000764B8;
    block[3] = &unk_1001019C0;
    v22 = v10;
    v23 = &v25;
    v24 = &v31;
    dispatch_sync(v14, block);

    v7[2](v7, v32[5], v26[5]);
    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3DA0(v6);
    }

    v16 = [v6 name];
    v17 = [v6 bundleName];
    v20 = IXStringForClientID([v6 creatorIdentifier]);
    v19 = sub_1000405FC("[IXSClientConnection _remote_createPlaceholderDataPromiseWithSeed:completion:]", 341, @"IXErrorDomain", 2uLL, v11, 0, @"Failed to create placeholder data promise with name: %@ bundleName: %@ client: %@", v18, v16);

    v7[2](v7, 0, v19);
    v11 = v19;
  }
}

- (void)_remote_createTransferToPathDataPromiseWithSeed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36 = 0;
  v8 = [[IXSPromisedTransferToPath alloc] initWithSeed:v6 error:&v36];
  v9 = v36;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    v11 = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v11];

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
    v12 = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007685C;
    block[3] = &unk_1001019C0;
    v21 = v8;
    v22 = &v24;
    v23 = &v30;
    dispatch_sync(v12, block);

    v7[2](v7, v31[5], v25[5]);
    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3E88(v6);
    }

    v14 = [v6 name];
    v15 = [v6 transferPath];
    v16 = [v15 path];
    v19 = IXStringForClientID([v6 creatorIdentifier]);
    v18 = sub_1000405FC("[IXSClientConnection _remote_createTransferToPathDataPromiseWithSeed:completion:]", 367, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create promised transfer to path data promise with name: %@ path: %@ client: %@", v17, v14);

    v7[2](v7, 0, v18);
    v9 = v18;
  }
}

- (void)_remote_createStreamingZipTransferDataPromiseWithSeed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = [[IXSPromisedStreamingZipTransfer alloc] initWithSeed:v6 error:&v34];
  v9 = v34;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    v11 = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v11];

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
    v12 = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076BD0;
    block[3] = &unk_1001019C0;
    v19 = v8;
    v20 = &v22;
    v21 = &v28;
    dispatch_sync(v12, block);

    v7[2](v7, v29[5], v23[5]);
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

    v14 = [v6 name];
    v17 = IXStringForClientID([v6 creatorIdentifier]);
    v16 = sub_1000405FC("[IXSClientConnection _remote_createStreamingZipTransferDataPromiseWithSeed:completion:]", 393, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create streaming zip transfer data promise with name: %@ client: %@", v15, v14);

    v7[2](v7, 0, v16);
    v9 = v16;
  }
}

- (void)_remote_createInMemoryDataPromiseWithSeed:(id)a3 data:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v11 = [[IXSPromisedInMemoryData alloc] initWithSeed:v8 data:v9 error:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = +[IXSDataPromiseManager sharedInstance];
    [v13 registerPromise:v11];

    v14 = [(IXSDataPromise *)v11 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v14];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000764A0;
    v28 = sub_1000764B0;
    v29 = 0;
    v15 = [(IXSDataPromise *)v11 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076F00;
    block[3] = &unk_100101268;
    v23 = &v24;
    v22 = v11;
    dispatch_sync(v15, block);

    v10[2](v10, v25[5], 0);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4034();
    }

    v17 = [v8 name];
    v20 = IXStringForClientID([v8 creatorIdentifier]);
    v19 = sub_1000405FC("[IXSClientConnection _remote_createInMemoryDataPromiseWithSeed:data:completion:]", 420, @"IXErrorDomain", 2uLL, v12, 0, @"Failed to create in memory data promise with name: %@ client: %@", v18, v17);

    v10[2](v10, 0, v19);
    v12 = v19;
  }
}

- (void)_remote_createInMemoryDictionaryPromiseWithSeed:(id)a3 dictionary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v11 = [[IXSPromisedInMemoryDictionary alloc] initWithSeed:v8 dictionary:v9 error:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = +[IXSDataPromiseManager sharedInstance];
    [v13 registerPromise:v11];

    v14 = [(IXSDataPromise *)v11 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v14];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1000764A0;
    v28 = sub_1000764B0;
    v29 = 0;
    v15 = [(IXSDataPromise *)v11 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000771FC;
    block[3] = &unk_100101268;
    v23 = &v24;
    v22 = v11;
    dispatch_sync(v15, block);

    v10[2](v10, v25[5], 0);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A40E8();
    }

    v17 = [v8 name];
    v20 = IXStringForClientID([v8 creatorIdentifier]);
    v19 = sub_1000405FC("[IXSClientConnection _remote_createInMemoryDictionaryPromiseWithSeed:dictionary:completion:]", 442, @"IXErrorDomain", 2uLL, v12, 0, @"Failed to create in memory dictionary promise with name: %@ client: %@", v18, v17);

    v10[2](v10, 0, v19);
    v12 = v19;
  }
}

- (void)_remote_createOutOfBandTransferPromiseWithSeed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v8 = [(IXSDataPromise *)[IXSPromisedOutOfBandTransfer alloc] initWithSeed:v6 error:&v27];
  v9 = v27;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    v11 = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v11];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1000764A0;
    v25 = sub_1000764B0;
    v26 = 0;
    v12 = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000774E4;
    block[3] = &unk_100101268;
    v20 = &v21;
    v19 = v8;
    dispatch_sync(v12, block);

    v7[2](v7, v22[5], 0);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A419C();
    }

    v14 = [v6 name];
    v17 = IXStringForClientID([v6 creatorIdentifier]);
    v16 = sub_1000405FC("[IXSClientConnection _remote_createOutOfBandTransferPromiseWithSeed:completion:]", 464, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create out of band transfer promise with name: %@ client: %@", v15, v14);

    v7[2](v7, 0, v16);
    v9 = v16;
  }
}

- (void)_remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v8 = [[IXSPromisedOutOfBandStreamingZipTransfer alloc] initWithSeed:v6 error:&v27];
  v9 = v27;
  if (v8)
  {
    v10 = +[IXSDataPromiseManager sharedInstance];
    [v10 registerPromise:v8];

    v11 = [(IXSDataPromise *)v8 uniqueIdentifier];
    [(IXSClientConnection *)self addInterestedPromiseUUID:v11];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1000764A0;
    v25 = sub_1000764B0;
    v26 = 0;
    v12 = [(IXSDataPromise *)v8 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000777CC;
    block[3] = &unk_100101268;
    v20 = &v21;
    v19 = v8;
    dispatch_sync(v12, block);

    v7[2](v7, v22[5], 0);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4250();
    }

    v14 = [v6 name];
    v17 = IXStringForClientID([v6 creatorIdentifier]);
    v16 = sub_1000405FC("[IXSClientConnection _remote_createOutOfBandStreamingZipTransferDataPromiseWithSeed:completion:]", 486, @"IXErrorDomain", 2uLL, v9, 0, @"Failed to create out of band streaming zip transfer promise with name: %@ client: %@", v15, v14);

    v7[2](v7, 0, v16);
    v9 = v16;
  }
}

- (void)_remote_createAppReferenceDataPromiseWithSeed:(id)a3 ifMatchingPredicate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identity];
  v28 = 0;
  v12 = [v11 resolvePersonaWithError:&v28];
  v13 = v28;

  if (v12)
  {
    v27 = v13;
    v14 = [[IXSPromisedAppReference alloc] initWithSeed:v8 ifMatchingPredicate:v9 error:&v27];
    v15 = v27;

    if (v14)
    {
      v16 = +[IXSDataPromiseManager sharedInstance];
      [v16 registerPromise:v14];

      v17 = [(IXSDataPromise *)v14 uniqueIdentifier];
      [(IXSClientConnection *)self addInterestedPromiseUUID:v17];

      v18 = [(IXSDataPromise *)v14 accessQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100077AA8;
      v24[3] = &unk_1001028F8;
      v26 = v10;
      v25 = v14;
      sub_100071134(v18, v24);
    }

    else
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000A4304();
      }

      v20 = [v8 name];
      v23 = IXStringForClientID([v8 creatorIdentifier]);
      v22 = sub_1000405FC("[IXSClientConnection _remote_createAppReferenceDataPromiseWithSeed:ifMatchingPredicate:completion:]", 515, @"IXErrorDomain", 2uLL, v15, 0, @"Failed to create promised app reference with name: %@ client: %@", v21, v20);

      (*(v10 + 2))(v10, 0, v22);
      v15 = v22;
    }

    v13 = v15;
  }

  else
  {
    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)_remote_fetchSeedsForCoordinatorsWithIntent:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = +[IXSCoordinatorManager sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078C90;
  v14[3] = &unk_100103290;
  v16 = a3;
  v9 = v7;
  v15 = v9;
  [v8 enumerateCoordinatorsApplicableToConnection:self usingBlock:v14];

  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IXSClientConnection *)self clientName];
    v12 = [v9 count];
    if (a3 >= 8)
    {
      v13 = [NSString stringWithFormat:@"Unknown intent value %lu", a3];
    }

    else
    {
      v13 = off_100103838[a3];
    }

    *buf = 136315906;
    v18 = "[IXSClientConnection _remote_fetchSeedsForCoordinatorsWithIntent:completion:]";
    v19 = 2112;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ fetched %lu coordinators for enumeration with intent %@", buf, 0x2Au);
  }

  v6[2](v6, v9, 0);
}

- (void)_remote_fetchRegisteredDataPromiseInfoForCreator:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = +[IXSDataPromiseManager sharedInstance];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100078DF8;
  v13 = &unk_1001032B8;
  v14 = v6;
  v15 = a3;
  v8 = v6;
  [v7 enumeratePromises:&v10];

  v9 = [v8 copy];
  v5[2](v5, v9, 0);
}

- (void)_remote_checkIfDataPromiseExistsForUUID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IXSDataPromiseManager sharedInstance];
  v8 = [v7 promiseForUUID:v6];

  v5[2](v5, v8 != 0, 0);
}

- (void)_remote_cancelCoordinatorForAppWithIdentity:(id)a3 reason:(id)a4 client:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v33 = 0;
  v13 = [v10 resolvePersonaWithError:&v33];
  v14 = v33;
  if (v13)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = IXStringForClientID(a5);
      v17 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v35 = "[IXSClientConnection _remote_cancelCoordinatorForAppWithIdentity:reason:client:completion:]";
      v36 = 2112;
      v37 = v10;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Cancellation for %@ (client %@) requested by %@ for reason %@", buf, 0x34u);
    }

    v18 = +[IXSCoordinatorManager sharedInstance];
    v19 = [v18 coordinatorForIdentity:v10];

    if (v19)
    {
      buf[0] = 0;
      v32 = 0;
      v20 = [v19 cancelForReason:v11 client:a5 needsLSDatabaseSync:buf error:&v32];
      v21 = v32;
      v22 = v21;
      v23 = 0;
      if ((v20 & 1) == 0)
      {
        v23 = v21;
      }

      v12[2](v12, buf[0], v23);

LABEL_13:
LABEL_14:

      goto LABEL_15;
    }

    if (a5 == 8)
    {
LABEL_10:
      v24 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[IXSClientConnection _remote_cancelCoordinatorForAppWithIdentity:reason:client:completion:]";
        v36 = 2112;
        v37 = v10;
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
      v31 = v12;
      [(IXSClientConnection *)self _remote_uninstallAppWithIdentity:v10 options:v23 completion:v30];

      goto LABEL_13;
    }

    v25 = [v11 domain];
    if ([v25 isEqualToString:@"IXUserPresentableErrorDomain"])
    {
      v26 = [v11 code];

      if (v26 == 3)
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

    v29 = sub_1000405FC("[IXSClientConnection _remote_cancelCoordinatorForAppWithIdentity:reason:client:completion:]", 744, @"IXErrorDomain", 6uLL, 0, 0, @"Coordinator did not exist for bundle ID %@", v28, v10);
    v12[2](v12, 0, v29);

    goto LABEL_14;
  }

  v12[2](v12, 0, v14);
LABEL_15:
}

- (void)_remote_cancelCoordinatorsForAppsWithIdentities:(id)a3 reason:(id)a4 client:(unint64_t)a5 completion:(id)a6
{
  v8 = a3;
  v32 = a4;
  v33 = a6;
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    v11 = IXStringForClientID(a5);
    v12 = [(IXSClientConnection *)self clientName];
    *buf = 136316162;
    *&buf[4] = "[IXSClientConnection _remote_cancelCoordinatorsForAppsWithIdentities:reason:client:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2112;
    *&buf[20] = v11;
    *&buf[28] = 2112;
    *&buf[30] = v12;
    *&buf[38] = 2112;
    v68 = v32;
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
  obj = v8;
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
          (*(v33 + 2))(v33, 0, *(*&buf[8] + 40));

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
  v19 = v32;
  v20 = [v19 domain];
  if ([v20 isEqualToString:@"IXUserPresentableErrorDomain"])
  {
    v21 = [v19 userInfo];
    v22 = [v21 objectForKeyedSubscript:@"AlertUser"];
    v23 = sub_10008F068(v22, 0);

    if (!v23)
    {
      v31 = 0;
      v36 = v19;
      goto LABEL_18;
    }

    v24 = [v19 userInfo];
    v20 = [v24 mutableCopy];

    [v20 removeObjectForKey:@"AlertUser"];
    v25 = [v19 domain];
    v36 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v25, [v19 code], v20);

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
        [(IXSClientConnection *)self _remote_cancelCoordinatorForAppWithIdentity:v30 reason:v36 client:a5 completion:v48];
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
  v46 = a5;
  v44 = v56;
  v42 = v33;
  v45 = buf;
  dispatch_group_notify(v26, &_dispatch_main_q, block);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);

LABEL_26:
  _Block_object_dispose(buf, 8);
}

- (void)_remote_prioritizeCoordinatorForAppWithIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v73 = 0;
  v8 = [v6 resolvePersonaWithError:&v73];
  v9 = v73;
  if (v8)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
      v76 = 2112;
      v77 = v6;
      v78 = 2112;
      v79 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Prioritizing coordinator for %@ as requested by %@", buf, 0x20u);
    }

    v12 = +[IXSCoordinatorManager sharedInstance];
    v13 = [v12 coordinatorForIdentity:v6];

    if (v13)
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10007A728;
      v71[3] = &unk_100103330;
      v72 = v7;
      [v13 prioritizeWithCompletion:v71];
      v14 = v72;
LABEL_75:

      goto LABEL_76;
    }

    v66 = sub_10007127C();
    v14 = [v6 bundleID];
    v70 = v9;
    v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v70];
    v16 = v70;

    if (v15)
    {
      if ([v15 hasParallelPlaceholder])
      {
        v17 = [(IXSClientConnection *)self clientName];
        v18 = [NSString stringWithFormat:@"Uninstalling orphaned parallel placeholder for %@ when %@ sent us a prioritize message", v6, v17];

        v19 = +[IXSAppUninstaller sharedUninstaller];
        [v19 uninstallParallelPlaceholderForIdentity:v6 reason:v18];

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
        v77 = v6;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s: Discovered that app %@ is fully installed when trying to prioritize; this doesn't make sense.", buf, 0x16u);
      }

      if (!v66)
      {
        v20 = 0;
LABEL_74:
        (*(v7 + 2))(v7, v20, v16);

        v9 = v16;
        goto LABEL_75;
      }

      v18 = [NSString stringWithFormat:@"Attempted to prioritize app %@ but it was fully installed!", v6];
      sub_100013A40(v18, 0);
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
      v77 = v14;
      v78 = 2112;
      v79 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch LSApplicationRecord for application with identifier %@: %@", buf, 0x20u);
    }

    v69 = 0;
    v18 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v14 allowPlaceholder:1 error:&v69];
    v22 = v69;
    v23 = v22;
    if (!v18)
    {
      v47 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000A481C();
      }

      v16 = sub_1000405FC("[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]", 898, @"IXErrorDomain", 1uLL, v23, 0, @"Failed to get a placeholder app record for %@ it does not appear to be installed.", v48, v6);;

      if (!v66)
      {
        v20 = 0;
        v15 = 0;
        goto LABEL_73;
      }

      v49 = [NSString stringWithFormat:@"Got prioritize for app %@ but it's not installed nor is it a placeholder!", v6];
      sub_100013A40(v49, 0);
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
        v49 = 0;
LABEL_71:

        goto LABEL_72;
      }

      v51 = [NSString stringWithFormat:@"Failed to get bundle metadata for %@", v6];
      sub_100013A40(v51, v16);
      v49 = 0;
LABEL_70:

      goto LABEL_71;
    }

    v63 = v16;
    v25 = [v24 placeholderFailureReason];
    v67 = v24;
    v61 = [v24 placeholderFailureUnderlyingErrorSource];
    v26 = [v18 iTunesMetadata];
    v27 = [v26 distributorInfo];

    v65 = v27;
    v28 = [v27 distributorIsThirdParty];
    v59 = sub_10003B2E0(v14, 13);
    v57 = sub_10003B2E0(v14, 2);
    v29 = [v18 isAppStoreVendable];
    v30 = v18;
    v31 = v29;
    v64 = v30;
    v32 = [v30 iTunesMetadata];
    v33 = [v32 managementDeclarationIdentifier];

    if (v33)
    {
      v34 = 1;
    }

    else
    {
      v34 = v28;
    }

    v35 = v61;
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

    IsHardError = IXUserPresentableErrorCodeIsHardError(v25, v36);
    v38 = IsHardError;
    v62 = v25;
    if (v25 && (IsHardError & 1) != 0)
    {
LABEL_24:
      v60 = v36;
      v58 = [v67 placeholderFailureUnderlyingError];
      v39 = 8;
      if (v31)
      {
        v39 = 0;
      }

      if (!v25)
      {
        v25 = v39;
      }

      v40 = sub_1000031B0(off_100121958);
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        v42 = v58;
        v16 = v63;
        if (v41)
        {
          *buf = 136315650;
          v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
          v76 = 2112;
          v77 = v6;
          v78 = 2048;
          v79 = v25;
          v43 = "%s: No coordinator found for %@ and error is a hard error (%ld) so showing alert";
          v44 = v40;
          v45 = 32;
LABEL_58:
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
        }

LABEL_59:

        v54 = +[IXSErrorPresenter sharedPresenter];
        [v54 presentErrorForIdentity:v6 code:v25 underlyingError:v42 errorSource:v60];
        v15 = 0;
        v18 = v64;
LABEL_69:

        v49 = v67;
        v51 = v65;
        goto LABEL_70;
      }

      v16 = v63;
      if (v31)
      {
        v42 = v58;
        if (!v41)
        {
          goto LABEL_59;
        }

        *buf = 136315394;
        v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
        v76 = 2112;
        v77 = v6;
        v43 = "%s: No coordinator found for %@ and prioritize is otherwise unhandled; showing alert";
      }

      else
      {
        v42 = v58;
        if (!v41)
        {
          goto LABEL_59;
        }

        *buf = 136315394;
        v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
        v76 = 2112;
        v77 = v6;
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
      v18 = v64;
    }

    else
    {
      if (v36 == 23)
      {
        v53 = sub_1000031B0(off_100121958);
        v16 = v63;
        v18 = v64;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v75 = "[IXSClientConnection _remote_prioritizeCoordinatorForAppWithIdentity:completion:]";
          v76 = 2112;
          v77 = v6;
          v78 = 2048;
          v79 = v25;
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

        if (v28)
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
          v77 = v6;
          v78 = 2048;
          v79 = v62;
          v80 = 2112;
          v81 = v55;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%s: No coordinator found for %@ and app is vendable by App Store (error %ld); sending message to prioritize by identity to %@.", buf, 0x2Au);
        }

        v16 = v63;
        v18 = v64;
      }
    }

    v42 = +[IXSAppInstallObserverManager sharedInstance];
    v54 = [NSNumber numberWithUnsignedInteger:v52];
    v56 = [NSSet setWithObjects:v54, 0];
    [v42 shouldPrioritizeAppWithIdentity:v6 forClientIDs:v56];

    v15 = 0;
    goto LABEL_69;
  }

  (*(v7 + 2))(v7, 0, v9);
LABEL_76:
}

- (void)_remote_purgeRegisteredCoordinatorsAndPromisesForCreator:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSClientConnection *)self xpcConnection];
  v8 = sub_10000D71C(v7, @"com.apple.private.InstallCoordination.unitTestRunner");

  v9 = sub_1000031B0(off_100121958);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = IXStringForClientID(a3);
      v12 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v20 = "[IXSClientConnection _remote_purgeRegisteredCoordinatorsAndPromisesForCreator:completion:]";
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Purging all registered coordinators and promises for creator %@ as requested by %@", buf, 0x20u);
    }

    v13 = +[IXSCoordinatorManager sharedInstance];
    [v13 clearAllCoordinatorsForCreator:a3];

    v14 = +[IXSDataPromiseManager sharedInstance];
    [v14 clearAllPromisesForCreator:a3];

    v15 = +[IXSPendingOperationsTracker sharedInstance];
    [v15 clearAllPendingOperations];

    v6[2](v6, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A489C(self);
    }

    v16 = [(IXSClientConnection *)self clientName];
    v18 = sub_1000405FC("[IXSClientConnection _remote_purgeRegisteredCoordinatorsAndPromisesForCreator:completion:]", 996, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v17, v16);

    v6[2](v6, v18);
    v6 = v18;
  }
}

- (void)_remote_killDaemonForTestingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(v5, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IXSClientConnection *)self clientName];
      *buf = 136315394;
      v14 = "[IXSClientConnection _remote_killDaemonForTestingWithCompletion:]";
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Exiting because testing client %@ told us to", buf, 0x16u);
    }

    exit(1);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000A4934(self);
  }

  v9 = [(IXSClientConnection *)self clientName];
  v11 = sub_1000405FC("[IXSClientConnection _remote_killDaemonForTestingWithCompletion:]", 1016, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v10, v9);

  v4[2](v4, v11);
}

- (void)_remote_pingDaemonWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(v5, @"com.apple.private.InstallCoordination.unitTestRunner");

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
    v4[2](v4, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A49CC(self);
    }

    v10 = [(IXSClientConnection *)self clientName];
    v12 = sub_1000405FC("[IXSClientConnection _remote_pingDaemonWithCompletion:]", 1033, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v11, v10);

    v4[2](v4, 0xFFFFFFFFLL, v12);
    v4 = v12;
  }
}

- (void)_remote_fakeClientDeathWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(v5, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IXSClientConnection *)self clientName];
      *buf = 136315394;
      v14 = "[IXSClientConnection _remote_fakeClientDeathWithCompletion:]";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Faking death of client %@", buf, 0x16u);
    }

    [(IXSClientConnection *)self setFakeClientProcessDeath:1];
    [(IXSClientConnection *)self cancelOrphanedPromisesAndRemovePromiseReferences];
    v4[2](v4, 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4A64(self);
    }

    v10 = [(IXSClientConnection *)self clientName];
    v12 = sub_1000405FC("[IXSClientConnection _remote_fakeClientDeathWithCompletion:]", 1049, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v11, v10);

    v4[2](v4, v12);
    v4 = v12;
  }
}

- (void)_remote_postNSCurrentLocaleDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(v5, @"com.apple.private.InstallCoordination.unitTestRunner");

  v7 = sub_1000031B0(off_100121958);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IXSClientConnection *)self clientName];
      *buf = 136315394;
      v15 = "[IXSClientConnection _remote_postNSCurrentLocaleDidChangeNotification:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Posting NSCurrentLocaleDidChangeNotification because testing client %@ told us to", buf, 0x16u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:NSCurrentLocaleDidChangeNotification object:0];

    v4[2](v4, 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4AFC(self);
    }

    v11 = [(IXSClientConnection *)self clientName];
    v13 = sub_1000405FC("[IXSClientConnection _remote_postNSCurrentLocaleDidChangeNotification:]", 1075, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v12, v11);

    v4[2](v4, v13);
    v4 = v13;
  }
}

- (void)_remote_setTestingEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(IXSClientConnection *)self xpcConnection];
  v8 = sub_10000D71C(v7, @"com.apple.private.InstallCoordination.unitTestRunner");

  v9 = sub_1000031B0(off_100121958);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      v12 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v17 = "[IXSClientConnection _remote_setTestingEnabled:completion:]";
      v18 = 1024;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Setting testing enabled to %c by client %@", buf, 0x1Cu);
    }

    if (v4)
    {
      sub_10003B480();
    }

    else
    {
      sub_10003B494();
    }

    v6[2](v6, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4B94(self);
    }

    v13 = [(IXSClientConnection *)self clientName];
    v15 = sub_1000405FC("[IXSClientConnection _remote_setTestingEnabled:completion:]", 1093, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v14, v13);

    v6[2](v6, v15);
    v6 = v15;
  }
}

- (void)_remote_setTestModeForIdentifierPrefix:(id)a3 testMode:(unint64_t)a4 testSpecificValidationData:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(IXSClientConnection *)self xpcConnection];
  v14 = sub_10000D71C(v13, @"com.apple.private.InstallCoordination.unitTestRunner");

  v15 = sub_1000031B0(off_100121958);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v22 = "[IXSClientConnection _remote_setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:completion:]";
      v23 = 2048;
      v24 = a4;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Setting test mode %lu for bundle prefix %@ by client %@", buf, 0x2Au);
    }

    sub_10003B2E8(v10, a4, v11);
    v12[2](v12, 0);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4C2C(self);
    }

    v18 = [(IXSClientConnection *)self clientName];
    v20 = sub_1000405FC("[IXSClientConnection _remote_setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:completion:]", 1115, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing test runner entitlement.", v19, v18);

    v12[2](v12, v20);
    v12 = v20;
  }
}

- (void)_remote_registerContentsForDiskImageAtURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self xpcConnection];
  v11 = sub_10000D71C(v10, @"com.apple.private.InstallCoordination.diskImageContentRegistration");

  if ((v11 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4CC4(self);
    }

    v14 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_registerContentsForDiskImageAtURL:options:completion:]", 1155, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing disk image (client registration/unregistration) operation entitlement.", v17, v14);
    goto LABEL_9;
  }

  v12 = sub_1000031B0(off_100121958);
  v13 = v12;
  if (a4)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4D5C(self);
    }

    v14 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_registerContentsForDiskImageAtURL:options:completion:]", 1161, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, v14);
    v18 = LABEL_9:;

    v9[2](v9, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 path];
    v20 = [(IXSClientConnection *)self clientName];
    *buf = 136315650;
    v23 = "[IXSClientConnection _remote_registerContentsForDiskImageAtURL:options:completion:]";
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Registering contents for disk image mounted at %@ by client %@", buf, 0x20u);
  }

  v21 = MobileInstallationRegisterContentsForDiskImageAtURL();
  v18 = 0;
  v9[2](v9, v21, v18);
LABEL_10:
}

- (void)_remote_unregisterContentsForDiskImageAtURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self xpcConnection];
  v11 = sub_10000D71C(v10, @"com.apple.private.InstallCoordination.diskImageContentRegistration");

  if ((v11 & 1) == 0)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4DF4(self);
    }

    v13 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]", 1179, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing disk image (contents registration/unregistration) operation entitlement.", v16, v13);
    goto LABEL_9;
  }

  if (a4)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4E8C(self);
    }

    v13 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]", 1185, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v14, v13);
    v17 = LABEL_9:;

    v9[2](v9, 0, v17);
    goto LABEL_10;
  }

  v18 = [v8 path];
  v19 = realpath_DARWIN_EXTSN([v18 fileSystemRepresentation], 0);
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
    v21 = sub_1000405FC("_SanitizedRealPath", 1135, NSPOSIXErrorDomain, v52, 0, 0, @"Failed to retrieve realpath for %@ : %d (%s)", v23, v18);
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
      v51 = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v66 = "[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]";
      v67 = 2112;
      v68 = v51;
      v69 = 2112;
      v70 = v18;
      v71 = 2112;
      v72 = v57;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: Client %@ has passed an invalid disk image path %@ : %@", buf, 0x2Au);
    }

    v45 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]", 1196, @"IXErrorDomain", 0x35uLL, v57, 0, @"Client %@ has passed an invalid disk image path %@", v46, v45);

    v9[2](v9, 0, v17);
    goto LABEL_47;
  }

  v53 = self;
  v54 = v18;
  v55 = v9;
  v56 = v8;
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
      v34 = [v33 URL];
      v35 = [v34 path];
      if ([v35 hasPrefix:v20])
      {
        v36 = [v33 isPlaceholder];

        if (v36)
        {
          continue;
        }

        v34 = [v33 bundleIdentifier];
        [v27 addObject:v34];
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
      v48 = [(IXSClientConnection *)v53 clientName];
      *buf = 136315650;
      v66 = "[IXSClientConnection _remote_unregisterContentsForDiskImageAtURL:options:completion:]";
      v67 = 2112;
      v68 = v20;
      v69 = 2112;
      v70 = v48;
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
  v9 = v55;
  [v40 invalidate];
  v9[2](v9, v43, v17);

  v8 = v56;
  v18 = v54;
LABEL_47:

LABEL_10:
}

- (void)_remote_registerContentForOSModuleAtURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self clientName];
  v11 = [(IXSClientConnection *)self xpcConnection];
  v12 = sub_10000D71C(v11, @"com.apple.private.InstallCoordination.OSModuleOperations");

  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A4FA4();
    }

    sub_1000405FC("[IXSClientConnection _remote_registerContentForOSModuleAtURL:options:completion:]", 1246, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing OSModule operation entitlement.", v17, v10);
    goto LABEL_9;
  }

  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5018();
    }

    sub_1000405FC("[IXSClientConnection _remote_registerContentForOSModuleAtURL:options:completion:]", 1252, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, v10);
    v18 = LABEL_9:;
    v9[2](v9, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 path];
    *buf = 136315650;
    v22 = "[IXSClientConnection _remote_registerContentForOSModuleAtURL:options:completion:]";
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Registering contents for OSModule at %@ by client %@", buf, 0x20u);
  }

  v20 = MobileInstallationRegisterContentsOnOSModuleAtURL();
  v18 = 0;
  v9[2](v9, v20, v18);
LABEL_10:
}

- (void)_remote_unregisterContentForOSModuleAtURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self clientName];
  v11 = [(IXSClientConnection *)self xpcConnection];
  v12 = sub_10000D71C(v11, @"com.apple.private.InstallCoordination.OSModuleOperations");

  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A508C();
    }

    sub_1000405FC("[IXSClientConnection _remote_unregisterContentForOSModuleAtURL:options:completion:]", 1279, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing OS Module operation entitlement.", v17, v10);
    goto LABEL_9;
  }

  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5100();
    }

    sub_1000405FC("[IXSClientConnection _remote_unregisterContentForOSModuleAtURL:options:completion:]", 1285, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, v10);
    v18 = LABEL_9:;
    v9[2](v9, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 path];
    *buf = 136315650;
    v22 = "[IXSClientConnection _remote_unregisterContentForOSModuleAtURL:options:completion:]";
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Unregistering contents of OSModule at %@ by client %@", buf, 0x20u);
  }

  v20 = MobileInstallationUnregisterContentsOnOSModuleAtURL();
  v18 = 0;
  v9[2](v9, v20, v18);
LABEL_10:
}

- (void)_remote_setKnownOSModuleURLs:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self clientName];
  v11 = [(IXSClientConnection *)self xpcConnection];
  v12 = sub_10000D71C(v11, @"com.apple.private.InstallCoordination.OSModuleOperations");

  if ((v12 & 1) == 0)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5174();
    }

    sub_1000405FC("[IXSClientConnection _remote_setKnownOSModuleURLs:options:completion:]", 1312, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing OSModule operation entitlement.", v17, v10);
    goto LABEL_9;
  }

  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A51E8();
    }

    sub_1000405FC("[IXSClientConnection _remote_setKnownOSModuleURLs:options:completion:]", 1318, @"IXErrorDomain", 0x35uLL, 0, 0, @"Client %@ has passed non-nil options.", v15, v10);
    v18 = LABEL_9:;
    v9[2](v9, 0, v18);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[IXSClientConnection _remote_setKnownOSModuleURLs:options:completion:]";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Reconciling known OSModule URLs %@ set by client %@", buf, 0x20u);
  }

  v19 = MobileInstallationReconcileContentsOnKnownOSModules();
  v18 = 0;
  v9[2](v9, v19, v18);
LABEL_10:
}

- (void)_remote_associateMultiPersonaAppsWithBundleIDs:(id)a3 withPersona:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v11 = sub_10007C830(&v30);
  v12 = v30;
  if (v11)
  {
    v13 = [(IXSClientConnection *)self xpcConnection];
    v14 = sub_10000D71C(v13, @"com.apple.private.InstallCoordination.personaBasedMultiUser");

    v15 = sub_1000031B0(off_100121958);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(IXSClientConnection *)self clientName];
        v18 = [v8 allObjects];
        v19 = [v18 componentsJoinedByString:{@", "}];
        *buf = 136315906;
        v32 = "[IXSClientConnection _remote_associateMultiPersonaAppsWithBundleIDs:withPersona:completion:]";
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v9;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client %@ associating persona %@ with bundle IDs: %@", buf, 0x2Au);
      }

      v20 = [IXTerminationAssertion alloc];
      v21 = [NSString stringWithFormat:@"Assertion for associating persona %@ : %@", v9, v8];
      v29 = v12;
      v22 = [(IXTerminationAssertion *)v20 initForBundleIDs:v8 description:v21 terminationResistance:50 error:&v29];
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
      v10[2](v10, v24, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A525C(self);
      }

      v26 = [(IXSClientConnection *)self clientName];
      v23 = sub_1000405FC("[IXSClientConnection _remote_associateMultiPersonaAppsWithBundleIDs:withPersona:completion:]", 1380, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing persona based multi user (associating bundleIDs with persona) operation entitlement.", v27, v26);

      v10[2](v10, 0, v23);
    }

    v12 = v23;
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)_remote_addBundleIDs:(id)a3 toMappingsForPersona:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v11 = sub_10007C830(&v30);
  v12 = v30;
  if (v11)
  {
    v13 = [(IXSClientConnection *)self xpcConnection];
    v14 = sub_10000D71C(v13, @"com.apple.private.InstallCoordination.personaBasedMultiUser");

    v15 = sub_1000031B0(off_100121958);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(IXSClientConnection *)self clientName];
        v18 = [v8 allObjects];
        v19 = [v18 componentsJoinedByString:{@", "}];
        *buf = 136315906;
        v32 = "[IXSClientConnection _remote_addBundleIDs:toMappingsForPersona:completion:]";
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client %@ adding bundleID %@ to persona: %@", buf, 0x2Au);
      }

      v20 = [IXTerminationAssertion alloc];
      v21 = [NSString stringWithFormat:@"Assertion for associating persona %@ : %@", v9, v8];
      v29 = v12;
      v22 = [(IXTerminationAssertion *)v20 initForBundleIDs:v8 description:v21 terminationResistance:50 error:&v29];
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
      v10[2](v10, v24, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A53FC(self);
      }

      v26 = [(IXSClientConnection *)self clientName];
      v23 = sub_1000405FC("[IXSClientConnection _remote_addBundleIDs:toMappingsForPersona:completion:]", 1414, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing persona based multi user (associating bundleIDs with persona) operation entitlement.", v27, v26);

      v10[2](v10, 0, v23);
    }

    v12 = v23;
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)_remote_removeBundleIDs:(id)a3 fromMappingsForPersona:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = 0;
  v11 = sub_10007C830(&v30);
  v12 = v30;
  if (v11)
  {
    v13 = [(IXSClientConnection *)self xpcConnection];
    v14 = sub_10000D71C(v13, @"com.apple.private.InstallCoordination.personaBasedMultiUser");

    v15 = sub_1000031B0(off_100121958);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(IXSClientConnection *)self clientName];
        v18 = [v8 allObjects];
        v19 = [v18 componentsJoinedByString:{@", "}];
        *buf = 136315906;
        v32 = "[IXSClientConnection _remote_removeBundleIDs:fromMappingsForPersona:completion:]";
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Client %@ removing bundle IDs: %@ from persona %@", buf, 0x2Au);
      }

      v20 = [IXTerminationAssertion alloc];
      v21 = [NSString stringWithFormat:@"Assertion for disassociating persona %@ : %@", v9, v8];
      v29 = v12;
      v22 = [(IXTerminationAssertion *)v20 initForBundleIDs:v8 description:v21 terminationResistance:50 error:&v29];
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
      v10[2](v10, v24, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5494(self);
      }

      v26 = [(IXSClientConnection *)self clientName];
      v23 = sub_1000405FC("[IXSClientConnection _remote_removeBundleIDs:fromMappingsForPersona:completion:]", 1448, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing persona based multi user (associating bundleIDs with persona) operation entitlement.", v27, v26);

      v10[2](v10, 0, v23);
    }

    v12 = v23;
  }

  else
  {
    v10[2](v10, 0, v12);
  }
}

- (void)_remote_removabilityForAppWithIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [v6 resolvePersonaWithError:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [v6 bundleID];
    v11 = +[IXSAppRemovabilityManager sharedInstance];
    v12 = [v11 removabilityMetadataForAppWithIdentity:v6];

    v13 = [v12 removability];
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = IXStringForAppRemovability(v13);
      v16 = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v19 = "[IXSClientConnection _remote_removabilityForAppWithIdentity:completion:]";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Returning removability %@ for %@ to client %@", buf, 0x2Au);
    }

    v7[2](v7, v13, 0);
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }
}

- (void)_remote_removabilityForAppWithIdentity:(id)a3 byClient:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v10 = [v8 resolvePersonaWithError:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = +[IXSAppRemovabilityManager sharedInstance];
    v13 = [v12 removabilityForAppWithIdentity:v8 client:a4];

    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = IXStringForAppRemovability(v13);
      v16 = IXStringForAppRemovabilityClient(a4);
      v17 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v20 = "[IXSClientConnection _remote_removabilityForAppWithIdentity:byClient:completion:]";
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Returning removability %@ set for %@ by client %@ to caller %@", buf, 0x34u);
    }

    v9[2](v9, v13, 0);
  }

  else
  {
    (v9)[2](v9, 0, v11);
  }
}

- (void)_remote_setRemovability:(unint64_t)a3 forAppWithIdentity:(id)a4 byClient:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v31 = 0;
  v12 = [v10 resolvePersonaWithError:&v31];
  v13 = v31;
  if (v12)
  {
    v29 = [v10 bundleID];
    v14 = [(IXSClientConnection *)self xpcConnection];
    v15 = sub_10000D71C(v14, @"com.apple.springboard.application-removability.proxy");
    v16 = sub_1000031B0(off_100121958);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = IXStringForAppRemovability(a3);
        v19 = [(IXSClientConnection *)self clientName];
        v20 = IXStringForAppRemovabilityClient(a5);
        *buf = 136316162;
        v33 = "[IXSClientConnection _remote_setRemovability:forAppWithIdentity:byClient:completion:]";
        v34 = 2112;
        v35 = v29;
        v36 = 2112;
        v37 = v18;
        v38 = 2112;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Setting removability for %@ to %@ for client %@ with type %@", buf, 0x34u);
      }

      v21 = +[IXSAppRemovabilityManager sharedInstance];
      v30 = v13;
      v22 = [v21 setRemovability:a3 forAppWithIdentity:v10 byClient:a5 error:&v30];
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

          v24 = sub_1000405FC("[IXSClientConnection _remote_setRemovability:forAppWithIdentity:byClient:completion:]", 1538, @"IXErrorDomain", 0xEuLL, 0, 0, @"[IXSAppRemovabilityManager setRemovability:] for %@ returned NO but did not set an error.", v28, v29);
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

      v25 = [(IXSClientConnection *)self clientName];
      v24 = sub_1000405FC("[IXSClientConnection _remote_setRemovability:forAppWithIdentity:byClient:completion:]", 1524, @"IXErrorDomain", 4uLL, 0, 0, @"Client %@ is missing %@ entitlement, rejecting attempt to set app removability.", v26, v25);

      v23 = v24;
    }

    v11[2](v11, v24);

    v13 = v23;
  }

  else
  {
    v11[2](v11, v13);
  }
}

- (void)_remote_removabilityDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSClientConnection *)self xpcConnection];
  v6 = sub_10000D71C(v5, @"com.apple.springboard.application-removability.proxy");
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
      v4[2](v4, v13, v11, 0);

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
      (v4)[2](v4, 0, 0, v14);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5644(self);
    }

    v15 = [(IXSClientConnection *)self clientName];
    v14 = sub_1000405FC("[IXSClientConnection _remote_removabilityDataWithCompletion:]", 1553, @"IXErrorDomain", 4uLL, 0, 0, @"Client %@ is missing %@ entitlement, rejecting attempt to read app removability data.", v16, v15);

    (v4)[2](v4, 0, 0, v14);
  }
}

- (void)_remote_defaultAppMetadataForAppIdentity:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IXSDefaultAppDeletionManager sharedInstance];
  v10 = 0;
  v8 = [v7 defaultAppMetadataForAppIdentity:v6 error:&v10];

  v9 = v10;
  v5[2](v5, v8, v9);
}

- (void)_remote_defaultAppMetadataListWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IXSDefaultAppDeletionManager sharedInstance];
  v7 = 0;
  v5 = [v4 defaultAppMetadataListWithError:&v7];
  v6 = v7;

  v3[2](v3, v5, v6);
}

- (void)_remote_uninstallAppWithIdentity:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self xpcConnection];
  if ((sub_10000D71C(v11, @"com.apple.private.InstallCoordination.uninstall") & 1) == 0)
  {
    v12 = sub_10000D834(v11, @"UninstallForLaunchServices");

    v13 = sub_1000031B0(off_100121958);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        sub_1000A5810(self);
      }

      v15 = [(IXSClientConnection *)self clientName];
      sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1608, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing entitlement %@ : TRUE (BOOLean) to uninstall applications", v16, v15);
      v20 = LABEL_46:;

LABEL_47:
      v10[2](v10, 0, v20);
      goto LABEL_48;
    }

    if (v14)
    {
      sub_1000A58B4(self);
    }
  }

  if ([v9 ignoreRemovability] && (sub_10000D71C(v11, @"com.apple.private.InstallCoordination.ignoreRemovability") & 1) == 0)
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5978(self);
    }

    v15 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1616, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing ignore removability operation entitlement.", v25, v15);
    goto LABEL_46;
  }

  if ([v9 ignoreRestrictions] && (sub_10000D71C(v11, @"com.apple.private.InstallCoordination.ignoreRestrictions") & 1) == 0)
  {
    v26 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5A10(self);
    }

    v15 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1624, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing ignore restrictions operation entitlement.", v27, v15);
    goto LABEL_46;
  }

  if ([v9 ignoreAppProtection] && (sub_10000D71C(v11, @"com.apple.private.InstallCoordination.ignoreAppProtection") & 1) == 0)
  {
    v28 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5AA8(self);
    }

    v15 = [(IXSClientConnection *)self clientName];
    sub_1000405FC("[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]", 1632, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing ignore app protection operation entitlement.", v29, v15);
    goto LABEL_46;
  }

  v17 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(IXSClientConnection *)self clientName];
    *buf = 136315906;
    v34 = "[IXSClientConnection _remote_uninstallAppWithIdentity:options:completion:]";
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Uninstall of %@ requested by client %@ with uninstall options %@", buf, 0x2Au);
  }

  v32 = 0;
  v19 = [v8 resolvePersonaWithError:&v32];
  v20 = v32;
  if ((v19 & 1) == 0)
  {
    goto LABEL_47;
  }

  if ([v9 requestUserConfirmation])
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if ([v9 waitForDeletion])
  {
    v21 |= 4uLL;
  }

  if ([v9 showArchiveOption])
  {
    v21 |= 8uLL;
  }

  if ([v9 systemAppNotAllowed])
  {
    v21 |= 0x10uLL;
  }

  if ([v9 showDemotionOption])
  {
    v21 |= 0x20uLL;
  }

  if ([v9 ignoreRemovability])
  {
    v21 |= 0x40uLL;
  }

  if ([v9 ignoreRestrictions])
  {
    v21 |= 0x80uLL;
  }

  if ([v9 ignoreAppProtection])
  {
    v21 |= 0x100uLL;
  }

  v22 = +[IXSAppUninstaller sharedUninstaller];
  v23 = [(IXSClientConnection *)self clientName];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10007E078;
  v30[3] = &unk_1001032E0;
  v31 = v10;
  [v22 uninstallAppWithIdentity:v8 clientName:v23 options:v21 completion:v30];

LABEL_48:
}

- (void)_remote_revertAppWithIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [v6 resolvePersonaWithError:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v15 = "[IXSClientConnection _remote_revertAppWithIdentity:completion:]";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Revert of %@ requested by client %@", buf, 0x20u);
    }

    v12 = [(IXSClientConnection *)self clientName];
    [IXSRevertManager revertAppWithIdentity:v6 forClientWithName:v12 completion:v7];
  }

  else
  {
    v7[2](v7, 0, v9);
  }
}

- (void)_remote_refreshContainersWithOptions:(id)a3 forAppWithIdentity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v11 = [v9 resolvePersonaWithError:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = [(IXSClientConnection *)self xpcConnection];
    if ((sub_10000D71C(v13, @"com.apple.private.InstallCoordination.refreshContainerTypes") & 1) == 0)
    {
      v14 = sub_10000D834(v13, @"UninstallForLaunchServices");

      v15 = sub_1000031B0(off_100121958);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          sub_1000A5B40(self);
        }

        v17 = [(IXSClientConnection *)self clientName];
        v19 = sub_1000405FC("[IXSClientConnection _remote_refreshContainersWithOptions:forAppWithIdentity:completion:]", 1708, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing entitlement %@ = TRUE (BOOLean) to refresh containers", v18, v17);

        v10[2](v10, v19);
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
      v21 = [v8 containerTypes];
      v22 = [(IXSClientConnection *)self clientName];
      *buf = 136315906;
      v26 = "[IXSClientConnection _remote_refreshContainersWithOptions:forAppWithIdentity:completion:]";
      v27 = 2048;
      v28 = v21;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Refreshing container types 0x%lx of %@ requested by client %@", buf, 0x2Au);
    }

    v23 = +[IXSContainerRefreshManager sharedInstance];
    [v23 refreshContainerTypesWithOptions:v8 forAppWithIdentity:v9 completion:v10];

    goto LABEL_14;
  }

  v10[2](v10, v12);
LABEL_15:
}

- (void)_remote_registerObserverMachServiceName:(id)a3 forClientIdentifiers:(id)a4 respondingToSelectors:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IXSClientConnection *)self clientName];
    v13 = 136316162;
    v14 = "[IXSClientConnection _remote_registerObserverMachServiceName:forClientIdentifiers:respondingToSelectors:]";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ registered mach service name %@ for client identifiers %@ responding to selectors %lu", &v13, 0x34u);
  }

  v12 = +[IXSAppInstallObserverManager sharedInstance];
  [v12 registerMachServiceName:v8 forClientIDs:v9 respondingToSelectors:a5];
}

- (void)_remote_registerTransientObserver:(id)a3 forClientIdentifiers:(id)a4 respondingToSelectors:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IXSClientConnection *)self clientName];
    v13 = 136316162;
    v14 = "[IXSClientConnection _remote_registerTransientObserver:forClientIdentifiers:respondingToSelectors:]";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ registered transient observer %@ for client identifiers %@ responding to selectors %lu", &v13, 0x34u);
  }

  v12 = +[IXSAppInstallObserverManager sharedInstance];
  [v12 registerListenerEndpoint:v8 forClientIDs:v9 respondingToSelectors:a5];
}

- (void)_remote_displayUserPresentableErrorForApp:(id)a3 code:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IXSClientConnection *)self clientName];
      v11 = 136315650;
      v12 = "[IXSClientConnection _remote_displayUserPresentableErrorForApp:code:]";
      v13 = 2080;
      v14 = "[IXSClientConnection _remote_displayUserPresentableErrorForApp:code:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Got nil identity in call to %s from client %@", &v11, 0x20u);
    }

    goto LABEL_8;
  }

  if (([v6 resolvePersonaWithError:0] & 1) == 0)
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
  [v8 presentErrorForIdentity:v7 code:a4 underlyingError:0 errorSource:0];

LABEL_9:
}

- (void)_remote_displayUserPresentableErrorForApps:(id)a3 code:(int64_t)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
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

          v11 = v5;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[IXSErrorPresenter sharedPresenter];
  [v11 presentErrorForIdentities:v5 code:a4 underlyingError:0 errorSource:0];
LABEL_13:
}

- (void)_remote_displayUserPresentableErrorForAppWithLocalizedName:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  v6 = +[IXSErrorPresenter sharedPresenter];
  [v6 presentErrorForAppWithLocalizedName:v5 code:a4 underlyingError:0 errorSource:0];
}

- (void)_remote_addObserversForCoordinatorsWithUUIDs:(id)a3 fireObserverMethods:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(IXSClientConnection *)self addInterestedCoordinatorUUIDs:v6];
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v6;
    v7 = v6;
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

    v6 = v19;
  }
}

- (void)_remote_updateSINFForAppWithIdentity:(id)a3 sinfData:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25 = 0;
  v14 = [v10 resolvePersonaWithError:&v25];
  v15 = v25;
  if (v14)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v27 = "[IXSClientConnection _remote_updateSINFForAppWithIdentity:sinfData:options:completion:]";
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ wants to update the SINF of %@", buf, 0x20u);
    }

    +[IXSCoordinatorManager sharedInstance];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10007F018;
    v20 = v19[3] = &unk_100103188;
    v21 = v10;
    v22 = v12;
    v23 = v11;
    v24 = v13;
    v18 = v20;
    [v18 performCreationBlockingOperation:v19];
  }

  else
  {
    (*(v13 + 2))(v13, v15);
  }
}

- (void)_remote_updateiTunesMetadata:(id)a3 forAppWithIdentity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v11 = [v9 resolvePersonaWithError:&v25];
  v12 = v25;
  if (v11)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v27 = "[IXSClientConnection _remote_updateiTunesMetadata:forAppWithIdentity:completion:]";
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@ wants to update the iTunesMetadata of %@", buf, 0x20u);
    }

    v15 = [(IXSClientConnection *)self xpcConnection];
    v24 = v12;
    v16 = sub_10000DB10(v8, v15, @"updated metadata", &v24);
    v17 = v24;

    if (v16)
    {
      +[IXSCoordinatorManager sharedInstance];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10007F458;
      v20 = v19[3] = &unk_1001010C8;
      v21 = v9;
      v16 = v16;
      v22 = v16;
      v23 = v10;
      v18 = v20;
      [v18 performCreationBlockingOperation:v19];
    }

    else
    {
      (*(v10 + 2))(v10, v17);
    }

    v12 = v17;
  }

  else
  {
    (*(v10 + 2))(v10, v12);
    v16 = 0;
  }
}

- (void)_remote_stagingLocationForInstallLocation:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MIHelperServiceFrameworkClient sharedInstance];
  v21 = 0;
  v8 = [v7 stagingLocationForInstallLocation:v6 withinStagingSubsytem:3 usingUniqueName:0 error:&v21];

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

        v16 = [v10 path];
        v18 = sub_1000405FC("[IXSClientConnection _remote_stagingLocationForInstallLocation:completion:]", 1956, @"IXErrorDomain", 1uLL, v9, 0, @"Failed to provide access to %@", v17, v16);

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

  v5[2](v5, v14, v13, v9);
}

- (void)_fetchIXSCoordinatedAppInstallForUUID:(id)a3 method:(const char *)a4 andRunWithCoordinator:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSCoordinatorManager sharedInstance];
  v14 = [v13 coordinatorForUUID:v10];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchIXSCoordinatedAppInstallForUUID:method:andRunWithCoordinator:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Coordinator did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchIXSCoordinatedAppInstallForUUID:method:andRunWithCoordinator:error:]", 1977, @"IXErrorDomain", 6uLL, 0, 0, @"Coordinator did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 appAssetPromiseHasBegunFulfillment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FBB0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007FC3C;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007FC48;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:appAssetPromiseHasBegunFulfillment:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 cancelForReason:(id)a4 client:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FE20;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v24 = v10;
  v14 = v10;
  dispatch_sync(v13, block);

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007FEAC;
  v19[3] = &unk_1001033C0;
  v20 = v11;
  v22 = a5;
  v21 = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007FEBC;
  v17[3] = &unk_100103330;
  v18 = v21;
  v15 = v21;
  v16 = v11;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v14 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:cancelForReason:client:completion:]" andRunWithCoordinator:v19 error:v17];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 fireObserversWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080064;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000800F0;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000800FC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:fireObserversWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getAppAssetPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008029C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080328;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080458;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getAppAssetPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getAppAssetPromiseDRI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000805FC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080688;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080694;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getAppAssetPromiseDRI:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getCoordinationState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080838;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000808C4;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000808D0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getCoordinationState:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getErrorInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080A74;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080B00;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080B0C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getErrorInfo:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getInitialODRAssetPromises:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080CB4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100080D40;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080F14;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getInitialODRAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getIsComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000810B8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081144;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100081150;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getIsComplete:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getIsPausedWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000812F4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081380;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008138C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getIsPausedWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPlaceholderPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081534;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000815C0;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000816F0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPlaceholderPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPreparationPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081898;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081924;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100081A54;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPreparationPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getUserDataPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081BFC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081C88;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100081DB8;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getUserDataPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getDeviceSecurityPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081F60;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100081FEC;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008211C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getDeviceSecurityPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getHasDeviceSecurityPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000822C0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008234C;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100082358;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getHasDeviceSecurityPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setNeedsPostProcessing:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082504;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = v8;
  v11 = v8;
  dispatch_sync(v10, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100082590;
  v15[3] = &unk_100103460;
  v17 = a4;
  v16 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000825A0;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setNeedsPostProcessing:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getNeedsPostProcessing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008273C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000827C8;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000827D4;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getNeedsPostProcessing:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPostProcessingShouldBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082978;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082A04;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100082A10;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPostProcessingShouldBegin:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setEssentialAssetPromiseUUIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082BD8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100082C64;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100082C70;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setEssentialAssetPromiseUUIDs:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getEssentialAssetPromises:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082E10;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100082E9C;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083070;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getEssentialAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasEssentialAssetPromises:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083214;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000832A0;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000832AC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasEssentialAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setDataImportPromiseUUIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083474;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100083500;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008350C;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setDataImportPromiseUUIDs:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getDataImportPromises:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000836AC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083738;
  v13[3] = &unk_1001033E8;
  v13[4] = self;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008390C;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getDataImportPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasDataImportPromises:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083AB0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083B3C;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083B48;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasDataImportPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getUserDataRestoreShouldBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083CEC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083D78;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083D84;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getUserDataRestoreShouldBegin:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasAppAssetPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083F28;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100083FB4;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100083FC0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasAppAssetPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasInitialODRAssetPromises:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084164;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000841F0;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000841FC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasInitialODRAssetPromises:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasInstallOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000843A0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008442C;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084438;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasInstallOptions:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getInstallOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000845DC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084668;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084674;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getInstallOptions:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasPlaceholderPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084818;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000848A4;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000848B0;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasPlaceholderPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 hasUserDataPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084A54;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084AE0;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084AEC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:hasUserDataPromise:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setImportance:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084C98;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = v8;
  v11 = v8;
  dispatch_sync(v10, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100084D24;
  v15[3] = &unk_100103488;
  v17 = a4;
  v16 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084D30;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setImportance:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 importanceWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084ECC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100084F58;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084F64;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:importanceWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 conveyPriorityReplacingExisting:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085114;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = v8;
  v11 = v8;
  dispatch_sync(v10, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000851A0;
  v15[3] = &unk_1001034B0;
  v17 = a4;
  v15[4] = self;
  v16 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008521C;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:conveyPriorityReplacingExisting:withCompletion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 prioritizeWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000853B8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085444;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100085450;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:prioritizeWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setTargetGizmoPairingID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085610;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008569C;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000856A8;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setTargetGizmoPairingID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 targetGizmoPairingIDWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085844;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000858D0;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000858DC;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:targetGizmoPairingIDWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setAppAssetPromiseDRI:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085A88;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = v8;
  v11 = v8;
  dispatch_sync(v10, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100085B14;
  v15[3] = &unk_100103488;
  v17 = a4;
  v16 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085B20;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setAppAssetPromiseDRI:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setAppAssetPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085CE0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v22 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100085D6C;
  v17[3] = &unk_1001034D8;
  v18 = v9;
  v19 = self;
  v20 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100085DE4;
  v15[3] = &unk_100103330;
  v16 = v20;
  v13 = v20;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setAppAssetPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setInitialODRAssetPromiseUUIDs:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085FA4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086030;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008603C;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setInitialODRAssetPromiseUUIDs:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setInstallOptionsPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000861FC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v22 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086288;
  v17[3] = &unk_1001034D8;
  v18 = v9;
  v19 = self;
  v20 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086300;
  v15[3] = &unk_100103330;
  v16 = v20;
  v13 = v20;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setInstallOptionsPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setIsPaused:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000864A4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v19 = v8;
  v11 = v8;
  dispatch_sync(v10, block);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086530;
  v15[3] = &unk_100103460;
  v17 = a4;
  v16 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100086540;
  v13[3] = &unk_100103330;
  v14 = v16;
  v12 = v16;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v11 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setIsPaused:completion:]" andRunWithCoordinator:v15 error:v13];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setPlaceholderPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086700;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008678C;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086798;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPlaceholderPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setPreparationPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086958;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000869E4;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000869F0;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPreparationPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setUserDataPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086BB0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086C3C;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086C48;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setUserDataPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setDeviceSecurityPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086E08;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086E94;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086EA0;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setDeviceSecurityPromiseUUID:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getCoordinatorScopeWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008703C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000870C8;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000870D4;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getCoordinatorScopeWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 convertToGloballyScopedWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087278;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087304;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087310;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:convertToGloballyScopedWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setPlaceholderDisposition:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSClientConnection *)self xpcConnection];
  if (sub_10000D71C(v10, @"com.apple.private.InstallCoordination.overridePlaceholderDisposition"))
  {
    v11 = [(IXSClientConnection *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100087588;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v12 = v8;
    v23 = v12;
    dispatch_sync(v11, block);

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100087614;
    v19[3] = &unk_100103488;
    v21 = a4;
    v20 = v9;
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

    v14 = [(IXSClientConnection *)self clientName];
    v16 = sub_1000405FC("[IXSClientConnection _remote_IXSCoordinatedAppInstall:setPlaceholderDisposition:completion:]", 2311, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ is missing entitlement to set placeholder disposition.", v15, v14);

    (*(v9 + 2))(v9, v16);
  }
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getPlaceholderDispositionWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000877BC;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087848;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087854;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getPlaceholderDispositionWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setProgressHint:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087A1C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v21 = v8;
  v12 = v8;
  dispatch_sync(v11, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100087AA8;
  v17[3] = &unk_1001033E8;
  v18 = v9;
  v19 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100087AB4;
  v15[3] = &unk_100103330;
  v16 = v19;
  v13 = v19;
  v14 = v9;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v12 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setProgressHint:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 getProgressHintWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087C50;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100087CDC;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087CE8;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:getProgressHintWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 setRemovability:(unint64_t)a4 byClient:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087EA0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v22 = v10;
  v13 = v10;
  dispatch_sync(v12, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100087F2C;
  v17[3] = &unk_100103500;
  v19 = a4;
  v20 = a5;
  v18 = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100087F3C;
  v15[3] = &unk_100103330;
  v16 = v18;
  v14 = v18;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v13 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:setRemovability:byClient:completion:]" andRunWithCoordinator:v17 error:v15];
}

- (void)_remote_IXSCoordinatedAppInstall:(id)a3 removabilityWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSClientConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000880D8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v16 = v6;
  v9 = v6;
  dispatch_sync(v8, block);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088164;
  v13[3] = &unk_100103398;
  v14 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100088170;
  v11[3] = &unk_100103330;
  v12 = v14;
  v10 = v14;
  [(IXSClientConnection *)self _fetchIXSCoordinatedAppInstallForUUID:v9 method:"[IXSClientConnection _remote_IXSCoordinatedAppInstall:removabilityWithCompletion:]" andRunWithCoordinator:v13 error:v11];
}

- (void)_fetchDataPromiseForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:v10 ofType:objc_opt_class()];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchDataPromiseForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: DataPromise did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchDataPromiseForUUID:method:andRunWithPromise:error:]", 2428, @"IXErrorDomain", 3uLL, 0, 0, @"DataPromise did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSDataPromise:(id)a3 getPercentComplete:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000884A0;
  v9[3] = &unk_100103528;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000884AC;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:getPercentComplete:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)a3 setPercentComplete:(double)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008853C;
  v4[3] = &unk_100103548;
  *&v4[4] = a4;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:setPercentComplete:]" andRunWithPromise:v4 error:&stru_100103568];
}

- (void)_remote_IXSDataPromise:(id)a3 getIsComplete:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088650;
  v9[3] = &unk_100103528;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008865C;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:getIsComplete:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)a3 setIsComplete:(BOOL)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100088780;
  v10[3] = &unk_100103590;
  v12 = a4;
  v11 = a5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008879C;
  v8[3] = &unk_100103330;
  v9 = v11;
  v7 = v11;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:setIsComplete:completion:]" andRunWithPromise:v10 error:v8];
}

- (void)_remote_IXSDataPromise:(id)a3 cancelForReason:(id)a4 client:(unint64_t)a5 completion:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000888E4;
  v14[3] = &unk_1001035B8;
  v15 = a4;
  v17 = a5;
  v16 = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000888F4;
  v12[3] = &unk_100103330;
  v13 = v16;
  v10 = v16;
  v11 = v15;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:cancelForReason:client:completion:]" andRunWithPromise:v14 error:v12];
}

- (void)_remote_IXSDataPromise:(id)a3 resetWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088A08;
  v9[3] = &unk_100103528;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088A14;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:resetWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)a3 getErrorInfo:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088B28;
  v9[3] = &unk_100103528;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088B34;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:getErrorInfo:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSDataPromise:(id)a3 preflightWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088C50;
  v9[3] = &unk_100103528;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088C5C;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSDataPromise:preflightWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_fetchOwnedDataPromiseForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:v10 ofType:objc_opt_class()];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchOwnedDataPromiseForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: OwnedDataPromise did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchOwnedDataPromiseForUUID:method:andRunWithPromise:error:]", 2472, @"IXErrorDomain", 3uLL, 0, 0, @"OwnedDataPromise did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSOwnedDataPromise:(id)a3 setStagedPath:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100088F38;
  v7[3] = &unk_1001035E0;
  v8 = a4;
  v6 = v8;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSOwnedDataPromise:setStagedPath:]" andRunWithPromise:v7 error:&stru_100103600];
}

- (void)_remote_IXSOwnedDataPromise:(id)a3 getStagedPath:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008904C;
  v9[3] = &unk_100103628;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089058;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSOwnedDataPromise:getStagedPath:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSOwnedDataPromise:(id)a3 setTargetLastPathComponent:(id)a4 withCompletion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089198;
  v12[3] = &unk_100103650;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000891A4;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSOwnedDataPromise:setTargetLastPathComponent:withCompletion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSOwnedDataPromise:(id)a3 getTargetLastPathComponent:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000892B8;
  v9[3] = &unk_100103628;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000892C4;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchOwnedDataPromiseForUUID:a3 method:"[IXSClientConnection _remote_IXSOwnedDataPromise:getTargetLastPathComponent:]" andRunWithPromise:v9 error:v7];
}

- (void)_fetchPlaceholderForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:v10 ofType:objc_opt_class()];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPlaceholderForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Placeholder did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPlaceholderForUUID:method:andRunWithPromise:error:]", 2496, @"IXErrorDomain", 3uLL, 0, 0, @"Placeholder did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSPlaceholder:(id)a3 setMetadataPromiseUUID:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089618;
  v12[3] = &unk_100103678;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089690;
  v10[3] = &unk_100103330;
  v11 = v15;
  v8 = v15;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setMetadataPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 getMetadataWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000897A4;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000897B0;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getMetadataWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 setSinfPromiseUUID:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000898F0;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000898FC;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setSinfPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 getSinfDataWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100089A10;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089A1C;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getSinfDataWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 setLaunchProhibited:(BOOL)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089B40;
  v10[3] = &unk_1001036F0;
  v12 = a4;
  v11 = a5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100089B50;
  v8[3] = &unk_100103330;
  v9 = v11;
  v7 = v11;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setLaunchProhibited:completion:]" andRunWithPromise:v10 error:v8];
}

- (void)_remote_IXSPlaceholder:(id)a3 getLaunchProhibitedWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100089C64;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089C70;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getLaunchProhibitedWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 setAttributes:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089DB0;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089DBC;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setAttributes:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 getAttributesWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100089ED0;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100089EDC;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getAttributesWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 setIconPromiseUUID:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008A01C;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008A028;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setIconPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 hasIconPromise:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A13C;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A148;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:hasIconPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 getIconPromise:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008A268;
  v8[3] = &unk_1001036C8;
  v9 = self;
  v10 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008A398;
  v6[3] = &unk_100103330;
  v7 = v10;
  v5 = v10;
  [(IXSClientConnection *)v9 _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getIconPromise:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)a3 setIconResourcesPromiseUUID:(id)a4 withInfoPlistIconContentPromiseUUID:(id)a5 completion:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008A500;
  v15[3] = &unk_100103678;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008A510;
  v13[3] = &unk_100103330;
  v14 = v18;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setIconResourcesPromiseUUID:withInfoPlistIconContentPromiseUUID:completion:]" andRunWithPromise:v15 error:v13];
}

- (void)_remote_IXSPlaceholder:(id)a3 hasIconResourcesPromise:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A624;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A630;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:hasIconResourcesPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 getIconResourcesPromiseAndInfoPlistContentPromise:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A74C;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A758;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getIconResourcesPromiseAndInfoPlistContentPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 setLocalizationPromiseUUID:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008A89C;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008A8A8;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setLocalizationPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 getLocalizationDictionary:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008A9BC;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A9C8;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getLocalizationDictionary:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 setEntitlementsPromiseUUID:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008AB08;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008AB14;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setEntitlementsPromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 hasEntitlementsPromise:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008AC28;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008AC34;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:hasEntitlementsPromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 getEntitlementsPromise:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008AD54;
  v8[3] = &unk_1001036C8;
  v9 = self;
  v10 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008AE84;
  v6[3] = &unk_100103330;
  v7 = v10;
  v5 = v10;
  [(IXSClientConnection *)v9 _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getEntitlementsPromise:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)a3 setInfoPlistLoctablePromiseUUID:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008AFC4;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008AFD0;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setInfoPlistLoctablePromiseUUID:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 hasInfoPlistLoctablePromise:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B0E4;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B0F0;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:hasInfoPlistLoctablePromise:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 getInfoPlistLoctablePromise:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008B210;
  v8[3] = &unk_1001036C8;
  v9 = self;
  v10 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B340;
  v6[3] = &unk_100103330;
  v7 = v10;
  v5 = v10;
  [(IXSClientConnection *)v9 _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getInfoPlistLoctablePromise:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)a3 setAppExtensionPlaceholderPromiseUUIDs:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008B480;
  v12[3] = &unk_1001036C8;
  v13 = a4;
  v14 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008B48C;
  v10[3] = &unk_100103330;
  v11 = v14;
  v8 = v14;
  v9 = v13;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setAppExtensionPlaceholderPromiseUUIDs:completion:]" andRunWithPromise:v12 error:v10];
}

- (void)_remote_IXSPlaceholder:(id)a3 hasAppExtensionPlaceholderPromises:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B5A0;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B5AC;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:hasAppExtensionPlaceholderPromises:]" andRunWithPromise:v9 error:v7];
}

- (void)_remote_IXSPlaceholder:(id)a3 getAppExtensionPlaceholderPromises:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008B6CC;
  v8[3] = &unk_1001036C8;
  v9 = self;
  v10 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008B8A0;
  v6[3] = &unk_100103330;
  v7 = v10;
  v5 = v10;
  [(IXSClientConnection *)v9 _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:getAppExtensionPlaceholderPromises:]" andRunWithPromise:v8 error:v6];
}

- (void)_remote_IXSPlaceholder:(id)a3 setConfigurationCompleteWithCompletion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B9BC;
  v9[3] = &unk_1001036A0;
  v10 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B9C8;
  v7[3] = &unk_100103330;
  v8 = v10;
  v6 = v10;
  [(IXSClientConnection *)self _fetchPlaceholderForUUID:a3 method:"[IXSClientConnection _remote_IXSPlaceholder:setConfigurationCompleteWithCompletion:]" andRunWithPromise:v9 error:v7];
}

- (void)_fetchPromisedTransferToPathForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:v10 ofType:objc_opt_class()];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPromisedTransferToPathForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: PromisedTransferToPath did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPromisedTransferToPathForUUID:method:andRunWithPromise:error:]", 2655, @"IXErrorDomain", 3uLL, 0, 0, @"PromisedTransferToPath did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSPromisedTransferToPath:(id)a3 setTransferPath:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008BCA0;
  v7[3] = &unk_100103718;
  v8 = a4;
  v6 = v8;
  [(IXSClientConnection *)self _fetchPromisedTransferToPathForUUID:a3 method:"[IXSClientConnection _remote_IXSPromisedTransferToPath:setTransferPath:]" andRunWithPromise:v7 error:&stru_100103738];
}

- (void)_remote_IXSPromisedTransferToPath:(id)a3 setShouldCopy:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BD2C;
  v4[3] = &unk_100103758;
  v5 = a4;
  [(IXSClientConnection *)self _fetchPromisedTransferToPathForUUID:a3 method:"[IXSClientConnection _remote_IXSPromisedTransferToPath:setShouldCopy:]" andRunWithPromise:v4 error:&stru_100103778];
}

- (void)_remote_IXSPromisedTransferToPath:(id)a3 setTryDeltaCopy:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BDB8;
  v4[3] = &unk_100103758;
  v5 = a4;
  [(IXSClientConnection *)self _fetchPromisedTransferToPathForUUID:a3 method:"[IXSClientConnection _remote_IXSPromisedTransferToPath:setTryDeltaCopy:]" andRunWithPromise:v4 error:&stru_100103798];
}

- (void)_fetchPromisedStreamingZipTransferForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:v10 ofType:objc_opt_class()];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPromisedStreamingZipTransferForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: PromisedStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPromisedStreamingZipTransferForUUID:method:andRunWithPromise:error:]", 2675, @"IXErrorDomain", 3uLL, 0, 0, @"PromisedStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSPromisedStreamingZipTransfer:(id)a3 setArchiveBytesConsumed:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C058;
  v4[3] = &unk_1001037B8;
  v4[4] = a4;
  [(IXSClientConnection *)self _fetchPromisedStreamingZipTransferForUUID:a3 method:"[IXSClientConnection _remote_IXSPromisedStreamingZipTransfer:setArchiveBytesConsumed:]" andRunWithPromise:v4 error:&stru_1001037D8];
}

- (void)_fetchPromisedOutOfBandStreamingZipTransferForUUID:(id)a3 method:(const char *)a4 andRunWithPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IXSDataPromiseManager sharedInstance];
  v14 = [v13 promiseForUUID:v10 ofType:objc_opt_class()];

  if (v14)
  {
    v11[2](v11, v14);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(IXSClientConnection *)self clientName];
      *buf = 136316162;
      v21 = "[IXSClientConnection _fetchPromisedOutOfBandStreamingZipTransferForUUID:method:andRunWithPromise:error:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2080;
      v25 = a4;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: PromisedOutOfBandStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@ : %@", buf, 0x34u);
    }

    v19 = [(IXSClientConnection *)self clientName];
    v17 = sub_1000405FC("[IXSClientConnection _fetchPromisedOutOfBandStreamingZipTransferForUUID:method:andRunWithPromise:error:]", 2684, @"IXErrorDomain", 3uLL, 0, 0, @"PromisedOutOfBandStreamingZipTransfer did not exist for UUID %@ when called for %s by client %@", v16, v10);

    v12[2](v12, v17);
  }
}

- (void)_remote_IXSPromisedOutOfBandStreamingZipTransfer:(id)a3 setArchiveBytesConsumed:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C2F8;
  v4[3] = &unk_1001037F8;
  v4[4] = a4;
  [(IXSClientConnection *)self _fetchPromisedOutOfBandStreamingZipTransferForUUID:a3 method:"[IXSClientConnection _remote_IXSPromisedOutOfBandStreamingZipTransfer:setArchiveBytesConsumed:]" andRunWithPromise:v4 error:&stru_100103818];
}

- (void)_client_coordinatorDidRegisterForObservationWithUUID:(id)a3
{
  v4 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v4])
  {
    v5 = [(IXSClientConnection *)self xpcConnection];
    if (v5)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorDidRegisterForObservationWithUUID:]";
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorDidRegisterForObservationWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008C4F8;
      v8[3] = &unk_100101808;
      v8[4] = self;
      v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)v7 _client_coordinatorDidRegisterForObservationWithUUID:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorDidRegisterForObservationWithUUID:]";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldPrioritizeWithUUID:(id)a3
{
  v4 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v4])
  {
    v5 = [(IXSClientConnection *)self xpcConnection];
    if (v5)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldPrioritizeWithUUID:]";
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldPrioritizeWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008C7DC;
      v8[3] = &unk_100101808;
      v8[4] = self;
      v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)v7 _client_coordinatorShouldPrioritizeWithUUID:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldPrioritizeWithUUID:]";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldResumeWithUUID:(id)a3
{
  v4 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v4])
  {
    v5 = [(IXSClientConnection *)self xpcConnection];
    if (v5)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldResumeWithUUID:]";
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldResumeWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008CAC0;
      v8[3] = &unk_100101808;
      v8[4] = self;
      v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)v7 _client_coordinatorShouldResumeWithUUID:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldResumeWithUUID:]";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldPauseWithUUID:(id)a3
{
  v4 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v4])
  {
    v5 = [(IXSClientConnection *)self xpcConnection];
    if (v5)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldPauseWithUUID:]";
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldPauseWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008CDA4;
      v8[3] = &unk_100101808;
      v8[4] = self;
      v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)v7 _client_coordinatorShouldPauseWithUUID:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldPauseWithUUID:]";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorWithUUID:(id)a3 configuredPromiseDidBeginFulfillment:(unint64_t)a4
{
  v6 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v6])
  {
    v7 = [(IXSClientConnection *)self xpcConnection];
    if (v7)
    {
      v8 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "[IXSClientConnection _client_coordinatorWithUUID:configuredPromiseDidBeginFulfillment:]";
        v13 = 2112;
        v14 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorWithUUID:uuid configuredPromiseDidBeginFulfillment:ident to %@", buf, 0x16u);
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10008D098;
      v10[3] = &unk_100101808;
      v10[4] = self;
      v9 = [v7 remoteObjectProxyWithErrorHandler:v10];
      [(IXSClientConnection *)v9 _client_coordinatorWithUUID:v6 configuredPromiseDidBeginFulfillment:a4];
      goto LABEL_8;
    }
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v12 = "[IXSClientConnection _client_coordinatorWithUUID:configuredPromiseDidBeginFulfillment:]";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldBeginRestoringUserDataWithUUID:(id)a3
{
  v4 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v4])
  {
    v5 = [(IXSClientConnection *)self xpcConnection];
    if (v5)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_coordinatorShouldBeginRestoringUserDataWithUUID:]";
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldBeginRestoringUserDataWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008D37C;
      v8[3] = &unk_100101808;
      v8[4] = self;
      v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)v7 _client_coordinatorShouldBeginRestoringUserDataWithUUID:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_coordinatorShouldBeginRestoringUserDataWithUUID:]";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorShouldBeginPostProcessingWithUUID:(id)a3 forRecordPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v6])
  {
    v8 = [(IXSClientConnection *)self xpcConnection];
    if (v8)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IXSClientConnection _client_coordinatorShouldBeginPostProcessingWithUUID:forRecordPromise:]";
        v14 = 2112;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorShouldBeginPostProcessingWithUUID:uuid forRecordPromise:recordPromise to %@", buf, 0x16u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10008D67C;
      v11[3] = &unk_100101808;
      v11[4] = self;
      v10 = [v8 remoteObjectProxyWithErrorHandler:v11];
      [(IXSClientConnection *)v10 _client_coordinatorShouldBeginPostProcessingWithUUID:v6 forRecordPromise:v7];
      goto LABEL_8;
    }
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v13 = "[IXSClientConnection _client_coordinatorShouldBeginPostProcessingWithUUID:forRecordPromise:]";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorDidInstallPlaceholderWithUUID:(id)a3 forRecordPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v6])
  {
    v8 = [(IXSClientConnection *)self xpcConnection];
    if (v8)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IXSClientConnection _client_coordinatorDidInstallPlaceholderWithUUID:forRecordPromise:]";
        v14 = 2112;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorDidInstallPlaceholderWithUUID:uuid forRecordPromise:recordPromise to %@", buf, 0x16u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10008D97C;
      v11[3] = &unk_100101808;
      v11[4] = self;
      v10 = [v8 remoteObjectProxyWithErrorHandler:v11];
      [(IXSClientConnection *)v10 _client_coordinatorDidInstallPlaceholderWithUUID:v6 forRecordPromise:v7];
      goto LABEL_8;
    }
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v13 = "[IXSClientConnection _client_coordinatorDidInstallPlaceholderWithUUID:forRecordPromise:]";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorDidCompleteSuccessfullyWithUUID:(id)a3 forRecordPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v6])
  {
    v8 = [(IXSClientConnection *)self xpcConnection];
    if (v8)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[IXSClientConnection _client_coordinatorDidCompleteSuccessfullyWithUUID:forRecordPromise:]";
        v14 = 2112;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorDidCompleteSuccessfullyWithUUID:uuid forRecordPromise:recordPromise to %@", buf, 0x16u);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10008DC7C;
      v11[3] = &unk_100101808;
      v11[4] = self;
      v10 = [v8 remoteObjectProxyWithErrorHandler:v11];
      [(IXSClientConnection *)v10 _client_coordinatorDidCompleteSuccessfullyWithUUID:v6 forRecordPromise:v7];
      goto LABEL_8;
    }
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v13 = "[IXSClientConnection _client_coordinatorDidCompleteSuccessfullyWithUUID:forRecordPromise:]";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorWithUUID:(id)a3 didCancelWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v8])
  {
    v10 = [(IXSClientConnection *)self xpcConnection];
    if (v10)
    {
      v11 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[IXSClientConnection _client_coordinatorWithUUID:didCancelWithReason:client:]";
        v16 = 2112;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorWithUUID:uuid didCancelWithReason:cancelReason client:client to %@", buf, 0x16u);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10008DF84;
      v13[3] = &unk_100101808;
      v13[4] = self;
      v12 = [v10 remoteObjectProxyWithErrorHandler:v13];
      [(IXSClientConnection *)v12 _client_coordinatorWithUUID:v8 didCancelWithReason:v9 client:a5];
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v15 = "[IXSClientConnection _client_coordinatorWithUUID:didCancelWithReason:client:]";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_coordinatorWithUUID:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6
{
  v10 = a3;
  if ([(IXSClientConnection *)self interestedInCoordinatorUUID:v10])
  {
    v11 = [(IXSClientConnection *)self xpcConnection];
    if (v11)
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[IXSClientConnection _client_coordinatorWithUUID:didUpdateProgress:forPhase:overallProgress:]";
        v17 = 2112;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_coordinatorWithUUID:uuid didUpdateProgress:percentComplete forPhase:phase overallProgress:overallProgress to %@", buf, 0x16u);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10008E290;
      v14[3] = &unk_100101808;
      v14[4] = self;
      v13 = [v11 remoteObjectProxyWithErrorHandler:v14];
      [(IXSClientConnection *)v13 _client_coordinatorWithUUID:v10 didUpdateProgress:a5 forPhase:a4 overallProgress:a6];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v16 = "[IXSClientConnection _client_coordinatorWithUUID:didUpdateProgress:forPhase:overallProgress:]";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in coordinator UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_promiseDidCompleteSuccessfullyWithUUID:(id)a3
{
  v4 = a3;
  if ([(IXSClientConnection *)self interestedInPromiseUUID:v4])
  {
    v5 = [(IXSClientConnection *)self xpcConnection];
    if (v5)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[IXSClientConnection _client_promiseDidCompleteSuccessfullyWithUUID:]";
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_promiseDidCompleteSuccessfullyWithUUID:uuid to %@", buf, 0x16u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10008E574;
      v8[3] = &unk_100101808;
      v8[4] = self;
      v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
      [(IXSClientConnection *)v7 _client_promiseDidCompleteSuccessfullyWithUUID:v4];
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v10 = "[IXSClientConnection _client_promiseDidCompleteSuccessfullyWithUUID:]";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in promise UUID %@", buf, 0x20u);
LABEL_8:
    }
  }
}

- (void)_client_promiseWithUUID:(id)a3 didCancelWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(IXSClientConnection *)self interestedInPromiseUUID:v8])
  {
    v10 = [(IXSClientConnection *)self xpcConnection];
    if (v10)
    {
      v11 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[IXSClientConnection _client_promiseWithUUID:didCancelWithReason:client:]";
        v16 = 2112;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Dispatching _client_promiseWithUUID:uuid didCancelWithReason:cancelReason client:client to %@", buf, 0x16u);
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10008E87C;
      v13[3] = &unk_100101808;
      v13[4] = self;
      v12 = [v10 remoteObjectProxyWithErrorHandler:v13];
      [(IXSClientConnection *)v12 _client_promiseWithUUID:v8 didCancelWithReason:v9 client:a5];
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IXSClientConnection *)self clientName];
      *buf = 136315650;
      v15 = "[IXSClientConnection _client_promiseWithUUID:didCancelWithReason:client:]";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Client %@ was not interested in promise UUID %@", buf, 0x20u);
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