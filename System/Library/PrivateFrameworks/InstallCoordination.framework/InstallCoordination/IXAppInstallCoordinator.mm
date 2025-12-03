@interface IXAppInstallCoordinator
+ (BOOL)_synchronouslyEnumerateCoordinatorsForIntent:(unint64_t)intent error:(id *)error usingBlock:(id)block;
+ (BOOL)addBundleIDs:(id)ds toMappingsForPersona:(id)persona error:(id *)error;
+ (BOOL)associateMultiPersonaAppsWithBundleIDs:(id)ds withPersona:(id)persona withError:(id *)error;
+ (BOOL)cancelCoordinatorForAppWithBundleID:(id)d withReason:(id)reason client:(unint64_t)client error:(id *)error;
+ (BOOL)cancelCoordinatorForAppWithIdentity:(id)identity withReason:(id)reason client:(unint64_t)client error:(id *)error;
+ (BOOL)cancelCoordinatorsForAppsWithApplicationIdentities:(id)identities withReason:(id)reason client:(unint64_t)client error:(id *)error;
+ (BOOL)cancelCoordinatorsForAppsWithBundleIDs:(id)ds withReason:(id)reason client:(unint64_t)client error:(id *)error;
+ (BOOL)enumerateCoordinatorsWithError:(id *)error usingBlock:(id)block;
+ (BOOL)killDaemonForTesting;
+ (BOOL)pauseCoordinatorForAppWithBundleID:(id)d error:(id *)error;
+ (BOOL)pauseCoordinatorForAppWithIdentity:(id)identity error:(id *)error;
+ (BOOL)postNSCurrentLocaleDidChangeNotification;
+ (BOOL)prioritizeCoordinatorForAppWithBundleID:(id)d error:(id *)error;
+ (BOOL)prioritizeCoordinatorForAppWithIdentity:(id)identity error:(id *)error;
+ (BOOL)purgeAllCoordinatorsAndPromisesForCreator:(unint64_t)creator;
+ (BOOL)refreshContainerTypes:(unint64_t)types forApplicationIdentity:(id)identity reason:(id)reason error:(id *)error;
+ (BOOL)refreshContainerTypes:(unint64_t)types forBundleID:(id)d reason:(id)reason error:(id *)error;
+ (BOOL)refreshContainersWithOptions:(id)options forApplicationIdentity:(id)identity error:(id *)error;
+ (BOOL)refreshDataContainerForBundleID:(id)d reason:(id)reason error:(id *)error;
+ (BOOL)registerContentsForDiskImageAtURL:(id)l options:(id)options withError:(id *)error;
+ (BOOL)registerContentsForOSModuleAtURL:(id)l options:(id)options error:(id *)error;
+ (BOOL)removeBundleIDs:(id)ds fromMappingsForPersona:(id)persona error:(id *)error;
+ (BOOL)resumeCoordinatorForAppWithBundleID:(id)d error:(id *)error;
+ (BOOL)resumeCoordinatorForAppWithIdentity:(id)identity error:(id *)error;
+ (BOOL)revertAppWithBundleID:(id)d resultingApplicationRecord:(id *)record error:(id *)error;
+ (BOOL)revertAppWithIdentity:(id)identity resultingApplicationRecord:(id *)record error:(id *)error;
+ (BOOL)setKnownOSModuleURLs:(id)ls options:(id)options error:(id *)error;
+ (BOOL)setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode testSpecificValidationData:(id)data;
+ (BOOL)simulateClientDeath;
+ (BOOL)testReturnEarlyDemoteAppToPlaceholderWithApplicationIdentity:(id)identity forReason:(unint64_t)reason error:(id *)error;
+ (BOOL)uninstallAppWithBundleID:(id)d options:(id)options disposition:(unint64_t *)disposition error:(id *)error legacyProgressBlock:(id)block;
+ (BOOL)uninstallAppWithIdentity:(id)identity options:(id)options disposition:(unint64_t *)disposition error:(id *)error legacyProgressBlock:(id)block;
+ (BOOL)unregisterContentsForDiskImageAtURL:(id)l options:(id)options withError:(id *)error;
+ (BOOL)updateSINFForAppWithIdentity:(id)identity sinfData:(id)data options:(id)options error:(id *)error;
+ (BOOL)updateSINFForAppWithIdentity:(id)identity wrapperURL:(id)l sinfData:(id)data error:(id *)error;
+ (BOOL)updateiTunesMetadata:(id)metadata forAppWithIdentity:(id)identity error:(id *)error;
+ (BOOL)updateiTunesMetadata:(id)metadata forAppWithIdentity:(id)identity wrapperURL:(id)l error:(id *)error;
+ (BOOL)updateiTunesMetadataForAppWithIdentity:(id)identity plistData:(id)data options:(id)options error:(id *)error;
+ (BOOL)updateiTunesMetadataForAppWithIdentity:(id)identity wrapperURL:(id)l plistData:(id)data error:(id *)error;
+ (Class)classForIntent:(unint64_t)intent;
+ (id)_coordinatorForIdentity:(id)identity created:(BOOL *)created error:(id *)error;
+ (id)_temporaryStagingLocationForInstallLocation:(id)location withSandboxExtensionHandle:(int64_t *)handle error:(id *)error;
+ (id)defaultAppMetadataForAppIdentity:(id)identity error:(id *)error;
+ (id)defaultAppMetadataListWithError:(id *)error;
+ (id)existingCoordinatorForAppWithBundleID:(id)d error:(id *)error;
+ (id)existingCoordinatorForAppWithIdentity:(id)identity error:(id *)error;
+ (id)removabilityDataWithChangeClock:(id *)clock error:(id *)error;
+ (id)stagingLocationForInstallLocation:(id)location withSandboxExtension:(id *)extension error:(id *)error;
+ (id)unregisterContentsForOSModuleAtURL:(id)l options:(id)options error:(id *)error;
+ (int)daemonPid;
+ (unint64_t)removabilityForAppWithBundleID:(id)d error:(id *)error;
+ (unint64_t)removabilityForAppWithIdentity:(id)identity byClient:(unint64_t)client error:(id *)error;
+ (unint64_t)removabilityForAppWithIdentity:(id)identity error:(id *)error;
+ (void)_asynchronouslyEnumerateCoordinatorsForIntent:(unint64_t)intent usingBlock:(id)block;
+ (void)_beginInstallForURL:(id)l forPersonaUniqueString:(id)string consumeSource:(BOOL)source options:(id)options progressBlock:(id)block completionWithIdentity:(id)identity;
+ (void)_demoteAppToPlaceholderWithApplicationIdentity:(id)identity forReason:(unint64_t)reason waitForDeletion:(BOOL)deletion ignoreRemovability:(BOOL)removability returnEarlyForTesting:(BOOL)testing completion:(id)completion;
+ (void)_validatePreconditionForIntent:(unint64_t)intent matchesCurrentInstallStateForBundleID:(id)d;
+ (void)cancelCoordinatorForAppWithBundleID:(id)d withReason:(id)reason client:(unint64_t)client completion:(id)completion;
+ (void)cancelCoordinatorForAppWithIdentity:(id)identity withReason:(id)reason client:(unint64_t)client completion:(id)completion;
+ (void)cancelCoordinatorsForAppsWithApplicationIdentities:(id)identities withReason:(id)reason client:(unint64_t)client completion:(id)completion;
+ (void)cancelCoordinatorsForAppsWithBundleIDs:(id)ds withReason:(id)reason client:(unint64_t)client completion:(id)completion;
+ (void)defaultAppMetadataForAppIdentity:(id)identity completion:(id)completion;
+ (void)defaultAppMetadataListWithCompletion:(id)completion;
+ (void)enumerateCoordinatorsUsingBlock:(id)block;
+ (void)installApplication:(id)application toTargetDirectory:(id)directory consumeSource:(BOOL)source options:(id)options completion:(id)completion;
+ (void)installApplication:(id)application toTargetDirectory:(id)directory consumeSource:(BOOL)source shouldOverrideGatekeeper:(BOOL)gatekeeper options:(id)options completion:(id)completion;
+ (void)installApplication:(id)application toURL:(id)l consumeSource:(BOOL)source options:(id)options completion:(id)completion;
+ (void)installApplication:(id)application toURL:(id)l consumeSource:(BOOL)source shouldOverrideGatekeeper:(BOOL)gatekeeper options:(id)options completion:(id)completion;
+ (void)pauseCoordinatorForAppWithBundleID:(id)d completion:(id)completion;
+ (void)pauseCoordinatorForAppWithIdentity:(id)identity completion:(id)completion;
+ (void)prioritizeCoordinatorForAppWithBundleID:(id)d completion:(id)completion;
+ (void)prioritizeCoordinatorForAppWithIdentity:(id)identity completion:(id)completion;
+ (void)removabilityDataWithCompletion:(id)completion;
+ (void)removabilityForAppWithBundleID:(id)d completion:(id)completion;
+ (void)removabilityForAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion;
+ (void)removabilityForAppWithIdentity:(id)identity completion:(id)completion;
+ (void)resumeCoordinatorForAppWithBundleID:(id)d completion:(id)completion;
+ (void)resumeCoordinatorForAppWithIdentity:(id)identity completion:(id)completion;
+ (void)revertAppWithBundleID:(id)d completion:(id)completion;
+ (void)revertAppWithBundleID:(id)d completionWithApplicationRecord:(id)record;
+ (void)revertAppWithIdentity:(id)identity completionWithApplicationRecord:(id)record;
+ (void)setRemovability:(unint64_t)removability forAppWithBundleID:(id)d byClient:(unint64_t)client completion:(id)completion;
+ (void)setRemovability:(unint64_t)removability forAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion;
+ (void)uninstallAppWithBundleID:(id)d options:(id)options completion:(id)completion;
+ (void)uninstallAppWithIdentity:(id)identity options:(id)options completion:(id)completion;
- (BOOL)appAssetPromiseHasBegunFulfillment:(BOOL *)fulfillment error:(id *)error;
- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error;
- (BOOL)convertToGloballyScopedCoordinatorWithError:(id *)error;
- (BOOL)getHasDataImportPromises:(BOOL *)promises error:(id *)error;
- (BOOL)getHasDeviceSecurityPromise:(BOOL *)promise error:(id *)error;
- (BOOL)getHasEssentialAssetPromises:(BOOL *)promises error:(id *)error;
- (BOOL)getNeedsPostProcessing:(BOOL *)processing error:(id *)error;
- (BOOL)getPostProcessingShouldBegin:(BOOL *)begin error:(id *)error;
- (BOOL)getShouldOverrideGatekeeperValue:(BOOL *)value error:(id *)error;
- (BOOL)hasAppAssetPromise;
- (BOOL)hasInitialODRAssetPromises;
- (BOOL)hasInstallOptions;
- (BOOL)hasPlaceholderPromise;
- (BOOL)hasUserDataPromise;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaused:(BOOL *)paused withError:(id *)error;
- (BOOL)pauseWithError:(id *)error;
- (BOOL)prioritizeWithError:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)setAppAssetPromise:(id)promise error:(id *)error;
- (BOOL)setAppAssetPromiseResponsibleClient:(unint64_t)client error:(id *)error;
- (BOOL)setAppQuitPromise:(id)promise error:(id *)error;
- (BOOL)setDataImportPromises:(id)promises error:(id *)error;
- (BOOL)setDeviceSecurityPromise:(id)promise error:(id *)error;
- (BOOL)setEssentialAssetPromises:(id)promises error:(id *)error;
- (BOOL)setImportance:(unint64_t)importance error:(id *)error;
- (BOOL)setInitialODRAssetPromises:(id)promises error:(id *)error;
- (BOOL)setInstallOptions:(id)options error:(id *)error;
- (BOOL)setInstallTargetDirectoryURL:(id)l error:(id *)error;
- (BOOL)setManagedInstallUUID:(id)d error:(id *)error;
- (BOOL)setPlaceholderDisposition:(unint64_t)disposition error:(id *)error;
- (BOOL)setPlaceholderPromise:(id)promise error:(id *)error;
- (BOOL)setPreparationPromise:(id)promise withError:(id *)error;
- (BOOL)setPreserveTargetBundleNameOnUpdate:(BOOL)update error:(id *)error;
- (BOOL)setProgressHint:(id)hint withError:(id *)error;
- (BOOL)setRemovability:(unint64_t)removability byClient:(unint64_t)client error:(id *)error;
- (BOOL)setShouldOverrideGatekeeper:(BOOL)gatekeeper error:(id *)error;
- (BOOL)setTargetBundleURL:(id)l preservingTargetBundleNameOnUpdate:(BOOL)update error:(id *)error;
- (BOOL)setUserDataPromise:(id)promise error:(id *)error;
- (IXAppInstallCoordinator)initWithSeed:(id)seed;
- (IXAppInstallCoordinatorObserver)observer;
- (IXApplicationIdentity)identity;
- (NSError)error;
- (NSString)bundleID;
- (NSString)description;
- (NSString)descriptionWithRemoteState;
- (NSUUID)uniqueIdentifier;
- (OS_dispatch_queue)internalQueue;
- (OS_dispatch_queue)observerCalloutQueue;
- (id)appAssetPromiseWithError:(id *)error;
- (id)appQuitPromiseWithError:(id *)error;
- (id)dataImportPromisesWithError:(id *)error;
- (id)deviceSecurityPromiseWithError:(id *)error;
- (id)essentialAssetPromisesWithError:(id *)error;
- (id)initialODRAssetPromisesWithError:(id *)error;
- (id)installOptionsWithError:(id *)error;
- (id)installTargetDirectoryURLWithError:(id *)error;
- (id)managedInstallUUIDWithError:(id *)error;
- (id)placeholderPromiseWithError:(id *)error;
- (id)preparationPromiseWithError:(id *)error;
- (id)progressHintWithError:(id *)error;
- (id)targetBundleURLWithError:(id *)error;
- (id)userDataPromiseWithError:(id *)error;
- (id)userDataRestoreShouldBegin:(BOOL *)begin;
- (unint64_t)appAssetPromiseResponsibleClientWithError:(id *)error;
- (unint64_t)coordinationState;
- (unint64_t)creatorIdentifier;
- (unint64_t)errorSourceIdentifier;
- (unint64_t)hash;
- (unint64_t)importanceWithError:(id *)error;
- (unint64_t)observersCalled;
- (unint64_t)placeholderDispositionWithError:(id *)error;
- (unint64_t)removabilityWithError:(id *)error;
- (unsigned)coordinatorScopeWithError:(id *)error;
- (unsigned)creatorEUID;
- (void)_clientDelegate_didCancelWithError:(id)error client:(unint64_t)client;
- (void)_clientDelegate_didCompleteForApplicationRecord:(id)record;
- (void)_clientDelegate_didRegisterForObservation;
- (void)_clientDelegate_didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)_clientDelegate_placeholderDidInstallForApplicationRecord:(id)record;
- (void)_clientDelegate_promiseDidBeginFulfillmentWithIdentifier:(unint64_t)identifier;
- (void)_clientDelegate_shouldBeginPostProcessingForApplicationRecord:(id)record;
- (void)_clientDelegate_shouldBeginRestoringUserData;
- (void)_clientDelegate_shouldPause;
- (void)_clientDelegate_shouldPrioritize;
- (void)_clientDelegate_shouldResume;
- (void)_onObserverCalloutQueue_handleObserverForCompletedCoordinator:(id)coordinator completedApplicationRecord:(id)record error:(id)error client:(unint64_t)client;
- (void)dealloc;
- (void)setComplete:(BOOL)complete;
- (void)setComplete:(BOOL)complete forApplicationRecord:(id)record;
- (void)setError:(id)error;
- (void)setErrorSourceIdentifier:(unint64_t)identifier;
- (void)setObserver:(id)observer;
- (void)setObserversCalled:(unint64_t)called;
@end

@implementation IXAppInstallCoordinator

- (IXAppInstallCoordinator)initWithSeed:(id)seed
{
  seedCopy = seed;
  v9.receiver = self;
  v9.super_class = IXAppInstallCoordinator;
  v6 = [(IXAppInstallCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_seed, seed);
  }

  return v7;
}

- (OS_dispatch_queue)observerCalloutQueue
{
  if (observerCalloutQueue_onceToken != -1)
  {
    [IXAppInstallCoordinator observerCalloutQueue];
  }

  v3 = observerCalloutQueue_sObserverCalloutQueue;

  return v3;
}

void __47__IXAppInstallCoordinator_observerCalloutQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.installcoordination.coordinator_observer", v2);
  v1 = observerCalloutQueue_sObserverCalloutQueue;
  observerCalloutQueue_sObserverCalloutQueue = v0;
}

- (OS_dispatch_queue)internalQueue
{
  if (internalQueue_onceToken != -1)
  {
    [IXAppInstallCoordinator internalQueue];
  }

  v3 = internalQueue_sInternalQueue;

  return v3;
}

void __40__IXAppInstallCoordinator_internalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.installcoordination.coordinator_internal", v2);
  v1 = internalQueue_sInternalQueue;
  internalQueue_sInternalQueue = v0;
}

void __72__IXAppInstallCoordinator__conveyCurrentPriorityBoostReplacingExisting___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 136315906;
    v9 = "[IXAppInstallCoordinator _conveyCurrentPriorityBoostReplacingExisting:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to convey priority boost for coordinator UUID %@ : %@ : %@", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __72__IXAppInstallCoordinator__conveyCurrentPriorityBoostReplacingExisting___block_invoke_7(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator _conveyCurrentPriorityBoostReplacingExisting:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_ERROR, "%s: Got error in priority boost conveyance completion block for coordinator UUID %@ : %@ : %@", &v9, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __72__IXAppInstallCoordinator__conveyCurrentPriorityBoostReplacingExisting___block_invoke_7_cold_1(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_DEBUG, "%s: %@: Skipping unregistering with daemon because not currently registered", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_validatePreconditionForIntent:(unint64_t)intent matchesCurrentInstallStateForBundleID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![self skipIntentValidation])
  {
    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:0];
    v7 = v9;
    if (v9)
    {
      v10 = MEMORY[0x1E696AEC0];
      applicationState = [v9 applicationState];
      isInstalled = [applicationState isInstalled];
      isPlaceholder = [v7 isPlaceholder];
      hasParallelPlaceholder = [v7 hasParallelPlaceholder];
      v15 = 78;
      if (hasParallelPlaceholder)
      {
        v16 = 89;
      }

      else
      {
        v16 = 78;
      }

      if (isPlaceholder)
      {
        v17 = 89;
      }

      else
      {
        v17 = 78;
      }

      if (isInstalled)
      {
        v15 = 89;
      }

      intent = [v10 stringWithFormat:@"isInstalled:%c isPlaceholder:%c hasParallelPlaceholder:%c", v15, v17, v16];
    }

    else
    {
      intent = @"No record found";
    }

    if (intent <= 4)
    {
      if (intent - 3 < 2 || intent == 1)
      {
        if (!v7 || ([v7 isPlaceholder]& 1) != 0)
        {
          goto LABEL_44;
        }

        v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_43;
        }

        v19 = _StringForIXCoordinatorIntent(intent);
        *buf = 136315906;
        v23 = "+[IXAppInstallCoordinator _validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:]";
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = dCopy;
        v28 = 2112;
        v29 = intent;
        v20 = "%s: Warning: client is attempting to create a coordinator of type %@ for %@, but the app is already installed! (%@)";
        goto LABEL_36;
      }

      if (intent != 2)
      {
LABEL_24:
        v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [IXAppInstallCoordinator _validatePreconditionForIntent:intent matchesCurrentInstallStateForBundleID:v18];
        }

        goto LABEL_43;
      }

LABEL_32:
      if (v7 && ![v7 isPlaceholder])
      {
        goto LABEL_44;
      }

      v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_43;
      }

      v19 = _StringForIXCoordinatorIntent(intent);
      *buf = 136315906;
      v23 = "+[IXAppInstallCoordinator _validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:]";
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = intent;
      v20 = "%s: Warning: client is attempting to create a coordinator of type %@ for %@, but the app is not currently installed! (%@)";
LABEL_36:
      _os_log_fault_impl(&dword_1DA47A000, v18, OS_LOG_TYPE_FAULT, v20, buf, 0x2Au);

LABEL_43:
      goto LABEL_44;
    }

    switch(intent)
    {
      case 5uLL:
        if (!v7)
        {
          v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            +[IXAppInstallCoordinator _validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:];
          }

          goto LABEL_43;
        }

        if (([v7 isPlaceholder]& 1) == 0)
        {
          v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            +[IXAppInstallCoordinator _validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:];
          }

          goto LABEL_43;
        }

        break;
      case 6uLL:
        goto LABEL_32;
      case 7uLL:
        break;
      default:
        goto LABEL_24;
    }

LABEL_44:

    goto LABEL_45;
  }

  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (intent >= 8)
    {
      intent = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", intent];
    }

    else
    {
      intent = off_1E85C5E60[intent];
    }

    *buf = 136315650;
    v23 = "+[IXAppInstallCoordinator _validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:]";
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = intent;
    _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Skipping intent validation for bundle ID %@ with intent %@", buf, 0x20u);
    goto LABEL_44;
  }

LABEL_45:

  v21 = *MEMORY[0x1E69E9840];
}

void __179__IXAppInstallCoordinator__coordinatorForAppWithIdentity_targetingInstallationDomain_withClientID_intent_createIfNotExisting_requireMatchingIntent_scopeRequirement_created_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator _coordinatorForAppWithIdentity:targetingInstallationDomain:withClientID:intent:createIfNotExisting:requireMatchingIntent:scopeRequirement:created:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __179__IXAppInstallCoordinator__coordinatorForAppWithIdentity_targetingInstallationDomain_withClientID_intent_createIfNotExisting_requireMatchingIntent_scopeRequirement_created_error___block_invoke_24(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
    a3 = 1;
  }

  else
  {
    if (*(a1 + 72) != 1 || (v11 = *(a1 + 64), v11 == [v8 intent]))
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      v10 = 56;
      goto LABEL_7;
    }

    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __179__IXAppInstallCoordinator__coordinatorForAppWithIdentity_targetingInstallationDomain_withClientID_intent_createIfNotExisting_requireMatchingIntent_scopeRequirement_created_error___block_invoke_24_cold_1((a1 + 64), v8);
    }

    v17 = *(a1 + 64);
    [v8 intent];
    a3 = 1;
    v14 = _CreateError("+[IXAppInstallCoordinator _coordinatorForAppWithIdentity:targetingInstallationDomain:withClientID:intent:createIfNotExisting:requireMatchingIntent:scopeRequirement:created:error:]_block_invoke", 350, @"IXErrorDomain", 1uLL, 0, 0, @"Expected to create coordinator with intent %lu but created object had intent %lu", v13, v17);
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v10 = 40;
LABEL_7:
  *(*(*(a1 + v10) + 8) + 24) = a3;
}

+ (id)existingCoordinatorForAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  v8 = [self existingCoordinatorForAppWithIdentity:v7 error:error];

  return v8;
}

+ (id)existingCoordinatorForAppWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = [objc_opt_class() intent] != 0;
  LOBYTE(v10) = 0;
  v8 = [self _coordinatorForAppWithIdentity:identityCopy targetingInstallationDomain:1 withClientID:0 intent:objc_msgSend(objc_opt_class() createIfNotExisting:"intent") requireMatchingIntent:0 scopeRequirement:v7 created:v10 error:{0, error}];

  return v8;
}

+ (BOOL)enumerateCoordinatorsWithError:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  LOBYTE(error) = [self _synchronouslyEnumerateCoordinatorsForIntent:objc_msgSend(objc_opt_class() error:"intent") usingBlock:{error, blockCopy}];

  return error;
}

+ (void)enumerateCoordinatorsUsingBlock:(id)block
{
  blockCopy = block;
  [self _asynchronouslyEnumerateCoordinatorsForIntent:objc_msgSend(objc_opt_class() usingBlock:{"intent"), blockCopy}];
}

+ (Class)classForIntent:(unint64_t)intent
{
  v12 = *MEMORY[0x1E69E9840];
  if (intent <= 3)
  {
    if (intent == 1 || intent == 2 || intent == 3)
    {
      goto LABEL_14;
    }
  }

  else if (intent <= 6 || intent == 7)
  {
LABEL_14:
    v5 = objc_opt_class();
    goto LABEL_15;
  }

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator classForIntent:]";
    v10 = 2048;
    intentCopy = intent;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: No class for intent %lu", &v8, 0x16u);
  }

  v5 = 0;
LABEL_15:
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)_asynchronouslyEnumerateCoordinatorsForIntent:(unint64_t)intent usingBlock:(id)block
{
  blockCopy = block;
  v7 = IXQueueForConcurrentOperations();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke;
  v9[3] = &unk_1E85C5538;
  v10 = blockCopy;
  intentCopy = intent;
  selfCopy = self;
  v8 = blockCopy;
  IXDispatchAsyncWithAutoreleasePool(v7, v9);
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke(uint64_t a1)
{
  v2 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2;
  v11[3] = &unk_1E85C5470;
  v12 = *(a1 + 32);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];

  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2_47;
    v7[3] = &unk_1E85C5510;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    v8 = v3;
    [v8 _remote_fetchSeedsForCoordinatorsWithIntent:v4 completion:v7];
  }
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", buf, 0x16u);
  }

  v5 = IXQueueForConcurrentOperations();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_46;
  v9[3] = &unk_1E85C5448;
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  IXDispatchAsyncWithAutoreleasePool(v5, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IXQueueForConcurrentOperations();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_3;
    v28[3] = &unk_1E85C5448;
    v30 = *(a1 + 40);
    v29 = v6;
    IXDispatchAsyncWithAutoreleasePool(v7, v28);

    v8 = v30;
  }

  else if ([v5 count])
  {
    v9 = [v5 mutableCopy];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3042000000;
    v23 = __Block_byref_object_copy__48;
    v24 = __Block_byref_object_dispose__49;
    v25 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50;
    v14[3] = &unk_1E85C54E8;
    v18 = &v20;
    v17 = *(a1 + 40);
    v8 = v9;
    v10 = *(a1 + 48);
    v15 = v8;
    v19 = v10;
    v16 = *(a1 + 32);
    v11 = [v14 copy];
    objc_storeWeak(v21 + 5, v11);
    v12 = IXQueueForConcurrentOperations();
    IXDispatchAsyncWithAutoreleasePool(v12, v11);

    _Block_object_dispose(&v20, 8);
    objc_destroyWeak(&v25);
  }

  else
  {
    v13 = IXQueueForConcurrentOperations();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_4;
    v26[3] = &unk_1E85C5258;
    v27 = *(a1 + 40);
    IXDispatchAsyncWithAutoreleasePool(v13, v26);

    v8 = v27;
  }
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) lastObject];
    if (v3)
    {
      [*(a1 + 32) removeLastObject];
      v4 = [*(a1 + 64) classForIntent:{objc_msgSend(v3, "intent")}];
      if (v4)
      {
        v5 = [[v4 alloc] initWithSeed:v3];
        if (v5)
        {
          v6 = *(a1 + 40);
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_3_64;
          v34[3] = &unk_1E85C54C0;
          v35 = v3;
          v7 = *(a1 + 48);
          v8 = *(a1 + 64);
          v38 = v7;
          v40 = v8;
          v5 = v5;
          v36 = v5;
          v37 = *(a1 + 32);
          v39 = WeakRetained;
          [v6 _remote_createAppInstallCoordinatorWithSeed:v35 createIfNotExisting:0 requireMatchingIntent:1 scopeRequirement:0 completion:v34];

          v9 = v35;
        }

        else
        {
          v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_1();
          }

          v25 = _CreateError("+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke", 585, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create coordinator object", v24, v32);
          v26 = IXQueueForConcurrentOperations();
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2_63;
          v41[3] = &unk_1E85C5448;
          v27 = *(a1 + 48);
          v42 = v25;
          v43 = v27;
          v9 = v25;
          IXDispatchAsyncWithAutoreleasePool(v26, v41);
        }
      }

      else
      {
        v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_2(v3);
        }

        v21 = [v3 intent];
        if (v21 >= 8)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v21];
        }

        else
        {
          v22 = off_1E85C5E60[v21];
        }

        v33 = [v3 identity];
        v29 = _CreateError("+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke", 576, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to find class for coordinator intent %@ for coordinator %@", v28, v22);

        v30 = IXQueueForConcurrentOperations();
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2_59;
        v44[3] = &unk_1E85C5448;
        v31 = *(a1 + 48);
        v45 = v29;
        v46 = v31;
        v5 = v29;
        IXDispatchAsyncWithAutoreleasePool(v30, v44);

        v9 = v46;
      }
    }

    else
    {
      v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_3();
      }

      v17 = _CreateError("+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke", 565, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to get next seed while enumerating install coordinators", v16, v32);
      v18 = IXQueueForConcurrentOperations();
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2_58;
      v47[3] = &unk_1E85C5448;
      v19 = *(a1 + 48);
      v48 = v17;
      v49 = v19;
      v5 = v17;
      IXDispatchAsyncWithAutoreleasePool(v18, v47);

      v9 = v49;
    }
  }

  else
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_4();
    }

    v12 = _CreateError("+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke", 556, @"IXErrorDomain", 1uLL, 0, 0, @"Async enumeration block reference somehow became nil while enumerating install coordinators", v11, v32);
    v13 = IXQueueForConcurrentOperations();
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_2_54;
    v50[3] = &unk_1E85C5448;
    v14 = *(a1 + 48);
    v51 = v12;
    v52 = v14;
    v3 = v12;
    IXDispatchAsyncWithAutoreleasePool(v13, v50);

    v5 = v52;
  }
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_3_64(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = IXQueueForConcurrentOperations();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_4_65;
  v18[3] = &unk_1E85C5498;
  v19 = v8;
  v20 = *(a1 + 32);
  v10 = *(a1 + 56);
  v25 = a3;
  v24 = *(a1 + 72);
  v21 = v7;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  *&v14 = v10;
  *(&v14 + 1) = v13;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v22 = v15;
  v23 = v14;
  v16 = v7;
  v17 = v8;
  IXDispatchAsyncWithAutoreleasePool(v9, v18);
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_4_65(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:@"IXErrorDomain"])
    {
      v4 = [*(a1 + 32) code];

      if (v4 == 5)
      {
        v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(a1 + 40) identity];
          *buf = 136315394;
          v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke_4";
          v37 = 2112;
          v38 = v6;
          v7 = "%s: When enumerating coordinators, existing coordinator for %@ had a different intent than expected (likely recreated)";
LABEL_15:
          _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
LABEL_26:

          goto LABEL_27;
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    v14 = [*(a1 + 32) domain];
    if ([v14 isEqualToString:@"IXErrorDomain"])
    {
      v15 = [*(a1 + 32) code];

      if (v15 == 6)
      {
        v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(a1 + 40) identity];
          *buf = 136315394;
          v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke";
          v37 = 2112;
          v38 = v6;
          v7 = "%s: When enumerating coordinators, coordinator for %@ no longer existed when we tried to fetch it";
          goto LABEL_15;
        }

LABEL_27:

LABEL_28:
        if ([*(a1 + 64) count])
        {
          v30 = IXQueueForConcurrentOperations();
          IXDispatchAsyncWithAutoreleasePool(v30, *(a1 + 80));

          goto LABEL_34;
        }

        v31 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke";
          _os_log_impl(&dword_1DA47A000, v31, OS_LOG_TYPE_DEFAULT, "%s: Enumeration complete; calling client block to signal", buf, 0xCu);
        }

        v20 = *(*(a1 + 72) + 16);
LABEL_33:
        v20();
        goto LABEL_34;
      }
    }

    else
    {
    }

    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 40) identity];
      v18 = *(a1 + 32);
      *buf = 136315650;
      v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke";
      v37 = 2112;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: When enumerating coordinators, got unexpected error when trying to fetch coordinator for %@ : %@", buf, 0x20u);
    }

    v19 = *(a1 + 32);
    v20 = *(*(a1 + 72) + 16);
    goto LABEL_33;
  }

  if (*(a1 + 96) == 1)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_4_65_cold_1(a1);
    }

    v9 = [*(a1 + 40) identity];
    v5 = _CreateError("+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke", 611, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpectedly created coordinator for %@ while enumerating canceling it", v10, v9);;

    v11 = *(a1 + 88);
    v12 = objc_opt_class();
    v13 = [*(a1 + 40) identity];
    [v12 cancelCoordinatorForAppWithIdentity:v13 withReason:v5 client:15 error:0];

    goto LABEL_27;
  }

  v21 = [*(a1 + 48) uniqueIdentifier];
  v22 = [*(a1 + 40) uniqueIdentifier];
  v23 = [v21 isEqual:v22];

  if ((v23 & 1) == 0)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) identity];
      v28 = [*(a1 + 48) uniqueIdentifier];
      v29 = [*(a1 + 40) uniqueIdentifier];
      *buf = 136315906;
      v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke";
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Got back a different coordinator for %@ than fetched originally; got %@ expected %@ (likely recreated in the meantime)", buf, 0x2Au);

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  [*(a1 + 56) _updateInitWithSeed:*(a1 + 48) notifyDaemon:0];
  v24 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 56) bundleID];
    v26 = [*(a1 + 48) intent];
    if (v26 >= 8)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v26];
    }

    else
    {
      v27 = off_1E85C5E60[v26];
    }

    *buf = 136315650;
    v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke";
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v27;
    _os_log_impl(&dword_1DA47A000, v24, OS_LOG_TYPE_DEFAULT, "%s: Enumeration is calling client block with coordinator for %@ intent %@", buf, 0x20u);
  }

  v33 = *(a1 + 56);
  if ((*(*(a1 + 72) + 16))())
  {
    goto LABEL_28;
  }

  v34 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "+[IXAppInstallCoordinator _asynchronouslyEnumerateCoordinatorsForIntent:usingBlock:]_block_invoke";
    _os_log_impl(&dword_1DA47A000, v34, OS_LOG_TYPE_DEFAULT, "%s: Client returned NO from enumeration block so we're stopping", buf, 0xCu);
  }

LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_synchronouslyEnumerateCoordinatorsForIntent:(unint64_t)intent error:(id *)error usingBlock:(id)block
{
  v78 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy_;
  v67 = __Block_byref_object_dispose_;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  v6 = +[IXServerConnection sharedConnection];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __89__IXAppInstallCoordinator__synchronouslyEnumerateCoordinatorsForIntent_error_usingBlock___block_invoke;
  v56[3] = &unk_1E85C5560;
  v56[4] = &v63;
  v47 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v56];

  if (!v47 || (v55[0] = MEMORY[0x1E69E9820], v55[1] = 3221225472, v55[2] = __89__IXAppInstallCoordinator__synchronouslyEnumerateCoordinatorsForIntent_error_usingBlock___block_invoke_70, v55[3] = &unk_1E85C5588, v55[4] = &v63, v55[5] = &v57, [v47 _remote_fetchSeedsForCoordinatorsWithIntent:intent completion:v55], v64[5]))
  {
LABEL_3:
    LOBYTE(v7) = 0;
    if (error)
    {
      *error = v64[5];
    }

    goto LABEL_49;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v58[5];
  v7 = [obj countByEnumeratingWithState:&v51 objects:v77 count:16];
  if (!v7)
  {
LABEL_43:

    goto LABEL_46;
  }

  v48 = *v52;
LABEL_8:
  v8 = 0;
  while (1)
  {
    if (*v52 != v48)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v51 + 1) + 8 * v8);
    v10 = objc_autoreleasePoolPush();
    identity = [v9 identity];
    installationDomain = [v9 installationDomain];
    creator = [v9 creator];
    intent = [v9 intent];
    v50 = 0;
    LOBYTE(v43) = 0;
    v15 = [self _coordinatorForAppWithIdentity:identity targetingInstallationDomain:installationDomain withClientID:creator intent:intent createIfNotExisting:0 requireMatchingIntent:1 scopeRequirement:v43 created:0 error:&v50];
    v16 = v50;

    if (!v15)
    {
      domain = [(__CFString *)v16 domain];
      if ([domain isEqualToString:@"IXErrorDomain"])
      {
        v26 = [(__CFString *)v16 code]== 5;

        if (v26)
        {
          v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            identity2 = [v9 identity];
            *buf = 136315394;
            v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
            v71 = 2112;
            v72 = identity2;
            _os_log_impl(&dword_1DA47A000, v20, OS_LOG_TYPE_DEFAULT, "%s: When enumerating coordinators, existing coordinator for %@ had a different intent than expected (likely recreated)", buf, 0x16u);
          }

          goto LABEL_22;
        }
      }

      else
      {
      }

      domain2 = [(__CFString *)v16 domain];
      if (![domain2 isEqualToString:@"IXErrorDomain"])
      {

LABEL_29:
        v36 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          identity3 = [v9 identity];
          *buf = 136315650;
          v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
          v71 = 2112;
          v72 = identity3;
          v73 = 2112;
          v74 = v16;
          _os_log_impl(&dword_1DA47A000, v36, OS_LOG_TYPE_DEFAULT, "%s: When enumerating coordinators, got unexpected error when trying to fetch coordinator for %@ : %@", buf, 0x20u);
        }

        v38 = v64;
        v39 = v16;
        v32 = 0;
        v20 = v38[5];
        v38[5] = v39;
        v31 = 2;
        goto LABEL_39;
      }

      v34 = [(__CFString *)v16 code]== 6;

      if (!v34)
      {
        goto LABEL_29;
      }

      v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        identity4 = [v9 identity];
        *buf = 136315394;
        v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
        v71 = 2112;
        v72 = identity4;
        _os_log_impl(&dword_1DA47A000, v20, OS_LOG_TYPE_DEFAULT, "%s: When enumerating coordinators, coordinator for %@ no longer existed when we tried to fetch it", buf, 0x16u);
      }

      goto LABEL_22;
    }

    uniqueIdentifier = [v15 uniqueIdentifier];
    uniqueIdentifier2 = [v9 uniqueIdentifier];
    v19 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      if (v21)
      {
        identity5 = [v9 identity];
        uniqueIdentifier3 = [v15 uniqueIdentifier];
        uniqueIdentifier4 = [v9 uniqueIdentifier];
        *buf = 136315906;
        v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
        v71 = 2112;
        v72 = identity5;
        v73 = 2112;
        v74 = uniqueIdentifier3;
        v75 = 2112;
        v76 = uniqueIdentifier4;
        _os_log_impl(&dword_1DA47A000, v20, OS_LOG_TYPE_DEFAULT, "%s: Got back a different coordinator for %@ than fetched originally; got %@ expected %@ (likely recreated in the meantime)", buf, 0x2Au);
      }

LABEL_22:
      v31 = 0;
      v32 = 1;
      goto LABEL_39;
    }

    if (v21)
    {
      bundleID = [v15 bundleID];
      intent2 = [v9 intent];
      if (intent2 >= 8)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", intent2];
      }

      else
      {
        v24 = off_1E85C5E60[intent2];
      }

      *buf = 136315650;
      v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
      v71 = 2112;
      v72 = bundleID;
      v73 = 2112;
      v74 = v24;
      _os_log_impl(&dword_1DA47A000, v20, OS_LOG_TYPE_DEFAULT, "%s: Enumeration is calling client block with coordinator for %@ intent %@", buf, 0x20u);
    }

    if (blockCopy[2](blockCopy, v15))
    {
      v31 = 0;
      v32 = 1;
      goto LABEL_40;
    }

    v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
      _os_log_impl(&dword_1DA47A000, v20, OS_LOG_TYPE_DEFAULT, "%s: Client returned NO from enumeration block so we're stopping", buf, 0xCu);
    }

    v32 = 0;
    v31 = 3;
LABEL_39:

LABEL_40:
    objc_autoreleasePoolPop(v10);
    if (!v32)
    {
      break;
    }

    if (v7 == ++v8)
    {
      v7 = [obj countByEnumeratingWithState:&v51 objects:v77 count:16];
      if (v7)
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    }
  }

  if (v31 == 2)
  {
    goto LABEL_3;
  }

  if (v31 == 3)
  {
LABEL_46:
    v40 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v70 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]";
      _os_log_impl(&dword_1DA47A000, v40, OS_LOG_TYPE_DEFAULT, "%s: Enumeration complete", buf, 0xCu);
    }

    LOBYTE(v7) = 1;
  }

LABEL_49:

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  v41 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void __89__IXAppInstallCoordinator__synchronouslyEnumerateCoordinatorsForIntent_error_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator _synchronouslyEnumerateCoordinatorsForIntent:error:usingBlock:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __89__IXAppInstallCoordinator__synchronouslyEnumerateCoordinatorsForIntent_error_usingBlock___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

+ (BOOL)cancelCoordinatorForAppWithBundleID:(id)d withReason:(id)reason client:(unint64_t)client error:(id *)error
{
  reasonCopy = reason;
  dCopy = d;
  v12 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  LOBYTE(error) = [self cancelCoordinatorForAppWithIdentity:v12 withReason:reasonCopy client:client error:error];
  return error;
}

+ (void)cancelCoordinatorForAppWithBundleID:(id)d withReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  dCopy = d;
  v13 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self cancelCoordinatorForAppWithIdentity:v13 withReason:reasonCopy client:client completion:completionCopy];
}

+ (BOOL)cancelCoordinatorForAppWithIdentity:(id)identity withReason:(id)reason client:(unint64_t)client error:(id *)error
{
  identityCopy = identity;
  reasonCopy = reason;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v11 = _CheckCancelRequestSanity(reasonCopy, client);
  v12 = v21[5];
  v21[5] = v11;

  v13 = v21[5];
  if (v13)
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = +[IXServerConnection sharedConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_error___block_invoke;
    v19[3] = &unk_1E85C5560;
    v19[4] = &v20;
    v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v19];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_error___block_invoke_71;
    v18[3] = &unk_1E85C55B0;
    v18[4] = &v20;
    [v16 _remote_cancelCoordinatorForAppWithIdentity:identityCopy reason:reasonCopy client:client completion:v18];

    v13 = v21[5];
    v14 = v13 == 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    *error = v13;
  }

LABEL_7:
  _Block_object_dispose(&v20, 8);

  return v14;
}

void __87__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator cancelCoordinatorForAppWithIdentity:withReason:client:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __87__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_error___block_invoke_71(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    v6 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v6 acquireDatabase];
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

+ (void)cancelCoordinatorForAppWithIdentity:(id)identity withReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  identityCopy = identity;
  reasonCopy = reason;
  completionCopy = completion;
  v12 = _CheckCancelRequestSanity(reasonCopy, client);
  if (v12)
  {
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    v13 = +[IXServerConnection sharedConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_completion___block_invoke;
    v18[3] = &unk_1E85C5470;
    v14 = completionCopy;
    v19 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v18];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_completion___block_invoke_74;
    v16[3] = &unk_1E85C55D8;
    v17 = v14;
    [v15 _remote_cancelCoordinatorForAppWithIdentity:identityCopy reason:reasonCopy client:client completion:v16];
  }
}

void __92__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator cancelCoordinatorForAppWithIdentity:withReason:client:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __92__IXAppInstallCoordinator_cancelCoordinatorForAppWithIdentity_withReason_client_completion___block_invoke_74(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (!v6 && a2)
  {
    v5 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v5 acquireDatabase];
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)cancelCoordinatorsForAppsWithBundleIDs:(id)ds withReason:(id)reason client:(unint64_t)client error:(id *)error
{
  reasonCopy = reason;
  v11 = [IXApplicationIdentity identitiesForBundleIdentifiers:ds];
  LOBYTE(error) = [self cancelCoordinatorsForAppsWithApplicationIdentities:v11 withReason:reasonCopy client:client error:error];

  return error;
}

+ (void)cancelCoordinatorsForAppsWithBundleIDs:(id)ds withReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  v12 = [IXApplicationIdentity identitiesForBundleIdentifiers:ds];
  [self cancelCoordinatorsForAppsWithApplicationIdentities:v12 withReason:reasonCopy client:client completion:completionCopy];
}

+ (BOOL)cancelCoordinatorsForAppsWithApplicationIdentities:(id)identities withReason:(id)reason client:(unint64_t)client error:(id *)error
{
  identitiesCopy = identities;
  reasonCopy = reason;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v11 = _CheckCancelRequestSanity(reasonCopy, client);
  v12 = v21[5];
  v21[5] = v11;

  v13 = v21[5];
  if (v13)
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = +[IXServerConnection sharedConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_error___block_invoke;
    v19[3] = &unk_1E85C5560;
    v19[4] = &v20;
    v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v19];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __102__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_error___block_invoke_75;
    v18[3] = &unk_1E85C5600;
    v18[4] = &v20;
    [v16 _remote_cancelCoordinatorsForAppsWithIdentities:identitiesCopy reason:reasonCopy client:client completion:v18];

    v13 = v21[5];
    v14 = v13 == 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    *error = v13;
  }

LABEL_7:
  _Block_object_dispose(&v20, 8);

  return v14;
}

void __102__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator cancelCoordinatorsForAppsWithApplicationIdentities:withReason:client:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __102__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_error___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 allObjects];
    v8 = [v7 firstObject];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && [v10 BOOLValue])
    {
      v11 = [MEMORY[0x1E6963608] defaultWorkspace];
      [v11 acquireDatabase];
    }
  }

  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
}

+ (void)cancelCoordinatorsForAppsWithApplicationIdentities:(id)identities withReason:(id)reason client:(unint64_t)client completion:(id)completion
{
  identitiesCopy = identities;
  reasonCopy = reason;
  completionCopy = completion;
  v12 = _CheckCancelRequestSanity(reasonCopy, client);
  if (v12)
  {
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    v13 = +[IXServerConnection sharedConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __107__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_completion___block_invoke;
    v18[3] = &unk_1E85C5470;
    v14 = completionCopy;
    v19 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v18];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_completion___block_invoke_78;
    v16[3] = &unk_1E85C5628;
    v17 = v14;
    [v15 _remote_cancelCoordinatorsForAppsWithIdentities:identitiesCopy reason:reasonCopy client:client completion:v16];
  }
}

void __107__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator cancelCoordinatorsForAppsWithApplicationIdentities:withReason:client:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __107__IXAppInstallCoordinator_cancelCoordinatorsForAppsWithApplicationIdentities_withReason_client_completion___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2 && !v5)
  {
    v6 = [a2 allObjects];
    v7 = [v6 firstObject];
    objc_opt_class();
    v8 = v7;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9 && [v9 BOOLValue])
    {
      v10 = [MEMORY[0x1E6963608] defaultWorkspace];
      [v10 acquireDatabase];
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)pauseCoordinatorForAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  LOBYTE(error) = [self pauseCoordinatorForAppWithIdentity:v7 error:error];
  return error;
}

+ (void)pauseCoordinatorForAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self pauseCoordinatorForAppWithIdentity:v8 completion:completionCopy];
}

+ (BOOL)pauseCoordinatorForAppWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__IXAppInstallCoordinator_pauseCoordinatorForAppWithIdentity_error___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__IXAppInstallCoordinator_pauseCoordinatorForAppWithIdentity_error___block_invoke_79;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v13;
  [v7 _remote_setIsPaused:1 forCoordinatorForAppWithIdentity:identityCopy completion:v11];
  v8 = v14[5];
  if (error && v8)
  {
    *error = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

void __68__IXAppInstallCoordinator_pauseCoordinatorForAppWithIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator pauseCoordinatorForAppWithIdentity:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)pauseCoordinatorForAppWithIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v7 = +[IXServerConnection sharedConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__IXAppInstallCoordinator_pauseCoordinatorForAppWithIdentity_completion___block_invoke;
  v10[3] = &unk_1E85C5470;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v10];

  [v9 _remote_setIsPaused:1 forCoordinatorForAppWithIdentity:identityCopy completion:v8];
}

void __73__IXAppInstallCoordinator_pauseCoordinatorForAppWithIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator pauseCoordinatorForAppWithIdentity:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)resumeCoordinatorForAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  LOBYTE(error) = [self resumeCoordinatorForAppWithIdentity:v7 error:error];
  return error;
}

+ (void)resumeCoordinatorForAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self resumeCoordinatorForAppWithIdentity:v8 completion:completionCopy];
}

+ (BOOL)resumeCoordinatorForAppWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__IXAppInstallCoordinator_resumeCoordinatorForAppWithIdentity_error___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__IXAppInstallCoordinator_resumeCoordinatorForAppWithIdentity_error___block_invoke_80;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v13;
  [v7 _remote_setIsPaused:0 forCoordinatorForAppWithIdentity:identityCopy completion:v11];
  v8 = v14[5];
  if (error && v8)
  {
    *error = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

void __69__IXAppInstallCoordinator_resumeCoordinatorForAppWithIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator resumeCoordinatorForAppWithIdentity:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)resumeCoordinatorForAppWithIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v7 = +[IXServerConnection sharedConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__IXAppInstallCoordinator_resumeCoordinatorForAppWithIdentity_completion___block_invoke;
  v10[3] = &unk_1E85C5470;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v10];

  [v9 _remote_setIsPaused:0 forCoordinatorForAppWithIdentity:identityCopy completion:v8];
}

void __74__IXAppInstallCoordinator_resumeCoordinatorForAppWithIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator resumeCoordinatorForAppWithIdentity:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)prioritizeCoordinatorForAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  LOBYTE(error) = [self prioritizeCoordinatorForAppWithIdentity:v7 error:error];
  return error;
}

+ (void)prioritizeCoordinatorForAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self prioritizeCoordinatorForAppWithIdentity:v8 completion:completionCopy];
}

+ (BOOL)prioritizeCoordinatorForAppWithIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_error___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_error___block_invoke_81;
  v11[3] = &unk_1E85C55B0;
  v11[4] = &v13;
  [v7 _remote_prioritizeCoordinatorForAppWithIdentity:identityCopy completion:v11];
  v8 = v14[5];
  if (error && v8)
  {
    *error = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

void __73__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator prioritizeCoordinatorForAppWithIdentity:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __73__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_error___block_invoke_81(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    v6 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v6 acquireDatabase];
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

+ (void)prioritizeCoordinatorForAppWithIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_completion___block_invoke;
  v13[3] = &unk_1E85C5470;
  v8 = completionCopy;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_completion___block_invoke_82;
  v11[3] = &unk_1E85C55D8;
  v12 = v8;
  v10 = v8;
  [v9 _remote_prioritizeCoordinatorForAppWithIdentity:identityCopy completion:v11];
}

void __78__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator prioritizeCoordinatorForAppWithIdentity:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __78__IXAppInstallCoordinator_prioritizeCoordinatorForAppWithIdentity_completion___block_invoke_82(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (!v6 && a2)
  {
    v5 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v5 acquireDatabase];
  }

  (*(*(a1 + 32) + 16))();
}

void __103__IXAppInstallCoordinator_uninstallAppWithBundleID_requestUserConfirmation_waitForDeletion_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v6 = v7;
  if (a2 == 1)
  {
    v6 = _CreateError("+[IXAppInstallCoordinator uninstallAppWithBundleID:requestUserConfirmation:waitForDeletion:completion:]_block_invoke", 1077, @"IXErrorDomain", 0x15uLL, 0, 0, @"User canceled the uninstall of the app with bundle ID %@", v5, *(a1 + 32));
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)uninstallAppWithBundleID:(id)d options:(id)options disposition:(unint64_t *)disposition error:(id *)error legacyProgressBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  dCopy = d;
  v15 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  LOBYTE(error) = [self uninstallAppWithIdentity:v15 options:optionsCopy disposition:disposition error:error legacyProgressBlock:blockCopy];
  return error;
}

+ (void)uninstallAppWithBundleID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  v11 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self uninstallAppWithIdentity:v11 options:optionsCopy completion:completionCopy];
}

+ (BOOL)uninstallAppWithIdentity:(id)identity options:(id)options disposition:(unint64_t *)disposition error:(id *)error legacyProgressBlock:(id)block
{
  v60[2] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  optionsCopy = options;
  blockCopy = block;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (blockCopy)
  {
    v59[0] = @"PercentComplete";
    v59[1] = @"Status";
    v60[0] = &unk_1F5607388;
    v15 = IXStatusForUninstallationProgress(50);
    v60[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    blockCopy[2](blockCopy, v16);
  }

  v17 = +[IXServerConnection sharedConnection];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __98__IXAppInstallCoordinator_uninstallAppWithIdentity_options_disposition_error_legacyProgressBlock___block_invoke;
  v40[3] = &unk_1E85C5560;
  v40[4] = &v45;
  v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v40];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __98__IXAppInstallCoordinator_uninstallAppWithIdentity_options_disposition_error_legacyProgressBlock___block_invoke_96;
  v36[3] = &unk_1E85C5678;
  v38 = &v45;
  v19 = identityCopy;
  v37 = v19;
  v39 = &v41;
  [v18 _remote_uninstallAppWithIdentity:v19 options:optionsCopy completion:v36];

  v20 = v42[3];
  if (v20 != 4)
  {
LABEL_6:
    if ((v20 - 3) <= 1)
    {
      v24 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if (v42[3] == 3)
        {
          v25 = @"uninstall";
        }

        else
        {
          v25 = @"demotion";
        }

        *buf = 136315650;
        v54 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:disposition:error:legacyProgressBlock:]";
        v55 = 2112;
        v56 = v19;
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&dword_1DA47A000, v24, OS_LOG_TYPE_DEFAULT, "%s: Resyncing local LS database to ensure it knows about %@ of %@", buf, 0x20u);
      }

      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      [defaultWorkspace acquireDatabase];

      v27 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (v42[3] == 3)
        {
          v28 = @"uninstall";
        }

        else
        {
          v28 = @"demotion";
        }

        *buf = 136315650;
        v54 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:disposition:error:legacyProgressBlock:]";
        v55 = 2112;
        v56 = v19;
        v57 = 2112;
        v58 = v28;
        _os_log_impl(&dword_1DA47A000, v27, OS_LOG_TYPE_DEFAULT, "%s: Resync of local LS database complete after %@ of %@", buf, 0x20u);
      }
    }

    if (disposition)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  waitForDeletion = [optionsCopy waitForDeletion];
  v22 = (v46 + 5);
  obj = v46[5];
  v23 = [self demoteAppToPlaceholderWithApplicationIdentity:v19 forReason:2 waitForDeletion:waitForDeletion ignoreRemovability:0 error:&obj];
  objc_storeStrong(v22, obj);
  if (v23)
  {
    v20 = v42[3];
    goto LABEL_6;
  }

  v42[3] = 0;
  if (disposition)
  {
LABEL_19:
    *disposition = v42[3];
  }

LABEL_20:
  if (blockCopy)
  {
    v51[0] = @"PercentComplete";
    v51[1] = @"Status";
    v52[0] = &unk_1F56073A0;
    v29 = IXStatusForUninstallationProgress(90);
    v52[1] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
    blockCopy[2](blockCopy, v30);
  }

  v31 = v46[5];
  if (error && v31)
  {
    *error = v31;
    v31 = v46[5];
  }

  v32 = v31 == 0;

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void __98__IXAppInstallCoordinator_uninstallAppWithIdentity_options_disposition_error_legacyProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:disposition:error:legacyProgressBlock:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __98__IXAppInstallCoordinator_uninstallAppWithIdentity_options_disposition_error_legacyProgressBlock___block_invoke_96(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = *(*(a1[5] + 8) + 40);
      v13 = 136315650;
      v14 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:disposition:error:legacyProgressBlock:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to uninstall bundleID:%@ with:%@", &v13, 0x20u);
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = IXStringForUninstallDisposition(*(*(a1[6] + 8) + 24));
      v11 = a1[4];
      v13 = 136315650;
      v14 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:disposition:error:legacyProgressBlock:]_block_invoke";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from installcoordinationd for bundleID %@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)uninstallAppWithIdentity:(id)identity options:(id)options completion:(id)completion
{
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke;
  v20[3] = &unk_1E85C56C8;
  v21 = identityCopy;
  v11 = completionCopy;
  v23 = v11;
  selfCopy = self;
  v22 = optionsCopy;
  v12 = optionsCopy;
  v13 = identityCopy;
  v14 = MEMORY[0x1DA74F400](v20);
  v15 = +[IXServerConnection sharedConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke_106;
  v18[3] = &unk_1E85C5470;
  v19 = v11;
  v16 = v11;
  v17 = [v15 remoteObjectProxyWithErrorHandler:v18];
  [v17 _remote_uninstallAppWithIdentity:v13 options:v12 completion:v14];
}

void __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = IXStringForUninstallDisposition(a2);
    v8 = *(a1 + 32);
    *buf = 136315650;
    v24 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:completion:]_block_invoke";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Received disposition %@ from installcoordinationd for %@", buf, 0x20u);
  }

  if (v5)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke_cold_1(a1);
    }

    v10 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  if (a2 == 3)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 136315394;
      v24 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:completion:]_block_invoke";
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Resyncing local LS database to ensure it knows about uninstall of %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v16 acquireDatabase];

    v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 136315394;
      v24 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:completion:]_block_invoke";
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1DA47A000, v17, OS_LOG_TYPE_DEFAULT, "%s: Resync of local LS database complete after uninstall of %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (a2 != 4)
  {
LABEL_15:
    v10 = *(*(a1 + 48) + 16);
LABEL_16:
    v10();
    goto LABEL_17;
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) waitForDeletion];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke_105;
  v20[3] = &unk_1E85C56A0;
  v22 = *(a1 + 48);
  v21 = *(a1 + 32);
  [v11 demoteAppToPlaceholderWithApplicationIdentity:v12 forReason:2 waitForDeletion:v13 ignoreRemovability:0 completion:v20];

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke_105(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v13 = 136315394;
      v14 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:completion:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Resyncing local LS database to ensure it knows about demotion of %@", &v13, 0x16u);
    }

    v9 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v9 acquireDatabase];

    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 136315394;
      v14 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:completion:]_block_invoke";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: Resync of local LS database complete after demotion of %@", &v13, 0x16u);
    }

    result = (*(*(a1 + 40) + 16))();
    v12 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke_106(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "+[IXAppInstallCoordinator uninstallAppWithIdentity:options:completion:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)revertAppWithBundleID:(id)d resultingApplicationRecord:(id *)record error:(id *)error
{
  dCopy = d;
  v9 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  LOBYTE(error) = [self revertAppWithIdentity:v9 resultingApplicationRecord:record error:error];
  return error;
}

+ (void)revertAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__IXAppInstallCoordinator_revertAppWithBundleID_completion___block_invoke;
  v8[3] = &unk_1E85C56F0;
  v9 = completionCopy;
  v7 = completionCopy;
  [self revertAppWithBundleID:d completionWithApplicationRecord:v8];
}

+ (void)revertAppWithBundleID:(id)d completionWithApplicationRecord:(id)record
{
  recordCopy = record;
  dCopy = d;
  v8 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self revertAppWithIdentity:v8 completionWithApplicationRecord:recordCopy];
}

+ (BOOL)revertAppWithIdentity:(id)identity resultingApplicationRecord:(id *)record error:(id *)error
{
  identityCopy = identity;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v8 = +[IXServerConnection sharedConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__IXAppInstallCoordinator_revertAppWithIdentity_resultingApplicationRecord_error___block_invoke;
  v18[3] = &unk_1E85C5560;
  v18[4] = &v25;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__IXAppInstallCoordinator_revertAppWithIdentity_resultingApplicationRecord_error___block_invoke_108;
  v17[3] = &unk_1E85C5718;
  v17[4] = &v25;
  v17[5] = &v19;
  [v9 _remote_revertAppWithIdentity:identityCopy completion:v17];

  v10 = v26[5];
  if (!v10)
  {
    v11 = v20[5];
    bundleID = [identityCopy bundleID];
    v13 = IXApplicationRecordForRecordPromise(v11, bundleID);

    if (record)
    {
      v14 = v13;
      *record = v13;
    }

    v10 = v26[5];
  }

  if (error && v10)
  {
    *error = v10;
    v10 = v26[5];
  }

  v15 = v10 == 0;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __82__IXAppInstallCoordinator_revertAppWithIdentity_resultingApplicationRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __82__IXAppInstallCoordinator_revertAppWithIdentity_resultingApplicationRecord_error___block_invoke_cold_1();
    }
  }
}

void __82__IXAppInstallCoordinator_revertAppWithIdentity_resultingApplicationRecord_error___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

+ (void)revertAppWithIdentity:(id)identity completionWithApplicationRecord:(id)record
{
  identityCopy = identity;
  recordCopy = record;
  v7 = +[IXServerConnection sharedConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__IXAppInstallCoordinator_revertAppWithIdentity_completionWithApplicationRecord___block_invoke;
  v15[3] = &unk_1E85C5470;
  v8 = recordCopy;
  v16 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__IXAppInstallCoordinator_revertAppWithIdentity_completionWithApplicationRecord___block_invoke_110;
  v12[3] = &unk_1E85C5740;
  v13 = identityCopy;
  v14 = v8;
  v10 = identityCopy;
  v11 = v8;
  [v9 _remote_revertAppWithIdentity:v10 completion:v12];
}

void __81__IXAppInstallCoordinator_revertAppWithIdentity_completionWithApplicationRecord___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "+[IXAppInstallCoordinator revertAppWithIdentity:completionWithApplicationRecord:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __81__IXAppInstallCoordinator_revertAppWithIdentity_completionWithApplicationRecord___block_invoke_110(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) bundleID];
    v6 = IXApplicationRecordForRecordPromise(v7, v5);

    (*(*(a1 + 40) + 16))();
  }
}

+ (unint64_t)removabilityForAppWithBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  v8 = [self removabilityForAppWithIdentity:v7 error:error];
  return v8;
}

+ (unint64_t)removabilityForAppWithIdentity:(id)identity error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = IXGetUncachedRemovabilityMetadataForApp(identityCopy, 1, 1, 0);
  removability = [v6 removability];
  if (removability)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = IXStringForAppRemovability(removability);
      *buf = 136315650;
      v27 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:error:]";
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = identityCopy;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Returning locally read removability, %@, for identity:%@", buf, 0x20u);
    }

    v17[3] = removability;
  }

  else
  {
    removability = v17[3];
    if (!removability)
    {
      v10 = +[IXServerConnection sharedConnection];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__IXAppInstallCoordinator_removabilityForAppWithIdentity_error___block_invoke;
      v15[3] = &unk_1E85C5560;
      v15[4] = &v20;
      v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v15];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__IXAppInstallCoordinator_removabilityForAppWithIdentity_error___block_invoke_111;
      v14[3] = &unk_1E85C5768;
      v14[4] = &v20;
      v14[5] = &v16;
      [v11 _remote_removabilityForAppWithIdentity:identityCopy completion:v14];

      removability = v17[3];
      if (error)
      {
        if (!removability)
        {
          *error = v21[5];
          removability = v17[3];
        }
      }
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x1E69E9840];
  return removability;
}

void __64__IXAppInstallCoordinator_removabilityForAppWithIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __64__IXAppInstallCoordinator_removabilityForAppWithIdentity_error___block_invoke_111(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  else
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

+ (unint64_t)removabilityForAppWithIdentity:(id)identity byClient:(unint64_t)client error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = IXGetUncachedRemovabilityMetadataForAppByClient(identityCopy, client, 1, 0);
  if (v8)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = IXStringForAppRemovability(v8);
      v11 = IXStringForAppRemovabilityClient(client);
      *buf = 136315906;
      v29 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:byClient:error:]";
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = identityCopy;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Returning locally read removability, %@ set by client %@, for identity:%@", buf, 0x2Au);
    }

    v19[3] = v8;
  }

  else
  {
    v8 = v19[3];
    if (!v8)
    {
      v12 = +[IXServerConnection sharedConnection];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __73__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_error___block_invoke;
      v17[3] = &unk_1E85C5560;
      v17[4] = &v22;
      v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v17];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __73__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_error___block_invoke_112;
      v16[3] = &unk_1E85C5768;
      v16[4] = &v22;
      v16[5] = &v18;
      [v13 _remote_removabilityForAppWithIdentity:identityCopy byClient:client completion:v16];

      v8 = v19[3];
      if (error)
      {
        if (!v8)
        {
          *error = v23[5];
          v8 = v19[3];
        }
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

void __73__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:byClient:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __73__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_error___block_invoke_112(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  else
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

+ (void)removabilityForAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self removabilityForAppWithIdentity:v8 completion:completionCopy];
}

+ (void)removabilityForAppWithIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v7 = IXQueueForConcurrentOperations();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__IXAppInstallCoordinator_removabilityForAppWithIdentity_completion___block_invoke;
  v10[3] = &unk_1E85C5790;
  v11 = identityCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identityCopy;
  IXDispatchAsyncWithAutoreleasePool(v7, v10);
}

void __69__IXAppInstallCoordinator_removabilityForAppWithIdentity_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = IXGetUncachedRemovabilityMetadataForApp(*(a1 + 32), 1, 1, 0);
  v3 = [v2 removability];
  if (v3)
  {
    v4 = v3;
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = IXStringForAppRemovability(v4);
      v7 = *(a1 + 32);
      *buf = 136315650;
      v14 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:completion:]_block_invoke";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Returning locally read removability, %@, for %@.", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = +[IXServerConnection sharedConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__IXAppInstallCoordinator_removabilityForAppWithIdentity_completion___block_invoke_113;
    v11[3] = &unk_1E85C5470;
    v12 = *(a1 + 40);
    v9 = [v8 remoteObjectProxyWithErrorHandler:v11];

    [v9 _remote_removabilityForAppWithIdentity:*(a1 + 32) completion:*(a1 + 40)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __69__IXAppInstallCoordinator_removabilityForAppWithIdentity_completion___block_invoke_113(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)removabilityForAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v9 = IXQueueForConcurrentOperations();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_completion___block_invoke;
  v12[3] = &unk_1E85C57B8;
  v14 = completionCopy;
  clientCopy = client;
  v13 = identityCopy;
  v10 = completionCopy;
  v11 = identityCopy;
  IXDispatchAsyncWithAutoreleasePool(v9, v12);
}

void __78__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = IXGetUncachedRemovabilityMetadataForAppByClient(*(a1 + 32), *(a1 + 48), 1, 0);
  if (v2)
  {
    v3 = v2;
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = IXStringForAppRemovability(v3);
      v6 = *(a1 + 32);
      *buf = 136315650;
      v13 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:byClient:completion:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Returning locally read removability, %@, for %@.", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = +[IXServerConnection sharedConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_completion___block_invoke_114;
    v10[3] = &unk_1E85C5470;
    v11 = *(a1 + 40);
    v8 = [v7 remoteObjectProxyWithErrorHandler:v10];

    [v8 _remote_removabilityForAppWithIdentity:*(a1 + 32) byClient:*(a1 + 48) completion:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __78__IXAppInstallCoordinator_removabilityForAppWithIdentity_byClient_completion___block_invoke_114(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator removabilityForAppWithIdentity:byClient:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)setRemovability:(unint64_t)removability forAppWithBundleID:(id)d byClient:(unint64_t)client completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v12 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  [self setRemovability:removability forAppWithIdentity:v12 byClient:client completion:completionCopy];
}

+ (void)setRemovability:(unint64_t)removability forAppWithIdentity:(id)identity byClient:(unint64_t)client completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v11 = IXQueueForConcurrentOperations();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__IXAppInstallCoordinator_setRemovability_forAppWithIdentity_byClient_completion___block_invoke;
  v14[3] = &unk_1E85C57E0;
  clientCopy = client;
  removabilityCopy = removability;
  v15 = identityCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = identityCopy;
  IXDispatchAsyncWithAutoreleasePool(v11, v14);
}

void __82__IXAppInstallCoordinator_setRemovability_forAppWithIdentity_byClient_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = IXGetUncachedRemovabilityMetadataForAppByClient(*(a1 + 32), *(a1 + 48), 1, 0);
  if (v2 && *(a1 + 56) == v2)
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = IXStringForAppRemovability(*(a1 + 56));
      *buf = 136315650;
      v12 = "+[IXAppInstallCoordinator setRemovability:forAppWithIdentity:byClient:completion:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Removability requested to be set for %@ is unchanged: %@; skipping write.", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = +[IXServerConnection sharedConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__IXAppInstallCoordinator_setRemovability_forAppWithIdentity_byClient_completion___block_invoke_115;
    v9[3] = &unk_1E85C5470;
    v10 = *(a1 + 40);
    v7 = [v6 remoteObjectProxyWithErrorHandler:v9];

    [v7 _remote_setRemovability:*(a1 + 56) forAppWithIdentity:*(a1 + 32) byClient:*(a1 + 48) completion:*(a1 + 40)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __82__IXAppInstallCoordinator_setRemovability_forAppWithIdentity_byClient_completion___block_invoke_115(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator setRemovability:forAppWithIdentity:byClient:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (id)removabilityDataWithChangeClock:(id *)clock error:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  obj = 0;
  v6 = IXGetUncachedRemovabilityDataStore(&obj);
  objc_storeStrong(&v21, obj);
  if (v6)
  {
    v7 = _ProcessRemovabilityMetadataListMap(v6);
    v8 = v23[5];
    v23[5] = v7;
  }

  else
  {
    v8 = +[IXServerConnection sharedConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__IXAppInstallCoordinator_removabilityDataWithChangeClock_error___block_invoke;
    v14[3] = &unk_1E85C5560;
    v14[4] = &v28;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__IXAppInstallCoordinator_removabilityDataWithChangeClock_error___block_invoke_116;
    v13[3] = &unk_1E85C5808;
    v13[4] = &v28;
    v13[5] = &v22;
    v13[6] = &v16;
    [v9 _remote_removabilityDataWithCompletion:v13];
  }

  v10 = v23[5];
  if (error && !v10)
  {
    *error = v29[5];
    v10 = v23[5];
  }

  if (clock && v10)
  {
    *clock = v17[5];
    v10 = v23[5];
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v11;
}

void __65__IXAppInstallCoordinator_removabilityDataWithChangeClock_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator removabilityDataWithChangeClock:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __65__IXAppInstallCoordinator_removabilityDataWithChangeClock_error___block_invoke_116(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = 32;
    v12 = v9;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = 48;
    v12 = v8;
  }

  v13 = *(*(a1 + v11) + 8);
  v14 = v12;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

+ (void)removabilityDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = IXQueueForConcurrentOperations();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__IXAppInstallCoordinator_removabilityDataWithCompletion___block_invoke;
  v6[3] = &unk_1E85C5258;
  v7 = completionCopy;
  v5 = completionCopy;
  IXDispatchAsyncWithAutoreleasePool(v4, v6);
}

void __58__IXAppInstallCoordinator_removabilityDataWithCompletion___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = IXGetUncachedRemovabilityDataStore(&v13);
  v3 = v13;
  if (v2)
  {
    v4 = _ProcessRemovabilityMetadataListMap(v2);
    (*(*(a1 + 32) + 16))();
    v5 = v3;
    v3 = v4;
  }

  else
  {
    v6 = +[IXServerConnection sharedConnection];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58__IXAppInstallCoordinator_removabilityDataWithCompletion___block_invoke_2;
    v11 = &unk_1E85C5470;
    v12 = *(a1 + 32);
    v7 = [v6 remoteObjectProxyWithErrorHandler:&v8];

    [v7 _remote_removabilityDataWithCompletion:{*(a1 + 32), v8, v9, v10, v11}];
    v5 = v12;
  }
}

void __58__IXAppInstallCoordinator_removabilityDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator removabilityDataWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (id)defaultAppMetadataForAppIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_error___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v19;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (!v20[5])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_error___block_invoke_118;
    v11[3] = &unk_1E85C5830;
    v11[4] = &v19;
    v11[5] = &v13;
    [v7 _remote_defaultAppMetadataForAppIdentity:identityCopy completion:v11];
  }

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __66__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator defaultAppMetadataForAppIdentity:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __66__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_error___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

+ (id)defaultAppMetadataListWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = +[IXServerConnection sharedConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__IXAppInstallCoordinator_defaultAppMetadataListWithError___block_invoke;
  v10[3] = &unk_1E85C5560;
  v10[4] = &v11;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];

  if (!v12[5])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__IXAppInstallCoordinator_defaultAppMetadataListWithError___block_invoke_120;
    v9[3] = &unk_1E85C5858;
    v9[4] = &v11;
    v9[5] = &v17;
    [v5 _remote_defaultAppMetadataListWithCompletion:v9];
  }

  v6 = v18[5];
  if (error && !v6)
  {
    *error = v12[5];
    v6 = v18[5];
  }

  v7 = v6;

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __59__IXAppInstallCoordinator_defaultAppMetadataListWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator defaultAppMetadataListWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator_defaultAppMetadataListWithError___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

+ (void)defaultAppMetadataForAppIdentity:(id)identity completion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_completion___block_invoke;
  v13[3] = &unk_1E85C5470;
  v8 = completionCopy;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_completion___block_invoke_121;
  v11[3] = &unk_1E85C5880;
  v12 = v8;
  v10 = v8;
  [v9 _remote_defaultAppMetadataForAppIdentity:identityCopy completion:v11];
}

void __71__IXAppInstallCoordinator_defaultAppMetadataForAppIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator defaultAppMetadataForAppIdentity:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)defaultAppMetadataListWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[IXServerConnection sharedConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__IXAppInstallCoordinator_defaultAppMetadataListWithCompletion___block_invoke;
  v10[3] = &unk_1E85C5470;
  v5 = completionCopy;
  v11 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__IXAppInstallCoordinator_defaultAppMetadataListWithCompletion___block_invoke_122;
  v8[3] = &unk_1E85C5628;
  v9 = v5;
  v7 = v5;
  [v6 _remote_defaultAppMetadataListWithCompletion:v8];
}

void __64__IXAppInstallCoordinator_defaultAppMetadataListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator defaultAppMetadataListWithCompletion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)updateSINFForAppWithIdentity:(id)identity wrapperURL:(id)l sinfData:(id)data error:(id *)error
{
  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator updateSINFForAppWithIdentity:wrapperURL:sinfData:error:];
  }

  v9 = _CreateError("+[IXAppInstallCoordinator updateSINFForAppWithIdentity:wrapperURL:sinfData:error:]", 1662, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v8, "+[IXAppInstallCoordinator updateSINFForAppWithIdentity:wrapperURL:sinfData:error:]");
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

+ (BOOL)updateSINFForAppWithIdentity:(id)identity sinfData:(id)data options:(id)options error:(id *)error
{
  identityCopy = identity;
  dataCopy = data;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v12 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__IXAppInstallCoordinator_updateSINFForAppWithIdentity_sinfData_options_error___block_invoke;
  v21[3] = &unk_1E85C5560;
  v21[4] = &v22;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__IXAppInstallCoordinator_updateSINFForAppWithIdentity_sinfData_options_error___block_invoke_126;
  v17[3] = &unk_1E85C58A8;
  v19 = &v22;
  v14 = identityCopy;
  v18 = v14;
  v20 = &v28;
  [v13 _remote_updateSINFForAppWithIdentity:v14 sinfData:dataCopy options:optionsCopy completion:v17];

  v15 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v15 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v15 & 1;
}

void __79__IXAppInstallCoordinator_updateSINFForAppWithIdentity_sinfData_options_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[IXAppInstallCoordinator updateSINFForAppWithIdentity:sinfData:options:error:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __79__IXAppInstallCoordinator_updateSINFForAppWithIdentity_sinfData_options_error___block_invoke_126(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = *(*(a1[5] + 8) + 40);
      v9 = 136315650;
      v10 = "+[IXAppInstallCoordinator updateSINFForAppWithIdentity:sinfData:options:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to update SINF for identity:%@ with:%@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)updateiTunesMetadataForAppWithIdentity:(id)identity wrapperURL:(id)l plistData:(id)data error:(id *)error
{
  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator updateiTunesMetadataForAppWithIdentity:wrapperURL:plistData:error:];
  }

  v9 = _CreateError("+[IXAppInstallCoordinator updateiTunesMetadataForAppWithIdentity:wrapperURL:plistData:error:]", 1714, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v8, "+[IXAppInstallCoordinator updateiTunesMetadataForAppWithIdentity:wrapperURL:plistData:error:]");
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

+ (BOOL)updateiTunesMetadataForAppWithIdentity:(id)identity plistData:(id)data options:(id)options error:(id *)error
{
  identityCopy = identity;
  v19 = 0;
  v10 = [MEMORY[0x1E69A8DB8] metadataFromPlistData:data error:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = [self updateiTunesMetadata:v10 forAppWithIdentity:identityCopy error:error];
    v13 = v11;
  }

  else
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[IXAppInstallCoordinator updateiTunesMetadataForAppWithIdentity:plistData:options:error:];
    }

    v13 = _CreateError("+[IXAppInstallCoordinator updateiTunesMetadataForAppWithIdentity:plistData:options:error:]", 1727, @"IXErrorDomain", 0x35uLL, v11, 0, @"Unable to decode supplied plist data", v15, v18);

    if (error)
    {
      v16 = v13;
      v12 = 0;
      *error = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (BOOL)updateiTunesMetadata:(id)metadata forAppWithIdentity:(id)identity wrapperURL:(id)l error:(id *)error
{
  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator updateiTunesMetadata:forAppWithIdentity:wrapperURL:error:];
  }

  v9 = _CreateError("+[IXAppInstallCoordinator updateiTunesMetadata:forAppWithIdentity:wrapperURL:error:]", 1759, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v8, "+[IXAppInstallCoordinator updateiTunesMetadata:forAppWithIdentity:wrapperURL:error:]");
  if (error)
  {
    v9 = v9;
    *error = v9;
  }

  return 0;
}

+ (BOOL)updateiTunesMetadata:(id)metadata forAppWithIdentity:(id)identity error:(id *)error
{
  metadataCopy = metadata;
  identityCopy = identity;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__IXAppInstallCoordinator_updateiTunesMetadata_forAppWithIdentity_error___block_invoke;
  v18[3] = &unk_1E85C5560;
  v18[4] = &v19;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__IXAppInstallCoordinator_updateiTunesMetadata_forAppWithIdentity_error___block_invoke_131;
  v14[3] = &unk_1E85C58A8;
  v16 = &v19;
  v11 = identityCopy;
  v15 = v11;
  v17 = &v25;
  [v10 _remote_updateiTunesMetadata:metadataCopy forAppWithIdentity:v11 completion:v14];

  v12 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v20[5];
    v12 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

void __73__IXAppInstallCoordinator_updateiTunesMetadata_forAppWithIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[IXAppInstallCoordinator updateiTunesMetadata:forAppWithIdentity:error:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to update iTunesMetadata: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __73__IXAppInstallCoordinator_updateiTunesMetadata_forAppWithIdentity_error___block_invoke_131(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = *(*(a1[5] + 8) + 40);
      v9 = 136315650;
      v10 = "+[IXAppInstallCoordinator updateiTunesMetadata:forAppWithIdentity:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to update iTunesMetadata for identity %@ : %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)refreshDataContainerForBundleID:(id)d reason:(id)reason error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  v41 = 1;
  v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v10 = v9;
  if (!reasonCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:];
    }

    v27 = _CreateError("+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]", 1809, @"IXErrorDomain", 4uLL, 0, 0, @"Reason passed to %s was nil!", v28, "+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]");
    v18 = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_33;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v43 = "+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]";
    v44 = 2112;
    v45 = dCopy;
    v46 = 2112;
    v47 = reasonCopy;
    _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: Request to refresh data container for identifier %@ with reason %@", buf, 0x20u);
  }

  v11 = objc_alloc(MEMORY[0x1E69C7650]);
  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Refreshing data container: %@", reasonCopy];
  v13 = [v11 initWithExplanation:reasonCopy];

  [v13 setMaximumTerminationResistance:40];
  v14 = objc_alloc(MEMORY[0x1E69C7660]);
  v15 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:dCopy];
  v16 = [v14 initWithPredicate:v15 context:v13];

  if (!v16)
  {
    v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:];
    }

    v27 = _CreateError("+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]", 1821, @"IXErrorDomain", 0x13uLL, 0, 0, @"Failed to create termination request for identifier %@", v30, dCopy);
    v18 = 0;
    v16 = 0;
    goto LABEL_33;
  }

  v39 = 0;
  v40 = 0;
  v17 = [v16 execute:&v40 error:&v39];
  v18 = v40;
  v19 = v39;
  v20 = v19;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  domain = [v19 domain];
  if (![domain isEqualToString:*MEMORY[0x1E69C76A0]] || objc_msgSend(v20, "code") != 3)
  {

    goto LABEL_25;
  }

  if (!v18)
  {
LABEL_25:
    v32 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v43 = "+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]";
      v44 = 2112;
      v45 = dCopy;
      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v20;
      _os_log_error_impl(&dword_1DA47A000, v32, OS_LOG_TYPE_ERROR, "%s: Failed to execute termination request for identifier %@: assertion = %@ : %@", buf, 0x2Au);
    }

    v27 = _CreateError("+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]", 1826, @"IXErrorDomain", 0x13uLL, v20, 0, @"Failed to execute termination request for identifier %@: assertion = %@", v33, dCopy);

    if (v18)
    {
      goto LABEL_32;
    }

LABEL_33:
    v23 = 0;
    if (!error)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_7:
  [dCopy UTF8String];
  v21 = container_create_or_lookup_for_current_user();
  if (!v21)
  {
    v34 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator refreshDataContainerForBundleID:dCopy reason:&v41 error:?];
    }

    v27 = _CreateError("+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]", 1832, @"IXErrorDomain", 0x23uLL, 0, 0, @"Failed to look up container for identifier %@: container error = %llu", v35, dCopy);

LABEL_32:
    [v18 invalidate];
    goto LABEL_33;
  }

  v22 = v21;
  v41 = container_delete_all_container_content();
  v23 = v41 == 1;
  if (v41 != 1)
  {
    v24 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator refreshDataContainerForBundleID:dCopy reason:&v41 error:?];
    }

    v26 = _CreateError("+[IXAppInstallCoordinator refreshDataContainerForBundleID:reason:error:]", 1837, @"IXErrorDomain", 0x23uLL, 0, 0, @"Failed to refresh data container for identifier %@: container error = %llu", v25, dCopy);

    v20 = v26;
  }

  [v18 invalidate];
  MEMORY[0x1DA74EF70](v22);
  v27 = v20;
  if (error)
  {
LABEL_34:
    if (!v23)
    {
      v36 = v27;
      *error = v27;
    }
  }

LABEL_36:

  v37 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)refreshContainerTypes:(unint64_t)types forBundleID:(id)d reason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  dCopy = d;
  v12 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy];

  v13 = [[IXRefreshContainerOptions alloc] initWithReason:reasonCopy containerTypes:types];
  LOBYTE(error) = [self refreshContainersWithOptions:v13 forApplicationIdentity:v12 error:error];

  return error;
}

+ (BOOL)refreshContainerTypes:(unint64_t)types forApplicationIdentity:(id)identity reason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  identityCopy = identity;
  v12 = [[IXRefreshContainerOptions alloc] initWithReason:reasonCopy containerTypes:types];

  LOBYTE(error) = [self refreshContainersWithOptions:v12 forApplicationIdentity:identityCopy error:error];
  return error;
}

+ (BOOL)refreshContainersWithOptions:(id)options forApplicationIdentity:(id)identity error:(id *)error
{
  optionsCopy = options;
  identityCopy = identity;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__IXAppInstallCoordinator_refreshContainersWithOptions_forApplicationIdentity_error___block_invoke;
  v14[3] = &unk_1E85C5560;
  v14[4] = &v19;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__IXAppInstallCoordinator_refreshContainersWithOptions_forApplicationIdentity_error___block_invoke_154;
  v13[3] = &unk_1E85C53F8;
  v13[4] = &v19;
  v13[5] = &v15;
  [v10 _remote_refreshContainersWithOptions:optionsCopy forAppWithIdentity:identityCopy completion:v13];

  v11 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v20[5];
    v11 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11 & 1;
}

void __85__IXAppInstallCoordinator_refreshContainersWithOptions_forApplicationIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__IXAppInstallCoordinator_refreshContainersWithOptions_forApplicationIdentity_error___block_invoke_cold_1();
    }
  }
}

void __85__IXAppInstallCoordinator_refreshContainersWithOptions_forApplicationIdentity_error___block_invoke_154(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error
{
  reasonCopy = reason;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  if (!reasonCopy)
  {
    v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator cancelForReason:client:error:];
    }

    v19 = _CreateError("[IXAppInstallCoordinator cancelForReason:client:error:]", 1917, @"IXErrorDomain", 4uLL, 0, 0, @"Reason passed to [IXAppInstallCoordinator cancelForReason:client:error:] was nil!", v18, v24[0]);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = reasonCopy;
  if (!client)
  {
    v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator cancelForReason:client:error:];
    }

    v19 = _CreateError("[IXAppInstallCoordinator cancelForReason:client:error:]", 1922, @"IXErrorDomain", 4uLL, 0, 0, @"[IXAppInstallCoordinator cancelForReason:client:error:] was called with client of IXClientNone which is invalid", v21, v24[0]);
LABEL_13:
    v14 = v30[5];
    v30[5] = v19;
LABEL_14:

    goto LABEL_15;
  }

  v10 = +[IXServerConnection sharedConnection];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __56__IXAppInstallCoordinator_cancelForReason_client_error___block_invoke;
  v28[3] = &unk_1E85C58D0;
  v28[4] = self;
  v28[5] = &v29;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v28];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__IXAppInstallCoordinator_cancelForReason_client_error___block_invoke_161;
  v27[3] = &unk_1E85C58F8;
  v27[4] = self;
  v27[5] = &v29;
  v27[6] = &v35;
  [v11 _remote_IXSCoordinatedAppInstall:uniqueIdentifier cancelForReason:v9 client:client completion:v27];

  if (*(v36 + 24) == 1)
  {
    v13 = IXUserPresentableErrorForInsufficientSpaceError(v9);
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v9 = v15;
    }

    internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__IXAppInstallCoordinator_cancelForReason_client_error___block_invoke_162;
    v24[3] = &unk_1E85C52A8;
    v24[4] = self;
    v9 = v9;
    v25 = v9;
    clientCopy = client;
    dispatch_sync(internalQueue, v24);

    goto LABEL_14;
  }

LABEL_15:
  v22 = *(v36 + 24);
  if (error && (v36[3] & 1) == 0)
  {
    *error = v30[5];
    v22 = *(v36 + 24);
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  return v22 & 1;
}

void __56__IXAppInstallCoordinator_cancelForReason_client_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator cancelForReason:client:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_cancelForReason_client_error___block_invoke_161(void *a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v11 = 136315650;
      v12 = "[IXAppInstallCoordinator cancelForReason:client:error:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to cancel %@ : %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    if (a2)
    {
      v9 = [MEMORY[0x1E6963608] defaultWorkspace];
      [v9 acquireDatabase];
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_cancelForReason_client_error___block_invoke_162(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  *(*(a1 + 32) + 24) = *(a1 + 48);
  *(*(a1 + 32) + 8) = 1;
}

- (BOOL)setPlaceholderPromise:(id)promise error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  promiseCopy = promise;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  validInstallTypes = [(IXAppInstallCoordinator *)self validInstallTypes];
  if (!promiseCopy)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator setPlaceholderPromise:error:];
    }

    v18 = _CreateError("[IXAppInstallCoordinator setPlaceholderPromise:error:]", 1977, @"IXErrorDomain", 4uLL, 0, 0, @"placeholderPromise argument to %s was nil", v17, "[IXAppInstallCoordinator setPlaceholderPromise:error:]");
    goto LABEL_13;
  }

  if ([promiseCopy placeholderType] != 1)
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator setPlaceholderPromise:error:];
    }

    v18 = _CreateError("[IXAppInstallCoordinator setPlaceholderPromise:error:]", 1982, @"IXErrorDomain", 4uLL, 0, 0, @"App extension placeholder promise passed to %s instead of app placeholder promise", v20, "[IXAppInstallCoordinator setPlaceholderPromise:error:]");
LABEL_13:
    v21 = v48[5];
    v48[5] = v18;
LABEL_14:

    goto LABEL_15;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(promiseCopy, "installType")}];
  v9 = [validInstallTypes containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v21 = [validInstallTypes componentsJoinedByString:{@", "}];
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      installType = [promiseCopy installType];
      *buf = 136316418;
      v54 = "[IXAppInstallCoordinator setPlaceholderPromise:error:]";
      v55 = 2080;
      v56 = "[IXAppInstallCoordinator setPlaceholderPromise:error:]";
      v57 = 2112;
      v58 = v32;
      v59 = 2048;
      v60 = installType;
      v61 = 2112;
      v62 = v21;
      v63 = 2112;
      v64 = 0;
      _os_log_error_impl(&dword_1DA47A000, v25, OS_LOG_TYPE_ERROR, "%s: Placeholder promise passed to %s for %@ has unpermitted install type %lu (permitted types %@) : %@", buf, 0x3Eu);
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [promiseCopy installType];
    v29 = _CreateError("[IXAppInstallCoordinator setPlaceholderPromise:error:]", 1988, @"IXErrorDomain", 4uLL, 0, 0, @"Placeholder promise passed to %s for %@ has unpermitted install type %lu (permitted types %@)", v28, "[IXAppInstallCoordinator setPlaceholderPromise:error:]");

    v30 = v48[5];
    v48[5] = v29;

    goto LABEL_14;
  }

  v10 = +[IXServerConnection sharedConnection];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __55__IXAppInstallCoordinator_setPlaceholderPromise_error___block_invoke;
  v39[3] = &unk_1E85C5920;
  v11 = promiseCopy;
  v40 = v11;
  selfCopy = self;
  v42 = &v47;
  v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v39];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  uniqueIdentifier2 = [v11 uniqueIdentifier];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __55__IXAppInstallCoordinator_setPlaceholderPromise_error___block_invoke_175;
  v34[3] = &unk_1E85C5948;
  v35 = v11;
  selfCopy2 = self;
  v37 = &v47;
  v38 = &v43;
  [v12 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setPlaceholderPromiseUUID:uniqueIdentifier2 completion:v34];

  if ((v44[3] & 1) == 0)
  {
    v15 = v48[5];
    if (v15)
    {
      [(IXAppInstallCoordinator *)self cancelForReason:v15 client:15 error:0];
    }
  }

LABEL_15:
  v22 = *(v44 + 24);
  if (error && (v44[3] & 1) == 0)
  {
    *error = v48[5];
    v22 = *(v44 + 24);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  v23 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

void __55__IXAppInstallCoordinator_setPlaceholderPromise_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setPlaceholderPromise:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set placeholder promise %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_setPlaceholderPromise_error___block_invoke_175(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setPlaceholderPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set placeholder promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)placeholderPromiseWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke_176;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v19;
  v11[5] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getPlaceholderPromise:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator placeholderPromiseWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get placeholder promise: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke_176_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator placeholderPromiseWithError:]_block_invoke", 2038, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for a placeholder data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke_176_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator placeholderPromiseWithError:]_block_invoke", 2035, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXAppInstallCoordinator placeholderPromiseWithError:]_block_invoke", 2030, @"IXErrorDomain", 0x17uLL, 0, 0, @"A placeholder promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXAppInstallCoordinator placeholderPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get placeholder promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasPlaceholderPromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__IXAppInstallCoordinator_hasPlaceholderPromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__IXAppInstallCoordinator_hasPlaceholderPromise__block_invoke_188;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasPlaceholderPromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __48__IXAppInstallCoordinator_hasPlaceholderPromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator hasPlaceholderPromise]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a placeholder promise: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __48__IXAppInstallCoordinator_hasPlaceholderPromise__block_invoke_188(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator hasPlaceholderPromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a placeholder promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setAppAssetPromise:(id)promise error:(id *)error
{
  promiseCopy = promise;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__IXAppInstallCoordinator_setAppAssetPromise_error___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = promiseCopy;
  v22 = v8;
  selfCopy = self;
  v24 = &v29;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  uniqueIdentifier2 = [v8 uniqueIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__IXAppInstallCoordinator_setAppAssetPromise_error___block_invoke_189;
  v16[3] = &unk_1E85C5948;
  v12 = v8;
  v17 = v12;
  selfCopy2 = self;
  v19 = &v29;
  v20 = &v25;
  [v9 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setAppAssetPromiseUUID:uniqueIdentifier2 completion:v16];

  v13 = *(v26 + 24);
  if (v13)
  {
LABEL_4:
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v14 = v30[5];
  if (v14)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v14 client:15 error:0];
    v13 = *(v26 + 24);
    goto LABEL_4;
  }

  v13 = 0;
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v13 & 1) == 0)
  {
    *error = v30[5];
    v13 = *(v26 + 24);
  }

LABEL_7:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v13 & 1;
}

void __52__IXAppInstallCoordinator_setAppAssetPromise_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setAppAssetPromise:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set app asset promise %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_setAppAssetPromise_error___block_invoke_189(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setAppAssetPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set app asset promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)appAssetPromiseWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke_190;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v19;
  v11[5] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getAppAssetPromise:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator appAssetPromiseWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app asset promise: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke_190_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator appAssetPromiseWithError:]_block_invoke", 2112, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an owned data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke_190_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator appAssetPromiseWithError:]_block_invoke", 2109, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXAppInstallCoordinator appAssetPromiseWithError:]_block_invoke", 2104, @"IXErrorDomain", 0x17uLL, 0, 0, @"An app asset promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXAppInstallCoordinator appAssetPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app asset promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasAppAssetPromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__IXAppInstallCoordinator_hasAppAssetPromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__IXAppInstallCoordinator_hasAppAssetPromise__block_invoke_198;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasAppAssetPromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __45__IXAppInstallCoordinator_hasAppAssetPromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator hasAppAssetPromise]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an app asset promise: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __45__IXAppInstallCoordinator_hasAppAssetPromise__block_invoke_198(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator hasAppAssetPromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an app asset promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)appAssetPromiseHasBegunFulfillment:(BOOL *)fulfillment error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__IXAppInstallCoordinator_appAssetPromiseHasBegunFulfillment_error___block_invoke;
  v14[3] = &unk_1E85C58D0;
  v14[4] = self;
  v14[5] = &v15;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v14];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__IXAppInstallCoordinator_appAssetPromiseHasBegunFulfillment_error___block_invoke_199;
  v13[3] = &unk_1E85C59E8;
  v13[4] = &v15;
  v13[5] = fulfillment;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier appAssetPromiseHasBegunFulfillment:v13];

  v10 = v16[5];
  if (error && v10)
  {
    *error = v10;
    v10 = v16[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v15, 8);

  return v11;
}

void __68__IXAppInstallCoordinator_appAssetPromiseHasBegunFulfillment_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator appAssetPromiseHasBegunFulfillment:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if app asset promise for %@ has begun fulfillment : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __68__IXAppInstallCoordinator_appAssetPromiseHasBegunFulfillment_error___block_invoke_199(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    **(a1 + 40) = a2;
  }
}

- (BOOL)setAppAssetPromiseResponsibleClient:(unint64_t)client error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (client)
  {
    v7 = +[IXServerConnection sharedConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__IXAppInstallCoordinator_setAppAssetPromiseResponsibleClient_error___block_invoke;
    v17[3] = &unk_1E85C5560;
    v17[4] = &v22;
    v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v17];
    uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__IXAppInstallCoordinator_setAppAssetPromiseResponsibleClient_error___block_invoke_203;
    v16[3] = &unk_1E85C53F8;
    v16[4] = &v22;
    v16[5] = &v18;
    [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setAppAssetPromiseDRI:client completion:v16];
  }

  else
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [IXAppInstallCoordinator setAppAssetPromiseResponsibleClient:error:];
    }

    v12 = _CreateError("[IXAppInstallCoordinator setAppAssetPromiseResponsibleClient:error:]", 2166, @"IXErrorDomain", 4uLL, 0, 0, @"Client IXClientNone was passed to -setAppAssetPromiseResponsibleClient:error:, but that doesn't make sense", v11, v15);
    v7 = v23[5];
    v23[5] = v12;
  }

  v13 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v23[5];
    v13 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v13 & 1;
}

void __69__IXAppInstallCoordinator_setAppAssetPromiseResponsibleClient_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator setAppAssetPromiseResponsibleClient:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set app asset promise responsible client: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __69__IXAppInstallCoordinator_setAppAssetPromiseResponsibleClient_error___block_invoke_203(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (unint64_t)appAssetPromiseResponsibleClientWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__IXAppInstallCoordinator_appAssetPromiseResponsibleClientWithError___block_invoke;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v16;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__IXAppInstallCoordinator_appAssetPromiseResponsibleClientWithError___block_invoke_204;
  v10[3] = &unk_1E85C5768;
  v10[4] = &v12;
  v10[5] = &v16;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getAppAssetPromiseDRI:v10];

  v8 = v13[3];
  if (error && !v8)
  {
    *error = v17[5];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __69__IXAppInstallCoordinator_appAssetPromiseResponsibleClientWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator appAssetPromiseResponsibleClientWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app asset promise responsible client: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)setInstallOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = optionsCopy;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (optionsCopy)
  {
    obj = 0;
    v8 = IXEncodeRootObject(optionsCopy, &obj);
    objc_storeStrong(&v40, obj);
    if (v8)
    {
      v9 = [IXPromisedInMemoryData alloc];
      identity = [(IXAppInstallCoordinator *)self identity];
      location = [identity location];
      v12 = [(IXPromisedInMemoryData *)v9 initWithName:@"MIInstallOptions data" client:15 data:v8 location:location];

      if (v12)
      {
        v13 = +[IXServerConnection sharedConnection];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __51__IXAppInstallCoordinator_setInstallOptions_error___block_invoke;
        v29[3] = &unk_1E85C58D0;
        v29[4] = self;
        v29[5] = &v35;
        v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v29];
        uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
        uniqueIdentifier2 = [(IXDataPromise *)v12 uniqueIdentifier];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __51__IXAppInstallCoordinator_setInstallOptions_error___block_invoke_215;
        v28[3] = &unk_1E85C5A10;
        v28[4] = self;
        v28[5] = &v35;
        v28[6] = &v31;
        [v14 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setInstallOptionsPromiseUUID:uniqueIdentifier2 completion:v28];

        goto LABEL_13;
      }

      v22 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [IXAppInstallCoordinator setInstallOptions:error:];
      }

      v24 = _CreateError("[IXAppInstallCoordinator setInstallOptions:error:]", 2233, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create data promise for serialized install options", v23, v28[0]);
      v25 = v36[5];
      v36[5] = v24;
    }

    v12 = 0;
LABEL_13:
    v21 = *(v32 + 24);
    if ((v21 & 1) == 0)
    {
      v26 = v36[5];
      if (!v26)
      {
        v21 = 0;
        if (error)
        {
LABEL_17:
          if ((v21 & 1) == 0)
          {
            *error = v36[5];
            v21 = *(v32 + 24);
          }
        }

LABEL_19:

        goto LABEL_20;
      }

      [(IXAppInstallCoordinator *)self cancelForReason:v26 client:15 error:0];
      v21 = *(v32 + 24);
    }

    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setInstallOptions:error:];
  }

  v19 = _CreateError("[IXAppInstallCoordinator setInstallOptions:error:]", 2215, @"IXErrorDomain", 4uLL, 0, 0, @"Options argument to -setInstallOptions:error: was nil", v18, v28[0]);
  v20 = v36[5];
  v36[5] = v19;

  v21 = 0;
  if (error)
  {
    *error = v36[5];
  }

LABEL_20:
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v21 & 1;
}

void __51__IXAppInstallCoordinator_setInstallOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator setInstallOptions:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set install options on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __51__IXAppInstallCoordinator_setInstallOptions_error___block_invoke_215(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v8 = 136315650;
      v9 = "[IXAppInstallCoordinator setInstallOptions:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set install options on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasInstallOptions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__IXAppInstallCoordinator_hasInstallOptions__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__IXAppInstallCoordinator_hasInstallOptions__block_invoke_216;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasInstallOptions:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __44__IXAppInstallCoordinator_hasInstallOptions__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator hasInstallOptions]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has install options: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__IXAppInstallCoordinator_hasInstallOptions__block_invoke_216(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator hasInstallOptions]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has install options: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)installOptionsWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__IXAppInstallCoordinator_installOptionsWithError___block_invoke;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__IXAppInstallCoordinator_installOptionsWithError___block_invoke_217;
  v11[3] = &unk_1E85C5A38;
  v11[4] = &v13;
  v11[5] = &v19;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getInstallOptions:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __51__IXAppInstallCoordinator_installOptionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator installOptionsWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has install options: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __51__IXAppInstallCoordinator_installOptionsWithError___block_invoke_217(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (BOOL)setImportance:(unint64_t)importance error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__IXAppInstallCoordinator_setImportance_error___block_invoke;
  v13[3] = &unk_1E85C5A60;
  v13[5] = &v14;
  v13[6] = importance;
  v13[4] = self;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__IXAppInstallCoordinator_setImportance_error___block_invoke_219;
  v12[3] = &unk_1E85C5A88;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = importance;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setImportance:importance completion:v12];

  [(IXAppInstallCoordinator *)self _conveyCurrentPriorityBoostReplacingExisting:1];
  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __47__IXAppInstallCoordinator_setImportance_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = IXStringForCoordinatorImportance(a1[6]);
    v6 = a1[4];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setImportance:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set importance to %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __47__IXAppInstallCoordinator_setImportance_error___block_invoke_219(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = IXStringForCoordinatorImportance(a1[7]);
      v7 = a1[4];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setImportance:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set importance to %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)importanceWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__IXAppInstallCoordinator_importanceWithError___block_invoke;
  v11[3] = &unk_1E85C58D0;
  v11[4] = self;
  v11[5] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__IXAppInstallCoordinator_importanceWithError___block_invoke_220;
  v10[3] = &unk_1E85C5AB0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v18;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier importanceWithCompletion:v10];

  v8 = v19[3];
  if (error && !v8)
  {
    *error = v13[5];
    v8 = v19[3];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __47__IXAppInstallCoordinator_importanceWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator importanceWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get importance from %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __47__IXAppInstallCoordinator_importanceWithError___block_invoke_220(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v10 = 136315650;
      v11 = "[IXAppInstallCoordinator importanceWithError:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to get importance from %@ : %@", &v10, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)setInitialODRAssetPromises:(id)promises error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  promisesCopy = promises;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = promisesCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        uniqueIdentifier = [*(*(&v22 + 1) + 8 * i) uniqueIdentifier];
        [v7 addObject:uniqueIdentifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v9);
  }

  v13 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__IXAppInstallCoordinator_setInitialODRAssetPromises_error___block_invoke;
  v21[3] = &unk_1E85C58D0;
  v21[4] = self;
  v21[5] = &v26;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v21];
  uniqueIdentifier2 = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__IXAppInstallCoordinator_setInitialODRAssetPromises_error___block_invoke_222;
  v20[3] = &unk_1E85C5A10;
  v20[4] = self;
  v20[5] = &v26;
  v20[6] = &v32;
  [v14 _remote_IXSCoordinatedAppInstall:uniqueIdentifier2 setInitialODRAssetPromiseUUIDs:v7 completion:v20];

  v16 = *(v33 + 24);
  if (v16)
  {
LABEL_11:
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17 = v27[5];
  if (v17)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v17 client:15 error:0];
    v16 = *(v33 + 24);
    goto LABEL_11;
  }

  v16 = 0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v16 & 1) == 0)
  {
    *error = v27[5];
    v16 = *(v33 + 24);
  }

LABEL_14:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

void __60__IXAppInstallCoordinator_setInitialODRAssetPromises_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator setInitialODRAssetPromises:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set initial ODR asset promises on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __60__IXAppInstallCoordinator_setInitialODRAssetPromises_error___block_invoke_222(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v8 = 136315650;
      v9 = "[IXAppInstallCoordinator setInitialODRAssetPromises:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set initial ODR asset promises on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)initialODRAssetPromisesWithError:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v4 = +[IXServerConnection sharedConnection];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __60__IXAppInstallCoordinator_initialODRAssetPromisesWithError___block_invoke;
  v40[3] = &unk_1E85C5560;
  v40[4] = &v47;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v40];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __60__IXAppInstallCoordinator_initialODRAssetPromisesWithError___block_invoke_223;
  v39[3] = &unk_1E85C5588;
  v39[4] = &v47;
  v39[5] = &v41;
  [v5 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getInitialODRAssetPromises:v39];

  if (v48[5])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v42[5];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *v36;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          NSStringFromClass(v17);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator initialODRAssetPromisesWithError:];
        }

        v18 = objc_opt_class();
        v33 = NSStringFromClass(v18);
        v20 = _CreateError("[IXAppInstallCoordinator initialODRAssetPromisesWithError:]", 2411, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an opaque data promise seed subclass but was instead for class %@", v19, v13);

        v15 = v48[5];
        v48[5] = v20;
        goto LABEL_24;
      }

      clientPromiseClass = [v13 clientPromiseClass];
      v15 = [[clientPromiseClass alloc] initWithSeed:v13];
      if (!v15)
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          NSStringFromClass(clientPromiseClass);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator initialODRAssetPromisesWithError:];
        }

        v22 = NSStringFromClass(clientPromiseClass);
        v24 = _CreateError("[IXAppInstallCoordinator initialODRAssetPromisesWithError:]", 2417, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ from seed %@", v23, v22);
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          NSStringFromClass(v26);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator initialODRAssetPromisesWithError:];
        }

        v27 = objc_opt_class();
        v22 = NSStringFromClass(v27);
        v24 = _CreateError("[IXAppInstallCoordinator initialODRAssetPromisesWithError:]", 2420, @"IXErrorDomain", 1uLL, 0, 0, @"Object %@ should have been for an opaque data promise subclass but was instead for class %@", v28, v15);
LABEL_23:
        v29 = v24;

        v30 = v48[5];
        v48[5] = v29;

LABEL_24:
        v7 = 0;
        goto LABEL_25;
      }

      [v8 addObject:v15];
    }

    v10 = [v9 countByEnumeratingWithState:&v35 objects:v53 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v7 = [v8 copy];
LABEL_25:
  if (error && !v7)
  {
    *error = v48[5];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v31 = *MEMORY[0x1E69E9840];

  return v7;
}

void __60__IXAppInstallCoordinator_initialODRAssetPromisesWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator initialODRAssetPromisesWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get initial ODR asset promises: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __60__IXAppInstallCoordinator_initialODRAssetPromisesWithError___block_invoke_223(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315394;
      *&v16[4] = "[IXAppInstallCoordinator initialODRAssetPromisesWithError:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get initial ODR asset promises: %@", v16, 0x16u);
    }

    v10 = (*(*(a1 + 32) + 8) + 40);
    v11 = a3;
  }

  else
  {
    if (!v6)
    {
      v13 = _CreateError("[IXAppInstallCoordinator initialODRAssetPromisesWithError:]_block_invoke", 2398, @"IXErrorDomain", 0x17uLL, 0, 0, @"No Initial ODR asset promises are currently set.", v7, *v16);
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      goto LABEL_8;
    }

    v10 = (*(*(a1 + 40) + 8) + 40);
    v11 = a2;
  }

  objc_storeStrong(v10, v11);
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasInitialODRAssetPromises
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__IXAppInstallCoordinator_hasInitialODRAssetPromises__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__IXAppInstallCoordinator_hasInitialODRAssetPromises__block_invoke_238;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasInitialODRAssetPromises:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __53__IXAppInstallCoordinator_hasInitialODRAssetPromises__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator hasInitialODRAssetPromises]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has initial ODR asset promises: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __53__IXAppInstallCoordinator_hasInitialODRAssetPromises__block_invoke_238(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator hasInitialODRAssetPromises]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has initial ODR asset promises: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setUserDataPromise:(id)promise error:(id *)error
{
  promiseCopy = promise;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__IXAppInstallCoordinator_setUserDataPromise_error___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = promiseCopy;
  v22 = v8;
  selfCopy = self;
  v24 = &v29;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  uniqueIdentifier2 = [v8 uniqueIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__IXAppInstallCoordinator_setUserDataPromise_error___block_invoke_239;
  v16[3] = &unk_1E85C5948;
  v12 = v8;
  v17 = v12;
  selfCopy2 = self;
  v19 = &v29;
  v20 = &v25;
  [v9 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setUserDataPromiseUUID:uniqueIdentifier2 completion:v16];

  v13 = *(v26 + 24);
  if (v13)
  {
LABEL_4:
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v14 = v30[5];
  if (v14)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v14 client:15 error:0];
    v13 = *(v26 + 24);
    goto LABEL_4;
  }

  v13 = 0;
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v13 & 1) == 0)
  {
    *error = v30[5];
    v13 = *(v26 + 24);
  }

LABEL_7:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v13 & 1;
}

void __52__IXAppInstallCoordinator_setUserDataPromise_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setUserDataPromise:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set user data promise %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_setUserDataPromise_error___block_invoke_239(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setUserDataPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set user data promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)userDataPromiseWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke_240;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v19;
  v11[5] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getUserDataPromise:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator userDataPromiseWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get user data promise: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke_240_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator userDataPromiseWithError:]_block_invoke", 2498, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an out of band transfer data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke_240_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator userDataPromiseWithError:]_block_invoke", 2495, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXAppInstallCoordinator userDataPromiseWithError:]_block_invoke", 2490, @"IXErrorDomain", 0x17uLL, 0, 0, @"A user data promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXAppInstallCoordinator userDataPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get user data promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasUserDataPromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__IXAppInstallCoordinator_hasUserDataPromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__IXAppInstallCoordinator_hasUserDataPromise__block_invoke_248;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasUserDataPromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __45__IXAppInstallCoordinator_hasUserDataPromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator hasUserDataPromise]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a user data promise: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __45__IXAppInstallCoordinator_hasUserDataPromise__block_invoke_248(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator hasUserDataPromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a user data promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)userDataRestoreShouldBegin:(BOOL *)begin
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__IXAppInstallCoordinator_userDataRestoreShouldBegin___block_invoke;
  v11[3] = &unk_1E85C58D0;
  v11[4] = self;
  v11[5] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__IXAppInstallCoordinator_userDataRestoreShouldBegin___block_invoke_249;
  v10[3] = &unk_1E85C5AD8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = begin;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getUserDataRestoreShouldBegin:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __54__IXAppInstallCoordinator_userDataRestoreShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator userDataRestoreShouldBegin:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ should begin user data restore: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __54__IXAppInstallCoordinator_userDataRestoreShouldBegin___block_invoke_249(void *a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v13 = 136315650;
      v14 = "[IXAppInstallCoordinator userDataRestoreShouldBegin:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ should begin user data restore: %@", &v13, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v9 = a1[6];
    if (v9)
    {
      *v9 = a2;
    }

    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)preparationPromiseWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke_250;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v19;
  v11[5] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getPreparationPromise:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator preparationPromiseWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get user data promise: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke_250(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke_250_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator preparationPromiseWithError:]_block_invoke", 2566, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an out of band transfer data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke_250_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator preparationPromiseWithError:]_block_invoke", 2563, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXAppInstallCoordinator preparationPromiseWithError:]_block_invoke", 2558, @"IXErrorDomain", 0x17uLL, 0, 0, @"A preparation promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXAppInstallCoordinator preparationPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get preparation promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)setPreparationPromise:(id)promise withError:(id *)error
{
  promiseCopy = promise;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__IXAppInstallCoordinator_setPreparationPromise_withError___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = promiseCopy;
  v22 = v8;
  selfCopy = self;
  v24 = &v29;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  uniqueIdentifier2 = [v8 uniqueIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__IXAppInstallCoordinator_setPreparationPromise_withError___block_invoke_254;
  v16[3] = &unk_1E85C5948;
  v12 = v8;
  v17 = v12;
  selfCopy2 = self;
  v19 = &v29;
  v20 = &v25;
  [v9 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setPreparationPromiseUUID:uniqueIdentifier2 completion:v16];

  v13 = *(v26 + 24);
  if (v13)
  {
LABEL_4:
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v14 = v30[5];
  if (v14)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v14 client:15 error:0];
    v13 = *(v26 + 24);
    goto LABEL_4;
  }

  v13 = 0;
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v13 & 1) == 0)
  {
    *error = v30[5];
    v13 = *(v26 + 24);
  }

LABEL_7:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v13 & 1;
}

void __59__IXAppInstallCoordinator_setPreparationPromise_withError___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setPreparationPromise:withError:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set preparation promise %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator_setPreparationPromise_withError___block_invoke_254(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setPreparationPromise:withError:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set preparation promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setDeviceSecurityPromise:(id)promise error:(id *)error
{
  promiseCopy = promise;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__IXAppInstallCoordinator_setDeviceSecurityPromise_error___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = promiseCopy;
  v22 = v8;
  selfCopy = self;
  v24 = &v29;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  uniqueIdentifier2 = [v8 uniqueIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__IXAppInstallCoordinator_setDeviceSecurityPromise_error___block_invoke_255;
  v16[3] = &unk_1E85C5948;
  v12 = v8;
  v17 = v12;
  selfCopy2 = self;
  v19 = &v29;
  v20 = &v25;
  [v9 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setDeviceSecurityPromiseUUID:uniqueIdentifier2 completion:v16];

  v13 = *(v26 + 24);
  if (v13)
  {
LABEL_4:
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v14 = v30[5];
  if (v14)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v14 client:15 error:0];
    v13 = *(v26 + 24);
    goto LABEL_4;
  }

  v13 = 0;
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v13 & 1) == 0)
  {
    *error = v30[5];
    v13 = *(v26 + 24);
  }

LABEL_7:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v13 & 1;
}

void __58__IXAppInstallCoordinator_setDeviceSecurityPromise_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setDeviceSecurityPromise:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set device security promise %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_setDeviceSecurityPromise_error___block_invoke_255(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setDeviceSecurityPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set device security promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)deviceSecurityPromiseWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke_256;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v19;
  v11[5] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getDeviceSecurityPromise:v11];

  v8 = v14[5];
  if (error && !v8)
  {
    *error = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator deviceSecurityPromiseWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get device security promise: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke_256(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke_256_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator deviceSecurityPromiseWithError:]_block_invoke", 2652, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an out of band transfer data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke_256_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXAppInstallCoordinator deviceSecurityPromiseWithError:]_block_invoke", 2649, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXAppInstallCoordinator deviceSecurityPromiseWithError:]_block_invoke", 2644, @"IXErrorDomain", 0x17uLL, 0, 0, @"A device security promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXAppInstallCoordinator deviceSecurityPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get device security promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)getHasDeviceSecurityPromise:(BOOL *)promise error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__IXAppInstallCoordinator_getHasDeviceSecurityPromise_error___block_invoke;
  v13[3] = &unk_1E85C58D0;
  v13[4] = self;
  v13[5] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__IXAppInstallCoordinator_getHasDeviceSecurityPromise_error___block_invoke_260;
  v12[3] = &unk_1E85C5B00;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = promise;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getHasDeviceSecurityPromise:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __61__IXAppInstallCoordinator_getHasDeviceSecurityPromise_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator getHasDeviceSecurityPromise:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a device security promise: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __61__IXAppInstallCoordinator_getHasDeviceSecurityPromise_error___block_invoke_260(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v11 = 136315650;
      v12 = "[IXAppInstallCoordinator getHasDeviceSecurityPromise:error:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a device security promise: %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      *v9 = a2;
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_setNeedsPostProcessing_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator setNeedsPostProcessing:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set needs post processing on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_setNeedsPostProcessing_error___block_invoke_261(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v8 = 136315650;
      v9 = "[IXAppInstallCoordinator setNeedsPostProcessing:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set needs post processing on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)getNeedsPostProcessing:(BOOL *)processing error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__IXAppInstallCoordinator_getNeedsPostProcessing_error___block_invoke;
  v13[3] = &unk_1E85C58D0;
  v13[4] = self;
  v13[5] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__IXAppInstallCoordinator_getNeedsPostProcessing_error___block_invoke_262;
  v12[3] = &unk_1E85C5B00;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = processing;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getNeedsPostProcessing:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __56__IXAppInstallCoordinator_getNeedsPostProcessing_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator getNeedsPostProcessing:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ needs post processing: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_getNeedsPostProcessing_error___block_invoke_262(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v11 = 136315650;
      v12 = "[IXAppInstallCoordinator getNeedsPostProcessing:error:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ needs post processing: %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      *v9 = a2;
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)getPostProcessingShouldBegin:(BOOL *)begin error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__IXAppInstallCoordinator_getPostProcessingShouldBegin_error___block_invoke;
  v13[3] = &unk_1E85C58D0;
  v13[4] = self;
  v13[5] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__IXAppInstallCoordinator_getPostProcessingShouldBegin_error___block_invoke_263;
  v12[3] = &unk_1E85C5B00;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = begin;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getPostProcessingShouldBegin:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __62__IXAppInstallCoordinator_getPostProcessingShouldBegin_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator getPostProcessingShouldBegin:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ should begin post processing: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __62__IXAppInstallCoordinator_getPostProcessingShouldBegin_error___block_invoke_263(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v11 = 136315650;
      v12 = "[IXAppInstallCoordinator getPostProcessingShouldBegin:error:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ should begin post processing: %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      *v9 = a2;
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)setEssentialAssetPromises:(id)promises error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  promisesCopy = promises;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = promisesCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        uniqueIdentifier = [*(*(&v23 + 1) + 8 * i) uniqueIdentifier];
        [v7 addObject:uniqueIdentifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v9);
  }

  v13 = +[IXServerConnection sharedConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__IXAppInstallCoordinator_setEssentialAssetPromises_error___block_invoke;
  v22[3] = &unk_1E85C58D0;
  v22[4] = self;
  v22[5] = &v27;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v22];
  uniqueIdentifier2 = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v16 = [v7 copy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__IXAppInstallCoordinator_setEssentialAssetPromises_error___block_invoke_264;
  v21[3] = &unk_1E85C5A10;
  v21[4] = self;
  v21[5] = &v27;
  v21[6] = &v33;
  [v14 _remote_IXSCoordinatedAppInstall:uniqueIdentifier2 setEssentialAssetPromiseUUIDs:v16 completion:v21];

  v17 = *(v34 + 24);
  if (v17)
  {
LABEL_11:
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v18 = v28[5];
  if (v18)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v18 client:15 error:0];
    v17 = *(v34 + 24);
    goto LABEL_11;
  }

  v17 = 0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v17 & 1) == 0)
  {
    *error = v28[5];
    v17 = *(v34 + 24);
  }

LABEL_14:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void __59__IXAppInstallCoordinator_setEssentialAssetPromises_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator setEssentialAssetPromises:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set essential asset promises on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator_setEssentialAssetPromises_error___block_invoke_264(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v8 = 136315650;
      v9 = "[IXAppInstallCoordinator setEssentialAssetPromises:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set essential asset promises on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)essentialAssetPromisesWithError:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v4 = +[IXServerConnection sharedConnection];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __59__IXAppInstallCoordinator_essentialAssetPromisesWithError___block_invoke;
  v40[3] = &unk_1E85C5560;
  v40[4] = &v47;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v40];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __59__IXAppInstallCoordinator_essentialAssetPromisesWithError___block_invoke_265;
  v39[3] = &unk_1E85C5588;
  v39[4] = &v47;
  v39[5] = &v41;
  [v5 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getEssentialAssetPromises:v39];

  if (v48[5])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v42[5];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *v36;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          NSStringFromClass(v17);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator essentialAssetPromisesWithError:];
        }

        v18 = objc_opt_class();
        v33 = NSStringFromClass(v18);
        v20 = _CreateError("[IXAppInstallCoordinator essentialAssetPromisesWithError:]", 2832, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an opaque data promise seed subclass but was instead for class %@", v19, v13);

        v15 = v48[5];
        v48[5] = v20;
        goto LABEL_24;
      }

      clientPromiseClass = [v13 clientPromiseClass];
      v15 = [[clientPromiseClass alloc] initWithSeed:v13];
      if (!v15)
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          NSStringFromClass(clientPromiseClass);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator essentialAssetPromisesWithError:];
        }

        v22 = NSStringFromClass(clientPromiseClass);
        v24 = _CreateError("[IXAppInstallCoordinator essentialAssetPromisesWithError:]", 2838, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ from seed %@", v23, v22);
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          NSStringFromClass(v26);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator essentialAssetPromisesWithError:];
        }

        v27 = objc_opt_class();
        v22 = NSStringFromClass(v27);
        v24 = _CreateError("[IXAppInstallCoordinator essentialAssetPromisesWithError:]", 2841, @"IXErrorDomain", 1uLL, 0, 0, @"Object %@ should have been for an opaque data promise subclass but was instead for class %@", v28, v15);
LABEL_23:
        v29 = v24;

        v30 = v48[5];
        v48[5] = v29;

LABEL_24:
        v7 = 0;
        goto LABEL_25;
      }

      [v8 addObject:v15];
    }

    v10 = [v9 countByEnumeratingWithState:&v35 objects:v53 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v7 = [v8 copy];
LABEL_25:
  if (error && !v7)
  {
    *error = v48[5];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v31 = *MEMORY[0x1E69E9840];

  return v7;
}

void __59__IXAppInstallCoordinator_essentialAssetPromisesWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator essentialAssetPromisesWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get essential asset promises: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator_essentialAssetPromisesWithError___block_invoke_265(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315394;
      *&v16[4] = "[IXAppInstallCoordinator essentialAssetPromisesWithError:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get essential asset promises: %@", v16, 0x16u);
    }

    v10 = (*(*(a1 + 32) + 8) + 40);
    v11 = a3;
  }

  else
  {
    if (!v6)
    {
      v13 = _CreateError("[IXAppInstallCoordinator essentialAssetPromisesWithError:]_block_invoke", 2819, @"IXErrorDomain", 0x17uLL, 0, 0, @"No essential asset promises are currently set.", v7, *v16);
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      goto LABEL_8;
    }

    v10 = (*(*(a1 + 40) + 8) + 40);
    v11 = a2;
  }

  objc_storeStrong(v10, v11);
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)getHasEssentialAssetPromises:(BOOL *)promises error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__IXAppInstallCoordinator_getHasEssentialAssetPromises_error___block_invoke;
  v13[3] = &unk_1E85C58D0;
  v13[4] = self;
  v13[5] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__IXAppInstallCoordinator_getHasEssentialAssetPromises_error___block_invoke_269;
  v12[3] = &unk_1E85C5B00;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = promises;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasEssentialAssetPromises:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __62__IXAppInstallCoordinator_getHasEssentialAssetPromises_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator getHasEssentialAssetPromises:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has essential asset promises: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __62__IXAppInstallCoordinator_getHasEssentialAssetPromises_error___block_invoke_269(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v11 = 136315650;
      v12 = "[IXAppInstallCoordinator getHasEssentialAssetPromises:error:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has essential asset promises: %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      *v9 = a2;
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)setDataImportPromises:(id)promises error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  promisesCopy = promises;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = promisesCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        uniqueIdentifier = [*(*(&v23 + 1) + 8 * i) uniqueIdentifier];
        [v7 addObject:uniqueIdentifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v9);
  }

  v13 = +[IXServerConnection sharedConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__IXAppInstallCoordinator_setDataImportPromises_error___block_invoke;
  v22[3] = &unk_1E85C58D0;
  v22[4] = self;
  v22[5] = &v27;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v22];
  uniqueIdentifier2 = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v16 = [v7 copy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__IXAppInstallCoordinator_setDataImportPromises_error___block_invoke_270;
  v21[3] = &unk_1E85C5A10;
  v21[4] = self;
  v21[5] = &v27;
  v21[6] = &v33;
  [v14 _remote_IXSCoordinatedAppInstall:uniqueIdentifier2 setDataImportPromiseUUIDs:v16 completion:v21];

  v17 = *(v34 + 24);
  if (v17)
  {
LABEL_11:
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v18 = v28[5];
  if (v18)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v18 client:15 error:0];
    v17 = *(v34 + 24);
    goto LABEL_11;
  }

  v17 = 0;
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v17 & 1) == 0)
  {
    *error = v28[5];
    v17 = *(v34 + 24);
  }

LABEL_14:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void __55__IXAppInstallCoordinator_setDataImportPromises_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator setDataImportPromises:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set data import promises on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_setDataImportPromises_error___block_invoke_270(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v8 = 136315650;
      v9 = "[IXAppInstallCoordinator setDataImportPromises:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set data import promises on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)dataImportPromisesWithError:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v4 = +[IXServerConnection sharedConnection];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __55__IXAppInstallCoordinator_dataImportPromisesWithError___block_invoke;
  v40[3] = &unk_1E85C5560;
  v40[4] = &v47;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v40];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __55__IXAppInstallCoordinator_dataImportPromisesWithError___block_invoke_271;
  v39[3] = &unk_1E85C5588;
  v39[4] = &v47;
  v39[5] = &v41;
  [v5 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getDataImportPromises:v39];

  if (v48[5])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v42[5];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *v36;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          NSStringFromClass(v17);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator dataImportPromisesWithError:];
        }

        v18 = objc_opt_class();
        v33 = NSStringFromClass(v18);
        v20 = _CreateError("[IXAppInstallCoordinator dataImportPromisesWithError:]", 2944, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an opaque data promise seed subclass but was instead for class %@", v19, v13);

        v15 = v48[5];
        v48[5] = v20;
        goto LABEL_24;
      }

      clientPromiseClass = [v13 clientPromiseClass];
      v15 = [[clientPromiseClass alloc] initWithSeed:v13];
      if (!v15)
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          NSStringFromClass(clientPromiseClass);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator dataImportPromisesWithError:];
        }

        v22 = NSStringFromClass(clientPromiseClass);
        v24 = _CreateError("[IXAppInstallCoordinator dataImportPromisesWithError:]", 2950, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ from seed %@", v23, v22);
        goto LABEL_23;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          NSStringFromClass(v26);
          objc_claimAutoreleasedReturnValue();
          [IXAppInstallCoordinator dataImportPromisesWithError:];
        }

        v27 = objc_opt_class();
        v22 = NSStringFromClass(v27);
        v24 = _CreateError("[IXAppInstallCoordinator dataImportPromisesWithError:]", 2953, @"IXErrorDomain", 1uLL, 0, 0, @"Object %@ should have been for an opaque data promise subclass but was instead for class %@", v28, v15);
LABEL_23:
        v29 = v24;

        v30 = v48[5];
        v48[5] = v29;

LABEL_24:
        v7 = 0;
        goto LABEL_25;
      }

      [v8 addObject:v15];
    }

    v10 = [v9 countByEnumeratingWithState:&v35 objects:v53 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v7 = [v8 copy];
LABEL_25:
  if (error && !v7)
  {
    *error = v48[5];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  v31 = *MEMORY[0x1E69E9840];

  return v7;
}

void __55__IXAppInstallCoordinator_dataImportPromisesWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator dataImportPromisesWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get data import promises: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_dataImportPromisesWithError___block_invoke_271(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315394;
      *&v16[4] = "[IXAppInstallCoordinator dataImportPromisesWithError:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get data import promises: %@", v16, 0x16u);
    }

    v10 = (*(*(a1 + 32) + 8) + 40);
    v11 = a3;
  }

  else
  {
    if (!v6)
    {
      v13 = _CreateError("[IXAppInstallCoordinator dataImportPromisesWithError:]_block_invoke", 2931, @"IXErrorDomain", 0x17uLL, 0, 0, @"No data import promises are currently set.", v7, *v16);
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      goto LABEL_8;
    }

    v10 = (*(*(a1 + 40) + 8) + 40);
    v11 = a2;
  }

  objc_storeStrong(v10, v11);
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)getHasDataImportPromises:(BOOL *)promises error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__IXAppInstallCoordinator_getHasDataImportPromises_error___block_invoke;
  v13[3] = &unk_1E85C58D0;
  v13[4] = self;
  v13[5] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__IXAppInstallCoordinator_getHasDataImportPromises_error___block_invoke_275;
  v12[3] = &unk_1E85C5B00;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = promises;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier hasDataImportPromises:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __58__IXAppInstallCoordinator_getHasDataImportPromises_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator getHasDataImportPromises:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has data import promises: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_getHasDataImportPromises_error___block_invoke_275(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v11 = 136315650;
      v12 = "[IXAppInstallCoordinator getHasDataImportPromises:error:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has data import promises: %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      *v9 = a2;
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)stagingLocationForInstallLocation:(id)location withSandboxExtension:(id *)extension error:(id *)error
{
  locationCopy = location;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v8 = +[IXServerConnection sharedConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__IXAppInstallCoordinator_stagingLocationForInstallLocation_withSandboxExtension_error___block_invoke;
  v20[3] = &unk_1E85C58D0;
  v9 = locationCopy;
  v21 = v9;
  v22 = &v23;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__IXAppInstallCoordinator_stagingLocationForInstallLocation_withSandboxExtension_error___block_invoke_276;
  v15[3] = &unk_1E85C5B28;
  v11 = v9;
  v16 = v11;
  v17 = &v23;
  v18 = &v35;
  v19 = &v29;
  [v10 _remote_stagingLocationForInstallLocation:v11 completion:v15];

  v12 = v36[5];
  if (error && !v12)
  {
    *error = v24[5];
    v12 = v36[5];
  }

  if (extension && v12)
  {
    *extension = v30[5];
    v12 = v36[5];
  }

  v13 = v12;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v13;
}

void __88__IXAppInstallCoordinator_stagingLocationForInstallLocation_withSandboxExtension_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "+[IXAppInstallCoordinator stagingLocationForInstallLocation:withSandboxExtension:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get temporary staging directory for install location %@: %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __88__IXAppInstallCoordinator_stagingLocationForInstallLocation_withSandboxExtension_error___block_invoke_276(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v15 = 136315650;
      v16 = "+[IXAppInstallCoordinator stagingLocationForInstallLocation:withSandboxExtension:error:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1DA47A000, v11, OS_LOG_TYPE_DEFAULT, "%s: Failed to get temporary staging directory for install location %@: %@", &v15, 0x20u);
    }

    v13 = 40;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v13 = 56;
    a4 = a3;
  }

  objc_storeStrong((*(*(a1 + v13) + 8) + 40), a4);

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)setInstallTargetDirectoryURL:(id)l error:(id *)error
{
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setInstallTargetDirectoryURL:error:];
  }

  v7 = _CreateError("[IXAppInstallCoordinator setInstallTargetDirectoryURL:error:]", 3051, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v6, "[IXAppInstallCoordinator setInstallTargetDirectoryURL:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)installTargetDirectoryURLWithError:(id *)error
{
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator installTargetDirectoryURLWithError:];
  }

  v6 = _CreateError("[IXAppInstallCoordinator installTargetDirectoryURLWithError:]", 3082, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v5, "[IXAppInstallCoordinator installTargetDirectoryURLWithError:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)setTargetBundleURL:(id)l preservingTargetBundleNameOnUpdate:(BOOL)update error:(id *)error
{
  v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setTargetBundleURL:preservingTargetBundleNameOnUpdate:error:];
  }

  v8 = _CreateError("[IXAppInstallCoordinator setTargetBundleURL:preservingTargetBundleNameOnUpdate:error:]", 3137, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v7, "[IXAppInstallCoordinator setTargetBundleURL:preservingTargetBundleNameOnUpdate:error:]");
  if (error)
  {
    v8 = v8;
    *error = v8;
  }

  return 0;
}

- (BOOL)setPreserveTargetBundleNameOnUpdate:(BOOL)update error:(id *)error
{
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setPreserveTargetBundleNameOnUpdate:error:];
  }

  v7 = _CreateError("[IXAppInstallCoordinator setPreserveTargetBundleNameOnUpdate:error:]", 3177, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v6, "[IXAppInstallCoordinator setPreserveTargetBundleNameOnUpdate:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)targetBundleURLWithError:(id *)error
{
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator targetBundleURLWithError:];
  }

  v6 = _CreateError("[IXAppInstallCoordinator targetBundleURLWithError:]", 3208, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v5, "[IXAppInstallCoordinator targetBundleURLWithError:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)setAppQuitPromise:(id)promise error:(id *)error
{
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setAppQuitPromise:error:];
  }

  v7 = _CreateError("[IXAppInstallCoordinator setAppQuitPromise:error:]", 3237, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v6, "[IXAppInstallCoordinator setAppQuitPromise:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)appQuitPromiseWithError:(id *)error
{
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator appQuitPromiseWithError:];
  }

  v6 = _CreateError("[IXAppInstallCoordinator appQuitPromiseWithError:]", 3274, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v5, "[IXAppInstallCoordinator appQuitPromiseWithError:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)setManagedInstallUUID:(id)d error:(id *)error
{
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setManagedInstallUUID:error:];
  }

  v7 = _CreateError("[IXAppInstallCoordinator setManagedInstallUUID:error:]", 3305, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v6, "[IXAppInstallCoordinator setManagedInstallUUID:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (id)managedInstallUUIDWithError:(id *)error
{
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator managedInstallUUIDWithError:];
  }

  v6 = _CreateError("[IXAppInstallCoordinator managedInstallUUIDWithError:]", 3333, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v5, "[IXAppInstallCoordinator managedInstallUUIDWithError:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (BOOL)setShouldOverrideGatekeeper:(BOOL)gatekeeper error:(id *)error
{
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator setShouldOverrideGatekeeper:error:];
  }

  v7 = _CreateError("[IXAppInstallCoordinator setShouldOverrideGatekeeper:error:]", 3364, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v6, "[IXAppInstallCoordinator setShouldOverrideGatekeeper:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)getShouldOverrideGatekeeperValue:(BOOL *)value error:(id *)error
{
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXAppInstallCoordinator getShouldOverrideGatekeeperValue:error:];
  }

  v7 = _CreateError("[IXAppInstallCoordinator getShouldOverrideGatekeeperValue:error:]", 3394, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is unsupported on this platform.", v6, "[IXAppInstallCoordinator getShouldOverrideGatekeeperValue:error:]");
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return 0;
}

- (BOOL)setRemovability:(unint64_t)removability byClient:(unint64_t)client error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__IXAppInstallCoordinator_setRemovability_byClient_error___block_invoke;
  v15[3] = &unk_1E85C5A60;
  v15[5] = &v16;
  v15[6] = removability;
  v15[4] = self;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v15];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__IXAppInstallCoordinator_setRemovability_byClient_error___block_invoke_278;
  v14[3] = &unk_1E85C5A88;
  v14[4] = self;
  v14[5] = &v16;
  v14[6] = &v22;
  v14[7] = removability;
  [v10 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setRemovability:removability byClient:client completion:v14];

  v12 = *(v23 + 24);
  if (error && (v23[3] & 1) == 0)
  {
    *error = v17[5];
    v12 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v12 & 1;
}

void __58__IXAppInstallCoordinator_setRemovability_byClient_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = IXStringForAppRemovability(a1[6]);
    v6 = a1[4];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setRemovability:byClient:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set removability state to %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_setRemovability_byClient_error___block_invoke_278(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = IXStringForAppRemovability(a1[7]);
      v7 = a1[4];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setRemovability:byClient:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set removability state to %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)removabilityWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__IXAppInstallCoordinator_removabilityWithError___block_invoke;
  v11[3] = &unk_1E85C58D0;
  v11[4] = self;
  v11[5] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__IXAppInstallCoordinator_removabilityWithError___block_invoke_279;
  v10[3] = &unk_1E85C5AB0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v18;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier removabilityWithCompletion:v10];

  v8 = v19[3];
  if (error && !v8)
  {
    *error = v13[5];
    v8 = v19[3];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __49__IXAppInstallCoordinator_removabilityWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator removabilityWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get removability state from %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __49__IXAppInstallCoordinator_removabilityWithError___block_invoke_279(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v10 = 136315650;
      v11 = "[IXAppInstallCoordinator removabilityWithError:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to get removability state from %@ : %@", &v10, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)setPlaceholderDisposition:(unint64_t)disposition error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__IXAppInstallCoordinator_setPlaceholderDisposition_error___block_invoke;
  v13[3] = &unk_1E85C5A60;
  v13[5] = &v14;
  v13[6] = disposition;
  v13[4] = self;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__IXAppInstallCoordinator_setPlaceholderDisposition_error___block_invoke_280;
  v12[3] = &unk_1E85C5A88;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v12[7] = disposition;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setPlaceholderDisposition:disposition completion:v12];

  v10 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v15[5];
    v10 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

void __59__IXAppInstallCoordinator_setPlaceholderDisposition_error___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = IXStringForPlaceholderDisposition(a1[6]);
    v6 = a1[4];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setPlaceholderDisposition:error:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set placeholder disposition to %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator_setPlaceholderDisposition_error___block_invoke_280(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = IXStringForPlaceholderDisposition(a1[7]);
      v7 = a1[4];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setPlaceholderDisposition:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set placeholder disposition to %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)placeholderDispositionWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__IXAppInstallCoordinator_placeholderDispositionWithError___block_invoke;
  v11[3] = &unk_1E85C58D0;
  v11[4] = self;
  v11[5] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__IXAppInstallCoordinator_placeholderDispositionWithError___block_invoke_281;
  v10[3] = &unk_1E85C5AB0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v18;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getPlaceholderDispositionWithCompletion:v10];

  v8 = v19[3];
  if (error && !v8)
  {
    *error = v13[5];
    v8 = v19[3];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __59__IXAppInstallCoordinator_placeholderDispositionWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator placeholderDispositionWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get placeholder disposition from %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator_placeholderDispositionWithError___block_invoke_281(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v10 = 136315650;
      v11 = "[IXAppInstallCoordinator placeholderDispositionWithError:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to get placeholder disposition from %@ : %@", &v10, 0x20u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (unsigned)coordinatorScopeWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__IXAppInstallCoordinator_coordinatorScopeWithError___block_invoke;
  v11[3] = &unk_1E85C58D0;
  v11[4] = self;
  v11[5] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__IXAppInstallCoordinator_coordinatorScopeWithError___block_invoke_282;
  v10[3] = &unk_1E85C5B50;
  v10[4] = &v12;
  v10[5] = &v18;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getCoordinatorScopeWithCompletion:v10];

  v8 = *(v19 + 24);
  if (error && !*(v19 + 24))
  {
    *error = v13[5];
    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __53__IXAppInstallCoordinator_coordinatorScopeWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator coordinatorScopeWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get coordinator scope from %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __53__IXAppInstallCoordinator_coordinatorScopeWithError___block_invoke_282(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (BOOL)convertToGloballyScopedCoordinatorWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__IXAppInstallCoordinator_convertToGloballyScopedCoordinatorWithError___block_invoke;
  v11[3] = &unk_1E85C58D0;
  v11[4] = self;
  v11[5] = &v16;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__IXAppInstallCoordinator_convertToGloballyScopedCoordinatorWithError___block_invoke_284;
  v10[3] = &unk_1E85C53F8;
  v10[4] = &v16;
  v10[5] = &v12;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier convertToGloballyScopedWithCompletion:v10];

  v8 = *(v13 + 24);
  if (error && (v13[3] & 1) == 0)
  {
    *error = v17[5];
    v8 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

void __71__IXAppInstallCoordinator_convertToGloballyScopedCoordinatorWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator convertToGloballyScopedCoordinatorWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to convert to global scope for %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __71__IXAppInstallCoordinator_convertToGloballyScopedCoordinatorWithError___block_invoke_284(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)progressHintWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__IXAppInstallCoordinator_progressHintWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__IXAppInstallCoordinator_progressHintWithError___block_invoke_285;
  v11[3] = &unk_1E85C5B78;
  v11[4] = self;
  v11[5] = &v13;
  v11[6] = &v19;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getProgressHintWithCompletion:v11];

  v8 = v20[5];
  if (error && !v8)
  {
    *error = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __49__IXAppInstallCoordinator_progressHintWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXAppInstallCoordinator progressHintWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __49__IXAppInstallCoordinator_progressHintWithError___block_invoke_285(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[IXAppInstallCoordinator progressHintWithError:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get progress hint for %@ : %@", &v12, 0x20u);
    }

    v10 = 40;
  }

  else
  {
    v10 = 48;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v10) + 8) + 40), a3);

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)setProgressHint:(id)hint withError:(id *)error
{
  hintCopy = hint;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__IXAppInstallCoordinator_setProgressHint_withError___block_invoke;
  v20[3] = &unk_1E85C5920;
  v8 = hintCopy;
  v21 = v8;
  selfCopy = self;
  v23 = &v28;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v20];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__IXAppInstallCoordinator_setProgressHint_withError___block_invoke_287;
  v15[3] = &unk_1E85C5948;
  v11 = v8;
  v16 = v11;
  selfCopy2 = self;
  v18 = &v28;
  v19 = &v24;
  [v9 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setProgressHint:v11 completion:v15];

  v12 = *(v25 + 24);
  if (v12)
  {
LABEL_4:
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v13 = v29[5];
  if (v13)
  {
    [(IXAppInstallCoordinator *)self cancelForReason:v13 client:15 error:0];
    v12 = *(v25 + 24);
    goto LABEL_4;
  }

  v12 = 0;
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v12 & 1) == 0)
  {
    *error = v29[5];
    v12 = *(v25 + 24);
  }

LABEL_7:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

void __53__IXAppInstallCoordinator_setProgressHint_withError___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v10 = 136315906;
    v11 = "[IXAppInstallCoordinator setProgressHint:withError:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set progress hint %@ on %@ : %@", &v10, 0x2Au);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x1E69E9840];
}

void __53__IXAppInstallCoordinator_setProgressHint_withError___block_invoke_287(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXAppInstallCoordinator setProgressHint:withError:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set progress hint %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSError)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__IXAppInstallCoordinator_error__block_invoke;
  block[3] = &unk_1E85C5BA0;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v12;
  dispatch_sync(internalQueue, block);

  if (*(v13 + 24) == 1)
  {
    v4 = +[IXServerConnection sharedConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__IXAppInstallCoordinator_error__block_invoke_2;
    v10[3] = &unk_1E85C58D0;
    v10[4] = self;
    v10[5] = &v16;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
    uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__IXAppInstallCoordinator_error__block_invoke_288;
    v9[3] = &unk_1E85C5BC8;
    v9[4] = self;
    v9[5] = &v16;
    [v5 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getErrorInfo:v9];
  }

  v7 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v7;
}

void __32__IXAppInstallCoordinator_error__block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v2);
  }

  else if (*(v1 + 8) == 1)
  {
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void __32__IXAppInstallCoordinator_error__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator error]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get error property for %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __32__IXAppInstallCoordinator_error__block_invoke_288(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a2 && v6)
  {
    v8 = [*(a1 + 32) internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__IXAppInstallCoordinator_error__block_invoke_2_289;
    block[3] = &unk_1E85C52A8;
    block[4] = *(a1 + 32);
    v13 = v7;
    v14 = a2;
    dispatch_sync(v8, block);

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else if (v6)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 136315650;
      v16 = "[IXAppInstallCoordinator error]_block_invoke";
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get error property for %@ : %@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setError:(id)error
{
  errorCopy = error;
  v5 = IXUserPresentableErrorForInsufficientSpaceError(errorCopy);
  v6 = v5;
  if (v5)
  {
    v7 = v5;

    errorCopy = v7;
  }

  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__IXAppInstallCoordinator_setError___block_invoke;
  v10[3] = &unk_1E85C5BF0;
  v10[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_sync(internalQueue, v10);
}

- (unint64_t)errorSourceIdentifier
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__IXAppInstallCoordinator_errorSourceIdentifier__block_invoke;
  block[3] = &unk_1E85C5C18;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(internalQueue, block);

  v4 = v13[3];
  if (!v4)
  {
    v5 = +[IXServerConnection sharedConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__IXAppInstallCoordinator_errorSourceIdentifier__block_invoke_2;
    v10[3] = &unk_1E85C5998;
    v10[4] = self;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__IXAppInstallCoordinator_errorSourceIdentifier__block_invoke_290;
    v9[3] = &unk_1E85C5BC8;
    v9[4] = self;
    v9[5] = &v12;
    [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getErrorInfo:v9];

    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  return v4;
}

void __48__IXAppInstallCoordinator_errorSourceIdentifier__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator errorSourceIdentifier]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get error source for %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __48__IXAppInstallCoordinator_errorSourceIdentifier__block_invoke_290(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 && v5)
  {
    v7 = [*(a1 + 32) internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__IXAppInstallCoordinator_errorSourceIdentifier__block_invoke_2_291;
    block[3] = &unk_1E85C52A8;
    block[4] = *(a1 + 32);
    v12 = v6;
    v13 = a2;
    dispatch_sync(v7, block);

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  else if (v5)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[IXAppInstallCoordinator errorSourceIdentifier]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get error source for %@ : %@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setErrorSourceIdentifier:(unint64_t)identifier
{
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__IXAppInstallCoordinator_setErrorSourceIdentifier___block_invoke;
  v6[3] = &unk_1E85C5C40;
  v6[4] = self;
  v6[5] = identifier;
  dispatch_sync(internalQueue, v6);
}

- (BOOL)isComplete
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__IXAppInstallCoordinator_isComplete__block_invoke;
  block[3] = &unk_1E85C5C18;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(internalQueue, block);

  if (v15[3])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[IXServerConnection sharedConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__IXAppInstallCoordinator_isComplete__block_invoke_2;
    v12[3] = &unk_1E85C5998;
    v12[4] = self;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
    uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__IXAppInstallCoordinator_isComplete__block_invoke_292;
    v11[3] = &unk_1E85C59C0;
    v11[4] = self;
    v11[5] = &v14;
    [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getIsComplete:v11];

    if (*(v15 + 24) == 1)
    {
      internalQueue2 = [(IXAppInstallCoordinator *)self internalQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __37__IXAppInstallCoordinator_isComplete__block_invoke_293;
      v10[3] = &unk_1E85C5C68;
      v10[4] = self;
      v10[5] = &v14;
      dispatch_sync(internalQueue2, v10);
    }

    v4 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v4 & 1;
}

void __37__IXAppInstallCoordinator_isComplete__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator isComplete]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get isComplete property for %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __37__IXAppInstallCoordinator_isComplete__block_invoke_292(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator isComplete]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to get isComplete property for %@ : %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setComplete:(BOOL)complete forApplicationRecord:(id)record
{
  recordCopy = record;
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__IXAppInstallCoordinator_setComplete_forApplicationRecord___block_invoke;
  block[3] = &unk_1E85C5C90;
  completeCopy = complete;
  block[4] = self;
  v10 = recordCopy;
  v8 = recordCopy;
  dispatch_sync(internalQueue, block);
}

- (void)setComplete:(BOOL)complete
{
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__IXAppInstallCoordinator_setComplete___block_invoke;
  v6[3] = &unk_1E85C5CB8;
  v6[4] = self;
  completeCopy = complete;
  dispatch_sync(internalQueue, v6);
}

- (void)_onObserverCalloutQueue_handleObserverForCompletedCoordinator:(id)coordinator completedApplicationRecord:(id)record error:(id)error client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  recordCopy = record;
  errorCopy = error;
  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  dispatch_assert_queue_V2(observerCalloutQueue);

  [(IXAppInstallCoordinator *)self setObserversCalled:[(IXAppInstallCoordinator *)self observersCalled]| 0x800];
  if (objc_opt_respondsToSelector())
  {
    [coordinatorCopy coordinatorDidRegisterForObservation:self];
  }

  observersCalled = [(IXAppInstallCoordinator *)self observersCalled];
  if (errorCopy)
  {
    [(IXAppInstallCoordinator *)self setObserversCalled:observersCalled | 1];
    if (objc_opt_respondsToSelector())
    {
      [coordinatorCopy coordinator:self canceledWithReason:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [coordinatorCopy coordinator:self canceledWithReason:errorCopy client:client];
    }
  }

  else
  {
    [(IXAppInstallCoordinator *)self setObserversCalled:observersCalled | 2];
    if (objc_opt_respondsToSelector())
    {
      [coordinatorCopy coordinatorDidCompleteSuccessfully:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [coordinatorCopy coordinatorDidCompleteSuccessfully:self forApplicationRecord:recordCopy];
    }
  }
}

- (unint64_t)observersCalled
{
  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  dispatch_assert_queue_V2(observerCalloutQueue);

  return self->_observersCalled;
}

- (void)setObserversCalled:(unint64_t)called
{
  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  dispatch_assert_queue_V2(observerCalloutQueue);

  self->_observersCalled = called;
}

- (IXAppInstallCoordinatorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)setObserver:(id)observer
{
  observerCopy = observer;
  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__IXAppInstallCoordinator_setObserver___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerCalloutQueue, v7);
}

void __39__IXAppInstallCoordinator_setObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    objc_storeWeak((*(a1 + 32) + 40), *(a1 + 40));
    [*(a1 + 32) setObserversCalled:0];
    if (*(a1 + 40))
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy_;
      v23 = __Block_byref_object_dispose_;
      v24 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy_;
      v17 = __Block_byref_object_dispose_;
      v18 = 0;
      v4 = [*(a1 + 32) internalQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__IXAppInstallCoordinator_setObserver___block_invoke_2;
      block[3] = &unk_1E85C5CE0;
      block[4] = *(a1 + 32);
      block[5] = &v29;
      block[6] = &v25;
      block[7] = &v19;
      block[8] = &v13;
      dispatch_sync(v4, block);

      if (*(v30 + 24) == 1)
      {
        [*(a1 + 32) _onObserverCalloutQueue_handleObserverForCompletedCoordinator:*(a1 + 40) completedApplicationRecord:v14[5] error:v20[5] client:v26[3]];
      }

      else
      {
        v5 = +[IXServerConnection sharedConnection];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __39__IXAppInstallCoordinator_setObserver___block_invoke_3;
        v11[3] = &unk_1E85C5998;
        v11[4] = *(a1 + 32);
        v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
        v7 = [*(a1 + 32) uniqueIdentifier];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __39__IXAppInstallCoordinator_setObserver___block_invoke_304;
        v9[3] = &unk_1E85C5D30;
        v8 = *(a1 + 40);
        v9[4] = *(a1 + 32);
        v10 = v8;
        [v6 _remote_IXSCoordinatedAppInstall:v7 fireObserversWithCompletion:v9];
      }

      _Block_object_dispose(&v13, 8);

      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v29, 8);
    }
  }
}

void __39__IXAppInstallCoordinator_setObserver___block_invoke_2(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 8);
  *(*(a1[6] + 8) + 24) = *(a1[4] + 24);
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 16));
  v2 = *(a1[4] + 56);
  v3 = (*(a1[8] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __39__IXAppInstallCoordinator_setObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator setObserver:]_block_invoke_3";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to fire observer methods for newly added observer to %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __39__IXAppInstallCoordinator_setObserver___block_invoke_304(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) observerCalloutQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "[IXAppInstallCoordinator setObserver:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v27 = v3;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to fire observers for %@ : %@", buf, 0x20u);
    }
  }

  v7 = [v3 domain];
  if ([v7 isEqualToString:@"IXErrorDomain"])
  {
    v8 = [v3 code] == 6;

    if (v8 && ([*(a1 + 32) observersCalled] & 1) == 0)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v27 = __Block_byref_object_copy_;
      v28 = __Block_byref_object_dispose_;
      v29 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy_;
      v20 = __Block_byref_object_dispose_;
      v21 = 0;
      v9 = [*(a1 + 32) internalQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__IXAppInstallCoordinator_setObserver___block_invoke_305;
      block[3] = &unk_1E85C5D08;
      block[4] = *(a1 + 32);
      v13 = buf;
      v14 = &v22;
      v15 = &v16;
      v12 = v3;
      dispatch_sync(v9, block);

      [*(a1 + 32) _onObserverCalloutQueue_handleObserverForCompletedCoordinator:*(a1 + 40) completedApplicationRecord:v17[5] error:*(*&buf[8] + 40) client:v23[3]];
      _Block_object_dispose(&v16, 8);

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __39__IXAppInstallCoordinator_setObserver___block_invoke_305(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) != 1)
  {
    *(v2 + 8) = 1;
    v6 = *(a1 + 32);
    v8 = *(v6 + 16);
    v7 = (v6 + 16);
    v3 = v8;
    if (!v8)
    {
      objc_storeStrong(v7, *(a1 + 40));
      *(*(a1 + 32) + 24) = 15;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
      *(*(*(a1 + 56) + 8) + 24) = 15;
      return;
    }

LABEL_7:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
    *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 24);
    return;
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + 56);
  v5 = (*(*(a1 + 64) + 8) + 40);

  objc_storeStrong(v5, v4);
}

- (BOOL)pauseWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__IXAppInstallCoordinator_pauseWithError___block_invoke;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__IXAppInstallCoordinator_pauseWithError___block_invoke_306;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setIsPaused:1 completion:v11];

  v8 = v14[5];
  if (error && v8)
  {
    *error = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __42__IXAppInstallCoordinator_pauseWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator pauseWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to send pause message to coordinator: %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)resumeWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__IXAppInstallCoordinator_resumeWithError___block_invoke;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__IXAppInstallCoordinator_resumeWithError___block_invoke_307;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier setIsPaused:0 completion:v11];

  v8 = v14[5];
  if (error && v8)
  {
    *error = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __43__IXAppInstallCoordinator_resumeWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator resumeWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to send resume message to coordinator: %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPaused:(BOOL *)paused withError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__IXAppInstallCoordinator_isPaused_withError___block_invoke;
  v14[3] = &unk_1E85C58D0;
  v14[4] = self;
  v14[5] = &v15;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v14];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__IXAppInstallCoordinator_isPaused_withError___block_invoke_308;
  v13[3] = &unk_1E85C59E8;
  v13[4] = &v15;
  v13[5] = paused;
  [v8 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getIsPausedWithCompletion:v13];

  v10 = v16[5];
  if (error && v10)
  {
    *error = v10;
    v10 = v16[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v15, 8);

  return v11;
}

void __46__IXAppInstallCoordinator_isPaused_withError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator isPaused:withError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to send resume message to coordinator: %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __46__IXAppInstallCoordinator_isPaused_withError___block_invoke_308(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    **(a1 + 40) = a2;
  }
}

- (BOOL)prioritizeWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__IXAppInstallCoordinator_prioritizeWithError___block_invoke;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__IXAppInstallCoordinator_prioritizeWithError___block_invoke_309;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v13;
  [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier prioritizeWithCompletion:v11];

  v8 = v14[5];
  if (error && v8)
  {
    *error = v8;
    v8 = v14[5];
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __47__IXAppInstallCoordinator_prioritizeWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXAppInstallCoordinator prioritizeWithError:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to send resume message to coordinator: %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identity = [(IXAppInstallCoordinator *)self identity];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v8 = IXStringForClientID([(IXAppInstallCoordinator *)self creatorIdentifier]);
  v9 = [v3 stringWithFormat:@"<%@<%p> identity:%@ uuid:%@ creator:%@>", v5, self, identity, uniqueIdentifier, v8];

  return v9;
}

- (NSString)descriptionWithRemoteState
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identity = [(IXAppInstallCoordinator *)self identity];
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v8 = IXStringForClientID([(IXAppInstallCoordinator *)self creatorIdentifier]);
  coordinationState = [(IXAppInstallCoordinator *)self coordinationState];
  if (coordinationState > 0x20)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E85C5EA0[coordinationState];
  }

  v11 = [v3 stringWithFormat:@"<%@<%p> identity:%@ uuid:%@ creator:%@ state:%@>", v5, self, identity, uniqueIdentifier, v8, v10];

  return v11;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueIdentifier = [v5 uniqueIdentifier];

    if (uniqueIdentifier)
    {
      uniqueIdentifier2 = [(IXAppInstallCoordinator *)self uniqueIdentifier];
      uniqueIdentifier3 = [v5 uniqueIdentifier];
      v9 = [uniqueIdentifier2 isEqual:uniqueIdentifier3];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)coordinationState
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__IXAppInstallCoordinator_coordinationState__block_invoke;
  block[3] = &unk_1E85C5C68;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(internalQueue, block);

  v4 = v13[3];
  if (!v4)
  {
    v5 = +[IXServerConnection sharedConnection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__IXAppInstallCoordinator_coordinationState__block_invoke_2;
    v10[3] = &unk_1E85C5998;
    v10[4] = self;
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    uniqueIdentifier = [(IXAppInstallCoordinator *)self uniqueIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__IXAppInstallCoordinator_coordinationState__block_invoke_316;
    v9[3] = &unk_1E85C5BC8;
    v9[4] = self;
    v9[5] = &v12;
    [v6 _remote_IXSCoordinatedAppInstall:uniqueIdentifier getCoordinationState:v9];

    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t __44__IXAppInstallCoordinator_coordinationState__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = 1;
  }

  else
  {
    if (*(v1 + 8) != 1)
    {
      return result;
    }

    v2 = 32;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void __44__IXAppInstallCoordinator_coordinationState__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[IXAppInstallCoordinator coordinationState]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get coordination state for %@ : %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__IXAppInstallCoordinator_coordinationState__block_invoke_316(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXAppInstallCoordinator coordinationState]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to get coordination state for %@ : %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)bundleID
{
  identity = [(IXAppInstallCoordinator *)self identity];
  bundleID = [identity bundleID];

  return bundleID;
}

- (IXApplicationIdentity)identity
{
  seed = [(IXAppInstallCoordinator *)self seed];
  identity = [seed identity];

  return identity;
}

- (NSUUID)uniqueIdentifier
{
  seed = [(IXAppInstallCoordinator *)self seed];
  uniqueIdentifier = [seed uniqueIdentifier];

  return uniqueIdentifier;
}

- (unint64_t)creatorIdentifier
{
  seed = [(IXAppInstallCoordinator *)self seed];
  creator = [seed creator];

  return creator;
}

- (unsigned)creatorEUID
{
  seed = [(IXAppInstallCoordinator *)self seed];
  creatorEUID = [seed creatorEUID];

  return creatorEUID;
}

- (void)_clientDelegate_didRegisterForObservation
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXAppInstallCoordinator _clientDelegate_didRegisterForObservation]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Got observer registration delegate", buf, 0x16u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__IXAppInstallCoordinator__clientDelegate_didRegisterForObservation__block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(observerCalloutQueue, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __68__IXAppInstallCoordinator__clientDelegate_didRegisterForObservation__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[IXAppInstallCoordinator _clientDelegate_didRegisterForObservation]_block_invoke";
      v20 = 2112;
      v21 = v10;
      v11 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_11:
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, v11, &v18, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([*(a1 + 32) observersCalled] & 0x800) != 0)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[IXAppInstallCoordinator _clientDelegate_didRegisterForObservation]_block_invoke";
      v20 = 2112;
      v21 = v12;
      v11 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 0x800}];
  v3 = objc_opt_respondsToSelector();
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(sel_coordinatorDidRegisterForObservation_);
      v18 = 136316162;
      v19 = "[IXAppInstallCoordinator _clientDelegate_didRegisterForObservation]_block_invoke";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2048;
      v25 = v2;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v18, 0x34u);
    }

    goto LABEL_12;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(sel_coordinatorDidRegisterForObservation_);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v18 = 136316162;
    v19 = "[IXAppInstallCoordinator _clientDelegate_didRegisterForObservation]_block_invoke";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v9;
    v26 = 2048;
    v27 = v2;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v18, 0x34u);
  }

  [v2 coordinatorDidRegisterForObservation:*(a1 + 32)];
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_shouldPrioritize
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXAppInstallCoordinator _clientDelegate_shouldPrioritize]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Got should prioritize delegate", buf, 0x16u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__IXAppInstallCoordinator__clientDelegate_shouldPrioritize__block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(observerCalloutQueue, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __59__IXAppInstallCoordinator__clientDelegate_shouldPrioritize__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[IXAppInstallCoordinator _clientDelegate_shouldPrioritize]_block_invoke";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring delegate message; no observer set", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  v3 = objc_opt_respondsToSelector();
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(sel_coordinatorShouldPrioritize_);
      v16 = 136316162;
      v17 = "[IXAppInstallCoordinator _clientDelegate_shouldPrioritize]_block_invoke";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v2;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v16, 0x34u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(sel_coordinatorShouldPrioritize_);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v16 = 136316162;
    v17 = "[IXAppInstallCoordinator _clientDelegate_shouldPrioritize]_block_invoke";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = v2;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v16, 0x34u);
  }

  [v2 coordinatorShouldPrioritize:*(a1 + 32)];
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_shouldResume
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXAppInstallCoordinator _clientDelegate_shouldResume]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Got should resume delegate", buf, 0x16u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__IXAppInstallCoordinator__clientDelegate_shouldResume__block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(observerCalloutQueue, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator__clientDelegate_shouldResume__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[IXAppInstallCoordinator _clientDelegate_shouldResume]_block_invoke";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring delegate message; no observer set", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  v3 = objc_opt_respondsToSelector();
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(sel_coordinatorShouldResume_);
      v16 = 136316162;
      v17 = "[IXAppInstallCoordinator _clientDelegate_shouldResume]_block_invoke";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v2;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v16, 0x34u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(sel_coordinatorShouldResume_);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v16 = 136316162;
    v17 = "[IXAppInstallCoordinator _clientDelegate_shouldResume]_block_invoke";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = v2;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v16, 0x34u);
  }

  [v2 coordinatorShouldResume:*(a1 + 32)];
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_shouldPause
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXAppInstallCoordinator _clientDelegate_shouldPause]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Got should pause delegate", buf, 0x16u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__IXAppInstallCoordinator__clientDelegate_shouldPause__block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(observerCalloutQueue, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __54__IXAppInstallCoordinator__clientDelegate_shouldPause__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[IXAppInstallCoordinator _clientDelegate_shouldPause]_block_invoke";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring delegate message; no observer set", &v16, 0x16u);
    }

    goto LABEL_10;
  }

  v3 = objc_opt_respondsToSelector();
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(sel_coordinatorShouldPause_);
      v16 = 136316162;
      v17 = "[IXAppInstallCoordinator _clientDelegate_shouldPause]_block_invoke";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = v2;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v16, 0x34u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(sel_coordinatorShouldPause_);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v16 = 136316162;
    v17 = "[IXAppInstallCoordinator _clientDelegate_shouldPause]_block_invoke";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = v2;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v16, 0x34u);
  }

  [v2 coordinatorShouldPause:*(a1 + 32)];
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_promiseDidBeginFulfillmentWithIdentifier:(unint64_t)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]";
    v11 = 2112;
    selfCopy = self;
    v13 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Got promise did begin fulfillment for identifier %lu", buf, 0x20u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__IXAppInstallCoordinator__clientDelegate_promiseDidBeginFulfillmentWithIdentifier___block_invoke;
  v8[3] = &unk_1E85C5C40;
  v8[4] = self;
  v8[5] = identifier;
  dispatch_async(observerCalloutQueue, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__clientDelegate_promiseDidBeginFulfillmentWithIdentifier___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v30 = 136315394;
      v31 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]_block_invoke";
      v32 = 2112;
      v33 = v6;
      v7 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_10:
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, v7, &v30, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v3 = *(a1 + 40) - 1;
  if (v3 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1DA4ECB10[v3];
  }

  if (([*(a1 + 32) observersCalled] & v4) != 0)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v30 = 136315394;
      v31 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]_block_invoke";
      v32 = 2112;
      v33 = v8;
      v7 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | v4}];
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = NSStringFromSelector(sel_promiseDidBeginFulfillmentWithIdentifier_);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v30 = 136316162;
      v31 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]_block_invoke";
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v15;
      v38 = 2048;
      v39 = v2;
      _os_log_impl(&dword_1DA47A000, v11, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v30, 0x34u);
    }

    [v2 promiseDidBeginFulfillmentWithIdentifier:*(a1 + 40)];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (v10)
      {
        goto LABEL_12;
      }

      v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(sel_coordinator_configuredPromiseDidBeginFulfillment_);
        v30 = 136316162;
        v31 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]_block_invoke";
        v32 = 2112;
        v33 = v26;
        v34 = 2112;
        v35 = v28;
        v36 = 2048;
        v37 = v2;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@ (or any deprecated equivalent)", &v30, 0x34u);
      }

      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = NSStringFromSelector(sel_coordinator_configuredPromisePromiseDidBeginFulfillment_);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v30 = 136316162;
    v31 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]_block_invoke";
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    v36 = 2112;
    v37 = v20;
    v38 = 2048;
    v39 = v2;
    _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v30, 0x34u);
  }

  [v2 coordinator:*(a1 + 32) configuredPromisePromiseDidBeginFulfillment:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
LABEL_23:
    v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = NSStringFromSelector(sel_coordinator_configuredPromiseDidBeginFulfillment_);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v30 = 136316162;
      v31 = "[IXAppInstallCoordinator _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:]_block_invoke";
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v25;
      v38 = 2048;
      v39 = v2;
      _os_log_impl(&dword_1DA47A000, v21, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v30, 0x34u);
    }

    [v2 coordinator:*(a1 + 32) configuredPromiseDidBeginFulfillment:*(a1 + 40)];
  }

LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_shouldBeginRestoringUserData
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginRestoringUserData]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Got should begin restoring user data delegate", buf, 0x16u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__IXAppInstallCoordinator__clientDelegate_shouldBeginRestoringUserData__block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_async(observerCalloutQueue, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __71__IXAppInstallCoordinator__clientDelegate_shouldBeginRestoringUserData__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginRestoringUserData]_block_invoke";
      v20 = 2112;
      v21 = v10;
      v11 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_11:
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, v11, &v18, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([*(a1 + 32) observersCalled] & 0x80) != 0)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginRestoringUserData]_block_invoke";
      v20 = 2112;
      v21 = v12;
      v11 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 0x80}];
  v3 = objc_opt_respondsToSelector();
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(sel_coordinatorShouldBeginRestoringUserData_);
      v18 = 136316162;
      v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginRestoringUserData]_block_invoke";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2048;
      v25 = v2;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v18, 0x34u);
    }

    goto LABEL_12;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(sel_coordinatorShouldBeginRestoringUserData_);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v18 = 136316162;
    v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginRestoringUserData]_block_invoke";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v9;
    v26 = 2048;
    v27 = v2;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v18, 0x34u);
  }

  [v2 coordinatorShouldBeginRestoringUserData:*(a1 + 32)];
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_shouldBeginPostProcessingForApplicationRecord:(id)record
{
  v17 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginPostProcessingForApplicationRecord:]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2112;
    v16 = recordCopy;
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Got should begin post processing delegate for app record %@", buf, 0x20u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__IXAppInstallCoordinator__clientDelegate_shouldBeginPostProcessingForApplicationRecord___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = recordCopy;
  v7 = recordCopy;
  dispatch_async(observerCalloutQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __89__IXAppInstallCoordinator__clientDelegate_shouldBeginPostProcessingForApplicationRecord___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginPostProcessingForApplicationRecord:]_block_invoke";
      v20 = 2112;
      v21 = v10;
      v11 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_11:
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, v11, &v18, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (([*(a1 + 32) observersCalled] & 0x2000) != 0)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v18 = 136315394;
      v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginPostProcessingForApplicationRecord:]_block_invoke";
      v20 = 2112;
      v21 = v12;
      v11 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 0x2000}];
  v3 = objc_opt_respondsToSelector();
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_);
      v18 = 136316162;
      v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginPostProcessingForApplicationRecord:]_block_invoke";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2048;
      v25 = v2;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v18, 0x34u);
    }

    goto LABEL_12;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v18 = 136316162;
    v19 = "[IXAppInstallCoordinator _clientDelegate_shouldBeginPostProcessingForApplicationRecord:]_block_invoke";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v9;
    v26 = 2048;
    v27 = v2;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v18, 0x34u);
  }

  [v2 coordinatorShouldBeginPostProcessing:*(a1 + 32) forApplicationRecord:*(a1 + 40)];
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_placeholderDidInstallForApplicationRecord:(id)record
{
  v17 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[IXAppInstallCoordinator _clientDelegate_placeholderDidInstallForApplicationRecord:]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2112;
    v16 = recordCopy;
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Got placeholder did install delegate for app record %@", buf, 0x20u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__IXAppInstallCoordinator__clientDelegate_placeholderDidInstallForApplicationRecord___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = recordCopy;
  v7 = recordCopy;
  dispatch_async(observerCalloutQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __85__IXAppInstallCoordinator__clientDelegate_placeholderDidInstallForApplicationRecord___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v23 = 136315394;
      v24 = "[IXAppInstallCoordinator _clientDelegate_placeholderDidInstallForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v9;
      v10 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_12:
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, v10, &v23, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (([*(a1 + 32) observersCalled] & 4) != 0)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v23 = 136315394;
      v24 = "[IXAppInstallCoordinator _clientDelegate_placeholderDidInstallForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v11;
      v10 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 4}];
  if (objc_opt_respondsToSelector())
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v23 = 136316162;
      v24 = "[IXAppInstallCoordinator _clientDelegate_placeholderDidInstallForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v4;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      v31 = 2048;
      v32 = v2;
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v23, 0x34u);
    }

    [v2 coordinatorDidInstallPlaceholder:*(a1 + 32)];
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_16:
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_forApplicationRecord_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v23 = 136316162;
        v24 = "[IXAppInstallCoordinator _clientDelegate_placeholderDidInstallForApplicationRecord:]_block_invoke";
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v17;
        v31 = 2048;
        v32 = v2;
        _os_log_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v23, 0x34u);
      }

      [v2 coordinatorDidInstallPlaceholder:*(a1 + 32) forApplicationRecord:*(a1 + 40)];
      goto LABEL_14;
    }

    v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_forApplicationRecord_);
      v23 = 136316162;
      v24 = "[IXAppInstallCoordinator _clientDelegate_placeholderDidInstallForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v21;
      v29 = 2048;
      v30 = v2;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_1DA47A000, v18, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@ (or any deprecated equivalent)", &v23, 0x34u);
    }
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_didCompleteForApplicationRecord:(id)record
{
  v17 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[IXAppInstallCoordinator _clientDelegate_didCompleteForApplicationRecord:]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2112;
    v16 = recordCopy;
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@: Got completion delegate for app record %@", buf, 0x20u);
  }

  [(IXAppInstallCoordinator *)self setComplete:1 forApplicationRecord:recordCopy];
  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__IXAppInstallCoordinator__clientDelegate_didCompleteForApplicationRecord___block_invoke;
  v9[3] = &unk_1E85C5BF0;
  v9[4] = self;
  v10 = recordCopy;
  v7 = recordCopy;
  dispatch_async(observerCalloutQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __75__IXAppInstallCoordinator__clientDelegate_didCompleteForApplicationRecord___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v23 = 136315394;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCompleteForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v9;
      v10 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_12:
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, v10, &v23, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (([*(a1 + 32) observersCalled] & 2) != 0)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v23 = 136315394;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCompleteForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v11;
      v10 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 2}];
  if (objc_opt_respondsToSelector())
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v23 = 136316162;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCompleteForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v4;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      v31 = 2048;
      v32 = v2;
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v23, 0x34u);
    }

    [v2 coordinatorDidCompleteSuccessfully:*(a1 + 32)];
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_16:
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v23 = 136316162;
        v24 = "[IXAppInstallCoordinator _clientDelegate_didCompleteForApplicationRecord:]_block_invoke";
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v17;
        v31 = 2048;
        v32 = v2;
        _os_log_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v23, 0x34u);
      }

      [v2 coordinatorDidCompleteSuccessfully:*(a1 + 32) forApplicationRecord:*(a1 + 40)];
      goto LABEL_14;
    }

    v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_);
      v23 = 136316162;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCompleteForApplicationRecord:]_block_invoke";
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v21;
      v29 = 2048;
      v30 = v2;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_1DA47A000, v18, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@ (or any deprecated equivalent)", &v23, 0x34u);
    }
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_didCancelWithError:(id)error client:(unint64_t)client
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = IXStringForClientID(client);
    *buf = 136315906;
    v21 = "[IXAppInstallCoordinator _clientDelegate_didCancelWithError:client:]";
    v22 = 2112;
    selfCopy = self;
    v24 = 2112;
    v25 = errorCopy;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: Got cancel delegate with reason %@ client %@", buf, 0x2Au);
  }

  internalQueue = [(IXAppInstallCoordinator *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__IXAppInstallCoordinator__clientDelegate_didCancelWithError_client___block_invoke;
  block[3] = &unk_1E85C52A8;
  block[4] = self;
  v10 = errorCopy;
  v18 = v10;
  clientCopy = client;
  dispatch_sync(internalQueue, block);

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__IXAppInstallCoordinator__clientDelegate_didCancelWithError_client___block_invoke_2;
  v14[3] = &unk_1E85C52A8;
  v14[4] = self;
  v15 = v10;
  clientCopy2 = client;
  v12 = v10;
  dispatch_async(observerCalloutQueue, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __69__IXAppInstallCoordinator__clientDelegate_didCancelWithError_client___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  *(*(a1 + 32) + 24) = *(a1 + 48);
  *(*(a1 + 32) + 8) = 1;
}

void __69__IXAppInstallCoordinator__clientDelegate_didCancelWithError_client___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (!v2)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v23 = 136315394;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCancelWithError:client:]_block_invoke_2";
      v25 = 2112;
      v26 = v9;
      v10 = "%s: %@: Ignoring delegate message; no observer set";
LABEL_12:
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, v10, &v23, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if ([*(a1 + 32) observersCalled])
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v23 = 136315394;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCancelWithError:client:]_block_invoke";
      v25 = 2112;
      v26 = v11;
      v10 = "%s: %@: Ignoring delegate message; already called";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 1}];
  if (objc_opt_respondsToSelector())
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = NSStringFromSelector(sel_coordinator_canceledWithReason_);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v23 = 136316162;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCancelWithError:client:]_block_invoke";
      v25 = 2112;
      v26 = v4;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      v31 = 2048;
      v32 = v2;
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v23, 0x34u);
    }

    [v2 coordinator:*(a1 + 32) canceledWithReason:*(a1 + 40)];
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_16:
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = NSStringFromSelector(sel_coordinator_canceledWithReason_client_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v23 = 136316162;
        v24 = "[IXAppInstallCoordinator _clientDelegate_didCancelWithError:client:]_block_invoke";
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v17;
        v31 = 2048;
        v32 = v2;
        _os_log_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v23, 0x34u);
      }

      [v2 coordinator:*(a1 + 32) canceledWithReason:*(a1 + 40) client:*(a1 + 48)];
      goto LABEL_14;
    }

    v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(sel_coordinator_canceledWithReason_client_);
      v23 = 136316162;
      v24 = "[IXAppInstallCoordinator _clientDelegate_didCancelWithError:client:]_block_invoke";
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v21;
      v29 = 2048;
      v30 = v2;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_1DA47A000, v18, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@ (or any deprecated equivalent)", &v23, 0x34u);
    }
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_clientDelegate_didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (phase >= 3)
    {
      phase = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown progress value %lu", phase];
    }

    else
    {
      phase = off_1E85C5FA8[phase];
    }

    *buf = 136316162;
    v15 = "[IXAppInstallCoordinator _clientDelegate_didUpdateProgress:forPhase:overallProgress:]";
    v16 = 2112;
    selfCopy = self;
    v18 = 2048;
    progressCopy = progress;
    v20 = 2112;
    v21 = phase;
    v22 = 2048;
    overallProgressCopy = overallProgress;
    _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Got did update progress delegate with percentComplete %f phase %@ overallProgress %f", buf, 0x34u);
  }

  observerCalloutQueue = [(IXAppInstallCoordinator *)self observerCalloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__IXAppInstallCoordinator__clientDelegate_didUpdateProgress_forPhase_overallProgress___block_invoke;
  block[3] = &unk_1E85C5D80;
  block[4] = self;
  *&block[5] = progress;
  block[6] = phase;
  *&block[7] = overallProgress;
  dispatch_async(observerCalloutQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __86__IXAppInstallCoordinator__clientDelegate_didUpdateProgress_forPhase_overallProgress___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observer];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = NSStringFromSelector(sel_coordinator_didUpdateProgress_forPhase_overallProgress_);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v16 = 136316162;
        v17 = "[IXAppInstallCoordinator _clientDelegate_didUpdateProgress:forPhase:overallProgress:]_block_invoke";
        v18 = 2112;
        v19 = v4;
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        v25 = v2;
        _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@: Calling selector %@ on observer <%@ 0x%p>", &v16, 0x34u);
      }

      [v2 coordinator:*(a1 + 32) didUpdateProgress:*(a1 + 48) forPhase:*(a1 + 40) overallProgress:*(a1 + 56)];
    }

    else if (([*(a1 + 32) observersCalled] & 0x1000) == 0)
    {
      v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(sel_coordinator_didUpdateProgress_forPhase_overallProgress_);
        v16 = 136316162;
        v17 = "[IXAppInstallCoordinator _clientDelegate_didUpdateProgress:forPhase:overallProgress:]_block_invoke";
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v13;
        v22 = 2048;
        v23 = v2;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@: Observer <%@ 0x%p> does not respond to %@", &v16, 0x34u);
      }

      [*(a1 + 32) setObserversCalled:{objc_msgSend(*(a1 + 32), "observersCalled") | 0x1000}];
    }
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[IXAppInstallCoordinator _clientDelegate_didUpdateProgress:forPhase:overallProgress:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@: Ignoring delegate message; no observer set", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (BOOL)purgeAllCoordinatorsAndPromisesForCreator:(unint64_t)creator
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v4 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__IXAppInstallCoordinator_IXTesting__purgeAllCoordinatorsAndPromisesForCreator___block_invoke;
  v8[3] = &unk_1E85C5560;
  v8[4] = &v9;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__IXAppInstallCoordinator_IXTesting__purgeAllCoordinatorsAndPromisesForCreator___block_invoke_685;
  v7[3] = &unk_1E85C5560;
  v7[4] = &v9;
  [v5 _remote_purgeRegisteredCoordinatorsAndPromisesForCreator:creator completion:v7];

  LOBYTE(creator) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return creator;
}

void __80__IXAppInstallCoordinator_IXTesting__purgeAllCoordinatorsAndPromisesForCreator___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator(IXTesting) purgeAllCoordinatorsAndPromisesForCreator:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void __80__IXAppInstallCoordinator_IXTesting__purgeAllCoordinatorsAndPromisesForCreator___block_invoke_685(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "+[IXAppInstallCoordinator(IXTesting) purgeAllCoordinatorsAndPromisesForCreator:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to purge registered coordinators and promises: %@", &v6, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)killDaemonForTesting
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v2 = +[IXServerConnection sharedConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke;
  v16[3] = &unk_1E85C5560;
  v16[4] = &v17;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_686;
  v15[3] = &unk_1E85C5DA8;
  v15[4] = &v17;
  v15[5] = &v25;
  [v3 _remote_pingDaemonWithCompletion:v15];

  if (v18[3])
  {
    v4 = +[IXServerConnection sharedConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_688;
    v14[3] = &unk_1E85C5560;
    v14[4] = &v17;
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v5 _remote_killDaemonForTestingWithCompletion:&__block_literal_global_691];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_692;
    v13[3] = &unk_1E85C5DF0;
    v13[4] = &v21;
    v6 = [IXServerConnection retrySynchronousIPC:v13];
    if (*(v26 + 6) == *(v22 + 6))
    {
      v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v26 + 6);
        v9 = *(v22 + 6);
        *buf = 136315650;
        v30 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]";
        v31 = 1024;
        v32 = v8;
        v33 = 1024;
        v34 = v9;
        _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Daemon restart didn't work - before PID equal to after PID (%d == %d)", buf, 0x18u);
      }

      v10 = 0;
      *(v18 + 24) = 0;
    }

    else
    {
      v10 = *(v18 + 24);
    }
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Ping got error %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_686(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Ping got completion error %@", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_688(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code];

    if (v5 == 4097)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_689(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 136315394;
      v10 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke";
      v11 = 2112;
      v12 = v2;
      v5 = "%s: Got completion error: %@";
      v6 = v3;
      v7 = 22;
LABEL_6:
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    v9 = 136315138;
    v10 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke";
    v5 = "%s: Got completion";
    v6 = v3;
    v7 = 12;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x1E69E9840];
}

id __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_692(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v2 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_2;
  v8[3] = &unk_1E85C5560;
  v8[4] = &v9;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_693;
  v7[3] = &unk_1E85C5DA8;
  v4 = *(a1 + 32);
  v7[4] = &v9;
  v7[5] = v4;
  [v3 _remote_pingDaemonWithCompletion:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Ping got error %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_IXTesting__killDaemonForTesting__block_invoke_693(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[IXAppInstallCoordinator(IXTesting) killDaemonForTesting]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Ping got completion error %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (int)daemonPid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__IXAppInstallCoordinator_IXTesting__daemonPid__block_invoke;
  v5[3] = &unk_1E85C5DF0;
  v5[4] = &v6;
  v2 = [IXServerConnection retrySynchronousIPC:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __47__IXAppInstallCoordinator_IXTesting__daemonPid__block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v2 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__IXAppInstallCoordinator_IXTesting__daemonPid__block_invoke_2;
  v8[3] = &unk_1E85C5560;
  v8[4] = &v9;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__IXAppInstallCoordinator_IXTesting__daemonPid__block_invoke_695;
  v7[3] = &unk_1E85C5DA8;
  v4 = *(a1 + 32);
  v7[4] = &v9;
  v7[5] = v4;
  [v3 _remote_pingDaemonWithCompletion:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __47__IXAppInstallCoordinator_IXTesting__daemonPid__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator(IXTesting) daemonPid]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Ping got error %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __47__IXAppInstallCoordinator_IXTesting__daemonPid__block_invoke_695(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[IXAppInstallCoordinator(IXTesting) daemonPid]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Ping got completion error %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)postNSCurrentLocaleDidChangeNotification
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v2 = +[IXServerConnection sharedConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__IXAppInstallCoordinator_IXTesting__postNSCurrentLocaleDidChangeNotification__block_invoke;
  v6[3] = &unk_1E85C5560;
  v6[4] = &v7;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__IXAppInstallCoordinator_IXTesting__postNSCurrentLocaleDidChangeNotification__block_invoke_696;
  v5[3] = &unk_1E85C5560;
  v5[4] = &v7;
  [v3 _remote_postNSCurrentLocaleDidChangeNotification:v5];

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __78__IXAppInstallCoordinator_IXTesting__postNSCurrentLocaleDidChangeNotification__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code];

    if (v5 == 4097)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator(IXTesting) postNSCurrentLocaleDidChangeNotification]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
}

void __78__IXAppInstallCoordinator_IXTesting__postNSCurrentLocaleDidChangeNotification__block_invoke_696(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "+[IXAppInstallCoordinator(IXTesting) postNSCurrentLocaleDidChangeNotification]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Posting NSCurrentLocaleDidChange got completion error: %@", &v6, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_IXTesting__setTestingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[IXAppInstallCoordinator(IXTesting) setTestingEnabled:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __56__IXAppInstallCoordinator_IXTesting__setTestingEnabled___block_invoke_699(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[IXAppInstallCoordinator(IXTesting) setTestingEnabled:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      v5 = "%s: Got completion error: %@";
      v6 = v4;
      v7 = 22;
LABEL_6:
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[IXAppInstallCoordinator(IXTesting) setTestingEnabled:]_block_invoke";
      v5 = "%s: Got completion";
      v6 = v4;
      v7 = 12;
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)setTestModeForIdentifierPrefix:(id)prefix testMode:(unint64_t)mode testSpecificValidationData:(id)data
{
  prefixCopy = prefix;
  dataCopy = data;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_701];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__IXAppInstallCoordinator_IXTesting__setTestModeForIdentifierPrefix_testMode_testSpecificValidationData___block_invoke_702;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  [v10 _remote_setTestModeForIdentifierPrefix:prefixCopy testMode:mode testSpecificValidationData:dataCopy completion:v12];

  LOBYTE(mode) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return mode;
}

void __105__IXAppInstallCoordinator_IXTesting__setTestModeForIdentifierPrefix_testMode_testSpecificValidationData___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[IXAppInstallCoordinator(IXTesting) setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __105__IXAppInstallCoordinator_IXTesting__setTestModeForIdentifierPrefix_testMode_testSpecificValidationData___block_invoke_702(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[IXAppInstallCoordinator(IXTesting) setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      v5 = "%s: Got completion error: %@";
      v6 = v4;
      v7 = 22;
LABEL_6:
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[IXAppInstallCoordinator(IXTesting) setTestModeForIdentifierPrefix:testMode:testSpecificValidationData:]_block_invoke";
      v5 = "%s: Got completion";
      v6 = v4;
      v7 = 12;
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)simulateClientDeath
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v2 = +[IXServerConnection sharedConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke;
  v16[3] = &unk_1E85C5560;
  v16[4] = &v17;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_703;
  v15[3] = &unk_1E85C5DA8;
  v15[4] = &v17;
  v15[5] = &v25;
  [v3 _remote_pingDaemonWithCompletion:v15];

  if (v18[3])
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "+[IXAppInstallCoordinator(IXTesting) simulateClientDeath]";
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Simulating client death by resetting daemon connection", buf, 0xCu);
    }

    [v2 resetDaemonConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_704;
    v12[3] = &unk_1E85C5E18;
    v13 = v2;
    v14 = &v21;
    v5 = [IXServerConnection retrySynchronousIPC:v12];
    if (*(v26 + 6) == *(v22 + 6))
    {
      v6 = *(v18 + 24);
    }

    else
    {
      v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v26 + 6);
        v9 = *(v22 + 6);
        *buf = 136315650;
        v30 = "+[IXAppInstallCoordinator(IXTesting) simulateClientDeath]";
        v31 = 1024;
        v32 = v8;
        v33 = 1024;
        v34 = v9;
        _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Daemon died when we reset our connection to it (%d != %d)", buf, 0x18u);
      }

      v6 = 0;
      *(v18 + 24) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[IXAppInstallCoordinator(IXTesting) simulateClientDeath]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Ping got error %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_703(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "+[IXAppInstallCoordinator(IXTesting) simulateClientDeath]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Ping got completion error %@", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_704(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_2;
  v8[3] = &unk_1E85C5560;
  v8[4] = &v9;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_705;
  v7[3] = &unk_1E85C5DA8;
  v4 = *(a1 + 40);
  v7[4] = &v9;
  v7[5] = v4;
  [v3 _remote_pingDaemonWithCompletion:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[IXAppInstallCoordinator(IXTesting) simulateClientDeath]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Ping got error %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __57__IXAppInstallCoordinator_IXTesting__simulateClientDeath__block_invoke_705(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[IXAppInstallCoordinator(IXTesting) simulateClientDeath]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Ping got completion error %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)associateMultiPersonaAppsWithBundleIDs:(id)ds withPersona:(id)persona withError:(id *)error
{
  dsCopy = ds;
  personaCopy = persona;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke;
  v24[3] = &unk_1E85C53F8;
  v24[4] = &v25;
  v24[5] = &v31;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke_1;
  v19 = &unk_1E85C6260;
  v11 = dsCopy;
  v20 = v11;
  v12 = personaCopy;
  v21 = v12;
  v22 = &v25;
  v23 = &v31;
  [v10 _remote_associateMultiPersonaAppsWithBundleIDs:v11 withPersona:v12 completion:&v16];

  if (*(v32 + 24) == 1)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace acquireDatabase];
  }

  else if (error)
  {
    *error = v26[5];
  }

  v14 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke_1(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke_1_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
}

+ (BOOL)addBundleIDs:(id)ds toMappingsForPersona:(id)persona error:(id *)error
{
  dsCopy = ds;
  personaCopy = persona;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke;
  v24[3] = &unk_1E85C53F8;
  v24[4] = &v25;
  v24[5] = &v31;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke_4;
  v19 = &unk_1E85C6260;
  v11 = dsCopy;
  v20 = v11;
  v12 = personaCopy;
  v21 = v12;
  v22 = &v25;
  v23 = &v31;
  [v10 _remote_addBundleIDs:v11 toMappingsForPersona:v12 completion:&v16];

  if (*(v32 + 24) == 1)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace acquireDatabase];
  }

  else if (error)
  {
    *error = v26[5];
  }

  v14 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke_4_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
}

+ (BOOL)removeBundleIDs:(id)ds fromMappingsForPersona:(id)persona error:(id *)error
{
  dsCopy = ds;
  personaCopy = persona;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke;
  v24[3] = &unk_1E85C53F8;
  v24[4] = &v25;
  v24[5] = &v31;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke_5;
  v19 = &unk_1E85C6260;
  v11 = dsCopy;
  v20 = v11;
  v12 = personaCopy;
  v21 = v12;
  v22 = &v25;
  v23 = &v31;
  [v10 _remote_removeBundleIDs:v11 fromMappingsForPersona:v12 completion:&v16];

  if (*(v32 + 24) == 1)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace acquireDatabase];
  }

  else if (error)
  {
    *error = v26[5];
  }

  v14 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

void __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke_5_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
}

+ (BOOL)registerContentsForDiskImageAtURL:(id)l options:(id)options withError:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke;
  v18[3] = &unk_1E85C53F8;
  v18[4] = &v19;
  v18[5] = &v25;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke_1;
  v14[3] = &unk_1E85C58F8;
  v11 = lCopy;
  v15 = v11;
  v16 = &v19;
  v17 = &v25;
  [v10 _remote_registerContentsForDiskImageAtURL:v11 options:optionsCopy completion:v14];

  v12 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v20[5];
    v12 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

void __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke_1(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke_1_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

+ (BOOL)unregisterContentsForDiskImageAtURL:(id)l options:(id)options withError:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v9 = +[IXServerConnection sharedConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke;
  v18[3] = &unk_1E85C53F8;
  v18[4] = &v19;
  v18[5] = &v25;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke_3;
  v14[3] = &unk_1E85C58F8;
  v11 = lCopy;
  v15 = v11;
  v16 = &v19;
  v17 = &v25;
  [v10 _remote_unregisterContentsForDiskImageAtURL:v11 options:optionsCopy completion:v14];

  v12 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v20[5];
    v12 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12 & 1;
}

void __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke_3_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

+ (id)_coordinatorForIdentity:(id)identity created:(BOOL *)created error:(id *)error
{
  identityCopy = identity;
  v8 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleID = [identityCopy bundleID];
  v10 = [v8 initWithBundleIdentifier:bundleID allowPlaceholder:0 error:0];

  if (v10 && ([v10 isPlaceholder] & 1) == 0)
  {
    v11 = IXUpdatingAppInstallCoordinator;
    v18 = 0;
    v12 = &v18;
    v13 = &v18;
  }

  else
  {
    v11 = IXInitiatingAppInstallCoordinator;
    v17 = 0;
    v12 = &v17;
    v13 = &v17;
  }

  v14 = [(__objc2_class *)v11 processScopedCoordinatorForAppWithIdentity:identityCopy withClientID:12 createIfNotExisting:1 created:created error:v13, v17, v18];
  v15 = *v12;
  if (error && !v14)
  {
    v15 = v15;
    *error = v15;
  }

  return v14;
}

void __136__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 bundleID];
  (*(v4 + 16))(v4, v6, v5);
}

+ (id)_temporaryStagingLocationForInstallLocation:(id)location withSandboxExtensionHandle:(int64_t *)handle error:(id *)error
{
  v23 = 0;
  v24 = 0;
  v7 = [self stagingLocationForInstallLocation:location withSandboxExtension:&v24 error:&v23];
  v8 = v24;
  v9 = v23;
  if (v7)
  {
    v10 = +[IXFileManager defaultManager];
    v22 = v9;
    v11 = [v10 consumeSandboxExtension:v8 error:&v22];
    v12 = v22;

    if (v11 < 0)
    {
      v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[IXAppInstallCoordinator(IXSimpleInstaller) _temporaryStagingLocationForInstallLocation:withSandboxExtensionHandle:error:];
      }

      path = [v7 path];
      v9 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _temporaryStagingLocationForInstallLocation:withSandboxExtensionHandle:error:]", 240, @"IXErrorDomain", 1uLL, v12, 0, @"Failed to get access to the temporary staging location at %@", v18, path);

LABEL_11:
      v13 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v13 = [v7 URLByAppendingPathComponent:@"Extracted" isDirectory:1];
    v14 = +[IXFileManager defaultManager];
    v21 = v12;
    v15 = [v14 createDirectoryAtURL:v7 withIntermediateDirectories:0 mode:511 error:&v21];
    v9 = v21;

    v12 = v13;
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
    v11 = -1;
  }

  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v13)
  {
    v19 = v9;
    *error = v9;
    goto LABEL_17;
  }

LABEL_14:
  if (handle && v13)
  {
    *handle = v11;
  }

LABEL_17:

  return v13;
}

+ (void)_beginInstallForURL:(id)l forPersonaUniqueString:(id)string consumeSource:(BOOL)source options:(id)options progressBlock:(id)block completionWithIdentity:(id)identity
{
  sourceCopy = source;
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  stringCopy = string;
  optionsCopy = options;
  blockCopy = block;
  identityCopy = identity;
  if (sAppInstallCoordinatorQueueOnce != -1)
  {
    +[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:];
  }

  v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    v21 = path;
    *buf = 136315906;
    v39 = "+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]";
    v40 = 2112;
    if (sourceCopy)
    {
      v22 = 89;
    }

    else
    {
      v22 = 78;
    }

    v41 = path;
    v42 = 1024;
    v43 = v22;
    v44 = 2112;
    v45 = optionsCopy;
    _os_log_impl(&dword_1DA47A000, v19, OS_LOG_TYPE_DEFAULT, "%s: Beginning install for %@ consuming source:%c options:%@", buf, 0x26u);
  }

  v23 = sAppInstallCoordinatorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126;
  block[3] = &unk_1E85C6438;
  v31 = lCopy;
  v32 = stringCopy;
  v37 = sourceCopy;
  v33 = optionsCopy;
  v34 = identityCopy;
  v35 = blockCopy;
  selfCopy = self;
  v24 = blockCopy;
  v25 = optionsCopy;
  v26 = identityCopy;
  v27 = stringCopy;
  v28 = lCopy;
  dispatch_async(v23, block);

  v29 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke()
{
  v0 = objc_opt_new();
  v1 = sOutstandingDelegates;
  sOutstandingDelegates = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.installcoordination.simple_install_coordinator", v4);
  v3 = sAppInstallCoordinatorQueue;
  sAppInstallCoordinatorQueue = v2;
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126(uint64_t a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v110 = 0;
  v2 = +[IXFileManager defaultManager];
  v109 = 1;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__8;
  v107 = __Block_byref_object_dispose__8;
  v108 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = -1;
  v75 = *(a1 + 32);
  v74 = *(a1 + 40);
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127;
  v92[3] = &unk_1E85C6410;
  v98 = *(a1 + 80);
  v3 = v2;
  v93 = v3;
  v94 = *(a1 + 32);
  v96 = &v103;
  v97 = &v99;
  v95 = *(a1 + 56);
  v77 = MEMORY[0x1DA74F400](v92);
  v4 = objc_opt_new();
  if (!v4)
  {
    v72 = 0;
    v73 = 0;
    v76 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_15:
    v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) path];
      __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_6(v19, buf, v18);
    }

    v20 = [*(a1 + 32) path];
    v17 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 525, @"IXErrorDomain", 1uLL, 0, 0, @"An unknown error occured while installing %@", v21, v20);

    goto LABEL_18;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v76 = v5;
    if ([v76 installTargetType] != 1)
    {
      v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_1();
      }

      v8 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 366, @"IXErrorDomain", 4uLL, 0, 0, @"This SPI can only install apps", v7, v69);
      goto LABEL_12;
    }
  }

  else
  {
    v76 = objc_opt_new();
    [v76 setInstallTargetType:1];
  }

  v13 = *(a1 + 32);
  v91 = 0;
  v14 = [v3 itemExistsAtURL:v13 isDirectory:&v109 error:&v91];
  v15 = v91;
  v8 = v15;
  if (!v14)
  {
LABEL_12:
    v12 = 0;
    v11 = 0;
LABEL_13:
    v10 = 0;
    v9 = 0;
    v72 = 0;
    v73 = 0;
    goto LABEL_14;
  }

  if (v109)
  {
    v16 = v15;
  }

  else
  {
    v29 = *(a1 + 72);
    v90 = v8;
    v30 = [v29 _temporaryStagingLocationForInstallLocation:v4 withSandboxExtensionHandle:v100 + 3 error:&v90];
    v31 = v90;

    v32 = v104[5];
    v104[5] = v30;

    v33 = v104[5];
    if (!v33)
    {
      v51 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_2();
      }

      v8 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 382, @"IXErrorDomain", 1uLL, v31, 0, @"Failed to create temporary staging directory for installation", v52, v69);
      v11 = 0;
      v9 = 0;
      v72 = 0;
      v73 = 0;
      goto LABEL_61;
    }

    v34 = *(a1 + 32);
    v89 = v31;
    v35 = [MEMORY[0x1E69B1980] extractZipArchiveAtURL:v34 toURL:v33 withError:&v89];
    v16 = v89;

    if ((v35 & 1) == 0)
    {
      v53 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v65 = [*(a1 + 32) path];
        v66 = [v104[5] path];
        *buf = 136315906;
        v113 = "+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke";
        v114 = 2112;
        v115 = v65;
        v116 = 2112;
        v117 = v66;
        v118 = 2112;
        v119 = v16;
        _os_log_error_impl(&dword_1DA47A000, v53, OS_LOG_TYPE_ERROR, "%s: Failed to extract %@ to %@ : %@", buf, 0x2Au);
      }

      v45 = [*(a1 + 32) path];
      v71 = [v104[5] path];
      v8 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 387, @"IXErrorDomain", 0x2AuLL, v16, 0, @"Failed to extract %@ to %@", v54, v45);

      v11 = 0;
      v9 = 0;
      v72 = 0;
      v73 = 0;
      goto LABEL_60;
    }

    v36 = v104[5];

    v37 = [v104[5] URLByDeletingLastPathComponent];
    v38 = v104[5];
    v104[5] = v37;

    v75 = v36;
  }

  v39 = [v76 iTunesMetadata];
  v88 = v16;
  v11 = [IXPlaceholder placeholderForInstallable:v75 client:12 installType:1 metadata:v39 location:v4 error:&v88];
  v8 = v88;

  if (!v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v73 = [v11 bundleID];
  v40 = v74;
  if (!v74)
  {
    v40 = @"PersonalPersonaPlaceholderString";
  }

  v74 = v40;
  v72 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v73 personaUniqueString:v40 location:v4];
  v41 = [IXPromisedTransferToPath alloc];
  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"App Asset: %@"];
  v87 = v8;
  v9 = [(IXPromisedTransferToPath *)v41 initWithName:v42 client:12 transferPath:v75 diskSpaceNeeded:0 location:v4 error:&v87];
  v43 = v87;

  if (!v9)
  {
    v12 = 0;
    v10 = 0;
    v8 = v43;
    goto LABEL_14;
  }

  if ((*(a1 + 80) & 1) == 0 && !v104[5])
  {
    [(IXPromisedTransferToPath *)v9 setShouldCopy:1];
  }

  v44 = *(a1 + 72);
  v86 = v43;
  v10 = [v44 _coordinatorForIdentity:v72 created:&v110 error:&v86];
  v8 = v86;

  if (!v10)
  {
    v12 = 0;
    goto LABEL_14;
  }

  if (v110)
  {
    v12 = v10;
    v45 = v8;
    goto LABEL_46;
  }

  if ([v10 creatorIdentifier] != 12)
  {

    v60 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_3();
    }

    _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 459, @"IXErrorDomain", 0x1DuLL, 0, 0, @"A coordinated install for %@ (not initiated by IXClientSimpleSPI) is already pending.", v61, v73);
    v8 = v31 = v8;
    goto LABEL_61;
  }

  v55 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v113 = "+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke";
    v114 = 2112;
    v115 = v73;
    _os_log_impl(&dword_1DA47A000, v55, OS_LOG_TYPE_DEFAULT, "%s: A coordinated install for %@ is already pending. Trying to cancel the existing one to create a new one.", buf, 0x16u);
  }

  v16 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 437, @"IXErrorDomain", 0x20uLL, 0, 0, @"IXSimpleInstaller canceling existing coordinator", v56, v73);
  v85 = v8;
  v57 = [v10 cancelForReason:v16 client:12 error:&v85];
  v45 = v85;

  if (!v57)
  {

    v62 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_4();
    }

    v64 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 454, @"IXErrorDomain", 0x1DuLL, 0, 0, @"Failed to cancel an already existing coordinator.", v63, v70);
    goto LABEL_84;
  }

  v110 = 0;
  v58 = *(a1 + 72);
  v59 = v45;
  v84 = v45;
  v12 = [v58 _coordinatorForIdentity:v72 created:&v110 error:&v84];
  v45 = v84;

  if (!v12)
  {
    v31 = v16;
    v8 = v45;
    goto LABEL_61;
  }

  if ((v110 & 1) == 0)
  {

    v67 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_5();
    }

    v64 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke", 449, @"IXErrorDomain", 0x1DuLL, 0, 0, @"Failed to re-create a coordinator for %@.", v68, v73);
LABEL_84:
    v8 = v64;
LABEL_60:

    v31 = v16;
LABEL_61:

    v12 = 0;
    v10 = 0;
    goto LABEL_14;
  }

LABEL_46:
  v10 = objc_opt_new();
  [v10 setBundleID:v73];
  [v10 setCoordinator:v12];
  [v10 setCompletion:v77];
  [v10 setProgressBlock:*(a1 + 64)];
  [v12 setObserver:v10];
  if (![v76 isUserInitiated] || (v83 = v45, v46 = objc_msgSend(v12, "setImportance:error:", 3, &v83), v8 = v83, v45, v45 = v8, v46))
  {
    v82 = v45;
    v47 = [v12 setInstallOptions:v76 error:&v82];
    v8 = v82;

    if (v47)
    {
      v81 = v8;
      v48 = [v12 setAppAssetPromise:v9 error:&v81];
      v17 = v81;

      if (v48)
      {
        v80 = v17;
        v49 = [v12 setInitialODRAssetPromises:MEMORY[0x1E695E0F0] error:&v80];
        v8 = v80;

        if (!v49)
        {
          goto LABEL_75;
        }

        [(IXPromisedTransferToPath *)v9 setComplete:1];
        v79 = v8;
        v50 = [v12 setPlaceholderPromise:v11 error:&v79];
        v17 = v79;

        if (v50)
        {
          _AddDelegateToMap(v10);
          goto LABEL_32;
        }
      }

      v8 = v17;
    }
  }

LABEL_75:
  if (v10)
  {
    [v10 setCompletion:0];
  }

LABEL_14:
  v17 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v12)
  {
    [v12 setObserver:0];
    [v12 cancelForReason:v17 client:12 error:0];
  }

  if (v11)
  {
    [v11 cancelForReason:v17 client:12 error:0];
  }

  if (v9)
  {
    [(IXDataPromise *)v9 cancelForReason:v17 client:12 error:0];
  }

  v22 = v104[5];
  if (v22)
  {
    v78 = 0;
    v23 = [v3 removeItemAtURL:v22 error:&v78];
    v24 = v78;
    if ((v23 & 1) == 0)
    {
      v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v104[5] path];
        __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_7(v26, v24, v111, v25);
      }
    }

    v27 = v104[5];
    v104[5] = 0;
  }

  if (*(a1 + 56))
  {
    (v77)[2](v77, 0, v17);
  }

LABEL_32:

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);

  v28 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 72) == 1)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v26 = 0;
    v9 = [v8 removeItemAtURL:v7 error:&v26];
    v10 = v26;
    if ((v9 & 1) == 0)
    {
      v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127_cold_1();
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(*(*(a1 + 56) + 8) + 40);
  if (v12)
  {
    v13 = *(*(*(a1 + 64) + 8) + 24);
    if (v13 != -1)
    {
      v14 = *(a1 + 32);
      v25 = 0;
      v15 = [v14 releaseSandboxExtensionToken:v13 error:&v25];
      v16 = v25;
      if ((v15 & 1) == 0)
      {
        v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127_cold_2();
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = -1;

      v12 = *(*(*(a1 + 56) + 8) + 40);
    }

    v18 = *(a1 + 32);
    v24 = v10;
    v19 = [v18 removeItemAtURL:v12 error:&v24];
    v20 = v24;

    if ((v19 & 1) == 0)
    {
      v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127_cold_3();
      }
    }

    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;
  }

  else
  {
    v20 = v10;
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)installApplication:(id)application toURL:(id)l consumeSource:(BOOL)source options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toURL:consumeSource:options:completion:];
  }

  v10 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toURL:consumeSource:options:completion:]", 574, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is not supported on this platform.", v9, "+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toURL:consumeSource:options:completion:]");
  if (completionCopy)
  {
    v11 = sAppInstallCoordinatorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__IXAppInstallCoordinator_IXSimpleInstaller__installApplication_toURL_consumeSource_options_completion___block_invoke;
    block[3] = &unk_1E85C5448;
    v14 = completionCopy;
    v13 = v10;
    dispatch_async(v11, block);
  }
}

+ (void)installApplication:(id)application toTargetDirectory:(id)directory consumeSource:(BOOL)source options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toTargetDirectory:consumeSource:options:completion:];
  }

  v10 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toTargetDirectory:consumeSource:options:completion:]", 588, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is not supported on this platform.", v9, "+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toTargetDirectory:consumeSource:options:completion:]");
  if (completionCopy)
  {
    v11 = sAppInstallCoordinatorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__IXAppInstallCoordinator_IXSimpleInstaller__installApplication_toTargetDirectory_consumeSource_options_completion___block_invoke;
    block[3] = &unk_1E85C5448;
    v14 = completionCopy;
    v13 = v10;
    dispatch_async(v11, block);
  }
}

+ (void)installApplication:(id)application toURL:(id)l consumeSource:(BOOL)source shouldOverrideGatekeeper:(BOOL)gatekeeper options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toURL:consumeSource:shouldOverrideGatekeeper:options:completion:];
  }

  v11 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toURL:consumeSource:shouldOverrideGatekeeper:options:completion:]", 602, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is not supported on this platform.", v10, "+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toURL:consumeSource:shouldOverrideGatekeeper:options:completion:]");
  if (completionCopy)
  {
    v12 = sAppInstallCoordinatorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__IXAppInstallCoordinator_IXSimpleInstaller__installApplication_toURL_consumeSource_shouldOverrideGatekeeper_options_completion___block_invoke;
    block[3] = &unk_1E85C5448;
    v15 = completionCopy;
    v14 = v11;
    dispatch_async(v12, block);
  }
}

+ (void)installApplication:(id)application toTargetDirectory:(id)directory consumeSource:(BOOL)source shouldOverrideGatekeeper:(BOOL)gatekeeper options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toTargetDirectory:consumeSource:shouldOverrideGatekeeper:options:completion:];
  }

  v11 = _CreateError("+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toTargetDirectory:consumeSource:shouldOverrideGatekeeper:options:completion:]", 616, @"IXErrorDomain", 0x22uLL, 0, 0, @"%s is not supported on this platform.", v10, "+[IXAppInstallCoordinator(IXSimpleInstaller) installApplication:toTargetDirectory:consumeSource:shouldOverrideGatekeeper:options:completion:]");
  if (completionCopy)
  {
    v12 = sAppInstallCoordinatorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __141__IXAppInstallCoordinator_IXSimpleInstaller__installApplication_toTargetDirectory_consumeSource_shouldOverrideGatekeeper_options_completion___block_invoke;
    block[3] = &unk_1E85C5448;
    v15 = completionCopy;
    v14 = v11;
    dispatch_async(v12, block);
  }
}

void __125__IXAppInstallCoordinator_IXSimpleInstallerPrivate__installApplication_consumeSource_options_legacyProgressBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v6;
      v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
      v29 = 0;
      v30[0] = &v29;
      v30[1] = 0x3032000000;
      v30[2] = __Block_byref_object_copy__8;
      v30[3] = __Block_byref_object_dispose__8;
      v31 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v26 = ___CreateLegacyCallbackErrorDict_block_invoke;
      v27 = &unk_1E85C6488;
      v28 = &v29;
      v11 = v9;
      v12 = *MEMORY[0x1E696AA08];
      v13 = v11;
      do
      {
        if (!v26(v25, v13))
        {
          break;
        }

        v14 = [v13 userInfo];
        v15 = [v14 objectForKeyedSubscript:v12];

        v13 = v15;
      }

      while (v15);

      v16 = *(v30[0] + 40);
      if (v16)
      {
        v17 = [v16 userInfo];
        v18 = [v17 objectForKeyedSubscript:@"LegacyErrorString"];

        v19 = v18;
        if (!v18)
        {
          v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __125__IXAppInstallCoordinator_IXSimpleInstallerPrivate__installApplication_consumeSource_options_legacyProgressBlock_completion___block_invoke_cold_1(v30, v20);
          }

          v19 = @"APIInternalError";
        }

        [v10 setObject:v19 forKeyedSubscript:@"Error"];
        v21 = [*(v30[0] + 40) userInfo];
        v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69A8D08]];

        if (v22)
        {
          [v10 setObject:v22 forKeyedSubscript:@"ErrorDetail"];
        }

        v23 = [*(v30[0] + 40) userInfo];
        v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

        if (v24)
        {
          [v10 setObject:v24 forKeyedSubscript:@"ErrorDescription"];
        }
      }

      else
      {
        [v10 setObject:@"APIInternalError" forKeyedSubscript:@"Error"];
        v18 = [v11 description];
        [v10 setObject:v18 forKeyedSubscript:@"ErrorDescription"];
      }

      _Block_object_dispose(&v29, 8);
      (*(v8 + 16))(v8, v10);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)registerContentsForOSModuleAtURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  if (optionsCopy)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[IXAppInstallCoordinator(IXOSModuleRegistration) registerContentsForOSModuleAtURL:options:error:];
    }

    v11 = _CreateError("+[IXAppInstallCoordinator(IXOSModuleRegistration) registerContentsForOSModuleAtURL:options:error:]", 29, @"IXErrorDomain", 0x35uLL, 0, 0, @"The options parameter passed to %s must be nil.", v10, "+[IXAppInstallCoordinator(IXOSModuleRegistration) registerContentsForOSModuleAtURL:options:error:]");
    v12 = v23[5];
    v23[5] = v11;
  }

  else
  {
    v13 = +[IXServerConnection sharedConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke;
    v21[3] = &unk_1E85C53F8;
    v21[4] = &v22;
    v21[5] = &v28;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v21];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke_2;
    v17[3] = &unk_1E85C58F8;
    v18 = lCopy;
    v19 = &v22;
    v20 = &v28;
    [v14 _remote_registerContentForOSModuleAtURL:v18 options:0 completion:v17];

    v12 = v18;
  }

  v15 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v15 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v15 & 1;
}

void __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke_2_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

+ (id)unregisterContentsForOSModuleAtURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__10;
  v38 = __Block_byref_object_dispose__10;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  if (optionsCopy)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[IXAppInstallCoordinator(IXOSModuleRegistration) unregisterContentsForOSModuleAtURL:options:error:];
    }

    v11 = _CreateError("+[IXAppInstallCoordinator(IXOSModuleRegistration) unregisterContentsForOSModuleAtURL:options:error:]", 81, @"IXErrorDomain", 0x35uLL, 0, 0, @"The options parameter passed to %s must be nil.", v10, "+[IXAppInstallCoordinator(IXOSModuleRegistration) unregisterContentsForOSModuleAtURL:options:error:]");
    v12 = 0;
    v13 = v29[5];
    v29[5] = v11;
    goto LABEL_7;
  }

  v12 = [[IXUnregisterOSModuleToken alloc] initWithModuleURL:lCopy options:0];
  v14 = (v29 + 5);
  obj = v29[5];
  v15 = [(IXUnregisterOSModuleToken *)v12 acquireTerminationAssertionsWithError:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = +[IXServerConnection sharedConnection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke;
    v26[3] = &unk_1E85C5560;
    v26[4] = &v28;
    v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke_5;
    v21[3] = &unk_1E85C6550;
    v24 = &v34;
    v12 = v12;
    v22 = v12;
    v23 = lCopy;
    v25 = &v28;
    [v17 _remote_unregisterContentForOSModuleAtURL:v23 options:0 completion:v21];

    v13 = v22;
LABEL_7:
  }

  v18 = v35[5];
  if (error && !v18)
  {
    *error = v29[5];
    v18 = v35[5];
  }

  if (!v18 && v12)
  {
    [(IXUnregisterOSModuleToken *)v12 invalidate];
    v18 = v35[5];
  }

  v19 = v18;
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v19;
}

void __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) path];
      v12 = 136315394;
      v13 = "+[IXAppInstallCoordinator(IXOSModuleRegistration) unregisterContentsForOSModuleAtURL:options:error:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_INFO, "%s: Successfully unregistered contents for OSModule at %@", &v12, 0x16u);
    }
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke_5_cold_1(a1);
    }

    v9 = *(*(a1 + 56) + 8);
    v10 = v5;
    v6 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)setKnownOSModuleURLs:(id)ls options:(id)options error:(id *)error
{
  lsCopy = ls;
  optionsCopy = options;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  if (optionsCopy)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[IXAppInstallCoordinator(IXOSModuleRegistration) setKnownOSModuleURLs:options:error:];
    }

    v11 = _CreateError("+[IXAppInstallCoordinator(IXOSModuleRegistration) setKnownOSModuleURLs:options:error:]", 145, @"IXErrorDomain", 0x35uLL, 0, 0, @"The options parameter passed to %s must be nil.", v10, "+[IXAppInstallCoordinator(IXOSModuleRegistration) setKnownOSModuleURLs:options:error:]");
    v12 = v23[5];
    v23[5] = v11;
  }

  else
  {
    v13 = +[IXServerConnection sharedConnection];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke;
    v21[3] = &unk_1E85C53F8;
    v21[4] = &v22;
    v21[5] = &v28;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v21];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke_6;
    v17[3] = &unk_1E85C58F8;
    v18 = lsCopy;
    v19 = &v22;
    v20 = &v28;
    [v14 _remote_setKnownOSModuleURLs:v18 options:0 completion:v17];

    v12 = v18;
  }

  v15 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v15 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v15 & 1;
}

void __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke_6(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke_6_cold_1(a1, v6, v7);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

+ (void)_demoteAppToPlaceholderWithApplicationIdentity:(id)identity forReason:(unint64_t)reason waitForDeletion:(BOOL)deletion ignoreRemovability:(BOOL)removability returnEarlyForTesting:(BOOL)testing completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  if (sAppInstallCoordinatorQueueOnce_0 != -1)
  {
    +[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:];
  }

  if (reason - 1 >= 3)
  {
    v20 = sAppInstallCoordinatorQueue_0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2;
    block[3] = &unk_1E85C6848;
    v17 = v30;
    v30[0] = completionCopy;
    v30[1] = reason;
    v21 = completionCopy;
    dispatch_async(v20, block);
  }

  else
  {
    v15 = reason + 6;
    v16 = sAppInstallCoordinatorQueue_0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101;
    v22[3] = &unk_1E85C6870;
    deletionCopy = deletion;
    v17 = &v23;
    v18 = identityCopy;
    testingCopy = testing;
    v23 = v18;
    v24 = completionCopy;
    removabilityCopy = removability;
    v25 = v15;
    v19 = completionCopy;
    dispatch_async(v16, v22);
  }
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke()
{
  v0 = objc_opt_new();
  v1 = sOutstandingDelegates_0;
  sOutstandingDelegates_0 = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.installcoordination.downgrade_to_placeholder_coordinator", v4);
  v3 = sAppInstallCoordinatorQueue_0;
  sAppInstallCoordinatorQueue_0 = v2;
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2(uint64_t a1)
{
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_cold_1(a1);
  }

  v4 = _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 108, @"IXErrorDomain", 4uLL, 0, 0, @"Invalid IXAppInstallCoordinatorDemotionReason %lu passed to %s", v3, *(a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v2 = objc_opt_new();
  [v2 setWaitForDeletion:*(a1 + 56)];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v55 = 0;
  v5 = [(IXAppInstallCoordinator *)IXDemotingAppInstallCoordinator processScopedCoordinatorForAppWithIdentity:v3 withClientID:12 createIfNotExisting:1 created:&v56 error:&v55];
  v6 = v55;
  if (!v5)
  {
    goto LABEL_32;
  }

  if ((v56 & 1) == 0)
  {

    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_1((a1 + 32));
    }

    v17 = _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 140, @"IXErrorDomain", 0x1DuLL, 0, 0, @"A demotion for %@ is already pending.", v16, *v4);

    v5 = 0;
    goto LABEL_42;
  }

  if (IXBuildHasInternalDiagnostics() && *(a1 + 57) == 1)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_6();
    }

    v9 = _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 147, @"IXErrorDomain", 0x36uLL, 0, 0, @"Triggered early return intended for testing.", v8, v45);

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_53;
  }

  v54 = v6;
  v18 = [v5 setImportance:3 error:&v54];
  v17 = v54;

  if (!v18)
  {
    goto LABEL_42;
  }

  if (*(a1 + 58))
  {
    v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *v4;
      *buf = 136315394;
      v58 = "+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke";
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_1DA47A000, v19, OS_LOG_TYPE_DEFAULT, "%s: Client requested to ignore removability while demoting %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v21 = *v4;
  v53 = v17;
  v22 = [IXAppInstallCoordinator removabilityForAppWithIdentity:v21 error:&v53];
  v6 = v53;

  if (v22 != 1)
  {
    if (!v22)
    {
      v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *v4;
        *buf = 136315650;
        v58 = "+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke";
        v59 = 2112;
        v60 = v24;
        v61 = 2112;
        v62 = v6;
        _os_log_impl(&dword_1DA47A000, v23, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch removability for app with identity %@: %@", buf, 0x20u);
      }

      goto LABEL_32;
    }

    v36 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_2((a1 + 32), v22, v36);
    }

    v37 = *v4;
    v46 = IXStringForAppRemovability(v22);
    v17 = _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 166, @"IXErrorDomain", 0x25uLL, 0, 0, @"Cannot demote app with identity %@ because removability is %@", v38, v37);

LABEL_42:
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v6 = v17;
    goto LABEL_43;
  }

  v17 = v6;
LABEL_24:
  v25 = objc_alloc(MEMORY[0x1E69635F8]);
  v26 = [*v4 bundleID];
  v52 = v17;
  v13 = [v25 initWithBundleIdentifier:v26 allowPlaceholder:1 error:&v52];
  v27 = v52;

  if (v13)
  {
    if ([v13 isPlaceholder])
    {
      v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_4((a1 + 32));
      }

      _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 180, @"IXErrorDomain", 4uLL, 0, 0, @"Cannot demote app with identity %@ because it is a placeholder", v29, *v4);
    }

    else
    {
      v32 = [v13 URL];
      if (v32)
      {
        v12 = v32;
        v33 = *(a1 + 48);
        v51 = v27;
        v11 = [IXPlaceholder placeholderForInstallable:v32 client:12 installType:v33 metadata:0 error:&v51];
        v6 = v51;

        if (v11)
        {
          v14 = objc_opt_new();
          v34 = [*v4 bundleID];
          [v14 setBundleID:v34];

          [v14 setCoordinator:v5];
          [v5 setObserver:v14];
          v50 = v6;
          v47 = [v5 setInstallOptions:v2 error:&v50];
          v9 = v50;

          if (v47)
          {
            v35 = v9;
            v49 = v9;
            v48 = [v5 setPlaceholderPromise:v11 error:&v49];
            v9 = v49;

            if (v48)
            {
              _AddDelegateToMap_0(v14);
              [v14 setCompletion:*(a1 + 40)];
              goto LABEL_53;
            }
          }

          v6 = v9;
          if (v14)
          {
            [v14 setCompletion:0];
          }
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_43;
      }

      v43 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_3((a1 + 32));
      }

      _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 186, @"IXErrorDomain", 4uLL, 0, 0, @"LSApplicationProxy for %@ did not contain a bundleURL during demotion", v44, *v4);
    }
    v6 = ;

    v14 = 0;
    goto LABEL_33;
  }

  v30 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_5((a1 + 32));
  }

  v6 = _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 175, @"IXErrorDomain", 1uLL, v27, 0, @"No LSApplicationRecord found for %@ during demotion", v31, *v4);

LABEL_32:
  v14 = 0;
  v13 = 0;
LABEL_33:
  v12 = 0;
  v11 = 0;
LABEL_43:
  v9 = v6;
  if (!v6)
  {
    v39 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_7((a1 + 32));
    }

    v9 = _CreateError("+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke", 222, @"IXErrorDomain", 1uLL, 0, 0, @"An unknown error occured while demoting %@", v40, *v4);
  }

  if (v5)
  {
    [v5 setObserver:0];
    [v5 cancelForReason:v9 client:12 error:0];
  }

  if (v11)
  {
    [v11 cancelForReason:v9 client:12 error:0];
  }

  v41 = *(a1 + 40);
  if (v41)
  {
    (*(v41 + 16))(v41, v9);
  }

LABEL_53:

  v42 = *MEMORY[0x1E69E9840];
}

void __147__IXAppInstallCoordinator_IXDemoteToPlaceholder__demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)testReturnEarlyDemoteAppToPlaceholderWithApplicationIdentity:(id)identity forReason:(unint64_t)reason error:(id *)error
{
  identityCopy = identity;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __134__IXAppInstallCoordinator_IXDemoteToPlaceholderTesting__testReturnEarlyDemoteAppToPlaceholderWithApplicationIdentity_forReason_error___block_invoke;
  v14[3] = &unk_1E85C6898;
  v16 = &v18;
  v17 = &v24;
  v10 = v9;
  v15 = v10;
  v11 = MEMORY[0x1DA74F400](v14);
  [self _demoteAppToPlaceholderWithApplicationIdentity:identityCopy forReason:reason waitForDeletion:0 ignoreRemovability:0 returnEarlyForTesting:1 completion:v11];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = v19[5];
    v12 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

void __134__IXAppInstallCoordinator_IXDemoteToPlaceholderTesting__testReturnEarlyDemoteAppToPlaceholderWithApplicationIdentity_forReason_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __72__IXAppInstallCoordinator__conveyCurrentPriorityBoostReplacingExisting___block_invoke_7_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v7[0] = 136315650;
  OUTLINED_FUNCTION_11();
  v8 = v2;
  v9 = v3;
  v10 = v4;
  _os_log_debug_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEBUG, "%s: Completion block called in client for priority boost conveyance for coordinator UUID %@ : %@", v7, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v5 = v0;
  v6 = v1;
  _os_log_fault_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_FAULT, "%s: Warning: client is attempting to create a promoting coordinator for %@, which is not currently a placeholder (%@).", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_validatePreconditionForIntent:matchesCurrentInstallStateForBundleID:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_FAULT, "%s: Warning: client is attempting to create a promoting coordinator for %@, which is not currently installed at all.", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_validatePreconditionForIntent:(unint64_t)a1 matchesCurrentInstallStateForBundleID:(NSObject *)a2 .cold.3(unint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _StringForIXCoordinatorIntent(a1);
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_FAULT, "%s: Unknown intent: %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_coordinatorForAppWithIdentity:(_DWORD *)a3 targetingInstallationDomain:withClientID:intent:createIfNotExisting:requireMatchingIntent:scopeRequirement:created:error:.cold.1(void *a1, void *a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_5_0(a1, a2, a3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Failed to find class for coordinator intent %@ for coordinator %@ : %@", v5, v6);
}

+ (void)_coordinatorForAppWithIdentity:targetingInstallationDomain:withClientID:intent:createIfNotExisting:requireMatchingIntent:scopeRequirement:created:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __179__IXAppInstallCoordinator__coordinatorForAppWithIdentity_targetingInstallationDomain_withClientID_intent_createIfNotExisting_requireMatchingIntent_scopeRequirement_created_error___block_invoke_24_cold_1(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  [a2 intent];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)coordinatorForAppWithBundleID:withClientID:createIfNotExisting:created:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)coordinatorForAppWithIdentity:targetingInstallationDomain:withClientID:createIfNotExisting:created:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)processScopedCoordinatorForAppWithIdentity:targetingInstallationDomain:withClientID:createIfNotExisting:created:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _StringForIXCoordinatorIntent([a1 intent]);
  v9 = [a1 identity];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_50_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__IXAppInstallCoordinator__asynchronouslyEnumerateCoordinatorsForIntent_usingBlock___block_invoke_4_65_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) identity];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

void __71__IXAppInstallCoordinator_uninstallAppWithIdentity_options_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __82__IXAppInstallCoordinator_revertAppWithIdentity_resultingApplicationRecord_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)updateSINFForAppWithIdentity:wrapperURL:sinfData:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)updateiTunesMetadataForAppWithIdentity:wrapperURL:plistData:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)updateiTunesMetadataForAppWithIdentity:plistData:options:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)updateiTunesMetadata:forAppWithIdentity:wrapperURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)refreshDataContainerForBundleID:(uint64_t)a1 reason:(uint64_t *)a2 error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)refreshDataContainerForBundleID:(uint64_t)a1 reason:(uint64_t *)a2 error:.cold.2(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)refreshDataContainerForBundleID:reason:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)refreshDataContainerForBundleID:reason:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __85__IXAppInstallCoordinator_refreshContainersWithOptions_forApplicationIdentity_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancelForReason:client:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancelForReason:client:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderPromise:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderPromise:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke_176_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_placeholderPromiseWithError___block_invoke_176_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke_190_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_appAssetPromiseWithError___block_invoke_190_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAppAssetPromiseResponsibleClient:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setInstallOptions:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setInstallOptions:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initialODRAssetPromisesWithError:.cold.1()
{
  OUTLINED_FUNCTION_9();
  *v1 = 136315906;
  OUTLINED_FUNCTION_1_1(v2, v1, v3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Seed object %@ should have been for an opaque data promise seed subclass but was instead for class %@ : %@", v4, v5);
}

- (void)initialODRAssetPromisesWithError:.cold.2()
{
  OUTLINED_FUNCTION_9();
  *v1 = 136315906;
  OUTLINED_FUNCTION_1_1(v2, v1, v3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Object %@ should have been for an opaque data promise subclass but was instead for class %@ : %@", v4, v5);
}

- (void)initialODRAssetPromisesWithError:.cold.3()
{
  OUTLINED_FUNCTION_13();
  *v1 = 136315906;
  OUTLINED_FUNCTION_5_0(v2, v3, v1);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Failed to initialize promise class %@ from seed %@ : %@", v4, v5);
}

void __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke_240_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __52__IXAppInstallCoordinator_userDataPromiseWithError___block_invoke_240_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke_250_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __55__IXAppInstallCoordinator_preparationPromiseWithError___block_invoke_250_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke_256_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __58__IXAppInstallCoordinator_deviceSecurityPromiseWithError___block_invoke_256_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)essentialAssetPromisesWithError:.cold.1()
{
  OUTLINED_FUNCTION_9();
  *v1 = 136315906;
  OUTLINED_FUNCTION_1_1(v2, v1, v3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Seed object %@ should have been for an opaque data promise seed subclass but was instead for class %@ : %@", v4, v5);
}

- (void)essentialAssetPromisesWithError:.cold.2()
{
  OUTLINED_FUNCTION_9();
  *v1 = 136315906;
  OUTLINED_FUNCTION_1_1(v2, v1, v3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Object %@ should have been for an opaque data promise subclass but was instead for class %@ : %@", v4, v5);
}

- (void)essentialAssetPromisesWithError:.cold.3()
{
  OUTLINED_FUNCTION_13();
  *v1 = 136315906;
  OUTLINED_FUNCTION_5_0(v2, v3, v1);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Failed to initialize promise class %@ from seed %@ : %@", v4, v5);
}

- (void)dataImportPromisesWithError:.cold.1()
{
  OUTLINED_FUNCTION_9();
  *v1 = 136315906;
  OUTLINED_FUNCTION_1_1(v2, v1, v3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Seed object %@ should have been for an opaque data promise seed subclass but was instead for class %@ : %@", v4, v5);
}

- (void)dataImportPromisesWithError:.cold.2()
{
  OUTLINED_FUNCTION_9();
  *v1 = 136315906;
  OUTLINED_FUNCTION_1_1(v2, v1, v3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Object %@ should have been for an opaque data promise subclass but was instead for class %@ : %@", v4, v5);
}

- (void)dataImportPromisesWithError:.cold.3()
{
  OUTLINED_FUNCTION_13();
  *v1 = 136315906;
  OUTLINED_FUNCTION_5_0(v2, v3, v1);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Failed to initialize promise class %@ from seed %@ : %@", v4, v5);
}

- (void)setInstallTargetDirectoryURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)installTargetDirectoryURLWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setTargetBundleURL:preservingTargetBundleNameOnUpdate:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPreserveTargetBundleNameOnUpdate:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)targetBundleURLWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setAppQuitPromise:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)appQuitPromiseWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setManagedInstallUUID:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)managedInstallUUIDWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setShouldOverrideGatekeeper:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getShouldOverrideGatekeeperValue:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Failed to contact daemon: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __113__IXAppInstallCoordinator_IXPersonaBasedMultiUser__associateMultiPersonaAppsWithBundleIDs_withPersona_withError___block_invoke_1_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = 136315906;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_1DA47A000, v3, v4, "%s: Failed to set data separated apps: %@ with persona %@ : %@", v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Failed to contact daemon: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__IXAppInstallCoordinator_IXPersonaBasedMultiUser__addBundleIDs_toMappingsForPersona_error___block_invoke_4_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = 136315906;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_1DA47A000, v3, v4, "%s: Failed to add data separated apps: %@ with persona %@ : %@", v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Failed to contact daemon: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __97__IXAppInstallCoordinator_IXPersonaBasedMultiUser__removeBundleIDs_fromMappingsForPersona_error___block_invoke_5_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = 136315906;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_1(&dword_1DA47A000, v3, v4, "%s: Failed to remove data separated apps: %@ with persona %@ : %@", v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to contact daemon: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __99__IXAppInstallCoordinator_IXDiskImageMounter__registerContentsForDiskImageAtURL_options_withError___block_invoke_1_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v2, v3, "%s: Failed to register contents on disk image at %@ : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to contact daemon: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __101__IXAppInstallCoordinator_IXDiskImageMounter__unregisterContentsForDiskImageAtURL_options_withError___block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v2, v3, "%s: Failed to unregister contents on disk image at %@ : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_6(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: An unknown error occured while installing %@ : %@", buf, 0x20u);
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_126_cold_7(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "+[IXAppInstallCoordinator(IXSimpleInstaller) _beginInstallForURL:forPersonaUniqueString:consumeSource:options:progressBlock:completionWithIdentity:]_block_invoke";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Failed to clean up staged content at %@ : %@", buf, 0x20u);
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127_cold_1()
{
  OUTLINED_FUNCTION_15();
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*v0 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v2, v3, "%s: Failed to remove installable at %@ : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127_cold_2()
{
  OUTLINED_FUNCTION_15();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_1(v1) path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v3, v4, "%s: Failed to release sandbox extension for %@: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void __148__IXAppInstallCoordinator_IXSimpleInstaller___beginInstallForURL_forPersonaUniqueString_consumeSource_options_progressBlock_completionWithIdentity___block_invoke_127_cold_3()
{
  OUTLINED_FUNCTION_15();
  v0 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_5_1(v1) path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v3, v4, "%s: Failed to remove extracted content at %@ : %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void __125__IXAppInstallCoordinator_IXSimpleInstallerPrivate__installApplication_consumeSource_options_legacyProgressBlock_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 136315394;
  v5 = "_CreateLegacyCallbackErrorDict";
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_DEBUG, "%s: Failed to get legacy error string from NSError %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __98__IXAppInstallCoordinator_IXOSModuleRegistration__registerContentsForOSModuleAtURL_options_error___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) path];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v2, v3, "%s: Failed to register contents for OSModule at %@ : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __100__IXAppInstallCoordinator_IXOSModuleRegistration__unregisterContentsForOSModuleAtURL_options_error___block_invoke_5_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) path];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_1DA47A000, v2, v3, "%s: Failed to unregister contents for OSModule at %@ : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __86__IXAppInstallCoordinator_IXOSModuleRegistration__setKnownOSModuleURLs_options_error___block_invoke_6_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 136315650;
  v6 = "+[IXAppInstallCoordinator(IXOSModuleRegistration) setKnownOSModuleURLs:options:error:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Failed to set known OSModule URLs to %@ : %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);
  v6 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_2(uint64_t *a1, unint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = IXStringForAppRemovability(a2);
  v7 = 136315906;
  v8 = "+[IXAppInstallCoordinator(IXDemoteToPlaceholder) _demoteAppToPlaceholderWithApplicationIdentity:forReason:waitForDeletion:ignoreRemovability:returnEarlyForTesting:completion:]_block_invoke";
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = 0;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Cannot demote app with identity %@ because removability is %@ : %@", &v7, 0x2Au);

  v6 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_5(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_7();
  v5 = v1;
  _os_log_error_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_ERROR, "%s: No LSApplicationRecord found for %@ during demotion : %@", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __175__IXAppInstallCoordinator_IXDemoteToPlaceholder___demoteAppToPlaceholderWithApplicationIdentity_forReason_waitForDeletion_ignoreRemovability_returnEarlyForTesting_completion___block_invoke_2_101_cold_7(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

@end