@interface MIInstallerClient
+ (id)installerWithAppDictionaryEnumerator:(id)a3;
+ (id)installerWithProgressBlock:(id)a3;
+ (id)installerWithProgressBlock:(id)a3 releaseTerminationAssertionBlock:(id)a4;
- (BOOL)clearTestFlags:(unint64_t)a3 withError:(id *)a4;
- (BOOL)endTestMode:(id *)a3;
- (BOOL)getTestModeEnabled:(BOOL *)a3 outError:(id *)a4;
- (BOOL)setEligibilityTestOverrides:(id)a3 withError:(id *)a4;
- (BOOL)setTestFlags:(unint64_t)a3 withError:(id *)a4;
- (BOOL)setTestMode:(id *)a3;
- (MIInstallerClient)init;
- (id)_waitForPendingDelegateMessages;
- (id)raiseException;
- (int)pidForTesting;
- (void)_invalidateObject;
- (void)acquireReferenceforInstalledAppWithIdentity:(id)a3 inDomain:(unint64_t)a4 matchingInstallSessionID:(id)a5 withCompletion:(id)a6;
- (void)addDataSeparatedAppsWithBundleIDs:(id)a3 toPersona:(id)a4 withCompletion:(id)a5;
- (void)allStagedUpdatesWithCompletion:(id)a3;
- (void)cancelUpdateForStagedIdentifiers:(id)a3 completion:(id)a4;
- (void)checkCapabilities:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)clearUninstalledIdentifiers:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)cloneSerializedPlaceholderForInstalledAppWithBundeID:(id)a3 personaUniqueString:(id)a4 atResultURL:(id)a5 withCompletion:(id)a6;
- (void)dealloc;
- (void)delegateMessageDeliveryCompleteWithError:(id)a3;
- (void)dieForTesting;
- (void)enumerateAppDictionary:(id)a3 error:(id)a4;
- (void)enumerateInstalledAppsWithOptions:(id)a3 completion:(id)a4;
- (void)fetchInfoForContainerizedAppWithBundleID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)fetchInfoForFrameworkAtURL:(id)a3 options:(id)a4 completion:(id)a5;
- (void)finalizeReference:(id)a3 withCompletion:(id)a4;
- (void)getAppMetadataForApp:(id)a3 completion:(id)a4;
- (void)invalidateReference:(id)a3 withCompletion:(id)a4;
- (void)linkedBundleIDsForAppIdentity:(id)a3 withCompletion:(id)a4;
- (void)listSafeHarborsOfType:(unint64_t)a3 forPersona:(id)a4 withOptions:(id)a5 completion:(id)a6;
- (void)lookupSystemAppStateWithOptions:(id)a3 completion:(id)a4;
- (void)lookupUninstalledWithOptions:(id)a3 completion:(id)a4;
- (void)reconcileContentsOnKnownOSModules:(id)a3 completion:(id)a4;
- (void)referencesForBundleWithIdentifier:(id)a3 inDomain:(unint64_t)a4 withCompletion:(id)a5;
- (void)registerContentsForDiskImageAtURL:(id)a3 completion:(id)a4;
- (void)registerContentsOnOSModuleAtURL:(id)a3 completion:(id)a4;
- (void)registerPlaceholderForReference:(id)a3 completion:(id)a4;
- (void)registerSafeHarborAtPath:(id)a3 forIdentity:(id)a4 ofType:(unint64_t)a5 withOptions:(id)a6 completion:(id)a7;
- (void)releaseTerminationAssertion;
- (void)removeDataSeparatedAppsWithBundleIDs:(id)a3 fromPersona:(id)a4 withCompletion:(id)a5;
- (void)removeSafeHarborForIdentity:(id)a3 ofType:(unint64_t)a4 withOptions:(id)a5 completion:(id)a6;
- (void)reportProgress:(id)a3;
- (void)revertForLSWithIdentifier:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)revertIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)setDataSeparatedAppsWithBundleIDs:(id)a3 withPersona:(id)a4 withCompletion:(id)a5;
- (void)setLaunchWarningForApp:(id)a3 withUniqueInstallIdentifier:(id)a4 warningData:(id)a5 completion:(id)a6;
- (void)setSystemAppMigrationComplete:(id)a3;
- (void)snapshotWKAppInCompanionAppID:(id)a3 toURL:(id)a4 options:(id)a5 completion:(id)a6;
- (void)stageInstallURL:(id)a3 identity:(id)a4 targetingDomain:(unint64_t)a5 withOptions:(id)a6 completion:(id)a7;
- (void)systemAppMigratorHasCompleted:(id)a3;
- (void)uninstallIdentifiers:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)uninstallIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)unregisterContentsForDiskImageAtURL:(id)a3 completion:(id)a4;
- (void)unregisterContentsOnOSModuleAtURL:(id)a3 completion:(id)a4;
- (void)updatePlaceholderMetadataForApp:(id)a3 installType:(unint64_t)a4 failureReason:(unint64_t)a5 underlyingError:(id)a6 failureSource:(unint64_t)a7 completion:(id)a8;
- (void)updateSinfForIXWithIdentifier:(id)a3 withOptions:(id)a4 sinfData:(id)a5 completion:(id)a6;
- (void)updateiTunesMetadataForIXWithIdentifier:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)waitForSystemAppMigratorToComplete:(id)a3;
- (void)waitForSystemAppMigratorWithCompletion:(id)a3;
@end

@implementation MIInstallerClient

- (void)_invalidateObject
{
  v3 = [(MIInstallerClient *)self connection];
  [v3 invalidate];

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

    v4 = [(MIInstallerClient *)v2 connection];

    if (v4)
    {
      v5 = MobileInstallerProtocolInterface();
      v6 = [(MIInstallerClient *)v2 connection];
      [v6 setRemoteObjectInterface:v5];

      v7 = MobileInstallerDelegateProtocolInterface();
      v8 = [(MIInstallerClient *)v2 connection];
      [v8 setExportedInterface:v7];

      v9 = [(MIInstallerClient *)v2 connection];
      [v9 setExportedObject:v2];

      objc_initWeak(&location, v2);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __25__MIInstallerClient_init__block_invoke;
      v18[3] = &unk_1E80B9D60;
      objc_copyWeak(&v19, &location);
      v10 = [(MIInstallerClient *)v2 connection];
      [v10 setInterruptionHandler:v18];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __25__MIInstallerClient_init__block_invoke_3;
      v16[3] = &unk_1E80B9D60;
      objc_copyWeak(&v17, &location);
      v11 = [(MIInstallerClient *)v2 connection];
      [v11 setInvalidationHandler:v16];

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.mobileinstallation_client", v12);
      [(MIInstallerClient *)v2 setQueue:v13];

      pthread_cond_init(&v2->_delegatesCompleteCond, 0);
      pthread_mutex_init(&v2->_delegatesCompleteCondMutex, 0);
      [(MIInstallerClient *)v2 setDelegatesComplete:0];
      v14 = [(MIInstallerClient *)v2 connection];
      [v14 resume];

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

+ (id)installerWithProgressBlock:(id)a3 releaseTerminationAssertionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setProgressBlock:v6];

  [v7 setReleaseTerminationAssertBlock:v5];

  return v7;
}

+ (id)installerWithProgressBlock:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() installerWithProgressBlock:v3 releaseTerminationAssertionBlock:0];

  return v4;
}

+ (id)installerWithAppDictionaryEnumerator:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAppDictionaryEnumBlock:v3];

  return v4;
}

- (void)reportProgress:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallerClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MIInstallerClient_reportProgress___block_invoke;
  v7[3] = &unk_1E80B9F28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)enumerateAppDictionary:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIInstallerClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MIInstallerClient_enumerateAppDictionary_error___block_invoke;
  block[3] = &unk_1E80B9F50;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
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

- (void)delegateMessageDeliveryCompleteWithError:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_delegatesCompleteCondMutex);
  if (![(MIInstallerClient *)self delegatesComplete])
  {
    [(MIInstallerClient *)self setDelegatesComplete:1];
    [(MIInstallerClient *)self setDelegatesCompleteError:v4];
  }

  pthread_cond_signal(&self->_delegatesCompleteCond);
  pthread_mutex_unlock(&self->_delegatesCompleteCondMutex);
}

- (void)releaseTerminationAssertion
{
  v3 = [(MIInstallerClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MIInstallerClient_releaseTerminationAssertion__block_invoke;
  block[3] = &unk_1E80B9F00;
  block[4] = self;
  dispatch_sync(v3, block);
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

  v3 = [(MIInstallerClient *)self delegatesCompleteError];
  v4 = [v3 copy];

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

- (void)stageInstallURL:(id)a3 identity:(id)a4 targetingDomain:(unint64_t)a5 withOptions:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(MIInstallerClient *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke;
  v22[3] = &unk_1E80B9FA0;
  v22[4] = self;
  v17 = v12;
  v23 = v17;
  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__MIInstallerClient_stageInstallURL_identity_targetingDomain_withOptions_completion___block_invoke_3;
  v20[3] = &unk_1E80BA040;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [v18 stageInstallURL:v15 identity:v14 targetingDomain:a5 withOptions:v13 completion:v20];
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

- (void)cancelUpdateForStagedIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__MIInstallerClient_cancelUpdateForStagedIdentifiers_completion___block_invoke_3;
  v12[3] = &unk_1E80BA090;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 cancelUpdateForStagedIdentifiers:v7 completion:v12];
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

- (void)allStagedUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MIInstallerClient_allStagedUpdatesWithCompletion___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (void)registerPlaceholderForReference:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MIInstallerClient_registerPlaceholderForReference_completion___block_invoke_3;
  v12[3] = &unk_1E80BA0E0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 registerPlaceholderForReference:v7 completion:v12];
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

- (void)revertForLSWithIdentifier:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__MIInstallerClient_revertForLSWithIdentifier_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FF0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 revertForLSWithIdentifier:v10 withOptions:v9 completion:v15];
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

- (void)revertIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__MIInstallerClient_revertIdentity_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FF0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 revertIdentity:v10 withOptions:v9 completion:v15];
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

- (void)uninstallIdentifiers:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__MIInstallerClient_uninstallIdentifiers_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80BA108;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 uninstallIdentifiers:v10 withOptions:v9 completion:v15];
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

- (void)uninstallIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MIInstallerClient_uninstallIdentity_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 uninstallIdentity:v10 withOptions:v9 completion:v15];
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

- (void)finalizeReference:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MIInstallerClient_finalizeReference_withCompletion___block_invoke_3;
  v12[3] = &unk_1E80BA0E0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 finalizeReference:v7 completion:v12];
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

- (void)acquireReferenceforInstalledAppWithIdentity:(id)a3 inDomain:(unint64_t)a4 matchingInstallSessionID:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(MIInstallerClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke;
  v19[3] = &unk_1E80B9FA0;
  v19[4] = self;
  v14 = v10;
  v20 = v14;
  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__MIInstallerClient_acquireReferenceforInstalledAppWithIdentity_inDomain_matchingInstallSessionID_withCompletion___block_invoke_3;
  v17[3] = &unk_1E80BA130;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 acquireReferenceforInstalledAppWithIdentity:v12 inDomain:a4 matchingInstallSessionID:v11 completion:v17];
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

- (void)invalidateReference:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MIInstallerClient_invalidateReference_withCompletion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 invalidateReference:v7 completion:v12];
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

- (void)lookupUninstalledWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MIInstallerClient_lookupUninstalledWithOptions_completion___block_invoke_3;
  v12[3] = &unk_1E80BA158;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 lookupUninstalledWithOptions:v7 completion:v12];
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

- (void)clearUninstalledIdentifiers:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__MIInstallerClient_clearUninstalledIdentifiers_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 clearUninstalledIdentifiers:v10 withOptions:v9 completion:v15];
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

- (void)lookupSystemAppStateWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MIInstallerClient_lookupSystemAppStateWithOptions_completion___block_invoke_3;
  v12[3] = &unk_1E80BA158;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 lookupSystemAppStateWithOptions:v7 completion:v12];
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

- (void)registerContentsForDiskImageAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_registerContentsForDiskImageAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 registerContentsForDiskImageAtURL:v7 completion:v12];
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

- (void)unregisterContentsForDiskImageAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MIInstallerClient_unregisterContentsForDiskImageAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 unregisterContentsForDiskImageAtURL:v7 completion:v12];
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

- (void)registerContentsOnOSModuleAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MIInstallerClient_registerContentsOnOSModuleAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 registerContentsOnOSModuleAtURL:v7 completion:v12];
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

- (void)unregisterContentsOnOSModuleAtURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_unregisterContentsOnOSModuleAtURL_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 unregisterContentsOnOSModuleAtURL:v7 completion:v12];
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

- (void)reconcileContentsOnKnownOSModules:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_reconcileContentsOnKnownOSModules_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 reconcileContentsOnKnownOSModules:v7 completion:v12];
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

- (void)enumerateInstalledAppsWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_enumerateInstalledAppsWithOptions_completion___block_invoke_3;
  v12[3] = &unk_1E80B9FA0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 enumerateInstalledAppsWithOptions:v7 completion:v12];
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

- (void)fetchInfoForFrameworkAtURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__MIInstallerClient_fetchInfoForFrameworkAtURL_options_completion___block_invoke_3;
  v15[3] = &unk_1E80BA108;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 fetchInfoForFrameworkAtURL:v10 options:v9 completion:v15];
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

- (void)fetchInfoForContainerizedAppWithBundleID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke;
  v18[3] = &unk_1E80B9FA0;
  v18[4] = self;
  v12 = v8;
  v19 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14 = [objc_alloc(MEMORY[0x1E69A8D68]) initWithBundleID:v10];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__MIInstallerClient_fetchInfoForContainerizedAppWithBundleID_options_completion___block_invoke_3;
  v16[3] = &unk_1E80BA108;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v13 fetchInfoForContainerizedAppWithIdentity:v14 inDomain:2 options:v9 completion:v16];
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

- (void)updateSinfForIXWithIdentifier:(id)a3 withOptions:(id)a4 sinfData:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = v10;
  v21 = v15;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__MIInstallerClient_updateSinfForIXWithIdentifier_withOptions_sinfData_completion___block_invoke_3;
  v18[3] = &unk_1E80BA180;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 updateSinfForIXWithIdentifier:v13 withOptions:v12 sinfData:v11 completion:v18];
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

- (void)updateiTunesMetadataForIXWithIdentifier:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__MIInstallerClient_updateiTunesMetadataForIXWithIdentifier_metadata_completion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 updateiTunesMetadataForIXWithIdentifier:v10 metadata:v9 completion:v15];
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

- (void)registerSafeHarborAtPath:(id)a3 forIdentity:(id)a4 ofType:(unint64_t)a5 withOptions:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(MIInstallerClient *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke;
  v22[3] = &unk_1E80B9FA0;
  v22[4] = self;
  v17 = v12;
  v23 = v17;
  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__MIInstallerClient_registerSafeHarborAtPath_forIdentity_ofType_withOptions_completion___block_invoke_3;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [v18 registerSafeHarborAtPath:v15 forIdentity:v14 ofType:a5 withOptions:v13 completion:v20];
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

- (void)removeSafeHarborForIdentity:(id)a3 ofType:(unint64_t)a4 withOptions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(MIInstallerClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke;
  v19[3] = &unk_1E80B9FA0;
  v19[4] = self;
  v14 = v10;
  v20 = v14;
  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__MIInstallerClient_removeSafeHarborForIdentity_ofType_withOptions_completion___block_invoke_3;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 removeSafeHarborForIdentity:v12 ofType:a4 withOptions:v11 completion:v17];
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

- (void)listSafeHarborsOfType:(unint64_t)a3 forPersona:(id)a4 withOptions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(MIInstallerClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke;
  v19[3] = &unk_1E80B9FA0;
  v19[4] = self;
  v14 = v10;
  v20 = v14;
  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__MIInstallerClient_listSafeHarborsOfType_forPersona_withOptions_completion___block_invoke_3;
  v17[3] = &unk_1E80BA158;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 listSafeHarborsOfType:a3 forPersona:v12 withOptions:v11 completion:v17];
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

- (void)checkCapabilities:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MIInstallerClient_checkCapabilities_withOptions_completion___block_invoke_3;
  v15[3] = &unk_1E80BA158;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 checkCapabilities:v10 withOptions:v9 completion:v15];
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

- (void)updatePlaceholderMetadataForApp:(id)a3 installType:(unint64_t)a4 failureReason:(unint64_t)a5 underlyingError:(id)a6 failureSource:(unint64_t)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a3;
  v17 = [(MIInstallerClient *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke;
  v23[3] = &unk_1E80B9FA0;
  v23[4] = self;
  v18 = v14;
  v24 = v18;
  v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__MIInstallerClient_updatePlaceholderMetadataForApp_installType_failureReason_underlyingError_failureSource_completion___block_invoke_3;
  v21[3] = &unk_1E80B9FA0;
  v21[4] = self;
  v22 = v18;
  v20 = v18;
  [v19 updatePlaceholderMetadataForApp:v16 installType:a4 failureReason:a5 underlyingError:v15 failureSource:a7 completion:v21];
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

- (void)getAppMetadataForApp:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MIInstallerClient_getAppMetadataForApp_completion___block_invoke_3;
  v12[3] = &unk_1E80BA1A8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 getAppMetadataForApp:v7 completion:v12];
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

- (void)snapshotWKAppInCompanionAppID:(id)a3 toURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = v10;
  v21 = v15;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__MIInstallerClient_snapshotWKAppInCompanionAppID_toURL_options_completion___block_invoke_3;
  v18[3] = &unk_1E80BA158;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 snapshotWKAppInCompanionAppID:v13 toURL:v12 options:v11 completion:v18];
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

- (void)setSystemAppMigrationComplete:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MIInstallerClient_setSystemAppMigrationComplete___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (void)systemAppMigratorHasCompleted:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MIInstallerClient_systemAppMigratorHasCompleted___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (void)waitForSystemAppMigratorToComplete:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__MIInstallerClient_waitForSystemAppMigratorToComplete___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (void)waitForSystemAppMigratorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallerClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MIInstallerClient_waitForSystemAppMigratorWithCompletion___block_invoke;
  v11[3] = &unk_1E80B9FA0;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
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

- (void)cloneSerializedPlaceholderForInstalledAppWithBundeID:(id)a3 personaUniqueString:(id)a4 atResultURL:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = v10;
  v21 = v15;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __121__MIInstallerClient_cloneSerializedPlaceholderForInstalledAppWithBundeID_personaUniqueString_atResultURL_withCompletion___block_invoke_3;
  v18[3] = &unk_1E80B9FA0;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 cloneSerializedPlaceholderForInstalledAppWithBundeID:v13 personaUniqueString:v12 atResultURL:v11 withCompletion:v18];
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

- (void)setLaunchWarningForApp:(id)a3 withUniqueInstallIdentifier:(id)a4 warningData:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MIInstallerClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke;
  v20[3] = &unk_1E80B9FA0;
  v20[4] = self;
  v15 = v10;
  v21 = v15;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__MIInstallerClient_setLaunchWarningForApp_withUniqueInstallIdentifier_warningData_completion___block_invoke_3;
  v18[3] = &unk_1E80B9FA0;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 setLaunchWarningForApp:v13 withUniqueInstallIdentifier:v12 warningData:v11 completion:v18];
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

- (void)setDataSeparatedAppsWithBundleIDs:(id)a3 withPersona:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__MIInstallerClient_setDataSeparatedAppsWithBundleIDs_withPersona_withCompletion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 setDataSeparatedAppsWithBundleIDs:v10 withPersona:v9 withCompletion:v15];
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

- (void)addDataSeparatedAppsWithBundleIDs:(id)a3 toPersona:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MIInstallerClient_addDataSeparatedAppsWithBundleIDs_toPersona_withCompletion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 addDataSeparatedAppsWithBundleIDs:v10 toPersona:v9 withCompletion:v15];
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

- (void)removeDataSeparatedAppsWithBundleIDs:(id)a3 fromPersona:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MIInstallerClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke;
  v17[3] = &unk_1E80B9FA0;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__MIInstallerClient_removeDataSeparatedAppsWithBundleIDs_fromPersona_withCompletion___block_invoke_3;
  v15[3] = &unk_1E80B9FA0;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 removeDataSeparatedAppsWithBundleIDs:v10 fromPersona:v9 withCompletion:v15];
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

- (void)linkedBundleIDsForAppIdentity:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MIInstallerClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke;
  v14[3] = &unk_1E80B9FA0;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__MIInstallerClient_linkedBundleIDsForAppIdentity_withCompletion___block_invoke_3;
  v12[3] = &unk_1E80BA0B8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 linkedBundleIDsForAppIdentity:v7 withCompletion:v12];
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

- (void)referencesForBundleWithIdentifier:(id)a3 inDomain:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(MIInstallerClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke;
  v16[3] = &unk_1E80B9FA0;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__MIInstallerClient_referencesForBundleWithIdentifier_inDomain_withCompletion___block_invoke_3;
  v14[3] = &unk_1E80BA158;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 referencesForBundleWithIdentifier:v9 inDomain:a4 completion:v14];
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
  v2 = [(MIInstallerClient *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MIInstallerClient_pidForTesting__block_invoke_2;
  v5[3] = &unk_1E80BA1F0;
  v5[4] = &v6;
  [v3 getPidForTestingWithCompletion:v5];

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
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
  v3 = [(MIInstallerClient *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];
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
  v2 = [(MIInstallerClient *)self connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MIInstallerClient_raiseException__block_invoke;
  v7[3] = &unk_1E80B9D88;
  v7[4] = &v8;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
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

- (BOOL)setTestMode:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v4 = [(MIInstallerClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__MIInstallerClient_setTestMode___block_invoke;
  v13[3] = &unk_1E80B9D88;
  v13[4] = &v14;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v13];
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

  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E69A8D00]])
  {
    v8 = [v15[5] code];

    if (v8 == 157)
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
  if (a3)
  {
    *a3 = v15[5];
  }

LABEL_11:
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)endTestMode:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v4 = [(MIInstallerClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __33__MIInstallerClient_endTestMode___block_invoke;
  v13[3] = &unk_1E80B9D88;
  v13[4] = &v14;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v13];
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

  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E69A8D00]])
  {
    v8 = [v15[5] code];

    if (v8 == 157)
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
  if (a3)
  {
    *a3 = v15[5];
  }

LABEL_11:
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)getTestModeEnabled:(BOOL *)a3 outError:(id *)a4
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
  v6 = [(MIInstallerClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__MIInstallerClient_getTestModeEnabled_outError___block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v17;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MIInstallerClient_getTestModeEnabled_outError___block_invoke_2;
  v11[3] = &unk_1E80BA218;
  v11[4] = &v13;
  v11[5] = &v17;
  v11[6] = a3;
  [v7 getTestModeWithCompletion:v11];

  if (v18[5] && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v10 = v18[5];
    MOLogWrite();
  }

  v8 = *(v14 + 24);
  if (a4 && (v14[3] & 1) == 0)
  {
    *a4 = v18[5];
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

- (BOOL)setTestFlags:(unint64_t)a3 withError:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v6 = [(MIInstallerClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__MIInstallerClient_setTestFlags_withError___block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__MIInstallerClient_setTestFlags_withError___block_invoke_2;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v13;
  [v7 setTestFlags:a3 withCompletion:v11];

  v8 = v14[5];
  if (a4 && v8)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)clearTestFlags:(unint64_t)a3 withError:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v6 = [(MIInstallerClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__MIInstallerClient_clearTestFlags_withError___block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v13;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__MIInstallerClient_clearTestFlags_withError___block_invoke_2;
  v11[3] = &unk_1E80B9D88;
  v11[4] = &v13;
  [v7 clearTestFlags:a3 withCompletion:v11];

  v8 = v14[5];
  if (a4 && v8)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v8 == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (BOOL)setEligibilityTestOverrides:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v7 = [(MIInstallerClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MIInstallerClient_setEligibilityTestOverrides_withError___block_invoke;
  v13[3] = &unk_1E80B9D88;
  v13[4] = &v14;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MIInstallerClient_setEligibilityTestOverrides_withError___block_invoke_2;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v14;
  [v8 setEligibilityTestOverrides:v6 withCompletion:v12];

  v9 = v15[5];
  if (a4 && v9)
  {
    v9 = v9;
    *a4 = v9;
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v14, 8);

  return v10;
}

@end