@interface HKSignedClinicalDataStore
- (HKSignedClinicalDataStore)init;
- (HKSignedClinicalDataStore)initWithHealthStore:(id)store;
- (NSString)description;
- (id)logPrefix;
- (void)connectionInvalidated;
- (void)deleteSignedClinicalDataRecord:(id)record completion:(id)completion;
- (void)fetchCurrentRegistryIssuerContentVersionWithCompletion:(id)completion;
- (void)fetchCurrentRegistryPublicKeyContentVersionWithCompletion:(id)completion;
- (void)fetchPublicKeyEntriesWithCompletion:(id)completion;
- (void)fetchPublicKeyWithKeyID:(id)d completion:(id)completion;
- (void)fetchSignedClinicalDataGroupBackingMedicalRecord:(id)record options:(unint64_t)options completion:(id)completion;
- (void)insertOrReplaceIssuerRegistryEntries:(id)entries completion:(id)completion;
- (void)insertOrReplacePublicKeyEntries:(id)entries completion:(id)completion;
- (void)parseSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion;
- (void)reextractSignedClinicalDataRecordsForAccountWithIdentifier:(id)identifier completion:(id)completion;
- (void)removePublicKeyEntriesWithKeyIDs:(id)ds completion:(id)completion;
- (void)reverifySignatureForRecord:(id)record completion:(id)completion;
- (void)setRegistryIssuerContentVersion:(id)version completion:(id)completion;
- (void)setRegistryPublicKeyContentVersion:(id)version completion:(id)completion;
- (void)storeSignedClinicalData:(id)data completion:(id)completion;
- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)options completion:(id)completion;
- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)options completion:(id)completion;
@end

@implementation HKSignedClinicalDataStore

- (HKSignedClinicalDataStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKSignedClinicalDataStore;
  v5 = [(HKSignedClinicalDataStore *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKTaskServerProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (id)logPrefix
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)parseSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion
{
  dataCopy = data;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HKSignedClinicalDataStore_parseSignedClinicalData_options_completion___block_invoke;
  v14[3] = &unk_2796DC740;
  v15 = dataCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HKSignedClinicalDataStore_parseSignedClinicalData_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = dataCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)storeSignedClinicalData:(id)data completion:(id)completion
{
  dataCopy = data;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HKSignedClinicalDataStore_storeSignedClinicalData_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = dataCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HKSignedClinicalDataStore_storeSignedClinicalData_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = dataCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchSignedClinicalDataGroupBackingMedicalRecord:(id)record options:(unint64_t)options completion:(id)completion
{
  recordCopy = record;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HKSignedClinicalDataStore_fetchSignedClinicalDataGroupBackingMedicalRecord_options_completion___block_invoke;
  v14[3] = &unk_2796DC740;
  v15 = recordCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HKSignedClinicalDataStore_fetchSignedClinicalDataGroupBackingMedicalRecord_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = recordCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v14 errorHandler:v12];
}

- (void)deleteSignedClinicalDataRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HKSignedClinicalDataStore_deleteSignedClinicalDataRecord_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = recordCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HKSignedClinicalDataStore_deleteSignedClinicalDataRecord_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = recordCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)reverifySignatureForRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke;
  aBlock[3] = &unk_2796DC7B8;
  aBlock[4] = selfCopy;
  v19 = completionCopy;
  v20 = v21;
  v9 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke_3;
  v15[3] = &unk_2796DC768;
  v16 = recordCopy;
  v17 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke_4;
  v12[3] = &unk_2796DC7E0;
  v10 = v17;
  v14 = v10;
  v11 = v16;
  v13 = v11;
  [(HKSignedClinicalDataStore *)selfCopy _fetchServerProxyWithHandler:v15 errorHandler:v12];

  _Block_object_dispose(v21, 8);
}

void __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke_2;
  block[3] = &unk_2796DC790;
  v9 = *(a1 + 40);
  v16 = a2;
  v12 = v7;
  v13 = v9;
  v14 = *(a1 + 48);
  v15 = a3;
  v10 = v7;
  dispatch_async(v8, block);
}

void __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __67__HKSignedClinicalDataStore_reverifySignatureForRecord_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  (*(v2 + 16))(v2, 0, [v3 signatureStatus], v4);
}

- (void)reextractSignedClinicalDataRecordsForAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__HKSignedClinicalDataStore_reextractSignedClinicalDataRecordsForAccountWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__HKSignedClinicalDataStore_reextractSignedClinicalDataRecordsForAccountWithIdentifier_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchCurrentRegistryIssuerContentVersionWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HKSignedClinicalDataStore_fetchCurrentRegistryIssuerContentVersionWithCompletion___block_invoke;
  v8[3] = &unk_2796DC808;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__HKSignedClinicalDataStore_fetchCurrentRegistryIssuerContentVersionWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)setRegistryIssuerContentVersion:(id)version completion:(id)completion
{
  versionCopy = version;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HKSignedClinicalDataStore_setRegistryIssuerContentVersion_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = versionCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HKSignedClinicalDataStore_setRegistryIssuerContentVersion_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = versionCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)insertOrReplaceIssuerRegistryEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HKSignedClinicalDataStore_insertOrReplaceIssuerRegistryEntries_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = entriesCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HKSignedClinicalDataStore_insertOrReplaceIssuerRegistryEntries_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = entriesCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchCurrentRegistryPublicKeyContentVersionWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HKSignedClinicalDataStore_fetchCurrentRegistryPublicKeyContentVersionWithCompletion___block_invoke;
  v8[3] = &unk_2796DC808;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__HKSignedClinicalDataStore_fetchCurrentRegistryPublicKeyContentVersionWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)setRegistryPublicKeyContentVersion:(id)version completion:(id)completion
{
  versionCopy = version;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HKSignedClinicalDataStore_setRegistryPublicKeyContentVersion_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = versionCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HKSignedClinicalDataStore_setRegistryPublicKeyContentVersion_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = versionCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)insertOrReplacePublicKeyEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HKSignedClinicalDataStore_insertOrReplacePublicKeyEntries_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = entriesCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HKSignedClinicalDataStore_insertOrReplacePublicKeyEntries_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = entriesCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchPublicKeyWithKeyID:(id)d completion:(id)completion
{
  dCopy = d;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HKSignedClinicalDataStore_fetchPublicKeyWithKeyID_completion___block_invoke;
  v13[3] = &unk_2796DC768;
  v14 = dCopy;
  v15 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HKSignedClinicalDataStore_fetchPublicKeyWithKeyID_completion___block_invoke_2;
  v10[3] = &unk_2796DC830;
  v11 = v14;
  v12 = v15;
  v8 = v15;
  v9 = v14;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v13 errorHandler:v10];
}

void __64__HKSignedClinicalDataStore_fetchPublicKeyWithKeyID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HKSignedClinicalDataRegistryPublicKeyFetchResult alloc] initWithKeyID:*(a1 + 32) outcome:4 jwkData:0];
  (*(*(a1 + 40) + 16))();
}

- (void)fetchPublicKeyEntriesWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HKSignedClinicalDataStore_fetchPublicKeyEntriesWithCompletion___block_invoke;
  v8[3] = &unk_2796DC808;
  v9 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HKSignedClinicalDataStore_fetchPublicKeyEntriesWithCompletion___block_invoke_2;
  v6[3] = &unk_2796DBFF8;
  v7 = v9;
  v5 = v9;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v8 errorHandler:v6];
}

- (void)removePublicKeyEntriesWithKeyIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HKSignedClinicalDataStore_removePublicKeyEntriesWithKeyIDs_completion___block_invoke;
  v12[3] = &unk_2796DC768;
  v13 = dsCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HKSignedClinicalDataStore_removePublicKeyEntriesWithKeyIDs_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = dsCopy;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v12 errorHandler:v10];
}

- (void)triggerDownloadIssuerRegistryWithOptions:(unint64_t)options completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueDoubleObjectHandlerWithCompletion:completion];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HKSignedClinicalDataStore_triggerDownloadIssuerRegistryWithOptions_completion___block_invoke;
  v10[3] = &unk_2796DC858;
  optionsCopy = options;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HKSignedClinicalDataStore_triggerDownloadIssuerRegistryWithOptions_completion___block_invoke_2;
  v8[3] = &unk_2796DBFF8;
  v9 = v11;
  v7 = v11;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v10 errorHandler:v8];
}

- (void)triggerDownloadPublicKeysWithOptions:(unint64_t)options completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueDoubleObjectHandlerWithCompletion:completion];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HKSignedClinicalDataStore_triggerDownloadPublicKeysWithOptions_completion___block_invoke;
  v10[3] = &unk_2796DC858;
  optionsCopy = options;
  v11 = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HKSignedClinicalDataStore_triggerDownloadPublicKeysWithOptions_completion___block_invoke_2;
  v8[3] = &unk_2796DBFF8;
  v9 = v11;
  v7 = v11;
  [(HKSignedClinicalDataStore *)self _fetchServerProxyWithHandler:v10 errorHandler:v8];
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    logPrefix = [(HKSignedClinicalDataStore *)self logPrefix];
    v7 = 138543362;
    v8 = logPrefix;
    _os_log_impl(&dword_2519FE000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ connection invalidated", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end