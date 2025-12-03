@interface DCCredentialStore
- (BOOL)hasBeenConfigured;
- (DCCredentialStore)initWithPartitions:(id)partitions;
- (void)activeRegionsInPartitions:(id)partitions docTypes:(id)types completion:(id)completion;
- (void)allElementsOfCredential:(id)credential authData:(id)data completion:(id)completion;
- (void)associateExternalPresentmentKeyWithCredential:(id)credential publicKeyIdentifier:(id)identifier completion:(id)completion;
- (void)authorizeDeviceKeySigningKeyOfCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)authorizeRemoteKeySigningKeyWithCredential:(id)credential remoteKey:(id)key completion:(id)completion;
- (void)checkCompletenessOfCredential:(id)credential completion:(id)completion;
- (void)clearPresentmentKeyUsageForCredential:(id)credential completion:(id)completion;
- (void)configureIfNeededWithContinuation:(id)continuation errorHandler:(id)handler;
- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion;
- (void)credentialIdentifierForPublicKeyIdentifier:(id)identifier completion:(id)completion;
- (void)credentialIdentifiers:(id)identifiers;
- (void)credentialIdentifiersForPublicKeyIdentifier:(id)identifier completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(id)partitions docType:(id)type completion:(id)completion;
- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)deleteCredential:(id)credential completion:(id)completion;
- (void)deleteDataFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion;
- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
- (void)elementsOfCredential:(id)credential elementIdentifiers:(id)identifiers authData:(id)data completion:(id)completion;
- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion;
- (void)generateAccountKeyAuthorizationForCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)generateDeviceEncryptionKeyForCredential:(id)credential keyType:(unint64_t)type completion:(id)completion;
- (void)generateKeySigningKeyForCredential:(id)credential completion:(id)completion;
- (void)generatePresentmentKeyForCredential:(id)credential completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)isPIITokenAvailableForIdentifier:(id)identifier completion:(id)completion;
- (void)keyInfoForCredential:(id)credential completion:(id)completion;
- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion;
- (void)payloadAuthACLForCredential:(id)credential completion:(id)completion;
- (void)payloadsOfCredential:(id)credential completion:(id)completion;
- (void)propertiesOfCredential:(id)credential completion:(id)completion;
- (void)replacePayloadOfCredential:(id)credential withPayload:(id)payload format:(unint64_t)format completion:(id)completion;
- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveDataFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion;
- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion;
- (void)setHasBeenConfigured:(BOOL)configured;
- (void)setStateOfCredential:(id)credential to:(unint64_t)to completion:(id)completion;
- (void)storeDataInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
- (void)storePIIHashInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data keystoreType:(unint64_t)type completion:(id)completion;
- (void)storePIITokenInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
- (void)updateDataInSyncableKeyStoreForIdentifier:(id)identifier attributesToUpdate:(id)update credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(id)identifier attributesToUpdate:(id)update credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
@end

@implementation DCCredentialStore

- (DCCredentialStore)initWithPartitions:(id)partitions
{
  partitionsCopy = partitions;
  v5 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStore initWithPartitions:];
  }

  v17.receiver = self;
  v17.super_class = DCCredentialStore;
  v6 = [(DCCredentialStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(DCCredentialStoreClient);
    client = v7->_client;
    v7->_client = v8;

    v10 = [partitionsCopy copy];
    partitions = v7->_partitions;
    v7->_partitions = v10;

    v7->_hasBeenConfigured = 0;
  }

  objc_initWeak(&location, v7);
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v15, &location);
  v12 = [(DCCredentialStore *)v7 client:v14];
  [v12 setInterruptionHandler:&v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v7;
}

void __40__DCCredentialStore_initWithPartitions___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__DCCredentialStore_initWithPartitions___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasBeenConfigured:0];
}

- (void)configureIfNeededWithContinuation:(id)continuation errorHandler:(id)handler
{
  continuationCopy = continuation;
  handlerCopy = handler;
  if ([(DCCredentialStore *)self hasBeenConfigured])
  {
LABEL_9:
    continuationCopy[2](continuationCopy);
    goto LABEL_10;
  }

  v8 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStore configureIfNeededWithContinuation:errorHandler:];
  }

  if (!self->_client)
  {
    v11 = DC_LOG_CLIENT_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DCCredentialStore configureIfNeededWithContinuation:errorHandler:];
    }

    goto LABEL_9;
  }

  client = [(DCCredentialStore *)self client];
  partitions = [(DCCredentialStore *)self partitions];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__DCCredentialStore_configureIfNeededWithContinuation_errorHandler___block_invoke;
  v12[3] = &unk_278E81590;
  v12[4] = self;
  v13 = handlerCopy;
  v14 = continuationCopy;
  [client configureWithPartitions:partitions completion:v12];

LABEL_10:
}

void __68__DCCredentialStore_configureIfNeededWithContinuation_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __68__DCCredentialStore_configureIfNeededWithContinuation_errorHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      __68__DCCredentialStore_configureIfNeededWithContinuation_errorHandler___block_invoke_cold_2();
    }

    [*(a1 + 32) finishConfiguration];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion
{
  partitionCopy = partition;
  optionsCopy = options;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__DCCredentialStore_createCredentialInPartition_options_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = partitionCopy;
  v18 = optionsCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__DCCredentialStore_createCredentialInPartition_options_completion___block_invoke_3;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = optionsCopy;
  v13 = partitionCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __68__DCCredentialStore_createCredentialInPartition_options_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__DCCredentialStore_createCredentialInPartition_options_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 createCredentialInPartition:*(a1 + 40) options:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)generateKeySigningKeyForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__DCCredentialStore_generateKeySigningKeyForCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__DCCredentialStore_generateKeySigningKeyForCredential_completion___block_invoke_4;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __67__DCCredentialStore_generateKeySigningKeyForCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__DCCredentialStore_generateKeySigningKeyForCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 generateKeySigningKeyForCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__DCCredentialStore_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__DCCredentialStore_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_5;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __87__DCCredentialStore_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__DCCredentialStore_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 isAccountKeySigningKeyAvailableForAccountKeyIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__DCCredentialStore_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__DCCredentialStore_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_6;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __84__DCCredentialStore_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __84__DCCredentialStore_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 retrieveAccountKeySigningKeyForAccountKeyIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__DCCredentialStore_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__DCCredentialStore_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_7;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __82__DCCredentialStore_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__DCCredentialStore_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 createAccountKeySigningKeyForAccountKeyIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__DCCredentialStore_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__DCCredentialStore_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_8;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __82__DCCredentialStore_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__DCCredentialStore_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 deleteAccountKeySigningKeyForAccountKeyIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)generateAccountKeyAuthorizationForCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion
{
  credentialCopy = credential;
  identifierCopy = identifier;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__DCCredentialStore_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = credentialCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__DCCredentialStore_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_9;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = identifierCopy;
  v13 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __98__DCCredentialStore_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__DCCredentialStore_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 generateAccountKeyAuthorizationForCredential:*(a1 + 40) accountKeyIdentifier:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)generateDeviceEncryptionKeyForCredential:(id)credential keyType:(unint64_t)type completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__DCCredentialStore_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke;
  v14[3] = &unk_278E81608;
  typeCopy = type;
  v14[4] = self;
  v15 = credentialCopy;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__DCCredentialStore_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_10;
  v12[3] = &unk_278E812F0;
  v13 = v16;
  v10 = v16;
  v11 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v14 errorHandler:v12];
}

void __81__DCCredentialStore_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__DCCredentialStore_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) client];
  [v3 generateDeviceEncryptionKeyForCredential:*(a1 + 40) keyType:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)generatePresentmentKeyForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__DCCredentialStore_generatePresentmentKeyForCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__DCCredentialStore_generatePresentmentKeyForCredential_completion___block_invoke_11;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __68__DCCredentialStore_generatePresentmentKeyForCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__DCCredentialStore_generatePresentmentKeyForCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 generatePresentmentKeyForCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__DCCredentialStore_generatePresentmentKeysForCredential_numKeys_completion___block_invoke;
  v14[3] = &unk_278E81608;
  v14[4] = self;
  v15 = credentialCopy;
  keysCopy = keys;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__DCCredentialStore_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_12;
  v12[3] = &unk_278E812F0;
  v13 = v16;
  v10 = v16;
  v11 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v14 errorHandler:v12];
}

void __77__DCCredentialStore_generatePresentmentKeysForCredential_numKeys_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __77__DCCredentialStore_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 generatePresentmentKeysForCredential:*(a1 + 40) numKeys:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)authorizeDeviceKeySigningKeyOfCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion
{
  credentialCopy = credential;
  identifierCopy = identifier;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__DCCredentialStore_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = credentialCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__DCCredentialStore_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_13;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = identifierCopy;
  v13 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __94__DCCredentialStore_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __94__DCCredentialStore_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 authorizeDeviceKeySigningKeyOfCredential:*(a1 + 40) accountKeyIdentifier:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)authorizeRemoteKeySigningKeyWithCredential:(id)credential remoteKey:(id)key completion:(id)completion
{
  credentialCopy = credential;
  keyCopy = key;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__DCCredentialStore_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = credentialCopy;
  v18 = keyCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__DCCredentialStore_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_14;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = keyCopy;
  v13 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __85__DCCredentialStore_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__DCCredentialStore_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 authorizeRemoteKeySigningKeyWithCredential:*(a1 + 40) remoteKey:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)associateExternalPresentmentKeyWithCredential:(id)credential publicKeyIdentifier:(id)identifier completion:(id)completion
{
  credentialCopy = credential;
  identifierCopy = identifier;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__DCCredentialStore_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = credentialCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__DCCredentialStore_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke_15;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = identifierCopy;
  v13 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __98__DCCredentialStore_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__DCCredentialStore_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 associateExternalPresentmentKeyWithCredential:*(a1 + 40) publicKeyIdentifier:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)credentialIdentifierForPublicKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__DCCredentialStore_credentialIdentifierForPublicKeyIdentifier_completion___block_invoke;
  v8[3] = &unk_278E81630;
  v9 = completionCopy;
  v7 = completionCopy;
  [(DCCredentialStore *)self credentialIdentifiersForPublicKeyIdentifier:identifier completion:v8];
}

void __75__DCCredentialStore_credentialIdentifierForPublicKeyIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 firstObject];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)credentialIdentifiersForPublicKeyIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DCCredentialStore_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__DCCredentialStore_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_17;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __76__DCCredentialStore_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__DCCredentialStore_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 credentialIdentifiersForPublicKeyIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)replacePayloadOfCredential:(id)credential withPayload:(id)payload format:(unint64_t)format completion:(id)completion
{
  credentialCopy = credential;
  payloadCopy = payload;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__DCCredentialStore_replacePayloadOfCredential_withPayload_format_completion___block_invoke;
  v18[3] = &unk_278E81658;
  v18[4] = self;
  v19 = credentialCopy;
  v20 = payloadCopy;
  formatCopy = format;
  v21 = completionCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__DCCredentialStore_replacePayloadOfCredential_withPayload_format_completion___block_invoke_18;
  v16[3] = &unk_278E812F0;
  v17 = v21;
  v13 = v21;
  v14 = payloadCopy;
  v15 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v18 errorHandler:v16];
}

void __78__DCCredentialStore_replacePayloadOfCredential_withPayload_format_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __78__DCCredentialStore_replacePayloadOfCredential_withPayload_format_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 replacePayloadOfCredential:*(a1 + 40) withPayload:*(a1 + 48) format:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)setStateOfCredential:(id)credential to:(unint64_t)to completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__DCCredentialStore_setStateOfCredential_to_completion___block_invoke;
  v14[3] = &unk_278E81608;
  v14[4] = self;
  v15 = credentialCopy;
  toCopy = to;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__DCCredentialStore_setStateOfCredential_to_completion___block_invoke_19;
  v12[3] = &unk_278E812F0;
  v13 = v16;
  v10 = v16;
  v11 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v14 errorHandler:v12];
}

void __56__DCCredentialStore_setStateOfCredential_to_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__DCCredentialStore_setStateOfCredential_to_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 setStateOfCredential:*(a1 + 40) to:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion
{
  partitionsCopy = partitions;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__DCCredentialStore_credentialIdentifiersInPartitions_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = partitionsCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DCCredentialStore_credentialIdentifiersInPartitions_completion___block_invoke_20;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = partitionsCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __66__DCCredentialStore_credentialIdentifiersInPartitions_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__DCCredentialStore_credentialIdentifiersInPartitions_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 credentialIdentifiersInPartitions:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)credentialIdentifiersInPartitions:(id)partitions docType:(id)type completion:(id)completion
{
  partitionsCopy = partitions;
  typeCopy = type;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__DCCredentialStore_credentialIdentifiersInPartitions_docType_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = partitionsCopy;
  v18 = typeCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__DCCredentialStore_credentialIdentifiersInPartitions_docType_completion___block_invoke_21;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = typeCopy;
  v13 = partitionsCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __74__DCCredentialStore_credentialIdentifiersInPartitions_docType_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __74__DCCredentialStore_credentialIdentifiersInPartitions_docType_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 credentialIdentifiersInPartitions:*(a1 + 40) docType:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)activeRegionsInPartitions:(id)partitions docTypes:(id)types completion:(id)completion
{
  partitionsCopy = partitions;
  typesCopy = types;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__DCCredentialStore_activeRegionsInPartitions_docTypes_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = partitionsCopy;
  v18 = typesCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__DCCredentialStore_activeRegionsInPartitions_docTypes_completion___block_invoke_22;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = typesCopy;
  v13 = partitionsCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __67__DCCredentialStore_activeRegionsInPartitions_docTypes_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__DCCredentialStore_activeRegionsInPartitions_docTypes_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 activeRegionsInPartitions:*(a1 + 40) docTypes:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)credentialIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  partitions = [(DCCredentialStore *)self partitions];
  [(DCCredentialStore *)self credentialIdentifiersInPartitions:partitions completion:identifiersCopy];
}

- (void)deleteCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__DCCredentialStore_deleteCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__DCCredentialStore_deleteCredential_completion___block_invoke_23;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __49__DCCredentialStore_deleteCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__DCCredentialStore_deleteCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 deleteCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)propertiesOfCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__DCCredentialStore_propertiesOfCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__DCCredentialStore_propertiesOfCredential_completion___block_invoke_24;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __55__DCCredentialStore_propertiesOfCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__DCCredentialStore_propertiesOfCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 propertiesOfCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)payloadAuthACLForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__DCCredentialStore_payloadAuthACLForCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__DCCredentialStore_payloadAuthACLForCredential_completion___block_invoke_25;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __60__DCCredentialStore_payloadAuthACLForCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__DCCredentialStore_payloadAuthACLForCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 payloadAuthACLForCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)elementsOfCredential:(id)credential elementIdentifiers:(id)identifiers authData:(id)data completion:(id)completion
{
  credentialCopy = credential;
  identifiersCopy = identifiers;
  dataCopy = data;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__DCCredentialStore_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke;
  v20[3] = &unk_278E81680;
  v20[4] = self;
  v21 = credentialCopy;
  v22 = identifiersCopy;
  v23 = dataCopy;
  v24 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__DCCredentialStore_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_26;
  v18[3] = &unk_278E812F0;
  v19 = v24;
  v14 = v24;
  v15 = dataCopy;
  v16 = identifiersCopy;
  v17 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v20 errorHandler:v18];
}

void __81__DCCredentialStore_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__DCCredentialStore_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 elementsOfCredential:*(a1 + 40) elementIdentifiers:*(a1 + 48) authData:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)checkCompletenessOfCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__DCCredentialStore_checkCompletenessOfCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__DCCredentialStore_checkCompletenessOfCredential_completion___block_invoke_27;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __62__DCCredentialStore_checkCompletenessOfCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__DCCredentialStore_checkCompletenessOfCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 checkCompletenessOfCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (BOOL)hasBeenConfigured
{
  os_unfair_lock_lock(&self->_lock);
  hasBeenConfigured = self->_hasBeenConfigured;
  os_unfair_lock_unlock(&self->_lock);
  return hasBeenConfigured;
}

- (void)setHasBeenConfigured:(BOOL)configured
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasBeenConfigured = configured;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)storeDataInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  dataCopy = data;
  credentialIdentifierCopy = credentialIdentifier;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__DCCredentialStore_storeDataInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke;
  v20[3] = &unk_278E816A8;
  v21 = identifierCopy;
  selfCopy = self;
  v23 = dataCopy;
  v24 = credentialIdentifierCopy;
  v25 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__DCCredentialStore_storeDataInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_37;
  v18[3] = &unk_278E812F0;
  v19 = v25;
  v14 = v25;
  v15 = credentialIdentifierCopy;
  v16 = dataCopy;
  v17 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v20 errorHandler:v18];
}

void __99__DCCredentialStore_storeDataInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __99__DCCredentialStore_storeDataInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_cold_1();
  }

  if ([*(a1 + 32) localizedCaseInsensitiveContainsString:@"cross-check"])
  {
    v3 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"-cross-check" withString:&stru_28586CA20];
    [*(a1 + 40) storePIIHashInSyncableKeyStoreForIdentifier:v3 data:*(a1 + 48) keystoreType:0 completion:*(a1 + 64)];
  }

  else
  {
    [*(a1 + 40) storePIITokenInSyncableKeyStoreForIdentifier:*(a1 + 32) data:*(a1 + 48) credentialIdentifier:*(a1 + 56) completion:*(a1 + 64)];
  }
}

- (void)retrieveDataFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__DCCredentialStore_retrieveDataFromSyncableKeyStoreForIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__DCCredentialStore_retrieveDataFromSyncableKeyStoreForIdentifier_completion___block_invoke_38;
  v10[3] = &unk_278E812F0;
  v11 = v15;
  v8 = v15;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __78__DCCredentialStore_retrieveDataFromSyncableKeyStoreForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __78__DCCredentialStore_retrieveDataFromSyncableKeyStoreForIdentifier_completion___block_invoke_cold_1();
  }

  if ([*(a1 + 32) localizedCaseInsensitiveContainsString:@"cross-check"])
  {
    v3 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"-cross-check" withString:&stru_28586CA20];
    [*(a1 + 40) retrievePIIHashFromSyncableKeyStoreForIdentifier:v3 keystoreType:0 completion:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 40) retrievePIITokenFromSyncableKeyStoreForIdentifier:*(a1 + 32) completion:*(a1 + 48)];
  }
}

- (void)deleteDataFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__DCCredentialStore_deleteDataFromSyncableKeyStoreForIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__DCCredentialStore_deleteDataFromSyncableKeyStoreForIdentifier_completion___block_invoke_39;
  v10[3] = &unk_278E812F0;
  v11 = v15;
  v8 = v15;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __76__DCCredentialStore_deleteDataFromSyncableKeyStoreForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__DCCredentialStore_deleteDataFromSyncableKeyStoreForIdentifier_completion___block_invoke_cold_1();
  }

  if ([*(a1 + 32) localizedCaseInsensitiveContainsString:@"cross-check"])
  {
    v3 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"-cross-check" withString:&stru_28586CA20];
    [*(a1 + 40) deletePIIHashFromSyncableKeyStoreForIdentifier:v3 keystoreType:0 completion:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 40) deletePIITokenFromSyncableKeyStoreForIdentifier:*(a1 + 32) credentialIdentifier:&stru_28586CA20 completion:*(a1 + 48)];
  }
}

- (void)updateDataInSyncableKeyStoreForIdentifier:(id)identifier attributesToUpdate:(id)update credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  updateCopy = update;
  credentialIdentifierCopy = credentialIdentifier;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__DCCredentialStore_updateDataInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke;
  v20[3] = &unk_278E81680;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = updateCopy;
  v23 = credentialIdentifierCopy;
  v24 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __114__DCCredentialStore_updateDataInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_40;
  v18[3] = &unk_278E812F0;
  v19 = v24;
  v14 = v24;
  v15 = credentialIdentifierCopy;
  v16 = updateCopy;
  v17 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v20 errorHandler:v18];
}

uint64_t __114__DCCredentialStore_updateDataInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __114__DCCredentialStore_updateDataInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_cold_1();
  }

  return [*(a1 + 32) updatePIITokenInSyncableKeyStoreForIdentifier:*(a1 + 40) attributesToUpdate:*(a1 + 48) credentialIdentifier:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)storePIITokenInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  dataCopy = data;
  credentialIdentifierCopy = credentialIdentifier;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __103__DCCredentialStore_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke;
  v20[3] = &unk_278E81680;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = dataCopy;
  v23 = credentialIdentifierCopy;
  v24 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __103__DCCredentialStore_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_41;
  v18[3] = &unk_278E812F0;
  v19 = v24;
  v14 = v24;
  v15 = credentialIdentifierCopy;
  v16 = dataCopy;
  v17 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v20 errorHandler:v18];
}

void __103__DCCredentialStore_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __103__DCCredentialStore_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 storePIITokenInSyncableKeyStoreForIdentifier:*(a1 + 40) data:*(a1 + 48) credentialIdentifier:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__DCCredentialStore_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__DCCredentialStore_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_42;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __82__DCCredentialStore_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __82__DCCredentialStore_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 retrievePIITokenFromSyncableKeyStoreForIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__DCCredentialStore_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = credentialIdentifierCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__DCCredentialStore_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_43;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = credentialIdentifierCopy;
  v13 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __101__DCCredentialStore_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __101__DCCredentialStore_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 deletePIITokenFromSyncableKeyStoreForIdentifier:*(a1 + 40) credentialIdentifier:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(id)identifier attributesToUpdate:(id)update credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  updateCopy = update;
  credentialIdentifierCopy = credentialIdentifier;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __118__DCCredentialStore_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke;
  v20[3] = &unk_278E81680;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = updateCopy;
  v23 = credentialIdentifierCopy;
  v24 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__DCCredentialStore_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_44;
  v18[3] = &unk_278E812F0;
  v19 = v24;
  v14 = v24;
  v15 = credentialIdentifierCopy;
  v16 = updateCopy;
  v17 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v20 errorHandler:v18];
}

void __118__DCCredentialStore_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __118__DCCredentialStore_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 updatePIITokenInSyncableKeyStoreForIdentifier:*(a1 + 40) attributesToUpdate:*(a1 + 48) credentialIdentifier:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)storePIIHashInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data keystoreType:(unint64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__DCCredentialStore_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke;
  v18[3] = &unk_278E81658;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = dataCopy;
  typeCopy = type;
  v21 = completionCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__DCCredentialStore_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_45;
  v16[3] = &unk_278E812F0;
  v17 = v21;
  v13 = v21;
  v14 = dataCopy;
  v15 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v18 errorHandler:v16];
}

void __94__DCCredentialStore_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __94__DCCredentialStore_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 storePIIHashInSyncableKeyStoreForIdentifier:*(a1 + 40) data:*(a1 + 48) keystoreType:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__DCCredentialStore_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke;
  v14[3] = &unk_278E81608;
  v14[4] = self;
  v15 = identifierCopy;
  typeCopy = type;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__DCCredentialStore_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_46;
  v12[3] = &unk_278E812F0;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v14 errorHandler:v12];
}

void __94__DCCredentialStore_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __94__DCCredentialStore_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 retrievePIIHashFromSyncableKeyStoreForIdentifier:*(a1 + 40) keystoreType:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__DCCredentialStore_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke;
  v14[3] = &unk_278E81608;
  v14[4] = self;
  v15 = identifierCopy;
  typeCopy = type;
  v16 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__DCCredentialStore_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_47;
  v12[3] = &unk_278E812F0;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v14 errorHandler:v12];
}

void __92__DCCredentialStore_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __92__DCCredentialStore_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 deletePIIHashFromSyncableKeyStoreForIdentifier:*(a1 + 40) keystoreType:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)isPIITokenAvailableForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__DCCredentialStore_isPIITokenAvailableForIdentifier_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__DCCredentialStore_isPIITokenAvailableForIdentifier_completion___block_invoke_48;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __65__DCCredentialStore_isPIITokenAvailableForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__DCCredentialStore_isPIITokenAvailableForIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 isPIITokenAvailableForIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)payloadsOfCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__DCCredentialStore_DebugAPIs__payloadsOfCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__DCCredentialStore_DebugAPIs__payloadsOfCredential_completion___block_invoke_286;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __64__DCCredentialStore_DebugAPIs__payloadsOfCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __64__DCCredentialStore_DebugAPIs__payloadsOfCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 payloadsOfCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)allElementsOfCredential:(id)credential authData:(id)data completion:(id)completion
{
  credentialCopy = credential;
  dataCopy = data;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__DCCredentialStore_DebugAPIs__allElementsOfCredential_authData_completion___block_invoke;
  v16[3] = &unk_278E815B8;
  v16[4] = self;
  v17 = credentialCopy;
  v18 = dataCopy;
  v19 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__DCCredentialStore_DebugAPIs__allElementsOfCredential_authData_completion___block_invoke_287;
  v14[3] = &unk_278E812F0;
  v15 = v19;
  v11 = v19;
  v12 = dataCopy;
  v13 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v16 errorHandler:v14];
}

void __76__DCCredentialStore_DebugAPIs__allElementsOfCredential_authData_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__DCCredentialStore_DebugAPIs__allElementsOfCredential_authData_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 allElementsOfCredential:*(a1 + 40) authData:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__DCCredentialStore_DebugAPIs__occupiedLegacySEKeySlotsWithCompletion___block_invoke;
  v8[3] = &unk_278E816D0;
  v8[4] = self;
  v9 = completionCopy;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__DCCredentialStore_DebugAPIs__occupiedLegacySEKeySlotsWithCompletion___block_invoke_288;
  v6[3] = &unk_278E812F0;
  v7 = v9;
  v5 = v9;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v8 errorHandler:v6];
}

void __71__DCCredentialStore_DebugAPIs__occupiedLegacySEKeySlotsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__DCCredentialStore_DebugAPIs__occupiedLegacySEKeySlotsWithCompletion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 occupiedLegacySEKeySlotsWithCompletion:*(a1 + 40)];
}

- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__DCCredentialStore_DebugAPIs__eraseLegacySEKeySlot_completion___block_invoke;
  v10[3] = &unk_278E816F8;
  v10[4] = self;
  slotCopy = slot;
  v11 = completionCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__DCCredentialStore_DebugAPIs__eraseLegacySEKeySlot_completion___block_invoke_289;
  v8[3] = &unk_278E812F0;
  v9 = v11;
  v7 = v11;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v10 errorHandler:v8];
}

void __64__DCCredentialStore_DebugAPIs__eraseLegacySEKeySlot_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __64__DCCredentialStore_DebugAPIs__eraseLegacySEKeySlot_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 eraseLegacySEKeySlot:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)clearPresentmentKeyUsageForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__DCCredentialStore_DebugAPIs__clearPresentmentKeyUsageForCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__DCCredentialStore_DebugAPIs__clearPresentmentKeyUsageForCredential_completion___block_invoke_290;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __81__DCCredentialStore_DebugAPIs__clearPresentmentKeyUsageForCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__DCCredentialStore_DebugAPIs__clearPresentmentKeyUsageForCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 clearPresentmentKeyUsageForCredential:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)keyInfoForCredential:(id)credential completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__DCCredentialStore_DebugAPIs__keyInfoForCredential_completion___block_invoke;
  v12[3] = &unk_278E815E0;
  v12[4] = self;
  v13 = credentialCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__DCCredentialStore_DebugAPIs__keyInfoForCredential_completion___block_invoke_291;
  v10[3] = &unk_278E812F0;
  v11 = v14;
  v8 = v14;
  v9 = credentialCopy;
  [(DCCredentialStore *)self configureIfNeededWithContinuation:v12 errorHandler:v10];
}

void __64__DCCredentialStore_DebugAPIs__keyInfoForCredential_completion___block_invoke(uint64_t a1)
{
  v2 = DC_LOG_CLIENT_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __64__DCCredentialStore_DebugAPIs__keyInfoForCredential_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) client];
  [v3 keyInfoForCredential:*(a1 + 40) completion:*(a1 + 48)];
}

void __68__DCCredentialStore_configureIfNeededWithContinuation_errorHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_2_0(&dword_24560F000, v2, v3, "DCCredentialStore configure return error %{error}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __81__DCCredentialStore_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = DCCredentialDeviceEncryptionKeyTypeToString(*(a1 + 56));
  OUTLINED_FUNCTION_2_0(&dword_24560F000, v2, v3, "DCCredentialStore generateDeviceEncryptionKeyForCredential keyType = %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end