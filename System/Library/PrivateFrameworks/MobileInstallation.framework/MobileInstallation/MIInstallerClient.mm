@interface MIInstallerClient
+ (id)installerWithAppDictionaryEnumerator:(id)enumerator;
+ (id)installerWithProgressBlock:(id)block;
+ (id)installerWithProgressBlock:(id)block releaseTerminationAssertionBlock:(id)assertionBlock;
- (BOOL)clearTestFlags:(unint64_t)flags withError:(id *)error;
- (BOOL)endTestMode:(id *)mode;
- (BOOL)getTestModeEnabled:(BOOL *)enabled outError:(id *)error;
- (BOOL)setEligibilityTestOverrides:(id)overrides withError:(id *)error;
- (BOOL)setTestFlags:(unint64_t)flags withError:(id *)error;
- (BOOL)setTestMode:(id *)mode;
- (MIInstallerClient)init;
- (id)_waitForPendingDelegateMessages;
- (id)raiseException;
- (int)pidForTesting;
- (void)_invalidateObject;
- (void)acquireReferenceforInstalledAppWithIdentity:(id)identity inDomain:(unint64_t)domain matchingInstallSessionID:(id)d withCompletion:(id)completion;
- (void)addDataSeparatedAppsWithBundleIDs:(id)ds toPersona:(id)persona withCompletion:(id)completion;
- (void)allStagedUpdatesWithCompletion:(id)completion;
- (void)cancelUpdateForStagedIdentifiers:(id)identifiers completion:(id)completion;
- (void)checkCapabilities:(id)capabilities withOptions:(id)options completion:(id)completion;
- (void)clearUninstalledIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion;
- (void)cloneSerializedPlaceholderForInstalledAppWithBundeID:(id)d personaUniqueString:(id)string atResultURL:(id)l withCompletion:(id)completion;
- (void)dealloc;
- (void)delegateMessageDeliveryCompleteWithError:(id)error;
- (void)dieForTesting;
- (void)enumerateAppDictionary:(id)dictionary error:(id)error;
- (void)enumerateInstalledAppsWithOptions:(id)options completion:(id)completion;
- (void)fetchInfoForContainerizedAppWithBundleID:(id)d options:(id)options completion:(id)completion;
- (void)fetchInfoForFrameworkAtURL:(id)l options:(id)options completion:(id)completion;
- (void)finalizeReference:(id)reference withCompletion:(id)completion;
- (void)getAppMetadataForApp:(id)app completion:(id)completion;
- (void)invalidateReference:(id)reference withCompletion:(id)completion;
- (void)linkedBundleIDsForAppIdentity:(id)identity withCompletion:(id)completion;
- (void)listSafeHarborsOfType:(unint64_t)type forPersona:(id)persona withOptions:(id)options completion:(id)completion;
- (void)lookupSystemAppStateWithOptions:(id)options completion:(id)completion;
- (void)lookupUninstalledWithOptions:(id)options completion:(id)completion;
- (void)reconcileContentsOnKnownOSModules:(id)modules completion:(id)completion;
- (void)referencesForBundleWithIdentifier:(id)identifier inDomain:(unint64_t)domain withCompletion:(id)completion;
- (void)registerContentsForDiskImageAtURL:(id)l completion:(id)completion;
- (void)registerContentsOnOSModuleAtURL:(id)l completion:(id)completion;
- (void)registerPlaceholderForReference:(id)reference completion:(id)completion;
- (void)registerSafeHarborAtPath:(id)path forIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion;
- (void)releaseTerminationAssertion;
- (void)removeDataSeparatedAppsWithBundleIDs:(id)ds fromPersona:(id)persona withCompletion:(id)completion;
- (void)removeSafeHarborForIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion;
- (void)reportProgress:(id)progress;
- (void)revertForLSWithIdentifier:(id)identifier withOptions:(id)options completion:(id)completion;
- (void)revertIdentity:(id)identity withOptions:(id)options completion:(id)completion;
- (void)setDataSeparatedAppsWithBundleIDs:(id)ds withPersona:(id)persona withCompletion:(id)completion;
- (void)setLaunchWarningForApp:(id)app withUniqueInstallIdentifier:(id)identifier warningData:(id)data completion:(id)completion;
- (void)setSystemAppMigrationComplete:(id)complete;
- (void)snapshotWKAppInCompanionAppID:(id)d toURL:(id)l options:(id)options completion:(id)completion;
- (void)stageInstallURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain withOptions:(id)options completion:(id)completion;
- (void)systemAppMigratorHasCompleted:(id)completed;
- (void)uninstallIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion;
- (void)uninstallIdentity:(id)identity withOptions:(id)options completion:(id)completion;
- (void)unregisterContentsForDiskImageAtURL:(id)l completion:(id)completion;
- (void)unregisterContentsOnOSModuleAtURL:(id)l completion:(id)completion;
- (void)updatePlaceholderMetadataForApp:(id)app installType:(unint64_t)type failureReason:(unint64_t)reason underlyingError:(id)error failureSource:(unint64_t)source completion:(id)completion;
- (void)updateSinfForIXWithIdentifier:(id)identifier withOptions:(id)options sinfData:(id)data completion:(id)completion;
- (void)updateiTunesMetadataForIXWithIdentifier:(id)identifier metadata:(id)metadata completion:(id)completion;
- (void)waitForSystemAppMigratorToComplete:(id)complete;
- (void)waitForSystemAppMigratorWithCompletion:(id)completion;
@end

@implementation MIInstallerClient

- (void)_invalidateObject
{
  connection = [(MIInstallerClient *)self connection];
  [connection invalidate];

  v6 = _CreateError("[MIInstallerClient _invalidateObject]", 208, *MEMORY[0x1E69A8D00], 131, 0, 0, @"Connection was invalidated before all delegate messages were received", v4, v5);
  [(MIInstallerClient *)self delegateMessageDeliveryCompleteWithError:v6];
  [(MIInstallerClient *)self setConnection:0];
  [(MIInstallerClient *)self setProgressBlock:0];
  [(MIInstallerClient *)self setAppDictionaryEnumBlock:0];
}

- (MIInstallerClient)init
{
  v21.receiver = self;
  v21.super_class = MIInstallerClient;
  v2 = [(MIInstallerClient *)&v21 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mobile.installd" options:4096];
    [(MIInstallerClient *)v2 setConnection:v3];

    connection = [(MIInstallerClient *)v2 connection];

    if (connection)
    {
      v5 = MobileInstallerProtocolInterface();
      connection2 = [(MIInstallerClient *)v2 connection];
      [connection2 setRemoteObjectInterface:v5];

      v7 = MobileInstallerDelegateProtocolInterface();
      connection3 = [(MIInstallerClient *)v2 connection];
      [connection3 setExportedInterface:v7];

      connection4 = [(MIInstallerClient *)v2 connection];
      [connection4 setExportedObject:v2];

      objc_initWeak(&location, v2);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __25__MIInstallerClient_init__block_invoke;
      v18[3] = &unk_1E80B9D60;
      objc_copyWeak(&v19, &location);
      connection5 = [(MIInstallerClient *)v2 connection];
      [connection5 setInterruptionHandler:v18];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __25__MIInstallerClient_init__block_invoke_3;
      v16[3] = &unk_1E80B9D60;
      objc_copyWeak(&v17, &location);
      connection6 = [(MIInstallerClient *)v2 connection];
      [connection6 setInvalidationHandler:v16];

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.mobileinstallation_client", v12);
      [(MIInstallerClient *)v2 setQueue:v13];

      pthread_cond_init(&v2->_delegatesCompleteCond, 0);
      pthread_mutex_init(&v2->_delegatesCompleteCondMutex, 0);
      [(MIInstallerClient *)v2 setDelegatesComplete:0];
      connection7 = [(MIInstallerClient *)v2 connection];
      [connection7 resume];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

void __25__MIInstallerClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MIInstallerClient_init__block_invoke_2;
  block[3] = &unk_1E80B9F00;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

void __25__MIInstallerClient_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = _CreateError("[MIInstallerClient init]_block_invoke_2", 234, *MEMORY[0x1E69A8D00], 131, 0, 0, @"Connection was interrupted before all delegate messages were received", a8, v9);
  [*(a1 + 32) delegateMessageDeliveryCompleteWithError:v10];
}

void __25__MIInstallerClient_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MIInstallerClient_init__block_invoke_4;
  block[3] = &unk_1E80B9F00;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_delegatesCompleteCondMutex);
  pthread_cond_destroy(&self->_delegatesCompleteCond);
  v3.receiver = self;
  v3.super_class = MIInstallerClient;
  [(MIInstallerClient *)&v3 dealloc];
}

+ (id)installerWithProgressBlock:(id)block releaseTerminationAssertionBlock:(id)assertionBlock
{
  assertionBlockCopy = assertionBlock;
  blockCopy = block;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setProgressBlock:blockCopy];

  [v7 setReleaseTerminationAssertBlock:assertionBlockCopy];

  return v7;
}

+ (id)installerWithProgressBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_opt_class() installerWithProgressBlock:blockCopy releaseTerminationAssertionBlock:0];

  return v4;
}

+ (id)installerWithAppDictionaryEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAppDictionaryEnumBlock:enumeratorCopy];

  return v4;
}

- (void)reportProgress:(id)progress
{
  progressCopy = progress;
  queue = [(MIInstallerClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MIInstallerClient_reportProgress___block_invoke;
  v7[3] = &unk_1E80B9F28;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(queue, v7);
}

void __36__MIInstallerClient_reportProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) progressBlock];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)enumerateAppDictionary:(id)dictionary error:(id)error
{
  dictionaryCopy = dictionary;
  errorCopy = error;
  queue = [(MIInstallerClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MIInstallerClient_enumerateAppDictionary_error___block_invoke;
  block[3] = &unk_1E80B9F50;
  block[4] = self;
  v12 = dictionaryCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = dictionaryCopy;
  dispatch_sync(queue, block);
}

void __50__MIInstallerClient_enumerateAppDictionary_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appDictionaryEnumBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) appDictionaryEnumBlock];
    (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
  }
}

- (void)delegateMessageDeliveryCompleteWithError:(id)error
{
  errorCopy = error;
  pthread_mutex_lock(&self->_delegatesCompleteCondMutex);
  if (![(MIInstallerClient *)self delegatesComplete])
  {
    [(MIInstallerClient *)self setDelegatesComplete:1];
    [(MIInstallerClient *)self setDelegatesCompleteError:errorCopy];
  }

  pthread_cond_signal(&self->_delegatesCompleteCond);
  pthread_mutex_unlock(&self->_delegatesCompleteCondMutex);
}

- (void)releaseTerminationAssertion
{
  queue = [(MIInstallerClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MIInstallerClient_releaseTerminationAssertion__block_invoke;
  block[3] = &unk_1E80B9F00;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __48__MIInstallerClient_releaseTerminationAssertion__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) releaseTerminationAssertBlock];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (id)_waitForPendingDelegateMessages
{
  pthread_mutex_lock(&self->_delegatesCompleteCondMutex);
  if (![(MIInstallerClient *)self delegatesComplete])
  {
    do
    {
      pthread_cond_wait(&self->_delegatesCompleteCond, &self->_delegatesCompleteCondMutex);
    }

    while (![(MIInstallerClient *)self delegatesComplete]);
  }

  delegatesCompleteError = [(MIInstallerClient *)self delegatesCompleteError];
  v4 = [delegatesCompleteError copy];

  pthread_mutex_unlock(&self->_delegatesCompleteCondMutex);

  return v4;
}

void __100__MIInstallerClient_installURL_identity_targetingDomain_withOptions_returningResultInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__MIInstallerClient_installURL_identity_targetingDomain_withOptions_returningResultInfo_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __100__MIInstallerClient_installURL_identity_targetingDomain_withOptions_returningResultInfo_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __100__MIInstallerClient_installURL_identity_targetingDomain_withOptions_returningResultInfo_completion___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _waitForPendingDelegateMessages];
  if (v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v19 = v12;
    MOLogWrite();
  }

  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__MIInstallerClient_installURL_identity_targetingDomain_withOptions_returningResultInfo_completion___block_invoke_4;
  block[3] = &unk_1E80B9FC8;
  v14 = *(a1 + 40);
  v26 = a2;
  v21 = v9;
  v22 = v10;
  v15 = *(a1 + 32);
  v23 = v11;
  v24 = v15;
  v25 = v14;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_sync(v13, block);
}

uint64_t __100__MIInstallerClient_installURL_identity_targetingDomain_withOptions_returningResultInfo_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
  v6 = *(a1 + 56);

  return [v6 _invalidateObject];
}

- (void)stageInstallURL:(id)l identity:(id)identity targetingDomain:(unint64_t)domain withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identityCopy = identity;
  lCopy = l;
  connection = [(MIInstallerClient *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke;
  v22[3] = &unk_1E80B9FA0;
  v22[4] = self;
  v17 = completionCopy;
  v23 = v17;
  v18 = [connection synchronousRemoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_3;
  v20[3] = &unk_1E80BA040;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [v18 stageInstallURL:lCopy identity:identityCopy targetingDomain:domain withOptions:optionsCopy completion:v20];
}

void __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

void __87__MIInstallerClient_finalizeStagedInstallForIdentifier_returningResultInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MIInstallerClient_finalizeStagedInstallForIdentifier_returningResultInfo_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __87__MIInstallerClient_finalizeStagedInstallForIdentifier_returningResultInfo_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __87__MIInstallerClient_finalizeStagedInstallForIdentifier_returningResultInfo_completion___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _waitForPendingDelegateMessages];
  if (v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v19 = v12;
    MOLogWrite();
  }

  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MIInstallerClient_finalizeStagedInstallForIdentifier_returningResultInfo_completion___block_invoke_4;
  block[3] = &unk_1E80B9FC8;
  v14 = *(a1 + 40);
  v26 = a2;
  v21 = v9;
  v22 = v10;
  v15 = *(a1 + 32);
  v23 = v11;
  v24 = v15;
  v25 = v14;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_sync(v13, block);
}

uint64_t __87__MIInstallerClient_finalizeStagedInstallForIdentifier_returningResultInfo_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
  v6 = *(a1 + 56);

  return [v6 _invalidateObject];
}

void __106__MIInstallerClient_installParallelPlaceholderForStagedIdentifier_fromURL_returningResultInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__MIInstallerClient_installParallelPlaceholderForStagedIdentifier_fromURL_returningResultInfo_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __106__MIInstallerClient_installParallelPlaceholderForStagedIdentifier_fromURL_returningResultInfo_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __106__MIInstallerClient_installParallelPlaceholderForStagedIdentifier_fromURL_returningResultInfo_completion___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _waitForPendingDelegateMessages];
  if (v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v19 = v12;
    MOLogWrite();
  }

  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__MIInstallerClient_installParallelPlaceholderForStagedIdentifier_fromURL_returningResultInfo_completion___block_invoke_4;
  block[3] = &unk_1E80B9FC8;
  v14 = *(a1 + 40);
  v26 = a2;
  v21 = v9;
  v22 = v10;
  v15 = *(a1 + 32);
  v23 = v11;
  v24 = v15;
  v25 = v14;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_sync(v13, block);
}

uint64_t __106__MIInstallerClient_installParallelPlaceholderForStagedIdentifier_fromURL_returningResultInfo_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
  v6 = *(a1 + 56);

  return [v6 _invalidateObject];
}

- (void)cancelUpdateForStagedIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_3;
  v12[3] = &unk_1E80BA090;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 cancelUpdateForStagedIdentifiers:identifiersCopy completion:v12];
}

void __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_4;
  v10[3] = &unk_1E80BA068;
  v7 = *(a1 + 40);
  v14 = a2;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v9 = v5;
  dispatch_sync(v6, v10);
}

uint64_t __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v4 = *(a1 + 40);

  return [v4 _invalidateObject];
}

- (void)allStagedUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = completionCopy;
  v12 = v6;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke_3;
  v9[3] = &unk_1E80BA0B8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 allStagedUpdatesWithCompletion:v9];
}

void __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)registerPlaceholderForReference:(id)reference completion:(id)completion
{
  completionCopy = completion;
  referenceCopy = reference;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_3;
  v12[3] = &unk_1E80BA0E0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 registerPlaceholderForReference:referenceCopy completion:v12];
}

void __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)revertForLSWithIdentifier:(id)identifier withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identifierCopy = identifier;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FF0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 revertForLSWithIdentifier:identifierCopy withOptions:optionsCopy completion:v15];
}

void __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _waitForPendingDelegateMessages];
  if (v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v19 = v12;
    MOLogWrite();
  }

  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9FC8;
  v14 = *(a1 + 40);
  v26 = a2;
  v21 = v9;
  v22 = v10;
  v15 = *(a1 + 32);
  v23 = v11;
  v24 = v15;
  v25 = v14;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_sync(v13, block);
}

uint64_t __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
  v6 = *(a1 + 56);

  return [v6 _invalidateObject];
}

- (void)revertIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identityCopy = identity;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FF0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 revertIdentity:identityCopy withOptions:optionsCopy completion:v15];
}

void __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _waitForPendingDelegateMessages];
  if (v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v19 = v12;
    MOLogWrite();
  }

  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9FC8;
  v14 = *(a1 + 40);
  v26 = a2;
  v21 = v9;
  v22 = v10;
  v15 = *(a1 + 32);
  v23 = v11;
  v24 = v15;
  v25 = v14;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_sync(v13, block);
}

uint64_t __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
  v6 = *(a1 + 56);

  return [v6 _invalidateObject];
}

- (void)uninstallIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identifiersCopy = identifiers;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80BA108;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 uninstallIdentifiers:identifiersCopy withOptions:optionsCopy completion:v15];
}

void __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _waitForPendingDelegateMessages];
  if (v7 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v12 = v7;
    MOLogWrite();
  }

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80BA018;
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 32);
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v8, block);
}

uint64_t __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)uninstallIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identityCopy = identity;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 uninstallIdentity:identityCopy withOptions:optionsCopy completion:v15];
}

void __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)finalizeReference:(id)reference withCompletion:(id)completion
{
  completionCopy = completion;
  referenceCopy = reference;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_3;
  v12[3] = &unk_1E80BA0E0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 finalizeReference:referenceCopy completion:v12];
}

void __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)acquireReferenceforInstalledAppWithIdentity:(id)identity inDomain:(unint64_t)domain matchingInstallSessionID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  identityCopy = identity;
  connection = [(MIInstallerClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke;
  v19[3] = &unk_1E80B9FA0;
  v19[4] = self;
  v14 = completionCopy;
  v20 = v14;
  v15 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_3;
  v17[3] = &unk_1E80BA130;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 acquireReferenceforInstalledAppWithIdentity:identityCopy inDomain:domain matchingInstallSessionID:dCopy completion:v17];
}

void __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)invalidateReference:(id)reference withCompletion:(id)completion
{
  completionCopy = completion;
  referenceCopy = reference;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 invalidateReference:referenceCopy completion:v12];
}

void __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)lookupUninstalledWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_3;
  v12[3] = &unk_1E80BA158;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 lookupUninstalledWithOptions:optionsCopy completion:v12];
}

void __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)clearUninstalledIdentifiers:(id)identifiers withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identifiersCopy = identifiers;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 clearUninstalledIdentifiers:identifiersCopy withOptions:optionsCopy completion:v15];
}

void __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)lookupSystemAppStateWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_3;
  v12[3] = &unk_1E80BA158;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 lookupSystemAppStateWithOptions:optionsCopy completion:v12];
}

void __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

void __75__MIInstallerClient_updateSystemAppStateForIdentifier_appState_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MIInstallerClient_updateSystemAppStateForIdentifier_appState_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __75__MIInstallerClient_updateSystemAppStateForIdentifier_appState_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __75__MIInstallerClient_updateSystemAppStateForIdentifier_appState_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MIInstallerClient_updateSystemAppStateForIdentifier_appState_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __75__MIInstallerClient_updateSystemAppStateForIdentifier_appState_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)registerContentsForDiskImageAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 registerContentsForDiskImageAtURL:lCopy completion:v12];
}

void __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)unregisterContentsForDiskImageAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 unregisterContentsForDiskImageAtURL:lCopy completion:v12];
}

void __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)registerContentsOnOSModuleAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 registerContentsOnOSModuleAtURL:lCopy completion:v12];
}

void __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)unregisterContentsOnOSModuleAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 unregisterContentsOnOSModuleAtURL:lCopy completion:v12];
}

void __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)reconcileContentsOnKnownOSModules:(id)modules completion:(id)completion
{
  completionCopy = completion;
  modulesCopy = modules;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 reconcileContentsOnKnownOSModules:modulesCopy completion:v12];
}

void __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)enumerateInstalledAppsWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 enumerateInstalledAppsWithOptions:optionsCopy completion:v12];
}

void __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _waitForPendingDelegateMessages];
  v5 = v3;
  if (v4)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v10 = v4;
      MOLogWrite();
    }

    v5 = v4;
  }

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v5;
  dispatch_sync(v6, block);
}

uint64_t __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)fetchInfoForFrameworkAtURL:(id)l options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  lCopy = l;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_3;
  v15[3] = &unk_1E80BA108;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 fetchInfoForFrameworkAtURL:lCopy options:optionsCopy completion:v15];
}

void __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)fetchInfoForContainerizedAppWithBundleID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  connection = [(MIInstallerClient *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke;
  v18[3] = &unk_1E80B9FA0;
  v18[4] = self;
  v12 = completionCopy;
  v19 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14 = [objc_alloc(MEMORY[0x1E69A8D68]) initWithBundleID:dCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_3;
  v16[3] = &unk_1E80BA108;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v13 fetchInfoForContainerizedAppWithIdentity:v14 inDomain:2 options:optionsCopy completion:v16];
}

void __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)updateSinfForIXWithIdentifier:(id)identifier withOptions:(id)options sinfData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  optionsCopy = options;
  identifierCopy = identifier;
  connection = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = completionCopy;
  v21 = v15;
  v16 = [connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_3;
  v18[3] = &unk_1E80BA180;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 updateSinfForIXWithIdentifier:identifierCopy withOptions:optionsCopy sinfData:dataCopy completion:v18];
}

void __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)updateiTunesMetadataForIXWithIdentifier:(id)identifier metadata:(id)metadata completion:(id)completion
{
  completionCopy = completion;
  metadataCopy = metadata;
  identifierCopy = identifier;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 updateiTunesMetadataForIXWithIdentifier:identifierCopy metadata:metadataCopy completion:v15];
}

void __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)registerSafeHarborAtPath:(id)path forIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identityCopy = identity;
  pathCopy = path;
  connection = [(MIInstallerClient *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke;
  v22[3] = &unk_1E80B9FA0;
  v22[4] = self;
  v17 = completionCopy;
  v23 = v17;
  v18 = [connection synchronousRemoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_3;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [v18 registerSafeHarborAtPath:pathCopy forIdentity:identityCopy ofType:type withOptions:optionsCopy completion:v20];
}

void __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)removeSafeHarborForIdentity:(id)identity ofType:(unint64_t)type withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identityCopy = identity;
  connection = [(MIInstallerClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke;
  v19[3] = &unk_1E80B9FA0;
  v19[4] = self;
  v14 = completionCopy;
  v20 = v14;
  v15 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_3;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 removeSafeHarborForIdentity:identityCopy ofType:type withOptions:optionsCopy completion:v17];
}

void __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)listSafeHarborsOfType:(unint64_t)type forPersona:(id)persona withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  personaCopy = persona;
  connection = [(MIInstallerClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke;
  v19[3] = &unk_1E80B9FA0;
  v19[4] = self;
  v14 = completionCopy;
  v20 = v14;
  v15 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_3;
  v17[3] = &unk_1E80BA158;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 listSafeHarborsOfType:type forPersona:personaCopy withOptions:optionsCopy completion:v17];
}

void __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)checkCapabilities:(id)capabilities withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  capabilitiesCopy = capabilities;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80BA158;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 checkCapabilities:capabilitiesCopy withOptions:optionsCopy completion:v15];
}

void __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)updatePlaceholderMetadataForApp:(id)app installType:(unint64_t)type failureReason:(unint64_t)reason underlyingError:(id)error failureSource:(unint64_t)source completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  appCopy = app;
  connection = [(MIInstallerClient *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke;
  v23[3] = &unk_1E80B9FA0;
  v23[4] = self;
  v18 = completionCopy;
  v24 = v18;
  v19 = [connection synchronousRemoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_3;
  v21[3] = &unk_1E80B9FA0;
  v21[4] = self;
  v22 = v18;
  v20 = v18;
  [v19 updatePlaceholderMetadataForApp:appCopy installType:type failureReason:reason underlyingError:errorCopy failureSource:source completion:v21];
}

void __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)getAppMetadataForApp:(id)app completion:(id)completion
{
  completionCopy = completion;
  appCopy = app;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_3;
  v12[3] = &unk_1E80BA1A8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 getAppMetadataForApp:appCopy completion:v12];
}

void __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)snapshotWKAppInCompanionAppID:(id)d toURL:(id)l options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  lCopy = l;
  dCopy = d;
  connection = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = completionCopy;
  v21 = v15;
  v16 = [connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_3;
  v18[3] = &unk_1E80BA158;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 snapshotWKAppInCompanionAppID:dCopy toURL:lCopy options:optionsCopy completion:v18];
}

void __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)setSystemAppMigrationComplete:(id)complete
{
  completeCopy = complete;
  connection = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = completeCopy;
  v12 = v6;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke_3;
  v9[3] = &unk_1E80B9FA0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 setSystemAppMigrationComplete:v9];
}

void __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)systemAppMigratorHasCompleted:(id)completed
{
  completedCopy = completed;
  connection = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = completedCopy;
  v12 = v6;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke_3;
  v9[3] = &unk_1E80BA090;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 systemAppMigratorHasCompleted:v9];
}

void __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke_4;
  v10[3] = &unk_1E80BA068;
  v7 = *(a1 + 40);
  v14 = a2;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v9 = v5;
  dispatch_sync(v6, v10);
}

uint64_t __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v4 = *(a1 + 40);

  return [v4 _invalidateObject];
}

- (void)waitForSystemAppMigratorToComplete:(id)complete
{
  completeCopy = complete;
  connection = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = completeCopy;
  v12 = v6;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke_3;
  v9[3] = &unk_1E80B9FA0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 waitForSystemAppMigratorToComplete:v9];
}

void __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)waitForSystemAppMigratorWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = completionCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke_3;
  v9[3] = &unk_1E80B9FA0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 waitForSystemAppMigratorToComplete:v9];
}

void __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)cloneSerializedPlaceholderForInstalledAppWithBundeID:(id)d personaUniqueString:(id)string atResultURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  stringCopy = string;
  dCopy = d;
  connection = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = completionCopy;
  v21 = v15;
  v16 = [connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_3;
  v18[3] = &unk_1E80B9FA0;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 cloneSerializedPlaceholderForInstalledAppWithBundeID:dCopy personaUniqueString:stringCopy atResultURL:lCopy withCompletion:v18];
}

void __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)setLaunchWarningForApp:(id)app withUniqueInstallIdentifier:(id)identifier warningData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  identifierCopy = identifier;
  appCopy = app;
  connection = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = completionCopy;
  v21 = v15;
  v16 = [connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_3;
  v18[3] = &unk_1E80B9FA0;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 setLaunchWarningForApp:appCopy withUniqueInstallIdentifier:identifierCopy warningData:dataCopy completion:v18];
}

void __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)setDataSeparatedAppsWithBundleIDs:(id)ds withPersona:(id)persona withCompletion:(id)completion
{
  completionCopy = completion;
  personaCopy = persona;
  dsCopy = ds;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 setDataSeparatedAppsWithBundleIDs:dsCopy withPersona:personaCopy withCompletion:v15];
}

void __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)addDataSeparatedAppsWithBundleIDs:(id)ds toPersona:(id)persona withCompletion:(id)completion
{
  completionCopy = completion;
  personaCopy = persona;
  dsCopy = ds;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 addDataSeparatedAppsWithBundleIDs:dsCopy toPersona:personaCopy withCompletion:v15];
}

void __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)removeDataSeparatedAppsWithBundleIDs:(id)ds fromPersona:(id)persona withCompletion:(id)completion
{
  completionCopy = completion;
  personaCopy = persona;
  dsCopy = ds;
  connection = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = completionCopy;
  v18 = v12;
  v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 removeDataSeparatedAppsWithBundleIDs:dsCopy fromPersona:personaCopy withCompletion:v15];
}

void __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_4;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

- (void)linkedBundleIDsForAppIdentity:(id)identity withCompletion:(id)completion
{
  completionCopy = completion;
  identityCopy = identity;
  connection = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = completionCopy;
  v15 = v9;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_3;
  v12[3] = &unk_1E80BA0B8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 linkedBundleIDsForAppIdentity:identityCopy withCompletion:v12];
}

void __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (void)referencesForBundleWithIdentifier:(id)identifier inDomain:(unint64_t)domain withCompletion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  connection = [(MIInstallerClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke;
  v16[3] = &unk_1E80B9FA0;
  v16[4] = self;
  v11 = completionCopy;
  v17 = v11;
  v12 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_3;
  v14[3] = &unk_1E80BA158;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 referencesForBundleWithIdentifier:identifierCopy inDomain:domain completion:v14];
}

void __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_2;
  block[3] = &unk_1E80B9F78;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_sync(v4, block);
}

uint64_t __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 _invalidateObject];
}

void __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_4;
  v11[3] = &unk_1E80BA018;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v7, v11);
}

uint64_t __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 _invalidateObject];
}

- (int)pidForTesting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  connection = [(MIInstallerClient *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MIInstallerClient_pidForTesting__block_invoke_2;
  v5[3] = &unk_1E80BA1F0;
  v5[4] = &v6;
  [v3 getPidForTestingWithCompletion:v5];

  LODWORD(connection) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return connection;
}

uint64_t __34__MIInstallerClient_pidForTesting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

- (void)dieForTesting
{
  connection = [(MIInstallerClient *)self connection];
  v2 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];
  [v2 dieForTesting];
}

uint64_t __34__MIInstallerClient_dieForTesting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v5 = v2;
    v3 = MOLogWrite();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

- (id)raiseException
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  connection = [(MIInstallerClient *)self connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MIInstallerClient_raiseException__block_invoke;
  v7[3] = &unk_1E80B9D88;
  v7[4] = &v8;
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MIInstallerClient_raiseException__block_invoke_2;
  v6[3] = &unk_1E80B9D88;
  v6[4] = &v8;
  [v3 raiseExceptionWithCompletion:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (BOOL)setTestMode:(id *)mode
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  connection = [(MIInstallerClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__MIInstallerClient_setTestMode___block_invoke;
  v13[3] = &unk_1E80B9D88;
  v13[4] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__MIInstallerClient_setTestMode___block_invoke_2;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v14;
  [v5 setTestModeWithCompletion:v12];

  v6 = v15[5];
  if (!v6)
  {
    goto LABEL_4;
  }

  domain = [v6 domain];
  if ([domain isEqualToString:*MEMORY[0x1E69A8D00]])
  {
    code = [v15[5] code];

    if (code == 157)
    {
LABEL_4:
      v9 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v11 = v15[5];
    MOLogWrite();
  }

  v9 = 0;
  if (mode)
  {
    *mode = v15[5];
  }

LABEL_11:
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)endTestMode:(id *)mode
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  connection = [(MIInstallerClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__MIInstallerClient_endTestMode___block_invoke;
  v13[3] = &unk_1E80B9D88;
  v13[4] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__MIInstallerClient_endTestMode___block_invoke_2;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v14;
  [v5 endTestModeWithCompletion:v12];

  v6 = v15[5];
  if (!v6)
  {
    goto LABEL_4;
  }

  domain = [v6 domain];
  if ([domain isEqualToString:*MEMORY[0x1E69A8D00]])
  {
    code = [v15[5] code];

    if (code == 157)
    {
LABEL_4:
      v9 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v11 = v15[5];
    MOLogWrite();
  }

  v9 = 0;
  if (mode)
  {
    *mode = v15[5];
  }

LABEL_11:
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)getTestModeEnabled:(BOOL *)enabled outError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  connection = [(MIInstallerClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__MIInstallerClient_getTestModeEnabled_outError___block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v17;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MIInstallerClient_getTestModeEnabled_outError___block_invoke_2;
  v11[3] = &unk_1E80BA218;
  v11[4] = &v13;
  v11[5] = &v17;
  v11[6] = enabled;
  [v7 getTestModeWithCompletion:v11];

  if (v18[5] && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v10 = v18[5];
    MOLogWrite();
  }

  v8 = *(v14 + 24);
  if (error && (v14[3] & 1) == 0)
  {
    *error = v18[5];
    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

void __49__MIInstallerClient_getTestModeEnabled_outError___block_invoke_2(void *a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v8 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v6 = v8;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 1;
    v7 = a1[6];
    if (v7)
    {
      *v7 = a2;
    }
  }
}

- (BOOL)setTestFlags:(unint64_t)flags withError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  connection = [(MIInstallerClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__MIInstallerClient_setTestFlags_withError___block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v13;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__MIInstallerClient_setTestFlags_withError___block_invoke_2;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v13;
  [v7 setTestFlags:flags withCompletion:v11];

  v8 = v14[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)clearTestFlags:(unint64_t)flags withError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  connection = [(MIInstallerClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__MIInstallerClient_clearTestFlags_withError___block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v13;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__MIInstallerClient_clearTestFlags_withError___block_invoke_2;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v13;
  [v7 clearTestFlags:flags withCompletion:v11];

  v8 = v14[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)setEligibilityTestOverrides:(id)overrides withError:(id *)error
{
  overridesCopy = overrides;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  connection = [(MIInstallerClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MIInstallerClient_setEligibilityTestOverrides_withError___block_invoke;
  v13[3] = &unk_1E80B9D88;
  v13[4] = &v14;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MIInstallerClient_setEligibilityTestOverrides_withError___block_invoke_2;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v14;
  [v8 setEligibilityTestOverrides:overridesCopy withCompletion:v12];

  v9 = v15[5];
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v14, 8);

  return v10;
}

@end