@interface HDOntologyUpdateCoordinator
+ (id)_endpointDictionary;
+ (id)_fallbackActivityCriteria;
+ (id)_gatedActivityCriteria;
+ (id)_ontologyServerURL;
- (BOOL)_pruneOldShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(void *)version transaction:(uint64_t)transaction error:;
- (BOOL)updateOntologyWithShardIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version localShardURL:(id)l shardVersion:(int64_t)shardVersion error:(id *)error;
- (HDDaemon)daemon;
- (HDOntologyUpdateCoordinator)init;
- (HDOntologyUpdateCoordinator)initWithDaemon:(id)daemon;
- (HDPrimaryProfile)profile;
- (id)_keyValueDomain;
- (id)_manifestURL;
- (id)_ontologyUpdateTransactionContext;
- (id)_sessionForOntologyUpdateReason:(id)reason;
- (id)_takeAccessibilityAssertion;
- (id)_takeAssertionsIfNecessary;
- (id)_takeRegistryAssertion;
- (id)_updateOperationQueue;
- (id)ontologyServerURL;
- (id)preparedDatabaseAccessibilityAssertion;
- (uint64_t)_permittedToAutomaticallyUpdateOntology;
- (uint64_t)_pruneOldShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version error:;
- (uint64_t)_scheduleFallbackUpdate;
- (uint64_t)_setIsRunningTransaction:(uint64_t)transaction;
- (uint64_t)_shouldProceedToDownloadAndImportShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version shardVersion:(uint64_t)shardVersion error:;
- (uint64_t)_shouldProceedWithImportForShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(void *)version shardURL:(uint64_t)l shardVersion:(int)shardVersion shouldPruneOldShard:(uint64_t)shard error:;
- (uint64_t)_updateOntologyWithLocalShardEntry:(void *)entry transaction:(uint64_t)transaction error:;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)_callWillTriggerGatedActivityTestHookWithMaximumDelay:(uint64_t)delay;
- (void)_downloadStageAndImportEntryWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version shardVersion:(void *)shardVersion shardURL:(uint64_t)l fileSize:(uint64_t)size reason:(void *)reason completion:;
- (void)_invalidateAssertions:(uint64_t)assertions;
- (void)_invalidatePreparedAssertions;
- (void)_persistOntologyUpdateEndTimeForReason:(int)reason success:(void *)success error:;
- (void)_persistOntologyUpdateStartTimeForReason:(id *)reason;
- (void)_prepareAssertions;
- (void)_runOntologyPruner;
- (void)_runOntologyUpdateWithReason:(void *)reason completion:;
- (void)_runOntologyUpdateWithReason:(void *)reason session:(void *)session completion:;
- (void)_setAccessibilityAssertion:(void *)assertion registryAssertion:;
- (void)_triggerGatedUpdateWithMaximumDelay:(double)delay completion:;
- (void)_triggerOntologyUpdateForGatedActivity:(uint64_t)activity ontologyUpdateReason:(void *)reason completion:;
- (void)_updateOntologyWithReason:(void *)reason updateID:(void *)d completion:;
- (void)dealloc;
- (void)downloadRequiredShardsWithCompletion:(id)completion;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
- (void)setOntologyServerURL:(id)l;
- (void)triggerGatedUpdateWithMaximumDelay:(double)delay completion:(id)completion;
- (void)updateOntologyWithReason:(int64_t)reason completion:(id)completion;
- (void)updateOntologyWithShardIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version shardURL:(id)l shardVersion:(int64_t)shardVersion shouldPruneOldShard:(BOOL)shard reason:(int64_t)reason completion:(id)self0;
- (void)updateShardRegistryWithCompletion:(id)completion;
@end

@implementation HDOntologyUpdateCoordinator

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];

  return primaryProfile;
}

- (HDOntologyUpdateCoordinator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyUpdateCoordinator)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v30.receiver = self;
  v30.super_class = HDOntologyUpdateCoordinator;
  v5 = [(HDOntologyUpdateCoordinator *)&v30 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_contentionReductionLock._os_unfair_lock_opaque = 0;
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"%@.%p.isRunningTransaction", v10, v6];
    threadLocalKeyIsRunningTransaction = v6->_threadLocalKeyIsRunningTransaction;
    v6->_threadLocalKeyIsRunningTransaction = v11;

    _updateOperationQueue = [(HDOntologyUpdateCoordinator *)v6 _updateOperationQueue];
    updateOperationQueue = v6->_updateOperationQueue;
    v6->_updateOperationQueue = _updateOperationQueue;

    v15 = [[HDOntologyFeatureCoordinator alloc] initWithOntologyUpdateCoordinator:v6];
    featureCoordinator = v6->_featureCoordinator;
    v6->_featureCoordinator = v15;

    v17 = [[HDOntologyManifestUpdater alloc] initWithOntologyUpdateCoordinator:v6];
    manifestUpdater = v6->_manifestUpdater;
    v6->_manifestUpdater = v17;

    v19 = [[HDOntologyShardDownloader alloc] initWithOntologyUpdateCoordinator:v6];
    downloader = v6->_downloader;
    v6->_downloader = v19;

    v21 = [[HDOntologyShardImporter alloc] initWithOntologyUpdateCoordinator:v6];
    importer = v6->_importer;
    v6->_importer = v21;

    v23 = [[HDOntologyShardRegistry alloc] initWithOntologyUpdateCoordinator:v6];
    shardRegistry = v6->_shardRegistry;
    v6->_shardRegistry = v23;

    v25 = [[HDOntologyShardPruner alloc] initWithOntologyUpdateCoordinator:v6];
    pruner = v6->_pruner;
    v6->_pruner = v25;

    unitTesting_shardURL = v6->_unitTesting_shardURL;
    v6->_unitTesting_shardURL = 0;

    WeakRetained = objc_loadWeakRetained(&v6->_daemon);
    primaryProfile = [WeakRetained primaryProfile];
    [primaryProfile registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  [(HDOntologyUpdateCoordinator *)self _invalidatePreparedAssertions];
  v3.receiver = self;
  v3.super_class = HDOntologyUpdateCoordinator;
  [(HDOntologyUpdateCoordinator *)&v3 dealloc];
}

uint64_t __111__HDOntologyUpdateCoordinator_performOntologyTransactionForWrite_databaseTransaction_error_transactionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v5 = [WeakRetained ontologyBackingStore];
  v6 = *(a1 + 56);
  v7 = objc_loadWeakRetained((*(a1 + 32) + 88));
  v8 = [v7 primaryProfile];
  v9 = [v5 performOntologyTransactionForWrite:v6 profile:v8 databaseTransaction:*(a1 + 40) error:a2 transactionHandler:*(a1 + 48)];

  return v9;
}

- (id)ontologyServerURL
{
  unitTesting_shardURL = self->_unitTesting_shardURL;
  if (unitTesting_shardURL)
  {
    v3 = unitTesting_shardURL;
  }

  else
  {
    v3 = +[HDOntologyUpdateCoordinator _ontologyServerURL];
  }

  return v3;
}

+ (id)_ontologyServerURL
{
  objc_opt_self();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [standardUserDefaults stringForKey:*MEMORY[0x277CCC5C8]];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = HKDefaultOntologyServerBaseURL();
  }

  v4 = v3;

  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];

  return v5;
}

- (void)setOntologyServerURL:(id)l
{
  v3 = MEMORY[0x277CBEBD0];
  lCopy = l;
  standardUserDefaults = [v3 standardUserDefaults];
  absoluteString = [lCopy absoluteString];

  [standardUserDefaults setObject:absoluteString forKey:*MEMORY[0x277CCC5C8]];
}

- (void)updateShardRegistryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HDOntologyUpdateCoordinator *)self _sessionForOntologyUpdateReason:?];
  manifestUpdater = [(HDOntologyUpdateCoordinator *)self manifestUpdater];
  _manifestURL = [(HDOntologyUpdateCoordinator *)self _manifestURL];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HDOntologyUpdateCoordinator_updateShardRegistryWithCompletion___block_invoke;
  v10[3] = &unk_2796B8A78;
  v11 = v5;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v5;
  [manifestUpdater updateManifestWithURL:_manifestURL session:v9 completion:v10];
}

void __65__HDOntologyUpdateCoordinator_updateShardRegistryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 invalidateAndCancel];
  (*(*(a1 + 40) + 16))();
}

void __68__HDOntologyUpdateCoordinator_downloadRequiredShardsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 invalidateAndCancel];
  (*(*(a1 + 40) + 16))();
}

- (void)updateOntologyWithReason:(int64_t)reason completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  hk_shortRepresentation = [uUID hk_shortRepresentation];

  v9 = MEMORY[0x277CCACA8];
  v10 = HKStringFromOntologyUpdateReason();
  v11 = [v9 stringWithFormat:@"%@ %@", v10, hk_shortRepresentation];

  _HKInitializeLogging();
  v12 = HKLogHealthOntology();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_2514A1000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueue ontology update for %{public}@", buf, 0x16u);
  }

  v13 = objc_alloc(MEMORY[0x277CCCFF8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HDOntologyUpdateCoordinator_updateOntologyWithReason_completion___block_invoke;
  v18[3] = &unk_2796B8AC8;
  v18[4] = self;
  v19 = hk_shortRepresentation;
  v20 = completionCopy;
  reasonCopy = reason;
  v14 = completionCopy;
  v15 = hk_shortRepresentation;
  v16 = [v13 initWithName:v11 operationBlock:v18];
  [(NSOperationQueue *)self->_updateOperationQueue addOperation:v16];

  v17 = *MEMORY[0x277D85DE8];
}

void __67__HDOntologyUpdateCoordinator_updateOntologyWithReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HDOntologyUpdateCoordinator_updateOntologyWithReason_completion___block_invoke_2;
  v8[3] = &unk_2796B8AA0;
  v6 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v7 = v3;
  [(HDOntologyUpdateCoordinator *)v4 _updateOntologyWithReason:v6 updateID:v5 completion:v8];
}

uint64_t __67__HDOntologyUpdateCoordinator_updateOntologyWithReason_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)triggerGatedUpdateWithMaximumDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HDOntologyUpdateCoordinator_triggerGatedUpdateWithMaximumDelay_completion___block_invoke;
  v8[3] = &unk_2796B8A78;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(HDOntologyUpdateCoordinator *)self _triggerGatedUpdateWithMaximumDelay:v8 completion:delay];
}

void __77__HDOntologyUpdateCoordinator_triggerGatedUpdateWithMaximumDelay_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [(HDOntologyUpdateCoordinator *)*(a1 + 32) _scheduleFallbackUpdate];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)updateOntologyWithShardIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version localShardURL:(id)l shardVersion:(int64_t)shardVersion error:(id *)error
{
  identifierCopy = identifier;
  typeCopy = type;
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    [HDOntologyUpdateCoordinator updateOntologyWithShardIdentifier:a2 schemaType:self schemaVersion:? localShardURL:? shardVersion:? error:?];
  }

  v17 = [lCopy hk_fileSizeWithError:error];
  if (v17)
  {
    v18 = typeCopy;
    v19 = identifierCopy;
    v20 = objc_alloc(MEMORY[0x277CCD760]);
    v21 = *MEMORY[0x277CCBBC0];
    selfCopy = self;
    integerValue = [v17 integerValue];
    date = [MEMORY[0x277CBEAA8] date];
    v24 = v20;
    identifierCopy = v19;
    typeCopy = v18;
    v25 = [v24 initWithIdentifier:identifierCopy schemaType:v18 schemaVersion:version availableVersion:shardVersion availableRegion:v21 availableLocale:0 availableURL:lCopy availableChecksum:0 availableSize:integerValue date:date];
    v26 = [v25 copyWithDesiredState:3];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __123__HDOntologyUpdateCoordinator_updateOntologyWithShardIdentifier_schemaType_schemaVersion_localShardURL_shardVersion_error___block_invoke;
    v32[3] = &unk_2796B8AF0;
    v32[4] = selfCopy;
    v33 = v26;
    v27 = v26;
    v28 = [(HDOntologyUpdateCoordinator *)selfCopy performOntologyTransactionForWrite:1 databaseTransaction:0 error:error transactionHandler:v32];
  }

  else
  {
    v28 = error != 0;
  }

  return v28;
}

- (void)updateOntologyWithShardIdentifier:(id)identifier schemaType:(id)type schemaVersion:(int64_t)version shardURL:(id)l shardVersion:(int64_t)shardVersion shouldPruneOldShard:(BOOL)shard reason:(int64_t)reason completion:(id)self0
{
  shardCopy = shard;
  identifierCopy = identifier;
  typeCopy = type;
  lCopy = l;
  completionCopy = completion;
  v22 = 0;
  v20 = [(HDOntologyUpdateCoordinator *)self _shouldProceedWithImportForShardWithIdentifier:identifierCopy schemaType:typeCopy schemaVersion:version shardURL:lCopy shardVersion:shardVersion shouldPruneOldShard:shardCopy error:&v22];
  v21 = v22;
  if (v20 == 2)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else if (v20)
  {
    [(HDOntologyUpdateCoordinator *)self _downloadStageAndImportEntryWithIdentifier:identifierCopy schemaType:typeCopy schemaVersion:version shardVersion:shardVersion shardURL:lCopy fileSize:*MEMORY[0x277CCC610] reason:reason completion:completionCopy];
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v21);
  }
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v4 = *MEMORY[0x277D86230];
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, v4, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86398], 1);
  v5 = *MEMORY[0x277D86310];
  v6 = +[HDOntologyUpdateCoordinator _endpointDictionary];
  xpc_dictionary_set_value(xdict, v5, v6);

  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D862E8], 52428800);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86368], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86378], 1);
}

+ (id)_endpointDictionary
{
  objc_opt_self();
  v0 = +[HDOntologyUpdateCoordinator _ontologyServerURL];
  host = [v0 host];
  uTF8String = [host UTF8String];
  scheme = [v0 scheme];
  host = nw_endpoint_create_host(uTF8String, [scheme UTF8String]);

  v5 = nw_endpoint_copy_dictionary();

  return v5;
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (([(HDOntologyUpdateCoordinator *)self _permittedToAutomaticallyUpdateOntology]& 1) != 0)
  {
    v7 = [MEMORY[0x277D10678] transactionWithOwner:self activityName:@"com.apple.healthd.ontology.update"];
    [(HDOntologyUpdateCoordinator *)self _prepareAssertions];
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: maintenance operation enqueued", buf, 0xCu);
    }

    v9 = MEMORY[0x277D10748];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__HDOntologyUpdateCoordinator_performPeriodicActivity_completion___block_invoke;
    v14[3] = &unk_2796B8B40;
    v14[4] = self;
    v15 = v7;
    v16 = completionCopy;
    v10 = v7;
    v11 = [v9 maintenanceOperationWithName:@"com.apple.healthd.ontology.update" asynchronousBlock:v14];
    WeakRetained = objc_loadWeakRetained(&self->_daemon);
    maintenanceWorkCoordinator = [WeakRetained maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v11];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0.0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __66__HDOntologyUpdateCoordinator_performPeriodicActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHealthOntology();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_2514A1000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: maintenance operation running", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDOntologyUpdateCoordinator_performPeriodicActivity_completion___block_invoke_344;
  v9[3] = &unk_2796B8B18;
  v11 = v3;
  v9[4] = v6;
  v12 = *(a1 + 48);
  v10 = *(a1 + 40);
  v7 = v3;
  [v6 updateOntologyWithReason:0 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  cacheDeleteCoordinator = [WeakRetained cacheDeleteCoordinator];
  [cacheDeleteCoordinator registerCacheDeleteProvider:self->_pruner];

  v7 = objc_alloc(MEMORY[0x277D107E8]);
  v8 = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [v8 primaryProfile];
  v10 = *MEMORY[0x277D862D0];
  v11 = HKLogHealthOntology();
  v12 = [v7 initWithProfile:primaryProfile name:@"com.apple.healthd.ontology.update" interval:self delegate:v11 loggingCategory:v10];
  periodicActivity = self->_periodicActivity;
  self->_periodicActivity = v12;

  objc_initWeak(&location, self);
  v14 = objc_alloc(MEMORY[0x277D10BE8]);
  v15 = +[HDOntologyUpdateCoordinator _gatedActivityCriteria];
  v16 = HKLogHealthOntology();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __53__HDOntologyUpdateCoordinator_profileDidBecomeReady___block_invoke;
  v26[3] = &unk_2796B8B68;
  objc_copyWeak(&v27, &location);
  v17 = [v14 initWithName:@"com.apple.healthd.ontology.gated" criteria:v15 loggingCategory:v16 handler:v26];
  gatedActivity = self->_gatedActivity;
  self->_gatedActivity = v17;

  [(HDXPCGatedActivity *)self->_gatedActivity setRescheduleWhileInProgress:1];
  v19 = objc_alloc(MEMORY[0x277D10BE8]);
  v20 = +[HDOntologyUpdateCoordinator _fallbackActivityCriteria];
  v21 = HKLogHealthOntology();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__HDOntologyUpdateCoordinator_profileDidBecomeReady___block_invoke_2;
  v24[3] = &unk_2796B8B68;
  objc_copyWeak(&v25, &location);
  v22 = [v19 initWithName:@"com.apple.healthd.ontology.fallback" criteria:v20 loggingCategory:v21 handler:v24];
  fallbackActivity = self->_fallbackActivity;
  self->_fallbackActivity = v22;

  [(HDXPCGatedActivity *)self->_fallbackActivity setRescheduleWhileInProgress:1];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

+ (id)_gatedActivityCriteria
{
  objc_opt_self();
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86370], 1);

  return empty;
}

void __53__HDOntologyUpdateCoordinator_profileDidBecomeReady___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDOntologyUpdateCoordinator *)WeakRetained _triggerOntologyUpdateForGatedActivity:v7 ontologyUpdateReason:3 completion:v6];
}

+ (id)_fallbackActivityCriteria
{
  objc_opt_self();
  v0 = +[HDOntologyUpdateCoordinator _gatedActivityCriteria];
  v1 = *MEMORY[0x277D86310];
  v2 = +[HDOntologyUpdateCoordinator _endpointDictionary];
  xpc_dictionary_set_value(v0, v1, v2);

  return v0;
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  v15 = *MEMORY[0x277D85DE8];
  connectivityCopy = connectivity;
  _HKInitializeLogging();
  v6 = HKLogHealthOntology();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentRequest = [connectivityCopy currentRequest];
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = connectivityCopy;
    v13 = 2114;
    v14 = currentRequest;
    _os_log_impl(&dword_2514A1000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: waiting for connectivity for task %{public}@ %{public}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __71__HDOntologyUpdateCoordinator__runOntologyUpdateWithReason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 invalidateAndCancel];
  (*(*(a1 + 40) + 16))();
}

void __79__HDOntologyUpdateCoordinator__runOntologyUpdateWithReason_session_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) downloader];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__HDOntologyUpdateCoordinator__runOntologyUpdateWithReason_session_completion___block_invoke_2;
    v8[3] = &unk_2796B8BB8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v9 = v5;
    [v3 downloadRequiredShardFilesWithSession:v4 completion:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __79__HDOntologyUpdateCoordinator__runOntologyUpdateWithReason_session_completion___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) importer];
    v7 = 0;
    [v5 importStagedShardFilesWithError:&v7];
    v6 = v7;

    [(HDOntologyUpdateCoordinator *)*(a1 + 32) _runOntologyPruner];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __102__HDOntologyUpdateCoordinator__triggerOntologyUpdateForGatedActivity_ontologyUpdateReason_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) shouldDefer];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

void __78__HDOntologyUpdateCoordinator__triggerGatedUpdateWithMaximumDelay_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == 2 && !v5)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:708 format:{@"Activity %@ Deferred", @"com.apple.healthd.ontology.gated"}];
  }

  _HKInitializeLogging();
  v7 = HKLogHealthOntology();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = HDStringFromGatedActivityResult();
    *buf = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_2514A1000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Gated update result: %{public}@, error: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void __54__HDOntologyUpdateCoordinator__scheduleFallbackUpdate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHealthOntology();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = HDStringFromGatedActivityResult();
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_2514A1000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Fallback update result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __84__HDOntologyUpdateCoordinator__updateOntologyWithLocalShardEntry_transaction_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHealthOntology();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) availableURL];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Imported local shard %{public}@ from %{public}@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_shouldProceedToDownloadAndImportShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version shardVersion:(uint64_t)shardVersion error:
{
  v11 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __128__HDOntologyUpdateCoordinator__shouldProceedToDownloadAndImportShardWithIdentifier_schemaType_schemaVersion_shardVersion_error___block_invoke;
    v15[3] = &unk_2796B8CD0;
    v15[4] = self;
    v16 = v11;
    v18 = &v20;
    typeCopy = type;
    v17 = identifierCopy;
    if ([self performOntologyTransactionForWrite:0 databaseTransaction:0 error:shardVersion transactionHandler:v15])
    {
      if ([v21[5] availableVersion] >= version && objc_msgSend(v21[5], "availableState") == 3)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __128__HDOntologyUpdateCoordinator__shouldProceedToDownloadAndImportShardWithIdentifier_schemaType_schemaVersion_shardVersion_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 shardRegistry];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = *(a1[7] + 8);
  obj = *(v11 + 40);
  v12 = [v7 entryWithIdentifier:v8 schemaType:v9 schemaVersion:v10 entryOut:&obj transaction:v6 error:a3];

  objc_storeStrong((v11 + 40), obj);
  return v12;
}

void __148__HDOntologyUpdateCoordinator__downloadStageAndImportEntryWithIdentifier_schemaType_schemaVersion_shardVersion_shardURL_fileSize_reason_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) importer];
    v8 = v5;
    [v6 importStagedShardFilesWithError:&v8];
    v7 = v8;

    (*(*(a1 + 40) + 16))();
    v5 = v7;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_updateOperationQueue
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
    HKCreateSerialDispatchQueue();
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_5() setUnderlyingQueue:self];

    [v2 setMaxConcurrentOperationCount:1];
    [v2 setQualityOfService:-1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_invalidatePreparedAssertions
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    [*(self + 32) invalidate];
    v2 = *(self + 32);
    *(self + 32) = 0;

    [*(self + 40) invalidate];
    v3 = *(self + 40);
    *(self + 40) = 0;

    os_unfair_lock_unlock((self + 48));
  }
}

- (id)preparedDatabaseAccessibilityAssertion
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    v2 = *(self + 32);
    os_unfair_lock_unlock((self + 48));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_setIsRunningTransaction:(uint64_t)transaction
{
  if (!transaction)
  {
    return 0;
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:*(transaction + 56)];
  bOOLValue = [v6 BOOLValue];

  if (a2)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [threadDictionary setObject:v8 forKeyedSubscript:*(transaction + 56)];
  }

  else
  {
    [threadDictionary removeObjectForKey:*(transaction + 56)];
  }

  return bOOLValue;
}

- (id)_ontologyUpdateTransactionContext
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277D10788]);
    [v2 setCacheScope:1];
    preparedDatabaseAccessibilityAssertion = [(HDOntologyUpdateCoordinator *)self preparedDatabaseAccessibilityAssertion];
    if (preparedDatabaseAccessibilityAssertion)
    {
      [v2 addAccessibilityAssertion:preparedDatabaseAccessibilityAssertion];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_sessionForOntologyUpdateReason:(id)reason
{
  reasonCopy = reason;
  if (reason)
  {
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v5 = ephemeralSessionConfiguration;
    if ((a2 & 0xFFFFFFFFFFFFFFFBLL) == 0)
    {
      [ephemeralSessionConfiguration setWaitsForConnectivity:1];
      [v5 setTimeoutIntervalForResource:300.0];
    }

    [v5 set_sourceApplicationBundleIdentifier:*MEMORY[0x277CCE3A8]];
    reasonCopy = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5 delegate:reasonCopy delegateQueue:0];
  }

  return reasonCopy;
}

- (id)_manifestURL
{
  if (self)
  {
    [self ontologyServerURL];
    objc_claimAutoreleasedReturnValue();
    v2 = [OUTLINED_FUNCTION_5() manifestURLWithBaseURL:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)downloadRequiredShardsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = OUTLINED_FUNCTION_5();
  v7 = [(HDOntologyUpdateCoordinator *)v6 _sessionForOntologyUpdateReason:?];
  downloader = [(HDOntologyUpdateCoordinator *)self downloader];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  v11[2] = __68__HDOntologyUpdateCoordinator_downloadRequiredShardsWithCompletion___block_invoke;
  v11[3] = &unk_2796B8A78;
  v12 = v7;
  v13 = v3;
  v9 = v3;
  v10 = v7;
  [downloader downloadRequiredShardFilesWithSession:v10 completion:v11];
}

- (void)_updateOntologyWithReason:(void *)reason updateID:(void *)d completion:
{
  v27 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dCopy = d;
  if (self)
  {
    Current = CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HKStringFromOntologyUpdateReason();
      *buf = 138543874;
      selfCopy = self;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = reasonCopy;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Start updating ontology for %{public}@ %{public}@", buf, 0x20u);
    }

    _takeAssertionsIfNecessary = [(HDOntologyUpdateCoordinator *)self _takeAssertionsIfNecessary];
    [HDOntologyUpdateCoordinator _persistOntologyUpdateStartTimeForReason:self];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v15[2] = __77__HDOntologyUpdateCoordinator__updateOntologyWithReason_updateID_completion___block_invoke;
    v15[3] = &unk_2796B8B90;
    v15[4] = self;
    v19 = a2;
    v20 = Current;
    v16 = reasonCopy;
    v17 = _takeAssertionsIfNecessary;
    v18 = dCopy;
    v13 = _takeAssertionsIfNecessary;
    [(HDOntologyUpdateCoordinator *)self _runOntologyUpdateWithReason:a2 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_scheduleFallbackUpdate
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    _HKInitializeLogging();
    v3 = HKLogHealthOntology();
    if (OUTLINED_FUNCTION_8(v3))
    {
      *buf = 138543362;
      v13 = v2;
      _os_log_impl(&dword_2514A1000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: Request fallback update", buf, 0xCu);
    }

    v4 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    v8 = 3221225472;
    v9 = __54__HDOntologyUpdateCoordinator__scheduleFallbackUpdate__block_invoke;
    v10 = &unk_2796B8C58;
    v11 = v2;
    result = [v5 requestRunWithMaximumDelay:v7 completion:10.0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_triggerGatedUpdateWithMaximumDelay:(double)delay completion:
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    [(HDOntologyUpdateCoordinator *)self _callWillTriggerGatedActivityTestHookWithMaximumDelay:delay];
    if (([(HDOntologyUpdateCoordinator *)self _permittedToAutomaticallyUpdateOntology]& 1) != 0)
    {
      _HKInitializeLogging();
      v6 = HKLogHealthOntology();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v14 = 2048;
        delayCopy = delay;
        _os_log_impl(&dword_2514A1000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Trigger gated update with maximum delay %0.3fs", buf, 0x16u);
      }

      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      v10[2] = __78__HDOntologyUpdateCoordinator__triggerGatedUpdateWithMaximumDelay_completion___block_invoke;
      v10[3] = &unk_2796B8C30;
      v10[4] = self;
      v11 = v5;
      v7 = MEMORY[0x253078050](v10);
      v8 = *(self + 16);
      if (delay <= 0.0)
      {
        [v8 runUngatedWithCompletion:v7];
      }

      else
      {
        [v8 requestRunWithMaximumDelay:v7 completion:delay];
      }
    }

    else
    {
      (*(v5 + 2))(v5, 1, 0);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_updateOntologyWithLocalShardEntry:(void *)entry transaction:(uint64_t)transaction error:
{
  v7 = a2;
  entryCopy = entry;
  if (self && +[HDOntologyShardRegistry insertEntry:transaction:error:](HDOntologyShardRegistry, "insertEntry:transaction:error:", v7, entryCopy, transaction) && ([self shardRegistry], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "availableURL"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "copyToStagingDirectoryFileWithLocalURL:entry:error:", v10, v7, transaction), v10, v9, v11))
  {
    v12 = [v7 copyWithAvailableState:2];

    if (+[HDOntologyShardRegistry insertEntry:transaction:error:](HDOntologyShardRegistry, "insertEntry:transaction:error:", v12, entryCopy, transaction) && ([self importer], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "importStagedShardFilesWithError:", transaction), v13, v14))
    {
      shardRegistry = [self shardRegistry];
      identifier = [v12 identifier];
      schemaType = [v12 schemaType];
      v26 = 0;
      v18 = [shardRegistry entryWithIdentifier:identifier schemaType:schemaType schemaVersion:objc_msgSend(v12 entryOut:"schemaVersion") transaction:&v26 error:{entryCopy, transaction}];
      v19 = v26;

      if (v18)
      {
        graphDatabase = [entryCopy graphDatabase];
        underlyingDatabase = [graphDatabase underlyingDatabase];
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        v23[2] = __84__HDOntologyUpdateCoordinator__updateOntologyWithLocalShardEntry_transaction_error___block_invoke;
        v23[3] = &unk_2796B8C80;
        v23[4] = self;
        v24 = v19;
        v25 = v12;
        [underlyingDatabase onCommit:v23 orRollback:0];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v12 = v7;
  }

  return v18;
}

- (uint64_t)_shouldProceedWithImportForShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(void *)version shardURL:(uint64_t)l shardVersion:(int)shardVersion shouldPruneOldShard:(uint64_t)shard error:
{
  v15 = a2;
  identifierCopy = identifier;
  versionCopy = version;
  if (self)
  {
    if (shardVersion)
    {
      v18 = [(HDOntologyUpdateCoordinator *)self _pruneOldShardWithIdentifier:v15 schemaType:identifierCopy schemaVersion:type error:shard];
    }

    else
    {
      v18 = [(HDOntologyUpdateCoordinator *)self _shouldProceedToDownloadAndImportShardWithIdentifier:v15 schemaType:identifierCopy schemaVersion:type shardVersion:l error:shard];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_downloadStageAndImportEntryWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version shardVersion:(void *)shardVersion shardURL:(uint64_t)l fileSize:(uint64_t)size reason:(void *)reason completion:
{
  v36[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v16 = reasonCopy;
  if (self)
  {
    v17 = reasonCopy;
    v18 = MEMORY[0x277CCD760];
    shardVersionCopy = shardVersion;
    identifierCopy = identifier;
    v21 = a2;
    v22 = [v18 alloc];
    v23 = *MEMORY[0x277CCBBC0];
    date = [MEMORY[0x277CBEAA8] date];
    v25 = v22;
    v16 = v17;
    v26 = [v25 initWithIdentifier:v21 schemaType:identifierCopy schemaVersion:type availableVersion:version availableRegion:v23 availableLocale:0 availableURL:shardVersionCopy availableChecksum:0 availableSize:l date:date];

    v27 = [v26 copyWithDesiredState:3];
    v28 = [(HDOntologyUpdateCoordinator *)self _sessionForOntologyUpdateReason:size];
    downloader = [self downloader];
    v36[0] = v27;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __148__HDOntologyUpdateCoordinator__downloadStageAndImportEntryWithIdentifier_schemaType_schemaVersion_shardVersion_shardURL_fileSize_reason_completion___block_invoke;
    v34[3] = &unk_2796B8BB8;
    v34[4] = self;
    v35 = v16;
    [downloader downloadRequiredShardFilesWithSession:v28 requiredEntries:v30 completion:v34];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_permittedToAutomaticallyUpdateOntology
{
  v18 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 88));
    behavior = [WeakRetained behavior];
    supportsOntologyDatabaseUpdates = [behavior supportsOntologyDatabaseUpdates];

    if (supportsOntologyDatabaseUpdates)
    {
      WeakRetained = objc_loadWeakRetained((v1 + 88));
      behavior2 = [WeakRetained behavior];
      healthAppNotInstalled = [behavior2 healthAppNotInstalled];

      if (!healthAppNotInstalled)
      {
        WeakRetained = objc_loadWeakRetained((v1 + 88));
        behavior3 = [WeakRetained behavior];
        if ([behavior3 isRunningStoreDemoMode])
        {
        }

        else
        {
          v11 = objc_loadWeakRetained((v1 + 88));
          behavior4 = [v11 behavior];
          runningInStoreDemoModeF201 = [behavior4 runningInStoreDemoModeF201];

          if (!runningInStoreDemoModeF201)
          {
            result = 1;
            goto LABEL_15;
          }
        }

        _HKInitializeLogging();
        v14 = HKLogHealthOntology();
        if (!OUTLINED_FUNCTION_8(v14))
        {
          goto LABEL_14;
        }

        v16 = 138543362;
        v17 = v1;
        v8 = "%{public}@: Unable to run ontology update, because device in store demo mode";
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (OUTLINED_FUNCTION_8(v7))
      {
        v16 = 138543362;
        v17 = v1;
        v8 = "%{public}@: Unable to run ontology update, because Health app is not installed";
LABEL_13:
        _os_log_impl(&dword_2514A1000, WeakRetained, OS_LOG_TYPE_DEFAULT, v8, &v16, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (OUTLINED_FUNCTION_8(v9))
      {
        v16 = 138543362;
        v17 = v1;
        v8 = "%{public}@: Unable to run ontology update, because behavior is not enabled";
        goto LABEL_13;
      }
    }

LABEL_14:

    result = 0;
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_prepareAssertions
{
  if (self)
  {
    _takeAccessibilityAssertion = [(HDOntologyUpdateCoordinator *)self _takeAccessibilityAssertion];
    [(HDOntologyUpdateCoordinator *)self _takeRegistryAssertion];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5();
    [(HDOntologyUpdateCoordinator *)v3 _setAccessibilityAssertion:_takeAccessibilityAssertion registryAssertion:v1];
  }
}

void __66__HDOntologyUpdateCoordinator_performPeriodicActivity_completion___block_invoke_344(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = OUTLINED_FUNCTION_4(*(a1 + 48));
  v7(v6);
  [(HDOntologyUpdateCoordinator *)*(a1 + 32) _invalidatePreparedAssertions];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: maintenance operation finished", &v13, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    [*(*(a1 + 32) + 8) shouldDefer];
  }

  v10 = OUTLINED_FUNCTION_4(*(a1 + 56));
  v11(v10, 0.0);
  [*(a1 + 40) invalidate];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_triggerOntologyUpdateForGatedActivity:(uint64_t)activity ontologyUpdateReason:(void *)reason completion:
{
  v7 = a2;
  reasonCopy = reason;
  if (self)
  {
    v9 = MEMORY[0x277D10678];
    name = [v7 name];
    v11 = [v9 transactionWithOwner:self activityName:name];

    OUTLINED_FUNCTION_1();
    v14 = 3221225472;
    v15 = __102__HDOntologyUpdateCoordinator__triggerOntologyUpdateForGatedActivity_ontologyUpdateReason_completion___block_invoke;
    v16 = &unk_2796B8C08;
    v17 = v7;
    v18 = v11;
    v19 = reasonCopy;
    v12 = v11;
    [self updateOntologyWithReason:activity completion:v13];
  }
}

void __53__HDOntologyUpdateCoordinator_profileDidBecomeReady___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDOntologyUpdateCoordinator *)WeakRetained _triggerOntologyUpdateForGatedActivity:v7 ontologyUpdateReason:4 completion:v6];
}

- (id)_keyValueDomain
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x277D10718]);
    WeakRetained = objc_loadWeakRetained(selfCopy + 11);
    primaryProfile = [WeakRetained primaryProfile];
    selfCopy = [v2 initWithCategory:0 domainName:@"HDOntologyUpdateCoordinator" profile:primaryProfile];
  }

  return selfCopy;
}

- (id)_takeAccessibilityAssertion
{
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 88));
    primaryProfile = [WeakRetained primaryProfile];
    database = [primaryProfile database];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v19 = 0;
    v7 = [database takeAccessibilityAssertionWithOwnerIdentifier:v6 timeout:&v19 error:300.0];
    v8 = v19;

    if (!v7)
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        OUTLINED_FUNCTION_3();
        v22 = v8;
        OUTLINED_FUNCTION_7(&dword_2514A1000, v12, v13, "%{public}@ Unable to prepare accessibilityAssertion: %{public}@", v14, v15, v16, v17, v18, v19, buf[0]);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_takeRegistryAssertion
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    shardRegistry = [self shardRegistry];
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v17 = 0;
    v5 = [shardRegistry takeFileHandleAssertionForOwnerIdentifier:v4 error:&v17];
    v6 = v17;

    if (!v5)
    {
      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        OUTLINED_FUNCTION_3();
        v20 = v6;
        OUTLINED_FUNCTION_7(&dword_2514A1000, v10, v11, "%{public}@: Unable to take registry file handle assertion: %{public}@", v12, v13, v14, v15, v16, v17, buf[0]);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setAccessibilityAssertion:(void *)assertion registryAssertion:
{
  v7 = a2;
  assertionCopy = assertion;
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if (v7)
    {
      [*(self + 32) invalidate];
      objc_storeStrong((self + 32), a2);
    }

    if (assertionCopy)
    {
      [*(self + 40) invalidate];
      objc_storeStrong((self + 40), assertion);
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (id)_takeAssertionsIfNecessary
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    _takeAccessibilityAssertion = *(self + 32);
    v3 = *(self + 32);
    *(self + 32) = 0;

    _takeRegistryAssertion = *(self + 40);
    v5 = *(self + 40);
    *(self + 40) = 0;

    os_unfair_lock_unlock((self + 48));
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!_takeAccessibilityAssertion)
    {
      _takeAccessibilityAssertion = [(HDOntologyUpdateCoordinator *)self _takeAccessibilityAssertion];
    }

    [v6 hk_addNonNilObject:_takeAccessibilityAssertion];
    if (!_takeRegistryAssertion)
    {
      _takeRegistryAssertion = [(HDOntologyUpdateCoordinator *)self _takeRegistryAssertion];
    }

    [v6 hk_addNonNilObject:_takeRegistryAssertion];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_invalidateAssertions:(uint64_t)assertions
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = v3;
  if (assertions)
  {
    v12 = OUTLINED_FUNCTION_6(v3, v4, v5, v6, v7, v8, v9, v10, 0, 0, 0, 0, 0, 0, 0, 0, v33, v35);
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          invalidate = [*(v26 + 8 * v15++) invalidate];
        }

        while (v13 != v15);
        v13 = OUTLINED_FUNCTION_6(invalidate, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v34, v36);
      }

      while (v13);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_persistOntologyUpdateStartTimeForReason:(id *)reason
{
  v20 = *MEMORY[0x277D85DE8];
  if (reason)
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = HKStringFromOntologyUpdateReason();
    v4 = [v2 initWithFormat:@"updateStartDate %@", v3];

    _keyValueDomain = [(HDOntologyUpdateCoordinator *)reason _keyValueDomain];
    date = [MEMORY[0x277CBEAA8] date];
    v14 = 0;
    v7 = [_keyValueDomain setDate:date forKey:v4 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

      if (v10)
      {
        v11 = HKLogHealthOntology();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          reasonCopy = reason;
          OUTLINED_FUNCTION_3();
          v17 = v4;
          v18 = v12;
          v19 = v8;
          _os_log_impl(&dword_2514A1000, v11, OS_LOG_TYPE_INFO, "%{public}@: Unable to persist %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__HDOntologyUpdateCoordinator__updateOntologyWithReason_updateID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = &stru_28636E7C8;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@", Error: %@", v5];
  }

  _HKInitializeLogging();
  v7 = HKLogHealthOntology();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = @"Success";
    }

    else
    {
      v9 = @"Failure";
    }

    v10 = *(a1 + 64);
    v11 = HKStringFromOntologyUpdateReason();
    v12 = *(a1 + 40);
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
    *buf = 138544642;
    v20 = v8;
    OUTLINED_FUNCTION_3();
    v21 = v9;
    v22 = v14;
    v23 = v11;
    v24 = v14;
    v25 = v12;
    v26 = 2048;
    v27 = v15;
    v28 = v14;
    v29 = v6;
    _os_log_impl(&dword_2514A1000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ updating ontology for %{public}@ %{public}@ in %0.4fs%{public}@", buf, 0x3Eu);
  }

  [(HDOntologyUpdateCoordinator *)*(a1 + 32) _persistOntologyUpdateEndTimeForReason:a2 success:v5 error:?];
  [(HDOntologyUpdateCoordinator *)*(a1 + 32) _invalidateAssertions:?];
  v16 = OUTLINED_FUNCTION_4(*(a1 + 56));
  v17(v16, a2, v5);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_persistOntologyUpdateEndTimeForReason:(int)reason success:(void *)success error:
{
  v35[1] = *MEMORY[0x277D85DE8];
  successCopy = success;
  if (self)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = HKStringFromOntologyUpdateReason();
    v10 = v9;
    v11 = @"FAILURE";
    if (reason)
    {
      v11 = @"SUCCESS";
    }

    v12 = [v8 initWithFormat:@"updateEndDate %@ %@", v9, v11];
    v34 = v12;
    date = [MEMORY[0x277CBEAA8] date];
    v35[0] = date;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v15 = [v7 initWithDictionary:v14];

    if ((reason & 1) == 0)
    {
      v16 = [successCopy description];
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = HKStringFromOntologyUpdateReason();
      v19 = [v17 initWithFormat:@"updateError %@", v18];
      [v15 setObject:v16 forKeyedSubscript:v19];
    }

    _keyValueDomain = [(HDOntologyUpdateCoordinator *)self _keyValueDomain];
    v27 = 0;
    v21 = [_keyValueDomain setValuesWithDictionary:v15 error:&v27];
    v22 = v27;
    if ((v21 & 1) == 0)
    {
      _HKInitializeLogging();
      v23 = HKLogHealthOntology();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

      if (v24)
      {
        v25 = HKLogHealthOntology();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          selfCopy = self;
          v30 = 2114;
          v31 = v15;
          v32 = 2114;
          v33 = v22;
          _os_log_impl(&dword_2514A1000, v25, OS_LOG_TYPE_INFO, "%{public}@: Unable to persist %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_runOntologyUpdateWithReason:(void *)reason completion:
{
  reasonCopy = reason;
  if (self)
  {
    v6 = [(HDOntologyUpdateCoordinator *)self _sessionForOntologyUpdateReason:a2];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v10[2] = __71__HDOntologyUpdateCoordinator__runOntologyUpdateWithReason_completion___block_invoke;
    v10[3] = &unk_2796B8A78;
    v11 = v7;
    v12 = reasonCopy;
    v8 = v6;
    [(HDOntologyUpdateCoordinator *)self _runOntologyUpdateWithReason:v9 session:v8 completion:v10];
  }
}

- (void)_runOntologyUpdateWithReason:(void *)reason session:(void *)session completion:
{
  reasonCopy = reason;
  sessionCopy = session;
  if (self)
  {
    manifestUpdater = [self manifestUpdater];
    _manifestURL = [(HDOntologyUpdateCoordinator *)self _manifestURL];
    OUTLINED_FUNCTION_1();
    v11 = 3221225472;
    v12 = __79__HDOntologyUpdateCoordinator__runOntologyUpdateWithReason_session_completion___block_invoke;
    v13 = &unk_2796B8BE0;
    v16 = sessionCopy;
    selfCopy = self;
    v15 = reasonCopy;
    [manifestUpdater updateManifestWithURL:_manifestURL session:v15 completion:v10];
  }
}

- (void)_runOntologyPruner
{
  v11 = *MEMORY[0x277D85DE8];
  if (self)
  {
    pruner = [self pruner];
    v7 = 0;
    v3 = [pruner pruneOntologyWithOptions:0 error:&v7];
    v4 = v7;

    if ((v3 & 1) == 0)
    {
      _HKInitializeLogging();
      v5 = HKLogHealthOntology();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        OUTLINED_FUNCTION_3();
        v10 = v4;
        _os_log_error_impl(&dword_2514A1000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Error pruning ontology: %{public}@", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_callWillTriggerGatedActivityTestHookWithMaximumDelay:(uint64_t)delay
{
  if (delay)
  {
    v4 = MEMORY[0x253078050](*(delay + 144));
    if (v4)
    {
      v5 = *(delay + 16);
      v7 = OUTLINED_FUNCTION_4(v4);
      v6(v7, delay, a2);
      v4 = v7;
    }
  }
}

- (uint64_t)_pruneOldShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(uint64_t)version error:
{
  v9 = a2;
  identifierCopy = identifier;
  if (self)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v13[2] = __91__HDOntologyUpdateCoordinator__pruneOldShardWithIdentifier_schemaType_schemaVersion_error___block_invoke;
    v13[3] = &unk_2796B8CA8;
    v13[4] = self;
    v14 = v9;
    v15 = identifierCopy;
    typeCopy = type;
    v11 = [self performOntologyTransactionForWrite:1 databaseTransaction:0 error:version transactionHandler:v13];
    if (v11)
    {
      [(HDOntologyUpdateCoordinator *)self _runOntologyPruner];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_pruneOldShardWithIdentifier:(void *)identifier schemaType:(uint64_t)type schemaVersion:(void *)version transaction:(uint64_t)transaction error:
{
  versionCopy = version;
  if (self)
  {
    identifierCopy = identifier;
    v13 = a2;
    shardRegistry = [self shardRegistry];
    v20 = 0;
    v15 = [shardRegistry entryWithIdentifier:v13 schemaType:identifierCopy schemaVersion:type entryOut:&v20 transaction:versionCopy error:transaction];

    v16 = v20;
    if (v15)
    {
      if (v16)
      {
        v17 = [v16 copyWithDesiredState:0];

        v18 = [HDOntologyShardRegistry insertEntry:v17 transaction:versionCopy error:transaction];
        v16 = v17;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)updateOntologyWithShardIdentifier:(uint64_t)a1 schemaType:(uint64_t)a2 schemaVersion:localShardURL:shardVersion:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOntologyUpdateCoordinator.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"localShardURL.isFileURL"}];
}

@end