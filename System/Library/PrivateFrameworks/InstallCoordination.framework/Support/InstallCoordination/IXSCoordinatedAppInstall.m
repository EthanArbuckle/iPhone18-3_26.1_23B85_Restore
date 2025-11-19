@interface IXSCoordinatedAppInstall
+ (id)_fetchInstallOptionsFromPromise:(id)a3 error:(id *)a4;
- (BOOL)_eligibleToScheduleUpdate;
- (BOOL)_internalInitWithSeed:(id)a3 scopedToConnection:(id)a4 error:(id *)a5;
- (BOOL)_limitedConcurrency_doRetryingInstallOperationForPlaceholder:(BOOL)a3 installTargetURL:(id)a4 retries:(unint64_t)a5 error:(id *)a6 installAttemptBlock:(id)a7;
- (BOOL)_onQueue_internal_cancelForReason:(id)a3 client:(unint64_t)a4 needsLSDatabaseSync:(BOOL *)a5 error:(id *)a6;
- (BOOL)_onQueue_isPlaceholderUnnecessary;
- (BOOL)_onQueue_scheduleUpdate;
- (BOOL)_onQueue_shouldDeletePlaceholderOnCancelationForReason:(id)a3 client:(unint64_t)a4;
- (BOOL)_placeholderOrParallelPlaceholderIsInstalledWithRecord:(id *)a3;
- (BOOL)_shouldRemovePlaceholderForReason:(id)a3;
- (BOOL)_shouldRetryInstallAttemptBasedOnPreviousResult:(BOOL)a3 returnedError:(id)a4 targetInstallURL:(id)a5 retriesAttempted:(unint64_t)a6 totalRetries:(unint64_t)a7;
- (BOOL)_shouldStageUpdate;
- (BOOL)_validateLocationForPromise:(id)a3 error:(id *)a4;
- (BOOL)_validateParentLinkageForInstallOptions:(id)a3 connection:(id)a4 error:(id *)a5;
- (BOOL)awakeFromSerializationWithError:(id *)a3;
- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 needsLSDatabaseSync:(BOOL *)a5 error:(id *)a6;
- (BOOL)currentProgressPhaseIsComplete;
- (BOOL)externalGetIsPaused;
- (BOOL)inPostProcessingPhase;
- (BOOL)isComplete;
- (BOOL)isPaused;
- (BOOL)isTracked;
- (BOOL)needsPostProcessing;
- (BOOL)shouldBeginPostProcessing;
- (BOOL)shouldBeginRestoringUserData;
- (BOOL)shouldEnablePostProcessingByDefault;
- (IXApplicationIdentity)identity;
- (IXProgressHint)progressHint;
- (IXProgressHint)progressHintWithDefault;
- (IXSClientConnection)scopedToConnection;
- (IXSCoordinatedAppInstall)initWithCoder:(id)a3;
- (IXSCoordinatedAppInstall)initWithSeed:(id)a3 scopedToConnection:(id)a4 creatorAuditToken:(id *)a5 error:(id *)a6;
- (IXSOwnedDataPromise)appAssetPromise;
- (IXSOwnedDataPromise)installOptionsPromise;
- (IXSPlaceholder)placeholderPromise;
- (IXSPromisedOutOfBandTransfer)deviceSecurityPromise;
- (IXSPromisedOutOfBandTransfer)preparationPromise;
- (IXSPromisedOutOfBandTransfer)userDataPromise;
- (LSRecordPromise)completedRecordPromise;
- (MIStagedUpdateMetadata)stagedUpdateMetadata;
- (NSArray)dataImportPromises;
- (NSArray)essentialAssetPromises;
- (NSArray)initialODRAssetPromises;
- (NSSet)promiseUUIDs;
- (NSString)description;
- (NSString)priorityBoostSourceInfo;
- (NSUUID)targetGizmoPairingID;
- (NSUUID)uniqueIdentifier;
- (id)_createPowerAssertion;
- (id)_limitedConcurrency_fetchInstallingProgress;
- (id)_limitedConcurrency_fetchLSProgressForPhase:(unint64_t)a3 appRecord:(id)a4;
- (id)_onQueue_fetchInstallOptionsWithError:(id *)a3;
- (id)_onQueue_fetchMetadataFromInstalledAppForOffloadWithError:(id *)a3;
- (id)_onQueue_localizedAppName;
- (id)priorityBoostCompletion;
- (id)promiseStateDescription;
- (id)stageUpdateFromAppAsset:(id)a3 options:(id)a4 retries:(unint64_t)a5 error:(id *)a6;
- (id)trackingStagedUpdateIdentifier;
- (int64_t)_onQueue_assertionRetrySeconds;
- (unint64_t)appAssetPromiseDRI;
- (unint64_t)creator;
- (unint64_t)effectiveIntent;
- (unint64_t)importance;
- (unint64_t)installationDomain;
- (unint64_t)newRemovability;
- (unint64_t)newRemovabilityClient;
- (unint64_t)originalIntent;
- (unint64_t)placeholderDisposition;
- (unint64_t)savedRemovability;
- (unint64_t)savedRemovabilityClient;
- (unint64_t)stagedUpdateSizeOnDisk;
- (unint64_t)state;
- (unint64_t)transactionStepForPromise:(id)a3;
- (unsigned)coordinatorScope;
- (void)_asyncUpdatePlaceholderMetadataWithInstallType:(unint64_t)a3 reason:(int64_t)a4 underlyingError:(id)a5 client:(unint64_t)a6;
- (void)_finishAppInstallAtURL:(id)a3 result:(BOOL)a4 recordPromise:(id)a5 error:(id)a6;
- (void)_finishPlaceholderInstallAtURL:(id)a3 result:(BOOL)a4 recordPromise:(id)a5 error:(id)a6;
- (void)_initInternalState;
- (void)_internal_setAppAssetPromise:(id)a3;
- (void)_internal_setAppAssetPromise:(id)a3 performExternalActions:(BOOL)a4;
- (void)_internal_setInstallOptionsPromise:(id)a3;
- (void)_internal_setInstallOptionsPromise:(id)a3 performExternalActions:(BOOL)a4;
- (void)_limitedConcurrency_fetchLoadingProgressForPlaceholderInstallType:(unint64_t)a3 progressHint:(id)a4 andRun:(id)a5;
- (void)_limitedConcurrency_fetchPostProcessingProgressAndRun:(id)a3;
- (void)_limitedConcurrency_saveOriginalInstallTypeForAppRecord:(id)a3;
- (void)_limitedConcurrency_setUpLSProgressForInstallType:(unint64_t)a3 progressHint:(id)a4;
- (void)_onAssertionQueue_setTermAssertion:(id)a3;
- (void)_onQueue_acquireAssertionAndDoInstall;
- (void)_onQueue_acquireAssertionAndInstallPlaceholder;
- (void)_onQueue_acquireAssertionForPlaceholder:(BOOL)a3 forceAcquisition:(BOOL)a4;
- (void)_onQueue_cancelPlaceholderIfNeededForReason:(id)a3 client:(unint64_t)a4 needsLSDatabaseSync:(BOOL *)a5;
- (void)_onQueue_cancelProgress;
- (void)_onQueue_cancelProgress:(id)a3;
- (void)_onQueue_cancelStagedUpdate;
- (void)_onQueue_checkState;
- (void)_onQueue_configureTotalUnitCountsForInstallProgress:(id)a3;
- (void)_onQueue_convertTerminationAssertionToAllowExtensionLaunch;
- (void)_onQueue_doAddReference:(id)a3;
- (void)_onQueue_doInstall;
- (void)_onQueue_fetchProgressAndRun:(id)a3;
- (void)_onQueue_fetchProgressForPhase:(unint64_t)a3 andRun:(id)a4;
- (void)_onQueue_finishProgress;
- (void)_onQueue_finishProgress:(id)a3;
- (void)_onQueue_fireObserversForClient:(id)a3;
- (void)_onQueue_gizmoInstallForInstallOptions:(id)a3 appAssetAtPath:(id)a4;
- (void)_onQueue_handleAppAssetPromiseCancellationWhenRestoringWithReason:(id)a3 client:(unint64_t)a4;
- (void)_onQueue_handleCancelForInstallFailure:(id)a3;
- (void)_onQueue_installPlaceholder;
- (void)_onQueue_internal_saveState;
- (void)_onQueue_pauseProgress;
- (void)_onQueue_prioritizeWithCompletion:(id)a3;
- (void)_onQueue_removeParallelPlaceholder:(BOOL *)a3;
- (void)_onQueue_resumeProgress;
- (void)_onQueue_runAssertionHandlerForPlaceholder:(BOOL)a3;
- (void)_onQueue_runPostProcessingAssertionHandler;
- (void)_onQueue_saveState;
- (void)_onQueue_setInstallProgressPercentComplete:(double)a3 forPhase:(unint64_t)a4;
- (void)_onQueue_unregister;
- (void)_onQueue_updateLoadingProgress;
- (void)_onQueue_updatePlaceholderForFailureReason:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5;
- (void)_onQueue_updatePostProcessingProgress;
- (void)_pauseProgressObject:(id)a3;
- (void)_remote_appAssetPromiseHasBegunFulfillment:(id)a3;
- (void)_remote_cancelForReason:(id)a3 client:(unint64_t)a4 completion:(id)a5;
- (void)_remote_convertToGloballyScopedWithCompletion:(id)a3;
- (void)_remote_conveyPriorityReplacingExisting:(BOOL)a3 forConnection:(id)a4 withCompletion:(id)a5;
- (void)_remote_fireObserversForClient:(id)a3 completion:(id)a4;
- (void)_remote_getAppAssetPromise:(id)a3;
- (void)_remote_getAppAssetPromiseDRI:(id)a3;
- (void)_remote_getCoordinationState:(id)a3;
- (void)_remote_getCoordinatorScopeWithCompletion:(id)a3;
- (void)_remote_getDataImportPromises:(id)a3;
- (void)_remote_getDeviceSecurityPromise:(id)a3;
- (void)_remote_getErrorInfo:(id)a3;
- (void)_remote_getEssentialAssetPromises:(id)a3;
- (void)_remote_getHasDeviceSecurityPromise:(id)a3;
- (void)_remote_getInitialODRAssetPromises:(id)a3;
- (void)_remote_getInstallOptions:(id)a3;
- (void)_remote_getIsComplete:(id)a3;
- (void)_remote_getIsPausedWithCompletion:(id)a3;
- (void)_remote_getNeedsPostProcessing:(id)a3;
- (void)_remote_getPlaceholderDispositionWithCompletion:(id)a3;
- (void)_remote_getPlaceholderPromise:(id)a3;
- (void)_remote_getPostProcessingShouldBegin:(id)a3;
- (void)_remote_getPreparationPromise:(id)a3;
- (void)_remote_getProgressHintWithCompletion:(id)a3;
- (void)_remote_getUserDataPromise:(id)a3;
- (void)_remote_getUserDataRestoreShouldBegin:(id)a3;
- (void)_remote_hasAppAssetPromise:(id)a3;
- (void)_remote_hasDataImportPromises:(id)a3;
- (void)_remote_hasEssentialAssetPromises:(id)a3;
- (void)_remote_hasInitialODRAssetPromises:(id)a3;
- (void)_remote_hasInstallOptions:(id)a3;
- (void)_remote_hasPlaceholderPromise:(id)a3;
- (void)_remote_hasUserDataPromise:(id)a3;
- (void)_remote_importanceWithCompletion:(id)a3;
- (void)_remote_prioritizeWithCompletion:(id)a3;
- (void)_remote_removabilityWithCompletion:(id)a3;
- (void)_remote_setAppAssetPromiseDRI:(unint64_t)a3 completion:(id)a4;
- (void)_remote_setAppAssetPromiseUUID:(id)a3 fromConnection:(id)a4 completion:(id)a5;
- (void)_remote_setDataImportPromiseUUIDs:(id)a3 completion:(id)a4;
- (void)_remote_setDeviceSecurityPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setEssentialAssetPromiseUUIDs:(id)a3 completion:(id)a4;
- (void)_remote_setImportance:(unint64_t)a3 completion:(id)a4;
- (void)_remote_setInitialODRAssetPromiseUUIDs:(id)a3 completion:(id)a4;
- (void)_remote_setInstallOptionsPromiseUUID:(id)a3 forConnection:(id)a4 completion:(id)a5;
- (void)_remote_setIsPaused:(BOOL)a3 completion:(id)a4;
- (void)_remote_setNeedsPostProcessing:(BOOL)a3 completion:(id)a4;
- (void)_remote_setPlaceholderDisposition:(unint64_t)a3 completion:(id)a4;
- (void)_remote_setPlaceholderPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setPreparationPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setProgressHint:(id)a3 completion:(id)a4;
- (void)_remote_setRemovability:(unint64_t)a3 byClient:(unint64_t)a4 completion:(id)a5;
- (void)_remote_setTargetGizmoPairingID:(id)a3 completion:(id)a4;
- (void)_remote_setUserDataPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_targetGizmoPairingIDWithCompletion:(id)a3;
- (void)_runAsyncBlockWithDescription:(id)a3 onLaunchServicesQueue:(id)a4;
- (void)_runAsyncBlockWithDescription:(id)a3 onUninstallQueue:(id)a4;
- (void)_runWithExternalPropertyLock:(id)a3;
- (void)_runWithProgress:(id)a3 block:(id)a4;
- (void)_updatePendingOperationsForChangeFromPreviousState:(unint64_t)a3 toNewState:(unint64_t)a4;
- (void)applyStagedUpdateAndRunBlockWhenComplete:(id)a3;
- (void)assertionTargetProcessDidExit:(id)a3;
- (void)dealloc;
- (void)didUpdateProgress:(double)a3 forPhase:(unint64_t)a4 overallProgress:(double)a5;
- (void)encodeWithCoder:(id)a3;
- (void)externalSetIsPaused:(BOOL)a3 completion:(id)a4;
- (void)handleFirstUnlockNotification;
- (void)prioritizeWithCompletion:(id)a3;
- (void)promise:(id)a3 didCancelForReason:(id)a4 client:(unint64_t)a5;
- (void)promise:(id)a3 didUpdateProgress:(double)a4;
- (void)promiseDidBegin:(id)a3;
- (void)promiseDidComplete:(id)a3;
- (void)scheduledAppUpdateReadyToExecute;
- (void)setAppAssetPromise:(id)a3;
- (void)setAppAssetPromiseDRI:(unint64_t)a3;
- (void)setAppInstallState:(unint64_t)a3;
- (void)setComplete:(BOOL)a3;
- (void)setCompletedRecordPromise:(id)a3;
- (void)setCoordinatorScope:(unsigned __int8)a3;
- (void)setCurrentProgressPhaseIsComplete:(BOOL)a3;
- (void)setDataImportPromises:(id)a3;
- (void)setDeviceSecurityPromise:(id)a3;
- (void)setEffectiveIntent:(unint64_t)a3;
- (void)setEssentialAssetPromises:(id)a3;
- (void)setImportance:(unint64_t)a3;
- (void)setInitialODRAssetPromises:(id)a3;
- (void)setInstallOptionsPromise:(id)a3;
- (void)setIsPaused:(BOOL)a3 completion:(id)a4;
- (void)setIsTracked:(BOOL)a3;
- (void)setNeedsPostProcessing:(BOOL)a3;
- (void)setNewRemovability:(unint64_t)a3;
- (void)setNewRemovabilityClient:(unint64_t)a3;
- (void)setNewRemovabilityState:(unint64_t)a3 removabilityClient:(unint64_t)a4;
- (void)setPlaceholderDisposition:(unint64_t)a3;
- (void)setPlaceholderInstallState:(unint64_t)a3 withLSRecordPromiseForCompletion:(id)a4;
- (void)setPlaceholderPromise:(id)a3;
- (void)setPreparationPromise:(id)a3;
- (void)setPriorityBoostCompletion:(id)a3 withSourceInfo:(id)a4;
- (void)setProgressHint:(id)a3;
- (void)setSavedRemovability:(unint64_t)a3;
- (void)setSavedRemovabilityClient:(unint64_t)a3;
- (void)setScopedToConnection:(id)a3;
- (void)setStagedUpdateMetadata:(id)a3;
- (void)setTargetGizmoPairingID:(id)a3;
- (void)setTermAssertion:(id)a3;
- (void)setUserDataPromise:(id)a3;
@end

@implementation IXSCoordinatedAppInstall

- (void)_initInternalState
{
  v3 = [(IXSCoordinatedAppInstall *)self identity];
  v25 = [v3 uniqueIdentifier];

  v4 = [NSString stringWithFormat:@"com.apple.installcoordinationd.IXSCoordinatedAppInstall.%@", v25];
  v5 = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v7;

  v9 = [NSString stringWithFormat:@"com.apple.installcoordinationd.IXSCoordinatedAppInstall.assertion.%@", v25];

  v10 = [v9 UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(v10, v11);
  assertionQueue = self->_assertionQueue;
  self->_assertionQueue = v12;

  v14 = [NSString stringWithFormat:@"com.apple.installcoordinationd.IXSCoordinatedAppInstall.delegate.%@", v25];

  v15 = [v14 UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(v15, v16);
  delegateCallQueue = self->_delegateCallQueue;
  self->_delegateCallQueue = v17;

  self->_externalPropertyLock._os_unfair_lock_opaque = 0;
  v19 = dispatch_group_create();
  outstandingInstallOperationsGroup = self->_outstandingInstallOperationsGroup;
  self->_outstandingInstallOperationsGroup = v19;

  v21 = [NSString stringWithFormat:@"com.apple.InstallCoordination.coordinator.%@", v25];

  [v21 UTF8String];
  v22 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v22;

  assertionTransaction = self->_assertionTransaction;
  self->_assertionTransaction = 0;
}

- (IXSCoordinatedAppInstall)initWithCoder:(id)a3
{
  v4 = a3;
  v71.receiver = self;
  v71.super_class = IXSCoordinatedAppInstall;
  v5 = [(IXSCoordinatedAppInstall *)&v71 init];
  if (!v5)
  {
LABEL_42:
    v37 = v5;
    goto LABEL_43;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seed"];
  seed = v5->_seed;
  v5->_seed = v6;

  v8 = [(IXSCoordinatedAppInstall *)v5 seed];

  if (v8)
  {
    v5->_complete = [v4 decodeBoolForKey:@"complete"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorSourceIdentifier"];
    v5->_errorSourceIdentifier = [v11 unsignedLongLongValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderPromiseUUID"];
    placeholderPromiseUUID = v5->_placeholderPromiseUUID;
    v5->_placeholderPromiseUUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appAssetPromiseUUID"];
    appAssetPromiseUUID = v5->_appAssetPromiseUUID;
    v5->_appAssetPromiseUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appAssetPromiseDRI"];
    v5->_appAssetPromiseDRI = [v16 unsignedLongLongValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installOptionsPromiseUUID"];
    installOptionsPromiseUUID = v5->_installOptionsPromiseUUID;
    v5->_installOptionsPromiseUUID = v17;

    v19 = objc_opt_class();
    v20 = [NSSet setWithObjects:v19, objc_opt_class(), 0];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"initialODRAssetPromiseUUIDs"];
    initialODRAssetPromiseUUIDs = v5->_initialODRAssetPromiseUUIDs;
    v5->_initialODRAssetPromiseUUIDs = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDataPromiseUUID"];
    userDataPromiseUUID = v5->_userDataPromiseUUID;
    v5->_userDataPromiseUUID = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preparationPromiseUUID"];
    preparationPromiseUUID = v5->_preparationPromiseUUID;
    v5->_preparationPromiseUUID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSecurityPromiseUUID"];
    deviceSecurityPromiseUUID = v5->_deviceSecurityPromiseUUID;
    v5->_deviceSecurityPromiseUUID = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newRemovability"];
    v5->_newRemovability = [v29 unsignedLongLongValue];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"savedRemovability"];
    v5->_savedRemovability = [v30 unsignedLongLongValue];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newRemovabilityClient"];
    v5->_newRemovabilityClient = [v31 unsignedLongLongValue];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"savedRemovabilityClient"];
    v5->_savedRemovabilityClient = [v32 unsignedLongLongValue];

    if ([v4 containsValueForKey:@"stagedUpdateIdentifier"])
    {
      v33 = [v4 decodeObjectForKey:@"stagedUpdateIdentifier"];
      v34 = [[MIStagedUpdateMetadata alloc] initForStagedIdentifier:v33 diskUsage:0];
      stagedUpdateMetadata = v5->_stagedUpdateMetadata;
      v5->_stagedUpdateMetadata = v34;
    }

    else
    {
      v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedUpdateMetadata"];
      v33 = v5->_stagedUpdateMetadata;
      v5->_stagedUpdateMetadata = v38;
    }

    if ([v4 containsValueForKey:@"placeholderInstalled"])
    {
      if (![v4 decodeBoolForKey:@"placeholderInstalled"])
      {
        v5->_placeholderInstallState = 0;
LABEL_16:
        if ([v4 containsValueForKey:@"appInstalled"])
        {
          if (![v4 decodeBoolForKey:@"appInstalled"])
          {
            v5->_appInstallState = 0;
            goto LABEL_23;
          }

          appInstallState = 7;
        }

        else
        {
          v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appInstallState"];
          v5->_appInstallState = [v42 unsignedLongLongValue];

          appInstallState = v5->_appInstallState;
          if ((appInstallState - 4) < 3)
          {
            appInstallState = 0;
          }
        }

        v5->_appInstallState = appInstallState;
LABEL_23:
        v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postProcessingAssertionState"];
        v5->_postProcessingAssertionState = [v43 unsignedLongLongValue];

        postProcessingAssertionState = v5->_postProcessingAssertionState;
        if (postProcessingAssertionState - 4 < 3)
        {
          postProcessingAssertionState = 0;
        }

        v5->_postProcessingAssertionState = postProcessingAssertionState;
        v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalInstallType"];
        v5->_originalInstallType = [v45 unsignedLongLongValue];

        v5->_isPaused = [v4 decodeBoolForKey:@"isPaused"];
        v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveIntent"];
        v5->_effectiveIntent = [v46 unsignedLongLongValue];

        v5->_sentBeginRestoringUserData = [v4 decodeBoolForKey:@"sentBeginRestoringUserData"];
        v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureInfo"];
        placeholderFailureInfo = v5->_placeholderFailureInfo;
        v5->_placeholderFailureInfo = v47;

        v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assertionRetryCount"];
        v5->_assertionRetryCount = [v49 unsignedLongLongValue];

        v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetGizmoPairingID"];
        targetGizmoPairingID = v5->_targetGizmoPairingID;
        v5->_targetGizmoPairingID = v50;

        if ([v4 containsValueForKey:@"isUserInitiated"])
        {
          if ([v4 decodeBoolForKey:@"isUserInitiated"])
          {
            v52 = 3;
          }

          else
          {
            v52 = 1;
          }

          v5->_importance = v52;
        }

        else
        {
          v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"importance"];
          v5->_importance = [v53 unsignedLongLongValue];
        }

        if (!v5->_effectiveIntent)
        {
          v54 = [(IXSCoordinatedAppInstall *)v5 seed];
          v5->_effectiveIntent = [v54 intent];
        }

        v5->_appAssetPromiseSetterCanInstallLocalProvisionedContent = [v4 decodeBoolForKey:@"appAssetPromiseSetterCanInstallLocalProvisionedContent"];
        if ([v4 containsValueForKey:@"coordinatorScope"])
        {
          v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coordinatorScope"];
          v5->_coordinatorScope = [v55 unsignedCharValue];
        }

        else
        {
          v5->_coordinatorScope = 2;
        }

        if ([v4 containsValueForKey:@"placeholderDisposition"])
        {
          v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderDisposition"];
          v5->_placeholderDisposition = [v56 unsignedLongLongValue];
        }

        else
        {
          v5->_placeholderDisposition = 1;
        }

        v5->_needsPostProcessing = [v4 decodeBoolForKey:@"needsPostProcessing"];
        v5->_sentBeginPostProcessing = [v4 decodeBoolForKey:@"sentBeginPostProcessing"];
        v57 = objc_opt_class();
        v58 = [NSSet setWithObjects:v57, objc_opt_class(), 0];
        v59 = [v4 decodeObjectOfClasses:v58 forKey:@"essentialAssetPromiseUUIDs"];
        essentialAssetPromiseUUIDs = v5->_essentialAssetPromiseUUIDs;
        v5->_essentialAssetPromiseUUIDs = v59;

        v61 = objc_opt_class();
        v62 = [NSSet setWithObjects:v61, objc_opt_class(), 0];
        v63 = [v4 decodeObjectOfClasses:v62 forKey:@"dataImportPromiseUUIDs"];
        dataImportPromiseUUIDs = v5->_dataImportPromiseUUIDs;
        v5->_dataImportPromiseUUIDs = v63;

        v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progressHint"];
        progressHint = v5->_progressHint;
        v5->_progressHint = v65;

        v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coordinatorProgress"];
        coordinatorProgress = v5->_coordinatorProgress;
        v5->_coordinatorProgress = v67;

        v69 = v5->_coordinatorProgress;
        if (v69)
        {
          [(IXSCoordinatorProgress *)v69 setDelegate:v5];
        }

        [(IXSCoordinatedAppInstall *)v5 _initInternalState];
        goto LABEL_42;
      }

      placeholderInstallState = 7;
    }

    else
    {
      v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderInstallState"];
      v5->_placeholderInstallState = [v40 unsignedLongLongValue];

      placeholderInstallState = v5->_placeholderInstallState;
      if ((placeholderInstallState - 4) < 3)
      {
        placeholderInstallState = 0;
      }
    }

    v5->_placeholderInstallState = placeholderInstallState;
    goto LABEL_16;
  }

  v36 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    sub_1000A004C();
  }

  v37 = 0;
LABEL_43:

  return v37;
}

- (BOOL)shouldEnablePostProcessingByDefault
{
  if (!+[IXFeatureFlags osAppMigrationEnabled]|| [(IXSCoordinatedAppInstall *)self effectiveIntent]!= 5)
  {
    return 0;
  }

  v3 = [(IXSCoordinatedAppInstall *)self identity];
  v9 = 0;
  v4 = sub_100015B38(v3, [(IXSCoordinatedAppInstall *)self installationDomain], &v9);
  v5 = v9;

  if (v4)
  {
    v6 = [v4 supportsDataExport];
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A00CC();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_internalInitWithSeed:(id)a3 scopedToConnection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_storeStrong(&self->_seed, a3);
  v10 = +[NSUUID UUID];
  [v8 setUniqueIdentifier:v10];

  [(IXSCoordinatedAppInstall *)self _initInternalState];
  self->_appAssetPromiseDRI = [v8 creator];
  self->_effectiveIntent = [v8 intent];
  self->_importance = 1;
  if (v9)
  {
    self->_coordinatorScope = 1;
    objc_storeWeak(&self->_scopedToConnection, v9);
  }

  else
  {
    self->_coordinatorScope = 2;
  }

  v11 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AE84;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(v11, block);

  return 1;
}

- (IXSCoordinatedAppInstall)initWithSeed:(id)a3 scopedToConnection:(id)a4 creatorAuditToken:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = IXSCoordinatedAppInstall;
  v11 = [(IXSCoordinatedAppInstall *)&v15 init];
  v12 = v11;
  if (v11 && ![(IXSCoordinatedAppInstall *)v11 _internalInitWithSeed:v9 scopedToConnection:v10 error:a6])
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (void)dealloc
{
  if (+[IXFeatureFlags scheduledUpdatesEnabled]&& self->_updateScheduleState == 1)
  {
    self->_updateScheduleState = 0;
    v3 = +[IXSAppUpdateScheduler sharedInstance];
    v4 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
    [v3 removeUpdateRequestForCoordinatorUUID:v4];
  }

  v5 = objc_retainBlock(self->_priorityBoostCompletion);
  if (v5)
  {
    v6 = self->_priorityBoostSourceInfo;
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[IXSCoordinatedAppInstall dealloc]";
      v15 = 2112;
      v16 = self;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: Disposing of %@", buf, 0x20u);
    }

    v5[2](v5, 0);
    priorityBoostCompletion = self->_priorityBoostCompletion;
    self->_priorityBoostCompletion = 0;

    priorityBoostSourceInfo = self->_priorityBoostSourceInfo;
    self->_priorityBoostSourceInfo = 0;
  }

  [(RBSTerminationAssertion *)self->_termAssertion invalidate];
  termAssertion = self->_termAssertion;
  self->_termAssertion = 0;

  transaction = self->_transaction;
  self->_transaction = 0;

  v12.receiver = self;
  v12.super_class = IXSCoordinatedAppInstall;
  [(IXSCoordinatedAppInstall *)&v12 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self seed];
  [v4 encodeObject:v5 forKey:@"seed"];

  [v4 encodeBool:-[IXSCoordinatedAppInstall isComplete](self forKey:{"isComplete"), @"complete"}];
  v6 = [(IXSCoordinatedAppInstall *)self error];
  [v4 encodeObject:v6 forKey:@"error"];

  v7 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self errorSourceIdentifier]];
  [v4 encodeObject:v7 forKey:@"errorSourceIdentifier"];

  v8 = [(IXSCoordinatedAppInstall *)self placeholderPromiseUUID];
  [v4 encodeObject:v8 forKey:@"placeholderPromiseUUID"];

  v9 = [(IXSCoordinatedAppInstall *)self appAssetPromiseUUID];
  [v4 encodeObject:v9 forKey:@"appAssetPromiseUUID"];

  v10 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self appAssetPromiseDRI]];
  [v4 encodeObject:v10 forKey:@"appAssetPromiseDRI"];

  v11 = [(IXSCoordinatedAppInstall *)self installOptionsPromiseUUID];
  [v4 encodeObject:v11 forKey:@"installOptionsPromiseUUID"];

  v12 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self importance]];
  [v4 encodeObject:v12 forKey:@"importance"];

  v13 = [(IXSCoordinatedAppInstall *)self initialODRAssetPromiseUUIDs];
  [v4 encodeObject:v13 forKey:@"initialODRAssetPromiseUUIDs"];

  v14 = [(IXSCoordinatedAppInstall *)self userDataPromiseUUID];
  [v4 encodeObject:v14 forKey:@"userDataPromiseUUID"];

  v15 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self placeholderInstallState]];
  [v4 encodeObject:v15 forKey:@"placeholderInstallState"];

  v16 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self appInstallState]];
  [v4 encodeObject:v16 forKey:@"appInstallState"];

  v17 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self postProcessingAssertionState]];
  [v4 encodeObject:v17 forKey:@"postProcessingAssertionState"];

  v18 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self originalInstallType]];
  [v4 encodeObject:v18 forKey:@"originalInstallType"];

  [v4 encodeBool:-[IXSCoordinatedAppInstall isPaused](self forKey:{"isPaused"), @"isPaused"}];
  v19 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self effectiveIntent]];
  [v4 encodeObject:v19 forKey:@"effectiveIntent"];

  [v4 encodeBool:-[IXSCoordinatedAppInstall sentBeginRestoringUserData](self forKey:{"sentBeginRestoringUserData"), @"sentBeginRestoringUserData"}];
  v20 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
  [v4 encodeObject:v20 forKey:@"placeholderFailureInfo"];

  v21 = [(IXSCoordinatedAppInstall *)self preparationPromiseUUID];
  [v4 encodeObject:v21 forKey:@"preparationPromiseUUID"];

  v22 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromiseUUID];
  [v4 encodeObject:v22 forKey:@"deviceSecurityPromiseUUID"];

  v23 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self newRemovability]];
  [v4 encodeObject:v23 forKey:@"newRemovability"];

  v24 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self savedRemovability]];
  [v4 encodeObject:v24 forKey:@"savedRemovability"];

  v25 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self newRemovabilityClient]];
  [v4 encodeObject:v25 forKey:@"newRemovabilityClient"];

  v26 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self savedRemovabilityClient]];
  [v4 encodeObject:v26 forKey:@"savedRemovabilityClient"];

  v27 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self assertionRetryCount]];
  [v4 encodeObject:v27 forKey:@"assertionRetryCount"];

  v28 = [(IXSCoordinatedAppInstall *)self targetGizmoPairingID];
  [v4 encodeObject:v28 forKey:@"targetGizmoPairingID"];

  [v4 encodeBool:-[IXSCoordinatedAppInstall appAssetPromiseSetterCanInstallLocalProvisionedContent](self forKey:{"appAssetPromiseSetterCanInstallLocalProvisionedContent"), @"appAssetPromiseSetterCanInstallLocalProvisionedContent"}];
  v29 = [NSNumber numberWithUnsignedChar:[(IXSCoordinatedAppInstall *)self coordinatorScope]];
  [v4 encodeObject:v29 forKey:@"coordinatorScope"];

  v30 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self placeholderDisposition]];
  [v4 encodeObject:v30 forKey:@"placeholderDisposition"];

  [v4 encodeBool:-[IXSCoordinatedAppInstall needsPostProcessing](self forKey:{"needsPostProcessing"), @"needsPostProcessing"}];
  [v4 encodeBool:-[IXSCoordinatedAppInstall sentBeginPostProcessing](self forKey:{"sentBeginPostProcessing"), @"sentBeginPostProcessing"}];
  v31 = [(IXSCoordinatedAppInstall *)self essentialAssetPromiseUUIDs];
  [v4 encodeObject:v31 forKey:@"essentialAssetPromiseUUIDs"];

  v32 = [(IXSCoordinatedAppInstall *)self dataImportPromiseUUIDs];
  [v4 encodeObject:v32 forKey:@"dataImportPromiseUUIDs"];

  v33 = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
  [v4 encodeObject:v33 forKey:@"stagedUpdateMetadata"];

  v34 = [(IXSCoordinatedAppInstall *)self progressHint];
  [v4 encodeObject:v34 forKey:@"progressHint"];

  v35 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [v4 encodeObject:v35 forKey:@"coordinatorProgress"];
}

- (BOOL)awakeFromSerializationWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10004BA80;
  v21 = sub_10004BA90;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10004BA80;
  v15 = sub_10004BA90;
  v16 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BA98;
  block[3] = &unk_1001019C0;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v17;
  dispatch_sync(v6, block);

  if (v18[5])
  {
    if (a3)
    {
      if (v12[5])
      {
        v7 = v12[5];
      }

      else
      {
        v7 = v18[5];
      }

LABEL_8:
      *a3 = v7;
    }
  }

  else if (a3)
  {
    v7 = v12[5];
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v8 = v18[5] == 0;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (void)_runWithExternalPropertyLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_externalPropertyLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_externalPropertyLock);
}

- (id)_createPowerAssertion
{
  v3 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  if (v3 == 3 || ([(IXSCoordinatedAppInstall *)self importance]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = [(IXSCoordinatedAppInstall *)self identity];
    v5 = [NSString stringWithFormat:@"IXPowerAssertion-%lu-%@", [(IXSCoordinatedAppInstall *)self creator], v4];
    if (v3 >= 8)
    {
      v6 = [NSString stringWithFormat:@"Unknown intent value %lu", v3];
    }

    else
    {
      v6 = *(&off_100103100 + v3);
    }

    v7 = [NSString stringWithFormat:@"Power assertion for %@ with intent %@", v4, v6];

    v8 = [[IXSPowerAssertion alloc] initWithAssertionName:v5 details:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_onAssertionQueue_setTermAssertion:(id)a3
{
  v5 = a3;
  v6 = [(IXSCoordinatedAppInstall *)self assertionQueue];
  dispatch_assert_queue_V2(v6);

  termAssertion = self->_termAssertion;
  if (v5 && termAssertion == v5)
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000A056C();
    }
  }

  else
  {
    if (termAssertion)
    {
      [(RBSTerminationAssertion *)termAssertion invalidate];
    }

    objc_storeStrong(&self->_termAssertion, a3);
  }
}

- (void)setTermAssertion:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self assertionQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004D76C;
  v8[3] = &unk_100100ED8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)handleFirstUnlockNotification
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D800;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)_shouldStageUpdate
{
  v3 = +[ICLFeatureFlags twoStageAppInstallEnabled];
  if (v3)
  {
    if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 2 && ![(IXSCoordinatedAppInstall *)self needsPostProcessing])
    {
      v4 = [(IXSCoordinatedAppInstall *)self importance];
      LOBYTE(v3) = v4 == 4 || v4 == 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (unint64_t)state
{
  v3 = [(IXSCoordinatedAppInstall *)self error];

  if (v3)
  {
    return 1;
  }

  v6 = [(IXSCoordinatedAppInstall *)self placeholderInstallState];
  v7 = [(IXSCoordinatedAppInstall *)self appInstallState];
  v8 = [(IXSCoordinatedAppInstall *)self postProcessingAssertionState];
  v9 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v4 = 1;
  if (v6 != 8 && v7 != 8 && v8 != 8)
  {
    v10 = v9;
    if (MKBDeviceUnlockedSinceBoot() != 1 || (-[IXSCoordinatedAppInstall identity](self, "identity"), v11 = objc_claimAutoreleasedReturnValue(), [v11 bundleID], v12 = objc_claimAutoreleasedReturnValue(), v13 = sub_10003B2E0(v12, 5), v12, v11, v13))
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A06E0(self);
      }

      return 2;
    }

    if ([(IXSCoordinatedAppInstall *)self updateScheduleState]== 1)
    {
      return 21;
    }

    if (v6 == 7 || v6 == 9)
    {
      if (v10 == 6)
      {
        return 32;
      }

      if (v10 - 3 > 1)
      {
        if (v10 - 1 <= 1)
        {
          v22 = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
          if (!v22)
          {
            return 11;
          }

          v85 = 0;
          v86 = &v85;
          v87 = 0x2020000000;
          v88 = 1;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          obj = v22;
          v23 = [obj countByEnumeratingWithState:&v75 objects:v91 count:16];
          if (v23)
          {
            v24 = *v76;
LABEL_31:
            v25 = 0;
            while (1)
            {
              if (*v76 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v75 + 1) + 8 * v25);
              v27 = [v26 accessQueue];
              v74[0] = _NSConcreteStackBlock;
              v74[1] = 3221225472;
              v74[2] = sub_10004E480;
              v74[3] = &unk_1001013C8;
              v74[4] = v26;
              v74[5] = &v85;
              dispatch_sync(v27, v74);

              if ((v86[3] & 1) == 0)
              {
                break;
              }

              if (v23 == ++v25)
              {
                v23 = [obj countByEnumeratingWithState:&v75 objects:v91 count:16];
                if (v23)
                {
                  goto LABEL_31;
                }

                break;
              }
            }
          }

          v28 = *(v86 + 24);
          _Block_object_dispose(&v85, 8);

          if ((v28 & 1) == 0)
          {
            return 12;
          }

          v29 = 1;
LABEL_40:
          if (v10 == 4 || v7 > 6)
          {
            if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
            {
              if (v8 - 4 < 3)
              {
                return 27;
              }

              if (!v8)
              {
                return 26;
              }

              if (v8 != 7)
              {
                v56 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A05E8();
                }

                return 1;
              }

              if (v29)
              {
                v40 = [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
                if (!v40)
                {
                  return 28;
                }

                v85 = 0;
                v86 = &v85;
                v87 = 0x2020000000;
                v88 = 1;
                v64 = 0u;
                v65 = 0u;
                v66 = 0u;
                v67 = 0u;
                v41 = v40;
                v42 = [v41 countByEnumeratingWithState:&v64 objects:v90 count:16];
                if (v42)
                {
                  v43 = *v65;
LABEL_74:
                  v44 = 0;
                  while (1)
                  {
                    if (*v65 != v43)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v45 = *(*(&v64 + 1) + 8 * v44);
                    v46 = [v45 accessQueue];
                    v63[0] = _NSConcreteStackBlock;
                    v63[1] = 3221225472;
                    v63[2] = sub_10004E520;
                    v63[3] = &unk_1001013C8;
                    v63[4] = v45;
                    v63[5] = &v85;
                    dispatch_sync(v46, v63);

                    if ((v86[3] & 1) == 0)
                    {
                      break;
                    }

                    if (v42 == ++v44)
                    {
                      v42 = [v41 countByEnumeratingWithState:&v64 objects:v90 count:16];
                      if (v42)
                      {
                        goto LABEL_74;
                      }

                      break;
                    }
                  }
                }

                v47 = *(v86 + 24);
                _Block_object_dispose(&v85, 8);

                if ((v47 & 1) == 0)
                {
                  return 29;
                }
              }

              if (v10 == 5 || v10 == 3)
              {
                v48 = [(IXSCoordinatedAppInstall *)self dataImportPromises];
                if (!v48)
                {
                  return 30;
                }

                v85 = 0;
                v86 = &v85;
                v87 = 0x2020000000;
                v88 = 1;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v62 = 0u;
                v49 = v48;
                v50 = [v49 countByEnumeratingWithState:&v59 objects:v89 count:16];
                if (v50)
                {
                  v51 = *v60;
LABEL_86:
                  v52 = 0;
                  while (1)
                  {
                    if (*v60 != v51)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v53 = *(*(&v59 + 1) + 8 * v52);
                    v54 = [v53 accessQueue];
                    v58[0] = _NSConcreteStackBlock;
                    v58[1] = 3221225472;
                    v58[2] = sub_10004E558;
                    v58[3] = &unk_1001013C8;
                    v58[4] = v53;
                    v58[5] = &v85;
                    dispatch_sync(v54, v58);

                    if ((v86[3] & 1) == 0)
                    {
                      break;
                    }

                    if (v50 == ++v52)
                    {
                      v50 = [v49 countByEnumeratingWithState:&v59 objects:v89 count:16];
                      if (v50)
                      {
                        goto LABEL_86;
                      }

                      break;
                    }
                  }
                }

                v55 = *(v86 + 24);
                _Block_object_dispose(&v85, 8);

                if ((v55 & 1) == 0)
                {
                  return 31;
                }
              }
            }

            return 32;
          }

          v30 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
          v31 = v30;
          if (!v30)
          {
            v4 = 13;
            goto LABEL_108;
          }

          v85 = 0;
          v86 = &v85;
          v87 = 0x2020000000;
          v88 = 0;
          v32 = [v30 accessQueue];
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10004E4B8;
          v71[3] = &unk_100101268;
          v73 = &v85;
          v72 = v31;
          dispatch_sync(v32, v71);

          LOBYTE(v32) = *(v86 + 24);
          _Block_object_dispose(&v85, 8);
          if ((v32 & 1) == 0)
          {
            v4 = 14;
            goto LABEL_108;
          }

          v33 = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
          v34 = v33 == 0;

          if (v34)
          {
            v4 = 16;
            goto LABEL_108;
          }

          if (v29)
          {
            v35 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
            v36 = v35;
            if (v35)
            {
              v85 = 0;
              v86 = &v85;
              v87 = 0x2020000000;
              v88 = 0;
              v37 = [v35 accessQueue];
              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_10004E4EC;
              v68[3] = &unk_100101268;
              v70 = &v85;
              v38 = v36;
              v69 = v38;
              dispatch_sync(v37, v68);

              LOBYTE(v37) = *(v86 + 24);
              _Block_object_dispose(&v85, 8);
              if ((v37 & 1) == 0)
              {

                v4 = 17;
                goto LABEL_108;
              }
            }
          }

          if (v7 > 2)
          {
            if ((v7 - 4) < 2)
            {
              v4 = 22;
              goto LABEL_108;
            }

            if (v7 != 3)
            {
              v4 = 23;
              goto LABEL_108;
            }
          }

          else
          {
            if (v7)
            {
              if (v7 != 1)
              {
                v4 = 19;
                goto LABEL_108;
              }

              goto LABEL_52;
            }

            if ([(IXSCoordinatedAppInstall *)self _shouldStageUpdate]&& [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 9)
            {
LABEL_52:
              v4 = 18;
LABEL_108:

              return v4;
            }
          }

          v4 = 20;
          goto LABEL_108;
        }
      }

      else
      {
        v15 = [(IXSCoordinatedAppInstall *)self userDataPromise];
        v16 = v15;
        if (!v15)
        {
          return 9;
        }

        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        v88 = 0;
        v17 = [v15 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004E44C;
        block[3] = &unk_100101268;
        v80 = v16;
        v81 = &v85;
        v18 = v16;
        dispatch_sync(v17, block);

        LOBYTE(v17) = *(v86 + 24);
        _Block_object_dispose(&v85, 8);
        if ((v17 & 1) == 0)
        {
          return 10;
        }
      }

      v29 = 0;
      goto LABEL_40;
    }

    v19 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
    v20 = v19;
    if (v19)
    {
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v88 = 0;
      v21 = [v19 accessQueue];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_10004E418;
      v82[3] = &unk_100101268;
      v84 = &v85;
      v83 = v20;
      dispatch_sync(v21, v82);

      if (*(v86 + 24) == 1)
      {
        if (v6 < 7 && ((0x71u >> v6) & 1) != 0)
        {
          v4 = qword_1000BACD0[v6];
        }

        else
        {
          v39 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1000A0664();
          }

          v4 = 1;
        }
      }

      else
      {
        v4 = 5;
      }

      _Block_object_dispose(&v85, 8);
    }

    else
    {
      v4 = 4;
    }
  }

  return v4;
}

- (BOOL)_onQueue_isPlaceholderUnnecessary
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 5 || [(IXSCoordinatedAppInstall *)self placeholderIsInstalled])
  {
    isKindOfClass = 1;
  }

  else
  {
    if ([(IXSCoordinatedAppInstall *)self creator]== 10 && ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 1 || [(IXSCoordinatedAppInstall *)self effectiveIntent]== 2))
    {
      v5 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_isPlaceholderUnnecessary]";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Skipping placeholder install for %@ because this coordinator was created by SystemAppMigrator", buf, 0x16u);
      }

      isKindOfClass = 1;
    }

    else
    {
      v7 = [(IXSCoordinatedAppInstall *)self identity];
      v5 = [v7 bundleID];

      v8 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v28 = sub_10004BA80;
        v29 = sub_10004BA90;
        v30 = 0;
        v10 = [v9 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004E9CC;
        block[3] = &unk_100101268;
        v22 = buf;
        v11 = v9;
        v21 = v11;
        dispatch_sync(v10, block);

        v12 = +[LSApplicationWorkspace defaultWorkspace];
        v13 = [v12 applicationIsInstalled:v5];

        if (v13)
        {
          v14 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 136315394;
            v24 = "[IXSCoordinatedAppInstall _onQueue_isPlaceholderUnnecessary]";
            v25 = 2112;
            v26 = v5;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Not installing placeholder because the app %@ is already installed for the current user for some persona", v23, 0x16u);
          }
        }

        else
        {
          v15 = *(*&buf[8] + 40);
          v16 = MobileInstallationRegisterPlaceholderForReference();
          v14 = 0;

          if (v16)
          {
            v17 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(*&buf[8] + 40);
              *v23 = 136315394;
              v24 = "[IXSCoordinatedAppInstall _onQueue_isPlaceholderUnnecessary]";
              v25 = 2112;
              v26 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Successfully registered placeholder for %@", v23, 0x16u);
            }
          }

          else
          {
            v17 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1000A077C(&buf[8]);
            }
          }
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)_eligibleToScheduleUpdate
{
  if (+[IXFeatureFlags scheduledUpdatesEnabled])
  {
    return [(IXSCoordinatedAppInstall *)self importance]== 4;
  }

  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000A07FC(v4);
  }

  return 0;
}

- (BOOL)_onQueue_scheduleUpdate
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if (![(IXSCoordinatedAppInstall *)self _eligibleToScheduleUpdate])
  {
    return 0;
  }

  v4 = +[IXSAppUpdateScheduler sharedInstance];
  v5 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v12 = 0;
  v6 = [v4 scheduleUpdateInstallForCoordinatorUUID:v5 error:&v12];
  v7 = v12;

  if (v6)
  {
    [(IXSCoordinatedAppInstall *)self setUpdateScheduleState:1];
    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    v8 = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];

    if (v8)
    {
      v9 = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];
      [v9 invalidate];

      [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:0];
    }
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A0880();
    }
  }

  return v6;
}

- (void)_onQueue_checkState
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v5 = [(IXSCoordinatedAppInstall *)self state];
  if (v5 <= 19)
  {
    if (v5 == 6)
    {
      if ([(IXSCoordinatedAppInstall *)self _onQueue_isPlaceholderUnnecessary])
      {
        [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:7];

        [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
      }

      else
      {
        if (v4 != 2 || (v12 = [(IXSCoordinatedAppInstall *)self importance], v12 > 4) || ((1 << v12) & 0x13) == 0)
        {
LABEL_41:

          [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionAndInstallPlaceholder];
          return;
        }

        v13 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v22 = "[IXSCoordinatedAppInstall _onQueue_checkState]";
          v23 = 2112;
          v24 = self;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Skipping placeholder install because this is a background updating coordinator.", buf, 0x16u);
        }

        [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:9];
        [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
      }
    }

    else if (v5 == 18)
    {
      [(IXSCoordinatedAppInstall *)self setAppInstallState:1];

      [(IXSCoordinatedAppInstall *)self _onQueue_doInstall];
    }
  }

  else
  {
    if (v5 != 20)
    {
      if (v5 == 26)
      {

        [(IXSCoordinatedAppInstall *)self _onQueue_convertTerminationAssertionToAllowExtensionLaunch];
      }

      else if (v5 == 32)
      {
        if ((v4 & 0xFFFFFFFFFFFFFFFDLL) == 4)
        {
          v6 = [(IXSCoordinatedAppInstall *)self preparationPromise];
          v7 = v6;
          if (v6)
          {
            v8 = [v6 accessQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10004F01C;
            block[3] = &unk_1001010A0;
            v20 = v7;
            dispatch_sync(v8, block);
          }
        }

        if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
        {
          [(IXSCoordinatedAppInstall *)self _onQueue_finishProgress];
        }

        if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 6)
        {
          [(IXSCoordinatedAppInstall *)self _onQueue_cancelProgress];
        }

        [(IXSCoordinatedAppInstall *)self setComplete:1];
      }

      return;
    }

    if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]== 9)
    {
      if ([(IXSCoordinatedAppInstall *)self updateScheduleState]!= 2)
      {
        if ([(IXSCoordinatedAppInstall *)self _onQueue_scheduleUpdate])
        {
          return;
        }

        [(IXSCoordinatedAppInstall *)self setUpdateScheduleState:2];
      }

      [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:0];
      goto LABEL_41;
    }

    v9 = [(IXSCoordinatedAppInstall *)self preparationPromise];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 accessQueue];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10004F028;
      v17 = &unk_1001010A0;
      v18 = v10;
      dispatch_sync(v11, &v14);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_finishProgress:v14];
    [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionAndDoInstall];
  }
}

- (void)_runAsyncBlockWithDescription:(id)a3 onUninstallQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10004BA80;
  v18 = sub_10004BA90;
  v19 = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
  dispatch_group_wait(v15[5], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(v15[5]);
  v8 = +[IXSLimitedConcurrencyQueue uninstallConcurrencyQueue];
  v9 = [(IXSCoordinatedAppInstall *)self identity];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F1B0;
  v11[3] = &unk_1001028D0;
  v10 = v7;
  v12 = v10;
  v13 = &v14;
  [v8 runAsyncForIdentity:v9 description:v6 operation:v11];

  _Block_object_dispose(&v14, 8);
}

- (void)_runAsyncBlockWithDescription:(id)a3 onLaunchServicesQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
  dispatch_group_enter(v8);

  v9 = +[IXSLimitedConcurrencyQueue launchServicesQueue];
  v10 = [(IXSCoordinatedAppInstall *)self identity];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004F300;
  v12[3] = &unk_1001028F8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 runAsyncForIdentity:v10 description:v7 operation:v12];
}

- (void)_onQueue_convertTerminationAssertionToAllowExtensionLaunch
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSCoordinatedAppInstall *)self setPostProcessingAssertionState:4];
  v4 = [(IXSCoordinatedAppInstall *)self identity];
  v5 = [NSString stringWithFormat:@"installcoordinationd app:%@ post-processing phase", v4];

  v6 = [(IXSCoordinatedAppInstall *)self identity];
  v7 = [v6 bundleID];
  v8 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v7];

  v9 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v11 = v9 - 1;
  if (v9 - 1 < 5 && ((0x17u >> v11) & 1) != 0)
  {
    v12 = [RBSProcessPredicate predicateMatchingExtensionPoint:*(&off_100102E30 + v11)];
    v17 = 0;
    v13 = [(IXSCoordinatedAppInstall *)self _onQueue_acquireTerminationAssertionWithPredicate:v8 description:v5 terminationResistance:50 allowLaunchPredicate:v12 error:&v17];
    v14 = v17;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v9 < 8 && ((0xD1u >> v9) & 1) != 0)
    {
      v15 = *(&off_100102E58 + v9);
    }

    else
    {
      v15 = [NSString stringWithFormat:@"Unknown intent value %lu", v9];
    }

    v14 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_convertTerminationAssertionToAllowExtensionLaunch]", 1805, @"IXErrorDomain", 1uLL, 0, 0, @"Coordinator intent %@ doesn't support a post processing app extension", v10, v15);

    v12 = 0;
  }

  v16 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1000A0970();
  }

  [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
LABEL_13:
}

- (int64_t)_onQueue_assertionRetrySeconds
{
  if ([(IXSCoordinatedAppInstall *)self assertionRetryCount]< 0xC)
  {
    return 5;
  }

  if ([(IXSCoordinatedAppInstall *)self assertionRetryCount]< 0x20)
  {
    return 15;
  }

  if ([(IXSCoordinatedAppInstall *)self assertionRetryCount]< 0x3E)
  {
    return 60;
  }

  if ([(IXSCoordinatedAppInstall *)self assertionRetryCount]>= 0xFE)
  {
    return -1;
  }

  return 900;
}

- (void)_onQueue_runAssertionHandlerForPlaceholder:(BOOL)a3
{
  v3 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  [(IXSCoordinatedAppInstall *)self setAssertionRetryCount:0];
  [(IXSCoordinatedAppInstall *)self setFirstAppExtensionBusyTime:0];
  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  if (v3)
  {

    [(IXSCoordinatedAppInstall *)self _onQueue_installPlaceholder];
  }

  else
  {

    [(IXSCoordinatedAppInstall *)self _onQueue_doInstall];
  }
}

- (void)_onQueue_acquireAssertionForPlaceholder:(BOOL)a3 forceAcquisition:(BOOL)a4
{
  v5 = a3;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = @"-for-placeholder";
  }

  else
  {
    v8 = &stru_100105BA0;
  }

  v9 = [(IXSCoordinatedAppInstall *)self identity];
  v10 = [v9 uniqueIdentifier];
  v11 = [NSString stringWithFormat:@"com.apple.InstallCoordination.acquire-assertion%@.%@", v8, v10];

  [v11 UTF8String];
  v12 = os_transaction_create();
  v13 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

  if (v13)
  {
    v14 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
    dispatch_source_cancel(v14);

    [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
  }

  if (v5)
  {
    [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:4];
  }

  else
  {
    [(IXSCoordinatedAppInstall *)self setAppInstallState:4];
  }

  v15 = [(IXSCoordinatedAppInstall *)self _onQueue_fetchInstallOptionsWithError:0];
  v16 = v15;
  if (a4 || v15 && ([v15 isDeveloperInstall] & 1) != 0)
  {
    v17 = 50;
  }

  else if ([(IXSCoordinatedAppInstall *)self importance]== 3)
  {
    v17 = 50;
  }

  else
  {
    v17 = 30;
  }

  v18 = [(IXSCoordinatedAppInstall *)self identity];
  v19 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v20 = v19;
  v21 = 78;
  if (v5)
  {
    v21 = 89;
  }

  v22 = [NSString stringWithFormat:@"installcoordinationd app:%@ uuid:%@ isPlaceholder:%c", v18, v19, v21];

  v23 = [(IXSCoordinatedAppInstall *)self identity];
  v24 = [v23 bundleID];
  v25 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v24];

  v33 = 0;
  LOBYTE(v23) = [(IXSCoordinatedAppInstall *)self _onQueue_acquireTerminationAssertionWithPredicate:v25 description:v22 terminationResistance:v17 allowLaunchPredicate:0 error:&v33];
  v26 = v33;
  if ((v23 & 1) == 0)
  {
    v27 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100050424;
    v28[3] = &unk_100102948;
    v29 = v12;
    v30 = self;
    v32 = v5;
    v31 = v26;
    sub_100071134(v27, v28);
  }
}

- (BOOL)_shouldRetryInstallAttemptBasedOnPreviousResult:(BOOL)a3 returnedError:(id)a4 targetInstallURL:(id)a5 retriesAttempted:(unint64_t)a6 totalRetries:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  if (a3)
  {
    goto LABEL_13;
  }

  v14 = [v12 domain];
  if (![v14 isEqualToString:NSCocoaErrorDomain] || objc_msgSend(v12, "code") != 4097)
  {
    v15 = [v12 domain];
    if (![v15 isEqualToString:NSCocoaErrorDomain] || objc_msgSend(v12, "code") != 4099)
    {

      goto LABEL_13;
    }
  }

  if (a6 >= a7)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v16 = +[IXFileManager defaultManager];
  v17 = [v16 itemDoesNotExistAtURL:v13];

  if (v17)
  {
    v18 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[IXSCoordinatedAppInstall _shouldRetryInstallAttemptBasedOnPreviousResult:returnedError:targetInstallURL:retriesAttempted:totalRetries:]";
      v26 = 2112;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@: installable no longer present, skipping retry", &v24, 0x16u);
    }

    goto LABEL_13;
  }

  v21 = [(IXSCoordinatedAppInstall *)self appInstallState];
  v22 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"install";
    v24 = 136316418;
    v25 = "[IXSCoordinatedAppInstall _shouldRetryInstallAttemptBasedOnPreviousResult:returnedError:targetInstallURL:retriesAttempted:totalRetries:]";
    v26 = 2112;
    if (v21 == 2)
    {
      v23 = @"stage update";
    }

    v27 = v23;
    v28 = 2112;
    v29 = v12;
    v30 = 1024;
    v31 = 5;
    v32 = 2048;
    v33 = a6;
    v34 = 2048;
    v35 = a7;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Call to %@ SPI returned retryable error %@; retrying in %d seconds (%lu/%lu tries)", &v24, 0x3Au);
  }

  v19 = 1;
LABEL_14:

  return v19;
}

- (BOOL)_limitedConcurrency_doRetryingInstallOperationForPlaceholder:(BOOL)a3 installTargetURL:(id)a4 retries:(unint64_t)a5 error:(id *)a6 installAttemptBlock:(id)a7
{
  v8 = a3;
  v10 = a4;
  v11 = a7;
  v48 = v8;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(IXSCoordinatedAppInstall *)self _limitedConcurrency_fetchInstallingProgress];
  }

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100050DEC;
  v56[3] = &unk_100102970;
  v59 = v8;
  v45 = v12;
  v57 = v45;
  v58 = self;
  v13 = objc_retainBlock(v56);
  v14 = 0;
  v15 = 0;
  v47 = v13;
  while (1)
  {

    v55 = 0;
    v16 = v11[2](v11, v13, v10, &v55);
    v15 = v55;
    if (!v16)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_18;
    }

    v17 = [(IXSCoordinatedAppInstall *)self identity];
    v18 = [v17 bundleID];
    v19 = sub_10003B2E0(v18, 6);

    if (v19 && !v14)
    {
      v20 = [NSError errorWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];

      v21 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v61 = "[IXSCoordinatedAppInstall _limitedConcurrency_doRetryingInstallOperationForPlaceholder:installTargetURL:retries:error:installAttemptBlock:]";
        v62 = 2112;
        v63 = v20;
        v64 = 2048;
        v65 = 0;
        v66 = 2048;
        v67 = a5;
        v22 = v21;
        v23 = "%s: For testing, faking install SPI returning error %@ (retry count %lu/%lu)";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x2Au);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v26 = [(IXSCoordinatedAppInstall *)self identity];
    v27 = [v26 bundleID];
    v28 = sub_10003B2E0(v27, 7);

    if (v28)
    {
      v20 = [NSError errorWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];

      v21 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v61 = "[IXSCoordinatedAppInstall _limitedConcurrency_doRetryingInstallOperationForPlaceholder:installTargetURL:retries:error:installAttemptBlock:]";
        v62 = 2112;
        v63 = v20;
        v64 = 2048;
        v65 = v14;
        v66 = 2048;
        v67 = a5;
        v22 = v21;
        v23 = "%s: For testing, always faking install SPI returning error %@ (retry count %lu/%lu)";
        goto LABEL_14;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_16;
    }

    v29 = [(IXSCoordinatedAppInstall *)self identity];
    v30 = [v29 bundleID];
    v54 = 0;
    v31 = sub_10003AF28(v30, 12, &v54);
    v24 = v54;

    if (v31)
    {
      if (v24)
      {
        v32 = [v24 objectForKeyedSubscript:@"TEST_MODE_DATA_SIMULATE_REBOOT"];

        if (v32)
        {
          v33 = [v24 objectForKeyedSubscript:@"TEST_MODE_DATA_SIMULATE_REBOOT"];
          LODWORD(v32) = [v33 isEqualToString:@"TEST_MODE_DATA_REMOVE_PLACEHOLDER"];

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
        LODWORD(v32) = 0;
      }

      if (v32 == v48)
      {
        v43 = v34;
        v35 = +[IXFileManager defaultManager];
        v53 = v15;
        v36 = [v35 removeItemAtURL:v10 error:&v53];
        v20 = v53;

        if ((v36 & 1) == 0)
        {
          v21 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v37 = [v10 path];
            *buf = 136315650;
            v61 = "[IXSCoordinatedAppInstall _limitedConcurrency_doRetryingInstallOperationForPlaceholder:installTargetURL:retries:error:installAttemptBlock:]";
            v62 = 2112;
            v63 = v37;
            v64 = 2112;
            v65 = v20;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to remove target bundle %@ : %@", buf, 0x20u);
          }

          v25 = 1;
          v13 = v47;
          goto LABEL_17;
        }

        if (v43)
        {
          v42 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v61 = "[IXSCoordinatedAppInstall _limitedConcurrency_doRetryingInstallOperationForPlaceholder:installTargetURL:retries:error:installAttemptBlock:]";
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: Exiting for testing (TEST_MODE_DATA_SIMULATE_REBOOT)...", buf, 0xCu);
          }

          exit(1);
        }

        v44 = [NSError errorWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];

        v21 = sub_1000031B0(off_100121958);
        v13 = v47;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 0;
          v20 = v44;
          goto LABEL_17;
        }

        *buf = 136315906;
        v61 = "[IXSCoordinatedAppInstall _limitedConcurrency_doRetryingInstallOperationForPlaceholder:installTargetURL:retries:error:installAttemptBlock:]";
        v62 = 2112;
        v20 = v44;
        v63 = v44;
        v64 = 2048;
        v65 = v14;
        v66 = 2048;
        v67 = a5;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: For testing, faking install SPI returning error %@ even after consuming the asset (retry count %lu/%lu)", buf, 0x2Au);
LABEL_16:
        v25 = 0;
LABEL_17:

        v15 = v20;
        goto LABEL_18;
      }
    }

    v25 = 1;
    v13 = v47;
LABEL_18:
    if (![(IXSCoordinatedAppInstall *)self _shouldRetryInstallAttemptBasedOnPreviousResult:v25 returnedError:v15 targetInstallURL:v10 retriesAttempted:v14 totalRetries:a5])
    {
      break;
    }

    sleep(5u);
    ++v14;

    if (v25)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  if ((v48 & 1) == 0)
  {
    v38 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100050F60;
    v50[3] = &unk_100102920;
    v52 = v25;
    v50[4] = self;
    v51 = v45;
    sub_100071134(v38, v50);
  }

  if (a6)
  {
    v39 = v25;
  }

  else
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    v40 = v15;
    *a6 = v15;
  }

  return v25;
}

- (void)_finishPlaceholderInstallAtURL:(id)a3 result:(BOOL)a4 recordPromise:(id)a5 error:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(IXSCoordinatedAppInstall *)self identity];
  v14 = [v13 bundleID];
  v15 = sub_10003B2E0(v14, 3);

  if (v15)
  {
    v38 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: Exiting because testing client requested termination after placeholder install.", buf, 0xCu);
    }

    exit(1);
  }

  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 6 && v8)
  {
    v39 = v11;
    v40 = v10;
    v16 = [(IXSCoordinatedAppInstall *)self identity];
    v57[0] = @"CACHE_DELETE_PURGE_APP_CACHES";
    v17 = [v16 bundleID];
    v56 = v17;
    v18 = [NSArray arrayWithObjects:&v56 count:1];
    v57[1] = @"CACHE_DELETE_VOLUME";
    v58[0] = v18;
    v19 = +[IXGlobalConfiguration sharedInstance];
    v20 = [v19 userVolumeURL];
    v21 = [v20 path];
    v58[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];

    v23 = dispatch_semaphore_create(0);
    v45[5] = _NSConcreteStackBlock;
    v45[6] = 3221225472;
    v45[7] = sub_100051E64;
    v45[8] = &unk_1001029C0;
    v24 = v16;
    v46 = v24;
    v25 = v23;
    v47 = v25;
    v26 = CacheDeletePurgeSpaceWithInfo();
    v27 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v25, v27))
    {
      v28 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sub_1000A0C68();
      }
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v11 = v39;
    v10 = v40;
  }

  v29 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100051F84;
  v45[3] = &unk_1001010A0;
  v45[4] = self;
  sub_100071134(v29, v45);

  if (v8)
  {
    v30 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100051F9C;
    v41[3] = &unk_100100ED8;
    v41[4] = self;
    v31 = &v42;
    v42 = v11;
    v32 = v41;
  }

  else
  {
    if (!v12)
    {
      v33 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000A0D00(self);
      }

      v34 = [(IXSCoordinatedAppInstall *)self identity];
      v12 = sub_1000405FC("[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]", 2401, @"IXErrorDomain", 0xEuLL, 0, 0, @"Placeholder installation failed but we received a nil error object when installing %@", v35, v34);
    }

    v36 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [v10 path];
      *buf = 136315906;
      v49 = "[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]";
      v50 = 2112;
      v51 = self;
      v52 = 2112;
      v53 = v37;
      v54 = 2112;
      v55 = v12;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: %@: Failed to install placeholder at path %@ : %@", buf, 0x2Au);
    }

    v30 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100051F90;
    v43[3] = &unk_100100ED8;
    v43[4] = self;
    v31 = &v44;
    v12 = v12;
    v44 = v12;
    v32 = v43;
  }

  sub_100071134(v30, v32);
}

- (id)_onQueue_fetchMetadataFromInstalledAppForOffloadWithError:(id *)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self identity];
  v7 = [LSApplicationRecord alloc];
  v8 = [v6 bundleID];
  v36 = 0;
  v9 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v36];
  v10 = v36;

  if (!v9)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0F08();
    }

    sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", 2480, @"IXErrorDomain", 1uLL, v10, 0, @"No LSApplicationRecord found for %@ during demotion", v16, v6);
    goto LABEL_18;
  }

  if ([v9 isPlaceholder])
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0E94();
    }

    v34 = v6;
    v13 = @"Cannot demote app with identity %@ because it is a placeholder";
    v14 = 2485;
LABEL_17:
    sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", v14, @"IXErrorDomain", 4uLL, 0, 0, v13, v12, v34);
    v21 = LABEL_18:;
    v19 = 0;
    v18 = 0;
    goto LABEL_19;
  }

  v17 = [v9 bundleContainerURL];
  if (!v17)
  {
    v27 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0E20();
    }

    v34 = v6;
    v13 = @"LSApplicationRecord for %@ did not contain a bundleContainerURL during demotion";
    v14 = 2491;
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
  v35 = v10;
  v20 = [MIStoreMetadata metadataFromPlistAtURL:v19 error:&v35];
  v21 = v35;

  if (v20)
  {
    goto LABEL_22;
  }

  v22 = [v21 userInfo];
  v10 = [v22 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v23 = [v10 domain];
  if (![v23 isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_26;
  }

  v24 = [v10 code];

  if (v24 != 260)
  {
LABEL_26:
    v30 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = [v19 path];
      *buf = 136315906;
      v38 = "[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]";
      v39 = 2112;
      v40 = v33;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v21;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: Failed to read iTunesMetadata.plist from %@ when demoting %@ : %@", buf, 0x2Au);
    }

    v31 = [v19 path];
    v26 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", 2503, @"IXErrorDomain", 1uLL, v21, 0, @"Failed to read iTunesMetadata.plist from %@ when demoting %@", v32, v31);

    goto LABEL_29;
  }

  v26 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", 2501, @"IXErrorDomain", 0x17uLL, 0, 0, @"No metadata found for app %@", v25, v6);
LABEL_29:

  v21 = v26;
LABEL_19:

  if (a3)
  {
    v28 = v21;
    v20 = 0;
    *a3 = v21;
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  return v20;
}

- (void)_onQueue_installPlaceholder
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
  v5 = [(IXSCoordinatedAppInstall *)self error];

  if (v5)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring placeholder install because coordinator canceled while waiting for assertion", buf, 0x16u);
    }

    goto LABEL_59;
  }

  v7 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

  if (v7)
  {
    v8 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
    dispatch_source_cancel(v8);

    [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
  }

  v9 = [(IXSCoordinatedAppInstall *)self termAssertion];

  v10 = v9 == 0;
  v11 = sub_1000031B0(off_100121958);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v14 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: No termination assertion acquired for placeholder %@; proceeding with install.", buf, 0x16u);
    }
  }

  else if (v12)
  {
    v13 = [(IXSCoordinatedAppInstall *)self identity];
    *buf = 136315394;
    *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Acquired termination assertion for placeholder %@; proceeding with install.", buf, 0x16u);
  }

  v15 = [(IXSCoordinatedAppInstall *)self newRemovability];
  if (v15)
  {
    v16 = +[IXSAppRemovabilityManager sharedInstance];
    v17 = [(IXSCoordinatedAppInstall *)self identity];
    v18 = [v16 removabilityMetadataForAppWithIdentity:v17];

    -[IXSCoordinatedAppInstall setSavedRemovability:](self, "setSavedRemovability:", [v18 removability]);
    -[IXSCoordinatedAppInstall setSavedRemovabilityClient:](self, "setSavedRemovabilityClient:", [v18 client]);
    v19 = +[IXSAppRemovabilityManager sharedInstance];
    v20 = [(IXSCoordinatedAppInstall *)self identity];
    v106 = 0;
    v21 = [v19 setRemovability:v15 forAppWithIdentity:v20 byClient:-[IXSCoordinatedAppInstall newRemovabilityClient](self error:{"newRemovabilityClient"), &v106}];
    v22 = v106;

    if ((v21 & 1) == 0)
    {
      v28 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(IXSCoordinatedAppInstall *)self identity];
        v30 = [v29 bundleID];
        v31 = IXStringForAppRemovability(v15);
        *buf = 136315906;
        *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
        *&buf[12] = 2112;
        *&buf[14] = v30;
        *&buf[22] = 2112;
        v112 = v31;
        LOWORD(v113) = 2112;
        *(&v113 + 2) = v22;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Failed to set removability for %@ to %@ with error: %@", buf, 0x2Au);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v22 client:15];
      goto LABEL_59;
    }
  }

  if (v4)
  {
    v102 = 0;
    v103 = &v102;
    v104 = 0x2020000000;
    v105 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v112 = sub_10004BA80;
    *&v113 = sub_10004BA90;
    *(&v113 + 1) = 0;
    v98 = 0;
    v99 = &v98;
    v100 = 0x2020000000;
    v101 = 0;
    v92 = 0;
    v93 = &v92;
    v94 = 0x3032000000;
    v95 = sub_10004BA80;
    v96 = sub_10004BA90;
    v97 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = sub_10004BA80;
    v90 = sub_10004BA90;
    v91 = 0;
    v23 = [v4 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000534F8;
    block[3] = &unk_1001029E8;
    v81 = &v102;
    v80 = v4;
    v82 = buf;
    v83 = &v92;
    v84 = &v98;
    v85 = &v86;
    dispatch_sync(v23, block);

    if ((v103[3] & 1) == 0)
    {
      v35 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000A0F88();
      }

      v24 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2576, @"IXErrorDomain", 1uLL, 0, 0, @"Placeholder promise was not complete when we went to install it for %@", v36, self);
      [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v24 client:15];
      goto LABEL_58;
    }

    if (!*(*&buf[8] + 40))
    {
      v37 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000A10E4();
      }

      v39 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2582, @"IXErrorDomain", 1uLL, 0, 0, @"Placeholder promise was nil when we went to install it for %@", v38, self);
      v40 = [(IXSCoordinatedAppInstall *)self internalQueue];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_1000535AC;
      v77[3] = &unk_100100ED8;
      v77[4] = self;
      v24 = v39;
      v78 = v24;
      sub_100071134(v40, v77);

      goto LABEL_58;
    }

    v24 = objc_alloc_init(MIInstallOptions);
    v76 = 0;
    v25 = [(IXSCoordinatedAppInstall *)self _onQueue_fetchInstallOptionsWithError:&v76];
    v26 = v76;
    v67 = v26;
    if (v25)
    {
      v27 = [v25 linkedParentBundleID];
      [v24 setLinkedParentBundleID:v27];
    }

    else
    {
      v58 = v26;
      v59 = [v26 domain];
      if ([v59 isEqualToString:@"IXErrorDomain"])
      {
        v60 = [v58 code] == 23;

        if (v60)
        {
LABEL_21:
          if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 6)
          {
            [v24 setInstallTargetType:3];
            if (v25)
            {
              [v24 setWaitForDeletion:{objc_msgSend(v25, "waitForDeletion")}];
            }
          }

          else
          {
            [v24 setInstallTargetType:2];
          }

          [v24 setUserInitiated:1];
          [v24 setLsInstallType:v99[3]];
          [v24 setSinfData:v87[5]];
          if ([(IXSCoordinatedAppInstall *)self effectiveIntent]!= 6)
          {
            [v24 setITunesMetadata:v93[5]];
LABEL_42:
            [v24 setPerformAPFSClone:1];
            v44 = [(IXSCoordinatedAppInstall *)self identity];
            v45 = [v44 bundleID];
            [v24 setBundleIdentifier:v45];

            v46 = [(IXSCoordinatedAppInstall *)self identity];
            v47 = [v46 personaUniqueString];
            [v24 setPersonaUniqueString:v47];

            [v24 setInstallIntent:{sub_1000535BC(-[IXSCoordinatedAppInstall effectiveIntent](self, "effectiveIntent"))}];
            [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:6];
            v43 = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
            if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 7)
            {
              if (!objc_opt_class() || !objc_opt_class())
              {
                v61 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A1070();
                }

                v48 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2688, @"IXErrorDomain", 0x1EuLL, 0, 0, @"Canceling placeholder installation for %@ because IXGizmoInstallingAppInstallCoordinator is not supported on this device.", v62, self);
                [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v48 client:15];
                [v43 invalidate];
                goto LABEL_56;
              }

              v48 = [(IXSCoordinatedAppInstall *)self targetGizmoPairingID];
              if (!v48)
              {
                v49 = +[NRPairedDeviceRegistry sharedInstance];
                v50 = [v49 getActivePairedDevice];
                v48 = [v50 valueForProperty:NRDevicePropertyPairingID];

                if (!v48)
                {
                  v65 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000A0FFC();
                  }

                  v48 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2674, @"IXErrorDomain", 0x1FuLL, 0, 0, @"Canceling placeholder installation for %@ because IXGizmoInstallingAppInstallCoordinator failed to find gizmo pairing ID.", v66, self);
                  [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v48 client:15];
                  [v43 invalidate];
                  goto LABEL_56;
                }
              }

              v51 = +[IXFileManager defaultManager];
              v52 = [v51 diskUsageForURL:*(*&buf[8] + 40)];

              v53 = +[ACXDeviceConnection sharedDeviceConnection];
              v54 = *(*&buf[8] + 40);
              v73[0] = _NSConcreteStackBlock;
              v73[1] = 3221225472;
              v73[2] = sub_1000535CC;
              v73[3] = &unk_100102A10;
              v73[4] = self;
              v74[1] = buf;
              v43 = v43;
              v74[0] = v43;
              [v53 installApplicationAtURL:v54 onDeviceWithPairingID:v48 installOptions:v24 size:v52 completion:v73];
              v55 = v74;
            }

            else
            {
              v56 = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
              v57 = [v56 stagedIdentifier];

              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_100053624;
              v68[3] = &unk_100102A38;
              v68[4] = self;
              v72 = buf;
              v69 = v24;
              v48 = v57;
              v70 = v48;
              v43 = v43;
              v71 = v43;
              [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Placeholder install" onLaunchServicesQueue:v68];

              v55 = &v69;
              v53 = v70;
            }

LABEL_56:
LABEL_57:

LABEL_58:
            _Block_object_dispose(&v86, 8);

            _Block_object_dispose(&v92, 8);
            _Block_object_dispose(&v98, 8);
            _Block_object_dispose(buf, 8);

            _Block_object_dispose(&v102, 8);
            goto LABEL_59;
          }

          v75 = 0;
          v41 = [(IXSCoordinatedAppInstall *)self _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:&v75];
          v42 = v75;
          v43 = v42;
          if (v41)
          {
            [v24 setITunesMetadata:v41];
LABEL_40:

            goto LABEL_42;
          }

          v63 = [v42 domain];
          if ([v63 isEqualToString:@"IXErrorDomain"])
          {
            v64 = [v43 code] == 23;

            if (v64)
            {
              goto LABEL_40;
            }
          }

          else
          {
          }

          [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v43 client:15];
          goto LABEL_57;
        }
      }

      else
      {
      }

      v27 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v107 = 136315394;
        v108 = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
        v109 = 2112;
        v110 = v67;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s: Error occurred when fetching optional placeholder install options: %@", v107, 0x16u);
      }
    }

    goto LABEL_21;
  }

  v32 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_1000A1158();
  }

  v34 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2557, @"IXErrorDomain", 1uLL, 0, 0, @"Placeholder was nil when we went to install it for %@", v33, self);
  [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v34 client:15];

LABEL_59:
}

- (void)_onQueue_acquireAssertionAndInstallPlaceholder
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if (![(IXSCoordinatedAppInstall *)self placeholderInstallState]|| [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 5 || [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 4)
  {
    v4 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
    v5 = sub_1000031B0(off_100121958);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 == 7)
    {
      if (v6)
      {
        v7 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v14 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndInstallPlaceholder]";
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Gizmo app install - not acquiring termination assertion to install placeholder for %@", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_installPlaceholder];
    }

    else
    {
      if (v6)
      {
        v8 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v14 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndInstallPlaceholder]";
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Acquiring termination assertion to install placeholder for %@", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionForPlaceholder:1 forceAcquisition:0];
    }
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A11CC(self);
    }

    v10 = [(IXSCoordinatedAppInstall *)self placeholderInstallState];
    v12 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndInstallPlaceholder]", 2721, @"IXErrorDomain", 1uLL, 0, 0, @"Expected to have not yet begun placeholder install or waiting/pending assertion acquisition but state was %lu", v11, v10);
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v12 client:15];
  }
}

+ (id)_fetchInstallOptionsFromPromise:(id)a3 error:(id *)a4
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10004BA80;
  v40 = sub_10004BA90;
  v41 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100053DA4;
  v33[3] = &unk_100101268;
  v35 = &v36;
  v5 = a3;
  v34 = v5;
  v6 = objc_retainBlock(v33);
  v7 = [v5 accessQueue];
  dispatch_sync(v7, v6);

  v8 = v37[5];
  if (v8)
  {
    v32 = 0;
    v9 = [NSData dataWithContentsOfURL:v8 options:3 error:&v32];
    v10 = v32;
    if (v9)
    {
      v31 = v10;
      v11 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:&v31];
      v12 = v31;

      if (v11)
      {
        v13 = [v11 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        if (v13)
        {
          v14 = v12;
LABEL_20:
          [v11 finishDecoding];
          goto LABEL_21;
        }

        v23 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [v11 error];
          sub_1000A1264(v24, v42);
        }

        v25 = [v11 error];
        v14 = sub_1000405FC("+[IXSCoordinatedAppInstall _fetchInstallOptionsFromPromise:error:]", 2769, @"IXErrorDomain", 1uLL, v25, 0, @"Failed to unarchive install options data", v26, v30);
      }

      else
      {
        v21 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000A12C4();
        }

        v14 = sub_1000405FC("+[IXSCoordinatedAppInstall _fetchInstallOptionsFromPromise:error:]", 2763, @"IXErrorDomain", 1uLL, v12, 0, @"Failed to create unarchiver for install options data", v22, v30);
      }

      v13 = 0;
      goto LABEL_20;
    }

    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v37[5] path];
      sub_1000A1340(v18, v10, v42);
    }

    v19 = [v37[5] path];
    v14 = sub_1000405FC("+[IXSCoordinatedAppInstall _fetchInstallOptionsFromPromise:error:]", 2757, @"IXErrorDomain", 1uLL, v10, 0, @"Unable to read install options serialized data from %@", v20, v19);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A13A4();
    }

    v14 = sub_1000405FC("+[IXSCoordinatedAppInstall _fetchInstallOptionsFromPromise:error:]", 2751, @"IXErrorDomain", 1uLL, 0, 0, @"Install options promise unexpectedly returned nil staged path.", v16, v30);
  }

  v11 = 0;
  v9 = 0;
  v13 = 0;
LABEL_21:
  if (a4 && !v13)
  {
    v27 = v14;
    *a4 = v14;
  }

  v28 = v13;

  _Block_object_dispose(&v36, 8);

  return v28;
}

- (id)_onQueue_fetchInstallOptionsWithError:(id *)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v7 = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
  if (v7)
  {
    v8 = [objc_opt_class() _fetchInstallOptionsFromPromise:v7 error:a3];
  }

  else
  {
    v9 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchInstallOptionsWithError:]", 2792, @"IXErrorDomain", 0x17uLL, 0, 0, @"Install options promise was not set.", v6, v11);
    if (a3)
    {
      v9 = v9;
      *a3 = v9;
    }

    v8 = 0;
  }

  return v8;
}

- (void)_onQueue_handleCancelForInstallFailure:(id)a3
{
  v22 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v22 domain];
  v6 = [v5 isEqualToString:MIInstallerErrorDomain];

  if (v6)
  {
    v7 = [v22 code];
    if (v7 <= 12)
    {
      if (v7 == 7)
      {
        v9 = 13;
LABEL_35:
        v8 = v22;
        goto LABEL_36;
      }

      v8 = v22;
      if (v7 == 9)
      {
        v9 = 16;
        goto LABEL_36;
      }

      if (v7 == 10)
      {
        v9 = 6;
        goto LABEL_36;
      }
    }

    else if (v7 > 158)
    {
      v8 = v22;
      if (v7 == 159)
      {
        v9 = 15;
        goto LABEL_36;
      }

      if (v7 == 208)
      {
        v9 = 18;
        goto LABEL_36;
      }
    }

    else
    {
      v8 = v22;
      if (v7 == 13)
      {
        v17 = [v22 userInfo];
        v18 = [v17 objectForKeyedSubscript:MILibMISErrorNumberKey];
        objc_opt_class();
        v19 = v18;
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (v20 && [v20 intValue] == -402620375)
        {
          v21 = 17;
        }

        else
        {
          v21 = 14;
        }

        v12 = IXCreateUserPresentableError(v21, 0, v22);

        goto LABEL_37;
      }

      if (v7 == 15)
      {
        v9 = 4;
LABEL_36:
        v12 = IXCreateUserPresentableError(v9, 0, v8);
LABEL_37:
        v13 = 17;
LABEL_38:
        if (v12)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    v16 = sub_10000A95C(v8);
    if (v16)
    {
      v12 = v16;
      v13 = 17;
      goto LABEL_40;
    }

    v9 = 1;
    goto LABEL_35;
  }

  v10 = [v22 domain];
  v11 = [v10 isEqualToString:LSApplicationWorkspaceErrorDomain];

  if (v11)
  {
    v12 = IXCreateUserPresentableError(1uLL, 0, v22);
    v13 = 16;
    goto LABEL_38;
  }

  v14 = [v22 domain];
  if ([v14 isEqualToString:NSCocoaErrorDomain])
  {
    v15 = [v22 code];

    if (v15 == 4097)
    {
      v12 = IXCreateUserPresentableError(1uLL, 0, v22);
      v13 = 15;
      goto LABEL_38;
    }
  }

  else
  {
  }

  v13 = 15;
LABEL_39:
  v12 = v22;
LABEL_40:
  [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v12 client:v13];
}

- (void)_finishAppInstallAtURL:(id)a3 result:(BOOL)a4 recordPromise:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(IXSCoordinatedAppInstall *)self identity];
  v14 = [v13 bundleID];
  v15 = sub_10003B2E0(v14, 4);

  if (v15)
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Exiting because testing client requested termination after app install.", buf, 0xCu);
    }

    exit(1);
  }

  if (a4)
  {
    v16 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100054570;
    v25[3] = &unk_100100ED8;
    v25[4] = self;
    v17 = &v26;
    v26 = v11;
    v18 = v25;
  }

  else
  {
    if (!v12)
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1428();
      }

      v12 = sub_1000405FC("[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]", 2895, @"IXErrorDomain", 0xEuLL, 0, 0, @"Installation failed but we received a nil error error object", v20, v25[0]);
    }

    v21 = sub_1000031B0(off_100121958);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v22)
      {
        v23 = [v10 path];
        *buf = 136315906;
        v30 = "[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]";
        v31 = 2112;
        v32 = self;
        v33 = 2112;
        v34 = v23;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Installation for %@ at path %@ failed: %@", buf, 0x2Au);
      }
    }

    else if (v22)
    {
      *buf = 136315650;
      v30 = "[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]";
      v31 = 2112;
      v32 = self;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Installation for %@ failed: %@", buf, 0x20u);
    }

    v16 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100054530;
    v27[3] = &unk_100100ED8;
    v27[4] = self;
    v17 = &v28;
    v12 = v12;
    v28 = v12;
    v18 = v27;
  }

  sub_100071134(v16, v18);
}

- (void)_onQueue_doAddReference:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
  [(IXSCoordinatedAppInstall *)self setAppInstallState:6];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10004BA80;
  v27 = sub_10004BA90;
  v28 = 0;
  v7 = [v4 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054908;
  block[3] = &unk_100101268;
  v22 = &v23;
  v8 = v4;
  v21 = v8;
  dispatch_sync(v7, block);

  v9 = v24[5];
  v19 = 0;
  v10 = MIFinalizeReferenceForInstalledAppWithError();
  v11 = 0;
  v12 = [v8 accessQueue];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100054954;
  v17 = &unk_1001010A0;
  v13 = v8;
  v18 = v13;
  dispatch_sync(v12, &v14);

  [(IXSCoordinatedAppInstall *)self _finishAppInstallAtURL:0 result:v10 != 0 recordPromise:v10 error:v11, v14, v15, v16, v17];
  [v6 invalidate];

  _Block_object_dispose(&v23, 8);
}

- (id)stageUpdateFromAppAsset:(id)a3 options:(id)a4 retries:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = 0;
  while (1)
  {

    v13 = [(IXSCoordinatedAppInstall *)self identity];
    v14 = [v13 miAppIdentity];
    [(IXSCoordinatedAppInstall *)self installationDomain];
    v15 = MobileInstallationStageApplicationUpdate();
    v12 = 0;

    if (v15)
    {
      break;
    }

    if (![(IXSCoordinatedAppInstall *)self _shouldRetryInstallAttemptBasedOnPreviousResult:0 returnedError:v12 targetInstallURL:v10 retriesAttempted:0 totalRetries:a5])
    {
      v16 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000A14AC();
      }

      v17 = [(IXSCoordinatedAppInstall *)self identity];
      v19 = sub_1000405FC("[IXSCoordinatedAppInstall stageUpdateFromAppAsset:options:retries:error:]", 3017, @"IXErrorDomain", 0x3AuLL, v12, 0, @"Failed to stage update for %@", v18, v17);

      if (a6)
      {
        v20 = v19;
        *a6 = v19;
      }

      v12 = v19;
      goto LABEL_12;
    }
  }

  v21 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[IXSCoordinatedAppInstall stageUpdateFromAppAsset:options:retries:error:]";
    v25 = 2112;
    v26 = self;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: %@: staged update with results %@", buf, 0x20u);
  }

LABEL_12:

  return v15;
}

- (void)_onQueue_gizmoInstallForInstallOptions:(id)a3 appAssetAtPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  if (objc_opt_class() && objc_opt_class())
  {
    v9 = [(IXSCoordinatedAppInstall *)self targetGizmoPairingID];
    v10 = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
    if (v9)
    {
      goto LABEL_5;
    }

    v11 = +[NRPairedDeviceRegistry sharedInstance];
    v12 = [v11 getActivePairedDevice];
    v9 = [v12 valueForProperty:NRDevicePropertyPairingID];

    if (v9)
    {
LABEL_5:
      v13 = +[IXFileManager defaultManager];
      v14 = [v13 diskUsageForURL:v7];

      v15 = +[ACXDeviceConnection sharedDeviceConnection];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100054E94;
      v20[3] = &unk_100102A60;
      v20[4] = self;
      v21 = v7;
      v22 = v10;
      [v15 installApplicationAtURL:v21 onDeviceWithPairingID:v9 installOptions:v6 size:v14 completion:v20];
    }

    else
    {
      v18 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1550();
      }

      v9 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_gizmoInstallForInstallOptions:appAssetAtPath:]", 3039, @"IXErrorDomain", 0x1FuLL, 0, 0, @"Canceling installation for %@ because IXGizmoInstallingAppInstallCoordinator failed to find gizmo pairing ID.", v19, self);
      [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v9 client:15];
      [v10 invalidate];
    }
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A15C4();
    }

    v10 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_gizmoInstallForInstallOptions:appAssetAtPath:]", 3053, @"IXErrorDomain", 0x1EuLL, 0, 0, @"Canceling installation for %@ because IXGizmoInstallingAppInstallCoordinator is not supported on this device.", v17, self);
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v10 client:15];
  }
}

- (void)_onQueue_doInstall
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSCoordinatedAppInstall *)self error];

  if (v4)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_doInstall]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring install request because coordinator canceled while waiting for assertion", buf, 0x16u);
    }
  }

  else
  {
    v6 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

    if (v6)
    {
      v7 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
      dispatch_source_cancel(v7);

      [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
    }

    v5 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_doAddReference:v5];
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v44 = sub_10004BA80;
        v45 = sub_10004BA90;
        v46 = 0;
        v11 = [v5 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000555E8;
        block[3] = &unk_100101268;
        v38 = buf;
        v5 = v5;
        v37 = v5;
        dispatch_sync(v11, block);

        v35 = 0;
        v12 = [(IXSCoordinatedAppInstall *)self _onQueue_fetchInstallOptionsWithError:&v35];
        v13 = v35;
        if (v12)
        {
          [v12 setUserInitiated:{-[IXSCoordinatedAppInstall importance](self, "importance") == 3}];
          [v12 setInstallTargetType:1];
          if (![(IXSCoordinatedAppInstall *)self appAssetPromiseSetterCanInstallLocalProvisionedContent])
          {
            [v12 setAllowLocalProvisioned:0];
          }

          v14 = [(IXSCoordinatedAppInstall *)self identity];
          v15 = [v14 bundleID];
          [v12 setBundleIdentifier:v15];

          v16 = [(IXSCoordinatedAppInstall *)self identity];
          v17 = [v16 personaUniqueString];
          [v12 setPersonaUniqueString:v17];

          if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
          {
            [v12 setPreservePlaceholderAsParallel:1];
          }

          [v12 setInstallIntent:{sub_1000535BC(-[IXSCoordinatedAppInstall effectiveIntent](self, "effectiveIntent"))}];
          v18 = [(IXSCoordinatedAppInstall *)self termAssertion];

          if (v18)
          {
            v19 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [(IXSCoordinatedAppInstall *)self identity];
              *v39 = 136315394;
              v40 = "[IXSCoordinatedAppInstall _onQueue_doInstall]";
              v41 = 2112;
              v42 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Acquired termination assertion for %@; proceeding with install.", v39, 0x16u);
            }
          }

          else
          {
            v19 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(IXSCoordinatedAppInstall *)self identity];
              *v39 = 136315394;
              v40 = "[IXSCoordinatedAppInstall _onQueue_doInstall]";
              v41 = 2112;
              v42 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: No termination assertion acquired for %@; proceeding with install.", v39, 0x16u);
            }
          }

          if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 7)
          {
            [(IXSCoordinatedAppInstall *)self setAppInstallState:6];
            [(IXSCoordinatedAppInstall *)self _onQueue_gizmoInstallForInstallOptions:v12 appAssetAtPath:*(*&buf[8] + 40)];
          }

          else
          {
            v22 = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
            if ([(IXSCoordinatedAppInstall *)self appInstallState]!= 1)
            {
              [(IXSCoordinatedAppInstall *)self setAppInstallState:6];
            }

            [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:v22];
            v23 = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
            if ([(IXSCoordinatedAppInstall *)self appInstallState]== 1)
            {
              [(IXSCoordinatedAppInstall *)self setAppInstallState:2];
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_100055740;
              v32[3] = &unk_100101880;
              v32[4] = self;
              v34 = buf;
              v33 = v12;
              [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Stage install update" onLaunchServicesQueue:v32];
            }

            else
            {
              v24 = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
              v25 = [v24 stagedIdentifier];

              v27[0] = _NSConcreteStackBlock;
              v27[1] = 3221225472;
              v27[2] = sub_100055A90;
              v27[3] = &unk_100102A88;
              v27[4] = self;
              v30 = buf;
              v28 = v12;
              v26 = v25;
              v29 = v26;
              v31 = v23;
              [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"App install" onLaunchServicesQueue:v27];
            }
          }
        }

        else
        {
          [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v13 client:15];
        }

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v8 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1638();
      }

      v10 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_doInstall]", 3081, @"IXErrorDomain", 1uLL, 0, 0, @"App asset was nil when we went to install it for %@", v9, self);
      [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v10 client:15];
    }
  }
}

- (void)_onQueue_acquireAssertionAndDoInstall
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSCoordinatedAppInstall *)self appInstallState];
  v5 = v4;
  if (v4 <= 5 && ((1 << v4) & 0x39) != 0)
  {
    v6 = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
    [v6 setInstallPhase:1];

    v7 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
        v22 = 2112;
        v23 = v10;
        v11 = "%s: Adding reference for %@; no termination assertion required";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 7)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
        v22 = 2112;
        v23 = v10;
        v11 = "%s: Gizmo app install - not acquiring termination assertion to install %@";
        goto LABEL_9;
      }

LABEL_10:

LABEL_11:
      [(IXSCoordinatedAppInstall *)self _onQueue_doInstall];
      return;
    }

    v12 = [(IXSCoordinatedAppInstall *)self state];
    v13 = sub_1000031B0(off_100121958);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v5 <= 2 && v12 == 18)
    {
      if (v14)
      {
        v15 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Staging background app update - not acquiring termination assertion to stage %@", buf, 0x16u);
      }

      goto LABEL_11;
    }

    if (v14)
    {
      v19 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Acquiring termination assertion to install %@", buf, 0x16u);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionForPlaceholder:0 forceAcquisition:0];
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1728();
    }

    v18 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]", 3239, @"IXErrorDomain", 1uLL, 0, 0, @"Expected to have not yet begun app install or waiting/pending assertion acquisition but state was %lu", v17, v5);
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v18 client:15];
  }
}

- (void)_onQueue_fireObserversForClient:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
  v7 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v8 = [(IXSCoordinatedAppInstall *)self completedRecordPromise];
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v111 = "[IXSCoordinatedAppInstall _onQueue_fireObserversForClient:]";
    v112 = 2112;
    v113 = self;
    v114 = 2112;
    v115 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Firing applicable observers for client %@", buf, 0x20u);
  }

  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_100056A38;
  v104[3] = &unk_100100ED8;
  v10 = v4;
  v105 = v10;
  v11 = v7;
  v106 = v11;
  sub_100071134(v6, v104);
  v12 = [(IXSCoordinatedAppInstall *)self error];

  if (!v12)
  {
    if ([(IXSCoordinatedAppInstall *)self isComplete])
    {
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_100056AB8;
      v97[3] = &unk_100101300;
      v13 = &v98;
      v98 = v10;
      v14 = &v99;
      v99 = v11;
      v100 = v8;
      sub_100071134(v6, v97);

      goto LABEL_6;
    }

    v16 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
    v17 = sub_100056AC8(v16);

    if (v17)
    {
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100056BCC;
      v94[3] = &unk_100100ED8;
      v95 = v10;
      v96 = v11;
      sub_100071134(v6, v94);
    }

    v18 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    v19 = sub_100056AC8(v18);

    if (v19)
    {
      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_100056BDC;
      v91[3] = &unk_100100ED8;
      v92 = v10;
      v93 = v11;
      sub_100071134(v6, v91);
    }

    if ([(IXSCoordinatedAppInstall *)self shouldBeginRestoringUserData])
    {
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_100056BEC;
      v88[3] = &unk_100100ED8;
      v89 = v10;
      v90 = v11;
      sub_100071134(v6, v88);
    }

    if ([(IXSCoordinatedAppInstall *)self shouldBeginPostProcessing])
    {
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_100056BF8;
      v84[3] = &unk_100101300;
      v85 = v10;
      v86 = v11;
      v87 = v8;
      sub_100071134(v6, v84);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v20 = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
    v21 = [v20 countByEnumeratingWithState:&v80 objects:v109 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v81;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v81 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if (sub_100056AC8(*(*(&v80 + 1) + 8 * i)))
          {
            v44 = 1;
            goto LABEL_27;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v80 objects:v109 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v44 = 0;
LABEL_27:

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v25 = [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
    v26 = [v25 countByEnumeratingWithState:&v76 objects:v108 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v77;
      while (2)
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v77 != v28)
          {
            objc_enumerationMutation(v25);
          }

          if (sub_100056AC8(*(*(&v76 + 1) + 8 * j)))
          {
            v30 = 1;
            goto LABEL_37;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v76 objects:v108 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0;
LABEL_37:

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v31 = [(IXSCoordinatedAppInstall *)self dataImportPromises];
    v32 = [v31 countByEnumeratingWithState:&v72 objects:v107 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      v35 = *v73;
      while (2)
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v73 != v35)
          {
            objc_enumerationMutation(v31);
          }

          if (sub_100056AC8(*(*(&v72 + 1) + 8 * k)))
          {
            v37 = 1;
            goto LABEL_47;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v72 objects:v107 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }

      v37 = 0;
LABEL_47:
      v30 = v34;
    }

    else
    {
      v37 = 0;
    }

    if (v44)
    {
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_100056C08;
      v69[3] = &unk_100100ED8;
      v70 = v10;
      v71 = v11;
      sub_100071134(v6, v69);
    }

    v38 = [(IXSCoordinatedAppInstall *)self userDataPromise];
    v39 = sub_100056AC8(v38);

    if (v39)
    {
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100056C18;
      v66[3] = &unk_100100ED8;
      v67 = v10;
      v68 = v11;
      sub_100071134(v6, v66);
    }

    v40 = [(IXSCoordinatedAppInstall *)self preparationPromise];
    v41 = sub_100056AC8(v40);

    if (v41)
    {
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100056C28;
      v63[3] = &unk_100100ED8;
      v64 = v10;
      v65 = v11;
      sub_100071134(v6, v63);
    }

    v42 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
    v43 = sub_100056AC8(v42);

    if (v43)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100056C38;
      v60[3] = &unk_100100ED8;
      v61 = v10;
      v62 = v11;
      sub_100071134(v6, v60);

      if (!v30)
      {
LABEL_57:
        if (!v37)
        {
LABEL_59:
          if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]== 7)
          {
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_100056C68;
            v51[3] = &unk_100100ED8;
            v52 = v10;
            v53 = v11;
            sub_100071134(v6, v51);
          }

          if ([(IXSCoordinatedAppInstall *)self isPaused])
          {
            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_100056C78;
            v48[3] = &unk_100100ED8;
            v13 = &v49;
            v49 = v10;
            v14 = &v50;
            v50 = v11;
            v15 = v48;
          }

          else
          {
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_100056C84;
            v45[3] = &unk_100100ED8;
            v13 = &v46;
            v46 = v10;
            v14 = &v47;
            v47 = v11;
            v15 = v45;
          }

          goto LABEL_5;
        }

LABEL_58:
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100056C58;
        v54[3] = &unk_100100ED8;
        v55 = v10;
        v56 = v11;
        sub_100071134(v6, v54);

        goto LABEL_59;
      }
    }

    else if (!v30)
    {
      goto LABEL_57;
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100056C48;
    v57[3] = &unk_100100ED8;
    v58 = v10;
    v59 = v11;
    sub_100071134(v6, v57);

    if (!v37)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_100056A44;
  v101[3] = &unk_100101300;
  v13 = &v102;
  v102 = v10;
  v14 = v103;
  v103[0] = v11;
  v103[1] = self;
  v15 = v101;
LABEL_5:
  sub_100071134(v6, v15);
LABEL_6:
}

- (MIStagedUpdateMetadata)stagedUpdateMetadata
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  stagedUpdateMetadata = self->_stagedUpdateMetadata;

  return stagedUpdateMetadata;
}

- (void)setStagedUpdateMetadata:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  stagedUpdateMetadata = self->_stagedUpdateMetadata;
  self->_stagedUpdateMetadata = v4;
}

- (id)trackingStagedUpdateIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100056E54;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)inPostProcessingPhase
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100056F7C;
  v5[3] = &unk_1001013C8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (unint64_t)stagedUpdateSizeOnDisk
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100057094;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (IXSPlaceholder)placeholderPromise
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000571CC;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setPlaceholderPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self state];
  v7 = [(IXSCoordinatedAppInstall *)self identity];
  v8 = [v7 bundleID];

  v9 = [v4 bundleID];
  v10 = [v4 uniqueIdentifier];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if ([v8 isEqualToString:v9])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_10004BA80;
    v41 = sub_10004BA90;
    v42 = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100057828;
    v31[3] = &unk_100102AB0;
    v34 = &v37;
    v31[4] = self;
    v11 = v4;
    v32 = v11;
    v35 = &v43;
    v36 = v6;
    v33 = v10;
    [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v31];
    v13 = *(v44 + 6);
    if (v13)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          block[5] = 0;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v24 = *(v44 + 6);
          v47 = 136315394;
          v48 = "[IXSCoordinatedAppInstall setPlaceholderPromise:]";
          v49 = 1024;
          v50 = v24;
          _os_log_send_and_compose_impl();
          v25 = _os_crash_msg();
          sub_1000A1814(v25);
        }

        v14 = sub_1000405FC("[IXSCoordinatedAppInstall setPlaceholderPromise:]", 3800, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Placeholder promise not needed because existing placeholder promise was already used.", v12, v26);
        sub_100057754(v11, v14, 15);
      }
    }

    else
    {
      v20 = v38[5];
      if (v20)
      {
        v21 = [v20 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000578D8;
        block[3] = &unk_1001014E8;
        block[4] = &v37;
        dispatch_sync(v21, block);
      }

      if (v11)
      {
        v22 = [v11 accessQueue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000578E8;
        v27[3] = &unk_100100ED8;
        v28 = v11;
        v29 = self;
        dispatch_sync(v22, v27);
      }

      v23 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[IXSCoordinatedAppInstall setPlaceholderPromise:]";
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: %@ : Placeholder Promise set: %@", buf, 0x20u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
      [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
    }

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 bundleID];
      sub_1000A17A8(v16, self, buf);
    }

    v17 = [v4 bundleID];
    v19 = sub_1000405FC("[IXSCoordinatedAppInstall setPlaceholderPromise:]", 3766, @"IXErrorDomain", 8uLL, 0, 0, @"Ignoring attempt to set a placeholder promise with bundle ID %@ on coordinator with different bundle ID %@", v18, v17);

    sub_100057754(v4, v19, 15);
  }

  _Block_object_dispose(&v43, 8);
}

- (IXSOwnedDataPromise)appAssetPromise
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000579F0;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_internal_setAppAssetPromise:(id)a3 performExternalActions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v9 = [(IXSCoordinatedAppInstall *)self state];
  v10 = [v6 uniqueIdentifier];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10004BA80;
  v40 = sub_10004BA90;
  v41 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100057F2C;
  v28[3] = &unk_100102AD8;
  v31 = &v36;
  v28[4] = self;
  v11 = v6;
  v29 = v11;
  v32 = &v42;
  v33 = v8;
  v35 = v4;
  v34 = v9;
  v12 = v10;
  v30 = v12;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v28];
  v14 = *(v43 + 6);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v20 = sub_1000405FC("[IXSCoordinatedAppInstall _internal_setAppAssetPromise:performExternalActions:]", 3892, @"IXErrorDomain", 0x1AuLL, 0, 0, @"App asset promise not needed because existing app asset promise was already used.", v13, v23);
      sub_100057754(v11, v20, 15);
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_22;
      }

      if (v8 >= 8)
      {
        v15 = [NSString stringWithFormat:@"Unknown intent value %lu", v8];
      }

      else
      {
        v15 = *(&off_100103100 + v8);
      }

      v20 = sub_1000405FC("[IXSCoordinatedAppInstall _internal_setAppAssetPromise:performExternalActions:]", 3899, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Ignoring attempt to set app asset promise on %@: %@ : %@", v13, v15);

      sub_100057754(v11, v20, 15);
    }
  }

  else if (v14)
  {
    if (v14 != 1)
    {
LABEL_22:
      block[5] = 0;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v21 = *(v43 + 6);
      v46 = 136315394;
      v47 = "[IXSCoordinatedAppInstall _internal_setAppAssetPromise:performExternalActions:]";
      v48 = 1024;
      v49 = v21;
      _os_log_send_and_compose_impl();
      v22 = _os_crash_msg();
      sub_1000A1814(v22);
    }
  }

  else
  {
    v16 = v37[5];
    if (v16)
    {
      v17 = [v16 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058008;
      block[3] = &unk_1001014E8;
      block[4] = &v36;
      dispatch_sync(v17, block);
    }

    if (v11)
    {
      v18 = [v11 accessQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100058018;
      v24[3] = &unk_100100ED8;
      v25 = v11;
      v26 = self;
      dispatch_sync(v18, v24);
    }

    if (v4)
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[IXSCoordinatedAppInstall _internal_setAppAssetPromise:performExternalActions:]";
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: %@ : App Asset Promise set: %@", buf, 0x20u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
      [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
}

- (void)_internal_setAppAssetPromise:(id)a3
{
  v5 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  [(IXSCoordinatedAppInstall *)self _internal_setAppAssetPromise:v5 performExternalActions:0];
}

- (void)setAppAssetPromise:(id)a3
{
  v5 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  [(IXSCoordinatedAppInstall *)self _internal_setAppAssetPromise:v5 performExternalActions:1];
}

- (unint64_t)appAssetPromiseDRI
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000581B4;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setAppAssetPromiseDRI:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100058324;
  v8[3] = &unk_100100DF8;
  v8[4] = self;
  v8[5] = a3;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v8];
  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = IXStringForClientID(a3);
    *buf = 136315650;
    v10 = "[IXSCoordinatedAppInstall setAppAssetPromiseDRI:]";
    v11 = 2112;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ : App Asset Promise DRI set: %@", buf, 0x20u);
  }

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (NSArray)initialODRAssetPromises
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100058430;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setInitialODRAssetPromises:(id)a3
{
  v4 = a3;
  v41 = self;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)v41 state];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v7 = sub_100058B68(v4);
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_10004BA80;
  v75 = sub_10004BA90;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_10004BA80;
  v69 = sub_10004BA90;
  v70 = 0;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100058CB0;
  v58[3] = &unk_100102B00;
  v61 = &v71;
  v62 = &v65;
  v58[4] = v41;
  v63 = &v77;
  v64 = v6;
  v39 = v4;
  v59 = v39;
  v42 = v7;
  v60 = v42;
  [(IXSCoordinatedAppInstall *)v41 _runWithExternalPropertyLock:v58];
  v9 = *(v78 + 6);
  if (v9)
  {
    if (v9 != 1)
    {
      v53 = 0;
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v36 = *(v78 + 6);
      v83 = 136315394;
      v84 = "[IXSCoordinatedAppInstall setInitialODRAssetPromises:]";
      v85 = 1024;
      v86 = v36;
      _os_log_send_and_compose_impl();
      v37 = _os_crash_msg();
      sub_1000A1814(v37);
    }

    v10 = sub_1000405FC("[IXSCoordinatedAppInstall setInitialODRAssetPromises:]", 4009, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Not processing attempt to set initial ODR asset promises because those that were set were already complete and this coordinator is past the point of waiting for them.", v8, v38);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = v39;
    v12 = [v11 countByEnumeratingWithState:&v54 objects:v91 count:16];
    if (v12)
    {
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v16 = v66[5];
          if (v16)
          {
            v17 = [*(*(&v54 + 1) + 8 * i) uniqueIdentifier];
            v18 = [v16 containsObject:v17];

            if (v18)
            {
              continue;
            }
          }

          sub_100057754(v15, v10, 15);
        }

        v12 = [v11 countByEnumeratingWithState:&v54 objects:v91 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v39;
    v19 = [obj countByEnumeratingWithState:&v49 objects:v82 count:16];
    if (v19)
    {
      v20 = *v50;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v49 + 1) + 8 * j);
          v23 = v66[5];
          if (v23)
          {
            v24 = [*(*(&v49 + 1) + 8 * j) uniqueIdentifier];
            v25 = [v23 containsObject:v24];

            if (v25)
            {
              continue;
            }
          }

          v26 = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100058D60;
          block[3] = &unk_100100ED8;
          block[4] = v22;
          block[5] = v41;
          dispatch_sync(v26, block);
        }

        v19 = [obj countByEnumeratingWithState:&v49 objects:v82 count:16];
      }

      while (v19);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = v72[5];
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v81 count:16];
    if (v28)
    {
      v29 = *v45;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v44 + 1) + 8 * k);
          v32 = [v31 uniqueIdentifier];
          v33 = [v42 containsObject:v32];

          if ((v33 & 1) == 0)
          {
            v34 = [v31 accessQueue];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100058D68;
            v43[3] = &unk_1001010A0;
            v43[4] = v31;
            dispatch_sync(v34, v43);
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v44 objects:v81 count:16];
      }

      while (v28);
    }

    v35 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[IXSCoordinatedAppInstall setInitialODRAssetPromises:]";
      *&buf[12] = 2112;
      *&buf[14] = v41;
      *&buf[22] = 2112;
      *&buf[24] = obj;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: %@ : Initial ODR Asset Promises set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)v41 _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)v41 _onQueue_checkState];
  }

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v77, 8);
}

- (IXSPromisedOutOfBandTransfer)userDataPromise
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100058E70;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setUserDataPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self state];
  v7 = [v4 uniqueIdentifier];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10004BA80;
  v34 = sub_10004BA90;
  v35 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000592E8;
  v24[3] = &unk_100102AB0;
  v27 = &v30;
  v24[4] = self;
  v8 = v4;
  v25 = v8;
  v28 = &v36;
  v29 = v6;
  v9 = v7;
  v26 = v9;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v24];
  v11 = *(v37 + 6);
  if (v11)
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        block[5] = 0;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v17 = *(v37 + 6);
        v40 = 136315394;
        v41 = "[IXSCoordinatedAppInstall setUserDataPromise:]";
        v42 = 1024;
        v43 = v17;
        _os_log_send_and_compose_impl();
        v18 = _os_crash_msg();
        sub_1000A1814(v18);
      }

      v12 = sub_1000405FC("[IXSCoordinatedAppInstall setUserDataPromise:]", 4099, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Not processing attempt to set user data promise because it was already complete and this coordinator is past the point of waiting for it.", v10, v19);
      sub_100057754(v8, v12, 15);
    }
  }

  else
  {
    v13 = v31[5];
    if (v13)
    {
      v14 = [v13 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059398;
      block[3] = &unk_1001014E8;
      block[4] = &v30;
      dispatch_sync(v14, block);
    }

    if (v8)
    {
      v15 = [v8 accessQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000593A8;
      v20[3] = &unk_100100ED8;
      v21 = v8;
      v22 = self;
      dispatch_sync(v15, v20);
    }

    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[IXSCoordinatedAppInstall setUserDataPromise:]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ : User Data Promise set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

- (IXSPromisedOutOfBandTransfer)deviceSecurityPromise
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000594B0;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDeviceSecurityPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self state];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10004BA80;
  v31 = sub_10004BA90;
  v32 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000598F8;
  v22[3] = &unk_100102B28;
  v24 = &v27;
  v22[4] = self;
  v7 = v4;
  v23 = v7;
  v25 = &v33;
  v26 = v6;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v22];
  v9 = *(v34 + 6);
  if (v9)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        block[5] = 0;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        v15 = *(v34 + 6);
        v37 = 136315394;
        v38 = "[IXSCoordinatedAppInstall setDeviceSecurityPromise:]";
        v39 = 1024;
        v40 = v15;
        _os_log_send_and_compose_impl();
        v16 = _os_crash_msg();
        sub_1000A1814(v16);
      }

      v10 = sub_1000405FC("[IXSCoordinatedAppInstall setDeviceSecurityPromise:]", 4177, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Not processing attempt to set device security promise because it was already complete and this coordinator is past the point of waiting for it.", v8, v17);
      sub_100057754(v7, v10, 15);
    }
  }

  else
  {
    v11 = v28[5];
    if (v11)
    {
      v12 = [v11 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000599B0;
      block[3] = &unk_1001014E8;
      block[4] = &v27;
      dispatch_sync(v12, block);
    }

    if (v7)
    {
      v13 = [v7 accessQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000599C0;
      v18[3] = &unk_100100ED8;
      v19 = v7;
      v20 = self;
      dispatch_sync(v13, v18);
    }

    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[IXSCoordinatedAppInstall setDeviceSecurityPromise:]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@ : Device Security Promise set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

- (IXSPromisedOutOfBandTransfer)preparationPromise
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10004BA80;
  v10 = sub_10004BA90;
  v11 = self->_preparationPromise;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100059ADC;
  v5[3] = &unk_100101268;
  v5[4] = self;
  v5[5] = &v6;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setPreparationPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10004BA80;
  v23 = sub_10004BA90;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100059E04;
  v15[3] = &unk_100101328;
  v17 = &v19;
  v15[4] = self;
  v6 = v4;
  v16 = v6;
  v18 = &v25;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v15];
  if ((v26[3] & 1) == 0)
  {
    v7 = v20[5];
    if (v7)
    {
      v8 = [v7 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059EA0;
      block[3] = &unk_1001014E8;
      block[4] = &v19;
      dispatch_sync(v8, block);
    }

    if (v6)
    {
      v9 = [v6 accessQueue];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100059EB0;
      v11[3] = &unk_100100ED8;
      v12 = v6;
      v13 = self;
      dispatch_sync(v9, v11);
    }

    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "[IXSCoordinatedAppInstall setPreparationPromise:]";
      v31 = 2112;
      v32 = self;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ : Preparation Promise set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

- (IXSOwnedDataPromise)installOptionsPromise
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100059FB8;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_internal_setInstallOptionsPromise:(id)a3 performExternalActions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v9 = [(IXSCoordinatedAppInstall *)self state];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10004BA80;
  v35 = sub_10004BA90;
  v36 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10005A490;
  v24[3] = &unk_100102B50;
  v26 = &v31;
  v24[4] = self;
  v10 = v6;
  v25 = v10;
  v27 = &v37;
  v28 = v8;
  v30 = v4;
  v29 = v9;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v24];
  v12 = *(v38 + 6);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = sub_1000405FC("[IXSCoordinatedAppInstall _internal_setInstallOptionsPromise:performExternalActions:]", 4316, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Not processing attempt to set install options because this coordinator is past the point of needing them: %@", v11, self);
      sub_100057754(v10, v13, 15);
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_19;
      }

      v13 = sub_1000405FC("[IXSCoordinatedAppInstall _internal_setInstallOptionsPromise:performExternalActions:]", 4323, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Ignoring attempt to set install options on restoring demoted coordinator: %@ : %@", v11, self);
      sub_100057754(v10, v13, 15);
    }
  }

  else if (v12)
  {
    if (v12 != 1)
    {
LABEL_19:
      block[5] = 0;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v18 = *(v38 + 6);
      v41 = 136315394;
      v42 = "[IXSCoordinatedAppInstall _internal_setInstallOptionsPromise:performExternalActions:]";
      v43 = 1024;
      v44 = v18;
      _os_log_send_and_compose_impl();
      v19 = _os_crash_msg();
      sub_1000A1814(v19);
    }
  }

  else
  {
    v14 = v32[5];
    if (v14)
    {
      v15 = [v14 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005A570;
      block[3] = &unk_1001014E8;
      block[4] = &v31;
      dispatch_sync(v15, block);
    }

    if (v10)
    {
      v16 = [v10 accessQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10005A580;
      v20[3] = &unk_100100ED8;
      v21 = v10;
      v22 = self;
      dispatch_sync(v16, v20);
    }

    if (v4)
    {
      v17 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[IXSCoordinatedAppInstall _internal_setInstallOptionsPromise:performExternalActions:]";
        *&buf[12] = 2112;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: %@ : install options set: %@", buf, 0x20u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
      [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)_internal_setInstallOptionsPromise:(id)a3
{
  v5 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  [(IXSCoordinatedAppInstall *)self _internal_setInstallOptionsPromise:v5 performExternalActions:0];
}

- (void)setInstallOptionsPromise:(id)a3
{
  v5 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  [(IXSCoordinatedAppInstall *)self _internal_setInstallOptionsPromise:v5 performExternalActions:1];
}

- (BOOL)needsPostProcessing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005A71C;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setNeedsPostProcessing:(BOOL)a3
{
  v3 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A8E4;
  v8[3] = &unk_100102B78;
  v9 = v3;
  v8[4] = self;
  v8[5] = &v10;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v8];
  if ((v11[3] & 1) == 0)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "[IXSCoordinatedAppInstall setNeedsPostProcessing:]";
      if (v3)
      {
        v7 = 89;
      }

      else
      {
        v7 = 78;
      }

      v16 = 2112;
      v17 = self;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ : needs post processing set to %c", buf, 0x1Cu);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  }

  _Block_object_dispose(&v10, 8);
}

- (BOOL)shouldBeginPostProcessing
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]);
  if (v4)
  {
    v4 = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
    if (v4)
    {
      LOBYTE(v4) = [(IXSCoordinatedAppInstall *)self appInstallState]== 7;
    }
  }

  return v4;
}

- (NSArray)essentialAssetPromises
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005AAA0;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setEssentialAssetPromises:(id)a3
{
  v4 = a3;
  v37 = self;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)v37 state];
  v7 = sub_100058B68(v4);
  v72 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_10004BA80;
  v71 = sub_10004BA90;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_10004BA80;
  v65 = sub_10004BA90;
  v66 = 0;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10005B0E8;
  v54[3] = &unk_100102B00;
  v57 = &v67;
  v58 = &v61;
  v54[4] = v37;
  v59 = &v73;
  v60 = v6;
  v35 = v4;
  v55 = v35;
  v8 = v7;
  v56 = v8;
  [(IXSCoordinatedAppInstall *)v37 _runWithExternalPropertyLock:v54];
  if (*(v74 + 24) == 1)
  {
    v10 = sub_1000405FC("[IXSCoordinatedAppInstall setEssentialAssetPromises:]", 4455, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Not processing attempt to set essential asset promises because those that were set were already complete and this coordinator is past the point of waiting for them.", v9, v34);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = v35;
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v85 count:16];
    if (v12)
    {
      v13 = *v51;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v50 + 1) + 8 * i);
          v16 = v62[5];
          if (v16)
          {
            v17 = [*(*(&v50 + 1) + 8 * i) uniqueIdentifier];
            v18 = [v16 containsObject:v17];

            if (v18)
            {
              continue;
            }
          }

          sub_100057754(v15, v10, 15);
        }

        v12 = [v11 countByEnumeratingWithState:&v50 objects:v85 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v35;
    v19 = [obj countByEnumeratingWithState:&v46 objects:v84 count:16];
    if (v19)
    {
      v20 = *v47;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          v23 = v62[5];
          if (v23)
          {
            v24 = [*(*(&v46 + 1) + 8 * j) uniqueIdentifier];
            v25 = [v23 containsObject:v24];

            if (v25)
            {
              continue;
            }
          }

          v26 = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005B198;
          block[3] = &unk_100100ED8;
          block[4] = v22;
          block[5] = v37;
          dispatch_sync(v26, block);
        }

        v19 = [obj countByEnumeratingWithState:&v46 objects:v84 count:16];
      }

      while (v19);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v68[5];
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v83 count:16];
    if (v28)
    {
      v29 = *v42;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v41 + 1) + 8 * k);
          v32 = [v31 accessQueue];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10005B1A0;
          v38[3] = &unk_100100ED8;
          v39 = v8;
          v40 = v31;
          dispatch_sync(v32, v38);
        }

        v28 = [v27 countByEnumeratingWithState:&v41 objects:v83 count:16];
      }

      while (v28);
    }

    v33 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v78 = "[IXSCoordinatedAppInstall setEssentialAssetPromises:]";
      v79 = 2112;
      v80 = v37;
      v81 = 2112;
      v82 = obj;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: %@ : Essential Asset Promises set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)v37 _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)v37 _onQueue_checkState];
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
}

- (NSArray)dataImportPromises
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005B314;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDataImportPromises:(id)a3
{
  v4 = a3;
  v37 = self;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)v37 state];
  v7 = sub_100058B68(v4);
  v68 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = sub_10004BA80;
  v67[4] = sub_10004BA90;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_10004BA80;
  v65 = sub_10004BA90;
  v66 = 0;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10005B95C;
  v54[3] = &unk_100102B00;
  v57 = v67;
  v58 = &v61;
  v54[4] = v37;
  v59 = &v69;
  v60 = v6;
  v35 = v4;
  v55 = v35;
  v8 = v7;
  v56 = v8;
  [(IXSCoordinatedAppInstall *)v37 _runWithExternalPropertyLock:v54];
  if (*(v70 + 24) == 1)
  {
    v10 = sub_1000405FC("[IXSCoordinatedAppInstall setDataImportPromises:]", 4527, @"IXErrorDomain", 0x1AuLL, 0, 0, @"Not processing attempt to set data import promises because those that were set were already complete and this coordinator is past the point of waiting for them.", v9, v34);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = v35;
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v81 count:16];
    if (v12)
    {
      v13 = *v51;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v51 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v50 + 1) + 8 * i);
          v16 = v62[5];
          if (v16)
          {
            v17 = [*(*(&v50 + 1) + 8 * i) uniqueIdentifier];
            v18 = [v16 containsObject:v17];

            if (v18)
            {
              continue;
            }
          }

          sub_100057754(v15, v10, 15);
        }

        v12 = [v11 countByEnumeratingWithState:&v50 objects:v81 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v35;
    v19 = [obj countByEnumeratingWithState:&v46 objects:v80 count:16];
    if (v19)
    {
      v20 = *v47;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          v23 = v62[5];
          if (v23)
          {
            v24 = [*(*(&v46 + 1) + 8 * j) uniqueIdentifier];
            v25 = [v23 containsObject:v24];

            if (v25)
            {
              continue;
            }
          }

          v26 = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005BA0C;
          block[3] = &unk_100100ED8;
          block[4] = v22;
          block[5] = v37;
          dispatch_sync(v26, block);
        }

        v19 = [obj countByEnumeratingWithState:&v46 objects:v80 count:16];
      }

      while (v19);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v37->_dataImportPromises;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v41 objects:v79 count:16];
    if (v28)
    {
      v29 = *v42;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v41 + 1) + 8 * k);
          v32 = [v31 accessQueue];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10005BA14;
          v38[3] = &unk_100100ED8;
          v39 = v8;
          v40 = v31;
          dispatch_sync(v32, v38);
        }

        v28 = [(NSArray *)v27 countByEnumeratingWithState:&v41 objects:v79 count:16];
      }

      while (v28);
    }

    v33 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v74 = "[IXSCoordinatedAppInstall setDataImportPromises:]";
      v75 = 2112;
      v76 = v37;
      v77 = 2112;
      v78 = obj;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: %@ : Data Import Promises set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)v37 _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)v37 _onQueue_checkState];
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v67, 8);

  _Block_object_dispose(&v69, 8);
}

- (NSUUID)targetGizmoPairingID
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  targetGizmoPairingID = self->_targetGizmoPairingID;

  return targetGizmoPairingID;
}

- (void)setTargetGizmoPairingID:(id)a3
{
  v5 = a3;
  v6 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v6);

  if (([(NSUUID *)self->_targetGizmoPairingID isEqual:v5]& 1) == 0)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSCoordinatedAppInstall setTargetGizmoPairingID:]";
      v10 = 2112;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ : target gizmo pairing ID set: %@", &v8, 0x20u);
    }

    objc_storeStrong(&self->_targetGizmoPairingID, a3);
  }
}

- (BOOL)isPaused
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_isPaused;
}

- (void)setIsPaused:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  if (self->_isPaused != v4)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "[IXSCoordinatedAppInstall setIsPaused:completion:]";
      if (v4)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      v20 = 2112;
      v21 = self;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@: setting isPaused to %c", buf, 0x1Cu);
    }

    self->_isPaused = v4;
    if (v4)
    {
      [(IXSCoordinatedAppInstall *)self _onQueue_pauseProgress];
    }

    else
    {
      [(IXSCoordinatedAppInstall *)self _onQueue_resumeProgress];
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    v12 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005BECC;
    v13[3] = &unk_100102BA0;
    v15 = v4;
    v13[4] = self;
    v14 = v6;
    sub_100071134(v12, v13);

    v9 = v14;
    goto LABEL_13;
  }

  if (v6)
  {
    v8 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005BEB8;
    v16[3] = &unk_1001013A0;
    v17 = v6;
    sub_100071134(v8, v16);

    v9 = v17;
LABEL_13:
  }
}

- (void)externalSetIsPaused:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C018;
  block[3] = &unk_100102BA0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (BOOL)externalGetIsPaused
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C100;
  v5[3] = &unk_100101268;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setImportance:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005C470;
    v13[3] = &unk_100102BC8;
    v13[4] = self;
    v13[5] = &v14;
    v13[6] = &v18;
    v13[7] = a3;
    [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v13];
    if ((v19[3] & 1) == 0)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = IXStringForCoordinatorImportance(a3);
        *buf = 136315650;
        v23 = "[IXSCoordinatedAppInstall setImportance:]";
        v24 = 2112;
        v25 = self;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: set importance to %@", buf, 0x20u);
      }

      v8 = !+[IXFeatureFlags scheduledUpdatesEnabled];
      if (a3 == 4)
      {
        LOBYTE(v8) = 1;
      }

      if ((v8 & 1) == 0 && [(IXSCoordinatedAppInstall *)self updateScheduleState]== 1)
      {
        v9 = +[IXSAppUpdateScheduler sharedInstance];
        v10 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
        [v9 removeUpdateRequestForCoordinatorUUID:v10];

        [(IXSCoordinatedAppInstall *)self setUpdateScheduleState:0];
      }

      if (a3 != 1 && a3 != 4)
      {
        v11 = v15[3];
        if (v11 <= 4 && ((1 << v11) & 0x13) != 0 && [(IXSCoordinatedAppInstall *)self effectiveIntent]== 2 && [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 9)
        {
          v12 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v23 = "[IXSCoordinatedAppInstall setImportance:]";
            v24 = 2112;
            v25 = self;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Converting coordinator to user-initiated: %@", buf, 0x16u);
          }

          [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:0];
        }
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
      [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }
}

- (unint64_t)importance
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C574;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)newRemovability
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_newRemovability;
}

- (void)setNewRemovability:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  self->_newRemovability = a3;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (unint64_t)newRemovabilityClient
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_newRemovabilityClient;
}

- (void)setNewRemovabilityClient:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  self->_newRemovabilityClient = a3;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (unint64_t)savedRemovability
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_savedRemovability;
}

- (void)setSavedRemovability:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  self->_savedRemovability = a3;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (unint64_t)savedRemovabilityClient
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_savedRemovabilityClient;
}

- (void)setSavedRemovabilityClient:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  self->_savedRemovabilityClient = a3;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (void)setNewRemovabilityState:(unint64_t)a3 removabilityClient:(unint64_t)a4
{
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  if (*&self->_newRemovability != __PAIR128__(a4, a3))
  {
    self->_newRemovability = a3;
    self->_newRemovabilityClient = a4;

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  }
}

- (void)setPriorityBoostCompletion:(id)a3 withSourceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  priorityBoostCompletion = self->_priorityBoostCompletion;
  if (priorityBoostCompletion != v6)
  {
    v10 = objc_retainBlock(priorityBoostCompletion);
    if (v10)
    {
      v11 = self->_priorityBoostSourceInfo;
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "[IXSCoordinatedAppInstall setPriorityBoostCompletion:withSourceInfo:]";
        v21 = 2112;
        v22 = self;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@: Disposing of %@", buf, 0x20u);
      }

      v13 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10005CA98;
      v17[3] = &unk_1001013A0;
      v18 = v10;
      sub_100071134(v13, v17);
    }

    if (v6)
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "[IXSCoordinatedAppInstall setPriorityBoostCompletion:withSourceInfo:]";
        v21 = 2112;
        v22 = self;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@: Retaining %@", buf, 0x20u);
      }
    }

    v15 = objc_retainBlock(v6);
    v16 = self->_priorityBoostCompletion;
    self->_priorityBoostCompletion = v15;

    objc_storeStrong(&self->_priorityBoostSourceInfo, a4);
  }
}

- (id)priorityBoostCompletion
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_retainBlock(self->_priorityBoostCompletion);

  return v4;
}

- (NSString)priorityBoostSourceInfo
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  priorityBoostSourceInfo = self->_priorityBoostSourceInfo;

  return priorityBoostSourceInfo;
}

- (BOOL)shouldBeginRestoringUserData
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]!= 7)
  {
    return 0;
  }

  v4 = [(IXSCoordinatedAppInstall *)self userDataPromise];
  if (v4)
  {
    v5 = v4;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v6 = [v4 accessQueue];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10006E704;
    v15 = &unk_100101268;
    v16 = v5;
    v17 = &v18;
    v7 = v5;
    dispatch_sync(v6, &v12);

    LOBYTE(v6) = *(v19 + 24);
    _Block_object_dispose(&v18, 8);

    if (v6)
    {
      return 0;
    }
  }

  v8 = [(IXSCoordinatedAppInstall *)self effectiveIntent:v12];
  if (v8 == 4)
  {
    return 1;
  }

  if (v8 != 3)
  {
    return 0;
  }

  v9 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
  v10 = sub_100056AC8(v9);

  return v10;
}

- (void)prioritizeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CD6C;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onQueue_prioritizeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSCoordinatedAppInstall *)self state];
  if (v6 != 32 && v6 != 1)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IXSCoordinatedAppInstall _onQueue_prioritizeWithCompletion:]";
      v18 = 2112;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: prioritizing", buf, 0x16u);
    }

    [(IXSCoordinatedAppInstall *)self setIsPaused:0];
    [(IXSCoordinatedAppInstall *)self setImportance:3];
    if ([(IXSCoordinatedAppInstall *)self appInstallState]== 5 || [(IXSCoordinatedAppInstall *)self appInstallState]== 4)
    {
      [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
      [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionAndDoInstall];
    }

    else if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]== 5 || [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 4)
    {
      [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
      [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionAndInstallPlaceholder];
    }

    v10 = +[IXSCoordinatorManager sharedInstance];
    [v10 prioritizeCoordinator:self];

    v11 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005D028;
    v12[3] = &unk_100101B08;
    v12[4] = self;
    v13 = v4;
    sub_100071134(v11, v12);

    v8 = v13;
    goto LABEL_11;
  }

  if (v4)
  {
    v7 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005D014;
    v14[3] = &unk_1001013A0;
    v15 = v4;
    sub_100071134(v7, v14);

    v8 = v15;
LABEL_11:
  }
}

- (void)_onQueue_unregister
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if ([(IXSCoordinatedAppInstall *)self isTracked])
  {
    v4 = +[IXSCoordinatorManager sharedInstance];
    [v4 unregisterCoordinator:self];
  }
}

- (BOOL)isComplete
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_complete;
}

- (void)setComplete:(BOOL)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  if (!self->_complete)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall setComplete:]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ complete!", buf, 0x16u);
    }

    if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v67 = sub_10004BA80;
      v68 = sub_10004BA90;
      v69 = 0;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10005D89C;
      v58[3] = &unk_1001013C8;
      v58[4] = self;
      v58[5] = buf;
      [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Parallel placeholder cleanup after post processing" onUninstallQueue:v58];
      v7 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(IXSCoordinatedAppInstall *)self identity];
        *v62 = 136315394;
        v63 = "[IXSCoordinatedAppInstall setComplete:]";
        v64 = 2112;
        v65 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: Waiting for pending parallel placeholder uninstall to complete", v62, 0x16u);
      }

      v9 = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(IXSCoordinatedAppInstall *)self identity];
        *v62 = 136315394;
        v63 = "[IXSCoordinatedAppInstall setComplete:]";
        v64 = 2112;
        v65 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@: Pending parallel placeholder uninstall completed on group", v62, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self setCompletedRecordPromise:*(*&buf[8] + 40)];
      _Block_object_dispose(buf, 8);
    }

    [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
    v12 = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];
    [v12 invalidate];

    [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:0];
    v13 = [(IXSCoordinatedAppInstall *)self cacheDeleteCallback];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13);
    }

    [(IXSCoordinatedAppInstall *)self setStagedUpdateMetadata:0];
    [(IXSCoordinatedAppInstall *)self setCacheDeleteCallback:0];
    self->_complete = a3;
    v15 = [(IXSCoordinatedAppInstall *)self error];
    v16 = v15 == 0;

    v17 = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
    v18 = v17;
    if (v16)
    {
      [v17 finishProgressWithState:5];

      v19 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      sub_10005DAE8(v19);

      v20 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
      sub_10005DAE8(v20);

      v21 = [(IXSCoordinatedAppInstall *)self userDataPromise];
      sub_10005DAE8(v21);

      v22 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
      sub_10005DAE8(v22);

      v23 = [(IXSCoordinatedAppInstall *)self preparationPromise];
      sub_10005DAE8(v23);

      v24 = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
      sub_10005DAE8(v24);

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v25 = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
      v26 = [v25 countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v26)
      {
        v27 = *v55;
        do
        {
          v28 = 0;
          do
          {
            if (*v55 != v27)
            {
              objc_enumerationMutation(v25);
            }

            sub_10005DAE8(*(*(&v54 + 1) + 8 * v28));
            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [v25 countByEnumeratingWithState:&v54 objects:v61 count:16];
        }

        while (v26);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
      v30 = [v29 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v30)
      {
        v31 = *v51;
        do
        {
          v32 = 0;
          do
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v29);
            }

            sub_10005DAE8(*(*(&v50 + 1) + 8 * v32));
            v32 = v32 + 1;
          }

          while (v30 != v32);
          v30 = [v29 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v30);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v33 = [(IXSCoordinatedAppInstall *)self dataImportPromises];
      v34 = [v33 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v34)
      {
        v35 = *v47;
        do
        {
          v36 = 0;
          do
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v33);
            }

            sub_10005DAE8(*(*(&v46 + 1) + 8 * v36));
            v36 = v36 + 1;
          }

          while (v34 != v36);
          v34 = [v33 countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v34);
      }

      v37 = [(IXSCoordinatedAppInstall *)self seed];
      v38 = [v37 intent] - 1;
      if (v38 > 6)
      {
        v39 = 18;
      }

      else
      {
        v39 = qword_1000BAD08[v38];
      }

      v40 = [(IXSCoordinatedAppInstall *)self identity];
      v41 = [v40 bundleID];
      [AITransactionLog logStep:v39 byParty:4 phase:2 success:1 forBundleID:v41 description:@"Coordinator completed successfully."];

      [(IXSCoordinatedAppInstall *)self _onQueue_unregister];
      v42 = [(IXSCoordinatedAppInstall *)self completedRecordPromise];
      v43 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10005DB90;
      v44[3] = &unk_100100ED8;
      v44[4] = self;
      v45 = v42;
      v18 = v42;
      sub_100071134(v43, v44);
    }

    else
    {
      [v17 finishProgressWithState:4];
    }

    [(IXSCoordinatedAppInstall *)self setPriorityBoostCompletion:0 withSourceInfo:0];
    [(IXSCoordinatedAppInstall *)self setCompletedRecordPromise:0];
  }
}

- (BOOL)_placeholderOrParallelPlaceholderIsInstalledWithRecord:(id *)a3
{
  v5 = [LSApplicationRecord alloc];
  v6 = [(IXSCoordinatedAppInstall *)self identity];
  v7 = [v6 bundleID];
  v14 = 0;
  v8 = [v5 initForInstallMachineryWithBundleIdentifier:v7 placeholder:1 error:&v14];
  v9 = v14;

  if (v8)
  {
    if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }

    v11 = [v8 isPlaceholder];
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1894();
    }

    v11 = 0;
  }

  return v11;
}

- (void)_asyncUpdatePlaceholderMetadataWithInstallType:(unint64_t)a3 reason:(int64_t)a4 underlyingError:(id)a5 client:(unint64_t)a6
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005DDAC;
  v8[3] = &unk_100102BF0;
  v11 = a3;
  v12 = a4;
  v9 = self;
  v10 = a5;
  v13 = a6;
  v7 = v10;
  [(IXSCoordinatedAppInstall *)v9 _runAsyncBlockWithDescription:@"placeholder metadata update" onLaunchServicesQueue:v8];
}

- (void)_onQueue_updatePlaceholderForFailureReason:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5
{
  v8 = a3;
  v9 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v9);

  v10 = v8;
  v11 = [v10 domain];
  v12 = [v11 isEqualToString:@"IXUserPresentableErrorDomain"];

  if (v12)
  {
    v13 = [v10 code];
    v14 = [v10 userInfo];
    v15 = [v14 objectForKeyedSubscript:NSUnderlyingErrorKey];
  }

  else
  {
    v13 = 1;
    v15 = v10;
  }

  v16 = [(IXSCoordinatedAppInstall *)self placeholderInstallState];
  if (v16 - 1 < 3)
  {
    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[IXSCoordinatedAppInstall _onQueue_updatePlaceholderForFailureReason:client:installType:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Unexpectedly found placeholder in staging state", &v23, 0xCu);
    }
  }

  else if (v16 - 4 >= 2)
  {
    if (v16 == 6 || [(IXSCoordinatedAppInstall *)self placeholderIsInstalled])
    {
      [(IXSCoordinatedAppInstall *)self _asyncUpdatePlaceholderMetadataWithInstallType:a5 reason:v13 underlyingError:v15 client:a4];
    }
  }

  else
  {
    v17 = objc_opt_new();
    [(IXSCoordinatedAppInstall *)self setPlaceholderFailureInfo:v17];

    v18 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [v18 setInstallType:a5];

    v19 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [v19 setReason:v13];

    v20 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [v20 setUnderlyingError:v15];

    v21 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [v21 setClient:a4];
  }
}

- (void)setCompletedRecordPromise:(id)a3
{
  v8 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  completedRecordPromise = self->_completedRecordPromise;
  p_completedRecordPromise = &self->_completedRecordPromise;
  if (completedRecordPromise != v8)
  {
    objc_storeStrong(p_completedRecordPromise, a3);
  }
}

- (LSRecordPromise)completedRecordPromise
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  completedRecordPromise = self->_completedRecordPromise;

  return completedRecordPromise;
}

- (BOOL)_shouldRemovePlaceholderForReason:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(v3, "code") == 3)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 domain];
    if ([v6 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(v3, "code") == 5)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 domain];
      if ([v7 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(v3, "code") == 6)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 domain];
        if ([v8 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(v3, "code") == 13)
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 domain];
          if ([v9 isEqualToString:@"IXUserPresentableErrorDomain"])
          {
            v5 = [v3 code] == 15;
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }
  }

  return v5;
}

- (void)_onQueue_handleAppAssetPromiseCancellationWhenRestoringWithReason:(id)a3 client:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  if ([(IXSCoordinatedAppInstall *)self _shouldRemovePlaceholderForReason:v6])
  {
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v6 client:a4];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[IXSCoordinatedAppInstall _onQueue_handleAppAssetPromiseCancellationWhenRestoringWithReason:client:]";
      v14 = 2112;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@: Converting restoring to restoring demoted after app asset promise cancelation", buf, 0x16u);
    }

    [(IXSCoordinatedAppInstall *)self setEffectiveIntent:4];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005E5A4;
    v11[3] = &unk_100100DF8;
    v11[4] = self;
    v11[5] = [(IXSCoordinatedAppInstall *)self creator];
    [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v11];
    [(IXSCoordinatedAppInstall *)self _internal_setAppAssetPromise:0];
    [(IXSCoordinatedAppInstall *)self _internal_setInstallOptionsPromise:0];
    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
    if (![(IXSCoordinatedAppInstall *)self sentBeginRestoringUserData]&& [(IXSCoordinatedAppInstall *)self shouldBeginRestoringUserData])
    {
      [(IXSCoordinatedAppInstall *)self setSentBeginRestoringUserData:1];
      v9 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10005E5B0;
      v10[3] = &unk_1001010A0;
      v10[4] = self;
      sub_100071134(v9, v10);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_updatePlaceholderForFailureReason:v6 client:a4 installType:7];
  }
}

- (void)_onQueue_removeParallelPlaceholder:(BOOL *)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  if (([(IXSCoordinatedAppInstall *)self placeholderInstallState]& 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v6 = [(IXSCoordinatedAppInstall *)self identity];
    v7 = IXStringForClientID([(IXSCoordinatedAppInstall *)self creator]);
    v8 = [NSString stringWithFormat:@"Cleaning up parallel placeholder for %@ after failure (coordinator creator: %@)", v6, v7];

    if (a3)
    {
      *a3 = 1;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005E738;
    v10[3] = &unk_100100ED8;
    v10[4] = self;
    v11 = v8;
    v9 = v8;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Parallel placeholder cleanup after failure" onUninstallQueue:v10];
  }
}

- (BOOL)_onQueue_shouldDeletePlaceholderOnCancelationForReason:(id)a3 client:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(IXSCoordinatedAppInstall *)self placeholderDisposition];
  if (v8 == 3)
  {
    v9 = 0;
  }

  else if (v8 == 2 || a4 == 8 || [(IXSCoordinatedAppInstall *)self _shouldRemovePlaceholderForReason:v6])
  {
    v9 = 1;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 1)
    {
      v11 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 accessQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10005EA2C;
        v14[3] = &unk_1001013C8;
        v15 = v12;
        v16 = &v17;
        dispatch_sync(v13, v14);
      }
    }

    v9 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  return v9 & 1;
}

- (void)_onQueue_cancelPlaceholderIfNeededForReason:(id)a3 client:(unint64_t)a4 needsLSDatabaseSync:(BOOL *)a5
{
  v8 = a3;
  v9 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v11 = v10;
  if (v10 <= 3)
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_removeParallelPlaceholder:a5];
        goto LABEL_23;
      }

      if (v10 != 3)
      {
LABEL_11:
        v24 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if (v11 < 8 && ((0xE3u >> v11) & 1) != 0)
          {
            v25 = *(&off_100102E98 + v11);
          }

          else
          {
            v25 = [NSString stringWithFormat:@"Unknown intent value %lu", v11];
          }

          *buf = 136315394;
          v34 = "[IXSCoordinatedAppInstall _onQueue_cancelPlaceholderIfNeededForReason:client:needsLSDatabaseSync:]";
          v35 = 2112;
          v36 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Unexpected intent: %@", buf, 0x16u);
        }

        goto LABEL_23;
      }
    }

    v16 = [(IXSCoordinatedAppInstall *)self placeholderDisposition];
    v17 = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
    v18 = [(IXSCoordinatedAppInstall *)self appInstallState];
    if (![(IXSCoordinatedAppInstall *)self _onQueue_shouldDeletePlaceholderOnCancelationForReason:v8 client:a4])
    {
      if (v18 == 7)
      {
        v26 = v17;
      }

      else
      {
        v26 = 0;
      }

      if (v11 == 1 || v26)
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_removeParallelPlaceholder:a5];
      }

      v13 = self;
      v14 = v8;
      v15 = a4;
      v12 = 7;
      goto LABEL_22;
    }

    v29 = v17;
    v19 = [(IXSCoordinatedAppInstall *)self identity];
    v20 = [v19 bundleID];
    v21 = IXStringForClientID(a4);
    v22 = v21;
    if (v16 == 1)
    {
      v23 = [NSString stringWithFormat:@"Cleaning up placeholder for %@ after cancelation with reason %@ client %@", v20, v8, v21];
    }

    else
    {
      v27 = IXStringForPlaceholderDisposition(v16);
      v23 = [NSString stringWithFormat:@"Cleaning up placeholder for %@ after cancelation with reason %@ client %@ placeholder disposition %@", v20, v8, v22, v27];
    }

    if (a5)
    {
      *a5 = 1;
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10005EE0C;
    v30[3] = &unk_100102920;
    v32 = v11 != 1 || (v29 & 1) == 0 || v18 != 7;
    v30[4] = self;
    v31 = v23;
    v28 = v23;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"placeholder cleanup after cancel" onUninstallQueue:v30];
  }

  else
  {
    if ((v10 - 4) < 3)
    {
      v12 = [(IXSCoordinatedAppInstall *)self originalInstallType];
      v13 = self;
      v14 = v8;
      v15 = a4;
LABEL_22:
      [(IXSCoordinatedAppInstall *)v13 _onQueue_updatePlaceholderForFailureReason:v14 client:v15 installType:v12];
      goto LABEL_23;
    }

    if (v10 != 7)
    {
      goto LABEL_11;
    }
  }

LABEL_23:
}

- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 needsLSDatabaseSync:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(v11);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v12 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005F0D4;
  v15[3] = &unk_100102C18;
  v15[4] = self;
  v16 = v10;
  v17 = &v21;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v13 = v10;
  dispatch_sync(v12, v15);

  LOBYTE(a5) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  return a5;
}

- (id)_onQueue_localizedAppName
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSCoordinatedAppInstall *)self identity];
  v5 = [v4 bundleID];

  v11 = 0;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:1 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [v6 localizedName];
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[IXSCoordinatedAppInstall _onQueue_localizedAppName]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app record for bundleID %@ due to %@", buf, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_onQueue_cancelStagedUpdate
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stagedIdentifier];
    [(IXSCoordinatedAppInstall *)self setStagedUpdateMetadata:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005F37C;
    v8[3] = &unk_1001010A0;
    v9 = v6;
    v7 = v6;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Canceling staged update" onLaunchServicesQueue:v8];
  }
}

- (BOOL)_onQueue_internal_cancelForReason:(id)a3 client:(unint64_t)a4 needsLSDatabaseSync:(BOOL *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(IXSCoordinatedAppInstall *)self savedRemovability];
  v13 = [(IXSCoordinatedAppInstall *)self seed];
  v14 = [v13 intent];

  v98 = 0;
  if (v10)
  {
    v15 = [(IXSCoordinatedAppInstall *)self error];

    if (v15)
    {
      v16 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        v103 = v10;
        v104 = 2112;
        v105 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Ignoring cancel request with reason %@ for coordinator that was already canceled: %@", buf, 0x20u);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v10;
    }

    else
    {
      v26 = sub_10000A95C(v10);
      v27 = v26;
      v28 = v10;
      if (v26)
      {
        v28 = v26;
      }

      v83 = v27;
      v29 = sub_1000031B0(off_100121958);
      v84 = a5;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = IXStringForClientID(a4);
        *buf = 136315906;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        v103 = self;
        v104 = 2112;
        v105 = v30;
        v106 = 2112;
        v107 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: %@ : canceled by client %@ for reason %@", buf, 0x2Au);
      }

      if (v12)
      {
        v31 = +[IXSAppRemovabilityManager sharedInstance];
        v32 = [(IXSCoordinatedAppInstall *)self identity];
        v97 = 0;
        v33 = [v31 setRemovability:v12 forAppWithIdentity:v32 byClient:-[IXSCoordinatedAppInstall savedRemovabilityClient](self error:{"savedRemovabilityClient"), &v97}];
        v34 = v97;

        if ((v33 & 1) == 0)
        {
          v35 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [(IXSCoordinatedAppInstall *)self identity];
            v37 = [v36 bundleID];
            v38 = IXStringForAppRemovability(v12);
            *buf = 136315906;
            v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
            v102 = 2112;
            v103 = v37;
            v104 = 2112;
            v105 = v38;
            v106 = 2112;
            v107 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: Failed to restore removability for %@ to %@ with error: %@", buf, 0x2Au);
          }
        }
      }

      v85 = [(IXSCoordinatedAppInstall *)self _onQueue_localizedAppName];
      v39 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

      if (v39)
      {
        v40 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
        dispatch_source_cancel(v40);

        [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_cancelProgress];
      [(IXSCoordinatedAppInstall *)self _onQueue_cancelPlaceholderIfNeededForReason:v28 client:a4 needsLSDatabaseSync:&v98];
      [(IXSCoordinatedAppInstall *)self _onQueue_cancelStagedUpdate];
      v41 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        v103 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: %@: Waiting for pending installs to complete", buf, 0x16u);
      }

      v43 = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
      dispatch_group_wait(v43, 0xFFFFFFFFFFFFFFFFLL);

      v44 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        v103 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s: %@: Pending installs completed on group", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self setError:v28];
      [(IXSCoordinatedAppInstall *)self setErrorSourceIdentifier:a4];
      [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:8];
      [(IXSCoordinatedAppInstall *)self setAppInstallState:8];
      [(IXSCoordinatedAppInstall *)self setPostProcessingAssertionState:8];
      [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:0];
      [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
      v46 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      sub_100057754(v46, v28, a4);

      v47 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
      sub_100057754(v47, v28, a4);

      v48 = [(IXSCoordinatedAppInstall *)self userDataPromise];
      sub_100057754(v48, v28, a4);

      v49 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
      sub_100057754(v49, v28, a4);

      v50 = [(IXSCoordinatedAppInstall *)self preparationPromise];
      sub_100057754(v50, v28, a4);

      v51 = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
      sub_100057754(v51, v28, a4);

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v52 = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
      v53 = [v52 countByEnumeratingWithState:&v93 objects:v99 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v94;
        do
        {
          for (i = 0; i != v54; i = i + 1)
          {
            if (*v94 != v55)
            {
              objc_enumerationMutation(v52);
            }

            sub_100057754(*(*(&v93 + 1) + 8 * i), v28, a4);
          }

          v54 = [v52 countByEnumeratingWithState:&v93 objects:v99 count:16];
        }

        while (v54);
      }

      if (v14 >= 8)
      {
        v57 = [NSString stringWithFormat:@"Unknown intent value %lu", v14];
      }

      else
      {
        v57 = *(&off_100103100 + v14);
      }

      v58 = IXStringForClientID(a4);
      v86 = [NSString stringWithFormat:@"Canceled coordinator with intent %@ by client %@ for reason %@", v57, v58, v28];

      if ((v14 - 1) > 6)
      {
        v59 = 18;
      }

      else
      {
        v59 = qword_1000BAD08[(v14 - 1)];
      }

      v60 = [(IXSCoordinatedAppInstall *)self identity];
      v61 = [v60 bundleID];
      [AITransactionLog logStep:v59 byParty:4 phase:2 success:0 forBundleID:v61 description:v86];

      [(IXSCoordinatedAppInstall *)self _onQueue_unregister];
      v62 = [(IXSCoordinatedAppInstall *)v28 domain];
      v63 = [v62 isEqualToString:@"IXUserPresentableErrorDomain"];

      if (v63)
      {
        v64 = +[IXSErrorPresenter sharedPresenter];
        v65 = v85;
        if (!v85)
        {
          v82 = [(IXSCoordinatedAppInstall *)self identity];
          v65 = [v82 bundleID];
        }

        v91 = 0;
        v92 = 0;
        v66 = [v64 localizedErrorForAppName:v65 unlocalizedError:v28 localizedError:&v92 withError:&v91];
        v21 = v92;
        v22 = v91;
        if (!v85)
        {
        }

        if (v66)
        {
          v21 = v21;
          v67 = v28;
          v28 = v21;
          v19 = v86;
        }

        else
        {
          v68 = sub_1000031B0(off_100121958);
          v19 = v86;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
            v102 = 2112;
            v103 = v22;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%s: Failed to create a localized cancel reason, proceeding with calling out to delegates with the un-localized reason : %@", buf, 0x16u);
          }

          v67 = v22;
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
        v21 = 0;
        v19 = v86;
      }

      v69 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_10005FFA4;
      v88[3] = &unk_1001018D0;
      v88[4] = self;
      v23 = v28;
      v89 = v23;
      v90 = a4;
      sub_100071134(v69, v88);

      [(IXSCoordinatedAppInstall *)self setComplete:1];
      v70 = [(IXSCoordinatedAppInstall *)v23 domain];
      v71 = [v70 isEqualToString:@"IXUserPresentableErrorDomain"];

      if (v71)
      {
        v87 = v10;
        v72 = [(IXSCoordinatedAppInstall *)v23 userInfo];
        v73 = [v72 objectForKeyedSubscript:NSUnderlyingErrorKey];

        v74 = [(IXSCoordinatedAppInstall *)v23 userInfo];
        v75 = [v74 objectForKeyedSubscript:@"AlertUser"];
        v76 = sub_10008F068(v75, 0);

        if (v76)
        {
          v77 = +[IXSErrorPresenter sharedPresenter];
          v78 = [(IXSCoordinatedAppInstall *)self identity];
          [v77 presentErrorForIdentity:v78 code:-[IXSCoordinatedAppInstall code](v23 underlyingError:"code") errorSource:{v73, a4}];
        }

        v17 = 0;
        v20 = v83;
        a5 = v84;
        v18 = v85;
        v10 = v87;
      }

      else
      {
        v17 = 0;
        v20 = v83;
        a5 = v84;
        v18 = v85;
      }
    }
  }

  else
  {
    v24 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1984();
    }

    v17 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]", 5763, @"IXErrorDomain", 0x35uLL, 0, 0, @"Reason passed to [IXSCoordinatedAppInstall cancelForReason:] was nil", v25, v81);
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v23 = 0;
    if (a6)
    {
      v79 = v17;
      *a6 = v17;
      goto LABEL_60;
    }
  }

  if (v10 && a5)
  {
    *a5 = v98;
  }

LABEL_60:

  return v10 != 0;
}

- (void)_onQueue_internal_saveState
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  v5 = [v4 encodedData];

  v6 = [IXSCoordinatorManager savePathForCoordinator:self];
  v11 = 0;
  v7 = [v5 writeToURL:v6 options:268435457 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 path];
      *buf = 136315906;
      v13 = "[IXSCoordinatedAppInstall _onQueue_internal_saveState]";
      v14 = 2112;
      v15 = self;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to write coordinator %@ to disk at %@: %@", buf, 0x2Au);
    }
  }
}

- (void)_onQueue_saveState
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  if ([(IXSCoordinatedAppInstall *)self isTracked])
  {

    [(IXSCoordinatedAppInstall *)self _onQueue_internal_saveState];
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IXSCoordinatedAppInstall _onQueue_saveState]";
      v7 = 2112;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Not saving %@ because it's not tracked", &v5, 0x16u);
    }
  }
}

- (BOOL)isTracked
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006043C;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setIsTracked:(BOOL)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100060604;
  v12[3] = &unk_100101998;
  v12[4] = self;
  v13 = a3;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v12];
  if (!a3)
  {
    v5 = [IXSCoordinatorManager savePathForCoordinator:self];
    v6 = +[IXFileManager defaultManager];
    v11 = 0;
    v7 = [v6 removeItemAtURL:v5 error:&v11];
    v8 = v11;

    if ((v7 & 1) == 0)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 path];
        *buf = 136315906;
        v15 = "[IXSCoordinatedAppInstall setIsTracked:]";
        v16 = 2112;
        v17 = self;
        v18 = 2112;
        v19 = v10;
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failed to remove saved coordinator %@ at %@ : %@", buf, 0x2Au);
      }
    }
  }
}

- (void)_updatePendingOperationsForChangeFromPreviousState:(unint64_t)a3 toNewState:(unint64_t)a4
{
  if (a3 || !sub_100060704(a4))
  {
    if (!sub_100060704(a3) || (sub_100060704(a4) & 1) != 0)
    {
      return;
    }

    v8 = +[IXSPendingOperationsTracker sharedInstance];
    v7 = [(IXSCoordinatedAppInstall *)self identity];
    [v8 endPendingOperationForIdentity:v7];
  }

  else
  {
    v8 = +[IXSPendingOperationsTracker sharedInstance];
    v7 = [(IXSCoordinatedAppInstall *)self identity];
    [v8 beginPendingOperationForIdentity:v7];
  }
}

- (void)setPlaceholderInstallState:(unint64_t)a3 withLSRecordPromiseForCompletion:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  placeholderInstallState = self->_placeholderInstallState;
  if (placeholderInstallState != a3)
  {
    self->_placeholderInstallState = a3;
    [(IXSCoordinatedAppInstall *)self _updatePendingOperationsForChangeFromPreviousState:placeholderInstallState toNewState:a3];
    if (a3 == 7)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[IXSCoordinatedAppInstall setPlaceholderInstallState:withLSRecordPromiseForCompletion:]";
        v17 = 2112;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Placeholder install completed.", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
      if ([(IXSCoordinatedAppInstall *)self effectiveIntent]!= 6 && [(IXSCoordinatedAppInstall *)self effectiveIntent]!= 7)
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_updateLoadingProgress];
      }

      v10 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100060A34;
      v13[3] = &unk_100100ED8;
      v13[4] = self;
      v14 = v6;
      sub_100071134(v10, v13);

      if (![(IXSCoordinatedAppInstall *)self sentBeginRestoringUserData]&& [(IXSCoordinatedAppInstall *)self shouldBeginRestoringUserData])
      {
        [(IXSCoordinatedAppInstall *)self setSentBeginRestoringUserData:1];
        v11 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100060A8C;
        v12[3] = &unk_1001010A0;
        v12[4] = self;
        sub_100071134(v11, v12);
      }
    }
  }
}

- (void)setAppInstallState:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_appInstallState != a3)
  {
    self->_appInstallState = a3;

    [IXSCoordinatedAppInstall _updatePendingOperationsForChangeFromPreviousState:"_updatePendingOperationsForChangeFromPreviousState:toNewState:" toNewState:?];
  }
}

- (id)promiseStateDescription
{
  v3 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
  v4 = sub_100060C8C(v3, 80, 112, 48);

  v5 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
  LODWORD(v3) = sub_100060C8C(v5, 65, 97, 49);

  v6 = [(IXSCoordinatedAppInstall *)self userDataPromise];
  v7 = sub_100060C8C(v6, 85, 117, 50);

  v8 = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
  v9 = sub_100060C8C(v8, 73, 105, 51);

  v10 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
  LODWORD(v8) = sub_100060C8C(v10, 83, 115, 52);

  return [NSString stringWithFormat:@"%c%c%c%c%c", v4, v3, v7, v9, v8];
}

- (NSString)description
{
  v3 = [(IXSCoordinatedAppInstall *)self originalIntent];
  v4 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  if (v3 == v4)
  {
    if (v3 >= 8)
    {
      v5 = [NSString stringWithFormat:@"Unknown intent value %lu", v3];
    }

    else
    {
      v5 = *(&off_100103100 + v3);
    }
  }

  else
  {
    v6 = v4;
    if (v3 >= 8)
    {
      v7 = [NSString stringWithFormat:@"Unknown intent value %lu", v3];
    }

    else
    {
      v7 = *(&off_100103100 + v3);
    }

    if (v6 >= 8)
    {
      v8 = [NSString stringWithFormat:@"Unknown intent value %lu", v6];
    }

    else
    {
      v8 = *(&off_100103100 + v6);
    }

    v5 = [NSString stringWithFormat:@"%@/%@", v7, v8];
  }

  v9 = [(IXSCoordinatedAppInstall *)self coordinatorScope];
  if (v9 == 2)
  {
    v12 = @"[G]";
  }

  else if (v9 == 1)
  {
    v10 = [(IXSCoordinatedAppInstall *)self scopedToConnection];
    v11 = [v10 clientName];
    v12 = [NSString stringWithFormat:@"[P=%@]", v11];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"[U=%hhu]", v9];
  }

  v13 = [(IXSCoordinatedAppInstall *)self appAssetPromiseDRI];
  v14 = [(IXSCoordinatedAppInstall *)self creator];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(IXSCoordinatedAppInstall *)self identity];
  v18 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v19 = IXStringForClientID([(IXSCoordinatedAppInstall *)self creator]);
  if (v13 == v14)
  {
    v20 = IXStringForCoordinatorImportance([(IXSCoordinatedAppInstall *)self importance]);
    v21 = [(IXSCoordinatedAppInstall *)self state];
    if (v21 > 0x20)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(&off_100102EF0 + v21);
    }

    v24 = [(IXSCoordinatedAppInstall *)self promiseStateDescription];
    v27 = [NSString stringWithFormat:@"<%@<%p> %@ identifier:%@ uuid:%@ intent:%@ creator/appDRI:%@ importance:%@ state:%@ promise-state:%@>", v16, self, v12, v17, v18, v5, v19, v20, v22, v24];
  }

  else
  {
    v32 = v12;
    v23 = v5;
    v20 = IXStringForClientID([(IXSCoordinatedAppInstall *)self appAssetPromiseDRI]);
    v24 = IXStringForCoordinatorImportance([(IXSCoordinatedAppInstall *)self importance]);
    v25 = [(IXSCoordinatedAppInstall *)self state];
    if (v25 > 0x20)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(&off_100102EF0 + v25);
    }

    v28 = [(IXSCoordinatedAppInstall *)self promiseStateDescription];
    v31 = v26;
    v30 = v23;
    v5 = v23;
    v12 = v32;
    v27 = [NSString stringWithFormat:@"<%@<%p> %@ identifier:%@ uuid:%@ intent:%@ creator:%@ appDRI:%@ importance:%@ state:%@ promise-state:%@>", v16, self, v32, v17, v18, v30, v19, v20, v24, v31, v28];
  }

  return v27;
}

- (IXApplicationIdentity)identity
{
  v2 = [(IXSCoordinatedAppInstall *)self seed];
  v3 = [v2 identity];

  return v3;
}

- (unint64_t)installationDomain
{
  v2 = [(IXSCoordinatedAppInstall *)self seed];
  v3 = [v2 installationDomain];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(IXSCoordinatedAppInstall *)self seed];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (unint64_t)creator
{
  v2 = [(IXSCoordinatedAppInstall *)self seed];
  v3 = [v2 creator];

  return v3;
}

- (unint64_t)originalIntent
{
  v2 = [(IXSCoordinatedAppInstall *)self seed];
  v3 = [v2 intent];

  return v3;
}

- (unint64_t)effectiveIntent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100061310;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setEffectiveIntent:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000613C0;
  v6[3] = &unk_100100DF8;
  v6[4] = self;
  v6[5] = a3;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v6];
}

- (unsigned)coordinatorScope
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100061488;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setCoordinatorScope:(unsigned __int8)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100061590;
  v6[3] = &unk_100102C40;
  v7 = a3;
  v6[4] = self;
  v6[5] = &v8;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v6];
  if (*(v9 + 24) == 1)
  {
    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  }

  _Block_object_dispose(&v8, 8);
}

- (IXSClientConnection)scopedToConnection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004BA80;
  v9 = sub_10004BA90;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000616D0;
  v4[3] = &unk_100101268;
  v4[4] = self;
  v4[5] = &v5;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setScopedToConnection:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000617B0;
  v4[3] = &unk_100100ED8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(IXSCoordinatedAppInstall *)v5 _runWithExternalPropertyLock:v4];
}

- (NSSet)promiseUUIDs
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = objc_opt_new();
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000618AC;
  v12 = &unk_100100ED8;
  v13 = self;
  v14 = v4;
  v6 = v4;
  dispatch_sync(v5, &v9);

  v7 = [v6 copy];

  return v7;
}

- (IXProgressHint)progressHintWithDefault
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = self->_progressHint;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
    if (v6)
    {
      v7 = &off_10010DDF8;
    }

    else
    {
      v7 = &off_10010DE28;
    }

    if (v6)
    {
      v8 = &off_10010DE10;
    }

    else
    {
      v8 = &off_10010DE40;
    }

    v9 = objc_opt_new();
    v14 = 0;
    v10 = [v9 setPhaseProportionsForLoadingPhase:&off_10010DDE0 installingPhase:v7 postProcessingPhase:v8 error:&v14];
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      v12 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[IXSCoordinatedAppInstall progressHintWithDefault]";
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to set default installation phase proportions: %@", buf, 0x16u);
      }
    }

    v5 = v9;
  }

  return v5;
}

- (IXProgressHint)progressHint
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  progressHint = self->_progressHint;

  return progressHint;
}

- (void)setProgressHint:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[IXSCoordinatedAppInstall setProgressHint:]";
    v10 = 2112;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: setting progress hint to %@", &v8, 0x20u);
  }

  progressHint = self->_progressHint;
  self->_progressHint = v4;
}

- (BOOL)currentProgressPhaseIsComplete
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_currentProgressPhaseIsComplete;
}

- (void)setCurrentProgressPhaseIsComplete:(BOOL)a3
{
  v3 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  self->_currentProgressPhaseIsComplete = v3;
  if (v3)
  {
    cachedCurrentPhaseProgress = self->_cachedCurrentPhaseProgress;
    self->_cachedCurrentPhaseProgress = 0;
  }
}

- (void)_pauseProgressObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100062974;
    v6[3] = &unk_1001010A0;
    v7 = v4;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Pause progress" onLaunchServicesQueue:v6];
  }
}

- (void)_onQueue_pauseProgress
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062A44;
  v4[3] = &unk_100102C68;
  v4[4] = self;
  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:v4];
}

- (void)_onQueue_resumeProgress
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:&stru_100102CA8];
}

- (void)_onQueue_cancelProgress:(id)a3
{
  v6 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  if (v6)
  {
    [v6 setInstallState:4];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    [v5 installPhaseFinishedForProgress:v6];
  }

  [(IXSCoordinatedAppInstall *)self setCoordinatorProgress:0];
  [(IXSCoordinatedAppInstall *)self setCurrentProgressPhaseIsComplete:1];
}

- (void)_onQueue_cancelProgress
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062C28;
  v4[3] = &unk_100102C68;
  v4[4] = self;
  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:v4];
}

- (void)_onQueue_finishProgress:(id)a3
{
  v9 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  if (v9)
  {
    [v9 setInstallState:5];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    [v5 installPhaseFinishedForProgress:v9];
  }

  v6 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [v6 finishPostProcessing];

  v7 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [v7 finishInstalling];

  v8 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [v8 finishLoading];

  [(IXSCoordinatedAppInstall *)self setCurrentProgressPhaseIsComplete:1];
}

- (void)_onQueue_finishProgress
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062DA8;
  v4[3] = &unk_100102C68;
  v4[4] = self;
  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:v4];
}

- (void)_onQueue_fetchProgressAndRun:(id)a3
{
  v6 = a3;
  v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  if ([(IXSCoordinatedAppInstall *)self needsPostProcessing]&& [(IXSCoordinatedAppInstall *)self sentBeginPostProcessing])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressForPhase:v5 andRun:v6];
}

- (void)_onQueue_fetchProgressForPhase:(unint64_t)a3 andRun:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  if ([(IXSCoordinatedAppInstall *)self currentProgressPhaseIsComplete])
  {
    v6[2](v6, 0);
    goto LABEL_8;
  }

  v8 = [(IXSCoordinatedAppInstall *)self cachedCurrentPhaseProgress];

  if (v8)
  {
    v9 = [(IXSCoordinatedAppInstall *)self cachedCurrentPhaseProgress];
    (v6)[2](v6, v9);
LABEL_7:

    goto LABEL_8;
  }

  v10 = [(IXSCoordinatedAppInstall *)self pendingProgressRequests];

  if (v10)
  {
    v9 = [(IXSCoordinatedAppInstall *)self pendingProgressRequests];
    v11 = objc_retainBlock(v6);
    [v9 addObject:v11];

    goto LABEL_7;
  }

  v12 = objc_opt_new();
  [(IXSCoordinatedAppInstall *)self setPendingProgressRequests:v12];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 5)
  {
    v24[3] = 10;
  }

  else
  {
    v13 = [(IXSCoordinatedAppInstall *)self placeholderPromise];

    if (v13)
    {
      v14 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      v15 = [v14 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000630F4;
      block[3] = &unk_100101268;
      block[4] = self;
      block[5] = &v23;
      dispatch_sync(v15, block);
    }
  }

  [(IXSCoordinatedAppInstall *)self progressHintWithDefault];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100063150;
  v17[3] = &unk_100102CD0;
  v17[4] = self;
  v20 = &v23;
  v16 = v21 = a3;
  v18 = v16;
  v19 = v6;
  [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Initiate and fetch progress" onLaunchServicesQueue:v17];

  _Block_object_dispose(&v23, 8);
LABEL_8:
}

- (void)_runWithProgress:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006337C;
  v11[3] = &unk_100102CF8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  sub_100071134(v8, v11);
}

- (void)_limitedConcurrency_setUpLSProgressForInstallType:(unint64_t)a3 progressHint:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self identity];
  v8 = [v7 bundleID];

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 initiateProgressForApp:v8 withType:a3];
  v10 = [v6 progressProportionsDictionaryForLaunchServices];

  v15 = 0;
  v11 = [v9 setProgressProportionsByPhase:v10 forInstallOfApplicationWithIdentifier:v8 error:&v15];
  v12 = v15;
  v13 = sub_1000031B0(off_100121958);
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSCoordinatedAppInstall _limitedConcurrency_setUpLSProgressForInstallType:progressHint:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@: Set progress proportions to %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v17 = "[IXSCoordinatedAppInstall _limitedConcurrency_setUpLSProgressForInstallType:progressHint:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to set install phase progress proportions on LS for bundleID %@ to %@: %@", buf, 0x2Au);
  }
}

- (id)_limitedConcurrency_fetchLSProgressForPhase:(unint64_t)a3 appRecord:(id)a4
{
  v5 = [a4 compatibilityObject];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [v6 installProgressForApplication:v5 withPhase:a3];

  if (v7)
  {
    [v7 setInstallState:1];
    v8 = v7;
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1AB8();
    }
  }

  return v7;
}

- (void)_limitedConcurrency_saveOriginalInstallTypeForAppRecord:(id)a3
{
  v4 = [a3 installType];
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100063854;
  v6[3] = &unk_100100DF8;
  v6[4] = self;
  v6[5] = v4;
  sub_100071134(v5, v6);
}

- (void)_onQueue_configureTotalUnitCountsForInstallProgress:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self progressHintWithDefault];
  v6 = [v5 progressProportionsDictionaryForLaunchServices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100063964;
  v8[3] = &unk_100102D20;
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_onQueue_setInstallProgressPercentComplete:(double)a3 forPhase:(unint64_t)a4
{
  v6 = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
  [v6 setCompletedUnitCount:(objc_msgSend(v6 forPhase:{"totalUnitCountForPhase:", a4) * a3), a4}];
}

- (void)_limitedConcurrency_fetchLoadingProgressForPlaceholderInstallType:(unint64_t)a3 progressHint:(id)a4 andRun:(id)a5
{
  v8 = a4;
  v15 = 0;
  v9 = a5;
  v10 = [(IXSCoordinatedAppInstall *)self _placeholderOrParallelPlaceholderIsInstalledWithRecord:&v15];
  v11 = v15;
  v12 = sub_1000031B0(off_100121958);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSCoordinatedAppInstall _limitedConcurrency_fetchLoadingProgressForPlaceholderInstallType:progressHint:andRun:]";
      v18 = 2112;
      v19 = self;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: initiating loading progress with install type %lu", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)self _limitedConcurrency_saveOriginalInstallTypeForAppRecord:v11];
    [(IXSCoordinatedAppInstall *)self _limitedConcurrency_setUpLSProgressForInstallType:a3 progressHint:v8];
    v14 = [(IXSCoordinatedAppInstall *)self _limitedConcurrency_fetchLSProgressForPhase:0 appRecord:v11];
    [v14 setCancellable:1];
    [v14 setPausable:1];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1B78(self);
    }

    v14 = 0;
  }

  [(IXSCoordinatedAppInstall *)self _runWithProgress:v14 block:v9];
}

- (void)_onQueue_updateLoadingProgress
{
  v2 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v2);

  if ([(IXSCoordinatedAppInstall *)self currentProgressPhaseIsComplete])
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Not updating loading progress because %@ has completed loading phase", buf, 0x16u);
    }
  }

  else if ([(IXSCoordinatedAppInstall *)self isPaused])
  {
    v4 = sub_1000031B0(off_100121958);
    v3 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Not updating loading progress because %@ is paused", buf, 0x16u);

      v3 = v4;
    }
  }

  else
  {
    v6 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    v63 = v6;
    v7 = v6;
    if (v6)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v94 = 0;
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0;
      v8 = [v6 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100064780;
      block[3] = &unk_1001018A8;
      v87 = buf;
      v86 = v7;
      v88 = &v89;
      dispatch_sync(v8, block);

      v9 = *(v90 + 3);
      v10 = v9 == 0;
      v11 = *(*&buf[8] + 24);
      v12 = v11 + 0.0;
      v13 = v11 * v9;
      if (v9)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v12;
      }

      if (v9)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      _Block_object_dispose(&v89, 8);
      _Block_object_dispose(buf, 8);
      v65 = 1;
    }

    else
    {
      v15 = 0;
      v65 = 0;
      v10 = 0;
      v9 = 0;
      v14 = 0.0;
    }

    v16 = [(IXSCoordinatedAppInstall *)self userDataPromise];
    v62 = v16;
    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v94) = 0;
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0;
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v84 = 0;
      v17 = [v16 accessQueue];
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_1000647C8;
      v76[3] = &unk_100102D48;
      v78 = buf;
      v77 = v62;
      v79 = &v89;
      v80 = &v81;
      dispatch_sync(v17, v76);

      if (((v63 == 0) & *(*&buf[8] + 24)) == 1 && [(IXSCoordinatedAppInstall *)self effectiveIntent]== 3)
      {
        v18 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(IXSCoordinatedAppInstall *)self identity];
          *v98 = 136315394;
          v99 = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
          v100 = 2112;
          v101 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@: Not updating loading progress: user data promise is complete, but we have no app asset yet for this restoring coordinator.", v98, 0x16u);
        }
      }

      else
      {
        v20 = v82[3];
        v21 = v90[3];
        v22 = v15 + (v21 * v20);
        v23 = v14 + v21;
        if (v20)
        {
          v15 = v22;
        }

        else
        {
          v14 = v23;
        }

        if (v20)
        {
          v9 += v20;
        }

        else
        {
          ++v10;
        }

        ++v65;
      }

      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v89, 8);
      _Block_object_dispose(buf, 8);
    }

    v24 = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
    v25 = [v24 count] == 0;

    if (!v25)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
      v26 = [obj countByEnumeratingWithState:&v72 objects:v97 count:16];
      if (v26)
      {
        v67 = *v73;
        do
        {
          v27 = 0;
          v65 += v26;
          do
          {
            if (*v73 != v67)
            {
              objc_enumerationMutation(obj);
            }

            v28 = v10;
            v29 = v15;
            v30 = v9;
            v31 = *(*(&v72 + 1) + 8 * v27);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v94 = 0;
            v89 = 0;
            v90 = &v89;
            v91 = 0x2020000000;
            v92 = 0;
            v32 = [v31 accessQueue];
            v71[0] = _NSConcreteStackBlock;
            v71[1] = 3221225472;
            v71[2] = sub_100064824;
            v71[3] = &unk_1001018A8;
            v71[4] = v31;
            v71[5] = buf;
            v71[6] = &v89;
            dispatch_sync(v32, v71);

            v15 = v29;
            v33 = *(v90 + 3);
            v34 = *(*&buf[8] + 24);
            v35 = v34 * v33;
            v36 = v14 + v34;
            if (v33)
            {
              v15 = v29 + v35;
            }

            else
            {
              v14 = v36;
            }

            if (v33)
            {
              v10 = v28;
            }

            else
            {
              v10 = v28 + 1;
            }

            if (v33)
            {
              v9 = v33 + v30;
            }

            else
            {
              v9 = v30;
            }

            _Block_object_dispose(&v89, 8);
            _Block_object_dispose(buf, 8);
            v27 = v27 + 1;
          }

          while (v26 != v27);
          v26 = [obj countByEnumeratingWithState:&v72 objects:v97 count:16];
        }

        while (v26);
      }
    }

    if (v10)
    {
      v37 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_1000A1C10(self);
      }

      if (v9)
      {
        v38 = v9 / (v65 - v10) * v10;
        v9 += v38;
        v15 += (v14 / v10 * v38);
      }

      else
      {
        v39 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A1CC4();
        }

        v9 = 100 * v10;
        v15 = (v14 / v10 * (100 * v10));
      }
    }

    v40 = [(IXSCoordinatedAppInstall *)self preparationPromise];

    if (v40)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v94 = 0;
      v41 = [(IXSCoordinatedAppInstall *)self preparationPromise];
      v42 = [v41 accessQueue];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_10006486C;
      v70[3] = &unk_100101268;
      v70[4] = self;
      v70[5] = buf;
      dispatch_sync(v42, v70);

      v43 = 100;
      if (v9)
      {
        v43 = v9;
      }

      v9 = v43 + (v43 * 0.0299999993);
      v15 += (*(*&buf[8] + 24) * (v43 * 0.0299999993));
      v44 = v65 + 1;
      _Block_object_dispose(buf, 8);
      v45 = self;
    }

    else
    {
      v45 = self;
      v44 = v65;
    }

    v46 = v44;
    v47 = v44 != 0;
    v48 = [(IXSCoordinatedAppInstall *)v45 coordinatorProgress];
    v49 = v48 == 0;

    if (v49)
    {
      v50 = [IXSCoordinatorProgress alloc];
      v51 = [(IXSCoordinatedAppInstall *)self identity];
      v52 = [(IXSCoordinatedAppInstall *)self progressHintWithDefault];
      v53 = [(IXSCoordinatorProgress *)v50 initForCoordinatorWithIdentity:v51 totalUnits:v9 progressHint:v52 needsPostProcessing:[(IXSCoordinatedAppInstall *)self needsPostProcessing] delegate:self];
      [(IXSCoordinatedAppInstall *)self setCoordinatorProgress:v53];
    }

    v54 = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
    if (!v54)
    {
      if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]== 7)
      {
        v55 = sub_10003FB30();
        v56 = [(IXSCoordinatedAppInstall *)self identity];
        v54 = [v55 initiateProgressForIdentity:v56];

        if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 4)
        {
          [v54 setInstallPhase:2];
          v57 = 2;
        }

        else
        {
          [v54 setInstallPhase:0];
          if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
          {
            v57 = 4;
          }

          else
          {
            v57 = 1;
          }
        }

        [v54 setFinalPhase:v57];
        [(IXSCoordinatedAppInstall *)self _onQueue_configureTotalUnitCountsForInstallProgress:v54];
        [(IXSCoordinatedAppInstall *)self setPublishedInstallProgress:v54];
      }

      else
      {
        v54 = 0;
      }
    }

    if (v46)
    {
      v58 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v61 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315906;
        *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
        *&buf[12] = 2112;
        *&buf[14] = v61;
        *&buf[22] = 2048;
        v94 = v15;
        v95 = 2048;
        v96 = v9;
        _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "%s: %@: Setting progress to %llu / %llu", buf, 0x2Au);
      }

      v59 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
      [v59 setTotalUnits:v9];

      v60 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
      [v60 setTotalUnitsCompleted:v15];

      [(IXSCoordinatedAppInstall *)self _onQueue_setInstallProgressPercentComplete:0 forPhase:v15 / v9];
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1000648C8;
    v68[3] = &unk_100102D70;
    v69 = v47;
    v68[4] = self;
    v68[5] = v9;
    v68[6] = v15;
    [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressForPhase:0 andRun:v68];

    v3 = v63;
  }
}

- (id)_limitedConcurrency_fetchInstallingProgress
{
  v8 = 0;
  v3 = [(IXSCoordinatedAppInstall *)self _placeholderOrParallelPlaceholderIsInstalledWithRecord:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [(IXSCoordinatedAppInstall *)self _limitedConcurrency_fetchLSProgressForPhase:1 appRecord:v4];
    [v5 setCancellable:0];
    [v5 setPausable:0];
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1DD4(self);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_limitedConcurrency_fetchPostProcessingProgressAndRun:(id)a3
{
  v9 = 0;
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self _placeholderOrParallelPlaceholderIsInstalledWithRecord:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [(IXSCoordinatedAppInstall *)self _limitedConcurrency_fetchLSProgressForPhase:4 appRecord:v6];
    [v7 setCancellable:1];
    [v7 setPausable:1];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1E6C(self);
    }

    v7 = 0;
  }

  [(IXSCoordinatedAppInstall *)self _runWithProgress:v7 block:v4];
}

- (void)_onQueue_updatePostProcessingProgress
{
  v2 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v2);

  if ([(IXSCoordinatedAppInstall *)self currentProgressPhaseIsComplete])
  {
    v3 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updatePostProcessingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Not updating post processing progress because %@ has completed post processing phase", buf, 0x16u);
    }
  }

  else if ([(IXSCoordinatedAppInstall *)self isPaused])
  {
    v4 = sub_1000031B0(off_100121958);
    v3 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updatePostProcessingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Not updating post processing progress because %@ is paused", buf, 0x16u);

      v3 = v4;
    }
  }

  else
  {
    [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v6 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    v7 = 0;
    v8 = 0;
    if (v6)
    {
      v9 = *v40;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v44 = 0;
          v35 = 0;
          v36 = &v35;
          v37 = 0x2020000000;
          v38 = 0;
          v12 = [v11 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000651FC;
          block[3] = &unk_1001018A8;
          block[4] = v11;
          block[5] = buf;
          block[6] = &v35;
          dispatch_sync(v12, block);

          v13 = v36[3];
          v8 += v13;
          v7 += (*(*&buf[8] + 24) * v13);
          _Block_object_dispose(&v35, 8);
          _Block_object_dispose(buf, 8);
        }

        v6 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v6);
    }

    [(IXSCoordinatedAppInstall *)self dataImportPromises];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v26 = v31 = 0u;
    v14 = [v26 countByEnumeratingWithState:&v30 objects:v47 count:16];
    if (v14)
    {
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v26);
          }

          v17 = *(*(&v30 + 1) + 8 * j);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v44 = 0;
          v35 = 0;
          v36 = &v35;
          v37 = 0x2020000000;
          v38 = 0;
          v18 = [v17 accessQueue];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100065244;
          v29[3] = &unk_1001018A8;
          v29[4] = v17;
          v29[5] = buf;
          v29[6] = &v35;
          dispatch_sync(v18, v29);

          v19 = v36[3];
          v8 += v19;
          v7 += (*(*&buf[8] + 24) * v19);
          _Block_object_dispose(&v35, 8);
          _Block_object_dispose(buf, 8);
        }

        v14 = [v26 countByEnumeratingWithState:&v30 objects:v47 count:16];
      }

      while (v14);
    }

    if (v8 >= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v8;
    }

    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315906;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updatePostProcessingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v8;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: %@: Setting post processing progress to %llu / %llu", buf, 0x2Au);
    }

    v22 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
    [v22 setTotalUnits:v8];

    v23 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
    [v23 setTotalUnitsCompleted:v20];

    [(IXSCoordinatedAppInstall *)self _onQueue_setInstallProgressPercentComplete:4 forPhase:v20 / v8];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10006528C;
    v28[3] = &unk_100102D98;
    v28[4] = self;
    v28[5] = v8;
    v28[6] = v20;
    [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressForPhase:2 andRun:v28];

    v3 = obj;
  }
}

- (void)didUpdateProgress:(double)a3 forPhase:(unint64_t)a4 overallProgress:(double)a5
{
  v9 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000653D8;
  v10[3] = &unk_100102DC0;
  v10[4] = self;
  *&v10[5] = a3;
  v10[6] = a4;
  *&v10[7] = a5;
  sub_100071134(v9, v10);
}

- (unint64_t)transactionStepForPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self placeholderPromise];

  if (v5 == v4)
  {
    v12 = 8;
  }

  else
  {
    v6 = [(IXSCoordinatedAppInstall *)self appAssetPromise];

    if (v6 == v4)
    {
      v12 = 9;
    }

    else
    {
      v7 = [(IXSCoordinatedAppInstall *)self userDataPromise];

      if (v7 == v4)
      {
        v12 = 11;
      }

      else
      {
        v8 = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];

        if (v8 == v4)
        {
          v12 = 13;
        }

        else
        {
          v9 = [(IXSCoordinatedAppInstall *)self preparationPromise];

          if (v9 == v4)
          {
            v12 = 14;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (-[IXSCoordinatedAppInstall initialODRAssetPromises](self, "initialODRAssetPromises"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v4], v10, (v11))
            {
              v12 = 10;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (-[IXSCoordinatedAppInstall essentialAssetPromises](self, "essentialAssetPromises"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v4], v13, (v14))
              {
                v12 = 16;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (-[IXSCoordinatedAppInstall dataImportPromises](self, "dataImportPromises"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 containsObject:v4], v15, (v16))
                {
                  v12 = 17;
                }

                else
                {
                  v17 = [(IXSCoordinatedAppInstall *)self installOptionsPromise];

                  if (v17 == v4)
                  {
                    v12 = 12;
                  }

                  else
                  {
                    v12 = 18;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v12;
}

- (void)promiseDidBegin:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000656D8;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100071134(v5, v7);
}

- (void)promiseDidComplete:(id)a3
{
  v4 = a3;
  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[IXSCoordinatedAppInstall promiseDidComplete:]";
    v12 = 2112;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ : Promise completed: %@", buf, 0x20u);
  }

  v6 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100065D48;
  v8[3] = &unk_100100ED8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  sub_100071134(v6, v8);
}

- (void)promise:(id)a3 didUpdateProgress:(double)a4
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue:a3];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100065EF0;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (void)promise:(id)a3 didCancelForReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "[IXSCoordinatedAppInstall promise:didCancelForReason:client:]";
    v25 = 2112;
    v26 = self;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ : Promise canceled: %@ for reason %@ client %lu", buf, 0x34u);
  }

  v11 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000661B4;
  v19[3] = &unk_1001015A0;
  v19[4] = self;
  v12 = v8;
  v20 = v12;
  v22 = a5;
  v13 = v9;
  v21 = v13;
  sub_100071134(v11, v19);

  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 3 && ([(IXSCoordinatedAppInstall *)self appAssetPromise], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v12))
  {
    v15 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000662DC;
    v16[3] = &unk_1001018D0;
    v16[4] = self;
    v17 = v13;
    v18 = a5;
    sub_100071134(v15, v16);
  }

  else
  {
    [(IXSCoordinatedAppInstall *)self cancelForReason:v13 client:a5 error:0];
  }
}

- (unint64_t)placeholderDisposition
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  return self->_placeholderDisposition;
}

- (void)setPlaceholderDisposition:(unint64_t)a3
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  self->_placeholderDisposition = a3;
}

- (void)_onQueue_runPostProcessingAssertionHandler
{
  v3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSCoordinatedAppInstall *)self setCurrentProgressPhaseIsComplete:0];
  [(IXSCoordinatedAppInstall *)self setPendingProgressRequests:0];
  [(IXSCoordinatedAppInstall *)self setSentBeginPostProcessing:1];
  v4 = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
  [v4 setInstallPhase:4];

  v5 = [(IXSCoordinatedAppInstall *)self completedRecordPromise];
  v6 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100066494;
  v11 = &unk_100100ED8;
  v12 = self;
  v13 = v5;
  v7 = v5;
  sub_100071134(v6, &v8);

  [(IXSCoordinatedAppInstall *)self setPostProcessingAssertionState:7, v8, v9, v10, v11, v12];
  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
}

- (void)scheduledAppUpdateReadyToExecute
{
  v3 = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];

  if (v3)
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1FA0(self);
    }
  }

  else
  {
    v4 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066640;
    block[3] = &unk_1001010A0;
    block[4] = self;
    dispatch_sync(v4, block);
  }

  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066698;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (void)applyStagedUpdateAndRunBlockWhenComplete:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006678C;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)assertionTargetProcessDidExit:(id)a3
{
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXSCoordinatedAppInstall assertionTargetProcessDidExit:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: RBS termination assertion observer called for %@", buf, 0x16u);
  }

  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066960;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (BOOL)_validateLocationForPromise:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10004BA80;
  v28 = sub_10004BA90;
  v29 = 0;
  v7 = [v6 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000672EC;
  block[3] = &unk_100101268;
  v23 = &v24;
  v8 = v6;
  v22 = v8;
  dispatch_sync(v7, block);

  v9 = [(IXSCoordinatedAppInstall *)self identity];
  v10 = [v9 location];
  v11 = [v25[5] isEqual:v10];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 name];
      v19 = v25[5];
      *buf = 136316418;
      v31 = "[IXSCoordinatedAppInstall(IPCMethods) _validateLocationForPromise:error:]";
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to set %@ promise with location %@ on a coordinator for app identity %@ targeting location %@  : %@", buf, 0x3Eu);
    }

    v14 = [v8 name];
    v20 = v25[5];
    v12 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _validateLocationForPromise:error:]", 7256, @"IXErrorDomain", 0x3BuLL, 0, 0, @"Failed to set %@ promise with location %@ on a coordinator for app identity %@ targeting location %@ ", v15, v14);

    if (a4)
    {
      v16 = v12;
      *a4 = v12;
    }
  }

  _Block_object_dispose(&v24, 8);
  return v11;
}

- (void)_remote_cancelForReason:(id)a3 client:(unint64_t)a4 completion:(id)a5
{
  v13 = 0;
  v12 = 0;
  v8 = a5;
  LOBYTE(self) = [(IXSCoordinatedAppInstall *)self cancelForReason:a3 client:a4 needsLSDatabaseSync:&v13 error:&v12];
  v9 = v12;
  v10 = v9;
  v11 = 0;
  if ((self & 1) == 0)
  {
    v11 = v9;
  }

  v8[2](v8, v13, v11);
}

- (void)_remote_setPlaceholderPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:v6 ofType:objc_opt_class()];

  if (!v9)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2180();
    }

    v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderPromiseUUID:completion:]", 7288, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate placeholder data promise with UUID %@", v18, v6);
    goto LABEL_11;
  }

  v10 = [(IXSCoordinatedAppInstall *)self identity];
  v11 = [v10 bundleID];
  v12 = [v9 bundleID];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v19 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000A20CC();
    }

    v20 = [v9 bundleID];
    v22 = [(IXSCoordinatedAppInstall *)self identity];
    v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderPromiseUUID:completion:]", 7294, @"IXErrorDomain", 8uLL, 0, 0, @"Attempted to set placeholder promise with bundle ID %@ that does not match coordinator's identity %@", v21, v20);

    goto LABEL_11;
  }

  v25 = 0;
  v14 = [(IXSCoordinatedAppInstall *)self _validateLocationForPromise:v9 error:&v25];
  v15 = v25;
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v7[2](v7, v15);
    goto LABEL_12;
  }

  v16 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000676D0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v24 = v9;
  dispatch_sync(v16, block);

  v7[2](v7, 0);
LABEL_12:
}

- (void)_remote_getPlaceholderPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000677FC;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasPlaceholderPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100067A04;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setAppAssetPromiseUUID:(id)a3 fromConnection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000D774(v9, @"InstallLocalProvisioned");
  v12 = +[IXSDataPromiseManager sharedInstance];
  v13 = [v12 promiseForUUID:v8 ofType:objc_opt_class()];

  if (!v13)
  {
    v18 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000A21F4();
    }

    v16 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setAppAssetPromiseUUID:fromConnection:completion:]", 7354, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate app asset data promise with UUID %@", v19, v8);
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v25 = 0;
    v20 = [(IXSCoordinatedAppInstall *)self _validateLocationForPromise:v13 error:&v25];
    v16 = v25;
    if (v20)
    {
      v21 = [(IXSCoordinatedAppInstall *)self internalQueue];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100068040;
      v22[3] = &unk_100102920;
      v22[4] = self;
      v23 = v13;
      v24 = v11;
      dispatch_sync(v21, v22);

      v10[2](v10, 0);
      v17 = v23;
      goto LABEL_11;
    }

LABEL_12:
    (v10)[2](v10, v16);
    goto LABEL_13;
  }

  v14 = v13;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10004BA80;
  v34 = sub_10004BA90;
  v35 = 0;
  v15 = [v14 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067DAC;
  block[3] = &unk_1001011C8;
  v16 = v14;
  v27 = v16;
  v28 = self;
  v29 = &v30;
  dispatch_sync(v15, block);

  if (!v31[5])
  {

    _Block_object_dispose(&v30, 8);
    goto LABEL_9;
  }

  (v10[2])(v10);

  _Block_object_dispose(&v30, 8);
  v17 = v35;
LABEL_11:

LABEL_13:
}

- (void)_remote_getAppAssetPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000681A4;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasAppAssetPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000683AC;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_appAssetPromiseHasBegunFulfillment:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068594;
  block[3] = &unk_1001019C0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v10;
  dispatch_sync(v5, block);

  if (*(v15 + 24) == 1)
  {
    (*(v4 + 2))(v4, *(v11 + 24), 0);
  }

  else
  {
    v7 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_appAssetPromiseHasBegunFulfillment:]", 7441, @"IXErrorDomain", 0x17uLL, 0, 0, @"App asset promise is not set", v6, v8);
    (*(v4 + 2))(v4, 0, v7);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

- (void)_remote_getAppAssetPromiseDRI:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100068794;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setAppAssetPromiseDRI:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068880;
  v8[3] = &unk_100100DF8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_sync(v7, v8);

  v6[2](v6, 0);
}

- (BOOL)_validateParentLinkageForInstallOptions:(id)a3 connection:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = sub_10000D944(v7);
  v10 = [v8 linkedParentBundleID];

  if (v10 && ([v9 containsObject:v10] & 1) == 0)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10000D6A0(v7);
      *buf = 136316162;
      v20 = "[IXSCoordinatedAppInstall(IPCMethods) _validateParentLinkageForInstallOptions:connection:error:]";
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Client %@ setting the install options did not have the required entitlement to allow the linkedParentBundleID property of the supplied MIInstallOptions to be set to '%@' (found com.apple.private.mobileinstall.allowed-linked-parents = %@) : %@", buf, 0x34u);
    }

    v14 = sub_10000D6A0(v7);
    v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _validateParentLinkageForInstallOptions:connection:error:]", 7472, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ setting the install options did not have the required entitlement to allow the linkedParentBundleID property of the supplied MIInstallOptions to be set to '%@' (found com.apple.private.mobileinstall.allowed-linked-parents = %@)", v15, v14);

    if (a5)
    {
      v16 = v11;
      v12 = 0;
      *a5 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  return v12;
}

- (void)_remote_setInstallOptionsPromiseUUID:(id)a3 forConnection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(v11);

  if (v8)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v12 = +[IXSDataPromiseManager sharedInstance];
    v13 = [v12 promiseForUUID:v8 ofType:objc_opt_class()];

    if (v13)
    {
      v56 = 0;
      v14 = [(IXSCoordinatedAppInstall *)self _validateLocationForPromise:v13 error:&v56];
      v15 = v56;
      if (v14)
      {
        v16 = [v13 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000691F0;
        block[3] = &unk_100101268;
        v55 = &v57;
        v13 = v13;
        v54 = v13;
        dispatch_sync(v16, block);

        if ((v58[3] & 1) == 0)
        {
          v27 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000A22F0();
          }

          v29 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInstallOptionsPromiseUUID:forConnection:completion:]", 7520, @"IXErrorDomain", 3uLL, 0, 0, @"Client attempted to set install options promise that was not complete: %@", v28, v13);

          v17 = 0;
          v22 = 0;
          v15 = v29;
          goto LABEL_19;
        }

        v52 = v15;
        v17 = [objc_opt_class() _fetchInstallOptionsFromPromise:v13 error:&v52];
        v18 = v52;

        if (v17)
        {
          v51 = v18;
          v19 = [(IXSCoordinatedAppInstall *)self _validateParentLinkageForInstallOptions:v17 connection:v9 error:&v51];
          v15 = v51;

          if (v19)
          {
            v20 = v17;
            if ([v17 installationRequestorAuditToken] && (sub_10000D71C(v9, @"com.apple.private.install.can-set-install-requestor") & 1) == 0)
            {
              v32 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = sub_10000D6A0(v9);
                sub_1000A2364(v33, v62);
              }

              v34 = sub_10000D6A0(v9);
              v36 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInstallOptionsPromiseUUID:forConnection:completion:]", 7537, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ attempted to set MIInstallOptions with the installationRequestorAuditToken property set, but did not have the required entitlement.", v35, v34);

              v22 = 0;
              v15 = v36;
              goto LABEL_19;
            }

            v21 = [v17 iTunesMetadata];
            v22 = v21;
            if (!v21)
            {
              goto LABEL_35;
            }

            v50 = v15;
            v43 = sub_10000DB10(v21, v9, @"install options", &v50);
            v23 = v50;

            if (v43)
            {
              if ([v22 isEqual:?])
              {
                v15 = v23;
LABEL_34:

LABEL_35:
                v40 = [(IXSCoordinatedAppInstall *)self internalQueue];
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v44[2] = sub_10006922C;
                v44[3] = &unk_100100ED8;
                v44[4] = self;
                v13 = v13;
                v45 = v13;
                dispatch_sync(v40, v44);

                goto LABEL_19;
              }

              [v17 setITunesMetadata:v43];
              v49 = v23;
              v42 = sub_100040078(v17, &v49);
              v15 = v49;

              v37 = v15;
              if (v42)
              {
                v38 = [v13 accessQueue];
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_100069224;
                v47[3] = &unk_1001010A0;
                v41 = v13;
                v48 = v41;
                dispatch_sync(v38, v47);

                v39 = [IXSPromisedInMemoryData alloc];
                v46 = v37;
                v13 = [(IXSPromisedInMemoryData *)v39 updatedPromiseWithData:v42 error:&v46];
                v15 = v46;

                if (v13)
                {

                  goto LABEL_34;
                }

                v13 = 0;
              }
            }

            else
            {
              v15 = v23;
            }

            goto LABEL_19;
          }

LABEL_18:
          v22 = 0;
LABEL_19:
          v10[2](v10, v15);

          _Block_object_dispose(&v57, 8);
          goto LABEL_20;
        }

        v30 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1000A23CC();
        }

        v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInstallOptionsPromiseUUID:forConnection:completion:]", 7526, @"IXErrorDomain", 1uLL, v18, 0, @"Failed to decode MIInstallOptions from promise %@", v31, v13);
      }
    }

    else
    {
      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000A244C();
      }

      v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInstallOptionsPromiseUUID:forConnection:completion:]", 7505, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate install options promise with UUID %@", v26, v8);
      v13 = 0;
    }

    v17 = 0;
    goto LABEL_18;
  }

  v24 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000691E4;
  v61[3] = &unk_1001010A0;
  v61[4] = self;
  dispatch_sync(v24, v61);

  v10[2](v10, 0);
LABEL_20:
}

- (void)_remote_hasInstallOptions:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006932C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getInstallOptions:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10004BA80;
  v17 = sub_10004BA90;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069504;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v7;
  block[6] = &v13;
  dispatch_sync(v5, block);

  v4[2](v4, v8[5], v14[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

- (void)_remote_setImportance:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  if (a3 != 4 || (v8 = v7, v7 == 2))
  {
    v13 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100069750;
    block[3] = &unk_100100DF8;
    block[4] = self;
    block[5] = a3;
    dispatch_sync(v13, block);

    v6[2](v6, 0);
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000A24C0(v8);
    }

    v11 = IXStringForCoordinatorImportance(4uLL);
    if (v8 >= 8)
    {
      v12 = [NSString stringWithFormat:@"Unknown intent value %lu", v8];
    }

    else
    {
      v12 = *(&off_100103100 + v8);
    }

    v14 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setImportance:completion:]", 7609, @"IXErrorDomain", 4uLL, 0, 0, @"Importance %@ isn't applicable to this coordinator with intent %@", v10, v11);

    (v6)[2](v6, v14);
  }
}

- (void)_remote_importanceWithCompletion:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100069850;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_conveyPriorityReplacingExisting:(BOOL)a3 forConnection:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100069B44;
  v36 = sub_100069B70;
  v37 = objc_retainBlock(v9);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10004BA80;
  v30 = sub_10004BA90;
  v31 = 0;
  v10 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100069B78;
  v20[3] = &unk_100102DE8;
  v20[4] = self;
  v25 = a3;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v23 = &v32;
  v24 = &v26;
  dispatch_sync(v10, v20);

  if (v33[5])
  {
    v13 = sub_100069C48(v11);
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v27[5];
      *buf = 136315650;
      v39 = "[IXSCoordinatedAppInstall(IPCMethods) _remote_conveyPriorityReplacingExisting:forConnection:withCompletion:]";
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: Existing priority boost already retained: %@; not retaining %@", buf, 0x20u);
    }

    (*(v33[5] + 16))(v33[5], 0, v16, v17, v18, v19);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)_remote_setTargetGizmoPairingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100069DC8;
  v10[3] = &unk_100100ED8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_sync(v8, v10);

  v7[2](v7, 0);
}

- (void)_remote_targetGizmoPairingIDWithCompletion:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100069EF4;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setInitialODRAssetPromiseUUIDs:(id)a3 completion:(id)a4
{
  v5 = a3;
  v23 = a4;
  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = +[IXSDataPromiseManager sharedInstance];
        v14 = [v13 promiseForUUID:v12 ofType:objc_opt_class()];

        if (!v14)
        {
          v19 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000A25C8();
          }

          v21 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInitialODRAssetPromiseUUIDs:completion:]", 7689, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find ODR promise with UUID %@", v20, v12);
          v18 = v23;
          (*(v23 + 2))(v23, v21);

          v17 = v7;
          goto LABEL_13;
        }

        [v6 addObject:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v6 copy];
  v16 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A1F4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v25 = v15;
  v17 = v15;
  dispatch_sync(v16, block);

  v18 = v23;
  (*(v23 + 2))(v23, 0);

LABEL_13:
}

- (void)_remote_getInitialODRAssetPromises:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A320;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasInitialODRAssetPromises:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A61C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setUserDataPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:v6 ofType:objc_opt_class()];

  if (v9)
  {
    v10 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006A828;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v15 = v9;
    dispatch_sync(v10, block);

    v7[2](v7, 0);
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A263C();
    }

    v13 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setUserDataPromiseUUID:completion:]", 7738, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate user data promise with UUID %@", v12, v6);
    (v7)[2](v7, v13);
  }
}

- (void)_remote_getUserDataPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A954;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasUserDataPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AB5C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getUserDataRestoreShouldBegin:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006ACA4;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setPreparationPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:v6 ofType:objc_opt_class()];

  if (v9)
  {
    v10 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AE94;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v15 = v9;
    dispatch_sync(v10, block);

    v7[2](v7, 0);
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A26B0();
    }

    v13 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPreparationPromiseUUID:completion:]", 7784, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate preparation promise with UUID %@", v12, v6);
    (v7)[2](v7, v13);
  }
}

- (void)_remote_getPreparationPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AFC0;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setDeviceSecurityPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:v6 ofType:objc_opt_class()];

  if (v9)
  {
    v10 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B28C;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v15 = v9;
    dispatch_sync(v10, block);

    v7[2](v7, 0);
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2724();
    }

    v13 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setDeviceSecurityPromiseUUID:completion:]", 7812, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate device security promise with UUID %@", v12, v6);
    (v7)[2](v7, v13);
  }
}

- (void)_remote_getDeviceSecurityPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B3B8;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getHasDeviceSecurityPromise:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B5C0;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setNeedsPostProcessing:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B7BC;
    block[3] = &unk_100101998;
    block[4] = self;
    v14 = a3;
    dispatch_sync(v7, block);

    v6[2](v6, 0);
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2798(self);
    }

    v9 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
    if (v9 >= 8)
    {
      v11 = [NSString stringWithFormat:@"Unknown intent value %lu", v9];
    }

    else
    {
      v11 = *(&off_100103100 + v9);
    }

    v12 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setNeedsPostProcessing:completion:]", 7843, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator with intent %@ does not support post processing.", v10, v11);

    (v6)[2](v6, v12);
  }
}

- (void)_remote_getNeedsPostProcessing:(id)a3
{
  v4 = a3;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B9B0;
    block[3] = &unk_100101268;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(v5, block);

    (*(v4 + 2))(v4, *(v13 + 24), 0);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A286C(self);
    }

    v7 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
    if (v7 >= 8)
    {
      v9 = [NSString stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v9 = *(&off_100103100 + v7);
    }

    v10 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getNeedsPostProcessing:]", 7857, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator with intent %@ does not support post processing.", v8, v9);

    (*(v4 + 2))(v4, 0, v10);
  }
}

- (void)_remote_getPostProcessingShouldBegin:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BADC;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setEssentialAssetPromiseUUIDs:(id)a3 completion:(id)a4
{
  v26 = a3;
  v27 = a4;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v6 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BFCC;
    block[3] = &unk_100101268;
    block[4] = self;
    block[5] = &v35;
    v25 = self;
    dispatch_sync(v6, block);

    if (v36[3])
    {
      v7 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = v26;
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v9)
      {
        v10 = *v31;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            v13 = +[IXSDataPromiseManager sharedInstance];
            v14 = [v13 promiseForUUID:v12 ofType:objc_opt_class()];

            if (!v14)
            {
              v22 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                sub_1000A2A2C();
              }

              v24 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setEssentialAssetPromiseUUIDs:completion:]", 7905, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find essential asset promise with UUID %@", v23, v12);
              v27[2](v27, v24);

              goto LABEL_21;
            }

            [v7 addObject:v14];
          }

          v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v7 copy];
      v16 = [(IXSCoordinatedAppInstall *)v25 internalQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006C000;
      v28[3] = &unk_100100ED8;
      v28[4] = v25;
      v8 = v15;
      v29 = v8;
      dispatch_sync(v16, v28);

      v27[2](v27, 0);
LABEL_21:
    }

    else
    {
      v20 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000A29B8();
      }

      v7 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setEssentialAssetPromiseUUIDs:completion:]", 7895, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v21, self);
      v27[2](v27, v7);
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2944();
    }

    v19 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setEssentialAssetPromiseUUIDs:completion:]", 7884, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not support post processing.", v18, self);
    v27[2](v27, v19);
  }
}

- (void)_remote_getEssentialAssetPromises:(id)a3
{
  v4 = a3;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10004BA80;
    v17 = sub_10004BA90;
    v18 = 0;
    v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C2C0;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v19;
    block[6] = &v13;
    dispatch_sync(v5, block);

    if (v20[3])
    {
      v6 = [v14[5] copy];
      v4[2](v4, v6, 0);
    }

    else
    {
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2B14();
      }

      v6 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getEssentialAssetPromises:]", 7947, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v11, self);
      (v4)[2](v4, 0, v6);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2AA0();
    }

    v9 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getEssentialAssetPromises:]", 7922, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not support post processing.", v8, self);
    (v4)[2](v4, 0, v9);
  }
}

- (void)_remote_hasEssentialAssetPromises:(id)a3
{
  v4 = a3;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C764;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v17;
    block[6] = &v13;
    dispatch_sync(v5, block);

    if (v18[3])
    {
      (*(v4 + 2))(v4, *(v14 + 24), 0);
    }

    else
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2BFC();
      }

      v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_hasEssentialAssetPromises:]", 7974, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v10, self);
      (*(v4 + 2))(v4, 0, v11);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2B88();
    }

    v8 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_hasEssentialAssetPromises:]", 7957, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not support post processing.", v7, self);
    (*(v4 + 2))(v4, 0, v8);
  }
}

- (void)_remote_setDataImportPromiseUUIDs:(id)a3 completion:(id)a4
{
  v26 = a3;
  v27 = a4;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v6 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CCA4;
    block[3] = &unk_100101268;
    block[4] = self;
    block[5] = &v35;
    v25 = self;
    dispatch_sync(v6, block);

    if (v36[3])
    {
      v7 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = v26;
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v9)
      {
        v10 = *v31;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            v13 = +[IXSDataPromiseManager sharedInstance];
            v14 = [v13 promiseForUUID:v12 ofType:objc_opt_class()];

            if (!v14)
            {
              v22 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                sub_1000A2D58();
              }

              v24 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setDataImportPromiseUUIDs:completion:]", 8005, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find data import promise with UUID %@", v23, v12);
              v27[2](v27, v24);

              goto LABEL_21;
            }

            [v7 addObject:v14];
          }

          v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v7 copy];
      v16 = [(IXSCoordinatedAppInstall *)v25 internalQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006CCD8;
      v28[3] = &unk_100100ED8;
      v28[4] = v25;
      v8 = v15;
      v29 = v8;
      dispatch_sync(v16, v28);

      v27[2](v27, 0);
LABEL_21:
    }

    else
    {
      v20 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2CE4();
      }

      v7 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setDataImportPromiseUUIDs:completion:]", 7995, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v21, self);
      v27[2](v27, v7);
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2C70();
    }

    v19 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setDataImportPromiseUUIDs:completion:]", 7984, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not support post processing.", v18, self);
    v27[2](v27, v19);
  }
}

- (void)_remote_getDataImportPromises:(id)a3
{
  v4 = a3;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10004BA80;
    v17 = sub_10004BA90;
    v18 = 0;
    v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CF98;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v19;
    block[6] = &v13;
    dispatch_sync(v5, block);

    if (v20[3])
    {
      v6 = [v14[5] copy];
      v4[2](v4, v6, 0);
    }

    else
    {
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2E40();
      }

      v6 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getDataImportPromises:]", 8047, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v11, self);
      (v4)[2](v4, 0, v6);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2DCC();
    }

    v9 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getDataImportPromises:]", 8022, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not support post processing.", v8, self);
    (v4)[2](v4, 0, v9);
  }
}

- (void)_remote_hasDataImportPromises:(id)a3
{
  v4 = a3;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D43C;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v17;
    block[6] = &v13;
    dispatch_sync(v5, block);

    if (v18[3])
    {
      (*(v4 + 2))(v4, *(v14 + 24), 0);
    }

    else
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2F28();
      }

      v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_hasDataImportPromises:]", 8074, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v10, self);
      (*(v4 + 2))(v4, 0, v11);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2EB4();
    }

    v8 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_hasDataImportPromises:]", 8057, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not support post processing.", v7, self);
    (*(v4 + 2))(v4, 0, v8);
  }
}

- (void)_remote_getIsComplete:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D5B8;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getErrorInfo:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D750;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v7;
  dispatch_sync(v5, block);

  v4[2](v4, v14[3], v8[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

- (void)_remote_fireObserversForClient:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006D888;
  v10[3] = &unk_100100ED8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_sync(v8, v10);

  v7[2](v7, 0);
}

- (void)_remote_setIsPaused:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006D950;
  v9[3] = &unk_100102BA0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  sub_100071134(v7, v9);
}

- (void)_remote_getIsPausedWithCompletion:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006DA58;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  (*(v4 + 2))(v4, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_prioritizeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DB40;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100071134(v5, v7);
}

- (void)_remote_getCoordinationState:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
  v6 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006DC18;
  v8[3] = &unk_100101B08;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(v5, v6, v8);
}

- (void)_remote_getCoordinatorScopeWithCompletion:(id)a3
{
  v4 = a3;
  (*(v4 + 2))(v4, [(IXSCoordinatedAppInstall *)self coordinatorScope], 0);
}

- (void)_remote_convertToGloballyScopedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DDFC;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(v5, block);

  v4[2](v4, 0);
}

- (void)_remote_setPlaceholderDisposition:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v8 = sub_1000031B0(off_100121958);
  v9 = v8;
  if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = IXStringForPlaceholderDisposition(a3);
      *buf = 136315650;
      v17 = "[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderDisposition:completion:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: setting placeholderDisposition to %@", buf, 0x20u);
    }

    v11 = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E144;
    block[3] = &unk_100100DF8;
    block[4] = self;
    block[5] = a3;
    dispatch_sync(v11, block);

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2F9C(v7);
    }

    if (v7 >= 8)
    {
      v14 = [NSString stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v14 = *(&off_100103100 + v7);
    }

    v12 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderDisposition:completion:]", 8173, @"IXErrorDomain", 4uLL, 0, 0, @"Placeholder disposition is not applicable to coordinator type %@.", v13, v14);
  }

  v6[2](v6, v12);
}

- (void)_remote_getPlaceholderDispositionWithCompletion:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E248;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setProgressHint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006E354;
  v10[3] = &unk_100100ED8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_sync(v8, v10);

  v7[2](v7, 0);
}

- (void)_remote_getProgressHintWithCompletion:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E480;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setRemovability:(unint64_t)a3 byClient:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E594;
  block[3] = &unk_100100DD0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(v9, block);

  v8[2](v8, 0);
}

- (void)_remote_removabilityWithCompletion:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E69C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v5, v6);

  v4[2](v4, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

@end