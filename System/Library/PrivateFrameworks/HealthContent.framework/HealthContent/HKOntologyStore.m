@interface HKOntologyStore
+ (id)serverInterface;
- (BOOL)_synchronouslyRegisterToObserveOntologyStoreChanges:(id *)a3;
- (HKOntologyStore)init;
- (HKOntologyStore)initWithHealthStore:(id)a3;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)_handleAutomaticProxyReconnection;
- (void)_notifyObserversAboutReconnect;
- (void)_observeOntologyStoreChanges:(BOOL)a3 completion:(id)a4;
- (void)_registerFirstObserver;
- (void)_unregisterLastObserver;
- (void)client_didImportEntry:(id)a3;
- (void)client_didStageEntry:(id)a3;
- (void)downloadRequiredShardsWithCompletion:(id)a3;
- (void)importRequiredShardsWithCompletion:(id)a3;
- (void)insertEntries:(id)a3 completion:(id)a4;
- (void)markShardsWithIdentifiers:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)ontologyServerURLWithCompletion:(id)a3;
- (void)ontologyShardRegistryEntriesWithCompletion:(id)a3;
- (void)pruneOntologyWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)requestGatedOntologyUpdateWithCompletion:(id)a3;
- (void)setOntologyServerURL:(id)a3 completion:(id)a4;
- (void)shardRequirementStatusesWithCompletion:(id)a3;
- (void)unitTest_noOpWithCompletion:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateOntologyForReason:(int64_t)a3 completion:(id)a4;
- (void)updateOntologyWithAdhocShardImportConfiguration:(id)a3 completion:(id)a4;
- (void)updateOntologyWithEntry:(id)a3 completion:(id)a4;
- (void)updateShardRegistryWithCompletion:(id)a3;
@end

@implementation HKOntologyStore

- (HKOntologyStore)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOntologyStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKOntologyStore;
  v5 = [(HKOntologyStore *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [objc_alloc(MEMORY[0x1E696C500]) initWithHealthStore:v4 taskIdentifier:@"HKOntologyStoreServerIdentifier" exportedObject:v5 taskUUID:v5->_identifier];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v8;

    objc_initWeak(&location, v5);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __39__HKOntologyStore_initWithHealthStore___block_invoke;
    v19 = &unk_1E86C1D18;
    objc_copyWeak(&v20, &location);
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setAutomaticProxyReconnectionHandler:&v16];
    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:1, v16, v17, v18, v19];
    v10 = objc_alloc(MEMORY[0x1E696C2F0]);
    v11 = NSStringFromProtocol(&unk_1F5AB25E8);
    v12 = HKLogHealthOntology();
    v13 = [v10 initWithName:v11 loggingCategory:v12];
    observers = v5->_observers;
    v5->_observers = v13;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __39__HKOntologyStore_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

- (void)insertEntries:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__HKOntologyStore_insertEntries_completion___block_invoke;
  v15[3] = &unk_1E86C1D40;
  v16 = v6;
  v17 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__HKOntologyStore_insertEntries_completion___block_invoke_2;
  v13[3] = &unk_1E86C1D68;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)ontologyShardRegistryEntriesWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__HKOntologyStore_ontologyShardRegistryEntriesWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKOntologyStore_ontologyShardRegistryEntriesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)ontologyServerURLWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__HKOntologyStore_ontologyServerURLWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKOntologyStore_ontologyServerURLWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)setOntologyServerURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__HKOntologyStore_setOntologyServerURL_completion___block_invoke;
  v13[3] = &unk_1E86C1D40;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HKOntologyStore_setOntologyServerURL_completion___block_invoke_2;
  v11[3] = &unk_1E86C1D68;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)updateShardRegistryWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__HKOntologyStore_updateShardRegistryWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HKOntologyStore_updateShardRegistryWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)downloadRequiredShardsWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__HKOntologyStore_downloadRequiredShardsWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__HKOntologyStore_downloadRequiredShardsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)importRequiredShardsWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKOntologyStore_importRequiredShardsWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HKOntologyStore_importRequiredShardsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)updateOntologyForReason:(int64_t)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HKOntologyStore_updateOntologyForReason_completion___block_invoke;
  v11[3] = &unk_1E86C1DB8;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKOntologyStore_updateOntologyForReason_completion___block_invoke_2;
  v9[3] = &unk_1E86C1D68;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)requestGatedOntologyUpdateWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__HKOntologyStore_requestGatedOntologyUpdateWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKOntologyStore_requestGatedOntologyUpdateWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)pruneOntologyWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__HKOntologyStore_pruneOntologyWithOptions_completion___block_invoke;
  v11[3] = &unk_1E86C1DB8;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__HKOntologyStore_pruneOntologyWithOptions_completion___block_invoke_2;
  v9[3] = &unk_1E86C1D68;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)markShardsWithIdentifiers:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__HKOntologyStore_markShardsWithIdentifiers_options_completion___block_invoke;
  v15[3] = &unk_1E86C1DE0;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__HKOntologyStore_markShardsWithIdentifiers_options_completion___block_invoke_2;
  v13[3] = &unk_1E86C1D68;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)shardRequirementStatusesWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__HKOntologyStore_shardRequirementStatusesWithCompletion___block_invoke;
  v9[3] = &unk_1E86C1D90;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__HKOntologyStore_shardRequirementStatusesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E86C1D68;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)updateOntologyWithEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__HKOntologyStore_updateOntologyWithEntry_completion___block_invoke;
  v13[3] = &unk_1E86C1D40;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__HKOntologyStore_updateOntologyWithEntry_completion___block_invoke_2;
  v11[3] = &unk_1E86C1D68;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)updateOntologyWithAdhocShardImportConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__HKOntologyStore_updateOntologyWithAdhocShardImportConfiguration_completion___block_invoke;
  v13[3] = &unk_1E86C1D40;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__HKOntologyStore_updateOntologyWithAdhocShardImportConfiguration_completion___block_invoke_2;
  v11[3] = &unk_1E86C1D68;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  observers = self->_observers;
  v9 = v7;
  if (!v7)
  {
    v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueue];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__HKOntologyStore_registerObserver_queue___block_invoke;
  v10[3] = &unk_1E86C1E08;
  v10[4] = self;
  [(HKOntologyStoreObserver *)observers registerObserver:v6 queue:v9 runIfFirstObserver:v10];
  if (!v7)
  {
  }
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__HKOntologyStore_unregisterObserver___block_invoke;
  v4[3] = &unk_1E86C1E08;
  v4[4] = self;
  [(HKOntologyStoreObserver *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

- (void)client_didStageEntry:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__HKOntologyStore_client_didStageEntry___block_invoke;
  v7[3] = &unk_1E86C1E30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKOntologyStoreObserver *)observers notifyObservers:v7];
}

- (void)client_didImportEntry:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__HKOntologyStore_client_didImportEntry___block_invoke;
  v7[3] = &unk_1E86C1E30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HKOntologyStoreObserver *)observers notifyObservers:v7];
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AB2648];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_insertEntries_completion_ argumentIndex:0 ofReply:0];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_ontologyShardRegistryEntriesWithCompletion_ argumentIndex:0 ofReply:1];
  v5 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_markShardsWithIdentifiers_options_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_handleAutomaticProxyReconnection
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_1DF70B000, a2, a3, "[%{public}@] Failed to resume observation on server reconnection: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversAboutReconnect
{
  observers = self->_observers;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__HKOntologyStore__notifyObserversAboutReconnect__block_invoke;
  v3[3] = &unk_1E86C1E58;
  v3[4] = self;
  [(HKOntologyStoreObserver *)observers notifyObservers:v3];
}

- (void)_registerFirstObserver
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__HKOntologyStore__registerFirstObserver__block_invoke;
  v2[3] = &unk_1E86C1E80;
  v2[4] = self;
  [(HKOntologyStore *)self _observeOntologyStoreChanges:1 completion:v2];
}

void __41__HKOntologyStore__registerFirstObserver__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__HKOntologyStore__registerFirstObserver__block_invoke_cold_1(a1, v5, v6);
    }
  }

  [*(a1 + 32) _callUnitTestHookObserving:1 success:a2 error:v5];
}

- (void)_unregisterLastObserver
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__HKOntologyStore__unregisterLastObserver__block_invoke;
  v2[3] = &unk_1E86C1E80;
  v2[4] = self;
  [(HKOntologyStore *)self _observeOntologyStoreChanges:0 completion:v2];
}

void __42__HKOntologyStore__unregisterLastObserver__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = HKLogHealthOntology();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v11 = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&dword_1DF70B000, v8, OS_LOG_TYPE_INFO, "%{public}@: unable to unregister observing changes: %{public}@", &v11, 0x16u);
      }
    }
  }

  [*(a1 + 32) _callUnitTestHookObserving:0 success:a2 error:v5];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_observeOntologyStoreChanges:(BOOL)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__HKOntologyStore__observeOntologyStoreChanges_completion___block_invoke;
  v11[3] = &unk_1E86C1EA8;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__HKOntologyStore__observeOntologyStoreChanges_completion___block_invoke_2;
  v9[3] = &unk_1E86C1D68;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (BOOL)_synchronouslyRegisterToObserveOntologyStoreChanges:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__HKOntologyStore__synchronouslyRegisterToObserveOntologyStoreChanges___block_invoke;
  v12[3] = &unk_1E86C1EF8;
  v12[4] = &v19;
  v12[5] = &v13;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKOntologyStore__synchronouslyRegisterToObserveOntologyStoreChanges___block_invoke_3;
  v11[3] = &unk_1E86C1F20;
  v11[4] = &v13;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  [(HKOntologyStore *)self _callUnitTestHookObserving:1 success:*(v20 + 24) error:v14[5]];
  v6 = v14[5];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v8 = v6;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v9 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

uint64_t __71__HKOntologyStore__synchronouslyRegisterToObserveOntologyStoreChanges___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__HKOntologyStore__synchronouslyRegisterToObserveOntologyStoreChanges___block_invoke_2;
  v3[3] = &unk_1E86C1ED0;
  v4 = *(a1 + 32);
  return [a2 remote_observeOntologyStoreChanges:1 completion:v3];
}

- (void)unitTest_noOpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__HKOntologyStore_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_1E86C1D90;
  v12 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__HKOntologyStore_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_1E86C1D68;
  v10 = v5;
  v7 = v5;
  v8 = v4;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

void __41__HKOntologyStore__registerFirstObserver__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_1DF70B000, a2, a3, "%{public}@: unable to register to observe changes: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end