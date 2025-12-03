@interface PKCloudStoreService
+ (id)sharedInstance;
- (PKCloudStoreService)init;
- (id)errorHandlerForMethod:(SEL)method completion:(id)completion;
- (void)allItemsOfItemType:(unint64_t)type storeLocally:(BOOL)locally completion:(id)completion;
- (void)applePayContainerItemsFromDate:(id)date toDate:(id)toDate completion:(id)completion;
- (void)changeHistoryForContainerIdentifier:(id)identifier completion:(id)completion;
- (void)checkTLKsMissingWithCompletion:(id)completion;
- (void)cloudStoreRecordArrayWithConfiguration:(id)configuration completion:(id)completion;
- (void)cloudStoreStatusForContainer:(id)container completion:(id)completion;
- (void)createInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion;
- (void)createZone:(id)zone containerName:(id)name completion:(id)completion;
- (void)declineInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion;
- (void)deleteIssuerMessagingFlagWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteZone:(id)zone containerName:(id)name completion:(id)completion;
- (void)diagnosticInfoForContainerWithName:(id)name completion:(id)completion;
- (void)diagnosticSnapshotForContainerWithName:(id)name completion:(id)completion;
- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)itemOfItemType:(unint64_t)type recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion;
- (void)itemOfItemTypeFromAllZones:(unint64_t)zones recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion;
- (void)performAction:(int64_t)action inContainerWithName:(id)name completion:(id)completion;
- (void)performBackgroundRecordChangesSyncWithCompletion:(id)completion;
- (void)performBackgroundTransactionSyncFromDate:(id)date completion:(id)completion;
- (void)populateEvents:(id)events forAccountIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllItems:(unint64_t)items inZoneName:(id)name containerName:(id)containerName storeLocally:(BOOL)locally completion:(id)completion;
- (void)removeRecordWithRecordName:(id)name zoneName:(id)zoneName containerName:(id)containerName completion:(id)completion;
- (void)resetApplePayManateeViewWithCompletion:(id)completion;
- (void)resetContainerWithIdentifier:(id)identifier zoneNames:(id)names completion:(id)completion;
- (void)setupCloudDatabaseForContainerName:(id)name completion:(id)completion;
- (void)shareForZoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion;
- (void)simulateCloudStorePushForContainerIdentifier:(id)identifier completion:(id)completion;
- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)configurations completion:(id)completion;
- (void)uploadIssuerMessagingFlag:(id)flag completion:(id)completion;
- (void)uploadTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier includeServerData:(BOOL)data completion:(id)completion;
@end

@implementation PKCloudStoreService

- (PKCloudStoreService)init
{
  v8.receiver = self;
  v8.super_class = PKCloudStoreService;
  v2 = [(PKCloudStoreService *)&v8 init];
  if (v2)
  {
    v3 = [PKXPCService alloc];
    v4 = PDCloudStoreServiceInterface();
    v5 = [(PKXPCService *)v3 initWithMachServiceName:@"com.apple.passd.cloud-store" remoteObjectInterface:v4 exportedObjectInterface:0 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PKCloudStoreService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_274 != -1)
  {
    dispatch_once(&_MergedGlobals_274, block);
  }

  v2 = qword_1ED6D2128;

  return v2;
}

void __37__PKCloudStoreService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D2128;
  qword_1ED6D2128 = v1;
}

- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)configurations completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  configurationsCopy = configurations;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke_2;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 updateCloudStoreWithLocalItemsWithConfigurations:configurationsCopy completion:v13];
}

void __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke_14;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke_14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __83__PKCloudStoreService_updateCloudStoreWithLocalItemsWithConfigurations_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)removeAllItems:(unint64_t)items inZoneName:(id)name containerName:(id)containerName storeLocally:(BOOL)locally completion:(id)completion
{
  locallyCopy = locally;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v24 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v23 = v14;
  containerNameCopy = containerName;
  nameCopy = name;
  v17 = _Block_copy(aBlock);
  v18 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v17];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke_2;
  v20[3] = &unk_1E79E0F88;
  v20[4] = self;
  v21 = v14;
  v19 = v14;
  [v18 removeAllItems:items inZoneName:nameCopy containerName:containerNameCopy storeLocally:locallyCopy completion:v20];
}

void __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke_16;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke_16(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __87__PKCloudStoreService_removeAllItems_inZoneName_containerName_storeLocally_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)removeRecordWithRecordName:(id)name zoneName:(id)zoneName containerName:(id)containerName completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  containerNameCopy = containerName;
  zoneNameCopy = zoneName;
  nameCopy = name;
  v16 = _Block_copy(aBlock);
  v17 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke_2;
  v19[3] = &unk_1E79C4860;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 removeRecordWithRecordName:nameCopy zoneName:zoneNameCopy containerName:containerNameCopy completion:v19];
}

void __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke_18;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke_18(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __84__PKCloudStoreService_removeRecordWithRecordName_zoneName_containerName_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)allItemsOfItemType:(unint64_t)type storeLocally:(BOOL)locally completion:(id)completion
{
  locallyCopy = locally;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v18 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke_2;
  v14[3] = &unk_1E79E2108;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 allItemsOfItemType:type storeLocally:locallyCopy completion:v14];
}

void __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke_20;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __66__PKCloudStoreService_allItemsOfItemType_storeLocally_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)applePayContainerItemsFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  toDateCopy = toDate;
  dateCopy = date;
  v13 = _Block_copy(aBlock);
  v14 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke_2;
  v16[3] = &unk_1E79E2108;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 applePayContainerItemsFromDate:dateCopy toDate:toDateCopy completion:v16];
}

void __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke_22;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke_22(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __72__PKCloudStoreService_applePayContainerItemsFromDate_toDate_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)itemOfItemTypeFromAllZones:(unint64_t)zones recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v21 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v20 = v12;
  nameCopy = name;
  v14 = _Block_copy(aBlock);
  v15 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke_2;
  v17[3] = &unk_1E79E2108;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 itemOfItemTypeFromAllZones:zones recordName:nameCopy qualityOfService:service completion:v17];
}

void __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke_23;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke_23(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __89__PKCloudStoreService_itemOfItemTypeFromAllZones_recordName_qualityOfService_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)cloudStoreRecordArrayWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  configurationCopy = configuration;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke_2;
  v13[3] = &unk_1E79E2108;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 cloudStoreRecordArrayWithConfiguration:configurationCopy completion:v13];
}

void __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke_24;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke_24(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __73__PKCloudStoreService_cloudStoreRecordArrayWithConfiguration_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)itemOfItemType:(unint64_t)type recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v21 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v20 = v12;
  nameCopy = name;
  v14 = _Block_copy(aBlock);
  v15 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke_2;
  v17[3] = &unk_1E79E2130;
  v17[4] = self;
  v18 = v12;
  v16 = v12;
  [v15 itemOfItemType:type recordName:nameCopy qualityOfService:service completion:v17];
}

void __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke_25;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke_25(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __77__PKCloudStoreService_itemOfItemType_recordName_qualityOfService_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)resetContainerWithIdentifier:(id)identifier zoneNames:(id)names completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  namesCopy = names;
  identifierCopy = identifier;
  v13 = _Block_copy(aBlock);
  v14 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke_2;
  v16[3] = &unk_1E79C4A68;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 resetContainerWithIdentifier:identifierCopy zoneNames:namesCopy completion:v16];
}

void __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke_27;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke_27(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __73__PKCloudStoreService_resetContainerWithIdentifier_zoneNames_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E2108;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 generateRandomTransactionForTransactionSourceIdentifier:identifierCopy completion:v13];
}

void __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke_29;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke_29(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __90__PKCloudStoreService_generateRandomTransactionForTransactionSourceIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)uploadTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier includeServerData:(BOOL)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v21 = v12;
  identifierCopy = identifier;
  transactionCopy = transaction;
  v15 = _Block_copy(aBlock);
  v16 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke_2;
  v18[3] = &unk_1E79E2108;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 uploadTransaction:transactionCopy forTransactionSourceIdentifier:identifierCopy includeServerData:dataCopy completion:v18];
}

void __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke_30;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke_30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __101__PKCloudStoreService_uploadTransaction_forTransactionSourceIdentifier_includeServerData_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)deleteZone:(id)zone containerName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  nameCopy = name;
  zoneCopy = zone;
  v13 = _Block_copy(aBlock);
  v14 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke_2;
  v16[3] = &unk_1E79C4A68;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 deleteZone:zoneCopy containerName:nameCopy completion:v16];
}

void __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke_31;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke_31(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __59__PKCloudStoreService_deleteZone_containerName_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)createZone:(id)zone containerName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKCloudStoreService_createZone_containerName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  nameCopy = name;
  zoneCopy = zone;
  v13 = _Block_copy(aBlock);
  v14 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__PKCloudStoreService_createZone_containerName_completion___block_invoke_2;
  v16[3] = &unk_1E79C4A68;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 createZone:zoneCopy containerName:nameCopy completion:v16];
}

void __59__PKCloudStoreService_createZone_containerName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKCloudStoreService_createZone_containerName_completion___block_invoke_32;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __59__PKCloudStoreService_createZone_containerName_completion___block_invoke_32(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __59__PKCloudStoreService_createZone_containerName_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKCloudStoreService_createZone_containerName_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __59__PKCloudStoreService_createZone_containerName_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)populateEvents:(id)events forAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  identifierCopy = identifier;
  eventsCopy = events;
  v13 = _Block_copy(aBlock);
  v14 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke_2;
  v16[3] = &unk_1E79E2108;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 populateEvents:eventsCopy forAccountIdentifier:identifierCopy completion:v16];
}

void __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke_33;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke_33(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __70__PKCloudStoreService_populateEvents_forAccountIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)simulateCloudStorePushForContainerIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E2158;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 simulateCloudStorePushForContainerIdentifier:identifierCopy completion:v13];
}

void __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke_34;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke_3;
  v17[3] = &unk_1E79C4B30;
  v11 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 32);
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v24 = v13;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, block);
}

uint64_t __79__PKCloudStoreService_simulateCloudStorePushForContainerIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[8];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4860;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 simulatePassProvisioningForPassUniqueIdentifier:identifierCopy completion:v13];
}

void __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke_36;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke_36(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __82__PKCloudStoreService_simulatePassProvisioningForPassUniqueIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)declineInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __110__PKCloudStoreService_declineInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke;
  v23[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v24 = v14;
  containerNameCopy = containerName;
  nameCopy = name;
  handleCopy = handle;
  v18 = [(PKCloudStoreService *)self errorHandlerForMethod:a2 completion:v23];
  v19 = [(PKCloudStoreService *)self _remoteObjectProxyWithErrorHandler:v18];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __110__PKCloudStoreService_declineInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_2;
  v21[3] = &unk_1E79C4A68;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 declineInvitationForRecipientHandle:handleCopy zoneName:nameCopy containerName:containerNameCopy qualityOfService:service completion:v21];
}

uint64_t __110__PKCloudStoreService_declineInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __110__PKCloudStoreService_declineInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PKCloudStoreService_declineInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __110__PKCloudStoreService_declineInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)createInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __109__PKCloudStoreService_createInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke;
  v23[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v24 = v14;
  containerNameCopy = containerName;
  nameCopy = name;
  handleCopy = handle;
  v18 = [(PKCloudStoreService *)self errorHandlerForMethod:a2 completion:v23];
  v19 = [(PKCloudStoreService *)self _remoteObjectProxyWithErrorHandler:v18];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __109__PKCloudStoreService_createInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_2;
  v21[3] = &unk_1E79C4A68;
  v21[4] = self;
  v22 = v14;
  v20 = v14;
  [v19 createInvitationForRecipientHandle:handleCopy zoneName:nameCopy containerName:containerNameCopy qualityOfService:service completion:v21];
}

uint64_t __109__PKCloudStoreService_createInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __109__PKCloudStoreService_createInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__PKCloudStoreService_createInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __109__PKCloudStoreService_createInvitationForRecipientHandle_zoneName_containerName_qualityOfService_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)shareForZoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v21 = v12;
  containerNameCopy = containerName;
  nameCopy = name;
  v15 = _Block_copy(aBlock);
  v16 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke_2;
  v18[3] = &unk_1E79E2108;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 shareForZoneName:nameCopy containerName:containerNameCopy qualityOfService:service completion:v18];
}

void __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke_37;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke_37(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __82__PKCloudStoreService_shareForZoneName_containerName_qualityOfService_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)cloudStoreStatusForContainer:(id)container completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  containerCopy = container;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke_2;
  v13[3] = &unk_1E79E2180;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 cloudStoreStatusForContainer:containerCopy completion:v13];
}

void __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke_38;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke_38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke_3;
  v14[3] = &unk_1E79D1490;
  v10 = *(a1 + 40);
  v19 = a3;
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 32);
  v18 = v10;
  v11 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v21 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, block);
}

uint64_t __63__PKCloudStoreService_cloudStoreStatusForContainer_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 64), *(a1 + 40));
  }

  return result;
}

- (void)setupCloudDatabaseForContainerName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  nameCopy = name;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke_2;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 setupCloudDatabaseForContainerName:nameCopy completion:v13];
}

void __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke_40;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke_40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __69__PKCloudStoreService_setupCloudDatabaseForContainerName_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)checkTLKsMissingWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 checkTLKsMissingWithCompletion:v10];
}

void __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke_41;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke_41(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __54__PKCloudStoreService_checkTLKsMissingWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)resetApplePayManateeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 resetApplePayManateeViewWithCompletion:v10];
}

void __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke_42;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __62__PKCloudStoreService_resetApplePayManateeViewWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)diagnosticInfoForContainerWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  nameCopy = name;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke_2;
  v13[3] = &unk_1E79E21A8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 diagnosticInfoForContainerWithName:nameCopy completion:v13];
}

void __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke_43;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __69__PKCloudStoreService_diagnosticInfoForContainerWithName_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)diagnosticSnapshotForContainerWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  nameCopy = name;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke_2;
  v13[3] = &unk_1E79E21D0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 diagnosticSnapshotForContainerWithName:nameCopy completion:v13];
}

void __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke_45;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke_45(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __73__PKCloudStoreService_diagnosticSnapshotForContainerWithName_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)performAction:(int64_t)action inContainerWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKCloudStoreService_performAction_inContainerWithName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  nameCopy = name;
  v12 = _Block_copy(aBlock);
  v13 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PKCloudStoreService_performAction_inContainerWithName_completion___block_invoke_2;
  v15[3] = &unk_1E79C4450;
  v16 = v10;
  v14 = v10;
  [v13 performAction:action inContainerWithName:nameCopy completion:v15];
}

void __68__PKCloudStoreService_performAction_inContainerWithName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKCloudStoreService_performAction_inContainerWithName_completion___block_invoke_47;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __68__PKCloudStoreService_performAction_inContainerWithName_completion___block_invoke_47(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)performBackgroundTransactionSyncFromDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  dateCopy = date;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke_2;
  v13[3] = &unk_1E79E2108;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 performBackgroundTransactionSyncFromDate:dateCopy completion:v13];
}

void __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke_48;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke_48(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __75__PKCloudStoreService_performBackgroundTransactionSyncFromDate_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)performBackgroundRecordChangesSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4860;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 performBackgroundRecordChangesSyncWithCompletion:v10];
}

void __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke_49;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke_49(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __72__PKCloudStoreService_performBackgroundRecordChangesSyncWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)changeHistoryForContainerIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C9BC8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 changeHistoryForContainerIdentifier:identifierCopy completion:v13];
}

void __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke_50;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke_50(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_19;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __70__PKCloudStoreService_changeHistoryForContainerIdentifier_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)uploadIssuerMessagingFlag:(id)flag completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKCloudStoreService_uploadIssuerMessagingFlag_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  flagCopy = flag;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PKCloudStoreService_uploadIssuerMessagingFlag_completion___block_invoke_2;
  v13[3] = &unk_1E79C4450;
  v14 = v8;
  v12 = v8;
  [v11 uploadIssuerMessagingFlag:flagCopy completion:v13];
}

void __60__PKCloudStoreService_uploadIssuerMessagingFlag_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKCloudStoreService_uploadIssuerMessagingFlag_completion___block_invoke_51;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __60__PKCloudStoreService_uploadIssuerMessagingFlag_completion___block_invoke_51(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __60__PKCloudStoreService_uploadIssuerMessagingFlag_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteIssuerMessagingFlagWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKCloudStoreService_deleteIssuerMessagingFlagWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKCloudStoreService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKCloudStoreService_deleteIssuerMessagingFlagWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79C4450;
  v14 = v8;
  v12 = v8;
  [v11 deleteIssuerMessagingFlagWithIdentifier:identifierCopy completion:v13];
}

void __74__PKCloudStoreService_deleteIssuerMessagingFlagWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKCloudStoreService_deleteIssuerMessagingFlagWithIdentifier_completion___block_invoke_52;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_19;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKCloudStoreService_deleteIssuerMessagingFlagWithIdentifier_completion___block_invoke_52(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __74__PKCloudStoreService_deleteIssuerMessagingFlagWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)errorHandlerForMethod:(SEL)method completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKCloudStoreService_errorHandlerForMethod_completion___block_invoke;
  aBlock[3] = &unk_1E79C9778;
  v12 = completionCopy;
  methodCopy = method;
  aBlock[4] = self;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

void __56__PKCloudStoreService_errorHandlerForMethod_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKCloudStoreService %@];", &buf, 0xCu);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PKCloudStoreService_errorHandlerForMethod_completion___block_invoke_53;
  v11[3] = &unk_1E79C44F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v3;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v16 = __dispatch_async_ar_block_invoke_19;
  v17 = &unk_1E79C4428;
  v18 = v9;
  v10 = v3;
  dispatch_async(v6, &buf);
}

uint64_t __56__PKCloudStoreService_errorHandlerForMethod_completion___block_invoke_53(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end