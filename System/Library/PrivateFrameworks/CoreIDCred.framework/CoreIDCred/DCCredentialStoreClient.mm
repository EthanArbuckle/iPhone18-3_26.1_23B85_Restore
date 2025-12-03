@interface DCCredentialStoreClient
- (DCCredentialStoreClient)init;
- (id)interruptionHandler;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)activeRegionsInPartitions:(id)partitions docTypes:(id)types completion:(id)completion;
- (void)allElementsOfCredential:(id)credential authData:(id)data completion:(id)completion;
- (void)associateExternalPresentmentKeyWithCredential:(id)credential publicKeyIdentifier:(id)identifier completion:(id)completion;
- (void)authorizeDeviceKeySigningKeyOfCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)authorizeRemoteKeySigningKeyWithCredential:(id)credential remoteKey:(id)key completion:(id)completion;
- (void)checkCompletenessOfCredential:(id)credential completion:(id)completion;
- (void)clearPresentmentKeyUsageForCredential:(id)credential completion:(id)completion;
- (void)configureWithPartitions:(id)partitions completion:(id)completion;
- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion;
- (void)credentialIdentifiersForPublicKeyIdentifier:(id)identifier completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion;
- (void)credentialIdentifiersInPartitions:(id)partitions docType:(id)type completion:(id)completion;
- (void)dealloc;
- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)deleteCredential:(id)credential completion:(id)completion;
- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
- (void)elementsOfCredential:(id)credential elementIdentifiers:(id)identifiers authData:(id)data completion:(id)completion;
- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion;
- (void)generateAccountKeyAuthorizationForCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)generateDeviceEncryptionKeyForCredential:(id)credential keyType:(unint64_t)type completion:(id)completion;
- (void)generateKeySigningKeyForCredential:(id)credential completion:(id)completion;
- (void)generatePresentmentKeyForCredential:(id)credential completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion;
- (void)init;
- (void)invalidate;
- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)isPIITokenAvailableForIdentifier:(id)identifier completion:(id)completion;
- (void)keyInfoForCredential:(id)credential completion:(id)completion;
- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion;
- (void)payloadAuthACLForCredential:(id)credential completion:(id)completion;
- (void)payloadsOfCredential:(id)credential completion:(id)completion;
- (void)propertiesOfCredential:(id)credential completion:(id)completion;
- (void)replacePayloadOfCredential:(id)credential withPayload:(id)payload format:(unint64_t)format completion:(id)completion;
- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion;
- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion;
- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion;
- (void)setInterruptionHandler:(id)handler;
- (void)setStateOfCredential:(id)credential to:(unint64_t)to completion:(id)completion;
- (void)storePIIHashInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data keystoreType:(unint64_t)type completion:(id)completion;
- (void)storePIITokenInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(id)identifier attributesToUpdate:(id)update credentialIdentifier:(id)credentialIdentifier completion:(id)completion;
@end

@implementation DCCredentialStoreClient

- (DCCredentialStoreClient)init
{
  v48[4] = *MEMORY[0x277D85DE8];
  v3 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient init];
  }

  v42.receiver = self;
  v42.super_class = DCCredentialStoreClient;
  v4 = [(DCCredentialStoreClient *)&v42 init];
  if (v4)
  {
    v5 = DC_LOG_CLIENT_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DCCredentialStoreClient init];
    }

    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.idcredd.storage.xpc" options:4096];
    [(DCCredentialStoreClient *)v4 setServerConnection:v6];

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285875448];
    serverConnection = [(DCCredentialStoreClient *)v4 serverConnection];
    [serverConnection setRemoteObjectInterface:v7];

    serverConnection2 = [(DCCredentialStoreClient *)v4 serverConnection];
    remoteObjectInterface = [serverConnection2 remoteObjectInterface];
    v11 = MEMORY[0x277CBEB98];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v48[2] = objc_opt_class();
    v48[3] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    v13 = [v11 setWithArray:v12];
    [remoteObjectInterface setClasses:v13 forSelector:sel_elementsOfCredential_elementIdentifiers_authData_completion_ argumentIndex:0 ofReply:1];

    serverConnection3 = [(DCCredentialStoreClient *)v4 serverConnection];
    remoteObjectInterface2 = [serverConnection3 remoteObjectInterface];
    v16 = MEMORY[0x277CBEB98];
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v47[2] = objc_opt_class();
    v47[3] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    v18 = [v16 setWithArray:v17];
    [remoteObjectInterface2 setClasses:v18 forSelector:sel_allElementsOfCredential_authData_completion_ argumentIndex:0 ofReply:1];

    serverConnection4 = [(DCCredentialStoreClient *)v4 serverConnection];
    remoteObjectInterface3 = [serverConnection4 remoteObjectInterface];
    v21 = MEMORY[0x277CBEB98];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v23 = [v21 setWithArray:v22];
    [remoteObjectInterface3 setClasses:v23 forSelector:sel_payloadsOfCredential_completion_ argumentIndex:0 ofReply:1];

    serverConnection5 = [(DCCredentialStoreClient *)v4 serverConnection];
    remoteObjectInterface4 = [serverConnection5 remoteObjectInterface];
    v26 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v28 = [v26 setWithArray:v27];
    [remoteObjectInterface4 setClasses:v28 forSelector:sel_generatePresentmentKeysForCredential_numKeys_completion_ argumentIndex:0 ofReply:1];

    serverConnection6 = [(DCCredentialStoreClient *)v4 serverConnection];
    remoteObjectInterface5 = [serverConnection6 remoteObjectInterface];
    v31 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v33 = [v31 setWithArray:v32];
    [remoteObjectInterface5 setClasses:v33 forSelector:sel_occupiedLegacySEKeySlotsWithCompletion_ argumentIndex:0 ofReply:1];

    serverConnection7 = [(DCCredentialStoreClient *)v4 serverConnection];
    remoteObjectInterface6 = [serverConnection7 remoteObjectInterface];
    v36 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v38 = [v36 setWithArray:v37];
    [remoteObjectInterface6 setClasses:v38 forSelector:sel_keyInfoForCredential_completion_ argumentIndex:0 ofReply:1];

    serverConnection8 = [(DCCredentialStoreClient *)v4 serverConnection];
    [serverConnection8 activate];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)interruptionHandler
{
  serverConnection = [(DCCredentialStoreClient *)self serverConnection];
  interruptionHandler = [serverConnection interruptionHandler];

  return interruptionHandler;
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  serverConnection = [(DCCredentialStoreClient *)self serverConnection];
  [serverConnection setInterruptionHandler:handlerCopy];
}

- (void)configureWithPartitions:(id)partitions completion:(id)completion
{
  completionCopy = completion;
  partitionsCopy = partitions;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient configureWithPartitions:completion:];
  }

  v9 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__DCCredentialStoreClient_configureWithPartitions_completion___block_invoke;
  v11[3] = &unk_278E81340;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 configureWithPartitions:partitionsCopy completion:v11];
}

void __62__DCCredentialStoreClient_configureWithPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __62__DCCredentialStoreClient_configureWithPartitions_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __62__DCCredentialStoreClient_configureWithPartitions_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  partitionCopy = partition;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient createCredentialInPartition:options:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke_2;
  v15[3] = &unk_278E81720;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 createCredentialInPartition:partitionCopy options:optionsCopy completion:v15];
}

void __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateKeySigningKeyForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient generateKeySigningKeyForCredential:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke_2;
  v12[3] = &unk_278E81748;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 generateKeySigningKeyForCredential:credentialCopy completion:v12];
}

void __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient isAccountKeySigningKeyAvailableForAccountKeyIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E813B8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 isAccountKeySigningKeyAvailableForAccountKeyIdentifier:identifierCopy completion:v12];
}

void __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DC_LOG_CLIENT_1();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v6)
  {
    __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient createAccountKeySigningKeyForAccountKeyIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E81748;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 createAccountKeySigningKeyForAccountKeyIdentifier:identifierCopy completion:v12];
}

void __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient deleteAccountKeySigningKeyForAccountKeyIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E81340;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 deleteAccountKeySigningKeyForAccountKeyIdentifier:identifierCopy completion:v12];
}

void __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient retrieveAccountKeySigningKeyForAccountKeyIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E81748;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 retrieveAccountKeySigningKeyForAccountKeyIdentifier:identifierCopy completion:v12];
}

void __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateDeviceEncryptionKeyForCredential:(id)credential keyType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v10 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient generateDeviceEncryptionKeyForCredential:keyType:completion:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke;
  v16[3] = &unk_278E812F0;
  v11 = completionCopy;
  v17 = v11;
  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_2;
  v14[3] = &unk_278E81748;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 generateDeviceEncryptionKeyForCredential:credentialCopy keyType:type completion:v14];
}

void __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateAccountKeyAuthorizationForCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke;
  v16[3] = &unk_278E812F0;
  v9 = completionCopy;
  v17 = v9;
  identifierCopy = identifier;
  credentialCopy = credential;
  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_2;
  v14[3] = &unk_278E81770;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 generateAccountKeyAuthorizationForCredential:credentialCopy accountKeyIdentifier:identifierCopy completion:v14];
}

void __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = DC_LOG_CLIENT_1();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v11)
    {
      __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v11)
  {
    __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generatePresentmentKeyForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient generatePresentmentKeyForCredential:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke_2;
  v12[3] = &unk_278E81748;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 generatePresentmentKeyForCredential:credentialCopy completion:v12];
}

void __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v10 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient generatePresentmentKeysForCredential:numKeys:completion:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke;
  v16[3] = &unk_278E812F0;
  v11 = completionCopy;
  v17 = v11;
  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_2;
  v14[3] = &unk_278E81368;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 generatePresentmentKeysForCredential:credentialCopy numKeys:keys completion:v14];
}

void __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)authorizeDeviceKeySigningKeyOfCredential:(id)credential accountKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  credentialCopy = credential;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient authorizeDeviceKeySigningKeyOfCredential:accountKeyIdentifier:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_2;
  v15[3] = &unk_278E81318;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 authorizeDeviceKeySigningKeyOfCredential:credentialCopy accountKeyIdentifier:identifierCopy completion:v15];
}

void __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)authorizeRemoteKeySigningKeyWithCredential:(id)credential remoteKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  credentialCopy = credential;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient authorizeRemoteKeySigningKeyWithCredential:remoteKey:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_2;
  v15[3] = &unk_278E81318;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 authorizeRemoteKeySigningKeyWithCredential:credentialCopy remoteKey:keyCopy completion:v15];
}

void __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)associateExternalPresentmentKeyWithCredential:(id)credential publicKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  credentialCopy = credential;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient associateExternalPresentmentKeyWithCredential:publicKeyIdentifier:completion:];
  }

  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__DCCredentialStoreClient_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke;
  v14[3] = &unk_278E81340;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 associateExternalPresentmentKeyWithCredential:credentialCopy publicKeyIdentifier:identifierCopy completion:v14];
}

void __104__DCCredentialStoreClient_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __104__DCCredentialStoreClient_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __104__DCCredentialStoreClient_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)credentialIdentifiersForPublicKeyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient credentialIdentifiersForPublicKeyIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E81368;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 credentialIdentifiersForPublicKeyIdentifier:identifierCopy completion:v12];
}

void __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)replacePayloadOfCredential:(id)credential withPayload:(id)payload format:(unint64_t)format completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  credentialCopy = credential;
  v13 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient replacePayloadOfCredential:withPayload:format:completion:];
  }

  v14 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__DCCredentialStoreClient_replacePayloadOfCredential_withPayload_format_completion___block_invoke;
  v16[3] = &unk_278E81340;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [v14 replacePayloadOfCredential:credentialCopy withPayload:payloadCopy format:format completion:v16];
}

void __84__DCCredentialStoreClient_replacePayloadOfCredential_withPayload_format_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __84__DCCredentialStoreClient_replacePayloadOfCredential_withPayload_format_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __84__DCCredentialStoreClient_replacePayloadOfCredential_withPayload_format_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion
{
  completionCopy = completion;
  partitionsCopy = partitions;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient credentialIdentifiersInPartitions:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke_2;
  v12[3] = &unk_278E81798;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 credentialIdentifiersInPartitions:partitionsCopy completion:v12];
}

void __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)credentialIdentifiersInPartitions:(id)partitions docType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  partitionsCopy = partitions;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient credentialIdentifiersInPartitions:docType:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke_2;
  v15[3] = &unk_278E81798;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 credentialIdentifiersInPartitions:partitionsCopy docType:typeCopy completion:v15];
}

void __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)activeRegionsInPartitions:(id)partitions docTypes:(id)types completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  partitionsCopy = partitions;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient activeRegionsInPartitions:docTypes:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke_2;
  v15[3] = &unk_278E81798;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 activeRegionsInPartitions:partitionsCopy docTypes:typesCopy completion:v15];
}

void __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient deleteCredential:completion:];
  }

  v9 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__DCCredentialStoreClient_deleteCredential_completion___block_invoke;
  v11[3] = &unk_278E81340;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 deleteCredential:credentialCopy completion:v11];
}

void __55__DCCredentialStoreClient_deleteCredential_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __55__DCCredentialStoreClient_deleteCredential_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __55__DCCredentialStoreClient_deleteCredential_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)propertiesOfCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient propertiesOfCredential:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2;
  v12[3] = &unk_278E817C0;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 propertiesOfCredential:credentialCopy completion:v12];
}

void __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 code];
    v9 = DC_LOG_CLIENT_1();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 == -5015)
    {
      if (v10)
      {
        __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2_cold_2();
      }
    }

    else if (v10)
    {
      __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    v9 = DC_LOG_CLIENT_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2_cold_3();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setStateOfCredential:(id)credential to:(unint64_t)to completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v10 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient setStateOfCredential:to:completion:];
  }

  v11 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__DCCredentialStoreClient_setStateOfCredential_to_completion___block_invoke;
  v13[3] = &unk_278E81340;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 setStateOfCredential:credentialCopy to:to completion:v13];
}

void __62__DCCredentialStoreClient_setStateOfCredential_to_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __62__DCCredentialStoreClient_setStateOfCredential_to_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __62__DCCredentialStoreClient_setStateOfCredential_to_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)payloadAuthACLForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient payloadAuthACLForCredential:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke_2;
  v12[3] = &unk_278E81318;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 payloadAuthACLForCredential:credentialCopy completion:v12];
}

void __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)elementsOfCredential:(id)credential elementIdentifiers:(id)identifiers authData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  identifiersCopy = identifiers;
  credentialCopy = credential;
  v14 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient elementsOfCredential:elementIdentifiers:authData:completion:];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke;
  v20[3] = &unk_278E812F0;
  v15 = completionCopy;
  v21 = v15;
  v16 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_2;
  v18[3] = &unk_278E81798;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 elementsOfCredential:credentialCopy elementIdentifiers:identifiersCopy authData:dataCopy completion:v18];
}

void __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)checkCompletenessOfCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient checkCompletenessOfCredential:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke_2;
  v12[3] = &unk_278E817E8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 checkCompletenessOfCredential:credentialCopy completion:v12];
}

void __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DC_LOG_CLIENT_1();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke_2_cold_1();
    }
  }

  else if (v6)
  {
    __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)invalidate
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)payloadsOfCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke;
  v13[3] = &unk_278E812F0;
  v7 = completionCopy;
  v14 = v7;
  credentialCopy = credential;
  v9 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke_2;
  v11[3] = &unk_278E81368;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 payloadsOfCredential:credentialCopy completion:v11];
}

void __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)allElementsOfCredential:(id)credential authData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke;
  v16[3] = &unk_278E812F0;
  v9 = completionCopy;
  v17 = v9;
  dataCopy = data;
  credentialCopy = credential;
  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke_2;
  v14[3] = &unk_278E81798;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 allElementsOfCredential:credentialCopy authData:dataCopy completion:v14];
}

void __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)occupiedLegacySEKeySlotsWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke;
  v10[3] = &unk_278E812F0;
  v5 = completionCopy;
  v11 = v5;
  v6 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke_2;
  v8[3] = &unk_278E81368;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 occupiedLegacySEKeySlotsWithCompletion:v8];
}

void __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)eraseLegacySEKeySlot:(int64_t)slot completion:(id)completion
{
  completionCopy = completion;
  v7 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__DCCredentialStoreClient_eraseLegacySEKeySlot_completion___block_invoke;
  v9[3] = &unk_278E81340;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 eraseLegacySEKeySlot:slot completion:v9];
}

void __59__DCCredentialStoreClient_eraseLegacySEKeySlot_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __59__DCCredentialStoreClient_eraseLegacySEKeySlot_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __59__DCCredentialStoreClient_eraseLegacySEKeySlot_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clearPresentmentKeyUsageForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:completionCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__DCCredentialStoreClient_clearPresentmentKeyUsageForCredential_completion___block_invoke;
  v10[3] = &unk_278E81340;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 clearPresentmentKeyUsageForCredential:credentialCopy completion:v10];
}

void __76__DCCredentialStoreClient_clearPresentmentKeyUsageForCredential_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __76__DCCredentialStoreClient_clearPresentmentKeyUsageForCredential_completion___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __76__DCCredentialStoreClient_clearPresentmentKeyUsageForCredential_completion___block_invoke_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)keyInfoForCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke;
  v13[3] = &unk_278E812F0;
  v7 = completionCopy;
  v14 = v7;
  credentialCopy = credential;
  v9 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke_2;
  v11[3] = &unk_278E81368;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 keyInfoForCredential:credentialCopy completion:v11];
}

void __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serverConnection = [(DCCredentialStoreClient *)self serverConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__DCCredentialStoreClient_remoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278E81340;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [serverConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __61__DCCredentialStoreClient_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__DCCredentialStoreClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) createDaemonDisconnectedError];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)storePIITokenInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  completionCopy = completion;
  credentialIdentifierCopy = credentialIdentifier;
  dataCopy = data;
  identifierCopy = identifier;
  v14 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient storePIITokenInSyncableKeyStoreForIdentifier:data:credentialIdentifier:completion:];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke;
  v20[3] = &unk_278E812F0;
  v15 = completionCopy;
  v21 = v15;
  v16 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_2;
  v18[3] = &unk_278E81340;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 storePIITokenInSyncableKeyStoreForIdentifier:identifierCopy data:dataCopy credentialIdentifier:credentialIdentifierCopy completion:v18];
}

void __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient retrievePIITokenFromSyncableKeyStoreForIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E81720;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 retrievePIITokenFromSyncableKeyStoreForIdentifier:identifierCopy completion:v12];
}

void __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  completionCopy = completion;
  credentialIdentifierCopy = credentialIdentifier;
  identifierCopy = identifier;
  v11 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient deletePIITokenFromSyncableKeyStoreForIdentifier:credentialIdentifier:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke;
  v17[3] = &unk_278E812F0;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_2;
  v15[3] = &unk_278E81340;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 deletePIITokenFromSyncableKeyStoreForIdentifier:identifierCopy credentialIdentifier:credentialIdentifierCopy completion:v15];
}

void __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updatePIITokenInSyncableKeyStoreForIdentifier:(id)identifier attributesToUpdate:(id)update credentialIdentifier:(id)credentialIdentifier completion:(id)completion
{
  completionCopy = completion;
  credentialIdentifierCopy = credentialIdentifier;
  updateCopy = update;
  identifierCopy = identifier;
  v14 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient updatePIITokenInSyncableKeyStoreForIdentifier:attributesToUpdate:credentialIdentifier:completion:];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke;
  v20[3] = &unk_278E812F0;
  v15 = completionCopy;
  v21 = v15;
  v16 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_2;
  v18[3] = &unk_278E81340;
  v18[4] = self;
  v19 = v15;
  v17 = v15;
  [v16 updatePIITokenInSyncableKeyStoreForIdentifier:identifierCopy attributesToUpdate:updateCopy credentialIdentifier:credentialIdentifierCopy completion:v18];
}

void __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)storePIIHashInSyncableKeyStoreForIdentifier:(id)identifier data:(id)data keystoreType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  identifierCopy = identifier;
  v13 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient storePIIHashInSyncableKeyStoreForIdentifier:data:keystoreType:completion:];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke;
  v19[3] = &unk_278E812F0;
  v14 = completionCopy;
  v20 = v14;
  v15 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_2;
  v17[3] = &unk_278E81340;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 storePIIHashInSyncableKeyStoreForIdentifier:identifierCopy data:dataCopy keystoreType:type completion:v17];
}

void __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient retrievePIIHashFromSyncableKeyStoreForIdentifier:keystoreType:completion:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke;
  v16[3] = &unk_278E812F0;
  v11 = completionCopy;
  v17 = v11;
  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2;
  v14[3] = &unk_278E81720;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 retrievePIIHashFromSyncableKeyStoreForIdentifier:identifierCopy keystoreType:type completion:v14];
}

void __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = DC_LOG_CLIENT_1();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v8)
    {
      __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:(id)identifier keystoreType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient deletePIIHashFromSyncableKeyStoreForIdentifier:keystoreType:completion:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke;
  v16[3] = &unk_278E812F0;
  v11 = completionCopy;
  v17 = v11;
  v12 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2;
  v14[3] = &unk_278E81340;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 deletePIIHashFromSyncableKeyStoreForIdentifier:identifierCopy keystoreType:type completion:v14];
}

void __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DC_LOG_CLIENT_1();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_1();
    }
  }

  else if (v5)
  {
    __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)isPIITokenAvailableForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = DC_LOG_CLIENT_1();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DCCredentialStoreClient isPIITokenAvailableForIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke;
  v14[3] = &unk_278E812F0;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(DCCredentialStoreClient *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278E813B8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 isPIITokenAvailableForIdentifier:identifierCopy completion:v12];
}

void __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DC_LOG_CLIENT_1();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke_2_cold_1();
    }
  }

  else if (v6)
  {
    __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke_2_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureWithPartitions:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__DCCredentialStoreClient_configureWithPartitions_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__DCCredentialStoreClient_configureWithPartitions_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createCredentialInPartition:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__DCCredentialStoreClient_createCredentialInPartition_options_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateKeySigningKeyForCredential:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__DCCredentialStoreClient_generateKeySigningKeyForCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isAccountKeySigningKeyAvailableForAccountKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__DCCredentialStoreClient_isAccountKeySigningKeyAvailableForAccountKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createAccountKeySigningKeyForAccountKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__DCCredentialStoreClient_createAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteAccountKeySigningKeyForAccountKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__DCCredentialStoreClient_deleteAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveAccountKeySigningKeyForAccountKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __90__DCCredentialStoreClient_retrieveAccountKeySigningKeyForAccountKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateDeviceEncryptionKeyForCredential:keyType:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __87__DCCredentialStoreClient_generateDeviceEncryptionKeyForCredential_keyType_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __104__DCCredentialStoreClient_generateAccountKeyAuthorizationForCredential_accountKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generatePresentmentKeyForCredential:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__DCCredentialStoreClient_generatePresentmentKeyForCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generatePresentmentKeysForCredential:numKeys:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__DCCredentialStoreClient_generatePresentmentKeysForCredential_numKeys_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)authorizeDeviceKeySigningKeyOfCredential:accountKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__DCCredentialStoreClient_authorizeDeviceKeySigningKeyOfCredential_accountKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)authorizeRemoteKeySigningKeyWithCredential:remoteKey:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __91__DCCredentialStoreClient_authorizeRemoteKeySigningKeyWithCredential_remoteKey_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)associateExternalPresentmentKeyWithCredential:publicKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __104__DCCredentialStoreClient_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __104__DCCredentialStoreClient_associateExternalPresentmentKeyWithCredential_publicKeyIdentifier_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)credentialIdentifiersForPublicKeyIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __82__DCCredentialStoreClient_credentialIdentifiersForPublicKeyIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)replacePayloadOfCredential:withPayload:format:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__DCCredentialStoreClient_replacePayloadOfCredential_withPayload_format_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__DCCredentialStoreClient_replacePayloadOfCredential_withPayload_format_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)credentialIdentifiersInPartitions:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__DCCredentialStoreClient_credentialIdentifiersInPartitions_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)credentialIdentifiersInPartitions:docType:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __80__DCCredentialStoreClient_credentialIdentifiersInPartitions_docType_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)activeRegionsInPartitions:docTypes:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__DCCredentialStoreClient_activeRegionsInPartitions_docTypes_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteCredential:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__DCCredentialStoreClient_deleteCredential_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__DCCredentialStoreClient_deleteCredential_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)propertiesOfCredential:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCCredentialStoreClient_propertiesOfCredential_completion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setStateOfCredential:to:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__DCCredentialStoreClient_setStateOfCredential_to_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__DCCredentialStoreClient_setStateOfCredential_to_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)payloadAuthACLForCredential:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__DCCredentialStoreClient_payloadAuthACLForCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)elementsOfCredential:elementIdentifiers:authData:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __87__DCCredentialStoreClient_elementsOfCredential_elementIdentifiers_authData_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkCompletenessOfCredential:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__DCCredentialStoreClient_checkCompletenessOfCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__DCCredentialStoreClient_payloadsOfCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__DCCredentialStoreClient_allElementsOfCredential_authData_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__DCCredentialStoreClient_occupiedLegacySEKeySlotsWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__DCCredentialStoreClient_eraseLegacySEKeySlot_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__DCCredentialStoreClient_eraseLegacySEKeySlot_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__DCCredentialStoreClient_clearPresentmentKeyUsageForCredential_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__DCCredentialStoreClient_clearPresentmentKeyUsageForCredential_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__DCCredentialStoreClient_keyInfoForCredential_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __61__DCCredentialStoreClient_remoteObjectProxyWithErrorHandler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_24560F000, v0, OS_LOG_TYPE_ERROR, "DCCredentialStoreClient remote object proxy error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)storePIITokenInSyncableKeyStoreForIdentifier:data:credentialIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __109__DCCredentialStoreClient_storePIITokenInSyncableKeyStoreForIdentifier_data_credentialIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrievePIITokenFromSyncableKeyStoreForIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__DCCredentialStoreClient_retrievePIITokenFromSyncableKeyStoreForIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deletePIITokenFromSyncableKeyStoreForIdentifier:credentialIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __107__DCCredentialStoreClient_deletePIITokenFromSyncableKeyStoreForIdentifier_credentialIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updatePIITokenInSyncableKeyStoreForIdentifier:attributesToUpdate:credentialIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __124__DCCredentialStoreClient_updatePIITokenInSyncableKeyStoreForIdentifier_attributesToUpdate_credentialIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)storePIIHashInSyncableKeyStoreForIdentifier:data:keystoreType:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__DCCredentialStoreClient_storePIIHashInSyncableKeyStoreForIdentifier_data_keystoreType_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrievePIIHashFromSyncableKeyStoreForIdentifier:keystoreType:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __100__DCCredentialStoreClient_retrievePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deletePIIHashFromSyncableKeyStoreForIdentifier:keystoreType:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__DCCredentialStoreClient_deletePIIHashFromSyncableKeyStoreForIdentifier_keystoreType_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isPIITokenAvailableForIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__DCCredentialStoreClient_isPIITokenAvailableForIdentifier_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end