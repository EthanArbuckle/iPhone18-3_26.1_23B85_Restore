@interface THThreadNetworkCredentialsStoreLocalClient
- (THThreadNetworkCredentialsBackingStore)backingStore;
- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)group backingStore:(id)store;
- (id)parseActiveOperationalDataSet:(id)set;
- (id)parseCredsFromTLVs:(const char *)vs data_len:(unsigned int)data_len;
- (id)parseDataSetFromSpinel:(const char *)spinel data_len:(unsigned int)data_len;
- (id)parseDataSetFromTLVs:(const char *)vs data_len:(unsigned int)data_len;
- (id)parseThreadNetworkActiveDataSet:(id)set;
- (id)setFromSpinelFrame:(const char *)frame data_len:(unsigned int)data_len;
- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion;
- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion;
- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)dataset completion:(id)completion;
- (void)cleanThreadKeychainDatabase:(id)database;
- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion;
- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4;
- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7;
- (void)deletePreferredNetworkWithCompletion:(id)completion;
- (void)deleteRecordForNetwork:(id)network completion:(id)completion;
- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion;
- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllRecordsWithCompletion:(id)completion;
- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion;
- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveThirdPartyInfo:(id)info;
- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion;
- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)updatePreferredNetworkWithNewDataset:(id)dataset network:(id)network credentialsDataSet:(id)set completion:(id)completion;
- (void)validateAODInternally:(id)internally completion:(id)completion;
- (void)validateRecordWithMdnsScanWithDataSet:(id)set borderAgentID:(id)d completion:(id)completion;
@end

@implementation THThreadNetworkCredentialsStoreLocalClient

- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)group backingStore:(id)store
{
  groupCopy = group;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = THThreadNetworkCredentialsStoreLocalClient;
  v9 = [(THThreadNetworkCredentialsStoreLocalClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keychainAccessGroup, group);
    objc_storeWeak(&v10->_backingStore, storeCopy);
  }

  return v10;
}

- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __90__THThreadNetworkCredentialsStoreLocalClient_deleteRecordWithUniqueIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1004C5B70;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __90__THThreadNetworkCredentialsStoreLocalClient_deleteRecordWithUniqueIdentifier_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __90__THThreadNetworkCredentialsStoreLocalClient_deleteRecordWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __86__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsForNetwork_completion___block_invoke_2;
    v13[3] = &unk_1004C5B98;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveAllRecordsForNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __86__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsForNetwork_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __86__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsForNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __86__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsForNetwork_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = scrubRecords(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __79__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsWithCompletion___block_invoke_2;
    v10[3] = &unk_1004C5B98;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore retrieveAllRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __79__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

void __79__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __79__THThreadNetworkCredentialsStoreLocalClient_retrieveAllRecordsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = scrubRecords(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __92__THThreadNetworkCredentialsStoreLocalClient_retrieveRecordWithUniqueIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1004C5BC0;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __92__THThreadNetworkCredentialsStoreLocalClient_retrieveRecordWithUniqueIdentifier_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __92__THThreadNetworkCredentialsStoreLocalClient_retrieveRecordWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __92__THThreadNetworkCredentialsStoreLocalClient_retrieveRecordWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)deleteRecordForNetwork:(id)network completion:(id)completion
{
  completionCopy = completion;
  networkCopy = network;
  keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
  v9 = [THThreadNetworkCredentialsStoreRecord computedUniqueIdentifierForNetwork:networkCopy keychainAccessGroup:keychainAccessGroup];

  if (v9)
  {
    [(THThreadNetworkCredentialsStoreLocalClient *)self deleteRecordWithUniqueIdentifier:v9 completion:completionCopy];
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __80__THThreadNetworkCredentialsStoreLocalClient_deleteRecordForNetwork_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

void __80__THThreadNetworkCredentialsStoreLocalClient_deleteRecordForNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:4 description:@"Failed to delete record unable to calculate UUID"];;
  (*(*(a1 + 32) + 16))();
}

void __97__THThreadNetworkCredentialsStoreLocalClient_storeCredentials_waitForSync_forNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __103__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1004C5B70;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __103__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __103__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __103__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordForThreadBorderAgent_completion___block_invoke_2;
    v13[3] = &unk_1004C5B70;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteActiveDataSetRecordForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __103__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordForThreadBorderAgent_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __103__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordForThreadBorderAgent_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __99__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsForNetwork_completion___block_invoke_2;
    v13[3] = &unk_1004C5B98;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsForNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __99__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsForNetwork_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __99__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsForNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __99__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsForNetwork_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = scrubRecords(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __92__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithCompletion___block_invoke_2;
    v10[3] = &unk_1004C5B98;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __92__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

void __92__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __92__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = scrubRecords(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveThirdPartyInfo:(id)info
{
  infoCopy = info;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  v6 = backingStore;
  if (backingStore)
  {
    [backingStore retrieveThirdPartyInfo:infoCopy];
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __69__THThreadNetworkCredentialsStoreLocalClient_retrieveThirdPartyInfo___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = infoCopy;
    dispatch_async(v7, block);
  }
}

void __69__THThreadNetworkCredentialsStoreLocalClient_retrieveThirdPartyInfo___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __102__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithExtendedPANId_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithExtendedPANId:idCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __102__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithExtendedPANId_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __102__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithExtendedPANId_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __102__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithExtendedPANId_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __108__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordOnMdnsWithExtendedPANId_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:idCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __108__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordOnMdnsWithExtendedPANId_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __108__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordOnMdnsWithExtendedPANId_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __108__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordOnMdnsWithExtendedPANId_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __113__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __113__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __113__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __113__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgent_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgent_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgent_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __105__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgent_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

void __136__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup_activeFlag_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __136__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup_activeFlag_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = scrubRecords(a2);
  (*(*(a1 + 32) + 16))();
}

void __136__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup_activeFlag_compleiton___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __136__THThreadNetworkCredentialsStoreLocalClient_retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup_activeFlag_compleiton___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = scrubRecords(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (!backingStore)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __102__THThreadNetworkCredentialsStoreLocalClient_checkIfRecordForPreferredNetworkIsPresentWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
    goto LABEL_5;
  }

  if (_os_feature_enabled_impl())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __102__THThreadNetworkCredentialsStoreLocalClient_checkIfRecordForPreferredNetworkIsPresentWithCompletion___block_invoke_31;
    v9[3] = &unk_1004C5C10;
    v10 = completionCopy;
    [backingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:v9];
    v6 = v10;
LABEL_5:

    goto LABEL_9;
  }

  v8 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient checkIfRecordForPreferredNetworkIsPresentWithCompletion:];
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_9:
}

- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithNoScanWithCompletion___block_invoke_36;
      v9[3] = &unk_1004C5BE8;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkWithNoScanWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient retrievePreferredNetworkWithNoScanWithCompletion:];
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithNoScanWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

void __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithNoScanWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithNoScanWithCompletion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  else
  {
    v8 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithNoScanWithCompletion___block_invoke_36_cold_1();
    }
  }
}

- (void)retrievePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __85__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithCompletion___block_invoke_37;
      v9[3] = &unk_1004C5BE8;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient retrievePreferredNetworkWithCompletion:];
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __85__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

void __85__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __85__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithCompletion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  else
  {
    v8 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __85__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithCompletion___block_invoke_37_cold_1();
    }
  }
}

- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkInternallyWithCompletion___block_invoke_38;
      v9[3] = &unk_1004C5BE8;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkInternallyWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient retrievePreferredNetworkInternallyWithCompletion:];
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkInternallyWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

void __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkInternallyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkInternallyWithCompletion___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  else
  {
    v8 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkInternallyWithCompletion___block_invoke_38_cold_1();
    }
  }
}

- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __98__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkOfAnyDSFormatWithCompletion___block_invoke_39;
      v9[3] = &unk_1004C5BE8;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkOfAnyDSFormatWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient retrievePreferredNetworkOfAnyDSFormatWithCompletion:];
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __98__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkOfAnyDSFormatWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

void __98__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkOfAnyDSFormatWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __98__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkOfAnyDSFormatWithCompletion___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __105__THThreadNetworkCredentialsStoreLocalClient_retrieveOrGeneratePreferredNetworkInternallyWithCompletion___block_invoke_40;
      v9[3] = &unk_1004C5BE8;
      v10 = completionCopy;
      [backingStore retrieveOrGeneratePreferredNetworkInternallyWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient retrieveOrGeneratePreferredNetworkInternallyWithCompletion:];
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __105__THThreadNetworkCredentialsStoreLocalClient_retrieveOrGeneratePreferredNetworkInternallyWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

void __105__THThreadNetworkCredentialsStoreLocalClient_retrieveOrGeneratePreferredNetworkInternallyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __105__THThreadNetworkCredentialsStoreLocalClient_retrieveOrGeneratePreferredNetworkInternallyWithCompletion___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion
{
  internallyCopy = internally;
  dCopy = d;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  iDCopy = iD;
  passwordCopy = password;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __169__THThreadNetworkCredentialsStoreLocalClient_addPreferredNetworkWithCompletionInternally_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke_2;
    v27[3] = &unk_1004C5B70;
    v23 = &v28;
    v28 = completionCopy;
    v24 = completionCopy;
    [backingStore addPreferredNetworkWithCompletionInternally:internallyCopy borderAgentID:dCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:iDCopy wifiPassword:passwordCopy completion:v27];
  }

  else
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __169__THThreadNetworkCredentialsStoreLocalClient_addPreferredNetworkWithCompletionInternally_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v23 = &v30;
    v30 = completionCopy;
    v26 = completionCopy;
    dispatch_async(v25, block);
  }
}

void __169__THThreadNetworkCredentialsStoreLocalClient_addPreferredNetworkWithCompletionInternally_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7
{
  completionCopy = completion;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  dCopy = d;
  v16 = a7;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __164__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkForNetworkSignatureInternallyWithCompletion_ipv4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke_2;
    v22[3] = &unk_1004C5B70;
    v18 = &v23;
    v23 = v16;
    v19 = v16;
    [backingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:completionCopy ipv4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:dCopy completion:v22];
  }

  else
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __164__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkForNetworkSignatureInternallyWithCompletion_ipv4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v18 = &v25;
    v25 = v16;
    v21 = v16;
    dispatch_async(v20, block);
  }
}

void __164__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkForNetworkSignatureInternallyWithCompletion_ipv4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v7 = a4;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __99__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkEntryWithCompletion_completion___block_invoke_2;
    v13[3] = &unk_1004C5B70;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [backingStore deletePreferredNetworkEntryWithCompletion:completionCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __99__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkEntryWithCompletion_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

void __99__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkEntryWithCompletion_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deletePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __83__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkWithCompletion___block_invoke_2;
    v10[3] = &unk_1004C5B70;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore deletePreferredNetworkWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __83__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

void __83__THThreadNetworkCredentialsStoreLocalClient_deletePreferredNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __99__THThreadNetworkCredentialsStoreLocalClient_deletePreferredAndFrozenThreadNetworksWithCompletion___block_invoke_2;
    v10[3] = &unk_1004C5B70;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore deletePreferredAndFrozenThreadNetworksWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __99__THThreadNetworkCredentialsStoreLocalClient_deletePreferredAndFrozenThreadNetworksWithCompletion___block_invoke;
    block[3] = &unk_1004C5798;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

void __99__THThreadNetworkCredentialsStoreLocalClient_deletePreferredAndFrozenThreadNetworksWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete all records locally Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __90__THThreadNetworkCredentialsStoreLocalClient_storeCachedAODasPreferredNetwork_completion___block_invoke_2;
    v13[3] = &unk_1004C5900;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore storeCachedAODasPreferredNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __90__THThreadNetworkCredentialsStoreLocalClient_storeCachedAODasPreferredNetwork_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __90__THThreadNetworkCredentialsStoreLocalClient_storeCachedAODasPreferredNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __138__THThreadNetworkCredentialsStoreLocalClient_storeThreadNetworkCredentialActiveDataSet_network_credentialsDataSet_waitForSync_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __138__THThreadNetworkCredentialsStoreLocalClient_storeThreadNetworkCredentialActiveDataSet_network_credentialsDataSet_waitForSync_completion___block_invoke_44(uint64_t a1)
{
  v2 = [NSError storeError:29 description:@"Failed to store record Invalid Dataset"];;
  (*(*(a1 + 32) + 16))();
}

- (void)updatePreferredNetworkWithNewDataset:(id)dataset network:(id)network credentialsDataSet:(id)set completion:(id)completion
{
  datasetCopy = dataset;
  networkCopy = network;
  setCopy = set;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    dataSetArray = [setCopy dataSetArray];
    v16 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseThreadNetworkActiveDataSet:dataSetArray];

    if (v16)
    {
      v17 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
      keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
      v19 = [v17 initWithBorderAgent:datasetCopy credentialsDataSet:setCopy network:networkCopy credentials:v16 uniqueIdentifier:0 keychainAccessGroup:keychainAccessGroup creationDate:0 lastModificationDate:0];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __121__THThreadNetworkCredentialsStoreLocalClient_updatePreferredNetworkWithNewDataset_network_credentialsDataSet_completion___block_invoke_2;
      v23[3] = &unk_1004C5C38;
      v24 = completionCopy;
      [backingStore updatePreferredNetworkWithNewDatasetRecord:v19 completion:v23];
    }

    else
    {
      v21 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient storeThreadNetworkCredentialActiveDataSet:network:credentialsDataSet:waitForSync:completion:];
      }

      v22 = dispatch_get_global_queue(0, 0);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __121__THThreadNetworkCredentialsStoreLocalClient_updatePreferredNetworkWithNewDataset_network_credentialsDataSet_completion___block_invoke_49;
      v25[3] = &unk_1004C5798;
      v26 = completionCopy;
      dispatch_async(v22, v25);

      v19 = v26;
    }
  }

  else
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __121__THThreadNetworkCredentialsStoreLocalClient_updatePreferredNetworkWithNewDataset_network_credentialsDataSet_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v28 = completionCopy;
    dispatch_async(v20, block);

    v16 = v28;
  }
}

void __121__THThreadNetworkCredentialsStoreLocalClient_updatePreferredNetworkWithNewDataset_network_credentialsDataSet_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __121__THThreadNetworkCredentialsStoreLocalClient_updatePreferredNetworkWithNewDataset_network_credentialsDataSet_completion___block_invoke_49(uint64_t a1)
{
  v2 = [NSError storeError:29 description:@"Failed to store record Invalid Dataset"];;
  (*(*(a1 + 32) + 16))();
}

void __150__THThreadNetworkCredentialsStoreLocalClient_storeThreadNetworkCredentialActiveDataSet_network_credentials_credentialsDataSet_waitForSync_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

void __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

void __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __128__THThreadNetworkCredentialsStoreLocalClient_retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __126__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke_2;
    v13[3] = &unk_1004C5B70;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __126__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

void __126__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __126__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke_2;
    v13[3] = &unk_1004C5B70;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __126__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

void __126__THThreadNetworkCredentialsStoreLocalClient_deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to delete active dataset record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)validateRecordWithMdnsScanWithDataSet:(id)set borderAgentID:(id)d completion:(id)completion
{
  setCopy = set;
  dCopy = d;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v12 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseActiveOperationalDataSet:setCopy];
    v13 = v12;
    if (v12)
    {
      network = [v12 network];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __109__THThreadNetworkCredentialsStoreLocalClient_validateRecordWithMdnsScanWithDataSet_borderAgentID_completion___block_invoke_3;
      v18[3] = &unk_1004C5C60;
      v15 = &v20;
      v20 = completionCopy;
      v19 = v13;
      [backingStore validateRecordWithMdnsScan:network borderAgentID:dCopy completion:v18];

      v16 = v19;
    }

    else
    {
      v16 = dispatch_get_global_queue(0, 0);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __109__THThreadNetworkCredentialsStoreLocalClient_validateRecordWithMdnsScanWithDataSet_borderAgentID_completion___block_invoke_2;
      v21[3] = &unk_1004C5798;
      v15 = &v22;
      v22 = completionCopy;
      dispatch_async(v16, v21);
    }
  }

  else
  {
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __109__THThreadNetworkCredentialsStoreLocalClient_validateRecordWithMdnsScanWithDataSet_borderAgentID_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v24 = completionCopy;
    dispatch_async(v17, block);

    v13 = v24;
  }
}

void __109__THThreadNetworkCredentialsStoreLocalClient_validateRecordWithMdnsScanWithDataSet_borderAgentID_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:18 description:@"Failed to run mdns check Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __109__THThreadNetworkCredentialsStoreLocalClient_validateRecordWithMdnsScanWithDataSet_borderAgentID_completion___block_invoke_2(uint64_t a1)
{
  v2 = [NSError storeError:18 description:@"Failed to run mdns check Unable to parse the Active Operational Data Set"];;
  (*(*(a1 + 32) + 16))();
}

void __109__THThreadNetworkCredentialsStoreLocalClient_validateRecordWithMdnsScanWithDataSet_borderAgentID_completion___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v7 = [v4 network];
    (*(v3 + 16))(v3, 1);
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = a3;
    v6(v3, 0, 0);
  }
}

- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)dataset completion:(id)completion
{
  datasetCopy = dataset;
  completionCopy = completion;
  if (datasetCopy)
  {
    backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
    if (!backingStore)
    {
      v11 = dispatch_get_global_queue(0, 0);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_58;
      v16[3] = &unk_1004C5798;
      v17 = completionCopy;
      dispatch_async(v11, v16);

      v9 = v17;
      goto LABEL_7;
    }

    if (_os_feature_enabled_impl())
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_59;
      v13[3] = &unk_1004C5C88;
      v14 = datasetCopy;
      v15 = completionCopy;
      [backingStore retrievePreferredNetworkWithCompletion:v13];

      v9 = v14;
LABEL_7:

      goto LABEL_11;
    }

    v12 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient checkIsPreferredNetworkForActiveOperationalDataset:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v19 = completionCopy;
    dispatch_async(v10, block);

    backingStore = v19;
  }

LABEL_11:
}

uint64_t __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke(uint64_t a1)
{
  v2 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_58(uint64_t a1)
{
  v2 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_58_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    goto LABEL_8;
  }

  v7 = [v5 credentialsDataSet];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v6 credentialsDataSet];
  v10 = [v9 dataSetArray];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *(a1 + 32);
  v12 = [v6 credentialsDataSet];
  v13 = [v12 dataSetArray];
  LODWORD(v11) = [v11 isEqualToData:v13];

  if (v11)
  {
    v14 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[THThreadNetworkCredentialsStoreLocalClient checkIsPreferredNetworkForActiveOperationalDataset:completion:]_block_invoke";
      v17 = 1024;
      v18 = 881;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %d: Given dataset matches with Preferred Network", &v15, 0x12u);
    }
  }

  else
  {
LABEL_8:
    v14 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_59_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __93__THThreadNetworkCredentialsStoreLocalClient_updatePreferredNetworkInternallyWithCompletion___block_invoke;
    v6[3] = &unk_1004C5CB0;
    v7 = completionCopy;
    [backingStore updatePreferredNetworkInternallyWithCompletion:v6];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)cleanThreadKeychainDatabase:(id)database
{
  databaseCopy = database;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __74__THThreadNetworkCredentialsStoreLocalClient_cleanThreadKeychainDatabase___block_invoke_2;
    v10[3] = &unk_1004C5B70;
    v6 = &v11;
    v11 = databaseCopy;
    v7 = databaseCopy;
    [backingStore cleanThreadKeychainDatabase:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __74__THThreadNetworkCredentialsStoreLocalClient_cleanThreadKeychainDatabase___block_invoke;
    block[3] = &unk_1004C5798;
    v6 = &v13;
    v13 = databaseCopy;
    v9 = databaseCopy;
    dispatch_async(v8, block);
  }
}

void __74__THThreadNetworkCredentialsStoreLocalClient_cleanThreadKeychainDatabase___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to store record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (void)validateAODInternally:(id)internally completion:(id)completion
{
  internallyCopy = internally;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __79__THThreadNetworkCredentialsStoreLocalClient_validateAODInternally_completion___block_invoke_2;
    v13[3] = &unk_1004C5BE8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore validateAODInternally:internallyCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __79__THThreadNetworkCredentialsStoreLocalClient_validateAODInternally_completion___block_invoke;
    block[3] = &unk_1004C5798;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

void __79__THThreadNetworkCredentialsStoreLocalClient_validateAODInternally_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:18 description:@"Failed to run mdns check Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void __171__THThreadNetworkCredentialsStoreLocalClient_retrieveListOfPreferredNetworksInternallyWithCompletion_ipV4NwSignature_ipv6NwSignature_wifiSSID_showCurrentEntry_completion___block_invoke(uint64_t a1)
{
  v2 = [NSError storeError:38 description:@"Failed to read Preferred network entries Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

- (id)setFromSpinelFrame:(const char *)frame data_len:(unsigned int)data_len
{
  v6 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient setFromSpinelFrame:data_len:];
  }

  encode_data_into_string(frame, data_len, v69, 0x3E8uLL, 0);
  v7 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient setFromSpinelFrame:data_len:];
  }

  if (data_len)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v47 = 0;
    while (1)
    {
      v11 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v66 = data_len;
        *&v66[4] = 1024;
        *&v66[6] = 973;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#MOS : data_len : %d, Line : %d", buf, 0xEu);
      }

      v54 = 0;
      v53 = 0;
      v17 = spinel_datatype_unpack(frame, data_len, "d", v12, v13, v14, v15, v16, &v54);
      v18 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v66 = v17;
        *&v66[4] = 1024;
        *&v66[6] = 985;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#MOS : length : %d, Line : %d", buf, 0xEu);
      }

      if (v17 < 1)
      {
        goto LABEL_53;
      }

      v52 = 0;
      v51 = 0;
      v50 = 0;
      v46 = &v51;
      v24 = spinel_datatype_unpack(v54, v53, "iD", v19, v20, v21, v22, v23, &v52);
      v25 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v66 = v52;
        *&v66[4] = 1024;
        *&v66[6] = v24;
        v67 = 1024;
        v68 = 1006;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#MOS : propkey : %d, length: %d, Line : %d", buf, 0x14u);
      }

      if (v24 < 1)
      {
        goto LABEL_53;
      }

      if (v52 > 69)
      {
        if (v52 == 75)
        {
          v39 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [(THThreadNetworkCredentialsStoreLocalClient *)v57 setFromSpinelFrame:v58 data_len:v39];
          }

          v40 = [NSData dataWithBytes:v51 length:v50];

          v41 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138739971;
            *v66 = v40;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#MOS : PSKc : %{sensitive}@", buf, 0xCu);
          }

          v10 = v40;
          goto LABEL_45;
        }

        if (v52 == 70)
        {
          if (!v50)
          {
            goto LABEL_53;
          }

          v35 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [(THThreadNetworkCredentialsStoreLocalClient *)v63 setFromSpinelFrame:v64 data_len:v35];
          }

          v34 = [NSData dataWithBytes:v51 length:v50];

          v36 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138739971;
            *v66 = v34;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#MOS : Master Key: %{sensitive}@", buf, 0xCu);
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v52 == 33)
        {
          LOBYTE(v49) = 0;
          if (spinel_datatype_unpack(v51, v50, "C", v26, v27, v28, v29, v30, &v49) < 1)
          {
            goto LABEL_53;
          }

          v38 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [(THThreadNetworkCredentialsStoreLocalClient *)v59 setFromSpinelFrame:v60 data_len:v38];
          }

          v47 = v49;
          v37 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v66 = v49;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#MOS : Channel : %d", buf, 8u);
          }

          goto LABEL_39;
        }

        if (v52 == 54)
        {
          v49 = 0;
          if (spinel_datatype_unpack(v51, v50, "S", v26, v27, v28, v29, v30, &v49) < 1)
          {
            goto LABEL_53;
          }

          v31 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(THThreadNetworkCredentialsStoreLocalClient *)v61 setFromSpinelFrame:v62 data_len:v31];
          }

          v48 = bswap32(v49) >> 16;
          v32 = [NSData dataWithBytes:&v48 length:2];

          v33 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v66 = v48;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#MOS : PANID : %hu", buf, 8u);
          }

          v34 = v9;
          v8 = v32;
          goto LABEL_46;
        }
      }

      v37 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [(THThreadNetworkCredentialsStoreLocalClient *)v55 setFromSpinelFrame:v56 data_len:v37];
      }

LABEL_39:

LABEL_45:
      v34 = v9;
LABEL_46:
      frame += v17;
      v9 = v34;
      data_len -= v17;
      if (!data_len)
      {
        goto LABEL_49;
      }
    }
  }

  v47 = 0;
  v10 = 0;
  v34 = 0;
  v8 = 0;
LABEL_49:
  LOBYTE(v46) = 1;
  v42 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v34 passPhrase:0 PSKc:v10 channel:v47 PANID:v8 userInfo:0 credentialDataSet:0 isActiveDevice:v46];
  if (v42)
  {
    v43 = v42;
    v44 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient setFromSpinelFrame:data_len:];
    }
  }

  else
  {
    v9 = v34;
LABEL_53:
    v44 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient setFromSpinelFrame:data_len:];
    }

    v43 = 0;
    v34 = v9;
  }

  return v43;
}

- (id)parseDataSetFromSpinel:(const char *)spinel data_len:(unsigned int)data_len
{
  v6 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
  }

  encode_data_into_string(spinel, data_len, v78, 0x3E8uLL, 0);
  v7 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
  }

  if (data_len)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v62 = 0;
    while (1)
    {
      v13 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = data_len;
        *&v75[4] = 1024;
        *&v75[6] = 1119;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: #MOS : data_len : %d, Line : %d", buf, 0x18u);
      }

      v69 = 0;
      v68 = 0;
      v19 = spinel_datatype_unpack(spinel, data_len, "d", v14, v15, v16, v17, v18, &v69);
      v20 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = v19;
        *&v75[4] = 1024;
        *&v75[6] = 1131;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : length : %d, Line : %d", buf, 0x18u);
      }

      if (v19 < 1)
      {
        goto LABEL_84;
      }

      v67 = 0;
      v66 = 0;
      v65 = 0;
      v61 = &v66;
      v26 = spinel_datatype_unpack(v69, v68, "iD", v21, v22, v23, v24, v25, &v67);
      v27 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = v67;
        *&v75[4] = 1024;
        *&v75[6] = v26;
        v76 = 1024;
        v77 = 1152;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: #MOS : propkey : %d, length: %d, Line : %d", buf, 0x1Eu);
      }

      if (v26 < 1)
      {
LABEL_84:
        v57 = 0;
        v34 = v8;
        goto LABEL_85;
      }

      if (v67 > 68)
      {
        break;
      }

      if (v67 == 33)
      {
        LOBYTE(v64) = 0;
        if (spinel_datatype_unpack(v66, v65, "C", v28, v29, v30, v31, v32, &v64) < 1)
        {
          goto LABEL_84;
        }

        v40 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1233;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
        }

        v62 = v64;
        v41 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = v64;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s: #MOS : Channel : %d", buf, 0x12u);
        }

LABEL_47:

        goto LABEL_60;
      }

      if (v67 == 54)
      {
        LOWORD(v64) = 0;
        if (spinel_datatype_unpack(v66, v65, "S", v28, v29, v30, v31, v32, &v64) < 1)
        {
          goto LABEL_84;
        }

        v45 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1213;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        v63 = bswap32(v64) >> 16;
        v46 = [NSData dataWithBytes:&v63 length:2];

        v47 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = v63;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %hu", buf, 0x12u);
        }

        v10 = v46;
        goto LABEL_60;
      }

      if (v67 != 68)
      {
        goto LABEL_45;
      }

      v64 = 0;
      if (spinel_datatype_unpack(v66, v65, "U", v28, v29, v30, v31, v32, &v64) < 1)
      {
        goto LABEL_84;
      }

      v33 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = 1170;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
      }

      v34 = [NSString stringWithUTF8String:v64];

      v35 = THCredentialsServerLogHandleForCategory(1);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      if (!v34)
      {
        if (v36)
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
        }

        v8 = 0;
        goto LABEL_84;
      }

      if (v36)
      {
        *buf = 136315394;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 2112;
        *v75 = v34;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s : #MOS : Network Name : %@", buf, 0x16u);
      }

LABEL_61:
      spinel += v19;
      v8 = v34;
      data_len -= v19;
      if (!data_len)
      {
        goto LABEL_64;
      }
    }

    switch(v67)
    {
      case 'E':
        if (!v65)
        {
          goto LABEL_84;
        }

        v42 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1184;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
        }

        v43 = [NSData dataWithBytes:v66 length:v65];

        v44 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 2112;
          *v75 = v43;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
        }

        v9 = v43;
        break;
      case 'F':
        if (!v65)
        {
          goto LABEL_84;
        }

        v48 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1194;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
        }

        v49 = [NSData dataWithBytes:v66 length:v65];

        v50 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 2117;
          *v75 = v49;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
        }

        v11 = v49;
        break;
      case 'K':
        v37 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1243;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
        }

        v38 = [NSData dataWithBytes:v66 length:v65];

        v39 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 2117;
          *v75 = v38;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
        }

        v12 = v38;
        break;
      default:
LABEL_45:
        v41 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [(THThreadNetworkCredentialsStoreLocalClient *)v70 parseDataSetFromSpinel:v71 data_len:v41];
        }

        goto LABEL_47;
    }

LABEL_60:
    v34 = v8;
    goto LABEL_61;
  }

  v62 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v34 = 0;
LABEL_64:
  LOBYTE(v61) = 1;
  v51 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v11 passPhrase:0 PSKc:v12 channel:v62 PANID:v10 userInfo:0 credentialDataSet:0 isActiveDevice:v61];
  v52 = THCredentialsServerLogHandleForCategory(1);
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
  if (v51)
  {
    if (v53)
    {
      [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
    }

    v54 = [[THThreadNetwork alloc] initWithName:v34 extendedPANID:v9];
    if (v54)
    {
      v55 = v54;
      v56 = [[THThreadNetworkCredentialsStoreRecord alloc] initWithNetwork:v54 credentials:v51 uniqueIdentifier:0 keychainAccessGroup:@"com.apple.thread.network" creationDate:0 lastModificationDate:0];
      if (v56)
      {
        v57 = v56;

        goto LABEL_85;
      }

      v59 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
      }
    }

    else
    {
      v58 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
      }
    }
  }

  else
  {
    if (v53)
    {
      [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
    }
  }

  v57 = 0;
LABEL_85:

  return v57;
}

- (id)parseActiveOperationalDataSet:(id)set
{
  setCopy = set;
  setCopy2 = set;
  bytes = [setCopy2 bytes];
  v8 = [setCopy2 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseDataSetFromTLVs:bytes data_len:v8];
}

- (id)parseThreadNetworkActiveDataSet:(id)set
{
  setCopy = set;
  setCopy2 = set;
  bytes = [setCopy2 bytes];
  v8 = [setCopy2 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseCredsFromTLVs:bytes data_len:v8];
}

- (id)parseDataSetFromTLVs:(const char *)vs data_len:(unsigned int)data_len
{
  v6 = +[NSMutableSet set];
  v7 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
  }

  encode_data_into_string(vs, data_len, v73, 0x3E8uLL, 0);
  v8 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
  }

  if (data_len)
  {
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    LOBYTE(v62) = 0;
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (v10 >= data_len)
      {
        v54 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
        }

        goto LABEL_113;
      }

      v11 = vs[v10];
      v12 = v9 + 2;
      v13 = v9 + 2 + v11;
      if (v13 > data_len)
      {
        v54 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
        }

LABEL_113:

        v50 = 0;
        v52 = 0;
        v46 = 0;
        v42 = v66;
        v41 = v67;
        v44 = v64;
        v43 = v65;
        v45 = v63;
        goto LABEL_130;
      }

      v14 = vs[v9];
      v15 = [NSNumber numberWithChar:v14];
      if ([v6 containsObject:v15])
      {
        v18 = THCredentialsServerLogHandleForCategory(1);
        v42 = v66;
        v41 = v67;
        v44 = v64;
        v43 = v65;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsKeychainBackingStore areValidDataSetTLVs:creds:updateATS:isATSAppended:];
        }

        goto LABEL_127;
      }

      [v6 addObject:v15];
      if (v14 <= 4)
      {
        break;
      }

      if (v14 <= 11)
      {
        if (v14 == 5)
        {
          v31 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 1024;
            *v72 = 1579;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v11 != 16)
          {
            v18 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
            }

LABEL_126:
            v42 = v66;
            v41 = v67;
            v44 = v64;
            v43 = v65;
LABEL_127:
            v45 = v63;
            goto LABEL_128;
          }

          v32 = [NSData dataWithBytes:&vs[v12] length:16];

          v18 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 2117;
            *v72 = v32;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v65 = v32;
          goto LABEL_84;
        }

        if (v14 != 7)
        {
          goto LABEL_83;
        }

        v25 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1609;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
        }

        if (v11 != 8)
        {
          v18 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
          }

          goto LABEL_126;
        }
      }

      else
      {
        switch(v14)
        {
          case 12:
            v35 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
              v71 = 1024;
              *v72 = 1594;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v11 - 3) >= 2)
            {
              v18 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
              }

              goto LABEL_126;
            }

            if (!vs[v12] && !vs[v9 + 3])
            {
              v18 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
              }

              goto LABEL_126;
            }

            break;
          case 14:
            v39 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", buf, 2u);
            }

            if (v11 != 8)
            {
              v18 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsKeychainBackingStore areValidDataSetTLVs:creds:updateATS:isATSAppended:];
              }

              goto LABEL_126;
            }

            v40 = [NSData dataWithBytes:&vs[v12] length:8];

            if (!v40)
            {
              v18 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsKeychainBackingStore areValidDataSetTLVs:creds:updateATS:isATSAppended:];
              }

              v45 = 0;
              v42 = v66;
              v41 = v67;
              v44 = v64;
              v43 = v65;
LABEL_128:

LABEL_129:
              v50 = 0;
              v52 = 0;
              v46 = 0;
              goto LABEL_130;
            }

            v63 = v40;
            break;
          case 53:
            v19 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
              v71 = 1024;
              *v72 = 1450;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v20 = v9 + 3;
            while (v20 - 1 < v13)
            {
              if (v20 >= v13 || v20 + 5 > v13)
              {
                v18 = THCredentialsServerLogHandleForCategory(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
                }

                goto LABEL_126;
              }

              if ((vs[v20 - 1] & 0xFD) != 0)
              {
                v18 = THCredentialsServerLogHandleForCategory(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
                }

                goto LABEL_126;
              }

              v22 = vs[v20];
              v20 += 6;
              if (v22 != 4)
              {
                v18 = THCredentialsServerLogHandleForCategory(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
                }

                goto LABEL_126;
              }
            }

            break;
          default:
LABEL_83:
            v18 = THCredentialsServerLogHandleForCategory(1);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_84;
            }

            *buf = 136315650;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 1024;
            *v72 = v14;
            *&v72[4] = 1024;
            *&v72[6] = 1633;
            v28 = v18;
            v29 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
            v30 = 24;
LABEL_89:
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
            goto LABEL_84;
        }
      }

LABEL_86:

      v9 = v13;
      if (v13 >= data_len)
      {
        goto LABEL_91;
      }
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1533;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        if (v11 != 2)
        {
          v18 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
          }

          goto LABEL_126;
        }

        v24 = [NSData dataWithBytes:&vs[v12] length:2];

        v18 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2112;
          *v72 = v24;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
        }

        v66 = v24;
        goto LABEL_84;
      }

      v26 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = 1499;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
      }

      if (v11 != 3)
      {
        v18 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
        }

        goto LABEL_126;
      }

      if (vs[v12])
      {
        v18 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:? data_len:?];
        }

        goto LABEL_126;
      }

      v62 = vs[v9 + 4];
      v18 = THCredentialsServerLogHandleForCategory(1);
      v27 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if ((v62 - 27) <= 0xEFu)
      {
        if (v27)
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
        }

        goto LABEL_126;
      }

      if (v27)
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = v62;
        v28 = v18;
        v29 = "%s: #MOS : Channel : %d";
        v30 = 18;
        goto LABEL_89;
      }

LABEL_84:
      v37 = v68;
    }

    else
    {
      if (v14 == 2)
      {
        v33 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1548;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
        }

        if (v11 != 8)
        {
          v18 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
          }

          goto LABEL_126;
        }

        v34 = [NSData dataWithBytes:&vs[v12] length:8];

        v18 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2112;
          *v72 = v34;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
        }

        v67 = v34;
        goto LABEL_84;
      }

      if (v14 != 3)
      {
        v16 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1563;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
        }

        if (v11 != 16)
        {
          v18 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
          }

          goto LABEL_126;
        }

        v17 = [NSData dataWithBytes:&vs[v12] length:16];

        v18 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2117;
          *v72 = v17;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
        }

        v64 = v17;
        goto LABEL_84;
      }

      __memcpy_chk();
      v74[v11] = 0;
      v36 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = 1488;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
      }

      v37 = [NSString stringWithUTF8String:v74];

      v18 = THCredentialsServerLogHandleForCategory(1);
      v38 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (!v37)
      {
        if (v38)
        {
          [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
        }

        v68 = 0;
        goto LABEL_126;
      }

      if (v38)
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 2112;
        *v72 = v37;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s : #MOS : Network Name : %@", buf, 0x16u);
      }
    }

    v68 = v37;
    goto LABEL_86;
  }

  v63 = 0;
  v64 = 0;
  LOBYTE(v62) = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
LABEL_91:
  v42 = v66;
  v41 = v67;
  v44 = v64;
  v43 = v65;
  v45 = v63;
  if (!v68 || !v67 || !v65 || !v64 || !v66 || !v62 || !v63)
  {
    v53 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
    }

    goto LABEL_129;
  }

  LOBYTE(v61) = 1;
  v46 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v65 passPhrase:0 PSKc:v64 channel:v62 PANID:v66 userInfo:0 credentialDataSet:0 isActiveDevice:v61];
  v47 = THCredentialsServerLogHandleForCategory(1);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
  if (!v46)
  {
    if (v48)
    {
      [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
    }

    goto LABEL_129;
  }

  if (v48)
  {
    [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:];
  }

  v49 = [[THThreadNetwork alloc] initWithName:v68 extendedPANID:v67];
  if (v49)
  {
    v50 = v49;
    v51 = [[THThreadNetworkCredentialsStoreRecord alloc] initWithNetwork:v49 credentials:v46 uniqueIdentifier:0 keychainAccessGroup:@"com.apple.thread.network" creationDate:0 lastModificationDate:0];
    if (v51)
    {
      v52 = v51;
      goto LABEL_130;
    }

    v58 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
    }
  }

  else
  {
    v55 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:];
    }

    v50 = 0;
  }

  v52 = 0;
LABEL_130:

  return v52;
}

- (id)parseCredsFromTLVs:(const char *)vs data_len:(unsigned int)data_len
{
  v6 = +[NSMutableSet set];
  v7 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
  }

  encode_data_into_string(vs, data_len, v67, 0x3E8uLL, 0);
  v8 = THCredentialsServerLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
  }

  if (data_len)
  {
    v9 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    LOBYTE(v57) = 0;
    v62 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (v11 >= data_len)
      {
        v16 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
        }

        goto LABEL_111;
      }

      v12 = vs[v11];
      v13 = v10 + 2;
      v14 = v10 + 2 + v12;
      if (v14 > data_len)
      {
        v16 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
        }

LABEL_111:
        v44 = v60;
        v43 = v61;
        v46 = v58;
        v45 = v59;
        goto LABEL_120;
      }

      v15 = vs[v10];
      v16 = [NSNumber numberWithChar:v15];
      if ([v6 containsObject:v16])
      {
        v17 = v9;
        v20 = THCredentialsServerLogHandleForCategory(1);
        v44 = v60;
        v43 = v61;
        v46 = v58;
        v45 = v59;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsKeychainBackingStore areValidDataSetTLVs:creds:updateATS:isATSAppended:];
        }

        goto LABEL_119;
      }

      [v6 addObject:v16];
      if (v15 <= 4)
      {
        break;
      }

      if (v15 <= 11)
      {
        if (v15 == 5)
        {
          v17 = v9;
          v30 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 1024;
            *v66 = 1895;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v12 != 16)
          {
            v20 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
            }

LABEL_118:
            v44 = v60;
            v43 = v61;
            v46 = v58;
            v45 = v59;
LABEL_119:

            v9 = v17;
LABEL_120:

LABEL_121:
            v49 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
            }

            v48 = 0;
            goto LABEL_124;
          }

          v31 = [NSData dataWithBytes:&vs[v13] length:16];

          v20 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 2117;
            *v66 = v31;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v59 = v31;
LABEL_67:
          v34 = v17;
          goto LABEL_68;
        }

        if (v15 == 7)
        {
          v17 = v9;
          v27 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 1024;
            *v66 = 1925;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
          }

          if (v12 != 8)
          {
            v20 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
            }

            goto LABEL_118;
          }

          goto LABEL_85;
        }
      }

      else
      {
        switch(v15)
        {
          case 12:
            v17 = v9;
            v35 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
              v65 = 1024;
              *v66 = 1910;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v12 - 3) >= 2)
            {
              v20 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
              }

              goto LABEL_118;
            }

            if (!vs[v13] && !vs[v10 + 3])
            {
              v20 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
              }

              goto LABEL_118;
            }

            goto LABEL_85;
          case 14:
            v17 = v9;
            v41 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", buf, 2u);
            }

            if (v12 != 8)
            {
              v20 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsKeychainBackingStore areValidDataSetTLVs:creds:updateATS:isATSAppended:];
              }

              goto LABEL_118;
            }

            v42 = [NSData dataWithBytes:&vs[v13] length:8];

            if (!v42)
            {
              v20 = THCredentialsServerLogHandleForCategory(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                [THThreadNetworkCredentialsKeychainBackingStore areValidDataSetTLVs:creds:updateATS:isATSAppended:];
              }

              v62 = 0;
              goto LABEL_118;
            }

            v62 = v42;
LABEL_85:
            v9 = v17;
            goto LABEL_86;
          case 53:
            v21 = THCredentialsServerLogHandleForCategory(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
              v65 = 1024;
              *v66 = 1766;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v22 = v10 + 3;
            while (v22 - 1 < v14)
            {
              if (v22 >= v14 || v22 + 5 > v14)
              {
                v17 = v9;
                v20 = THCredentialsServerLogHandleForCategory(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
                }

                goto LABEL_118;
              }

              if ((vs[v22 - 1] & 0xFD) != 0)
              {
                v17 = v9;
                v20 = THCredentialsServerLogHandleForCategory(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
                }

                goto LABEL_118;
              }

              v24 = vs[v22];
              v22 += 6;
              if (v24 != 4)
              {
                v17 = v9;
                v20 = THCredentialsServerLogHandleForCategory(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
                }

                goto LABEL_118;
              }
            }

            goto LABEL_86;
        }
      }

      v34 = v9;
      v20 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = v15;
        *&v66[4] = 1024;
        *&v66[6] = 1949;
        v38 = v20;
        v39 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
        v40 = 24;
LABEL_90:
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
      }

LABEL_68:

      v9 = v34;
LABEL_86:

      v10 = v14;
      if (v14 >= data_len)
      {
        goto LABEL_92;
      }
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        v17 = v9;
        v25 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1849;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        if (v12 != 2)
        {
          v20 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
          }

          goto LABEL_118;
        }

        v26 = [NSData dataWithBytes:&vs[v13] length:2];

        v20 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 2112;
          *v66 = v26;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
        }

        v60 = v26;
      }

      else
      {
        v28 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1815;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
        }

        v17 = v9;
        if (v12 != 3)
        {
          v20 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
          }

          goto LABEL_118;
        }

        if (vs[v13])
        {
          v20 = THCredentialsServerLogHandleForCategory(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:? data_len:?];
          }

          goto LABEL_118;
        }

        v57 = vs[v10 + 4];
        v20 = THCredentialsServerLogHandleForCategory(1);
        v29 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if ((v57 - 27) <= 0xEFu)
        {
          if (v29)
          {
            [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
          }

          goto LABEL_118;
        }

        if (v29)
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = v57;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : Channel : %d", buf, 0x12u);
        }
      }
    }

    else if (v15 == 2)
    {
      v17 = v9;
      v32 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = 1864;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
      }

      if (v12 != 8)
      {
        v20 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
        }

        goto LABEL_118;
      }

      v33 = [NSData dataWithBytes:&vs[v13] length:8];

      v20 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2112;
        *v66 = v33;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
      }

      v61 = v33;
    }

    else
    {
      if (v15 == 3)
      {
        __memcpy_chk();
        v68[v12] = 0;
        v36 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1804;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
        }

        v34 = [NSString stringWithUTF8String:v68];

        v20 = THCredentialsServerLogHandleForCategory(1);
        v37 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (!v34)
        {
          if (v37)
          {
            [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
          }

          v17 = 0;
          goto LABEL_118;
        }

        if (!v37)
        {
          goto LABEL_68;
        }

        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2112;
        *v66 = v34;
        v38 = v20;
        v39 = "%s : #MOS : Network Name : %@";
        v40 = 22;
        goto LABEL_90;
      }

      v17 = v9;
      v18 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = 1879;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
      }

      if (v12 != 16)
      {
        v20 = THCredentialsServerLogHandleForCategory(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
        }

        goto LABEL_118;
      }

      v19 = [NSData dataWithBytes:&vs[v13] length:16];

      v20 = THCredentialsServerLogHandleForCategory(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315395;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2117;
        *v66 = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
      }

      v58 = v19;
    }

    goto LABEL_67;
  }

  v61 = 0;
  v62 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v9 = 0;
LABEL_92:
  v44 = v60;
  v43 = v61;
  v46 = v58;
  v45 = v59;
  if (v9 && v61 && v59 && v58 && v60 && v57 && v62)
  {
    LOBYTE(v56) = 1;
    v47 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v59 passPhrase:0 PSKc:v58 channel:v57 PANID:v60 userInfo:0 credentialDataSet:0 isActiveDevice:v56];
    if (!v47)
    {
      goto LABEL_121;
    }

    v48 = v47;
    v49 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
    }

LABEL_124:

    v51 = v48;
  }

  else
  {
    v50 = THCredentialsServerLogHandleForCategory(1);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:];
    }

    v51 = 0;
  }

  return v51;
}

- (THThreadNetworkCredentialsBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)retrievePreferredNetworkWithNoScanWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithNoScanWithCompletion___block_invoke_36_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)retrievePreferredNetworkWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __85__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkWithCompletion___block_invoke_37_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)retrievePreferredNetworkInternallyWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __95__THThreadNetworkCredentialsStoreLocalClient_retrievePreferredNetworkInternallyWithCompletion___block_invoke_38_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)storeThreadNetworkCredentialActiveDataSet:network:credentialsDataSet:waitForSync:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkIsPreferredNetworkForActiveOperationalDataset:completion:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_58_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __108__THThreadNetworkCredentialsStoreLocalClient_checkIsPreferredNetworkForActiveOperationalDataset_completion___block_invoke_59_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setFromSpinelFrame:data_len:.cold.1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)setFromSpinelFrame:data_len:.cold.2()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setFromSpinelFrame:(NSObject *)a3 data_len:.cold.3(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1066;
  OUTLINED_FUNCTION_7_0(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded pskc Line : %d", a1);
}

- (void)setFromSpinelFrame:(NSObject *)a3 data_len:.cold.4(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1056;
  OUTLINED_FUNCTION_7_0(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded channel Line : %d", a1);
}

- (void)setFromSpinelFrame:(NSObject *)a3 data_len:.cold.5(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1036;
  OUTLINED_FUNCTION_7_0(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded pan id Line : %d", a1);
}

- (void)setFromSpinelFrame:(NSObject *)a3 data_len:.cold.6(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1017;
  OUTLINED_FUNCTION_7_0(&_mh_execute_header, a2, a3, "#MOS : ==> Decoded master key Line : %d", a1);
}

- (void)setFromSpinelFrame:(NSObject *)a3 data_len:.cold.7(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1073;
  OUTLINED_FUNCTION_7_0(&_mh_execute_header, a2, a3, "#MOS : break !! : %d", a1);
}

- (void)setFromSpinelFrame:data_len:.cold.8()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setFromSpinelFrame:data_len:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromSpinel:data_len:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromSpinel:data_len:.cold.2()
{
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)parseDataSetFromSpinel:(NSObject *)a3 data_len:.cold.4(uint8_t *a1, _DWORD *a2, NSObject *a3)
{
  *a1 = 67109120;
  *a2 = 1250;
  OUTLINED_FUNCTION_7_0(&_mh_execute_header, a2, a3, "#MOS : break !! : %d", a1);
}

- (void)parseDataSetFromSpinel:data_len:.cold.5()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromSpinel:data_len:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseDataSetFromSpinel:data_len:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseDataSetFromSpinel:data_len:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.2()
{
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)parseDataSetFromTLVs:data_len:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.6()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.7()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.9()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.10()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.11()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.12()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.13()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:(unsigned __int8 *)a1 data_len:.cold.14(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.15()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.19()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.21()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseDataSetFromTLVs:data_len:.cold.23()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.2()
{
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)parseCredsFromTLVs:data_len:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.6()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.7()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.9()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.10()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.11()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.12()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)parseCredsFromTLVs:data_len:.cold.13()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:(unsigned __int8 *)a1 data_len:.cold.14(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.15()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.17()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.19()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.21()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.23()
{
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)parseCredsFromTLVs:data_len:.cold.24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end