@interface IXSCoordinatedAppInstall
+ (id)_fetchInstallOptionsFromPromise:(id)promise error:(id *)error;
- (BOOL)_eligibleToScheduleUpdate;
- (BOOL)_internalInitWithSeed:(id)seed scopedToConnection:(id)connection error:(id *)error;
- (BOOL)_limitedConcurrency_doRetryingInstallOperationForPlaceholder:(BOOL)placeholder installTargetURL:(id)l retries:(unint64_t)retries error:(id *)error installAttemptBlock:(id)block;
- (BOOL)_onQueue_internal_cancelForReason:(id)reason client:(unint64_t)client needsLSDatabaseSync:(BOOL *)sync error:(id *)error;
- (BOOL)_onQueue_isPlaceholderUnnecessary;
- (BOOL)_onQueue_scheduleUpdate;
- (BOOL)_onQueue_shouldDeletePlaceholderOnCancelationForReason:(id)reason client:(unint64_t)client;
- (BOOL)_placeholderOrParallelPlaceholderIsInstalledWithRecord:(id *)record;
- (BOOL)_shouldRemovePlaceholderForReason:(id)reason;
- (BOOL)_shouldRetryInstallAttemptBasedOnPreviousResult:(BOOL)result returnedError:(id)error targetInstallURL:(id)l retriesAttempted:(unint64_t)attempted totalRetries:(unint64_t)retries;
- (BOOL)_shouldStageUpdate;
- (BOOL)_validateLocationForPromise:(id)promise error:(id *)error;
- (BOOL)_validateParentLinkageForInstallOptions:(id)options connection:(id)connection error:(id *)error;
- (BOOL)awakeFromSerializationWithError:(id *)error;
- (BOOL)cancelForReason:(id)reason client:(unint64_t)client needsLSDatabaseSync:(BOOL *)sync error:(id *)error;
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
- (IXSCoordinatedAppInstall)initWithCoder:(id)coder;
- (IXSCoordinatedAppInstall)initWithSeed:(id)seed scopedToConnection:(id)connection creatorAuditToken:(id *)token error:(id *)error;
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
- (id)_limitedConcurrency_fetchLSProgressForPhase:(unint64_t)phase appRecord:(id)record;
- (id)_onQueue_fetchInstallOptionsWithError:(id *)error;
- (id)_onQueue_fetchMetadataFromInstalledAppForOffloadWithError:(id *)error;
- (id)_onQueue_localizedAppName;
- (id)priorityBoostCompletion;
- (id)promiseStateDescription;
- (id)stageUpdateFromAppAsset:(id)asset options:(id)options retries:(unint64_t)retries error:(id *)error;
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
- (unint64_t)transactionStepForPromise:(id)promise;
- (unsigned)coordinatorScope;
- (void)_asyncUpdatePlaceholderMetadataWithInstallType:(unint64_t)type reason:(int64_t)reason underlyingError:(id)error client:(unint64_t)client;
- (void)_finishAppInstallAtURL:(id)l result:(BOOL)result recordPromise:(id)promise error:(id)error;
- (void)_finishPlaceholderInstallAtURL:(id)l result:(BOOL)result recordPromise:(id)promise error:(id)error;
- (void)_initInternalState;
- (void)_internal_setAppAssetPromise:(id)promise;
- (void)_internal_setAppAssetPromise:(id)promise performExternalActions:(BOOL)actions;
- (void)_internal_setInstallOptionsPromise:(id)promise;
- (void)_internal_setInstallOptionsPromise:(id)promise performExternalActions:(BOOL)actions;
- (void)_limitedConcurrency_fetchLoadingProgressForPlaceholderInstallType:(unint64_t)type progressHint:(id)hint andRun:(id)run;
- (void)_limitedConcurrency_fetchPostProcessingProgressAndRun:(id)run;
- (void)_limitedConcurrency_saveOriginalInstallTypeForAppRecord:(id)record;
- (void)_limitedConcurrency_setUpLSProgressForInstallType:(unint64_t)type progressHint:(id)hint;
- (void)_onAssertionQueue_setTermAssertion:(id)assertion;
- (void)_onQueue_acquireAssertionAndDoInstall;
- (void)_onQueue_acquireAssertionAndInstallPlaceholder;
- (void)_onQueue_acquireAssertionForPlaceholder:(BOOL)placeholder forceAcquisition:(BOOL)acquisition;
- (void)_onQueue_cancelPlaceholderIfNeededForReason:(id)reason client:(unint64_t)client needsLSDatabaseSync:(BOOL *)sync;
- (void)_onQueue_cancelProgress;
- (void)_onQueue_cancelProgress:(id)progress;
- (void)_onQueue_cancelStagedUpdate;
- (void)_onQueue_checkState;
- (void)_onQueue_configureTotalUnitCountsForInstallProgress:(id)progress;
- (void)_onQueue_convertTerminationAssertionToAllowExtensionLaunch;
- (void)_onQueue_doAddReference:(id)reference;
- (void)_onQueue_doInstall;
- (void)_onQueue_fetchProgressAndRun:(id)run;
- (void)_onQueue_fetchProgressForPhase:(unint64_t)phase andRun:(id)run;
- (void)_onQueue_finishProgress;
- (void)_onQueue_finishProgress:(id)progress;
- (void)_onQueue_fireObserversForClient:(id)client;
- (void)_onQueue_gizmoInstallForInstallOptions:(id)options appAssetAtPath:(id)path;
- (void)_onQueue_handleAppAssetPromiseCancellationWhenRestoringWithReason:(id)reason client:(unint64_t)client;
- (void)_onQueue_handleCancelForInstallFailure:(id)failure;
- (void)_onQueue_installPlaceholder;
- (void)_onQueue_internal_saveState;
- (void)_onQueue_pauseProgress;
- (void)_onQueue_prioritizeWithCompletion:(id)completion;
- (void)_onQueue_removeParallelPlaceholder:(BOOL *)placeholder;
- (void)_onQueue_resumeProgress;
- (void)_onQueue_runAssertionHandlerForPlaceholder:(BOOL)placeholder;
- (void)_onQueue_runPostProcessingAssertionHandler;
- (void)_onQueue_saveState;
- (void)_onQueue_setInstallProgressPercentComplete:(double)complete forPhase:(unint64_t)phase;
- (void)_onQueue_unregister;
- (void)_onQueue_updateLoadingProgress;
- (void)_onQueue_updatePlaceholderForFailureReason:(id)reason client:(unint64_t)client installType:(unint64_t)type;
- (void)_onQueue_updatePostProcessingProgress;
- (void)_pauseProgressObject:(id)object;
- (void)_remote_appAssetPromiseHasBegunFulfillment:(id)fulfillment;
- (void)_remote_cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion;
- (void)_remote_convertToGloballyScopedWithCompletion:(id)completion;
- (void)_remote_conveyPriorityReplacingExisting:(BOOL)existing forConnection:(id)connection withCompletion:(id)completion;
- (void)_remote_fireObserversForClient:(id)client completion:(id)completion;
- (void)_remote_getAppAssetPromise:(id)promise;
- (void)_remote_getAppAssetPromiseDRI:(id)i;
- (void)_remote_getCoordinationState:(id)state;
- (void)_remote_getCoordinatorScopeWithCompletion:(id)completion;
- (void)_remote_getDataImportPromises:(id)promises;
- (void)_remote_getDeviceSecurityPromise:(id)promise;
- (void)_remote_getErrorInfo:(id)info;
- (void)_remote_getEssentialAssetPromises:(id)promises;
- (void)_remote_getHasDeviceSecurityPromise:(id)promise;
- (void)_remote_getInitialODRAssetPromises:(id)promises;
- (void)_remote_getInstallOptions:(id)options;
- (void)_remote_getIsComplete:(id)complete;
- (void)_remote_getIsPausedWithCompletion:(id)completion;
- (void)_remote_getNeedsPostProcessing:(id)processing;
- (void)_remote_getPlaceholderDispositionWithCompletion:(id)completion;
- (void)_remote_getPlaceholderPromise:(id)promise;
- (void)_remote_getPostProcessingShouldBegin:(id)begin;
- (void)_remote_getPreparationPromise:(id)promise;
- (void)_remote_getProgressHintWithCompletion:(id)completion;
- (void)_remote_getUserDataPromise:(id)promise;
- (void)_remote_getUserDataRestoreShouldBegin:(id)begin;
- (void)_remote_hasAppAssetPromise:(id)promise;
- (void)_remote_hasDataImportPromises:(id)promises;
- (void)_remote_hasEssentialAssetPromises:(id)promises;
- (void)_remote_hasInitialODRAssetPromises:(id)promises;
- (void)_remote_hasInstallOptions:(id)options;
- (void)_remote_hasPlaceholderPromise:(id)promise;
- (void)_remote_hasUserDataPromise:(id)promise;
- (void)_remote_importanceWithCompletion:(id)completion;
- (void)_remote_prioritizeWithCompletion:(id)completion;
- (void)_remote_removabilityWithCompletion:(id)completion;
- (void)_remote_setAppAssetPromiseDRI:(unint64_t)i completion:(id)completion;
- (void)_remote_setAppAssetPromiseUUID:(id)d fromConnection:(id)connection completion:(id)completion;
- (void)_remote_setDataImportPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_setDeviceSecurityPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setEssentialAssetPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_setImportance:(unint64_t)importance completion:(id)completion;
- (void)_remote_setInitialODRAssetPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_setInstallOptionsPromiseUUID:(id)d forConnection:(id)connection completion:(id)completion;
- (void)_remote_setIsPaused:(BOOL)paused completion:(id)completion;
- (void)_remote_setNeedsPostProcessing:(BOOL)processing completion:(id)completion;
- (void)_remote_setPlaceholderDisposition:(unint64_t)disposition completion:(id)completion;
- (void)_remote_setPlaceholderPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setPreparationPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setProgressHint:(id)hint completion:(id)completion;
- (void)_remote_setRemovability:(unint64_t)removability byClient:(unint64_t)client completion:(id)completion;
- (void)_remote_setTargetGizmoPairingID:(id)d completion:(id)completion;
- (void)_remote_setUserDataPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_targetGizmoPairingIDWithCompletion:(id)completion;
- (void)_runAsyncBlockWithDescription:(id)description onLaunchServicesQueue:(id)queue;
- (void)_runAsyncBlockWithDescription:(id)description onUninstallQueue:(id)queue;
- (void)_runWithExternalPropertyLock:(id)lock;
- (void)_runWithProgress:(id)progress block:(id)block;
- (void)_updatePendingOperationsForChangeFromPreviousState:(unint64_t)state toNewState:(unint64_t)newState;
- (void)applyStagedUpdateAndRunBlockWhenComplete:(id)complete;
- (void)assertionTargetProcessDidExit:(id)exit;
- (void)dealloc;
- (void)didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)encodeWithCoder:(id)coder;
- (void)externalSetIsPaused:(BOOL)paused completion:(id)completion;
- (void)handleFirstUnlockNotification;
- (void)prioritizeWithCompletion:(id)completion;
- (void)promise:(id)promise didCancelForReason:(id)reason client:(unint64_t)client;
- (void)promise:(id)promise didUpdateProgress:(double)progress;
- (void)promiseDidBegin:(id)begin;
- (void)promiseDidComplete:(id)complete;
- (void)scheduledAppUpdateReadyToExecute;
- (void)setAppAssetPromise:(id)promise;
- (void)setAppAssetPromiseDRI:(unint64_t)i;
- (void)setAppInstallState:(unint64_t)state;
- (void)setComplete:(BOOL)complete;
- (void)setCompletedRecordPromise:(id)promise;
- (void)setCoordinatorScope:(unsigned __int8)scope;
- (void)setCurrentProgressPhaseIsComplete:(BOOL)complete;
- (void)setDataImportPromises:(id)promises;
- (void)setDeviceSecurityPromise:(id)promise;
- (void)setEffectiveIntent:(unint64_t)intent;
- (void)setEssentialAssetPromises:(id)promises;
- (void)setImportance:(unint64_t)importance;
- (void)setInitialODRAssetPromises:(id)promises;
- (void)setInstallOptionsPromise:(id)promise;
- (void)setIsPaused:(BOOL)paused completion:(id)completion;
- (void)setIsTracked:(BOOL)tracked;
- (void)setNeedsPostProcessing:(BOOL)processing;
- (void)setNewRemovability:(unint64_t)removability;
- (void)setNewRemovabilityClient:(unint64_t)client;
- (void)setNewRemovabilityState:(unint64_t)state removabilityClient:(unint64_t)client;
- (void)setPlaceholderDisposition:(unint64_t)disposition;
- (void)setPlaceholderInstallState:(unint64_t)state withLSRecordPromiseForCompletion:(id)completion;
- (void)setPlaceholderPromise:(id)promise;
- (void)setPreparationPromise:(id)promise;
- (void)setPriorityBoostCompletion:(id)completion withSourceInfo:(id)info;
- (void)setProgressHint:(id)hint;
- (void)setSavedRemovability:(unint64_t)removability;
- (void)setSavedRemovabilityClient:(unint64_t)client;
- (void)setScopedToConnection:(id)connection;
- (void)setStagedUpdateMetadata:(id)metadata;
- (void)setTargetGizmoPairingID:(id)d;
- (void)setTermAssertion:(id)assertion;
- (void)setUserDataPromise:(id)promise;
@end

@implementation IXSCoordinatedAppInstall

- (void)_initInternalState
{
  identity = [(IXSCoordinatedAppInstall *)self identity];
  uniqueIdentifier = [identity uniqueIdentifier];

  v4 = [NSString stringWithFormat:@"com.apple.installcoordinationd.IXSCoordinatedAppInstall.%@", uniqueIdentifier];
  uTF8String = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(uTF8String, v6);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v7;

  v9 = [NSString stringWithFormat:@"com.apple.installcoordinationd.IXSCoordinatedAppInstall.assertion.%@", uniqueIdentifier];

  uTF8String2 = [v9 UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(uTF8String2, v11);
  assertionQueue = self->_assertionQueue;
  self->_assertionQueue = v12;

  v14 = [NSString stringWithFormat:@"com.apple.installcoordinationd.IXSCoordinatedAppInstall.delegate.%@", uniqueIdentifier];

  uTF8String3 = [v14 UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(uTF8String3, v16);
  delegateCallQueue = self->_delegateCallQueue;
  self->_delegateCallQueue = v17;

  self->_externalPropertyLock._os_unfair_lock_opaque = 0;
  v19 = dispatch_group_create();
  outstandingInstallOperationsGroup = self->_outstandingInstallOperationsGroup;
  self->_outstandingInstallOperationsGroup = v19;

  v21 = [NSString stringWithFormat:@"com.apple.InstallCoordination.coordinator.%@", uniqueIdentifier];

  [v21 UTF8String];
  v22 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v22;

  assertionTransaction = self->_assertionTransaction;
  self->_assertionTransaction = 0;
}

- (IXSCoordinatedAppInstall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v71.receiver = self;
  v71.super_class = IXSCoordinatedAppInstall;
  v5 = [(IXSCoordinatedAppInstall *)&v71 init];
  if (!v5)
  {
LABEL_42:
    v37 = v5;
    goto LABEL_43;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seed"];
  seed = v5->_seed;
  v5->_seed = v6;

  seed = [(IXSCoordinatedAppInstall *)v5 seed];

  if (seed)
  {
    v5->_complete = [coderCopy decodeBoolForKey:@"complete"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorSourceIdentifier"];
    v5->_errorSourceIdentifier = [v11 unsignedLongLongValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderPromiseUUID"];
    placeholderPromiseUUID = v5->_placeholderPromiseUUID;
    v5->_placeholderPromiseUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appAssetPromiseUUID"];
    appAssetPromiseUUID = v5->_appAssetPromiseUUID;
    v5->_appAssetPromiseUUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appAssetPromiseDRI"];
    v5->_appAssetPromiseDRI = [v16 unsignedLongLongValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installOptionsPromiseUUID"];
    installOptionsPromiseUUID = v5->_installOptionsPromiseUUID;
    v5->_installOptionsPromiseUUID = v17;

    v19 = objc_opt_class();
    v20 = [NSSet setWithObjects:v19, objc_opt_class(), 0];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"initialODRAssetPromiseUUIDs"];
    initialODRAssetPromiseUUIDs = v5->_initialODRAssetPromiseUUIDs;
    v5->_initialODRAssetPromiseUUIDs = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDataPromiseUUID"];
    userDataPromiseUUID = v5->_userDataPromiseUUID;
    v5->_userDataPromiseUUID = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preparationPromiseUUID"];
    preparationPromiseUUID = v5->_preparationPromiseUUID;
    v5->_preparationPromiseUUID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSecurityPromiseUUID"];
    deviceSecurityPromiseUUID = v5->_deviceSecurityPromiseUUID;
    v5->_deviceSecurityPromiseUUID = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newRemovability"];
    v5->_newRemovability = [v29 unsignedLongLongValue];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"savedRemovability"];
    v5->_savedRemovability = [v30 unsignedLongLongValue];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newRemovabilityClient"];
    v5->_newRemovabilityClient = [v31 unsignedLongLongValue];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"savedRemovabilityClient"];
    v5->_savedRemovabilityClient = [v32 unsignedLongLongValue];

    if ([coderCopy containsValueForKey:@"stagedUpdateIdentifier"])
    {
      v33 = [coderCopy decodeObjectForKey:@"stagedUpdateIdentifier"];
      v34 = [[MIStagedUpdateMetadata alloc] initForStagedIdentifier:v33 diskUsage:0];
      stagedUpdateMetadata = v5->_stagedUpdateMetadata;
      v5->_stagedUpdateMetadata = v34;
    }

    else
    {
      v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedUpdateMetadata"];
      v33 = v5->_stagedUpdateMetadata;
      v5->_stagedUpdateMetadata = v38;
    }

    if ([coderCopy containsValueForKey:@"placeholderInstalled"])
    {
      if (![coderCopy decodeBoolForKey:@"placeholderInstalled"])
      {
        v5->_placeholderInstallState = 0;
LABEL_16:
        if ([coderCopy containsValueForKey:@"appInstalled"])
        {
          if (![coderCopy decodeBoolForKey:@"appInstalled"])
          {
            v5->_appInstallState = 0;
            goto LABEL_23;
          }

          appInstallState = 7;
        }

        else
        {
          v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appInstallState"];
          v5->_appInstallState = [v42 unsignedLongLongValue];

          appInstallState = v5->_appInstallState;
          if ((appInstallState - 4) < 3)
          {
            appInstallState = 0;
          }
        }

        v5->_appInstallState = appInstallState;
LABEL_23:
        v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postProcessingAssertionState"];
        v5->_postProcessingAssertionState = [v43 unsignedLongLongValue];

        postProcessingAssertionState = v5->_postProcessingAssertionState;
        if (postProcessingAssertionState - 4 < 3)
        {
          postProcessingAssertionState = 0;
        }

        v5->_postProcessingAssertionState = postProcessingAssertionState;
        v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalInstallType"];
        v5->_originalInstallType = [v45 unsignedLongLongValue];

        v5->_isPaused = [coderCopy decodeBoolForKey:@"isPaused"];
        v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveIntent"];
        v5->_effectiveIntent = [v46 unsignedLongLongValue];

        v5->_sentBeginRestoringUserData = [coderCopy decodeBoolForKey:@"sentBeginRestoringUserData"];
        v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureInfo"];
        placeholderFailureInfo = v5->_placeholderFailureInfo;
        v5->_placeholderFailureInfo = v47;

        v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assertionRetryCount"];
        v5->_assertionRetryCount = [v49 unsignedLongLongValue];

        v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetGizmoPairingID"];
        targetGizmoPairingID = v5->_targetGizmoPairingID;
        v5->_targetGizmoPairingID = v50;

        if ([coderCopy containsValueForKey:@"isUserInitiated"])
        {
          if ([coderCopy decodeBoolForKey:@"isUserInitiated"])
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
          v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"importance"];
          v5->_importance = [v53 unsignedLongLongValue];
        }

        if (!v5->_effectiveIntent)
        {
          seed2 = [(IXSCoordinatedAppInstall *)v5 seed];
          v5->_effectiveIntent = [seed2 intent];
        }

        v5->_appAssetPromiseSetterCanInstallLocalProvisionedContent = [coderCopy decodeBoolForKey:@"appAssetPromiseSetterCanInstallLocalProvisionedContent"];
        if ([coderCopy containsValueForKey:@"coordinatorScope"])
        {
          v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coordinatorScope"];
          v5->_coordinatorScope = [v55 unsignedCharValue];
        }

        else
        {
          v5->_coordinatorScope = 2;
        }

        if ([coderCopy containsValueForKey:@"placeholderDisposition"])
        {
          v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderDisposition"];
          v5->_placeholderDisposition = [v56 unsignedLongLongValue];
        }

        else
        {
          v5->_placeholderDisposition = 1;
        }

        v5->_needsPostProcessing = [coderCopy decodeBoolForKey:@"needsPostProcessing"];
        v5->_sentBeginPostProcessing = [coderCopy decodeBoolForKey:@"sentBeginPostProcessing"];
        v57 = objc_opt_class();
        v58 = [NSSet setWithObjects:v57, objc_opt_class(), 0];
        v59 = [coderCopy decodeObjectOfClasses:v58 forKey:@"essentialAssetPromiseUUIDs"];
        essentialAssetPromiseUUIDs = v5->_essentialAssetPromiseUUIDs;
        v5->_essentialAssetPromiseUUIDs = v59;

        v61 = objc_opt_class();
        v62 = [NSSet setWithObjects:v61, objc_opt_class(), 0];
        v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"dataImportPromiseUUIDs"];
        dataImportPromiseUUIDs = v5->_dataImportPromiseUUIDs;
        v5->_dataImportPromiseUUIDs = v63;

        v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progressHint"];
        progressHint = v5->_progressHint;
        v5->_progressHint = v65;

        v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coordinatorProgress"];
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
      v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderInstallState"];
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

  identity = [(IXSCoordinatedAppInstall *)self identity];
  v9 = 0;
  v4 = sub_100015B38(identity, [(IXSCoordinatedAppInstall *)self installationDomain], &v9);
  v5 = v9;

  if (v4)
  {
    supportsDataExport = [v4 supportsDataExport];
  }

  else
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A00CC();
    }

    supportsDataExport = 0;
  }

  return supportsDataExport;
}

- (BOOL)_internalInitWithSeed:(id)seed scopedToConnection:(id)connection error:(id *)error
{
  seedCopy = seed;
  connectionCopy = connection;
  objc_storeStrong(&self->_seed, seed);
  v10 = +[NSUUID UUID];
  [seedCopy setUniqueIdentifier:v10];

  [(IXSCoordinatedAppInstall *)self _initInternalState];
  self->_appAssetPromiseDRI = [seedCopy creator];
  self->_effectiveIntent = [seedCopy intent];
  self->_importance = 1;
  if (connectionCopy)
  {
    self->_coordinatorScope = 1;
    objc_storeWeak(&self->_scopedToConnection, connectionCopy);
  }

  else
  {
    self->_coordinatorScope = 2;
  }

  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AE84;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  return 1;
}

- (IXSCoordinatedAppInstall)initWithSeed:(id)seed scopedToConnection:(id)connection creatorAuditToken:(id *)token error:(id *)error
{
  seedCopy = seed;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = IXSCoordinatedAppInstall;
  v11 = [(IXSCoordinatedAppInstall *)&v15 init];
  v12 = v11;
  if (v11 && ![(IXSCoordinatedAppInstall *)v11 _internalInitWithSeed:seedCopy scopedToConnection:connectionCopy error:error])
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
    uniqueIdentifier = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
    [v3 removeUpdateRequestForCoordinatorUUID:uniqueIdentifier];
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
      selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  seed = [(IXSCoordinatedAppInstall *)self seed];
  [coderCopy encodeObject:seed forKey:@"seed"];

  [coderCopy encodeBool:-[IXSCoordinatedAppInstall isComplete](self forKey:{"isComplete"), @"complete"}];
  error = [(IXSCoordinatedAppInstall *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  v7 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self errorSourceIdentifier]];
  [coderCopy encodeObject:v7 forKey:@"errorSourceIdentifier"];

  placeholderPromiseUUID = [(IXSCoordinatedAppInstall *)self placeholderPromiseUUID];
  [coderCopy encodeObject:placeholderPromiseUUID forKey:@"placeholderPromiseUUID"];

  appAssetPromiseUUID = [(IXSCoordinatedAppInstall *)self appAssetPromiseUUID];
  [coderCopy encodeObject:appAssetPromiseUUID forKey:@"appAssetPromiseUUID"];

  v10 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self appAssetPromiseDRI]];
  [coderCopy encodeObject:v10 forKey:@"appAssetPromiseDRI"];

  installOptionsPromiseUUID = [(IXSCoordinatedAppInstall *)self installOptionsPromiseUUID];
  [coderCopy encodeObject:installOptionsPromiseUUID forKey:@"installOptionsPromiseUUID"];

  v12 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self importance]];
  [coderCopy encodeObject:v12 forKey:@"importance"];

  initialODRAssetPromiseUUIDs = [(IXSCoordinatedAppInstall *)self initialODRAssetPromiseUUIDs];
  [coderCopy encodeObject:initialODRAssetPromiseUUIDs forKey:@"initialODRAssetPromiseUUIDs"];

  userDataPromiseUUID = [(IXSCoordinatedAppInstall *)self userDataPromiseUUID];
  [coderCopy encodeObject:userDataPromiseUUID forKey:@"userDataPromiseUUID"];

  v15 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self placeholderInstallState]];
  [coderCopy encodeObject:v15 forKey:@"placeholderInstallState"];

  v16 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self appInstallState]];
  [coderCopy encodeObject:v16 forKey:@"appInstallState"];

  v17 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self postProcessingAssertionState]];
  [coderCopy encodeObject:v17 forKey:@"postProcessingAssertionState"];

  v18 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self originalInstallType]];
  [coderCopy encodeObject:v18 forKey:@"originalInstallType"];

  [coderCopy encodeBool:-[IXSCoordinatedAppInstall isPaused](self forKey:{"isPaused"), @"isPaused"}];
  v19 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self effectiveIntent]];
  [coderCopy encodeObject:v19 forKey:@"effectiveIntent"];

  [coderCopy encodeBool:-[IXSCoordinatedAppInstall sentBeginRestoringUserData](self forKey:{"sentBeginRestoringUserData"), @"sentBeginRestoringUserData"}];
  placeholderFailureInfo = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
  [coderCopy encodeObject:placeholderFailureInfo forKey:@"placeholderFailureInfo"];

  preparationPromiseUUID = [(IXSCoordinatedAppInstall *)self preparationPromiseUUID];
  [coderCopy encodeObject:preparationPromiseUUID forKey:@"preparationPromiseUUID"];

  deviceSecurityPromiseUUID = [(IXSCoordinatedAppInstall *)self deviceSecurityPromiseUUID];
  [coderCopy encodeObject:deviceSecurityPromiseUUID forKey:@"deviceSecurityPromiseUUID"];

  v23 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self newRemovability]];
  [coderCopy encodeObject:v23 forKey:@"newRemovability"];

  v24 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self savedRemovability]];
  [coderCopy encodeObject:v24 forKey:@"savedRemovability"];

  v25 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self newRemovabilityClient]];
  [coderCopy encodeObject:v25 forKey:@"newRemovabilityClient"];

  v26 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self savedRemovabilityClient]];
  [coderCopy encodeObject:v26 forKey:@"savedRemovabilityClient"];

  v27 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self assertionRetryCount]];
  [coderCopy encodeObject:v27 forKey:@"assertionRetryCount"];

  targetGizmoPairingID = [(IXSCoordinatedAppInstall *)self targetGizmoPairingID];
  [coderCopy encodeObject:targetGizmoPairingID forKey:@"targetGizmoPairingID"];

  [coderCopy encodeBool:-[IXSCoordinatedAppInstall appAssetPromiseSetterCanInstallLocalProvisionedContent](self forKey:{"appAssetPromiseSetterCanInstallLocalProvisionedContent"), @"appAssetPromiseSetterCanInstallLocalProvisionedContent"}];
  v29 = [NSNumber numberWithUnsignedChar:[(IXSCoordinatedAppInstall *)self coordinatorScope]];
  [coderCopy encodeObject:v29 forKey:@"coordinatorScope"];

  v30 = [NSNumber numberWithUnsignedInteger:[(IXSCoordinatedAppInstall *)self placeholderDisposition]];
  [coderCopy encodeObject:v30 forKey:@"placeholderDisposition"];

  [coderCopy encodeBool:-[IXSCoordinatedAppInstall needsPostProcessing](self forKey:{"needsPostProcessing"), @"needsPostProcessing"}];
  [coderCopy encodeBool:-[IXSCoordinatedAppInstall sentBeginPostProcessing](self forKey:{"sentBeginPostProcessing"), @"sentBeginPostProcessing"}];
  essentialAssetPromiseUUIDs = [(IXSCoordinatedAppInstall *)self essentialAssetPromiseUUIDs];
  [coderCopy encodeObject:essentialAssetPromiseUUIDs forKey:@"essentialAssetPromiseUUIDs"];

  dataImportPromiseUUIDs = [(IXSCoordinatedAppInstall *)self dataImportPromiseUUIDs];
  [coderCopy encodeObject:dataImportPromiseUUIDs forKey:@"dataImportPromiseUUIDs"];

  stagedUpdateMetadata = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
  [coderCopy encodeObject:stagedUpdateMetadata forKey:@"stagedUpdateMetadata"];

  progressHint = [(IXSCoordinatedAppInstall *)self progressHint];
  [coderCopy encodeObject:progressHint forKey:@"progressHint"];

  coordinatorProgress = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [coderCopy encodeObject:coordinatorProgress forKey:@"coordinatorProgress"];
}

- (BOOL)awakeFromSerializationWithError:(id *)error
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BA98;
  block[3] = &unk_1001019C0;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v17;
  dispatch_sync(internalQueue2, block);

  if (v18[5])
  {
    if (error)
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
      *error = v7;
    }
  }

  else if (error)
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

- (void)_runWithExternalPropertyLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_externalPropertyLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_externalPropertyLock);
}

- (id)_createPowerAssertion
{
  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  if (effectiveIntent == 3 || ([(IXSCoordinatedAppInstall *)self importance]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    identity = [(IXSCoordinatedAppInstall *)self identity];
    v5 = [NSString stringWithFormat:@"IXPowerAssertion-%lu-%@", [(IXSCoordinatedAppInstall *)self creator], identity];
    if (effectiveIntent >= 8)
    {
      v6 = [NSString stringWithFormat:@"Unknown intent value %lu", effectiveIntent];
    }

    else
    {
      v6 = *(&off_100103100 + effectiveIntent);
    }

    v7 = [NSString stringWithFormat:@"Power assertion for %@ with intent %@", identity, v6];

    v8 = [[IXSPowerAssertion alloc] initWithAssertionName:v5 details:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_onAssertionQueue_setTermAssertion:(id)assertion
{
  assertionCopy = assertion;
  assertionQueue = [(IXSCoordinatedAppInstall *)self assertionQueue];
  dispatch_assert_queue_V2(assertionQueue);

  termAssertion = self->_termAssertion;
  if (assertionCopy && termAssertion == assertionCopy)
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

    objc_storeStrong(&self->_termAssertion, assertion);
  }
}

- (void)setTermAssertion:(id)assertion
{
  assertionCopy = assertion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  assertionQueue = [(IXSCoordinatedAppInstall *)self assertionQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004D76C;
  v8[3] = &unk_100100ED8;
  v8[4] = self;
  v9 = assertionCopy;
  v7 = assertionCopy;
  dispatch_sync(assertionQueue, v8);
}

- (void)handleFirstUnlockNotification
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D800;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (BOOL)_shouldStageUpdate
{
  v3 = +[ICLFeatureFlags twoStageAppInstallEnabled];
  if (v3)
  {
    if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 2 && ![(IXSCoordinatedAppInstall *)self needsPostProcessing])
    {
      importance = [(IXSCoordinatedAppInstall *)self importance];
      LOBYTE(v3) = importance == 4 || importance == 1;
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
  error = [(IXSCoordinatedAppInstall *)self error];

  if (error)
  {
    return 1;
  }

  placeholderInstallState = [(IXSCoordinatedAppInstall *)self placeholderInstallState];
  appInstallState = [(IXSCoordinatedAppInstall *)self appInstallState];
  postProcessingAssertionState = [(IXSCoordinatedAppInstall *)self postProcessingAssertionState];
  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v4 = 1;
  if (placeholderInstallState != 8 && appInstallState != 8 && postProcessingAssertionState != 8)
  {
    v10 = effectiveIntent;
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

    if (placeholderInstallState == 7 || placeholderInstallState == 9)
    {
      if (v10 == 6)
      {
        return 32;
      }

      if (v10 - 3 > 1)
      {
        if (v10 - 1 <= 1)
        {
          initialODRAssetPromises = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
          if (!initialODRAssetPromises)
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
          obj = initialODRAssetPromises;
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
              accessQueue = [v26 accessQueue];
              v74[0] = _NSConcreteStackBlock;
              v74[1] = 3221225472;
              v74[2] = sub_10004E480;
              v74[3] = &unk_1001013C8;
              v74[4] = v26;
              v74[5] = &v85;
              dispatch_sync(accessQueue, v74);

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
          if (v10 == 4 || appInstallState > 6)
          {
            if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
            {
              if (postProcessingAssertionState - 4 < 3)
              {
                return 27;
              }

              if (!postProcessingAssertionState)
              {
                return 26;
              }

              if (postProcessingAssertionState != 7)
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
                essentialAssetPromises = [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
                if (!essentialAssetPromises)
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
                v41 = essentialAssetPromises;
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
                    accessQueue2 = [v45 accessQueue];
                    v63[0] = _NSConcreteStackBlock;
                    v63[1] = 3221225472;
                    v63[2] = sub_10004E520;
                    v63[3] = &unk_1001013C8;
                    v63[4] = v45;
                    v63[5] = &v85;
                    dispatch_sync(accessQueue2, v63);

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
                dataImportPromises = [(IXSCoordinatedAppInstall *)self dataImportPromises];
                if (!dataImportPromises)
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
                v49 = dataImportPromises;
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
                    accessQueue3 = [v53 accessQueue];
                    v58[0] = _NSConcreteStackBlock;
                    v58[1] = 3221225472;
                    v58[2] = sub_10004E558;
                    v58[3] = &unk_1001013C8;
                    v58[4] = v53;
                    v58[5] = &v85;
                    dispatch_sync(accessQueue3, v58);

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

          appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
          v31 = appAssetPromise;
          if (!appAssetPromise)
          {
            v4 = 13;
            goto LABEL_108;
          }

          v85 = 0;
          v86 = &v85;
          v87 = 0x2020000000;
          v88 = 0;
          accessQueue4 = [appAssetPromise accessQueue];
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10004E4B8;
          v71[3] = &unk_100101268;
          v73 = &v85;
          v72 = v31;
          dispatch_sync(accessQueue4, v71);

          LOBYTE(accessQueue4) = *(v86 + 24);
          _Block_object_dispose(&v85, 8);
          if ((accessQueue4 & 1) == 0)
          {
            v4 = 14;
            goto LABEL_108;
          }

          installOptionsPromise = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
          v34 = installOptionsPromise == 0;

          if (v34)
          {
            v4 = 16;
            goto LABEL_108;
          }

          if (v29)
          {
            deviceSecurityPromise = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
            v36 = deviceSecurityPromise;
            if (deviceSecurityPromise)
            {
              v85 = 0;
              v86 = &v85;
              v87 = 0x2020000000;
              v88 = 0;
              accessQueue5 = [deviceSecurityPromise accessQueue];
              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_10004E4EC;
              v68[3] = &unk_100101268;
              v70 = &v85;
              v38 = v36;
              v69 = v38;
              dispatch_sync(accessQueue5, v68);

              LOBYTE(accessQueue5) = *(v86 + 24);
              _Block_object_dispose(&v85, 8);
              if ((accessQueue5 & 1) == 0)
              {

                v4 = 17;
                goto LABEL_108;
              }
            }
          }

          if (appInstallState > 2)
          {
            if ((appInstallState - 4) < 2)
            {
              v4 = 22;
              goto LABEL_108;
            }

            if (appInstallState != 3)
            {
              v4 = 23;
              goto LABEL_108;
            }
          }

          else
          {
            if (appInstallState)
            {
              if (appInstallState != 1)
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
        userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
        v16 = userDataPromise;
        if (!userDataPromise)
        {
          return 9;
        }

        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        v88 = 0;
        accessQueue6 = [userDataPromise accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004E44C;
        block[3] = &unk_100101268;
        v80 = v16;
        v81 = &v85;
        v18 = v16;
        dispatch_sync(accessQueue6, block);

        LOBYTE(accessQueue6) = *(v86 + 24);
        _Block_object_dispose(&v85, 8);
        if ((accessQueue6 & 1) == 0)
        {
          return 10;
        }
      }

      v29 = 0;
      goto LABEL_40;
    }

    placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
    v20 = placeholderPromise;
    if (placeholderPromise)
    {
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v88 = 0;
      accessQueue7 = [placeholderPromise accessQueue];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_10004E418;
      v82[3] = &unk_100101268;
      v84 = &v85;
      v83 = v20;
      dispatch_sync(accessQueue7, v82);

      if (*(v86 + 24) == 1)
      {
        if (placeholderInstallState < 7 && ((0x71u >> placeholderInstallState) & 1) != 0)
        {
          v4 = qword_1000BACD0[placeholderInstallState];
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 5 || [(IXSCoordinatedAppInstall *)self placeholderIsInstalled])
  {
    isKindOfClass = 1;
  }

  else
  {
    if ([(IXSCoordinatedAppInstall *)self creator]== 10 && ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 1 || [(IXSCoordinatedAppInstall *)self effectiveIntent]== 2))
    {
      bundleID = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEFAULT))
      {
        identity = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_isPlaceholderUnnecessary]";
        *&buf[12] = 2112;
        *&buf[14] = identity;
        _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_DEFAULT, "%s: Skipping placeholder install for %@ because this coordinator was created by SystemAppMigrator", buf, 0x16u);
      }

      isKindOfClass = 1;
    }

    else
    {
      identity2 = [(IXSCoordinatedAppInstall *)self identity];
      bundleID = [identity2 bundleID];

      appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        appAssetPromise2 = [(IXSCoordinatedAppInstall *)self appAssetPromise];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v28 = sub_10004BA80;
        v29 = sub_10004BA90;
        v30 = 0;
        accessQueue = [appAssetPromise2 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004E9CC;
        block[3] = &unk_100101268;
        v22 = buf;
        v11 = appAssetPromise2;
        v21 = v11;
        dispatch_sync(accessQueue, block);

        v12 = +[LSApplicationWorkspace defaultWorkspace];
        v13 = [v12 applicationIsInstalled:bundleID];

        if (v13)
        {
          v14 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 136315394;
            v24 = "[IXSCoordinatedAppInstall _onQueue_isPlaceholderUnnecessary]";
            v25 = 2112;
            v26 = bundleID;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (![(IXSCoordinatedAppInstall *)self _eligibleToScheduleUpdate])
  {
    return 0;
  }

  v4 = +[IXSAppUpdateScheduler sharedInstance];
  uniqueIdentifier = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v12 = 0;
  v6 = [v4 scheduleUpdateInstallForCoordinatorUUID:uniqueIdentifier error:&v12];
  v7 = v12;

  if (v6)
  {
    [(IXSCoordinatedAppInstall *)self setUpdateScheduleState:1];
    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    appInstallPowerAssertion = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];

    if (appInstallPowerAssertion)
    {
      appInstallPowerAssertion2 = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];
      [appInstallPowerAssertion2 invalidate];

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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  state = [(IXSCoordinatedAppInstall *)self state];
  if (state <= 19)
  {
    if (state == 6)
    {
      if ([(IXSCoordinatedAppInstall *)self _onQueue_isPlaceholderUnnecessary])
      {
        [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:7];

        [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
      }

      else
      {
        if (effectiveIntent != 2 || (v12 = [(IXSCoordinatedAppInstall *)self importance], v12 > 4) || ((1 << v12) & 0x13) == 0)
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
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Skipping placeholder install because this is a background updating coordinator.", buf, 0x16u);
        }

        [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:9];
        [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
      }
    }

    else if (state == 18)
    {
      [(IXSCoordinatedAppInstall *)self setAppInstallState:1];

      [(IXSCoordinatedAppInstall *)self _onQueue_doInstall];
    }
  }

  else
  {
    if (state != 20)
    {
      if (state == 26)
      {

        [(IXSCoordinatedAppInstall *)self _onQueue_convertTerminationAssertionToAllowExtensionLaunch];
      }

      else if (state == 32)
      {
        if ((effectiveIntent & 0xFFFFFFFFFFFFFFFDLL) == 4)
        {
          preparationPromise = [(IXSCoordinatedAppInstall *)self preparationPromise];
          v7 = preparationPromise;
          if (preparationPromise)
          {
            accessQueue = [preparationPromise accessQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10004F01C;
            block[3] = &unk_1001010A0;
            v20 = v7;
            dispatch_sync(accessQueue, block);
          }
        }

        if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
        {
          [(IXSCoordinatedAppInstall *)self _onQueue_finishProgress];
        }

        if ((effectiveIntent & 0xFFFFFFFFFFFFFFFELL) != 6)
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

    preparationPromise2 = [(IXSCoordinatedAppInstall *)self preparationPromise];
    v10 = preparationPromise2;
    if (preparationPromise2)
    {
      accessQueue2 = [preparationPromise2 accessQueue];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10004F028;
      v17 = &unk_1001010A0;
      v18 = v10;
      dispatch_sync(accessQueue2, &v14);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_finishProgress:v14];
    [(IXSCoordinatedAppInstall *)self _onQueue_acquireAssertionAndDoInstall];
  }
}

- (void)_runAsyncBlockWithDescription:(id)description onUninstallQueue:(id)queue
{
  descriptionCopy = description;
  queueCopy = queue;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10004BA80;
  v18 = sub_10004BA90;
  outstandingInstallOperationsGroup = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
  dispatch_group_wait(v15[5], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(v15[5]);
  v8 = +[IXSLimitedConcurrencyQueue uninstallConcurrencyQueue];
  identity = [(IXSCoordinatedAppInstall *)self identity];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F1B0;
  v11[3] = &unk_1001028D0;
  v10 = queueCopy;
  v12 = v10;
  v13 = &v14;
  [v8 runAsyncForIdentity:identity description:descriptionCopy operation:v11];

  _Block_object_dispose(&v14, 8);
}

- (void)_runAsyncBlockWithDescription:(id)description onLaunchServicesQueue:(id)queue
{
  queueCopy = queue;
  descriptionCopy = description;
  outstandingInstallOperationsGroup = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
  dispatch_group_enter(outstandingInstallOperationsGroup);

  v9 = +[IXSLimitedConcurrencyQueue launchServicesQueue];
  identity = [(IXSCoordinatedAppInstall *)self identity];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004F300;
  v12[3] = &unk_1001028F8;
  v12[4] = self;
  v13 = queueCopy;
  v11 = queueCopy;
  [v9 runAsyncForIdentity:identity description:descriptionCopy operation:v12];
}

- (void)_onQueue_convertTerminationAssertionToAllowExtensionLaunch
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self setPostProcessingAssertionState:4];
  identity = [(IXSCoordinatedAppInstall *)self identity];
  v5 = [NSString stringWithFormat:@"installcoordinationd app:%@ post-processing phase", identity];

  identity2 = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity2 bundleID];
  v8 = [RBSProcessPredicate predicateMatchingBundleIdentifier:bundleID];

  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v11 = effectiveIntent - 1;
  if (effectiveIntent - 1 < 5 && ((0x17u >> v11) & 1) != 0)
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
    if (effectiveIntent < 8 && ((0xD1u >> effectiveIntent) & 1) != 0)
    {
      v15 = *(&off_100102E58 + effectiveIntent);
    }

    else
    {
      v15 = [NSString stringWithFormat:@"Unknown intent value %lu", effectiveIntent];
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

- (void)_onQueue_runAssertionHandlerForPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self setAssertionRetryCount:0];
  [(IXSCoordinatedAppInstall *)self setFirstAppExtensionBusyTime:0];
  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  if (placeholderCopy)
  {

    [(IXSCoordinatedAppInstall *)self _onQueue_installPlaceholder];
  }

  else
  {

    [(IXSCoordinatedAppInstall *)self _onQueue_doInstall];
  }
}

- (void)_onQueue_acquireAssertionForPlaceholder:(BOOL)placeholder forceAcquisition:(BOOL)acquisition
{
  placeholderCopy = placeholder;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (placeholderCopy)
  {
    v8 = @"-for-placeholder";
  }

  else
  {
    v8 = &stru_100105BA0;
  }

  identity = [(IXSCoordinatedAppInstall *)self identity];
  uniqueIdentifier = [identity uniqueIdentifier];
  v11 = [NSString stringWithFormat:@"com.apple.InstallCoordination.acquire-assertion%@.%@", v8, uniqueIdentifier];

  [v11 UTF8String];
  v12 = os_transaction_create();
  assertionRetryTimer = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

  if (assertionRetryTimer)
  {
    assertionRetryTimer2 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
    dispatch_source_cancel(assertionRetryTimer2);

    [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
  }

  if (placeholderCopy)
  {
    [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:4];
  }

  else
  {
    [(IXSCoordinatedAppInstall *)self setAppInstallState:4];
  }

  v15 = [(IXSCoordinatedAppInstall *)self _onQueue_fetchInstallOptionsWithError:0];
  v16 = v15;
  if (acquisition || v15 && ([v15 isDeveloperInstall] & 1) != 0)
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

  identity2 = [(IXSCoordinatedAppInstall *)self identity];
  uniqueIdentifier2 = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v20 = uniqueIdentifier2;
  v21 = 78;
  if (placeholderCopy)
  {
    v21 = 89;
  }

  v22 = [NSString stringWithFormat:@"installcoordinationd app:%@ uuid:%@ isPlaceholder:%c", identity2, uniqueIdentifier2, v21];

  identity3 = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity3 bundleID];
  v25 = [RBSProcessPredicate predicateMatchingBundleIdentifier:bundleID];

  v33 = 0;
  LOBYTE(identity3) = [(IXSCoordinatedAppInstall *)self _onQueue_acquireTerminationAssertionWithPredicate:v25 description:v22 terminationResistance:v17 allowLaunchPredicate:0 error:&v33];
  v26 = v33;
  if ((identity3 & 1) == 0)
  {
    internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100050424;
    v28[3] = &unk_100102948;
    v29 = v12;
    selfCopy = self;
    v32 = placeholderCopy;
    v31 = v26;
    sub_100071134(internalQueue2, v28);
  }
}

- (BOOL)_shouldRetryInstallAttemptBasedOnPreviousResult:(BOOL)result returnedError:(id)error targetInstallURL:(id)l retriesAttempted:(unint64_t)attempted totalRetries:(unint64_t)retries
{
  errorCopy = error;
  lCopy = l;
  if (result)
  {
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:NSCocoaErrorDomain] || objc_msgSend(errorCopy, "code") != 4097)
  {
    domain2 = [errorCopy domain];
    if (![domain2 isEqualToString:NSCocoaErrorDomain] || objc_msgSend(errorCopy, "code") != 4099)
    {

      goto LABEL_13;
    }
  }

  if (attempted >= retries)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v16 = +[IXFileManager defaultManager];
  v17 = [v16 itemDoesNotExistAtURL:lCopy];

  if (v17)
  {
    v18 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[IXSCoordinatedAppInstall _shouldRetryInstallAttemptBasedOnPreviousResult:returnedError:targetInstallURL:retriesAttempted:totalRetries:]";
      v26 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: %@: installable no longer present, skipping retry", &v24, 0x16u);
    }

    goto LABEL_13;
  }

  appInstallState = [(IXSCoordinatedAppInstall *)self appInstallState];
  v22 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"install";
    v24 = 136316418;
    v25 = "[IXSCoordinatedAppInstall _shouldRetryInstallAttemptBasedOnPreviousResult:returnedError:targetInstallURL:retriesAttempted:totalRetries:]";
    v26 = 2112;
    if (appInstallState == 2)
    {
      v23 = @"stage update";
    }

    selfCopy = v23;
    v28 = 2112;
    v29 = errorCopy;
    v30 = 1024;
    v31 = 5;
    v32 = 2048;
    attemptedCopy = attempted;
    v34 = 2048;
    retriesCopy = retries;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Call to %@ SPI returned retryable error %@; retrying in %d seconds (%lu/%lu tries)", &v24, 0x3Au);
  }

  v19 = 1;
LABEL_14:

  return v19;
}

- (BOOL)_limitedConcurrency_doRetryingInstallOperationForPlaceholder:(BOOL)placeholder installTargetURL:(id)l retries:(unint64_t)retries error:(id *)error installAttemptBlock:(id)block
{
  placeholderCopy = placeholder;
  lCopy = l;
  blockCopy = block;
  v48 = placeholderCopy;
  if (placeholderCopy)
  {
    _limitedConcurrency_fetchInstallingProgress = 0;
  }

  else
  {
    _limitedConcurrency_fetchInstallingProgress = [(IXSCoordinatedAppInstall *)self _limitedConcurrency_fetchInstallingProgress];
  }

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100050DEC;
  v56[3] = &unk_100102970;
  v59 = placeholderCopy;
  v45 = _limitedConcurrency_fetchInstallingProgress;
  v57 = v45;
  selfCopy = self;
  v13 = objc_retainBlock(v56);
  v14 = 0;
  v15 = 0;
  v47 = v13;
  while (1)
  {

    v55 = 0;
    v16 = blockCopy[2](blockCopy, v13, lCopy, &v55);
    v15 = v55;
    if (!v16)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_18;
    }

    identity = [(IXSCoordinatedAppInstall *)self identity];
    bundleID = [identity bundleID];
    v19 = sub_10003B2E0(bundleID, 6);

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
        retriesCopy3 = retries;
        v22 = v21;
        v23 = "%s: For testing, faking install SPI returning error %@ (retry count %lu/%lu)";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x2Au);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    identity2 = [(IXSCoordinatedAppInstall *)self identity];
    bundleID2 = [identity2 bundleID];
    v28 = sub_10003B2E0(bundleID2, 7);

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
        retriesCopy3 = retries;
        v22 = v21;
        v23 = "%s: For testing, always faking install SPI returning error %@ (retry count %lu/%lu)";
        goto LABEL_14;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_16;
    }

    identity3 = [(IXSCoordinatedAppInstall *)self identity];
    bundleID3 = [identity3 bundleID];
    v54 = 0;
    v31 = sub_10003AF28(bundleID3, 12, &v54);
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
        v36 = [v35 removeItemAtURL:lCopy error:&v53];
        v20 = v53;

        if ((v36 & 1) == 0)
        {
          v21 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            path = [lCopy path];
            *buf = 136315650;
            v61 = "[IXSCoordinatedAppInstall _limitedConcurrency_doRetryingInstallOperationForPlaceholder:installTargetURL:retries:error:installAttemptBlock:]";
            v62 = 2112;
            v63 = path;
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
        retriesCopy3 = retries;
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
    if (![(IXSCoordinatedAppInstall *)self _shouldRetryInstallAttemptBasedOnPreviousResult:v25 returnedError:v15 targetInstallURL:lCopy retriesAttempted:v14 totalRetries:retries])
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
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100050F60;
    v50[3] = &unk_100102920;
    v52 = v25;
    v50[4] = self;
    v51 = v45;
    sub_100071134(internalQueue, v50);
  }

  if (error)
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
    *error = v15;
  }

  return v25;
}

- (void)_finishPlaceholderInstallAtURL:(id)l result:(BOOL)result recordPromise:(id)promise error:(id)error
{
  resultCopy = result;
  lCopy = l;
  promiseCopy = promise;
  errorCopy = error;
  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];
  v15 = sub_10003B2E0(bundleID, 3);

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

  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 6 && resultCopy)
  {
    v39 = promiseCopy;
    v40 = lCopy;
    identity2 = [(IXSCoordinatedAppInstall *)self identity];
    v57[0] = @"CACHE_DELETE_PURGE_APP_CACHES";
    bundleID2 = [identity2 bundleID];
    v56 = bundleID2;
    v18 = [NSArray arrayWithObjects:&v56 count:1];
    v57[1] = @"CACHE_DELETE_VOLUME";
    v58[0] = v18;
    v19 = +[IXGlobalConfiguration sharedInstance];
    userVolumeURL = [v19 userVolumeURL];
    path = [userVolumeURL path];
    v58[1] = path;
    v22 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];

    v23 = dispatch_semaphore_create(0);
    v45[5] = _NSConcreteStackBlock;
    v45[6] = 3221225472;
    v45[7] = sub_100051E64;
    v45[8] = &unk_1001029C0;
    v24 = identity2;
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

    promiseCopy = v39;
    lCopy = v40;
  }

  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100051F84;
  v45[3] = &unk_1001010A0;
  v45[4] = self;
  sub_100071134(internalQueue, v45);

  if (resultCopy)
  {
    internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100051F9C;
    v41[3] = &unk_100100ED8;
    v41[4] = self;
    v31 = &v42;
    v42 = promiseCopy;
    v32 = v41;
  }

  else
  {
    if (!errorCopy)
    {
      v33 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000A0D00(self);
      }

      identity3 = [(IXSCoordinatedAppInstall *)self identity];
      errorCopy = sub_1000405FC("[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]", 2401, @"IXErrorDomain", 0xEuLL, 0, 0, @"Placeholder installation failed but we received a nil error object when installing %@", v35, identity3);
    }

    v36 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      *buf = 136315906;
      v49 = "[IXSCoordinatedAppInstall _finishPlaceholderInstallAtURL:result:recordPromise:error:]";
      v50 = 2112;
      selfCopy = self;
      v52 = 2112;
      v53 = path2;
      v54 = 2112;
      v55 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: %@: Failed to install placeholder at path %@ : %@", buf, 0x2Au);
    }

    internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100051F90;
    v43[3] = &unk_100100ED8;
    v43[4] = self;
    v31 = &v44;
    errorCopy = errorCopy;
    v44 = errorCopy;
    v32 = v43;
  }

  sub_100071134(internalQueue2, v32);
}

- (id)_onQueue_fetchMetadataFromInstalledAppForOffloadWithError:(id *)error
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  identity = [(IXSCoordinatedAppInstall *)self identity];
  v7 = [LSApplicationRecord alloc];
  bundleID = [identity bundleID];
  v36 = 0;
  v9 = [v7 initWithBundleIdentifier:bundleID allowPlaceholder:1 error:&v36];
  v10 = v36;

  if (!v9)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0F08();
    }

    sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", 2480, @"IXErrorDomain", 1uLL, v10, 0, @"No LSApplicationRecord found for %@ during demotion", v16, identity);
    goto LABEL_18;
  }

  if ([v9 isPlaceholder])
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0E94();
    }

    v34 = identity;
    v13 = @"Cannot demote app with identity %@ because it is a placeholder";
    v14 = 2485;
LABEL_17:
    sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", v14, @"IXErrorDomain", 4uLL, 0, 0, v13, v12, v34);
    v21 = LABEL_18:;
    v19 = 0;
    v18 = 0;
    goto LABEL_19;
  }

  bundleContainerURL = [v9 bundleContainerURL];
  if (!bundleContainerURL)
  {
    v27 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000A0E20();
    }

    v34 = identity;
    v13 = @"LSApplicationRecord for %@ did not contain a bundleContainerURL during demotion";
    v14 = 2491;
    goto LABEL_17;
  }

  v18 = bundleContainerURL;
  v19 = [bundleContainerURL URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
  v35 = v10;
  v20 = [MIStoreMetadata metadataFromPlistAtURL:v19 error:&v35];
  v21 = v35;

  if (v20)
  {
    goto LABEL_22;
  }

  userInfo = [v21 userInfo];
  v10 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain = [v10 domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {

    goto LABEL_26;
  }

  code = [v10 code];

  if (code != 260)
  {
LABEL_26:
    v30 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      path = [v19 path];
      *buf = 136315906;
      v38 = "[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]";
      v39 = 2112;
      v40 = path;
      v41 = 2112;
      v42 = identity;
      v43 = 2112;
      v44 = v21;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: Failed to read iTunesMetadata.plist from %@ when demoting %@ : %@", buf, 0x2Au);
    }

    path2 = [v19 path];
    v26 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", 2503, @"IXErrorDomain", 1uLL, v21, 0, @"Failed to read iTunesMetadata.plist from %@ when demoting %@", v32, path2);

    goto LABEL_29;
  }

  v26 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchMetadataFromInstalledAppForOffloadWithError:]", 2501, @"IXErrorDomain", 0x17uLL, 0, 0, @"No metadata found for app %@", v25, identity);
LABEL_29:

  v21 = v26;
LABEL_19:

  if (error)
  {
    v28 = v21;
    v20 = 0;
    *error = v21;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
  error = [(IXSCoordinatedAppInstall *)self error];

  if (error)
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

  assertionRetryTimer = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

  if (assertionRetryTimer)
  {
    assertionRetryTimer2 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
    dispatch_source_cancel(assertionRetryTimer2);

    [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
  }

  termAssertion = [(IXSCoordinatedAppInstall *)self termAssertion];

  v10 = termAssertion == 0;
  v11 = sub_1000031B0(off_100121958);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      identity = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
      *&buf[12] = 2112;
      *&buf[14] = identity;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: No termination assertion acquired for placeholder %@; proceeding with install.", buf, 0x16u);
    }
  }

  else if (v12)
  {
    identity2 = [(IXSCoordinatedAppInstall *)self identity];
    *buf = 136315394;
    *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
    *&buf[12] = 2112;
    *&buf[14] = identity2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Acquired termination assertion for placeholder %@; proceeding with install.", buf, 0x16u);
  }

  newRemovability = [(IXSCoordinatedAppInstall *)self newRemovability];
  if (newRemovability)
  {
    v16 = +[IXSAppRemovabilityManager sharedInstance];
    identity3 = [(IXSCoordinatedAppInstall *)self identity];
    v18 = [v16 removabilityMetadataForAppWithIdentity:identity3];

    -[IXSCoordinatedAppInstall setSavedRemovability:](self, "setSavedRemovability:", [v18 removability]);
    -[IXSCoordinatedAppInstall setSavedRemovabilityClient:](self, "setSavedRemovabilityClient:", [v18 client]);
    v19 = +[IXSAppRemovabilityManager sharedInstance];
    identity4 = [(IXSCoordinatedAppInstall *)self identity];
    v106 = 0;
    v21 = [v19 setRemovability:newRemovability forAppWithIdentity:identity4 byClient:-[IXSCoordinatedAppInstall newRemovabilityClient](self error:{"newRemovabilityClient"), &v106}];
    v22 = v106;

    if ((v21 & 1) == 0)
    {
      v28 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        identity5 = [(IXSCoordinatedAppInstall *)self identity];
        bundleID = [identity5 bundleID];
        v31 = IXStringForAppRemovability(newRemovability);
        *buf = 136315906;
        *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
        *&buf[12] = 2112;
        *&buf[14] = bundleID;
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

  if (placeholderPromise)
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
    accessQueue = [placeholderPromise accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000534F8;
    block[3] = &unk_1001029E8;
    v81 = &v102;
    v80 = placeholderPromise;
    v82 = buf;
    v83 = &v92;
    v84 = &v98;
    v85 = &v86;
    dispatch_sync(accessQueue, block);

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
      internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_1000535AC;
      v77[3] = &unk_100100ED8;
      v77[4] = self;
      v24 = v39;
      v78 = v24;
      sub_100071134(internalQueue2, v77);

      goto LABEL_58;
    }

    v24 = objc_alloc_init(MIInstallOptions);
    v76 = 0;
    v25 = [(IXSCoordinatedAppInstall *)self _onQueue_fetchInstallOptionsWithError:&v76];
    v26 = v76;
    v67 = v26;
    if (v25)
    {
      linkedParentBundleID = [v25 linkedParentBundleID];
      [v24 setLinkedParentBundleID:linkedParentBundleID];
    }

    else
    {
      v58 = v26;
      domain = [v26 domain];
      if ([domain isEqualToString:@"IXErrorDomain"])
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
            identity6 = [(IXSCoordinatedAppInstall *)self identity];
            bundleID2 = [identity6 bundleID];
            [v24 setBundleIdentifier:bundleID2];

            identity7 = [(IXSCoordinatedAppInstall *)self identity];
            personaUniqueString = [identity7 personaUniqueString];
            [v24 setPersonaUniqueString:personaUniqueString];

            [v24 setInstallIntent:{sub_1000535BC(-[IXSCoordinatedAppInstall effectiveIntent](self, "effectiveIntent"))}];
            [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:6];
            _createPowerAssertion = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
            if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 7)
            {
              if (!objc_opt_class() || !objc_opt_class())
              {
                v61 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  sub_1000A1070();
                }

                targetGizmoPairingID = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2688, @"IXErrorDomain", 0x1EuLL, 0, 0, @"Canceling placeholder installation for %@ because IXGizmoInstallingAppInstallCoordinator is not supported on this device.", v62, self);
                [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:targetGizmoPairingID client:15];
                [_createPowerAssertion invalidate];
                goto LABEL_56;
              }

              targetGizmoPairingID = [(IXSCoordinatedAppInstall *)self targetGizmoPairingID];
              if (!targetGizmoPairingID)
              {
                v49 = +[NRPairedDeviceRegistry sharedInstance];
                getActivePairedDevice = [v49 getActivePairedDevice];
                targetGizmoPairingID = [getActivePairedDevice valueForProperty:NRDevicePropertyPairingID];

                if (!targetGizmoPairingID)
                {
                  v65 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000A0FFC();
                  }

                  targetGizmoPairingID = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_installPlaceholder]", 2674, @"IXErrorDomain", 0x1FuLL, 0, 0, @"Canceling placeholder installation for %@ because IXGizmoInstallingAppInstallCoordinator failed to find gizmo pairing ID.", v66, self);
                  [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:targetGizmoPairingID client:15];
                  [_createPowerAssertion invalidate];
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
              _createPowerAssertion = _createPowerAssertion;
              v74[0] = _createPowerAssertion;
              [v53 installApplicationAtURL:v54 onDeviceWithPairingID:targetGizmoPairingID installOptions:v24 size:v52 completion:v73];
              v55 = v74;
            }

            else
            {
              stagedUpdateMetadata = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
              stagedIdentifier = [stagedUpdateMetadata stagedIdentifier];

              v68[0] = _NSConcreteStackBlock;
              v68[1] = 3221225472;
              v68[2] = sub_100053624;
              v68[3] = &unk_100102A38;
              v68[4] = self;
              v72 = buf;
              v69 = v24;
              targetGizmoPairingID = stagedIdentifier;
              v70 = targetGizmoPairingID;
              _createPowerAssertion = _createPowerAssertion;
              v71 = _createPowerAssertion;
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
          _createPowerAssertion = v42;
          if (v41)
          {
            [v24 setITunesMetadata:v41];
LABEL_40:

            goto LABEL_42;
          }

          domain2 = [v42 domain];
          if ([domain2 isEqualToString:@"IXErrorDomain"])
          {
            v64 = [_createPowerAssertion code] == 23;

            if (v64)
            {
              goto LABEL_40;
            }
          }

          else
          {
          }

          [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:_createPowerAssertion client:15];
          goto LABEL_57;
        }
      }

      else
      {
      }

      linkedParentBundleID = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(linkedParentBundleID, OS_LOG_TYPE_DEFAULT))
      {
        *v107 = 136315394;
        v108 = "[IXSCoordinatedAppInstall _onQueue_installPlaceholder]";
        v109 = 2112;
        v110 = v67;
        _os_log_impl(&_mh_execute_header, linkedParentBundleID, OS_LOG_TYPE_DEFAULT, "%s: Error occurred when fetching optional placeholder install options: %@", v107, 0x16u);
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (![(IXSCoordinatedAppInstall *)self placeholderInstallState]|| [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 5 || [(IXSCoordinatedAppInstall *)self placeholderInstallState]== 4)
  {
    effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
    v5 = sub_1000031B0(off_100121958);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (effectiveIntent == 7)
    {
      if (v6)
      {
        identity = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v14 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndInstallPlaceholder]";
        v15 = 2112;
        v16 = identity;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Gizmo app install - not acquiring termination assertion to install placeholder for %@", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_installPlaceholder];
    }

    else
    {
      if (v6)
      {
        identity2 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v14 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndInstallPlaceholder]";
        v15 = 2112;
        v16 = identity2;
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

    placeholderInstallState = [(IXSCoordinatedAppInstall *)self placeholderInstallState];
    v12 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndInstallPlaceholder]", 2721, @"IXErrorDomain", 1uLL, 0, 0, @"Expected to have not yet begun placeholder install or waiting/pending assertion acquisition but state was %lu", v11, placeholderInstallState);
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v12 client:15];
  }
}

+ (id)_fetchInstallOptionsFromPromise:(id)promise error:(id *)error
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
  promiseCopy = promise;
  v34 = promiseCopy;
  v6 = objc_retainBlock(v33);
  accessQueue = [promiseCopy accessQueue];
  dispatch_sync(accessQueue, v6);

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
          error = [v11 error];
          sub_1000A1264(error, v42);
        }

        error2 = [v11 error];
        v14 = sub_1000405FC("+[IXSCoordinatedAppInstall _fetchInstallOptionsFromPromise:error:]", 2769, @"IXErrorDomain", 1uLL, error2, 0, @"Failed to unarchive install options data", v26, v30);
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
      path = [v37[5] path];
      sub_1000A1340(path, v10, v42);
    }

    path2 = [v37[5] path];
    v14 = sub_1000405FC("+[IXSCoordinatedAppInstall _fetchInstallOptionsFromPromise:error:]", 2757, @"IXErrorDomain", 1uLL, v10, 0, @"Unable to read install options serialized data from %@", v20, path2);
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
  if (error && !v13)
  {
    v27 = v14;
    *error = v14;
  }

  v28 = v13;

  _Block_object_dispose(&v36, 8);

  return v28;
}

- (id)_onQueue_fetchInstallOptionsWithError:(id *)error
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  installOptionsPromise = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
  if (installOptionsPromise)
  {
    v8 = [objc_opt_class() _fetchInstallOptionsFromPromise:installOptionsPromise error:error];
  }

  else
  {
    v9 = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_fetchInstallOptionsWithError:]", 2792, @"IXErrorDomain", 0x17uLL, 0, 0, @"Install options promise was not set.", v6, v11);
    if (error)
    {
      v9 = v9;
      *error = v9;
    }

    v8 = 0;
  }

  return v8;
}

- (void)_onQueue_handleCancelForInstallFailure:(id)failure
{
  failureCopy = failure;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  domain = [failureCopy domain];
  v6 = [domain isEqualToString:MIInstallerErrorDomain];

  if (v6)
  {
    code = [failureCopy code];
    if (code <= 12)
    {
      if (code == 7)
      {
        v9 = 13;
LABEL_35:
        v8 = failureCopy;
        goto LABEL_36;
      }

      v8 = failureCopy;
      if (code == 9)
      {
        v9 = 16;
        goto LABEL_36;
      }

      if (code == 10)
      {
        v9 = 6;
        goto LABEL_36;
      }
    }

    else if (code > 158)
    {
      v8 = failureCopy;
      if (code == 159)
      {
        v9 = 15;
        goto LABEL_36;
      }

      if (code == 208)
      {
        v9 = 18;
        goto LABEL_36;
      }
    }

    else
    {
      v8 = failureCopy;
      if (code == 13)
      {
        userInfo = [failureCopy userInfo];
        v18 = [userInfo objectForKeyedSubscript:MILibMISErrorNumberKey];
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

        v12 = IXCreateUserPresentableError(v21, 0, failureCopy);

        goto LABEL_37;
      }

      if (code == 15)
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

  domain2 = [failureCopy domain];
  v11 = [domain2 isEqualToString:LSApplicationWorkspaceErrorDomain];

  if (v11)
  {
    v12 = IXCreateUserPresentableError(1uLL, 0, failureCopy);
    v13 = 16;
    goto LABEL_38;
  }

  domain3 = [failureCopy domain];
  if ([domain3 isEqualToString:NSCocoaErrorDomain])
  {
    code2 = [failureCopy code];

    if (code2 == 4097)
    {
      v12 = IXCreateUserPresentableError(1uLL, 0, failureCopy);
      v13 = 15;
      goto LABEL_38;
    }
  }

  else
  {
  }

  v13 = 15;
LABEL_39:
  v12 = failureCopy;
LABEL_40:
  [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:v12 client:v13];
}

- (void)_finishAppInstallAtURL:(id)l result:(BOOL)result recordPromise:(id)promise error:(id)error
{
  lCopy = l;
  promiseCopy = promise;
  errorCopy = error;
  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];
  v15 = sub_10003B2E0(bundleID, 4);

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

  if (result)
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100054570;
    v25[3] = &unk_100100ED8;
    v25[4] = self;
    v17 = &v26;
    v26 = promiseCopy;
    v18 = v25;
  }

  else
  {
    if (!errorCopy)
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1428();
      }

      errorCopy = sub_1000405FC("[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]", 2895, @"IXErrorDomain", 0xEuLL, 0, 0, @"Installation failed but we received a nil error error object", v20, v25[0]);
    }

    v21 = sub_1000031B0(off_100121958);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (lCopy)
    {
      if (v22)
      {
        path = [lCopy path];
        *buf = 136315906;
        v30 = "[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]";
        v31 = 2112;
        selfCopy2 = self;
        v33 = 2112;
        v34 = path;
        v35 = 2112;
        v36 = errorCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Installation for %@ at path %@ failed: %@", buf, 0x2Au);
      }
    }

    else if (v22)
    {
      *buf = 136315650;
      v30 = "[IXSCoordinatedAppInstall _finishAppInstallAtURL:result:recordPromise:error:]";
      v31 = 2112;
      selfCopy2 = self;
      v33 = 2112;
      v34 = errorCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Installation for %@ failed: %@", buf, 0x20u);
    }

    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100054530;
    v27[3] = &unk_100100ED8;
    v27[4] = self;
    v17 = &v28;
    errorCopy = errorCopy;
    v28 = errorCopy;
    v18 = v27;
  }

  sub_100071134(internalQueue, v18);
}

- (void)_onQueue_doAddReference:(id)reference
{
  referenceCopy = reference;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _createPowerAssertion = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
  [(IXSCoordinatedAppInstall *)self setAppInstallState:6];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10004BA80;
  v27 = sub_10004BA90;
  v28 = 0;
  accessQueue = [referenceCopy accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054908;
  block[3] = &unk_100101268;
  v22 = &v23;
  v8 = referenceCopy;
  v21 = v8;
  dispatch_sync(accessQueue, block);

  v9 = v24[5];
  v19 = 0;
  v10 = MIFinalizeReferenceForInstalledAppWithError();
  v11 = 0;
  accessQueue2 = [v8 accessQueue];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100054954;
  v17 = &unk_1001010A0;
  v13 = v8;
  v18 = v13;
  dispatch_sync(accessQueue2, &v14);

  [(IXSCoordinatedAppInstall *)self _finishAppInstallAtURL:0 result:v10 != 0 recordPromise:v10 error:v11, v14, v15, v16, v17];
  [_createPowerAssertion invalidate];

  _Block_object_dispose(&v23, 8);
}

- (id)stageUpdateFromAppAsset:(id)asset options:(id)options retries:(unint64_t)retries error:(id *)error
{
  assetCopy = asset;
  optionsCopy = options;
  v12 = 0;
  while (1)
  {

    identity = [(IXSCoordinatedAppInstall *)self identity];
    miAppIdentity = [identity miAppIdentity];
    [(IXSCoordinatedAppInstall *)self installationDomain];
    v15 = MobileInstallationStageApplicationUpdate();
    v12 = 0;

    if (v15)
    {
      break;
    }

    if (![(IXSCoordinatedAppInstall *)self _shouldRetryInstallAttemptBasedOnPreviousResult:0 returnedError:v12 targetInstallURL:assetCopy retriesAttempted:0 totalRetries:retries])
    {
      v16 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000A14AC();
      }

      identity2 = [(IXSCoordinatedAppInstall *)self identity];
      v19 = sub_1000405FC("[IXSCoordinatedAppInstall stageUpdateFromAppAsset:options:retries:error:]", 3017, @"IXErrorDomain", 0x3AuLL, v12, 0, @"Failed to stage update for %@", v18, identity2);

      if (error)
      {
        v20 = v19;
        *error = v19;
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
    selfCopy = self;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: %@: staged update with results %@", buf, 0x20u);
  }

LABEL_12:

  return v15;
}

- (void)_onQueue_gizmoInstallForInstallOptions:(id)options appAssetAtPath:(id)path
{
  optionsCopy = options;
  pathCopy = path;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (objc_opt_class() && objc_opt_class())
  {
    targetGizmoPairingID = [(IXSCoordinatedAppInstall *)self targetGizmoPairingID];
    _createPowerAssertion = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
    if (targetGizmoPairingID)
    {
      goto LABEL_5;
    }

    v11 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v11 getActivePairedDevice];
    targetGizmoPairingID = [getActivePairedDevice valueForProperty:NRDevicePropertyPairingID];

    if (targetGizmoPairingID)
    {
LABEL_5:
      v13 = +[IXFileManager defaultManager];
      v14 = [v13 diskUsageForURL:pathCopy];

      v15 = +[ACXDeviceConnection sharedDeviceConnection];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100054E94;
      v20[3] = &unk_100102A60;
      v20[4] = self;
      v21 = pathCopy;
      v22 = _createPowerAssertion;
      [v15 installApplicationAtURL:v21 onDeviceWithPairingID:targetGizmoPairingID installOptions:optionsCopy size:v14 completion:v20];
    }

    else
    {
      v18 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000A1550();
      }

      targetGizmoPairingID = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_gizmoInstallForInstallOptions:appAssetAtPath:]", 3039, @"IXErrorDomain", 0x1FuLL, 0, 0, @"Canceling installation for %@ because IXGizmoInstallingAppInstallCoordinator failed to find gizmo pairing ID.", v19, self);
      [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:targetGizmoPairingID client:15];
      [_createPowerAssertion invalidate];
    }
  }

  else
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000A15C4();
    }

    _createPowerAssertion = sub_1000405FC("[IXSCoordinatedAppInstall _onQueue_gizmoInstallForInstallOptions:appAssetAtPath:]", 3053, @"IXErrorDomain", 0x1EuLL, 0, 0, @"Canceling installation for %@ because IXGizmoInstallingAppInstallCoordinator is not supported on this device.", v17, self);
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:_createPowerAssertion client:15];
  }
}

- (void)_onQueue_doInstall
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  error = [(IXSCoordinatedAppInstall *)self error];

  if (error)
  {
    appAssetPromise = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(appAssetPromise, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_doInstall]";
      *&buf[12] = 2112;
      *&buf[14] = self;
      _os_log_impl(&_mh_execute_header, appAssetPromise, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring install request because coordinator canceled while waiting for assertion", buf, 0x16u);
    }
  }

  else
  {
    assertionRetryTimer = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

    if (assertionRetryTimer)
    {
      assertionRetryTimer2 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
      dispatch_source_cancel(assertionRetryTimer2);

      [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
    }

    appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    if (appAssetPromise)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_doAddReference:appAssetPromise];
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v44 = sub_10004BA80;
        v45 = sub_10004BA90;
        v46 = 0;
        accessQueue = [appAssetPromise accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000555E8;
        block[3] = &unk_100101268;
        v38 = buf;
        appAssetPromise = appAssetPromise;
        v37 = appAssetPromise;
        dispatch_sync(accessQueue, block);

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

          identity = [(IXSCoordinatedAppInstall *)self identity];
          bundleID = [identity bundleID];
          [v12 setBundleIdentifier:bundleID];

          identity2 = [(IXSCoordinatedAppInstall *)self identity];
          personaUniqueString = [identity2 personaUniqueString];
          [v12 setPersonaUniqueString:personaUniqueString];

          if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
          {
            [v12 setPreservePlaceholderAsParallel:1];
          }

          [v12 setInstallIntent:{sub_1000535BC(-[IXSCoordinatedAppInstall effectiveIntent](self, "effectiveIntent"))}];
          termAssertion = [(IXSCoordinatedAppInstall *)self termAssertion];

          if (termAssertion)
          {
            v19 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              identity3 = [(IXSCoordinatedAppInstall *)self identity];
              *v39 = 136315394;
              v40 = "[IXSCoordinatedAppInstall _onQueue_doInstall]";
              v41 = 2112;
              v42 = identity3;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Acquired termination assertion for %@; proceeding with install.", v39, 0x16u);
            }
          }

          else
          {
            v19 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              identity4 = [(IXSCoordinatedAppInstall *)self identity];
              *v39 = 136315394;
              v40 = "[IXSCoordinatedAppInstall _onQueue_doInstall]";
              v41 = 2112;
              v42 = identity4;
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
            _createPowerAssertion = [(IXSCoordinatedAppInstall *)self _createPowerAssertion];
            if ([(IXSCoordinatedAppInstall *)self appInstallState]!= 1)
            {
              [(IXSCoordinatedAppInstall *)self setAppInstallState:6];
            }

            [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:_createPowerAssertion];
            needsPostProcessing = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
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
              stagedUpdateMetadata = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
              stagedIdentifier = [stagedUpdateMetadata stagedIdentifier];

              v27[0] = _NSConcreteStackBlock;
              v27[1] = 3221225472;
              v27[2] = sub_100055A90;
              v27[3] = &unk_100102A88;
              v27[4] = self;
              v30 = buf;
              v28 = v12;
              v26 = stagedIdentifier;
              v29 = v26;
              v31 = needsPostProcessing;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  appInstallState = [(IXSCoordinatedAppInstall *)self appInstallState];
  v5 = appInstallState;
  if (appInstallState <= 5 && ((1 << appInstallState) & 0x39) != 0)
  {
    publishedInstallProgress = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
    [publishedInstallProgress setInstallPhase:1];

    appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        identity = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
        v22 = 2112;
        v23 = identity;
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
        identity = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
        v22 = 2112;
        v23 = identity;
        v11 = "%s: Gizmo app install - not acquiring termination assertion to install %@";
        goto LABEL_9;
      }

LABEL_10:

LABEL_11:
      [(IXSCoordinatedAppInstall *)self _onQueue_doInstall];
      return;
    }

    state = [(IXSCoordinatedAppInstall *)self state];
    v13 = sub_1000031B0(off_100121958);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v5 <= 2 && state == 18)
    {
      if (v14)
      {
        identity2 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
        v22 = 2112;
        v23 = identity2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Staging background app update - not acquiring termination assertion to stage %@", buf, 0x16u);
      }

      goto LABEL_11;
    }

    if (v14)
    {
      identity3 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      v21 = "[IXSCoordinatedAppInstall _onQueue_acquireAssertionAndDoInstall]";
      v22 = 2112;
      v23 = identity3;
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

- (void)_onQueue_fireObserversForClient:(id)client
{
  clientCopy = client;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
  uniqueIdentifier = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  completedRecordPromise = [(IXSCoordinatedAppInstall *)self completedRecordPromise];
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v111 = "[IXSCoordinatedAppInstall _onQueue_fireObserversForClient:]";
    v112 = 2112;
    selfCopy = self;
    v114 = 2112;
    v115 = clientCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Firing applicable observers for client %@", buf, 0x20u);
  }

  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_100056A38;
  v104[3] = &unk_100100ED8;
  v10 = clientCopy;
  v105 = v10;
  v11 = uniqueIdentifier;
  v106 = v11;
  sub_100071134(delegateCallQueue, v104);
  error = [(IXSCoordinatedAppInstall *)self error];

  if (!error)
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
      v100 = completedRecordPromise;
      sub_100071134(delegateCallQueue, v97);

      goto LABEL_6;
    }

    placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
    v17 = sub_100056AC8(placeholderPromise);

    if (v17)
    {
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100056BCC;
      v94[3] = &unk_100100ED8;
      v95 = v10;
      v96 = v11;
      sub_100071134(delegateCallQueue, v94);
    }

    appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    v19 = sub_100056AC8(appAssetPromise);

    if (v19)
    {
      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_100056BDC;
      v91[3] = &unk_100100ED8;
      v92 = v10;
      v93 = v11;
      sub_100071134(delegateCallQueue, v91);
    }

    if ([(IXSCoordinatedAppInstall *)self shouldBeginRestoringUserData])
    {
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_100056BEC;
      v88[3] = &unk_100100ED8;
      v89 = v10;
      v90 = v11;
      sub_100071134(delegateCallQueue, v88);
    }

    if ([(IXSCoordinatedAppInstall *)self shouldBeginPostProcessing])
    {
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_100056BF8;
      v84[3] = &unk_100101300;
      v85 = v10;
      v86 = v11;
      v87 = completedRecordPromise;
      sub_100071134(delegateCallQueue, v84);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    initialODRAssetPromises = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
    v21 = [initialODRAssetPromises countByEnumeratingWithState:&v80 objects:v109 count:16];
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
            objc_enumerationMutation(initialODRAssetPromises);
          }

          if (sub_100056AC8(*(*(&v80 + 1) + 8 * i)))
          {
            v44 = 1;
            goto LABEL_27;
          }
        }

        v22 = [initialODRAssetPromises countByEnumeratingWithState:&v80 objects:v109 count:16];
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
    essentialAssetPromises = [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
    v26 = [essentialAssetPromises countByEnumeratingWithState:&v76 objects:v108 count:16];
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
            objc_enumerationMutation(essentialAssetPromises);
          }

          if (sub_100056AC8(*(*(&v76 + 1) + 8 * j)))
          {
            v30 = 1;
            goto LABEL_37;
          }
        }

        v27 = [essentialAssetPromises countByEnumeratingWithState:&v76 objects:v108 count:16];
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
    dataImportPromises = [(IXSCoordinatedAppInstall *)self dataImportPromises];
    v32 = [dataImportPromises countByEnumeratingWithState:&v72 objects:v107 count:16];
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
            objc_enumerationMutation(dataImportPromises);
          }

          if (sub_100056AC8(*(*(&v72 + 1) + 8 * k)))
          {
            v37 = 1;
            goto LABEL_47;
          }
        }

        v33 = [dataImportPromises countByEnumeratingWithState:&v72 objects:v107 count:16];
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
      sub_100071134(delegateCallQueue, v69);
    }

    userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
    v39 = sub_100056AC8(userDataPromise);

    if (v39)
    {
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100056C18;
      v66[3] = &unk_100100ED8;
      v67 = v10;
      v68 = v11;
      sub_100071134(delegateCallQueue, v66);
    }

    preparationPromise = [(IXSCoordinatedAppInstall *)self preparationPromise];
    v41 = sub_100056AC8(preparationPromise);

    if (v41)
    {
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100056C28;
      v63[3] = &unk_100100ED8;
      v64 = v10;
      v65 = v11;
      sub_100071134(delegateCallQueue, v63);
    }

    deviceSecurityPromise = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
    v43 = sub_100056AC8(deviceSecurityPromise);

    if (v43)
    {
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100056C38;
      v60[3] = &unk_100100ED8;
      v61 = v10;
      v62 = v11;
      sub_100071134(delegateCallQueue, v60);

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
            sub_100071134(delegateCallQueue, v51);
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
        sub_100071134(delegateCallQueue, v54);

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
    sub_100071134(delegateCallQueue, v57);

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
  sub_100071134(delegateCallQueue, v15);
LABEL_6:
}

- (MIStagedUpdateMetadata)stagedUpdateMetadata
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  stagedUpdateMetadata = self->_stagedUpdateMetadata;

  return stagedUpdateMetadata;
}

- (void)setStagedUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  stagedUpdateMetadata = self->_stagedUpdateMetadata;
  self->_stagedUpdateMetadata = metadataCopy;
}

- (id)trackingStagedUpdateIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100056E54;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)inPostProcessingPhase
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100056F7C;
  v5[3] = &unk_1001013C8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (unint64_t)stagedUpdateSizeOnDisk
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100057094;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

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

- (void)setPlaceholderPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)self state];
  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];

  bundleID2 = [promiseCopy bundleID];
  uniqueIdentifier = [promiseCopy uniqueIdentifier];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if ([bundleID isEqualToString:bundleID2])
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
    v11 = promiseCopy;
    v32 = v11;
    v35 = &v43;
    v36 = state;
    v33 = uniqueIdentifier;
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
        accessQueue = [v20 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000578D8;
        block[3] = &unk_1001014E8;
        block[4] = &v37;
        dispatch_sync(accessQueue, block);
      }

      if (v11)
      {
        accessQueue2 = [v11 accessQueue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000578E8;
        v27[3] = &unk_100100ED8;
        v28 = v11;
        selfCopy = self;
        dispatch_sync(accessQueue2, v27);
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
      bundleID3 = [promiseCopy bundleID];
      sub_1000A17A8(bundleID3, self, buf);
    }

    bundleID4 = [promiseCopy bundleID];
    v19 = sub_1000405FC("[IXSCoordinatedAppInstall setPlaceholderPromise:]", 3766, @"IXErrorDomain", 8uLL, 0, 0, @"Ignoring attempt to set a placeholder promise with bundle ID %@ on coordinator with different bundle ID %@", v18, bundleID4);

    sub_100057754(promiseCopy, v19, 15);
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

- (void)_internal_setAppAssetPromise:(id)promise performExternalActions:(BOOL)actions
{
  actionsCopy = actions;
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  state = [(IXSCoordinatedAppInstall *)self state];
  uniqueIdentifier = [promiseCopy uniqueIdentifier];
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
  v11 = promiseCopy;
  v29 = v11;
  v32 = &v42;
  v33 = effectiveIntent;
  v35 = actionsCopy;
  v34 = state;
  v12 = uniqueIdentifier;
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

      if (effectiveIntent >= 8)
      {
        v15 = [NSString stringWithFormat:@"Unknown intent value %lu", effectiveIntent];
      }

      else
      {
        v15 = *(&off_100103100 + effectiveIntent);
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
      accessQueue = [v16 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100058008;
      block[3] = &unk_1001014E8;
      block[4] = &v36;
      dispatch_sync(accessQueue, block);
    }

    if (v11)
    {
      accessQueue2 = [v11 accessQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100058018;
      v24[3] = &unk_100100ED8;
      v25 = v11;
      selfCopy = self;
      dispatch_sync(accessQueue2, v24);
    }

    if (actionsCopy)
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

- (void)_internal_setAppAssetPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self _internal_setAppAssetPromise:promiseCopy performExternalActions:0];
}

- (void)setAppAssetPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self _internal_setAppAssetPromise:promiseCopy performExternalActions:1];
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

- (void)setAppAssetPromiseDRI:(unint64_t)i
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100058324;
  v8[3] = &unk_100100DF8;
  v8[4] = self;
  v8[5] = i;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v8];
  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = IXStringForClientID(i);
    *buf = 136315650;
    v10 = "[IXSCoordinatedAppInstall setAppAssetPromiseDRI:]";
    v11 = 2112;
    selfCopy = self;
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

- (void)setInitialODRAssetPromises:(id)promises
{
  promisesCopy = promises;
  selfCopy = self;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)selfCopy state];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v7 = sub_100058B68(promisesCopy);
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
  v58[4] = selfCopy;
  v63 = &v77;
  v64 = state;
  v39 = promisesCopy;
  v59 = v39;
  v42 = v7;
  v60 = v42;
  [(IXSCoordinatedAppInstall *)selfCopy _runWithExternalPropertyLock:v58];
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
            uniqueIdentifier = [*(*(&v54 + 1) + 8 * i) uniqueIdentifier];
            v18 = [v16 containsObject:uniqueIdentifier];

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
            uniqueIdentifier2 = [*(*(&v49 + 1) + 8 * j) uniqueIdentifier];
            v25 = [v23 containsObject:uniqueIdentifier2];

            if (v25)
            {
              continue;
            }
          }

          accessQueue = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100058D60;
          block[3] = &unk_100100ED8;
          block[4] = v22;
          block[5] = selfCopy;
          dispatch_sync(accessQueue, block);
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
          uniqueIdentifier3 = [v31 uniqueIdentifier];
          v33 = [v42 containsObject:uniqueIdentifier3];

          if ((v33 & 1) == 0)
          {
            accessQueue2 = [v31 accessQueue];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100058D68;
            v43[3] = &unk_1001010A0;
            v43[4] = v31;
            dispatch_sync(accessQueue2, v43);
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
      *&buf[14] = selfCopy;
      *&buf[22] = 2112;
      *&buf[24] = obj;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: %@ : Initial ODR Asset Promises set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)selfCopy _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)selfCopy _onQueue_checkState];
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

- (void)setUserDataPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)self state];
  uniqueIdentifier = [promiseCopy uniqueIdentifier];
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
  v8 = promiseCopy;
  v25 = v8;
  v28 = &v36;
  v29 = state;
  v9 = uniqueIdentifier;
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
      accessQueue = [v13 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059398;
      block[3] = &unk_1001014E8;
      block[4] = &v30;
      dispatch_sync(accessQueue, block);
    }

    if (v8)
    {
      accessQueue2 = [v8 accessQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000593A8;
      v20[3] = &unk_100100ED8;
      v21 = v8;
      selfCopy = self;
      dispatch_sync(accessQueue2, v20);
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

- (void)setDeviceSecurityPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)self state];
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
  v7 = promiseCopy;
  v23 = v7;
  v25 = &v33;
  v26 = state;
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
      accessQueue = [v11 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000599B0;
      block[3] = &unk_1001014E8;
      block[4] = &v27;
      dispatch_sync(accessQueue, block);
    }

    if (v7)
    {
      accessQueue2 = [v7 accessQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000599C0;
      v18[3] = &unk_100100ED8;
      v19 = v7;
      selfCopy = self;
      dispatch_sync(accessQueue2, v18);
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

- (void)setPreparationPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
  v6 = promiseCopy;
  v16 = v6;
  v18 = &v25;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v15];
  if ((v26[3] & 1) == 0)
  {
    v7 = v20[5];
    if (v7)
    {
      accessQueue = [v7 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059EA0;
      block[3] = &unk_1001014E8;
      block[4] = &v19;
      dispatch_sync(accessQueue, block);
    }

    if (v6)
    {
      accessQueue2 = [v6 accessQueue];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100059EB0;
      v11[3] = &unk_100100ED8;
      v12 = v6;
      selfCopy = self;
      dispatch_sync(accessQueue2, v11);
    }

    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "[IXSCoordinatedAppInstall setPreparationPromise:]";
      v31 = 2112;
      selfCopy2 = self;
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

- (void)_internal_setInstallOptionsPromise:(id)promise performExternalActions:(BOOL)actions
{
  actionsCopy = actions;
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  state = [(IXSCoordinatedAppInstall *)self state];
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
  v10 = promiseCopy;
  v25 = v10;
  v27 = &v37;
  v28 = effectiveIntent;
  v30 = actionsCopy;
  v29 = state;
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
      accessQueue = [v14 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005A570;
      block[3] = &unk_1001014E8;
      block[4] = &v31;
      dispatch_sync(accessQueue, block);
    }

    if (v10)
    {
      accessQueue2 = [v10 accessQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10005A580;
      v20[3] = &unk_100100ED8;
      v21 = v10;
      selfCopy = self;
      dispatch_sync(accessQueue2, v20);
    }

    if (actionsCopy)
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

- (void)_internal_setInstallOptionsPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self _internal_setInstallOptionsPromise:promiseCopy performExternalActions:0];
}

- (void)setInstallOptionsPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self _internal_setInstallOptionsPromise:promiseCopy performExternalActions:1];
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

- (void)setNeedsPostProcessing:(BOOL)processing
{
  processingCopy = processing;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005A8E4;
  v8[3] = &unk_100102B78;
  v9 = processingCopy;
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
      if (processingCopy)
      {
        v7 = 89;
      }

      else
      {
        v7 = 78;
      }

      v16 = 2112;
      selfCopy = self;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  needsPostProcessing = sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]);
  if (needsPostProcessing)
  {
    needsPostProcessing = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
    if (needsPostProcessing)
    {
      LOBYTE(needsPostProcessing) = [(IXSCoordinatedAppInstall *)self appInstallState]== 7;
    }
  }

  return needsPostProcessing;
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

- (void)setEssentialAssetPromises:(id)promises
{
  promisesCopy = promises;
  selfCopy = self;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)selfCopy state];
  v7 = sub_100058B68(promisesCopy);
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
  v54[4] = selfCopy;
  v59 = &v73;
  v60 = state;
  v35 = promisesCopy;
  v55 = v35;
  v8 = v7;
  v56 = v8;
  [(IXSCoordinatedAppInstall *)selfCopy _runWithExternalPropertyLock:v54];
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
            uniqueIdentifier = [*(*(&v50 + 1) + 8 * i) uniqueIdentifier];
            v18 = [v16 containsObject:uniqueIdentifier];

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
            uniqueIdentifier2 = [*(*(&v46 + 1) + 8 * j) uniqueIdentifier];
            v25 = [v23 containsObject:uniqueIdentifier2];

            if (v25)
            {
              continue;
            }
          }

          accessQueue = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005B198;
          block[3] = &unk_100100ED8;
          block[4] = v22;
          block[5] = selfCopy;
          dispatch_sync(accessQueue, block);
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
          accessQueue2 = [v31 accessQueue];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10005B1A0;
          v38[3] = &unk_100100ED8;
          v39 = v8;
          v40 = v31;
          dispatch_sync(accessQueue2, v38);
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
      v80 = selfCopy;
      v81 = 2112;
      v82 = obj;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: %@ : Essential Asset Promises set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)selfCopy _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)selfCopy _onQueue_checkState];
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

- (void)setDataImportPromises:(id)promises
{
  promisesCopy = promises;
  selfCopy = self;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)selfCopy state];
  v7 = sub_100058B68(promisesCopy);
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
  v54[4] = selfCopy;
  v59 = &v69;
  v60 = state;
  v35 = promisesCopy;
  v55 = v35;
  v8 = v7;
  v56 = v8;
  [(IXSCoordinatedAppInstall *)selfCopy _runWithExternalPropertyLock:v54];
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
            uniqueIdentifier = [*(*(&v50 + 1) + 8 * i) uniqueIdentifier];
            v18 = [v16 containsObject:uniqueIdentifier];

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
            uniqueIdentifier2 = [*(*(&v46 + 1) + 8 * j) uniqueIdentifier];
            v25 = [v23 containsObject:uniqueIdentifier2];

            if (v25)
            {
              continue;
            }
          }

          accessQueue = [v22 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005BA0C;
          block[3] = &unk_100100ED8;
          block[4] = v22;
          block[5] = selfCopy;
          dispatch_sync(accessQueue, block);
        }

        v19 = [obj countByEnumeratingWithState:&v46 objects:v80 count:16];
      }

      while (v19);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = selfCopy->_dataImportPromises;
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
          accessQueue2 = [v31 accessQueue];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10005BA14;
          v38[3] = &unk_100100ED8;
          v39 = v8;
          v40 = v31;
          dispatch_sync(accessQueue2, v38);
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
      v76 = selfCopy;
      v77 = 2112;
      v78 = obj;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: %@ : Data Import Promises set: %@", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)selfCopy _onQueue_saveState];
    [(IXSCoordinatedAppInstall *)selfCopy _onQueue_checkState];
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v67, 8);

  _Block_object_dispose(&v69, 8);
}

- (NSUUID)targetGizmoPairingID
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  targetGizmoPairingID = self->_targetGizmoPairingID;

  return targetGizmoPairingID;
}

- (void)setTargetGizmoPairingID:(id)d
{
  dCopy = d;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (([(NSUUID *)self->_targetGizmoPairingID isEqual:dCopy]& 1) == 0)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSCoordinatedAppInstall setTargetGizmoPairingID:]";
      v10 = 2112;
      selfCopy = self;
      v12 = 2112;
      v13 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ : target gizmo pairing ID set: %@", &v8, 0x20u);
    }

    objc_storeStrong(&self->_targetGizmoPairingID, d);
  }
}

- (BOOL)isPaused
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_isPaused;
}

- (void)setIsPaused:(BOOL)paused completion:(id)completion
{
  pausedCopy = paused;
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (self->_isPaused != pausedCopy)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "[IXSCoordinatedAppInstall setIsPaused:completion:]";
      if (pausedCopy)
      {
        v11 = 89;
      }

      else
      {
        v11 = 78;
      }

      v20 = 2112;
      selfCopy = self;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@: setting isPaused to %c", buf, 0x1Cu);
    }

    self->_isPaused = pausedCopy;
    if (pausedCopy)
    {
      [(IXSCoordinatedAppInstall *)self _onQueue_pauseProgress];
    }

    else
    {
      [(IXSCoordinatedAppInstall *)self _onQueue_resumeProgress];
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
    delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005BECC;
    v13[3] = &unk_100102BA0;
    v15 = pausedCopy;
    v13[4] = self;
    v14 = completionCopy;
    sub_100071134(delegateCallQueue, v13);

    v9 = v14;
    goto LABEL_13;
  }

  if (completionCopy)
  {
    delegateCallQueue2 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005BEB8;
    v16[3] = &unk_1001013A0;
    v17 = completionCopy;
    sub_100071134(delegateCallQueue2, v16);

    v9 = v17;
LABEL_13:
  }
}

- (void)externalSetIsPaused:(BOOL)paused completion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005C018;
  block[3] = &unk_100102BA0;
  pausedCopy = paused;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_sync(internalQueue, block);
}

- (BOOL)externalGetIsPaused
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005C100;
  v5[3] = &unk_100101268;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setImportance:(unint64_t)importance
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (importance - 5 >= 0xFFFFFFFFFFFFFFFCLL)
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
    v13[7] = importance;
    [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v13];
    if ((v19[3] & 1) == 0)
    {
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = IXStringForCoordinatorImportance(importance);
        *buf = 136315650;
        v23 = "[IXSCoordinatedAppInstall setImportance:]";
        v24 = 2112;
        selfCopy2 = self;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: set importance to %@", buf, 0x20u);
      }

      v8 = !+[IXFeatureFlags scheduledUpdatesEnabled];
      if (importance == 4)
      {
        LOBYTE(v8) = 1;
      }

      if ((v8 & 1) == 0 && [(IXSCoordinatedAppInstall *)self updateScheduleState]== 1)
      {
        v9 = +[IXSAppUpdateScheduler sharedInstance];
        uniqueIdentifier = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
        [v9 removeUpdateRequestForCoordinatorUUID:uniqueIdentifier];

        [(IXSCoordinatedAppInstall *)self setUpdateScheduleState:0];
      }

      if (importance != 1 && importance != 4)
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
            selfCopy2 = self;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_newRemovability;
}

- (void)setNewRemovability:(unint64_t)removability
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  self->_newRemovability = removability;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (unint64_t)newRemovabilityClient
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_newRemovabilityClient;
}

- (void)setNewRemovabilityClient:(unint64_t)client
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  self->_newRemovabilityClient = client;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (unint64_t)savedRemovability
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_savedRemovability;
}

- (void)setSavedRemovability:(unint64_t)removability
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  self->_savedRemovability = removability;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (unint64_t)savedRemovabilityClient
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_savedRemovabilityClient;
}

- (void)setSavedRemovabilityClient:(unint64_t)client
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  self->_savedRemovabilityClient = client;

  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
}

- (void)setNewRemovabilityState:(unint64_t)state removabilityClient:(unint64_t)client
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (*&self->_newRemovability != __PAIR128__(client, state))
  {
    self->_newRemovability = state;
    self->_newRemovabilityClient = client;

    [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  }
}

- (void)setPriorityBoostCompletion:(id)completion withSourceInfo:(id)info
{
  completionCopy = completion;
  infoCopy = info;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  priorityBoostCompletion = self->_priorityBoostCompletion;
  if (priorityBoostCompletion != completionCopy)
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
        selfCopy2 = self;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@: Disposing of %@", buf, 0x20u);
      }

      delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10005CA98;
      v17[3] = &unk_1001013A0;
      v18 = v10;
      sub_100071134(delegateCallQueue, v17);
    }

    if (completionCopy)
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "[IXSCoordinatedAppInstall setPriorityBoostCompletion:withSourceInfo:]";
        v21 = 2112;
        selfCopy2 = self;
        v23 = 2112;
        v24 = infoCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@: Retaining %@", buf, 0x20u);
      }
    }

    v15 = objc_retainBlock(completionCopy);
    v16 = self->_priorityBoostCompletion;
    self->_priorityBoostCompletion = v15;

    objc_storeStrong(&self->_priorityBoostSourceInfo, info);
  }
}

- (id)priorityBoostCompletion
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = objc_retainBlock(self->_priorityBoostCompletion);

  return v4;
}

- (NSString)priorityBoostSourceInfo
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  priorityBoostSourceInfo = self->_priorityBoostSourceInfo;

  return priorityBoostSourceInfo;
}

- (BOOL)shouldBeginRestoringUserData
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]!= 7)
  {
    return 0;
  }

  userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
  if (userDataPromise)
  {
    v5 = userDataPromise;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    accessQueue = [userDataPromise accessQueue];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10006E704;
    v15 = &unk_100101268;
    v16 = v5;
    v17 = &v18;
    v7 = v5;
    dispatch_sync(accessQueue, &v12);

    LOBYTE(accessQueue) = *(v19 + 24);
    _Block_object_dispose(&v18, 8);

    if (accessQueue)
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

  appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
  v10 = sub_100056AC8(appAssetPromise);

  return v10;
}

- (void)prioritizeWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005CD6C;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)_onQueue_prioritizeWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  state = [(IXSCoordinatedAppInstall *)self state];
  if (state != 32 && state != 1)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[IXSCoordinatedAppInstall _onQueue_prioritizeWithCompletion:]";
      v18 = 2112;
      selfCopy = self;
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

    delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005D028;
    v12[3] = &unk_100101B08;
    v12[4] = self;
    v13 = completionCopy;
    sub_100071134(delegateCallQueue, v12);

    v8 = v13;
    goto LABEL_11;
  }

  if (completionCopy)
  {
    delegateCallQueue2 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005D014;
    v14[3] = &unk_1001013A0;
    v15 = completionCopy;
    sub_100071134(delegateCallQueue2, v14);

    v8 = v15;
LABEL_11:
  }
}

- (void)_onQueue_unregister
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXSCoordinatedAppInstall *)self isTracked])
  {
    v4 = +[IXSCoordinatorManager sharedInstance];
    [v4 unregisterCoordinator:self];
  }
}

- (BOOL)isComplete
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_complete;
}

- (void)setComplete:(BOOL)complete
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
        identity = [(IXSCoordinatedAppInstall *)self identity];
        *v62 = 136315394;
        v63 = "[IXSCoordinatedAppInstall setComplete:]";
        v64 = 2112;
        v65 = identity;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: Waiting for pending parallel placeholder uninstall to complete", v62, 0x16u);
      }

      outstandingInstallOperationsGroup = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
      dispatch_group_wait(outstandingInstallOperationsGroup, 0xFFFFFFFFFFFFFFFFLL);

      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identity2 = [(IXSCoordinatedAppInstall *)self identity];
        *v62 = 136315394;
        v63 = "[IXSCoordinatedAppInstall setComplete:]";
        v64 = 2112;
        v65 = identity2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@: Pending parallel placeholder uninstall completed on group", v62, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self setCompletedRecordPromise:*(*&buf[8] + 40)];
      _Block_object_dispose(buf, 8);
    }

    [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
    appInstallPowerAssertion = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];
    [appInstallPowerAssertion invalidate];

    [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:0];
    cacheDeleteCallback = [(IXSCoordinatedAppInstall *)self cacheDeleteCallback];
    v14 = cacheDeleteCallback;
    if (cacheDeleteCallback)
    {
      (*(cacheDeleteCallback + 16))(cacheDeleteCallback);
    }

    [(IXSCoordinatedAppInstall *)self setStagedUpdateMetadata:0];
    [(IXSCoordinatedAppInstall *)self setCacheDeleteCallback:0];
    self->_complete = complete;
    error = [(IXSCoordinatedAppInstall *)self error];
    v16 = error == 0;

    publishedInstallProgress = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
    v18 = publishedInstallProgress;
    if (v16)
    {
      [publishedInstallProgress finishProgressWithState:5];

      placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      sub_10005DAE8(placeholderPromise);

      appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
      sub_10005DAE8(appAssetPromise);

      userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
      sub_10005DAE8(userDataPromise);

      deviceSecurityPromise = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
      sub_10005DAE8(deviceSecurityPromise);

      preparationPromise = [(IXSCoordinatedAppInstall *)self preparationPromise];
      sub_10005DAE8(preparationPromise);

      installOptionsPromise = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
      sub_10005DAE8(installOptionsPromise);

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      initialODRAssetPromises = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
      v26 = [initialODRAssetPromises countByEnumeratingWithState:&v54 objects:v61 count:16];
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
              objc_enumerationMutation(initialODRAssetPromises);
            }

            sub_10005DAE8(*(*(&v54 + 1) + 8 * v28));
            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [initialODRAssetPromises countByEnumeratingWithState:&v54 objects:v61 count:16];
        }

        while (v26);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      essentialAssetPromises = [(IXSCoordinatedAppInstall *)self essentialAssetPromises];
      v30 = [essentialAssetPromises countByEnumeratingWithState:&v50 objects:v60 count:16];
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
              objc_enumerationMutation(essentialAssetPromises);
            }

            sub_10005DAE8(*(*(&v50 + 1) + 8 * v32));
            v32 = v32 + 1;
          }

          while (v30 != v32);
          v30 = [essentialAssetPromises countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v30);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      dataImportPromises = [(IXSCoordinatedAppInstall *)self dataImportPromises];
      v34 = [dataImportPromises countByEnumeratingWithState:&v46 objects:v59 count:16];
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
              objc_enumerationMutation(dataImportPromises);
            }

            sub_10005DAE8(*(*(&v46 + 1) + 8 * v36));
            v36 = v36 + 1;
          }

          while (v34 != v36);
          v34 = [dataImportPromises countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v34);
      }

      seed = [(IXSCoordinatedAppInstall *)self seed];
      v38 = [seed intent] - 1;
      if (v38 > 6)
      {
        v39 = 18;
      }

      else
      {
        v39 = qword_1000BAD08[v38];
      }

      identity3 = [(IXSCoordinatedAppInstall *)self identity];
      bundleID = [identity3 bundleID];
      [AITransactionLog logStep:v39 byParty:4 phase:2 success:1 forBundleID:bundleID description:@"Coordinator completed successfully."];

      [(IXSCoordinatedAppInstall *)self _onQueue_unregister];
      completedRecordPromise = [(IXSCoordinatedAppInstall *)self completedRecordPromise];
      delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10005DB90;
      v44[3] = &unk_100100ED8;
      v44[4] = self;
      v45 = completedRecordPromise;
      v18 = completedRecordPromise;
      sub_100071134(delegateCallQueue, v44);
    }

    else
    {
      [publishedInstallProgress finishProgressWithState:4];
    }

    [(IXSCoordinatedAppInstall *)self setPriorityBoostCompletion:0 withSourceInfo:0];
    [(IXSCoordinatedAppInstall *)self setCompletedRecordPromise:0];
  }
}

- (BOOL)_placeholderOrParallelPlaceholderIsInstalledWithRecord:(id *)record
{
  v5 = [LSApplicationRecord alloc];
  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];
  v14 = 0;
  v8 = [v5 initForInstallMachineryWithBundleIdentifier:bundleID placeholder:1 error:&v14];
  v9 = v14;

  if (v8)
  {
    if (record)
    {
      v10 = v8;
      *record = v8;
    }

    isPlaceholder = [v8 isPlaceholder];
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000A1894();
    }

    isPlaceholder = 0;
  }

  return isPlaceholder;
}

- (void)_asyncUpdatePlaceholderMetadataWithInstallType:(unint64_t)type reason:(int64_t)reason underlyingError:(id)error client:(unint64_t)client
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005DDAC;
  v8[3] = &unk_100102BF0;
  typeCopy = type;
  reasonCopy = reason;
  selfCopy = self;
  errorCopy = error;
  clientCopy = client;
  v7 = errorCopy;
  [(IXSCoordinatedAppInstall *)selfCopy _runAsyncBlockWithDescription:@"placeholder metadata update" onLaunchServicesQueue:v8];
}

- (void)_onQueue_updatePlaceholderForFailureReason:(id)reason client:(unint64_t)client installType:(unint64_t)type
{
  reasonCopy = reason;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v10 = reasonCopy;
  domain = [v10 domain];
  v12 = [domain isEqualToString:@"IXUserPresentableErrorDomain"];

  if (v12)
  {
    code = [v10 code];
    userInfo = [v10 userInfo];
    v15 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
  }

  else
  {
    code = 1;
    v15 = v10;
  }

  placeholderInstallState = [(IXSCoordinatedAppInstall *)self placeholderInstallState];
  if (placeholderInstallState - 1 < 3)
  {
    v22 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[IXSCoordinatedAppInstall _onQueue_updatePlaceholderForFailureReason:client:installType:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Unexpectedly found placeholder in staging state", &v23, 0xCu);
    }
  }

  else if (placeholderInstallState - 4 >= 2)
  {
    if (placeholderInstallState == 6 || [(IXSCoordinatedAppInstall *)self placeholderIsInstalled])
    {
      [(IXSCoordinatedAppInstall *)self _asyncUpdatePlaceholderMetadataWithInstallType:type reason:code underlyingError:v15 client:client];
    }
  }

  else
  {
    v17 = objc_opt_new();
    [(IXSCoordinatedAppInstall *)self setPlaceholderFailureInfo:v17];

    placeholderFailureInfo = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [placeholderFailureInfo setInstallType:type];

    placeholderFailureInfo2 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [placeholderFailureInfo2 setReason:code];

    placeholderFailureInfo3 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [placeholderFailureInfo3 setUnderlyingError:v15];

    placeholderFailureInfo4 = [(IXSCoordinatedAppInstall *)self placeholderFailureInfo];
    [placeholderFailureInfo4 setClient:client];
  }
}

- (void)setCompletedRecordPromise:(id)promise
{
  promiseCopy = promise;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  completedRecordPromise = self->_completedRecordPromise;
  p_completedRecordPromise = &self->_completedRecordPromise;
  if (completedRecordPromise != promiseCopy)
  {
    objc_storeStrong(p_completedRecordPromise, promise);
  }
}

- (LSRecordPromise)completedRecordPromise
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  completedRecordPromise = self->_completedRecordPromise;

  return completedRecordPromise;
}

- (BOOL)_shouldRemovePlaceholderForReason:(id)reason
{
  reasonCopy = reason;
  domain = [reasonCopy domain];
  if ([domain isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(reasonCopy, "code") == 3)
  {
    v5 = 1;
  }

  else
  {
    domain2 = [reasonCopy domain];
    if ([domain2 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(reasonCopy, "code") == 5)
    {
      v5 = 1;
    }

    else
    {
      domain3 = [reasonCopy domain];
      if ([domain3 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(reasonCopy, "code") == 6)
      {
        v5 = 1;
      }

      else
      {
        domain4 = [reasonCopy domain];
        if ([domain4 isEqualToString:@"IXUserPresentableErrorDomain"] && objc_msgSend(reasonCopy, "code") == 13)
        {
          v5 = 1;
        }

        else
        {
          domain5 = [reasonCopy domain];
          if ([domain5 isEqualToString:@"IXUserPresentableErrorDomain"])
          {
            v5 = [reasonCopy code] == 15;
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

- (void)_onQueue_handleAppAssetPromiseCancellationWhenRestoringWithReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXSCoordinatedAppInstall *)self _shouldRemovePlaceholderForReason:reasonCopy])
  {
    [(IXSCoordinatedAppInstall *)self _onQueue_internal_cancelForReason:reasonCopy client:client];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[IXSCoordinatedAppInstall _onQueue_handleAppAssetPromiseCancellationWhenRestoringWithReason:client:]";
      v14 = 2112;
      selfCopy = self;
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
      delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10005E5B0;
      v10[3] = &unk_1001010A0;
      v10[4] = self;
      sub_100071134(delegateCallQueue, v10);
    }

    [(IXSCoordinatedAppInstall *)self _onQueue_updatePlaceholderForFailureReason:reasonCopy client:client installType:7];
  }
}

- (void)_onQueue_removeParallelPlaceholder:(BOOL *)placeholder
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (([(IXSCoordinatedAppInstall *)self placeholderInstallState]& 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    identity = [(IXSCoordinatedAppInstall *)self identity];
    v7 = IXStringForClientID([(IXSCoordinatedAppInstall *)self creator]);
    v8 = [NSString stringWithFormat:@"Cleaning up parallel placeholder for %@ after failure (coordinator creator: %@)", identity, v7];

    if (placeholder)
    {
      *placeholder = 1;
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

- (BOOL)_onQueue_shouldDeletePlaceholderOnCancelationForReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  placeholderDisposition = [(IXSCoordinatedAppInstall *)self placeholderDisposition];
  if (placeholderDisposition == 3)
  {
    v9 = 0;
  }

  else if (placeholderDisposition == 2 || client == 8 || [(IXSCoordinatedAppInstall *)self _shouldRemovePlaceholderForReason:reasonCopy])
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
      placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      v12 = placeholderPromise;
      if (placeholderPromise)
      {
        accessQueue = [placeholderPromise accessQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10005EA2C;
        v14[3] = &unk_1001013C8;
        v15 = v12;
        v16 = &v17;
        dispatch_sync(accessQueue, v14);
      }
    }

    v9 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  return v9 & 1;
}

- (void)_onQueue_cancelPlaceholderIfNeededForReason:(id)reason client:(unint64_t)client needsLSDatabaseSync:(BOOL *)sync
{
  reasonCopy = reason;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v11 = effectiveIntent;
  if (effectiveIntent <= 3)
  {
    if (effectiveIntent != 1)
    {
      if (effectiveIntent == 2)
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_removeParallelPlaceholder:sync];
        goto LABEL_23;
      }

      if (effectiveIntent != 3)
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

    placeholderDisposition = [(IXSCoordinatedAppInstall *)self placeholderDisposition];
    needsPostProcessing = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
    appInstallState = [(IXSCoordinatedAppInstall *)self appInstallState];
    if (![(IXSCoordinatedAppInstall *)self _onQueue_shouldDeletePlaceholderOnCancelationForReason:reasonCopy client:client])
    {
      if (appInstallState == 7)
      {
        v26 = needsPostProcessing;
      }

      else
      {
        v26 = 0;
      }

      if (v11 == 1 || v26)
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_removeParallelPlaceholder:sync];
      }

      selfCopy2 = self;
      v14 = reasonCopy;
      clientCopy2 = client;
      originalInstallType = 7;
      goto LABEL_22;
    }

    v29 = needsPostProcessing;
    identity = [(IXSCoordinatedAppInstall *)self identity];
    bundleID = [identity bundleID];
    v21 = IXStringForClientID(client);
    v22 = v21;
    if (placeholderDisposition == 1)
    {
      v23 = [NSString stringWithFormat:@"Cleaning up placeholder for %@ after cancelation with reason %@ client %@", bundleID, reasonCopy, v21];
    }

    else
    {
      v27 = IXStringForPlaceholderDisposition(placeholderDisposition);
      v23 = [NSString stringWithFormat:@"Cleaning up placeholder for %@ after cancelation with reason %@ client %@ placeholder disposition %@", bundleID, reasonCopy, v22, v27];
    }

    if (sync)
    {
      *sync = 1;
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10005EE0C;
    v30[3] = &unk_100102920;
    v32 = v11 != 1 || (v29 & 1) == 0 || appInstallState != 7;
    v30[4] = self;
    v31 = v23;
    v28 = v23;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"placeholder cleanup after cancel" onUninstallQueue:v30];
  }

  else
  {
    if ((effectiveIntent - 4) < 3)
    {
      originalInstallType = [(IXSCoordinatedAppInstall *)self originalInstallType];
      selfCopy2 = self;
      v14 = reasonCopy;
      clientCopy2 = client;
LABEL_22:
      [(IXSCoordinatedAppInstall *)selfCopy2 _onQueue_updatePlaceholderForFailureReason:v14 client:clientCopy2 installType:originalInstallType];
      goto LABEL_23;
    }

    if (effectiveIntent != 7)
    {
      goto LABEL_11;
    }
  }

LABEL_23:
}

- (BOOL)cancelForReason:(id)reason client:(unint64_t)client needsLSDatabaseSync:(BOOL *)sync error:(id *)error
{
  reasonCopy = reason;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005F0D4;
  v15[3] = &unk_100102C18;
  v15[4] = self;
  v16 = reasonCopy;
  v17 = &v21;
  clientCopy = client;
  syncCopy = sync;
  errorCopy = error;
  v13 = reasonCopy;
  dispatch_sync(internalQueue2, v15);

  LOBYTE(sync) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  return sync;
}

- (id)_onQueue_localizedAppName
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];

  v11 = 0;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleID allowPlaceholder:1 error:&v11];
  v7 = v11;
  if (v6)
  {
    localizedName = [v6 localizedName];
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[IXSCoordinatedAppInstall _onQueue_localizedAppName]";
      v14 = 2112;
      v15 = bundleID;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app record for bundleID %@ due to %@", buf, 0x20u);
    }

    localizedName = 0;
  }

  return localizedName;
}

- (void)_onQueue_cancelStagedUpdate
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  stagedUpdateMetadata = [(IXSCoordinatedAppInstall *)self stagedUpdateMetadata];
  v5 = stagedUpdateMetadata;
  if (stagedUpdateMetadata)
  {
    stagedIdentifier = [stagedUpdateMetadata stagedIdentifier];
    [(IXSCoordinatedAppInstall *)self setStagedUpdateMetadata:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005F37C;
    v8[3] = &unk_1001010A0;
    v9 = stagedIdentifier;
    v7 = stagedIdentifier;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Canceling staged update" onLaunchServicesQueue:v8];
  }
}

- (BOOL)_onQueue_internal_cancelForReason:(id)reason client:(unint64_t)client needsLSDatabaseSync:(BOOL *)sync error:(id *)error
{
  reasonCopy = reason;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  savedRemovability = [(IXSCoordinatedAppInstall *)self savedRemovability];
  seed = [(IXSCoordinatedAppInstall *)self seed];
  intent = [seed intent];

  v98 = 0;
  if (reasonCopy)
  {
    error = [(IXSCoordinatedAppInstall *)self error];

    if (error)
    {
      v16 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        selfCopy2 = reasonCopy;
        v104 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Ignoring cancel request with reason %@ for coordinator that was already canceled: %@", buf, 0x20u);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = reasonCopy;
    }

    else
    {
      v26 = sub_10000A95C(reasonCopy);
      v27 = v26;
      v28 = reasonCopy;
      if (v26)
      {
        v28 = v26;
      }

      v83 = v27;
      v29 = sub_1000031B0(off_100121958);
      syncCopy = sync;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = IXStringForClientID(client);
        *buf = 136315906;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        selfCopy2 = self;
        v104 = 2112;
        selfCopy = v30;
        v106 = 2112;
        v107 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: %@ : canceled by client %@ for reason %@", buf, 0x2Au);
      }

      if (savedRemovability)
      {
        v31 = +[IXSAppRemovabilityManager sharedInstance];
        identity = [(IXSCoordinatedAppInstall *)self identity];
        v97 = 0;
        v33 = [v31 setRemovability:savedRemovability forAppWithIdentity:identity byClient:-[IXSCoordinatedAppInstall savedRemovabilityClient](self error:{"savedRemovabilityClient"), &v97}];
        v34 = v97;

        if ((v33 & 1) == 0)
        {
          v35 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            identity2 = [(IXSCoordinatedAppInstall *)self identity];
            bundleID = [identity2 bundleID];
            v38 = IXStringForAppRemovability(savedRemovability);
            *buf = 136315906;
            v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
            v102 = 2112;
            selfCopy2 = bundleID;
            v104 = 2112;
            selfCopy = v38;
            v106 = 2112;
            v107 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: Failed to restore removability for %@ to %@ with error: %@", buf, 0x2Au);
          }
        }
      }

      _onQueue_localizedAppName = [(IXSCoordinatedAppInstall *)self _onQueue_localizedAppName];
      assertionRetryTimer = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];

      if (assertionRetryTimer)
      {
        assertionRetryTimer2 = [(IXSCoordinatedAppInstall *)self assertionRetryTimer];
        dispatch_source_cancel(assertionRetryTimer2);

        [(IXSCoordinatedAppInstall *)self setAssertionRetryTimer:0];
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_cancelProgress];
      [(IXSCoordinatedAppInstall *)self _onQueue_cancelPlaceholderIfNeededForReason:v28 client:client needsLSDatabaseSync:&v98];
      [(IXSCoordinatedAppInstall *)self _onQueue_cancelStagedUpdate];
      v41 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        identity3 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        selfCopy2 = identity3;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: %@: Waiting for pending installs to complete", buf, 0x16u);
      }

      outstandingInstallOperationsGroup = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
      dispatch_group_wait(outstandingInstallOperationsGroup, 0xFFFFFFFFFFFFFFFFLL);

      v44 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        identity4 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315394;
        v101 = "[IXSCoordinatedAppInstall _onQueue_internal_cancelForReason:client:needsLSDatabaseSync:error:]";
        v102 = 2112;
        selfCopy2 = identity4;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s: %@: Pending installs completed on group", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self setError:v28];
      [(IXSCoordinatedAppInstall *)self setErrorSourceIdentifier:client];
      [(IXSCoordinatedAppInstall *)self setPlaceholderInstallState:8];
      [(IXSCoordinatedAppInstall *)self setAppInstallState:8];
      [(IXSCoordinatedAppInstall *)self setPostProcessingAssertionState:8];
      [(IXSCoordinatedAppInstall *)self setAppInstallPowerAssertion:0];
      [(IXSCoordinatedAppInstall *)self setTermAssertion:0];
      placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      sub_100057754(placeholderPromise, v28, client);

      appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
      sub_100057754(appAssetPromise, v28, client);

      userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
      sub_100057754(userDataPromise, v28, client);

      deviceSecurityPromise = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
      sub_100057754(deviceSecurityPromise, v28, client);

      preparationPromise = [(IXSCoordinatedAppInstall *)self preparationPromise];
      sub_100057754(preparationPromise, v28, client);

      installOptionsPromise = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
      sub_100057754(installOptionsPromise, v28, client);

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      initialODRAssetPromises = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
      v53 = [initialODRAssetPromises countByEnumeratingWithState:&v93 objects:v99 count:16];
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
              objc_enumerationMutation(initialODRAssetPromises);
            }

            sub_100057754(*(*(&v93 + 1) + 8 * i), v28, client);
          }

          v54 = [initialODRAssetPromises countByEnumeratingWithState:&v93 objects:v99 count:16];
        }

        while (v54);
      }

      if (intent >= 8)
      {
        v57 = [NSString stringWithFormat:@"Unknown intent value %lu", intent];
      }

      else
      {
        v57 = *(&off_100103100 + intent);
      }

      v58 = IXStringForClientID(client);
      v86 = [NSString stringWithFormat:@"Canceled coordinator with intent %@ by client %@ for reason %@", v57, v58, v28];

      if ((intent - 1) > 6)
      {
        v59 = 18;
      }

      else
      {
        v59 = qword_1000BAD08[(intent - 1)];
      }

      identity5 = [(IXSCoordinatedAppInstall *)self identity];
      bundleID2 = [identity5 bundleID];
      [AITransactionLog logStep:v59 byParty:4 phase:2 success:0 forBundleID:bundleID2 description:v86];

      [(IXSCoordinatedAppInstall *)self _onQueue_unregister];
      domain = [(IXSCoordinatedAppInstall *)v28 domain];
      v63 = [domain isEqualToString:@"IXUserPresentableErrorDomain"];

      if (v63)
      {
        v64 = +[IXSErrorPresenter sharedPresenter];
        bundleID3 = _onQueue_localizedAppName;
        if (!_onQueue_localizedAppName)
        {
          identity6 = [(IXSCoordinatedAppInstall *)self identity];
          bundleID3 = [identity6 bundleID];
        }

        v91 = 0;
        v92 = 0;
        v66 = [v64 localizedErrorForAppName:bundleID3 unlocalizedError:v28 localizedError:&v92 withError:&v91];
        v21 = v92;
        v22 = v91;
        if (!_onQueue_localizedAppName)
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
            selfCopy2 = v22;
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

      delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v88[2] = sub_10005FFA4;
      v88[3] = &unk_1001018D0;
      v88[4] = self;
      v23 = v28;
      v89 = v23;
      clientCopy = client;
      sub_100071134(delegateCallQueue, v88);

      [(IXSCoordinatedAppInstall *)self setComplete:1];
      domain2 = [(IXSCoordinatedAppInstall *)v23 domain];
      v71 = [domain2 isEqualToString:@"IXUserPresentableErrorDomain"];

      if (v71)
      {
        v87 = reasonCopy;
        userInfo = [(IXSCoordinatedAppInstall *)v23 userInfo];
        v73 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

        userInfo2 = [(IXSCoordinatedAppInstall *)v23 userInfo];
        v75 = [userInfo2 objectForKeyedSubscript:@"AlertUser"];
        v76 = sub_10008F068(v75, 0);

        if (v76)
        {
          v77 = +[IXSErrorPresenter sharedPresenter];
          identity7 = [(IXSCoordinatedAppInstall *)self identity];
          [v77 presentErrorForIdentity:identity7 code:-[IXSCoordinatedAppInstall code](v23 underlyingError:"code") errorSource:{v73, client}];
        }

        v17 = 0;
        v20 = v83;
        sync = syncCopy;
        v18 = _onQueue_localizedAppName;
        reasonCopy = v87;
      }

      else
      {
        v17 = 0;
        v20 = v83;
        sync = syncCopy;
        v18 = _onQueue_localizedAppName;
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
    if (error)
    {
      v79 = v17;
      *error = v17;
      goto LABEL_60;
    }
  }

  if (reasonCopy && sync)
  {
    *sync = v98;
  }

LABEL_60:

  return reasonCopy != 0;
}

- (void)_onQueue_internal_saveState
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:self forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v4 encodedData];

  v6 = [IXSCoordinatorManager savePathForCoordinator:self];
  v11 = 0;
  v7 = [encodedData writeToURL:v6 options:268435457 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      path = [v6 path];
      *buf = 136315906;
      v13 = "[IXSCoordinatedAppInstall _onQueue_internal_saveState]";
      v14 = 2112;
      selfCopy = self;
      v16 = 2112;
      v17 = path;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to write coordinator %@ to disk at %@: %@", buf, 0x2Au);
    }
  }
}

- (void)_onQueue_saveState
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
      selfCopy = self;
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

- (void)setIsTracked:(BOOL)tracked
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100060604;
  v12[3] = &unk_100101998;
  v12[4] = self;
  trackedCopy = tracked;
  [(IXSCoordinatedAppInstall *)self _runWithExternalPropertyLock:v12];
  if (!tracked)
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
        path = [v5 path];
        *buf = 136315906;
        v15 = "[IXSCoordinatedAppInstall setIsTracked:]";
        v16 = 2112;
        selfCopy = self;
        v18 = 2112;
        v19 = path;
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Failed to remove saved coordinator %@ at %@ : %@", buf, 0x2Au);
      }
    }
  }
}

- (void)_updatePendingOperationsForChangeFromPreviousState:(unint64_t)state toNewState:(unint64_t)newState
{
  if (state || !sub_100060704(newState))
  {
    if (!sub_100060704(state) || (sub_100060704(newState) & 1) != 0)
    {
      return;
    }

    v8 = +[IXSPendingOperationsTracker sharedInstance];
    identity = [(IXSCoordinatedAppInstall *)self identity];
    [v8 endPendingOperationForIdentity:identity];
  }

  else
  {
    v8 = +[IXSPendingOperationsTracker sharedInstance];
    identity = [(IXSCoordinatedAppInstall *)self identity];
    [v8 beginPendingOperationForIdentity:identity];
  }
}

- (void)setPlaceholderInstallState:(unint64_t)state withLSRecordPromiseForCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  placeholderInstallState = self->_placeholderInstallState;
  if (placeholderInstallState != state)
  {
    self->_placeholderInstallState = state;
    [(IXSCoordinatedAppInstall *)self _updatePendingOperationsForChangeFromPreviousState:placeholderInstallState toNewState:state];
    if (state == 7)
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[IXSCoordinatedAppInstall setPlaceholderInstallState:withLSRecordPromiseForCompletion:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Placeholder install completed.", buf, 0x16u);
      }

      [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
      if ([(IXSCoordinatedAppInstall *)self effectiveIntent]!= 6 && [(IXSCoordinatedAppInstall *)self effectiveIntent]!= 7)
      {
        [(IXSCoordinatedAppInstall *)self _onQueue_updateLoadingProgress];
      }

      delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100060A34;
      v13[3] = &unk_100100ED8;
      v13[4] = self;
      v14 = completionCopy;
      sub_100071134(delegateCallQueue, v13);

      if (![(IXSCoordinatedAppInstall *)self sentBeginRestoringUserData]&& [(IXSCoordinatedAppInstall *)self shouldBeginRestoringUserData])
      {
        [(IXSCoordinatedAppInstall *)self setSentBeginRestoringUserData:1];
        delegateCallQueue2 = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100060A8C;
        v12[3] = &unk_1001010A0;
        v12[4] = self;
        sub_100071134(delegateCallQueue2, v12);
      }
    }
  }
}

- (void)setAppInstallState:(unint64_t)state
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (self->_appInstallState != state)
  {
    self->_appInstallState = state;

    [IXSCoordinatedAppInstall _updatePendingOperationsForChangeFromPreviousState:"_updatePendingOperationsForChangeFromPreviousState:toNewState:" toNewState:?];
  }
}

- (id)promiseStateDescription
{
  placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];
  v4 = sub_100060C8C(placeholderPromise, 80, 112, 48);

  appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
  LODWORD(placeholderPromise) = sub_100060C8C(appAssetPromise, 65, 97, 49);

  userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
  v7 = sub_100060C8C(userDataPromise, 85, 117, 50);

  installOptionsPromise = [(IXSCoordinatedAppInstall *)self installOptionsPromise];
  v9 = sub_100060C8C(installOptionsPromise, 73, 105, 51);

  deviceSecurityPromise = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];
  LODWORD(installOptionsPromise) = sub_100060C8C(deviceSecurityPromise, 83, 115, 52);

  return [NSString stringWithFormat:@"%c%c%c%c%c", v4, placeholderPromise, v7, v9, installOptionsPromise];
}

- (NSString)description
{
  originalIntent = [(IXSCoordinatedAppInstall *)self originalIntent];
  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  if (originalIntent == effectiveIntent)
  {
    if (originalIntent >= 8)
    {
      v5 = [NSString stringWithFormat:@"Unknown intent value %lu", originalIntent];
    }

    else
    {
      v5 = *(&off_100103100 + originalIntent);
    }
  }

  else
  {
    v6 = effectiveIntent;
    if (originalIntent >= 8)
    {
      v7 = [NSString stringWithFormat:@"Unknown intent value %lu", originalIntent];
    }

    else
    {
      v7 = *(&off_100103100 + originalIntent);
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

  coordinatorScope = [(IXSCoordinatedAppInstall *)self coordinatorScope];
  if (coordinatorScope == 2)
  {
    v12 = @"[G]";
  }

  else if (coordinatorScope == 1)
  {
    scopedToConnection = [(IXSCoordinatedAppInstall *)self scopedToConnection];
    clientName = [scopedToConnection clientName];
    v12 = [NSString stringWithFormat:@"[P=%@]", clientName];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"[U=%hhu]", coordinatorScope];
  }

  appAssetPromiseDRI = [(IXSCoordinatedAppInstall *)self appAssetPromiseDRI];
  creator = [(IXSCoordinatedAppInstall *)self creator];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  identity = [(IXSCoordinatedAppInstall *)self identity];
  uniqueIdentifier = [(IXSCoordinatedAppInstall *)self uniqueIdentifier];
  v19 = IXStringForClientID([(IXSCoordinatedAppInstall *)self creator]);
  if (appAssetPromiseDRI == creator)
  {
    v20 = IXStringForCoordinatorImportance([(IXSCoordinatedAppInstall *)self importance]);
    state = [(IXSCoordinatedAppInstall *)self state];
    if (state > 0x20)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(&off_100102EF0 + state);
    }

    promiseStateDescription = [(IXSCoordinatedAppInstall *)self promiseStateDescription];
    v27 = [NSString stringWithFormat:@"<%@<%p> %@ identifier:%@ uuid:%@ intent:%@ creator/appDRI:%@ importance:%@ state:%@ promise-state:%@>", v16, self, v12, identity, uniqueIdentifier, v5, v19, v20, v22, promiseStateDescription];
  }

  else
  {
    v32 = v12;
    v23 = v5;
    v20 = IXStringForClientID([(IXSCoordinatedAppInstall *)self appAssetPromiseDRI]);
    promiseStateDescription = IXStringForCoordinatorImportance([(IXSCoordinatedAppInstall *)self importance]);
    state2 = [(IXSCoordinatedAppInstall *)self state];
    if (state2 > 0x20)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(&off_100102EF0 + state2);
    }

    promiseStateDescription2 = [(IXSCoordinatedAppInstall *)self promiseStateDescription];
    v31 = v26;
    v30 = v23;
    v5 = v23;
    v12 = v32;
    v27 = [NSString stringWithFormat:@"<%@<%p> %@ identifier:%@ uuid:%@ intent:%@ creator:%@ appDRI:%@ importance:%@ state:%@ promise-state:%@>", v16, self, v32, identity, uniqueIdentifier, v30, v19, v20, promiseStateDescription, v31, promiseStateDescription2];
  }

  return v27;
}

- (IXApplicationIdentity)identity
{
  seed = [(IXSCoordinatedAppInstall *)self seed];
  identity = [seed identity];

  return identity;
}

- (unint64_t)installationDomain
{
  seed = [(IXSCoordinatedAppInstall *)self seed];
  installationDomain = [seed installationDomain];

  return installationDomain;
}

- (NSUUID)uniqueIdentifier
{
  seed = [(IXSCoordinatedAppInstall *)self seed];
  uniqueIdentifier = [seed uniqueIdentifier];

  return uniqueIdentifier;
}

- (unint64_t)creator
{
  seed = [(IXSCoordinatedAppInstall *)self seed];
  creator = [seed creator];

  return creator;
}

- (unint64_t)originalIntent
{
  seed = [(IXSCoordinatedAppInstall *)self seed];
  intent = [seed intent];

  return intent;
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

- (void)setEffectiveIntent:(unint64_t)intent
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000613C0;
  v6[3] = &unk_100100DF8;
  v6[4] = self;
  v6[5] = intent;
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

- (void)setCoordinatorScope:(unsigned __int8)scope
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100061590;
  v6[3] = &unk_100102C40;
  scopeCopy = scope;
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

- (void)setScopedToConnection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000617B0;
  v4[3] = &unk_100100ED8;
  selfCopy = self;
  connectionCopy = connection;
  v3 = connectionCopy;
  [(IXSCoordinatedAppInstall *)selfCopy _runWithExternalPropertyLock:v4];
}

- (NSSet)promiseUUIDs
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v4 = objc_opt_new();
  internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000618AC;
  v12 = &unk_100100ED8;
  selfCopy = self;
  v14 = v4;
  v6 = v4;
  dispatch_sync(internalQueue2, &v9);

  v7 = [v6 copy];

  return v7;
}

- (IXProgressHint)progressHintWithDefault
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = self->_progressHint;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    needsPostProcessing = [(IXSCoordinatedAppInstall *)self needsPostProcessing];
    if (needsPostProcessing)
    {
      v7 = &off_10010DDF8;
    }

    else
    {
      v7 = &off_10010DE28;
    }

    if (needsPostProcessing)
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  progressHint = self->_progressHint;

  return progressHint;
}

- (void)setProgressHint:(id)hint
{
  hintCopy = hint;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[IXSCoordinatedAppInstall setProgressHint:]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2112;
    v13 = hintCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: setting progress hint to %@", &v8, 0x20u);
  }

  progressHint = self->_progressHint;
  self->_progressHint = hintCopy;
}

- (BOOL)currentProgressPhaseIsComplete
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_currentProgressPhaseIsComplete;
}

- (void)setCurrentProgressPhaseIsComplete:(BOOL)complete
{
  completeCopy = complete;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  self->_currentProgressPhaseIsComplete = completeCopy;
  if (completeCopy)
  {
    cachedCurrentPhaseProgress = self->_cachedCurrentPhaseProgress;
    self->_cachedCurrentPhaseProgress = 0;
  }
}

- (void)_pauseProgressObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (objectCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100062974;
    v6[3] = &unk_1001010A0;
    v7 = objectCopy;
    [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Pause progress" onLaunchServicesQueue:v6];
  }
}

- (void)_onQueue_pauseProgress
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062A44;
  v4[3] = &unk_100102C68;
  v4[4] = self;
  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:v4];
}

- (void)_onQueue_resumeProgress
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:&stru_100102CA8];
}

- (void)_onQueue_cancelProgress:(id)progress
{
  progressCopy = progress;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (progressCopy)
  {
    [progressCopy setInstallState:4];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    [v5 installPhaseFinishedForProgress:progressCopy];
  }

  [(IXSCoordinatedAppInstall *)self setCoordinatorProgress:0];
  [(IXSCoordinatedAppInstall *)self setCurrentProgressPhaseIsComplete:1];
}

- (void)_onQueue_cancelProgress
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062C28;
  v4[3] = &unk_100102C68;
  v4[4] = self;
  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:v4];
}

- (void)_onQueue_finishProgress:(id)progress
{
  progressCopy = progress;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (progressCopy)
  {
    [progressCopy setInstallState:5];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    [v5 installPhaseFinishedForProgress:progressCopy];
  }

  coordinatorProgress = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [coordinatorProgress finishPostProcessing];

  coordinatorProgress2 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [coordinatorProgress2 finishInstalling];

  coordinatorProgress3 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
  [coordinatorProgress3 finishLoading];

  [(IXSCoordinatedAppInstall *)self setCurrentProgressPhaseIsComplete:1];
}

- (void)_onQueue_finishProgress
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062DA8;
  v4[3] = &unk_100102C68;
  v4[4] = self;
  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressAndRun:v4];
}

- (void)_onQueue_fetchProgressAndRun:(id)run
{
  runCopy = run;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXSCoordinatedAppInstall *)self needsPostProcessing]&& [(IXSCoordinatedAppInstall *)self sentBeginPostProcessing])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(IXSCoordinatedAppInstall *)self _onQueue_fetchProgressForPhase:v5 andRun:runCopy];
}

- (void)_onQueue_fetchProgressForPhase:(unint64_t)phase andRun:(id)run
{
  runCopy = run;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXSCoordinatedAppInstall *)self currentProgressPhaseIsComplete])
  {
    runCopy[2](runCopy, 0);
    goto LABEL_8;
  }

  cachedCurrentPhaseProgress = [(IXSCoordinatedAppInstall *)self cachedCurrentPhaseProgress];

  if (cachedCurrentPhaseProgress)
  {
    cachedCurrentPhaseProgress2 = [(IXSCoordinatedAppInstall *)self cachedCurrentPhaseProgress];
    (runCopy)[2](runCopy, cachedCurrentPhaseProgress2);
LABEL_7:

    goto LABEL_8;
  }

  pendingProgressRequests = [(IXSCoordinatedAppInstall *)self pendingProgressRequests];

  if (pendingProgressRequests)
  {
    cachedCurrentPhaseProgress2 = [(IXSCoordinatedAppInstall *)self pendingProgressRequests];
    v11 = objc_retainBlock(runCopy);
    [cachedCurrentPhaseProgress2 addObject:v11];

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
    placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];

    if (placeholderPromise)
    {
      placeholderPromise2 = [(IXSCoordinatedAppInstall *)self placeholderPromise];
      accessQueue = [placeholderPromise2 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000630F4;
      block[3] = &unk_100101268;
      block[4] = self;
      block[5] = &v23;
      dispatch_sync(accessQueue, block);
    }
  }

  [(IXSCoordinatedAppInstall *)self progressHintWithDefault];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100063150;
  v17[3] = &unk_100102CD0;
  v17[4] = self;
  v20 = &v23;
  v16 = v21 = phase;
  v18 = v16;
  v19 = runCopy;
  [(IXSCoordinatedAppInstall *)self _runAsyncBlockWithDescription:@"Initiate and fetch progress" onLaunchServicesQueue:v17];

  _Block_object_dispose(&v23, 8);
LABEL_8:
}

- (void)_runWithProgress:(id)progress block:(id)block
{
  progressCopy = progress;
  blockCopy = block;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006337C;
  v11[3] = &unk_100102CF8;
  v12 = progressCopy;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = progressCopy;
  sub_100071134(internalQueue, v11);
}

- (void)_limitedConcurrency_setUpLSProgressForInstallType:(unint64_t)type progressHint:(id)hint
{
  hintCopy = hint;
  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 initiateProgressForApp:bundleID withType:type];
  progressProportionsDictionaryForLaunchServices = [hintCopy progressProportionsDictionaryForLaunchServices];

  v15 = 0;
  v11 = [v9 setProgressProportionsByPhase:progressProportionsDictionaryForLaunchServices forInstallOfApplicationWithIdentifier:bundleID error:&v15];
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
      selfCopy = self;
      v20 = 2112;
      v21 = progressProportionsDictionaryForLaunchServices;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@: Set progress proportions to %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v17 = "[IXSCoordinatedAppInstall _limitedConcurrency_setUpLSProgressForInstallType:progressHint:]";
    v18 = 2112;
    selfCopy = bundleID;
    v20 = 2112;
    v21 = progressProportionsDictionaryForLaunchServices;
    v22 = 2112;
    v23 = v12;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to set install phase progress proportions on LS for bundleID %@ to %@: %@", buf, 0x2Au);
  }
}

- (id)_limitedConcurrency_fetchLSProgressForPhase:(unint64_t)phase appRecord:(id)record
{
  compatibilityObject = [record compatibilityObject];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [v6 installProgressForApplication:compatibilityObject withPhase:phase];

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

- (void)_limitedConcurrency_saveOriginalInstallTypeForAppRecord:(id)record
{
  installType = [record installType];
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100063854;
  v6[3] = &unk_100100DF8;
  v6[4] = self;
  v6[5] = installType;
  sub_100071134(internalQueue, v6);
}

- (void)_onQueue_configureTotalUnitCountsForInstallProgress:(id)progress
{
  progressCopy = progress;
  progressHintWithDefault = [(IXSCoordinatedAppInstall *)self progressHintWithDefault];
  progressProportionsDictionaryForLaunchServices = [progressHintWithDefault progressProportionsDictionaryForLaunchServices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100063964;
  v8[3] = &unk_100102D20;
  v9 = progressCopy;
  v7 = progressCopy;
  [progressProportionsDictionaryForLaunchServices enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_onQueue_setInstallProgressPercentComplete:(double)complete forPhase:(unint64_t)phase
{
  publishedInstallProgress = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
  [publishedInstallProgress setCompletedUnitCount:(objc_msgSend(publishedInstallProgress forPhase:{"totalUnitCountForPhase:", phase) * complete), phase}];
}

- (void)_limitedConcurrency_fetchLoadingProgressForPlaceholderInstallType:(unint64_t)type progressHint:(id)hint andRun:(id)run
{
  hintCopy = hint;
  v15 = 0;
  runCopy = run;
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
      selfCopy = self;
      v20 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: initiating loading progress with install type %lu", buf, 0x20u);
    }

    [(IXSCoordinatedAppInstall *)self _limitedConcurrency_saveOriginalInstallTypeForAppRecord:v11];
    [(IXSCoordinatedAppInstall *)self _limitedConcurrency_setUpLSProgressForInstallType:type progressHint:hintCopy];
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

  [(IXSCoordinatedAppInstall *)self _runWithProgress:v14 block:runCopy];
}

- (void)_onQueue_updateLoadingProgress
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
      identity = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = identity;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Not updating loading progress because %@ is paused", buf, 0x16u);

      v3 = v4;
    }
  }

  else
  {
    appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];
    v63 = appAssetPromise;
    v7 = appAssetPromise;
    if (appAssetPromise)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v94 = 0;
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0;
      accessQueue = [appAssetPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100064780;
      block[3] = &unk_1001018A8;
      v87 = buf;
      v86 = v7;
      v88 = &v89;
      dispatch_sync(accessQueue, block);

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

    userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];
    v62 = userDataPromise;
    if (userDataPromise)
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
      accessQueue2 = [userDataPromise accessQueue];
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_1000647C8;
      v76[3] = &unk_100102D48;
      v78 = buf;
      v77 = v62;
      v79 = &v89;
      v80 = &v81;
      dispatch_sync(accessQueue2, v76);

      if (((v63 == 0) & *(*&buf[8] + 24)) == 1 && [(IXSCoordinatedAppInstall *)self effectiveIntent]== 3)
      {
        v18 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          identity2 = [(IXSCoordinatedAppInstall *)self identity];
          *v98 = 136315394;
          v99 = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
          v100 = 2112;
          v101 = identity2;
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

    initialODRAssetPromises = [(IXSCoordinatedAppInstall *)self initialODRAssetPromises];
    v25 = [initialODRAssetPromises count] == 0;

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
            accessQueue3 = [v31 accessQueue];
            v71[0] = _NSConcreteStackBlock;
            v71[1] = 3221225472;
            v71[2] = sub_100064824;
            v71[3] = &unk_1001018A8;
            v71[4] = v31;
            v71[5] = buf;
            v71[6] = &v89;
            dispatch_sync(accessQueue3, v71);

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

    preparationPromise = [(IXSCoordinatedAppInstall *)self preparationPromise];

    if (preparationPromise)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v94 = 0;
      preparationPromise2 = [(IXSCoordinatedAppInstall *)self preparationPromise];
      accessQueue4 = [preparationPromise2 accessQueue];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_10006486C;
      v70[3] = &unk_100101268;
      v70[4] = self;
      v70[5] = buf;
      dispatch_sync(accessQueue4, v70);

      v43 = 100;
      if (v9)
      {
        v43 = v9;
      }

      v9 = v43 + (v43 * 0.0299999993);
      v15 += (*(*&buf[8] + 24) * (v43 * 0.0299999993));
      v44 = v65 + 1;
      _Block_object_dispose(buf, 8);
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = self;
      v44 = v65;
    }

    v46 = v44;
    v47 = v44 != 0;
    coordinatorProgress = [(IXSCoordinatedAppInstall *)selfCopy2 coordinatorProgress];
    v49 = coordinatorProgress == 0;

    if (v49)
    {
      v50 = [IXSCoordinatorProgress alloc];
      identity3 = [(IXSCoordinatedAppInstall *)self identity];
      progressHintWithDefault = [(IXSCoordinatedAppInstall *)self progressHintWithDefault];
      v53 = [(IXSCoordinatorProgress *)v50 initForCoordinatorWithIdentity:identity3 totalUnits:v9 progressHint:progressHintWithDefault needsPostProcessing:[(IXSCoordinatedAppInstall *)self needsPostProcessing] delegate:self];
      [(IXSCoordinatedAppInstall *)self setCoordinatorProgress:v53];
    }

    publishedInstallProgress = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
    if (!publishedInstallProgress)
    {
      if ([(IXSCoordinatedAppInstall *)self placeholderInstallState]== 7)
      {
        v55 = sub_10003FB30();
        identity4 = [(IXSCoordinatedAppInstall *)self identity];
        publishedInstallProgress = [v55 initiateProgressForIdentity:identity4];

        if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 4)
        {
          [publishedInstallProgress setInstallPhase:2];
          v57 = 2;
        }

        else
        {
          [publishedInstallProgress setInstallPhase:0];
          if ([(IXSCoordinatedAppInstall *)self needsPostProcessing])
          {
            v57 = 4;
          }

          else
          {
            v57 = 1;
          }
        }

        [publishedInstallProgress setFinalPhase:v57];
        [(IXSCoordinatedAppInstall *)self _onQueue_configureTotalUnitCountsForInstallProgress:publishedInstallProgress];
        [(IXSCoordinatedAppInstall *)self setPublishedInstallProgress:publishedInstallProgress];
      }

      else
      {
        publishedInstallProgress = 0;
      }
    }

    if (v46)
    {
      v58 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        identity5 = [(IXSCoordinatedAppInstall *)self identity];
        *buf = 136315906;
        *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updateLoadingProgress]";
        *&buf[12] = 2112;
        *&buf[14] = identity5;
        *&buf[22] = 2048;
        v94 = v15;
        v95 = 2048;
        v96 = v9;
        _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "%s: %@: Setting progress to %llu / %llu", buf, 0x2Au);
      }

      coordinatorProgress2 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
      [coordinatorProgress2 setTotalUnits:v9];

      coordinatorProgress3 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
      [coordinatorProgress3 setTotalUnitsCompleted:v15];

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

- (void)_limitedConcurrency_fetchPostProcessingProgressAndRun:(id)run
{
  v9 = 0;
  runCopy = run;
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

  [(IXSCoordinatedAppInstall *)self _runWithProgress:v7 block:runCopy];
}

- (void)_onQueue_updatePostProcessingProgress
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

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
      identity = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315394;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updatePostProcessingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = identity;
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
          accessQueue = [v11 accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000651FC;
          block[3] = &unk_1001018A8;
          block[4] = v11;
          block[5] = buf;
          block[6] = &v35;
          dispatch_sync(accessQueue, block);

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
          accessQueue2 = [v17 accessQueue];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100065244;
          v29[3] = &unk_1001018A8;
          v29[4] = v17;
          v29[5] = buf;
          v29[6] = &v35;
          dispatch_sync(accessQueue2, v29);

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
      identity2 = [(IXSCoordinatedAppInstall *)self identity];
      *buf = 136315906;
      *&buf[4] = "[IXSCoordinatedAppInstall _onQueue_updatePostProcessingProgress]";
      *&buf[12] = 2112;
      *&buf[14] = identity2;
      *&buf[22] = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v8;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s: %@: Setting post processing progress to %llu / %llu", buf, 0x2Au);
    }

    coordinatorProgress = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
    [coordinatorProgress setTotalUnits:v8];

    coordinatorProgress2 = [(IXSCoordinatedAppInstall *)self coordinatorProgress];
    [coordinatorProgress2 setTotalUnitsCompleted:v20];

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

- (void)didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000653D8;
  v10[3] = &unk_100102DC0;
  v10[4] = self;
  *&v10[5] = progress;
  v10[6] = phase;
  *&v10[7] = overallProgress;
  sub_100071134(delegateCallQueue, v10);
}

- (unint64_t)transactionStepForPromise:(id)promise
{
  promiseCopy = promise;
  placeholderPromise = [(IXSCoordinatedAppInstall *)self placeholderPromise];

  if (placeholderPromise == promiseCopy)
  {
    v12 = 8;
  }

  else
  {
    appAssetPromise = [(IXSCoordinatedAppInstall *)self appAssetPromise];

    if (appAssetPromise == promiseCopy)
    {
      v12 = 9;
    }

    else
    {
      userDataPromise = [(IXSCoordinatedAppInstall *)self userDataPromise];

      if (userDataPromise == promiseCopy)
      {
        v12 = 11;
      }

      else
      {
        deviceSecurityPromise = [(IXSCoordinatedAppInstall *)self deviceSecurityPromise];

        if (deviceSecurityPromise == promiseCopy)
        {
          v12 = 13;
        }

        else
        {
          preparationPromise = [(IXSCoordinatedAppInstall *)self preparationPromise];

          if (preparationPromise == promiseCopy)
          {
            v12 = 14;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (-[IXSCoordinatedAppInstall initialODRAssetPromises](self, "initialODRAssetPromises"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:promiseCopy], v10, (v11))
            {
              v12 = 10;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (-[IXSCoordinatedAppInstall essentialAssetPromises](self, "essentialAssetPromises"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:promiseCopy], v13, (v14))
              {
                v12 = 16;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (-[IXSCoordinatedAppInstall dataImportPromises](self, "dataImportPromises"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 containsObject:promiseCopy], v15, (v16))
                {
                  v12 = 17;
                }

                else
                {
                  installOptionsPromise = [(IXSCoordinatedAppInstall *)self installOptionsPromise];

                  if (installOptionsPromise == promiseCopy)
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

- (void)promiseDidBegin:(id)begin
{
  beginCopy = begin;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000656D8;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = beginCopy;
  v6 = beginCopy;
  sub_100071134(internalQueue, v7);
}

- (void)promiseDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[IXSCoordinatedAppInstall promiseDidComplete:]";
    v12 = 2112;
    selfCopy = self;
    v14 = 2112;
    v15 = completeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ : Promise completed: %@", buf, 0x20u);
  }

  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100065D48;
  v8[3] = &unk_100100ED8;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  sub_100071134(internalQueue, v8);
}

- (void)promise:(id)promise didUpdateProgress:(double)progress
{
  v5 = [(IXSCoordinatedAppInstall *)self internalQueue:promise];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100065EF0;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (void)promise:(id)promise didCancelForReason:(id)reason client:(unint64_t)client
{
  promiseCopy = promise;
  reasonCopy = reason;
  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "[IXSCoordinatedAppInstall promise:didCancelForReason:client:]";
    v25 = 2112;
    selfCopy = self;
    v27 = 2112;
    v28 = promiseCopy;
    v29 = 2112;
    v30 = reasonCopy;
    v31 = 2048;
    clientCopy = client;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ : Promise canceled: %@ for reason %@ client %lu", buf, 0x34u);
  }

  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000661B4;
  v19[3] = &unk_1001015A0;
  v19[4] = self;
  v12 = promiseCopy;
  v20 = v12;
  clientCopy2 = client;
  v13 = reasonCopy;
  v21 = v13;
  sub_100071134(internalQueue, v19);

  if ([(IXSCoordinatedAppInstall *)self effectiveIntent]== 3 && ([(IXSCoordinatedAppInstall *)self appAssetPromise], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v12))
  {
    internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000662DC;
    v16[3] = &unk_1001018D0;
    v16[4] = self;
    v17 = v13;
    clientCopy3 = client;
    sub_100071134(internalQueue2, v16);
  }

  else
  {
    [(IXSCoordinatedAppInstall *)self cancelForReason:v13 client:client error:0];
  }
}

- (unint64_t)placeholderDisposition
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  return self->_placeholderDisposition;
}

- (void)setPlaceholderDisposition:(unint64_t)disposition
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  self->_placeholderDisposition = disposition;
}

- (void)_onQueue_runPostProcessingAssertionHandler
{
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  [(IXSCoordinatedAppInstall *)self setCurrentProgressPhaseIsComplete:0];
  [(IXSCoordinatedAppInstall *)self setPendingProgressRequests:0];
  [(IXSCoordinatedAppInstall *)self setSentBeginPostProcessing:1];
  publishedInstallProgress = [(IXSCoordinatedAppInstall *)self publishedInstallProgress];
  [publishedInstallProgress setInstallPhase:4];

  completedRecordPromise = [(IXSCoordinatedAppInstall *)self completedRecordPromise];
  delegateCallQueue = [(IXSCoordinatedAppInstall *)self delegateCallQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100066494;
  v11 = &unk_100100ED8;
  selfCopy = self;
  v13 = completedRecordPromise;
  v7 = completedRecordPromise;
  sub_100071134(delegateCallQueue, &v8);

  [(IXSCoordinatedAppInstall *)self setPostProcessingAssertionState:7, v8, v9, v10, v11, selfCopy];
  [(IXSCoordinatedAppInstall *)self _onQueue_saveState];
  [(IXSCoordinatedAppInstall *)self _onQueue_checkState];
}

- (void)scheduledAppUpdateReadyToExecute
{
  appInstallPowerAssertion = [(IXSCoordinatedAppInstall *)self appInstallPowerAssertion];

  if (appInstallPowerAssertion)
  {
    internalQueue = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(internalQueue, OS_LOG_TYPE_ERROR))
    {
      sub_1000A1FA0(self);
    }
  }

  else
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066640;
    block[3] = &unk_1001010A0;
    block[4] = self;
    dispatch_sync(internalQueue, block);
  }

  internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066698;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(internalQueue2, v6);
}

- (void)applyStagedUpdateAndRunBlockWhenComplete:(id)complete
{
  completeCopy = complete;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006678C;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = completeCopy;
  v6 = completeCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)assertionTargetProcessDidExit:(id)exit
{
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXSCoordinatedAppInstall assertionTargetProcessDidExit:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: RBS termination assertion observer called for %@", buf, 0x16u);
  }

  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066960;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(internalQueue, v6);
}

- (BOOL)_validateLocationForPromise:(id)promise error:(id *)error
{
  promiseCopy = promise;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10004BA80;
  v28 = sub_10004BA90;
  v29 = 0;
  accessQueue = [promiseCopy accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000672EC;
  block[3] = &unk_100101268;
  v23 = &v24;
  v8 = promiseCopy;
  v22 = v8;
  dispatch_sync(accessQueue, block);

  identity = [(IXSCoordinatedAppInstall *)self identity];
  location = [identity location];
  v11 = [v25[5] isEqual:location];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      name = [v8 name];
      v19 = v25[5];
      *buf = 136316418;
      v31 = "[IXSCoordinatedAppInstall(IPCMethods) _validateLocationForPromise:error:]";
      v32 = 2112;
      v33 = name;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = identity;
      v38 = 2112;
      v39 = location;
      v40 = 2112;
      v41 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Failed to set %@ promise with location %@ on a coordinator for app identity %@ targeting location %@  : %@", buf, 0x3Eu);
    }

    name2 = [v8 name];
    v20 = v25[5];
    v12 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _validateLocationForPromise:error:]", 7256, @"IXErrorDomain", 0x3BuLL, 0, 0, @"Failed to set %@ promise with location %@ on a coordinator for app identity %@ targeting location %@ ", v15, name2);

    if (error)
    {
      v16 = v12;
      *error = v12;
    }
  }

  _Block_object_dispose(&v24, 8);
  return v11;
}

- (void)_remote_cancelForReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  v13 = 0;
  v12 = 0;
  completionCopy = completion;
  LOBYTE(self) = [(IXSCoordinatedAppInstall *)self cancelForReason:reason client:client needsLSDatabaseSync:&v13 error:&v12];
  v9 = v12;
  v10 = v9;
  v11 = 0;
  if ((self & 1) == 0)
  {
    v11 = v9;
  }

  completionCopy[2](completionCopy, v13, v11);
}

- (void)_remote_setPlaceholderPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v9)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2180();
    }

    v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderPromiseUUID:completion:]", 7288, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate placeholder data promise with UUID %@", v18, dCopy);
    goto LABEL_11;
  }

  identity = [(IXSCoordinatedAppInstall *)self identity];
  bundleID = [identity bundleID];
  bundleID2 = [v9 bundleID];
  v13 = [bundleID isEqualToString:bundleID2];

  if ((v13 & 1) == 0)
  {
    v19 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000A20CC();
    }

    bundleID3 = [v9 bundleID];
    identity2 = [(IXSCoordinatedAppInstall *)self identity];
    v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderPromiseUUID:completion:]", 7294, @"IXErrorDomain", 8uLL, 0, 0, @"Attempted to set placeholder promise with bundle ID %@ that does not match coordinator's identity %@", v21, bundleID3);

    goto LABEL_11;
  }

  v25 = 0;
  v14 = [(IXSCoordinatedAppInstall *)self _validateLocationForPromise:v9 error:&v25];
  v15 = v25;
  if ((v14 & 1) == 0)
  {
LABEL_11:
    completionCopy[2](completionCopy, v15);
    goto LABEL_12;
  }

  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000676D0;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v24 = v9;
  dispatch_sync(internalQueue, block);

  completionCopy[2](completionCopy, 0);
LABEL_12:
}

- (void)_remote_getPlaceholderPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000677FC;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  promiseCopy[2](promiseCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasPlaceholderPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100067A04;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(promiseCopy + 2))(promiseCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setAppAssetPromiseUUID:(id)d fromConnection:(id)connection completion:(id)completion
{
  dCopy = d;
  connectionCopy = connection;
  completionCopy = completion;
  v11 = sub_10000D774(connectionCopy, @"InstallLocalProvisioned");
  v12 = +[IXSDataPromiseManager sharedInstance];
  v13 = [v12 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v13)
  {
    v18 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000A21F4();
    }

    v16 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setAppAssetPromiseUUID:fromConnection:completion:]", 7354, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate app asset data promise with UUID %@", v19, dCopy);
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
      internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100068040;
      v22[3] = &unk_100102920;
      v22[4] = self;
      v23 = v13;
      v24 = v11;
      dispatch_sync(internalQueue, v22);

      completionCopy[2](completionCopy, 0);
      v17 = v23;
      goto LABEL_11;
    }

LABEL_12:
    (completionCopy)[2](completionCopy, v16);
    goto LABEL_13;
  }

  v14 = v13;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10004BA80;
  v34 = sub_10004BA90;
  v35 = 0;
  accessQueue = [v14 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067DAC;
  block[3] = &unk_1001011C8;
  v16 = v14;
  v27 = v16;
  selfCopy = self;
  v29 = &v30;
  dispatch_sync(accessQueue, block);

  if (!v31[5])
  {

    _Block_object_dispose(&v30, 8);
    goto LABEL_9;
  }

  (completionCopy[2])(completionCopy);

  _Block_object_dispose(&v30, 8);
  v17 = v35;
LABEL_11:

LABEL_13:
}

- (void)_remote_getAppAssetPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000681A4;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  promiseCopy[2](promiseCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasAppAssetPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000683AC;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(promiseCopy + 2))(promiseCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_appAssetPromiseHasBegunFulfillment:(id)fulfillment
{
  fulfillmentCopy = fulfillment;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068594;
  block[3] = &unk_1001019C0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v10;
  dispatch_sync(internalQueue, block);

  if (*(v15 + 24) == 1)
  {
    (*(fulfillmentCopy + 2))(fulfillmentCopy, *(v11 + 24), 0);
  }

  else
  {
    v7 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_appAssetPromiseHasBegunFulfillment:]", 7441, @"IXErrorDomain", 0x17uLL, 0, 0, @"App asset promise is not set", v6, v8);
    (*(fulfillmentCopy + 2))(fulfillmentCopy, 0, v7);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

- (void)_remote_getAppAssetPromiseDRI:(id)i
{
  iCopy = i;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100068794;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  iCopy[2](iCopy, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setAppAssetPromiseDRI:(unint64_t)i completion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100068880;
  v8[3] = &unk_100100DF8;
  v8[4] = self;
  v8[5] = i;
  dispatch_sync(internalQueue, v8);

  completionCopy[2](completionCopy, 0);
}

- (BOOL)_validateParentLinkageForInstallOptions:(id)options connection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  optionsCopy = options;
  v9 = sub_10000D944(connectionCopy);
  linkedParentBundleID = [optionsCopy linkedParentBundleID];

  if (linkedParentBundleID && ([v9 containsObject:linkedParentBundleID] & 1) == 0)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10000D6A0(connectionCopy);
      *buf = 136316162;
      v20 = "[IXSCoordinatedAppInstall(IPCMethods) _validateParentLinkageForInstallOptions:connection:error:]";
      v21 = 2112;
      v22 = v18;
      v23 = 2112;
      v24 = linkedParentBundleID;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: Client %@ setting the install options did not have the required entitlement to allow the linkedParentBundleID property of the supplied MIInstallOptions to be set to '%@' (found com.apple.private.mobileinstall.allowed-linked-parents = %@) : %@", buf, 0x34u);
    }

    v14 = sub_10000D6A0(connectionCopy);
    v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _validateParentLinkageForInstallOptions:connection:error:]", 7472, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ setting the install options did not have the required entitlement to allow the linkedParentBundleID property of the supplied MIInstallOptions to be set to '%@' (found com.apple.private.mobileinstall.allowed-linked-parents = %@)", v15, v14);

    if (error)
    {
      v16 = v11;
      v12 = 0;
      *error = v11;
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

- (void)_remote_setInstallOptionsPromiseUUID:(id)d forConnection:(id)connection completion:(id)completion
{
  dCopy = d;
  connectionCopy = connection;
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  if (dCopy)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v12 = +[IXSDataPromiseManager sharedInstance];
    v13 = [v12 promiseForUUID:dCopy ofType:objc_opt_class()];

    if (v13)
    {
      v56 = 0;
      v14 = [(IXSCoordinatedAppInstall *)self _validateLocationForPromise:v13 error:&v56];
      v15 = v56;
      if (v14)
      {
        accessQueue = [v13 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000691F0;
        block[3] = &unk_100101268;
        v55 = &v57;
        v13 = v13;
        v54 = v13;
        dispatch_sync(accessQueue, block);

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
          v19 = [(IXSCoordinatedAppInstall *)self _validateParentLinkageForInstallOptions:v17 connection:connectionCopy error:&v51];
          v15 = v51;

          if (v19)
          {
            v20 = v17;
            if ([v17 installationRequestorAuditToken] && (sub_10000D71C(connectionCopy, @"com.apple.private.install.can-set-install-requestor") & 1) == 0)
            {
              v32 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = sub_10000D6A0(connectionCopy);
                sub_1000A2364(v33, v62);
              }

              v34 = sub_10000D6A0(connectionCopy);
              v36 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInstallOptionsPromiseUUID:forConnection:completion:]", 7537, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ attempted to set MIInstallOptions with the installationRequestorAuditToken property set, but did not have the required entitlement.", v35, v34);

              v22 = 0;
              v15 = v36;
              goto LABEL_19;
            }

            iTunesMetadata = [v17 iTunesMetadata];
            v22 = iTunesMetadata;
            if (!iTunesMetadata)
            {
              goto LABEL_35;
            }

            v50 = v15;
            v43 = sub_10000DB10(iTunesMetadata, connectionCopy, @"install options", &v50);
            v23 = v50;

            if (v43)
            {
              if ([v22 isEqual:?])
              {
                v15 = v23;
LABEL_34:

LABEL_35:
                internalQueue2 = [(IXSCoordinatedAppInstall *)self internalQueue];
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v44[2] = sub_10006922C;
                v44[3] = &unk_100100ED8;
                v44[4] = self;
                v13 = v13;
                v45 = v13;
                dispatch_sync(internalQueue2, v44);

                goto LABEL_19;
              }

              [v17 setITunesMetadata:v43];
              v49 = v23;
              v42 = sub_100040078(v17, &v49);
              v15 = v49;

              v37 = v15;
              if (v42)
              {
                accessQueue2 = [v13 accessQueue];
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_100069224;
                v47[3] = &unk_1001010A0;
                v41 = v13;
                v48 = v41;
                dispatch_sync(accessQueue2, v47);

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
          completionCopy[2](completionCopy, v15);

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

      v15 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setInstallOptionsPromiseUUID:forConnection:completion:]", 7505, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate install options promise with UUID %@", v26, dCopy);
      v13 = 0;
    }

    v17 = 0;
    goto LABEL_18;
  }

  internalQueue3 = [(IXSCoordinatedAppInstall *)self internalQueue];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_1000691E4;
  v61[3] = &unk_1001010A0;
  v61[4] = self;
  dispatch_sync(internalQueue3, v61);

  completionCopy[2](completionCopy, 0);
LABEL_20:
}

- (void)_remote_hasInstallOptions:(id)options
{
  optionsCopy = options;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006932C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(optionsCopy + 2))(optionsCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getInstallOptions:(id)options
{
  optionsCopy = options;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069504;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v7;
  block[6] = &v13;
  dispatch_sync(internalQueue, block);

  optionsCopy[2](optionsCopy, v8[5], v14[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

- (void)_remote_setImportance:(unint64_t)importance completion:(id)completion
{
  completionCopy = completion;
  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  if (importance != 4 || (v8 = effectiveIntent, effectiveIntent == 2))
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100069750;
    block[3] = &unk_100100DF8;
    block[4] = self;
    block[5] = importance;
    dispatch_sync(internalQueue, block);

    completionCopy[2](completionCopy, 0);
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

    (completionCopy)[2](completionCopy, v14);
  }
}

- (void)_remote_importanceWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100069850;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  completionCopy[2](completionCopy, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_conveyPriorityReplacingExisting:(BOOL)existing forConnection:(id)connection withCompletion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100069B44;
  v36 = sub_100069B70;
  v37 = objc_retainBlock(completionCopy);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10004BA80;
  v30 = sub_10004BA90;
  v31 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100069B78;
  v20[3] = &unk_100102DE8;
  v20[4] = self;
  existingCopy = existing;
  v11 = connectionCopy;
  v21 = v11;
  v12 = completionCopy;
  v22 = v12;
  v23 = &v32;
  v24 = &v26;
  dispatch_sync(internalQueue, v20);

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

- (void)_remote_setTargetGizmoPairingID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100069DC8;
  v10[3] = &unk_100100ED8;
  v10[4] = self;
  v11 = dCopy;
  v9 = dCopy;
  dispatch_sync(internalQueue, v10);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_targetGizmoPairingIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100069EF4;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  completionCopy[2](completionCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setInitialODRAssetPromiseUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = dsCopy;
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
          v18 = completionCopy;
          (*(completionCopy + 2))(completionCopy, v21);

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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A1F4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v25 = v15;
  v17 = v15;
  dispatch_sync(internalQueue, block);

  v18 = completionCopy;
  (*(completionCopy + 2))(completionCopy, 0);

LABEL_13:
}

- (void)_remote_getInitialODRAssetPromises:(id)promises
{
  promisesCopy = promises;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A320;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  promisesCopy[2](promisesCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasInitialODRAssetPromises:(id)promises
{
  promisesCopy = promises;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A61C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(promisesCopy + 2))(promisesCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setUserDataPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v9)
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006A828;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v15 = v9;
    dispatch_sync(internalQueue, block);

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A263C();
    }

    v13 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setUserDataPromiseUUID:completion:]", 7738, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate user data promise with UUID %@", v12, dCopy);
    (completionCopy)[2](completionCopy, v13);
  }
}

- (void)_remote_getUserDataPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A954;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  promiseCopy[2](promiseCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_hasUserDataPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AB5C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(promiseCopy + 2))(promiseCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getUserDataRestoreShouldBegin:(id)begin
{
  beginCopy = begin;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006ACA4;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(beginCopy + 2))(beginCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setPreparationPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v9)
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AE94;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v15 = v9;
    dispatch_sync(internalQueue, block);

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A26B0();
    }

    v13 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPreparationPromiseUUID:completion:]", 7784, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate preparation promise with UUID %@", v12, dCopy);
    (completionCopy)[2](completionCopy, v13);
  }
}

- (void)_remote_getPreparationPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AFC0;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  promiseCopy[2](promiseCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setDeviceSecurityPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[IXSDataPromiseManager sharedInstance];
  v9 = [v8 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v9)
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B28C;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v15 = v9;
    dispatch_sync(internalQueue, block);

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2724();
    }

    v13 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setDeviceSecurityPromiseUUID:completion:]", 7812, @"IXErrorDomain", 3uLL, 0, 0, @"Failed to locate device security promise with UUID %@", v12, dCopy);
    (completionCopy)[2](completionCopy, v13);
  }
}

- (void)_remote_getDeviceSecurityPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B3B8;
  v6[3] = &unk_1001013C8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  promiseCopy[2](promiseCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getHasDeviceSecurityPromise:(id)promise
{
  promiseCopy = promise;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B5C0;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(promiseCopy + 2))(promiseCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setNeedsPostProcessing:(BOOL)processing completion:(id)completion
{
  completionCopy = completion;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B7BC;
    block[3] = &unk_100101998;
    block[4] = self;
    processingCopy = processing;
    dispatch_sync(internalQueue, block);

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2798(self);
    }

    effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
    if (effectiveIntent >= 8)
    {
      v11 = [NSString stringWithFormat:@"Unknown intent value %lu", effectiveIntent];
    }

    else
    {
      v11 = *(&off_100103100 + effectiveIntent);
    }

    v12 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setNeedsPostProcessing:completion:]", 7843, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator with intent %@ does not support post processing.", v10, v11);

    (completionCopy)[2](completionCopy, v12);
  }
}

- (void)_remote_getNeedsPostProcessing:(id)processing
{
  processingCopy = processing;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B9B0;
    block[3] = &unk_100101268;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(internalQueue, block);

    (*(processingCopy + 2))(processingCopy, *(v13 + 24), 0);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A286C(self);
    }

    effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
    if (effectiveIntent >= 8)
    {
      v9 = [NSString stringWithFormat:@"Unknown intent value %lu", effectiveIntent];
    }

    else
    {
      v9 = *(&off_100103100 + effectiveIntent);
    }

    v10 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getNeedsPostProcessing:]", 7857, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator with intent %@ does not support post processing.", v8, v9);

    (*(processingCopy + 2))(processingCopy, 0, v10);
  }
}

- (void)_remote_getPostProcessingShouldBegin:(id)begin
{
  beginCopy = begin;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BADC;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(beginCopy + 2))(beginCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setEssentialAssetPromiseUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BFCC;
    block[3] = &unk_100101268;
    block[4] = self;
    block[5] = &v35;
    selfCopy = self;
    dispatch_sync(internalQueue, block);

    if (v36[3])
    {
      v7 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = dsCopy;
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
              completionCopy[2](completionCopy, v24);

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
      internalQueue2 = [(IXSCoordinatedAppInstall *)selfCopy internalQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006C000;
      v28[3] = &unk_100100ED8;
      v28[4] = selfCopy;
      v8 = v15;
      v29 = v8;
      dispatch_sync(internalQueue2, v28);

      completionCopy[2](completionCopy, 0);
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
      completionCopy[2](completionCopy, v7);
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
    completionCopy[2](completionCopy, v19);
  }
}

- (void)_remote_getEssentialAssetPromises:(id)promises
{
  promisesCopy = promises;
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
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C2C0;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v19;
    block[6] = &v13;
    dispatch_sync(internalQueue, block);

    if (v20[3])
    {
      v6 = [v14[5] copy];
      promisesCopy[2](promisesCopy, v6, 0);
    }

    else
    {
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2B14();
      }

      v6 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getEssentialAssetPromises:]", 7947, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v11, self);
      (promisesCopy)[2](promisesCopy, 0, v6);
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
    (promisesCopy)[2](promisesCopy, 0, v9);
  }
}

- (void)_remote_hasEssentialAssetPromises:(id)promises
{
  promisesCopy = promises;
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
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C764;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v17;
    block[6] = &v13;
    dispatch_sync(internalQueue, block);

    if (v18[3])
    {
      (*(promisesCopy + 2))(promisesCopy, *(v14 + 24), 0);
    }

    else
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2BFC();
      }

      v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_hasEssentialAssetPromises:]", 7974, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v10, self);
      (*(promisesCopy + 2))(promisesCopy, 0, v11);
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
    (*(promisesCopy + 2))(promisesCopy, 0, v8);
  }
}

- (void)_remote_setDataImportPromiseUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (sub_10005A974([(IXSCoordinatedAppInstall *)self effectiveIntent]))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CCA4;
    block[3] = &unk_100101268;
    block[4] = self;
    block[5] = &v35;
    selfCopy = self;
    dispatch_sync(internalQueue, block);

    if (v36[3])
    {
      v7 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = dsCopy;
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
              completionCopy[2](completionCopy, v24);

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
      internalQueue2 = [(IXSCoordinatedAppInstall *)selfCopy internalQueue];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006CCD8;
      v28[3] = &unk_100100ED8;
      v28[4] = selfCopy;
      v8 = v15;
      v29 = v8;
      dispatch_sync(internalQueue2, v28);

      completionCopy[2](completionCopy, 0);
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
      completionCopy[2](completionCopy, v7);
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
    completionCopy[2](completionCopy, v19);
  }
}

- (void)_remote_getDataImportPromises:(id)promises
{
  promisesCopy = promises;
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
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CF98;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v19;
    block[6] = &v13;
    dispatch_sync(internalQueue, block);

    if (v20[3])
    {
      v6 = [v14[5] copy];
      promisesCopy[2](promisesCopy, v6, 0);
    }

    else
    {
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2E40();
      }

      v6 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_getDataImportPromises:]", 8047, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v11, self);
      (promisesCopy)[2](promisesCopy, 0, v6);
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
    (promisesCopy)[2](promisesCopy, 0, v9);
  }
}

- (void)_remote_hasDataImportPromises:(id)promises
{
  promisesCopy = promises;
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
    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D43C;
    block[3] = &unk_1001018A8;
    block[4] = self;
    block[5] = &v17;
    block[6] = &v13;
    dispatch_sync(internalQueue, block);

    if (v18[3])
    {
      (*(promisesCopy + 2))(promisesCopy, *(v14 + 24), 0);
    }

    else
    {
      v9 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000A2F28();
      }

      v11 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_hasDataImportPromises:]", 8074, @"IXErrorDomain", 4uLL, 0, 0, @"Coordinator %@ does not have post processing enabled.", v10, self);
      (*(promisesCopy + 2))(promisesCopy, 0, v11);
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
    (*(promisesCopy + 2))(promisesCopy, 0, v8);
  }
}

- (void)_remote_getIsComplete:(id)complete
{
  completeCopy = complete;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D5B8;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(completeCopy + 2))(completeCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_getErrorInfo:(id)info
{
  infoCopy = info;
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
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D750;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v7;
  dispatch_sync(internalQueue, block);

  infoCopy[2](infoCopy, v14[3], v8[5]);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

- (void)_remote_fireObserversForClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006D888;
  v10[3] = &unk_100100ED8;
  v10[4] = self;
  v11 = clientCopy;
  v9 = clientCopy;
  dispatch_sync(internalQueue, v10);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_setIsPaused:(BOOL)paused completion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006D950;
  v9[3] = &unk_100102BA0;
  pausedCopy = paused;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  sub_100071134(internalQueue, v9);
}

- (void)_remote_getIsPausedWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006DA58;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  (*(completionCopy + 2))(completionCopy, *(v8 + 24), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_prioritizeWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DB40;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  sub_100071134(internalQueue, v7);
}

- (void)_remote_getCoordinationState:(id)state
{
  stateCopy = state;
  outstandingInstallOperationsGroup = [(IXSCoordinatedAppInstall *)self outstandingInstallOperationsGroup];
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006DC18;
  v8[3] = &unk_100101B08;
  v8[4] = self;
  v9 = stateCopy;
  v7 = stateCopy;
  dispatch_group_notify(outstandingInstallOperationsGroup, internalQueue, v8);
}

- (void)_remote_getCoordinatorScopeWithCompletion:(id)completion
{
  completionCopy = completion;
  (*(completionCopy + 2))(completionCopy, [(IXSCoordinatedAppInstall *)self coordinatorScope], 0);
}

- (void)_remote_convertToGloballyScopedWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006DDFC;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_setPlaceholderDisposition:(unint64_t)disposition completion:(id)completion
{
  completionCopy = completion;
  effectiveIntent = [(IXSCoordinatedAppInstall *)self effectiveIntent];
  v8 = sub_1000031B0(off_100121958);
  v9 = v8;
  if ((effectiveIntent & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = IXStringForPlaceholderDisposition(disposition);
      *buf = 136315650;
      v17 = "[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderDisposition:completion:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: setting placeholderDisposition to %@", buf, 0x20u);
    }

    internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E144;
    block[3] = &unk_100100DF8;
    block[4] = self;
    block[5] = disposition;
    dispatch_sync(internalQueue, block);

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A2F9C(effectiveIntent);
    }

    if (effectiveIntent >= 8)
    {
      v14 = [NSString stringWithFormat:@"Unknown intent value %lu", effectiveIntent];
    }

    else
    {
      v14 = *(&off_100103100 + effectiveIntent);
    }

    v12 = sub_1000405FC("[IXSCoordinatedAppInstall(IPCMethods) _remote_setPlaceholderDisposition:completion:]", 8173, @"IXErrorDomain", 4uLL, 0, 0, @"Placeholder disposition is not applicable to coordinator type %@.", v13, v14);
  }

  completionCopy[2](completionCopy, v12);
}

- (void)_remote_getPlaceholderDispositionWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E248;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  completionCopy[2](completionCopy, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setProgressHint:(id)hint completion:(id)completion
{
  hintCopy = hint;
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006E354;
  v10[3] = &unk_100100ED8;
  v10[4] = self;
  v11 = hintCopy;
  v9 = hintCopy;
  dispatch_sync(internalQueue, v10);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_getProgressHintWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10004BA80;
  v11 = sub_10004BA90;
  v12 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E480;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  completionCopy[2](completionCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

- (void)_remote_setRemovability:(unint64_t)removability byClient:(unint64_t)client completion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E594;
  block[3] = &unk_100100DD0;
  block[4] = self;
  block[5] = removability;
  block[6] = client;
  dispatch_sync(internalQueue, block);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_removabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  internalQueue = [(IXSCoordinatedAppInstall *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E69C;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  completionCopy[2](completionCopy, v8[3], 0);
  _Block_object_dispose(&v7, 8);
}

@end