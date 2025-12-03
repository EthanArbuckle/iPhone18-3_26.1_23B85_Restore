@interface ManagedAssetsClient
+ (id)sharedInstance;
- (BOOL)addAnchorGroup:(id)group clientIdentifier:(id)identifier error:(id *)error;
- (BOOL)addAssetChangeEventObserver:(id)observer type:(unint64_t)type events:(unint64_t)events error:(id *)error;
- (BOOL)addFileEventObserver:(id)observer fileNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events error:(id *)error;
- (BOOL)addKVStoreEventObserver:(id)observer storeNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events error:(id *)error;
- (BOOL)addOrUpdateDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier data:(id)data error:(id *)error;
- (BOOL)addProfileChangeEventObserver:(id)observer events:(unint64_t)events error:(id *)error;
- (BOOL)availableSpace:(unint64_t *)space error:(id *)error;
- (BOOL)checkIfKVStoreGroupExistUsing:(id)using exist:(BOOL *)exist error:(id *)error;
- (BOOL)commitFile:(id)file attributes:(id)attributes error:(id *)error;
- (BOOL)createKVStore:(id)store recordFields:(id)fields attributes:(id)attributes error:(id *)error;
- (BOOL)deleteAllAssetsExcept:(id)except error:(id *)error;
- (BOOL)deleteAllAssetsWithOptions:(id)options error:(id *)error;
- (BOOL)deleteAllAssetsWithUUID:(id)d error:(id *)error;
- (BOOL)deleteAllNonDefaultProfilesWithError:(id *)error;
- (BOOL)deleteAssetWithHandle:(id)handle UUID:(id)d error:(id *)error;
- (BOOL)deleteAssetWithHandle:(id)handle withOptions:(id)options error:(id *)error;
- (BOOL)deleteDataInStore:(id)store keys:(id)keys attributes:(id)attributes error:(id *)error;
- (BOOL)deleteFile:(id)file attributes:(id)attributes error:(id *)error;
- (BOOL)deleteKVStore:(id)store attributes:(id)attributes error:(id *)error;
- (BOOL)deleteProfileWith:(id)with error:(id *)error;
- (BOOL)diskUsage:(id)usage attributes:(id)attributes usage:(unint64_t *)a5 error:(id *)error;
- (BOOL)exportAssetsToPath:(id)path option:(id)option profile:(id)profile error:(id *)error;
- (BOOL)fetchCoreRxLensData:(id)data recordUUID:(id)d accPayload:(id)payload rxIdL:(int64_t)l rxIdR:(int64_t)r axisL:(int64_t)axisL axisR:(int64_t)axisR calRequiredL:(BOOL)self0 calRequiredR:(BOOL)self1 version:(unint64_t)self2 attributes:(id)self3 attributesOut:(id *)self4 recordUUIDOut:(id *)self5 error:(id *)self6;
- (BOOL)importCorePrescription:(id)prescription profile:(id)profile error:(id *)error;
- (BOOL)isSameObserver:(id)observer error:(id *)error;
- (BOOL)persistGuestProfileWithError:(id *)error;
- (BOOL)putDataInStore:(id)store records:(id)records attributes:(id)attributes error:(id *)error;
- (BOOL)recreateFileOrKVStoreObserverXPCWith:(id)with error:(id *)error;
- (BOOL)recreateRemoteObserverXPCWith:(id *)with;
- (BOOL)removeAllAnchorGroupsForClient:(id)client error:(id *)error;
- (BOOL)removeAnchorGroup:(id)group clientIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeDataForAllAnchors:(id)anchors error:(id *)error;
- (BOOL)removeDataForAnchorIdentifiers:(id)identifiers clientIdentifier:(id)identifier error:(id *)error;
- (BOOL)saveAVPSetupUserOption:(int64_t)option error:(id *)error;
- (BOOL)switchProfileWith:(id)with error:(id *)error;
- (BOOL)testDaemon:(id)daemon results:(id *)results error:(id *)error;
- (BOOL)unpersistGuestProfileWithError:(id *)error;
- (BOOL)updateAssetHandle:(id)handle withOptions:(id)options assetData:(id)data error:(id *)error;
- (BOOL)updateAssetWithHandle:(id)handle UUID:(id)d assetData:(id)data assetAlgorithm:(id)algorithm error:(id *)error;
- (BOOL)updateDataInStore:(id)store keys:(id)keys values:(id)values attributes:(id)attributes error:(id *)error;
- (ManagedAssetsClient)init;
- (id)constructV2Blob:(id)blob expectedSize:(unint64_t)size sizeLimit:(unint64_t)limit profileType:(unint64_t)type error:(id *)error;
- (id)createAssetWithDescriptor:(id)descriptor UUID:(id)d error:(id *)error;
- (id)exportAssets:(id)assets option:(id)option error:(id *)error;
- (id)exportCorePrescription:(id)prescription profile:(id)profile payloadSize:(unint64_t *)size sizeLimit:(unint64_t)limit profileType:(unint64_t)type error:(id *)error;
- (id)getAllAnchorGroupsForClient:(id)client error:(id *)error;
- (id)getAllProfilesWith:(id *)with error:(id *)error;
- (id)getAssetDataWithHandle:(id)handle UUID:(id)d error:(id *)error;
- (id)getAssetMetaDataWithHandle:(id)handle UUID:(id)d error:(id *)error;
- (id)getConnectedClients;
- (id)getDaemonProcessInfo;
- (id)getDataForAllAnchors:(id)anchors error:(id *)error;
- (id)getDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier error:(id *)error;
- (id)getLastSwitchTimeForPersistedGuestWithError:(id *)error;
- (id)getProfileLastSwitchInTS:(id)s error:(id *)error;
- (id)getProfileLastSwitchOutTS:(id)s error:(id *)error;
- (id)openFile:(id)file mode:(unint64_t)mode attributes:(id)attributes attributesOut:(id *)out error:(id *)error;
- (id)parseAssetBlob:(id)blob error:(id *)error;
- (id)parseExportOption:(id)option error:(id *)error;
- (id)parseV2BlobPayload:(id)payload error:(id *)error;
- (id)queryAssetMetaDataWithOptions:(id)options error:(id *)error;
- (id)queryAssetsWithOptions:(id)options error:(id *)error;
- (id)queryDataInStore:(id)store keys:(id)keys attributes:(id)attributes error:(id *)error;
- (id)queryFile:(id)file attributes:(id)attributes error:(id *)error;
- (id)writeV2BlobWith:(id)with optype:(int64_t)optype payload:(id)payload profileType:(unint64_t *)type error:(id *)error;
- (unint64_t)getCurrentProfileType;
- (void)addOrUpdateDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier data:(id)data completion:(id)completion;
- (void)checkIfCloudZonesWithCompletionHandler:(id)handler;
- (void)commitFile:(id)file attributes:(id)attributes completion:(id)completion;
- (void)createAssetWithDescriptor:(id)descriptor UUID:(id)d completion:(id)completion;
- (void)createKVStore:(id)store recordFields:(id)fields attributes:(id)attributes completion:(id)completion;
- (void)deleteAllAssetsWithCompletion:(id)completion;
- (void)deleteAllAssetsWithOptions:(id)options completion:(id)completion;
- (void)deleteAllAssetsWithUUID:(id)d completion:(id)completion;
- (void)deleteAssetWithHandle:(id)handle UUID:(id)d completion:(id)completion;
- (void)deleteAssetWithHandle:(id)handle withOptions:(id)options completion:(id)completion;
- (void)deleteAssetsWithOptions:(id)options completion:(id)completion;
- (void)deleteDataInStore:(id)store keys:(id)keys attributes:(id)attributes completion:(id)completion;
- (void)deleteFile:(id)file attributes:(id)attributes completion:(id)completion;
- (void)deleteKVStore:(id)store attributes:(id)attributes completion:(id)completion;
- (void)didReceiveAssetChangeWith:(unint64_t)with assethandles:(id)assethandles;
- (void)didReceiveProfileChangeWith:(unint64_t)with profile:(id)profile type:(unint64_t)type;
- (void)fetchCoreRxLensData:(id)data recordUUID:(id)d accPayload:(id)payload rxIdL:(int64_t)l rxIdR:(int64_t)r axisL:(int64_t)axisL axisR:(int64_t)axisR calRequiredL:(BOOL)self0 calRequiredR:(BOOL)self1 version:(unint64_t)self2 attributes:(id)self3 completion:(id)self4;
- (void)fileOrKVStoreObserverXPCExitHandler:(id)handler;
- (void)getAssetDataWithHandle:(id)handle UUID:(id)d completion:(id)completion;
- (void)getAssetMetaDataWithHandle:(id)handle UUID:(id)d completion:(id)completion;
- (void)getDataForAllAnchors:(id)anchors completion:(id)completion;
- (void)getDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completion:(id)completion;
- (void)importAssets:(id)assets option:(id)option completion:(id)completion;
- (void)importAssetsFromPath:(id)path option:(id)option completion:(id)completion;
- (void)openFile:(id)file mode:(unint64_t)mode attributes:(id)attributes completion:(id)completion;
- (void)prefetchFile:(id)file attributes:(id)attributes completion:(id)completion;
- (void)putDataInStore:(id)store records:(id)records attributes:(id)attributes completion:(id)completion;
- (void)queryAssetsWithOptions:(id)options completion:(id)completion;
- (void)queryDataInStore:(id)store keys:(id)keys attributes:(id)attributes completion:(id)completion;
- (void)queryFile:(id)file attributes:(id)attributes completion:(id)completion;
- (void)recoverRemoteAsset:(id)asset;
- (void)recoveryTaskWhenDaemonIsReady;
- (void)registerDarwinNotification:(unint64_t)notification;
- (void)remoteObserverXPCExitHandler;
- (void)removeNotificationObserver:(id)observer;
- (void)removeNotificationObserverPointer:(id)pointer observerType:(unint64_t)type;
- (void)removeObserverFromFilter:(id)filter;
- (void)saveObserverMetaData:(id)data fileNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events type:(unint64_t)type;
- (void)subscribeDarwinNotification:(id)notification;
- (void)unregisterDarwinNotificationIfNeed:(unint64_t)need;
- (void)unsubscribeDarwinNotification:(id)notification;
- (void)updateAssetHandle:(id)handle withOptions:(id)options assetData:(id)data completion:(id)completion;
- (void)updateAssetWithHandle:(id)handle UUID:(id)d assetData:(id)data assetAlgorithm:(id)algorithm completion:(id)completion;
- (void)updateDataInStore:(id)store keys:(id)keys values:(id)values attributes:(id)attributes completion:(id)completion;
@end

@implementation ManagedAssetsClient

void __62__ManagedAssetsClient_Profile__createProfileWith_guest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 UUIDString];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (BOOL)switchProfileWith:(id)with error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v7 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = withCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "switchProfileWith, uuid: %@", buf, 0xCu);
  }

  if (!withCopy)
  {
    v11 = createManagedAssetError("[ManagedAssetsClient(Profile) switchProfileWith:error:]", 77, -20001, 0, 0, @"Null UUID String.", v8, v9, v20);
    goto LABEL_10;
  }

  if (([withCopy isEqualToString:@"DefaultLocalUser"] & 1) == 0)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:withCopy];
    if (v10)
    {
      goto LABEL_8;
    }

    v11 = createManagedAssetError("[ManagedAssetsClient(Profile) switchProfileWith:error:]", 84, -20001, 0, 0, @"Invalid UUID String.", v12, v13, v20);
LABEL_10:
    v10 = v24[5];
    v24[5] = v11;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_8:
  conn = self->_conn;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__ManagedAssetsClient_Profile__switchProfileWith_error___block_invoke;
  v22[3] = &unk_27985EC00;
  v22[4] = &v23;
  v15 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__ManagedAssetsClient_Profile__switchProfileWith_error___block_invoke_2;
  v21[3] = &unk_27985EC50;
  v21[4] = &v23;
  v21[5] = &v29;
  [v15 SwitchProfile:v10 completion:v21];

LABEL_11:
  if (error)
  {
    v16 = v24[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __56__ManagedAssetsClient_Profile__switchProfileWith_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)persistGuestProfileWithError:(id *)error
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
  v5 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "persistGuestProfileWithError", buf, 2u);
  }

  conn = self->_conn;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ManagedAssetsClient_Profile__persistGuestProfileWithError___block_invoke;
  v12[3] = &unk_27985EC00;
  v12[4] = &v14;
  v7 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ManagedAssetsClient_Profile__persistGuestProfileWithError___block_invoke_2;
  v11[3] = &unk_27985EC50;
  v11[4] = &v14;
  v11[5] = &v20;
  [v7 PersistGuestProfileWithCompletion:v11];

  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v9;
}

void __61__ManagedAssetsClient_Profile__persistGuestProfileWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)unpersistGuestProfileWithError:(id *)error
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
  v5 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "unpersistGuestProfileWithError", buf, 2u);
  }

  conn = self->_conn;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ManagedAssetsClient_Profile__unpersistGuestProfileWithError___block_invoke;
  v12[3] = &unk_27985EC00;
  v12[4] = &v14;
  v7 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ManagedAssetsClient_Profile__unpersistGuestProfileWithError___block_invoke_2;
  v11[3] = &unk_27985EC50;
  v11[4] = &v14;
  v11[5] = &v20;
  [v7 UnpersistGuestProfileWithCompletion:v11];

  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v9;
}

void __63__ManagedAssetsClient_Profile__unpersistGuestProfileWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)getLastSwitchTimeForPersistedGuestWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "getLastSwitchTimeForPersistedGuestWithError", buf, 2u);
  }

  conn = self->_conn;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ManagedAssetsClient_Profile__getLastSwitchTimeForPersistedGuestWithError___block_invoke;
  v12[3] = &unk_27985EC00;
  v12[4] = &v20;
  v7 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__ManagedAssetsClient_Profile__getLastSwitchTimeForPersistedGuestWithError___block_invoke_2;
  v11[3] = &unk_27985EC78;
  v11[4] = &v20;
  v11[5] = &v14;
  [v7 GetLastSwitchTimeForPersistedGuestWithCompletion:v11];

  if (error)
  {
    v8 = v21[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

void __76__ManagedAssetsClient_Profile__getLastSwitchTimeForPersistedGuestWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (BOOL)deleteProfileWith:(id)with error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v7 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = withCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "deleteProfileWith, uuid: %@", buf, 0xCu);
  }

  if (!withCopy)
  {
    v15 = createManagedAssetError("[ManagedAssetsClient(Profile) deleteProfileWith:error:]", 179, -20001, 0, 0, @"Null UUID String.", v8, v9, v20);
LABEL_8:
    v12 = v24[5];
    v24[5] = v15;
    goto LABEL_9;
  }

  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:withCopy];
  if (!v12)
  {
    v15 = createManagedAssetError("[ManagedAssetsClient(Profile) deleteProfileWith:error:]", 185, -20001, 0, 0, @"Invalid UUID String.", v10, v11, v20);
    goto LABEL_8;
  }

  conn = self->_conn;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__ManagedAssetsClient_Profile__deleteProfileWith_error___block_invoke;
  v22[3] = &unk_27985EC00;
  v22[4] = &v23;
  v14 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__ManagedAssetsClient_Profile__deleteProfileWith_error___block_invoke_2;
  v21[3] = &unk_27985EC50;
  v21[4] = &v23;
  v21[5] = &v29;
  [v14 DeleteProfile:v12 completion:v21];

LABEL_9:
  if (error)
  {
    v16 = v24[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __56__ManagedAssetsClient_Profile__deleteProfileWith_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)getAllProfilesWith:(id *)with error:(id *)error
{
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
  v7 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "getAllProfilesWith", buf, 2u);
  }

  fasConn = self->_fasConn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__ManagedAssetsClient_Profile__getAllProfilesWith_error___block_invoke;
  v14[3] = &unk_27985EC00;
  v14[4] = &v22;
  v9 = [(NSXPCConnection *)fasConn synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__ManagedAssetsClient_Profile__getAllProfilesWith_error___block_invoke_2;
  v13[3] = &unk_27985ECA0;
  v13[4] = &v22;
  v13[5] = &v16;
  v13[6] = with;
  [v9 GetAllProfilesWithCompletion:v13];

  if (error)
  {
    v10 = v23[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v11;
}

void __57__ManagedAssetsClient_Profile__getAllProfilesWith_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = 32;
    v11 = v8;
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      objc_storeStrong(v12, a3);
    }

    v10 = 40;
    v11 = v16;
  }

  v13 = *(*(a1 + v10) + 8);
  v14 = v11;
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
}

- (unint64_t)getCurrentProfileType
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -2;
  v3 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_INFO, "getCurrentProfileType", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_fasConn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_9;
  v7[3] = &unk_27985ECE8;
  v7[4] = &v9;
  [v4 GetCurrentProfileType:v7];

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_cold_1();
  }
}

void __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_9_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    v6 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_258089000, v6, OS_LOG_TYPE_DEFAULT, "Current Profile Type: %lu", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteAllNonDefaultProfilesWithError:(id *)error
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
  v5 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "deleteAllNonDefaultProfilesWithError", buf, 2u);
  }

  v6 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ManagedAssetsClient_Profile__deleteAllNonDefaultProfilesWithError___block_invoke_13;
  v10[3] = &unk_27985EC50;
  v10[4] = &v12;
  v10[5] = &v18;
  [v6 DeleteAllNonDefaultProfilesWithCompletion:v10];

  if (error)
  {
    v7 = v13[5];
    if (v7)
    {
      *error = v7;
    }
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __69__ManagedAssetsClient_Profile__deleteAllNonDefaultProfilesWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_cold_1();
  }
}

void __69__ManagedAssetsClient_Profile__deleteAllNonDefaultProfilesWithError___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __69__ManagedAssetsClient_Profile__deleteAllNonDefaultProfilesWithError___block_invoke_13_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)exportAssetsToPath:(id)path option:(id)option profile:(id)profile error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  optionCopy = option;
  profileCopy = profile;
  v13 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = profileCopy;
    *&buf[12] = 2112;
    *&buf[14] = optionCopy;
    *&buf[22] = 2112;
    v40 = pathCopy;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_DEFAULT, "exportAssets, uuid: %@, options: %@ exportFolder: %@", buf, 0x20u);
  }

  if (profileCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    conn = self->_conn;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke;
    v32[3] = &unk_27985EC00;
    v32[4] = buf;
    v17 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v32];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_2;
    v27[3] = &unk_27985ED38;
    v31 = buf;
    v27[4] = self;
    v28 = optionCopy;
    v18 = profileCopy;
    v29 = v18;
    v19 = pathCopy;
    v30 = v19;
    [v17 SerializeAllAssets:v18 option:v28 completion:v27];

    v20 = *(*&buf[8] + 40);
    v21 = v20 == 0;
    if (v20)
    {
      if (error)
      {
        *error = v20;
      }

      v22 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*&buf[8] + 40);
        *v33 = 138412802;
        v34 = v18;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v23;
        _os_log_error_impl(&dword_258089000, v22, OS_LOG_TYPE_ERROR, "fail to export assets for profile: %@ to directory %@, error: %@", v33, 0x20u);
      }
    }

    else
    {
      v24 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&dword_258089000, v24, OS_LOG_TYPE_DEFAULT, "exportAssets completed", v33, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    createManagedAssetError("[ManagedAssetsClient(Profile) exportAssetsToPath:option:profile:error:]", 288, -20001, 0, 0, @"Null profile uuid String.", v14, v15, v27[0]);
    *error = v21 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

void __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v67[2] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v65 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    if (_os_feature_enabled_impl())
    {
      v14 = a1[4];
      v15 = a1[5];
      v16 = *(a1[8] + 8);
      obj = *(v16 + 40);
      v17 = [v14 parseExportOption:v15 error:&obj];
      objc_storeStrong((v16 + 40), obj);
      v18 = [v17 objectForKeyedSubscript:@"com.apple.managedassets.exportoption.kvstore"];
      v19 = [v18 BOOLValue];

      if (v19)
      {
        v20 = a1[4];
        v21 = a1[6];
        v22 = *(a1[8] + 8);
        v63 = *(v22 + 40);
        v23 = [v20 exportCorePrescription:v11 profile:v21 payloadSize:&v65 sizeLimit:0x7FFFFFFFFFFFFFFFLL profileType:a3 error:&v63];
        objc_storeStrong((v22 + 40), v63);

        v11 = v23;
      }
    }

    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v62 = 0;
    v25 = a1 + 7;
    if ([v24 fileExistsAtPath:a1[7] isDirectory:&v62])
    {
      if ((v62 & 1) == 0)
      {
        v28 = createManagedAssetError("[ManagedAssetsClient(Profile) exportAssetsToPath:option:profile:error:]_block_invoke_2", 321, -20101, 0, 0, @"exportDirectory %@ exist but not a directory", v26, v27, a1[7]);
        v29 = *(a1[8] + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v31 = a1[7];
      v32 = *(a1[8] + 8);
      v61 = *(v32 + 40);
      v33 = [v24 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:0 error:&v61];
      objc_storeStrong((v32 + 40), v61);
      if ((v33 & 1) == 0)
      {
        if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
        {
          __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_2_cold_1(v25);
        }

        goto LABEL_22;
      }
    }

    v52 = [MEMORY[0x277CBEB38] dictionary];
    v34 = MEMORY[0x277CCACA8];
    v67[0] = a1[7];
    v67[1] = @"description";
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
    v36 = [v34 pathWithComponents:v35];

    v37 = [MEMORY[0x277CBEB18] array];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_30;
    v56[3] = &unk_27985ED10;
    v38 = a1[7];
    v40 = a1[8];
    v39 = a1 + 8;
    v57 = v38;
    v60 = v40;
    v58 = v24;
    v41 = v37;
    v59 = v41;
    [v11 enumerateObjectsUsingBlock:v56];
    if (v12)
    {
      v51 = v36;
      v42 = MEMORY[0x277CCACA8];
      v66[0] = *v25;
      v66[1] = @"AX.data";
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
      v44 = [v42 pathWithComponents:v43];

      v45 = *(*v39 + 8);
      v55 = *(v45 + 40);
      LOBYTE(v42) = [v12 writeToFile:v44 options:536870913 error:&v55];
      objc_storeStrong((v45 + 40), v55);
      if ((v42 & 1) == 0)
      {
        if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
        {
          __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_2_cold_2(v44, v39);
        }

        v36 = v51;
        v47 = v52;
        goto LABEL_21;
      }

      v36 = v51;
    }

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v47 = v52;
    [v52 setObject:v46 forKeyedSubscript:@"ptype"];

    [v52 setObject:v41 forKeyedSubscript:@"asset"];
    v48 = *(*v39 + 8);
    v54 = *(v48 + 40);
    v44 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v52 options:1 error:&v54];
    objc_storeStrong((v48 + 40), v54);
    if (v44)
    {
      v49 = *(*v39 + 8);
      v53 = *(v49 + 40);
      [v44 writeToFile:v36 options:536870913 error:&v53];
      objc_storeStrong((v49 + 40), v53);
    }

LABEL_21:

    goto LABEL_22;
  }

  objc_storeStrong((*(a1[8] + 8) + 40), a6);
LABEL_23:

  v50 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_30(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v52[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 assetHandle];
  v8 = MEMORY[0x277CCACA8];
  v52[0] = *(a1 + 32);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, @"asset"];
  v52[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v11 = [v8 pathWithComponents:v10];

  v12 = MEMORY[0x277CCACA8];
  v51[0] = *(a1 + 32);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, @"metadata"];
  v51[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v15 = [v12 pathWithComponents:v14];

  v16 = [v6 assetData];

  if (v16)
  {
    v17 = [v6 assetData];
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = [v6 assetFileHandle];

    if (!v18)
    {
      v17 = [v6 sandboxToken];

      if (v17)
      {
        v27 = [v6 sandboxToken];
        [v27 cStringUsingEncoding:4];
        v28 = sandbox_extension_consume();

        if (v28 == -1)
        {
          v37 = __error();
          v40 = createManagedAssetError("[ManagedAssetsClient(Profile) exportAssetsToPath:option:profile:error:]_block_invoke", 350, -20000, 0, 0, @"sandbox extension consume error, errno=%u", v38, v39, *v37);
          v41 = *(*(a1 + 56) + 8);
          v42 = *(v41 + 40);
          *(v41 + 40) = v40;

          *a4 = 1;
          goto LABEL_13;
        }

        v29 = [v6 assetDataPath];
        v30 = clonefile([v29 fileSystemRepresentation], objc_msgSend(v11, "fileSystemRepresentation"), 0);

        if (v30)
        {
          v31 = [v6 assetDataPath];
          v34 = createManagedAssetError("[ManagedAssetsClient(Profile) exportAssetsToPath:option:profile:error:]_block_invoke", 357, -20001, 0, 0, @"fail to export asset file %@ is errorno: %d", v32, v33, v31);
          v35 = *(*(a1 + 56) + 8);
          v36 = *(v35 + 40);
          *(v35 + 40) = v34;

          *a4 = 1;
        }

        else
        {
          v43 = *(a1 + 40);
          v49 = *MEMORY[0x277CCA1B0];
          v50 = *MEMORY[0x277CCA190];
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v45 = *(*(a1 + 56) + 8);
          v48 = *(v45 + 40);
          LOBYTE(v43) = [v43 setAttributes:v44 ofItemAtPath:v11 error:&v48];
          objc_storeStrong((v45 + 40), v48);

          if ((v43 & 1) == 0 && os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
          {
            __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_30_cold_1();
          }
        }

        sandbox_reference_release();
        v17 = 0;
      }

      goto LABEL_7;
    }

    v19 = [v6 assetFileHandle];
    [v19 seekToFileOffset:0];

    v20 = [v6 assetFileHandle];
    v17 = [v20 availableData];

    if (!v17)
    {
LABEL_7:
      v23 = [v6 assetMetaData];
      v24 = *(*(a1 + 56) + 8);
      v46 = *(v24 + 40);
      v25 = [v23 writeToFile:v15 options:536870913 error:&v46];
      objc_storeStrong((v24 + 40), v46);
      if (v25)
      {
        [*(a1 + 48) addObject:v7];
      }

      else
      {
        *a4 = 1;
      }

      goto LABEL_12;
    }
  }

  v21 = *(*(a1 + 56) + 8);
  obj = *(v21 + 40);
  v22 = [v17 writeToFile:v11 options:536870913 error:&obj];
  objc_storeStrong((v21 + 40), obj);
  if (v22)
  {
    goto LABEL_7;
  }

  *a4 = 1;
LABEL_12:

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)exportAssets:(id)assets option:(id)option error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionCopy = option;
  v10 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = assetsCopy;
    *&buf[12] = 2112;
    *&buf[14] = optionCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "exportAssets, uuid: %@, options: %@", buf, 0x16u);
  }

  if (assetsCopy)
  {
    v13 = [optionCopy objectForKeyedSubscript:@"com.apple.managedassets.exportoption.maxblobSize"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy_;
    v39 = __Block_byref_object_dispose_;
    v40 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = 0;
    conn = self->_conn;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__ManagedAssetsClient_Profile__exportAssets_option_error___block_invoke;
    v30[3] = &unk_27985EC00;
    v30[4] = buf;
    error = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v30, error];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__ManagedAssetsClient_Profile__exportAssets_option_error___block_invoke_2;
    v24[3] = &unk_27985ED60;
    v27 = buf;
    v24[4] = self;
    v25 = optionCopy;
    v17 = assetsCopy;
    v28 = &v31;
    v29 = integerValue;
    v26 = v17;
    [error SerializeAllAssets:v17 option:v25 completion:v24];

    v18 = *(*&buf[8] + 40);
    if (v18)
    {
      if (v23)
      {
        *v23 = v18;
      }

      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(Profile) exportAssets:v17 option:&buf[8] error:?];
      }
    }

    v19 = v32[5];

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    createManagedAssetError("[ManagedAssetsClient(Profile) exportAssets:option:error:]", 440, -20001, 0, 0, @"Null profile uuid String.", v11, v12, v22);
    *error = v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __58__ManagedAssetsClient_Profile__exportAssets_option_error___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v32 = a4;
  v11 = a6;
  if (v11)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a6);
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v12 = a1[4];
      v13 = a1[5];
      v14 = *(a1[7] + 8);
      obj = *(v14 + 40);
      v15 = [v12 parseExportOption:v13 error:&obj];
      objc_storeStrong((v14 + 40), obj);
      v16 = [v15 objectForKeyedSubscript:@"com.apple.managedassets.exportoption.kvstore"];
      v17 = [v16 BOOLValue];

      if (v17)
      {
        v18 = a1[4];
        v19 = a1[9];
        v20 = a1[6];
        v21 = *(a1[7] + 8);
        v30 = *(v21 + 40);
        v22 = [v18 exportCorePrescription:v10 profile:v20 payloadSize:&v32 sizeLimit:v19 profileType:a3 error:&v30];
        objc_storeStrong((v21 + 40), v30);

        v10 = v22;
      }

      a4 = v32;
    }

    v23 = a1[4];
    v24 = a1[9];
    v25 = *(a1[7] + 8);
    v29 = *(v25 + 40);
    v26 = [v23 constructV2Blob:v10 expectedSize:a4 sizeLimit:v24 profileType:a3 error:&v29];
    objc_storeStrong((v25 + 40), v29);
    v27 = *(a1[8] + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }
}

- (id)constructV2Blob:(id)blob expectedSize:(unint64_t)size sizeLimit:(unint64_t)limit profileType:(unint64_t)type error:(id *)error
{
  blobCopy = blob;
  if (size <= limit)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
    {
      [ManagedAssetsClient(Profile) constructV2Blob:expectedSize:sizeLimit:profileType:error:];
    }

    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
    {
      [ManagedAssetsClient(Profile) constructV2Blob:expectedSize:sizeLimit:profileType:error:];
    }

    v14 = MAConsturctAssetBlob(size, type, blobCopy, error);
    if (*error)
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(Profile) constructV2Blob:error expectedSize:? sizeLimit:? profileType:? error:?];
      }

      v14 = 0;
      blobCopy = 0;
    }
  }

  else
  {
    *error = createManagedAssetError("[ManagedAssetsClient(Profile) constructV2Blob:expectedSize:sizeLimit:profileType:error:]", 496, -20102, 0, 0, @"exported data size exceeds giving limit: %lu", v11, v12, limit);

    v14 = 0;
  }

  return v14;
}

- (id)writeV2BlobWith:(id)with optype:(int64_t)optype payload:(id)payload profileType:(unint64_t *)type error:(id *)error
{
  withCopy = with;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  payloadCopy = payload;
  bytes = [payloadCopy bytes];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = bytes;
  v11 = *(bytes + 6);
  bytes += 8 * v11 + 16;
  if (!v11)
  {
LABEL_13:
    *type = *(v10 + 8);
    goto LABEL_17;
  }

  v12 = (v10 + 20);
  while (1)
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:v13];
    v16 = [[MASDPlainAsset alloc] initWithData:v15];
    v19 = v16;
    if (!v16)
    {
      v35 = createManagedAssetError("[ManagedAssetsClient(Profile) writeV2BlobWith:optype:payload:profileType:error:]", 539, -20103, 0, 0, @"fail to parse asset metadata from serialized blob", v17, v18, type);
      goto LABEL_15;
    }

    bytes += v13;
    [(MASDPlainAsset *)v16 setAssetState:65];
    if ([(MASDPlainAsset *)v19 type]== 121)
    {
      break;
    }

    type = [(MASDPlainAsset *)v19 type];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __81__ManagedAssetsClient_Profile__writeV2BlobWith_optype_payload_profileType_error___block_invoke;
    v45[3] = &unk_27985ED88;
    v45[4] = &v59;
    v45[5] = &v53;
    v45[6] = &v47;
    [withCopy GetTempAssetFileHandle:optype assetType:type assetHandle:0 completion:v45];
    if (v48[5])
    {
      goto LABEL_16;
    }

    fileDescriptor = [v60[5] fileDescriptor];
    v27 = (v48 + 5);
    obj = v48[5];
    MAWriteDataUsingFileDescriptor(&bytes, fileDescriptor, v14, &obj, v28, v29, v30, v31);
    objc_storeStrong(v27, obj);
    v32 = (v48 + 5);
    if (v48[5])
    {
      goto LABEL_16;
    }

    v33 = v60[5];
    v43 = 0;
    v34 = MACloseFileHandleHelper(v33, &v43);
    objc_storeStrong(v32, v43);
    if (!v34)
    {
      goto LABEL_16;
    }

    [dictionary setObject:v15 forKeyedSubscript:v54[5]];
LABEL_12:
    v12 += 2;

    if (!--v11)
    {
      goto LABEL_13;
    }
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_12;
  }

  v20 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:v14];
  v23 = v20;
  if (v20)
  {
    v24 = [v20 length];
    bytes += v24;
    [dictionary setObject:v23 forKeyedSubscript:@"corePrescriptionData"];

    goto LABEL_12;
  }

  v35 = createManagedAssetError("[ManagedAssetsClient(Profile) writeV2BlobWith:optype:payload:profileType:error:]", 585, -20103, 0, 0, @"fail to get corePrescriptionData from blob", v21, v22, type);
LABEL_15:
  *error = v35;
LABEL_16:

LABEL_17:
  if (v48[5])
  {
    allKeys = [dictionary allKeys];
    [withCopy DeleteTempAsset:1 tokens:allKeys];

    [dictionary removeAllObjects];
    dictionary = 0;
    v37 = v48[5];
  }

  else
  {
    v37 = 0;
  }

  *error = v37;
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  return dictionary;
}

void __81__ManagedAssetsClient_Profile__writeV2BlobWith_optype_payload_profileType_error___block_invoke(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)importAssets:(id)assets option:(id)option completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionCopy = option;
  completionCopy = completion;
  v12 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = optionCopy;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "importAssets with options: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke;
    block[3] = &unk_27985EE28;
    block[4] = self;
    v23 = a2;
    v20 = optionCopy;
    v21 = assetsCopy;
    v22 = completionCopy;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    v16 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssets:option:completion:]", 618, -20001, 0, 0, @"null completion is passed in", v13, v14, v18);
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke(void *a1)
{
  v1 = a1;
  v59 = 0;
  v60[0] = &v59;
  v60[1] = 0x3032000000;
  v60[2] = __Block_byref_object_copy_;
  v60[3] = __Block_byref_object_dispose_;
  v61 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = -2;
  v2 = *(a1[4] + 40);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_2;
  v48[3] = &unk_27985EDB0;
  v3 = v1[8];
  v48[4] = &v59;
  v48[5] = v3;
  v38 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v48];
  v4 = v60[0];
  if (*(v60[0] + 40))
  {
    goto LABEL_2;
  }

  if (v1[5])
  {
    v9 = 0;
    v10 = 3;
  }

  else
  {
    v11 = [0 objectForKeyedSubscript:@"com.apple.managedassets.importoption.profileUUID"];

    if (v11)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v4 = v60[0];
    v9 = *(v60[0] + 40);
  }

  v12 = v1[6];
  obj = v9;
  v13 = MAVerifySerializedAssetBlob(v12, &obj);
  objc_storeStrong((v4 + 40), obj);
  v14 = _log;
  v15 = os_log_type_enabled(_log, OS_LOG_TYPE_INFO);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_INFO, "import as V1 blob", buf, 2u);
    }

    v19 = *(v60[0] + 40);
    *(v60[0] + 40) = 0;

    v20 = [[MASDSerializedAssets alloc] initWithData:v1[6]];
    v21 = [MEMORY[0x277CBEB38] dictionary];
    v37 = v1;
    v22 = 0;
    do
    {
      if ([(MASDSerializedAssets *)v20 assetsCount]<= v22)
      {
        break;
      }

      v23 = [(MASDSerializedAssets *)v20 assets];
      v24 = [v23 objectAtIndexedSubscript:v22];

      v25 = [v24 type];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_76;
      v41[3] = &unk_27985EDD8;
      v44 = &v59;
      v26 = v24;
      v42 = v26;
      v43 = v21;
      [v38 GetTempAssetFileHandle:v10 assetType:v25 assetHandle:0 completion:v41];
      v27 = *(v60[0] + 40);

      ++v22;
    }

    while (!v27);
    if (*(v60[0] + 40))
    {
      [v21 allKeys];
      v28 = v1 = v37;
      [v38 DeleteTempAsset:1 tokens:v28];

LABEL_2:
      v5 = 0;
      goto LABEL_3;
    }

    v5 = v21;
    v29 = [(MASDSerializedAssets *)v20 profileType];
    v1 = v37;
    v50[3] = v29;

    goto LABEL_23;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_INFO, "import as V2 blob", buf, 2u);
  }

  v16 = v1[4];
  v17 = v1[6];
  v18 = v60[0];
  v45 = *(v60[0] + 40);
  v5 = [v16 writeV2BlobWith:v38 optype:v10 payload:v17 profileType:v50 + 3 error:&v45];
  objc_storeStrong((v18 + 40), v45);
  if (!*(v60[0] + 40))
  {
LABEL_23:
    v30 = v1[5];
    v31 = v50[3];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_77;
    v40[3] = &unk_27985EE00;
    v40[4] = &v53;
    v40[5] = &v49;
    v40[6] = &v59;
    [v38 ImportSerializedV2Assets:v5 option:v30 profileType:v31 axData:0 completion:v40];
    if (_os_feature_enabled_impl())
    {
      v32 = [v5 objectForKeyedSubscript:@"corePrescriptionData"];

      if (v32)
      {
        v33 = v1[4];
        v34 = [v5 objectForKeyedSubscript:@"corePrescriptionData"];
        v35 = v54[5];
        v36 = v60[0];
        v39 = *(v60[0] + 40);
        LOBYTE(v33) = [v33 importCorePrescription:v34 profile:v35 error:&v39];
        objc_storeStrong((v36 + 40), v39);

        if ((v33 & 1) == 0 && os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
        {
          __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_cold_1(v60);
        }
      }
    }
  }

LABEL_3:
  v6 = v54[5];
  v7 = v50[3];
  v8 = *(v60[0] + 40);
  (*(v1[7] + 16))();

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_76(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  else
  {
    v11 = [*(a1 + 32) assetData];
    v12 = *(*(a1 + 48) + 8);
    obj = 0;
    v13 = [v8 writeData:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);

    if (v13)
    {
      [*(a1 + 32) setAssetData:0];
      v14 = *(*(a1 + 48) + 8);
      v17 = *(v14 + 40);
      v15 = MACloseFileHandleHelper(v8, &v17);
      objc_storeStrong((v14 + 40), v17);
      if (v15)
      {
        v16 = [*(a1 + 32) data];
        [*(a1 + 40) setObject:v16 forKeyedSubscript:v9];
      }
    }

    else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_76_cold_1(v8, (a1 + 48));
    }
  }
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_77(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  *(*(a1[5] + 8) + 24) = a3;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (void)importAssetsFromPath:(id)path option:(id)option completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  optionCopy = option;
  completionCopy = completion;
  v12 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = optionCopy;
    v26 = 2112;
    v27 = pathCopy;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_DEFAULT, "importAssets with options: %@ importDirectory:%@", buf, 0x16u);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke;
    block[3] = &unk_27985EEA0;
    block[4] = self;
    v23 = a2;
    v22 = completionCopy;
    v20 = pathCopy;
    v21 = optionCopy;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    v16 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]", 732, -20001, 0, 0, @"null completion is passed in", v13, v14, v18);
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke(void *a1)
{
  v85[2] = *MEMORY[0x277D85DE8];
  v81 = 0;
  v82[0] = &v81;
  v82[1] = 0x3032000000;
  v82[2] = __Block_byref_object_copy_;
  v82[3] = __Block_byref_object_dispose_;
  v83 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy_;
  v79 = __Block_byref_object_dispose_;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = -2;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy_;
  v69 = __Block_byref_object_dispose_;
  v70 = 0;
  v3 = *(a1[4] + 40);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_2;
  v64[3] = &unk_27985EDB0;
  v4 = a1[8];
  v64[4] = &v81;
  v64[5] = v4;
  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v64];
  if (*(v82[0] + 40))
  {
    (*(a1[7] + 16))();
LABEL_3:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = MEMORY[0x277CCACA8];
  v85[0] = a1[5];
  v85[1] = @"description";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
  v14 = [v12 pathWithComponents:v13];
  v10 = [v11 dataWithContentsOfFile:v14];

  if (!v10)
  {
    v28 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke", 765, -20001, 0, 0, @"no description file content in import directory", v15, v16, v43);
    v29 = *(v82[0] + 40);
    *(v82[0] + 40) = v28;

    v30 = *(v82[0] + 40);
    (*(a1[7] + 16))();
    goto LABEL_3;
  }

  v17 = v82[0];
  obj = *(v82[0] + 40);
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&obj];
  objc_storeStrong((v17 + 40), obj);
  v8 = [v9 objectForKeyedSubscript:@"ptype"];
  v7 = [v9 objectForKeyedSubscript:@"asset"];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
  {
    __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_cold_1();
  }

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & (v7 != 0)) != 1) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v23 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke", 775, -20001, 0, 0, @"description file content is insufficient", v18, v19, v43);
    v24 = *(v82[0] + 40);
    *(v82[0] + 40) = v23;

    v25 = *(v82[0] + 40);
    (*(a1[7] + 16))();
    v6 = 0;
    goto LABEL_13;
  }

  v20 = [v8 unsignedIntegerValue];
  v72[3] = v20;
  v21 = a1[5];
  v22 = v82[0];
  v62 = *(v82[0] + 40);
  v6 = [v2 contentsOfDirectoryAtPath:v21 error:&v62];
  objc_storeStrong((v22 + 40), v62);
  if (*(v82[0] + 40))
  {
    (*(a1[7] + 16))();
    goto LABEL_13;
  }

  v31 = [MEMORY[0x277CBEB38] dictionary];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_2_86;
  v54[3] = &unk_27985EE78;
  v6 = v6;
  v55 = v6;
  v60 = &v81;
  v56 = a1[5];
  v61 = &v65;
  location = v5;
  v57 = location;
  v58 = v2;
  v26 = v31;
  v59 = v26;
  [v7 enumerateObjectsUsingBlock:v54];
  if (*(v82[0] + 40))
  {
    (*(a1[7] + 16))();
  }

  else
  {
    v46 = MEMORY[0x277CCACA8];
    v84[0] = a1[5];
    v84[1] = @"AX.data";
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
    v33 = v46;
    v47 = v32;
    v45 = [v33 pathWithComponents:v32];

    v48 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v45];
    v34 = a1[6];
    v35 = v72[3];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_2_101;
    v53[3] = &unk_27985EE00;
    v53[4] = &v75;
    v53[5] = &v71;
    v53[6] = &v81;
    [location ImportSerializedV2Assets:v26 option:v34 profileType:v35 axData:v48 completion:v53];
    if (_os_feature_enabled_impl())
    {
      v36 = v66[5];
      if (v36)
      {
        v37 = a1[4];
        v38 = v76[5];
        locationa = (v82[0] + 40);
        v52 = *(v82[0] + 40);
        v44 = [v37 importCorePrescription:v36 profile:v38 error:&v52];
        objc_storeStrong(locationa, v52);
        if ((v44 & 1) == 0 && os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
        {
          __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_cold_1(v82);
        }
      }
    }

    v39 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258089000, v39, OS_LOG_TYPE_DEFAULT, "importAssets completed", buf, 2u);
    }

    v40 = v76[5];
    v41 = v72[3];
    v42 = *(v82[0] + 40);
    (*(a1[7] + 16))();
  }

LABEL_14:
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v81, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_2_86(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, @"asset"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@"];
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v29 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke_2", 793, -20001, 0, 0, @"asset file %@ is missing", v9, v10, v7);
LABEL_9:
    v30 = *(*(a1 + 72) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    *a4 = 1;
    goto LABEL_18;
  }

  if (([*(a1 + 32) containsObject:v8] & 1) == 0)
  {
    v29 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke_2", 799, -20001, 0, 0, @"metaData file %@ is missing", v11, v12, v8);
    goto LABEL_9;
  }

  v13 = MEMORY[0x277CCACA8];
  v54[0] = *(a1 + 40);
  v54[1] = v7;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v15 = [v13 pathWithComponents:v14];

  v16 = MEMORY[0x277CCACA8];
  v53[0] = *(a1 + 40);
  v53[1] = v8;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v18 = [v16 pathWithComponents:v17];

  v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v18];
  if (v21)
  {
    v22 = [[MASDPlainAsset alloc] initWithData:v21];
    v25 = v22;
    if (v22)
    {
      if ([(MASDPlainAsset *)v22 type]== 121)
      {
        v26 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v15];
        v27 = *(*(a1 + 80) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

      else
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = __Block_byref_object_copy_;
        v51 = __Block_byref_object_dispose_;
        v52 = 0;
        v40 = *(a1 + 48);
        v38 = [(MASDPlainAsset *)v25 type];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_3;
        v41[3] = &unk_27985EE50;
        v44 = *(a1 + 72);
        v42 = *(a1 + 56);
        v43 = v15;
        v45 = &v47;
        v46 = a4;
        [v40 GetTempAssetFilePathWithAssetType:v38 completion:v41];
        if (*(*(*(a1 + 72) + 8) + 40))
        {
          *a4 = 1;
        }

        else
        {
          [*(a1 + 64) setObject:v21 forKeyedSubscript:v48[5]];
        }

        _Block_object_dispose(&v47, 8);
      }
    }

    else
    {
      v35 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke_2", 815, -20103, 0, 0, @"fail to parse asset metadata from serialized blob", v23, v24, v6);
      v36 = *(*(a1 + 72) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      *a4 = 1;
    }
  }

  else
  {
    v32 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke_2", 808, -20001, 0, 0, @"metadata for asset identifier %@ is nil", v19, v20, v6);
    v33 = *(*(a1 + 72) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    *a4 = 1;
  }

LABEL_18:
  v39 = *MEMORY[0x277D85DE8];
}

void __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    _os_log_debug_impl(&dword_258089000, v13, OS_LOG_TYPE_DEBUG, "assetFilePath: %@, sessionToken: %@, sandboxToken:%@, error:%@", buf, 0x2Au);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    [v11 cStringUsingEncoding:4];
    if (sandbox_extension_consume() == -1)
    {
      v22 = __error();
      v25 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke", 836, -20000, 0, 0, @"sandbox extension consume error, errno=%u", v23, v24, *v22);
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = *(*(a1 + 48) + 8);
      obj = *(v15 + 40);
      v16 = [v14 removeItemAtPath:v9 error:&obj];
      objc_storeStrong((v15 + 40), obj);
      if (!v16)
      {
LABEL_12:
        sandbox_reference_release();
        goto LABEL_13;
      }

      if (clonefile([*(a1 + 40) fileSystemRepresentation], objc_msgSend(v9, "fileSystemRepresentation"), 0))
      {
        v19 = createManagedAssetError("[ManagedAssetsClient(Profile) importAssetsFromPath:option:completion:]_block_invoke", 847, -20001, 0, 0, @"fail to import asset file %@, errorno: %d", v17, v18, *(a1 + 40));
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        sandbox_reference_release();
        **(a1 + 64) = 1;
        goto LABEL_13;
      }

      v28 = *(*(a1 + 56) + 8);
      v29 = v10;
      v27 = *(v28 + 40);
      *(v28 + 40) = v29;
    }

    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

void __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_2_101(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  *(*(a1[5] + 8) + 24) = a3;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (id)parseAssetBlob:(id)blob error:(id *)error
{
  blobCopy = blob;
  v7 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "parseAssetBlob", buf, 2u);
  }

  if (blobCopy)
  {
    v29 = 0;
    v8 = MAVerifySerializedAssetBlob(blobCopy, &v29);
    v9 = v29;
    v10 = _log;
    v11 = os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v11)
      {
        [ManagedAssetsClient(Profile) parseAssetBlob:v10 error:?];
      }

      v28 = v9;
      v12 = [(ManagedAssetsClient *)self parseV2BlobPayload:blobCopy error:&v28];
      v13 = v28;
    }

    else
    {
      if (v11)
      {
        [ManagedAssetsClient(Profile) parseAssetBlob:error:];
      }

      v18 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
      {
        [ManagedAssetsClient(Profile) parseAssetBlob:v18 error:?];
      }

      v9 = [[MASDSerializedAssets alloc] initWithData:blobCopy];
      if (v9)
      {
        v21 = [MEMORY[0x277CBEB58] set];
        assets = [(MASDSerializedAssets *)v9 assets];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __53__ManagedAssetsClient_Profile__parseAssetBlob_error___block_invoke;
        v26[3] = &unk_27985EEC8;
        v12 = v21;
        v27 = v12;
        [assets enumerateObjectsUsingBlock:v26];

        v13 = 0;
      }

      else
      {
        v13 = createManagedAssetError("[ManagedAssetsClient(Profile) parseAssetBlob:error:]", 929, -20001, 0, 0, @"Serialized blob is corrupted", v19, v20, v25);
        v12 = 0;
      }
    }

    if (v13 && os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) parseAssetBlob:error:];
      if (!error)
      {
        goto LABEL_22;
      }
    }

    else if (!error)
    {
LABEL_22:
      v17 = v12;

      goto LABEL_23;
    }

    v23 = v13;
    *error = v13;
    goto LABEL_22;
  }

  v14 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    [ManagedAssetsClient(Profile) parseAssetBlob:v14 error:?];
    if (error)
    {
      goto LABEL_10;
    }
  }

  else if (error)
  {
LABEL_10:
    createManagedAssetError("[ManagedAssetsClient(Profile) parseAssetBlob:error:]", 906, -20001, 0, 0, @"serializedAssetsData is nil", v15, v16, v25);
    *error = v17 = 0;
    goto LABEL_23;
  }

  v17 = 0;
LABEL_23:

  return v17;
}

- (id)parseV2BlobPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v6 = [MEMORY[0x277CBEB58] set];
  bytes = [payloadCopy bytes];
  v8 = *(bytes + 6);
  if (*(bytes + 6))
  {
    v9 = 8 * v8 + 16;
    v10 = (bytes + 20);
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = [payloadCopy subdataWithRange:{v9, v11}];
      v14 = v9 + v11;
      v15 = [payloadCopy subdataWithRange:{v14, v12}];
      v16 = [[MASDPlainAsset alloc] initWithData:v13];
      if (!v16)
      {
        break;
      }

      v19 = v16;
      v10 += 2;
      v9 = v14 + v12;
      [(MASDPlainAsset *)v16 setAssetData:v15];
      [v6 addObject:v19];

      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    *error = createManagedAssetError("[ManagedAssetsClient(Profile) parseV2BlobPayload:error:]", 963, -20103, 0, 0, @"fail to decode asset meta data", v17, v18, v21);
    [v6 removeAllObjects];

    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)parseExportOption:(id)option error:(id *)error
{
  if (option)
  {
    v4 = MEMORY[0x277CBEB38];
    optionCopy = option;
    dictionary = [v4 dictionary];
    v7 = [optionCopy objectForKeyedSubscript:@"com.apple.managedassets.exportoption.kvstore"];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [dictionary setObject:v7 forKeyedSubscript:@"com.apple.managedassets.exportoption.kvstore"];
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)exportCorePrescription:(id)prescription profile:(id)profile payloadSize:(unint64_t *)size sizeLimit:(unint64_t)limit profileType:(unint64_t)type error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  prescriptionCopy = prescription;
  v13 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v15 = [v13 arrayWithArray:prescriptionCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"coreRXUserGroup" forKeyedSubscript:@"group"];
  [dictionary setObject:@"user" forKeyedSubscript:@"group.type"];
  [dictionary setObject:profileCopy forKeyedSubscript:@"uuid"];

  [dictionary setObject:&unk_2869424E0 forKeyedSubscript:@"kvs.options"];
  v39 = 0;
  v17 = [(ManagedAssetsClient *)self checkIfKVStoreGroupExistUsing:dictionary exist:&v39 error:error];
  v18 = _log;
  if (!v17)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) exportCorePrescription:error profile:? payloadSize:? sizeLimit:? profileType:? error:?];
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v41 = @"coreRXUserGroup";
    v42 = 1024;
    v43 = v39;
    _os_log_impl(&dword_258089000, v18, OS_LOG_TYPE_INFO, "kvStore group %@ exist: %d", buf, 0x12u);
  }

  if (v39 != 1)
  {
LABEL_10:
    v20 = 0;
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v19 = [(ManagedAssetsClient *)self queryDataInStore:@"rxDataSharing2" keys:MEMORY[0x277CBEC10] attributes:dictionary error:error];
  v20 = v19;
  if (*error)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) exportCorePrescription:error profile:? payloadSize:? sizeLimit:? profileType:? error:?];
    }

    goto LABEL_11;
  }

  v26 = [v19 count];
  v27 = _log;
  if (!v26)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = @"rxDataSharing2";
      _os_log_impl(&dword_258089000, v27, OS_LOG_TYPE_INFO, "Empty records from store %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient(Profile) exportCorePrescription:profile:payloadSize:sizeLimit:profileType:error:];
  }

  v28 = [MEMORY[0x277CCAC58] dataWithPropertyList:v20 format:200 options:0 error:error];
  if (*error)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) exportCorePrescription:error profile:? payloadSize:? sizeLimit:? profileType:? error:?];
    }
  }

  else
  {
    v29 = _log;
    if (v28)
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
      {
        [ManagedAssetsClient(Profile) exportCorePrescription:v29 profile:v28 payloadSize:? sizeLimit:? profileType:? error:?];
      }

      v30 = objc_alloc_init(MASDSerializedAssetFileInfo);
      uUID = [MEMORY[0x277CCAD78] UUID];
      [uUID UUIDString];
      v32 = v38 = v28;
      [(MASDSerializedAssetFileInfo *)v30 setAssetHandle:v32];

      -[MASDSerializedAssetFileInfo setAssetDataLen:](v30, "setAssetDataLen:", [v38 length]);
      [(MASDSerializedAssetFileInfo *)v30 setSandboxToken:0];
      [(MASDSerializedAssetFileInfo *)v30 setAssetDataPath:0];
      [(MASDSerializedAssetFileInfo *)v30 setAssetFileHandle:0];
      [(MASDSerializedAssetFileInfo *)v30 setAssetData:v38];
      v33 = objc_opt_new();
      [v33 setType:121];
      [v33 setLabel:@"rxDataSharing2"];
      v34 = [MEMORY[0x277CBEAA8] now];
      [v34 timeIntervalSince1970];
      [v33 setCreationTime:?];

      v35 = [MEMORY[0x277CBEAA8] now];
      [v35 timeIntervalSince1970];
      [v33 setLastUpdatedTime:?];

      [v33 setLastUpdateAlgorithmVersion:@"BYOE Demo"];
      [v33 setLastUpdateOSVersion:@"BYOE Demo"];
      data = [v33 data];
      [(MASDSerializedAssetFileInfo *)v30 setAssetMetaData:data];
      [v15 addObject:v30];
      v37 = [data length];
      *size += v37 + [v38 length] + 8;
      v21 = v15;

      v28 = v38;
      goto LABEL_32;
    }

    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) exportCorePrescription:error profile:? payloadSize:? sizeLimit:? profileType:? error:?];
    }
  }

  v21 = 0;
LABEL_32:

LABEL_12:
  v22 = prescriptionCopy;
  if (!*error)
  {
    if ([v20 count])
    {
      v22 = v21;
    }

    else
    {
      v22 = prescriptionCopy;
    }
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)importCorePrescription:(id)prescription profile:(id)profile error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  prescriptionCopy = prescription;
  profileCopy = profile;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"coreRXUserGroup" forKeyedSubscript:@"group"];
  [dictionary setObject:@"user" forKeyedSubscript:@"group.type"];
  [dictionary setObject:profileCopy forKeyedSubscript:@"uuid"];
  [dictionary setObject:&unk_2869424F8 forKeyedSubscript:@"kvs.options"];
  v11 = [MEMORY[0x277CCAC58] propertyListWithData:prescriptionCopy options:2 format:0 error:error];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient(Profile) importCorePrescription:profile:error:];
    if (!v11)
    {
LABEL_4:
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(Profile) importCorePrescription:error profile:? error:?];
      }

      goto LABEL_6;
    }
  }

  else if (!v11)
  {
    goto LABEL_4;
  }

  if (*error)
  {
    goto LABEL_4;
  }

  selfCopy = self;
  errorCopy = error;
  v23 = profileCopy;
  v24 = prescriptionCopy;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        [v20 setObject:&unk_286942510 forKeyedSubscript:{@"_MA_stagingFrom", selfCopy, errorCopy}];
        [v20 setObject:&unk_286942510 forKeyedSubscript:@"_MA_ckSyncState"];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  if ([(ManagedAssetsClient *)selfCopy putDataInStore:@"rxDataSharing2" records:v15 attributes:dictionary error:errorCopy])
  {
    v12 = 1;
    profileCopy = v23;
    prescriptionCopy = v24;
    goto LABEL_7;
  }

  profileCopy = v23;
  prescriptionCopy = v24;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    [ManagedAssetsClient(Profile) importCorePrescription:errorCopy profile:? error:?];
  }

LABEL_6:
  v12 = 0;
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)addOrUpdateDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier data:(id)data completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  dataCopy = data;
  completionCopy = completion;
  v14 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = clientIdentifierCopy;
    _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_INFO, "async addOrUpdateDataForAnchorIdentifier, anchorIdentifier: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (identifierCopy)
  {
    if (clientIdentifierCopy)
    {
      if (dataCopy)
      {
        backgroundQueue = self->_backgroundQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke;
        block[3] = &unk_27985EF90;
        block[4] = self;
        v27 = completionCopy;
        v24 = clientIdentifierCopy;
        v25 = identifierCopy;
        v26 = dataCopy;
        dispatch_async(backgroundQueue, block);

        v16 = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
      }

      v19 = @"anchor data is nil";
      v20 = 49;
    }

    else
    {
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
      }

      v19 = @"clientIdentifier is nil";
      v20 = 40;
    }
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    v19 = @"anchorIdentifier is nil";
    v20 = 31;
  }

  v16 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:]", v20, -20001, 0, 0, v19, v17, v18, v22);
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v16);
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2;
  v18[3] = &unk_27985EF18;
  v19 = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v18];
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 40);
  v22[0] = @"3DAnchors";
  v22[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v7 = [v4 pathWithComponents:v6];

  v8 = [*(a1 + 48) UUIDString];
  v20[0] = @"group";
  v20[1] = @"file.options";
  v21[0] = v7;
  v21[1] = &unk_286942528;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_12;
  v12[3] = &unk_27985EF68;
  v13 = *(a1 + 56);
  v17 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = v3;
  v16 = *(a1 + 40);
  v10 = v3;
  [v10 openFile:v8 mode:2 attributes:v9 reply:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 32);
    v20 = 0;
    [v7 writeData:v10 error:&v20];
    v11 = v20;
    [v7 closeFile];
    if (v11)
    {
      if (*(a1 + 64))
      {
        v12 = _log_0;
        if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
        {
          __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_12_cold_1(a1, v12);
        }

        (*(*(a1 + 64) + 16))();
      }
    }

    else
    {
      v15 = *(a1 + 48);
      v16 = [*(a1 + 40) UUIDString];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_13;
      v17[3] = &unk_27985EF40;
      v18 = *(a1 + 40);
      v19 = *(a1 + 64);
      [v15 commitFile:v16 attributes:v8 reply:v17];
    }
  }

  else
  {
    v13 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_12_cold_2(a1, v13);
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, v9);
    }
  }
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_13_cold_1(a1, v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (BOOL)addOrUpdateDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier data:(id)data error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  dataCopy = data;
  v13 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = clientIdentifierCopy;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_INFO, "sync addOrUpdateDataForAnchorIdentifier, anchorIdentifier: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (identifierCopy)
  {
    if (clientIdentifierCopy)
    {
      if (dataCopy)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v63 = __Block_byref_object_copy__1;
        v64 = __Block_byref_object_dispose__1;
        v65 = 0;
        conn = self->_conn;
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke;
        v58[3] = &unk_27985EC00;
        v58[4] = buf;
        v15 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v58];
        v16 = *(*&buf[8] + 40);
        if (v16)
        {
          v17 = 0;
          if (error)
          {
            *error = v16;
          }

          goto LABEL_30;
        }

        v25 = MEMORY[0x277CCACA8];
        v61[0] = @"3DAnchors";
        v61[1] = clientIdentifierCopy;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
        v27 = [v25 pathWithComponents:v26];

        v52 = 0;
        v53 = &v52;
        v54 = 0x3032000000;
        v55 = __Block_byref_object_copy__1;
        v56 = __Block_byref_object_dispose__1;
        v57 = 0;
        v46 = 0;
        v47 = &v46;
        v48 = 0x3032000000;
        v49 = __Block_byref_object_copy__1;
        v50 = __Block_byref_object_dispose__1;
        v51 = 0;
        uUIDString = [identifierCopy UUIDString];
        v59[0] = @"group";
        v59[1] = @"file.options";
        v60[0] = v27;
        v60[1] = &unk_286942528;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke_16;
        v40[3] = &unk_27985EFB8;
        v43 = &v52;
        v44 = &v46;
        v30 = identifierCopy;
        v41 = v30;
        v42 = clientIdentifierCopy;
        v45 = buf;
        [v15 openFile:uUIDString mode:2 attributes:v29 reply:v40];

        v32 = (*&buf[8] + 40);
        v31 = *(*&buf[8] + 40);
        if (v31)
        {
          v17 = 0;
          if (!error)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v33 = v53[5];
          obj = 0;
          [v33 writeData:dataCopy error:&obj];
          objc_storeStrong(v32, obj);
          [v53[5] closeFile];
          uUIDString2 = [v30 UUIDString];
          v35 = v47[5];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke_17;
          v38[3] = &unk_27985EC00;
          v38[4] = buf;
          [v15 commitFile:uUIDString2 attributes:v35 reply:v38];

          v31 = *(*&buf[8] + 40);
          v17 = v31 == 0;
          if (!error)
          {
LABEL_29:

            _Block_object_dispose(&v46, 8);
            _Block_object_dispose(&v52, 8);

LABEL_30:
            _Block_object_dispose(buf, 8);

            goto LABEL_31;
          }
        }

        *error = v31;
        goto LABEL_29;
      }

      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
      }

      if (error)
      {
        v20 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:error:]", 130, -20001, 0, 0, @"anchor data is nil", v23, v24, v38[0]);
        goto LABEL_21;
      }

LABEL_22:
      v17 = 0;
      goto LABEL_31;
    }

    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (!error)
    {
      goto LABEL_22;
    }

    v20 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:error:]", 122, -20001, 0, 0, @"clientIdentifier is nil", v21, v22, v38[0]);
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (!error)
    {
      goto LABEL_22;
    }

    v20 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:error:]", 114, -20001, 0, 0, @"anchorIdentifier is nil", v18, v19, v38[0]);
  }

LABEL_21:
  v17 = 0;
  *error = v20;
LABEL_31:

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

void __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v11 = 56;
  }

  else
  {
    v12 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke_16_cold_1(a1, v12);
    }

    v11 = 64;
    a3 = a4;
  }

  objc_storeStrong((*(*(a1 + v11) + 8) + 40), a3);
}

void __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke_17(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (BOOL)removeDataForAnchorIdentifiers:(id)identifiers clientIdentifier:(id)identifier error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v10 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = identifiersCopy;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "sync removeDataForAnchorIdentifiers, anchorIdentifiers: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (!identifiersCopy || ![identifiersCopy count])
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) removeDataForAnchorIdentifiers:clientIdentifier:error:];
    }

    if (error)
    {
      v18 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) removeDataForAnchorIdentifiers:clientIdentifier:error:]", 203, -20001, 0, 0, @"anchorIdentifiers is nil or zero array", v16, v17, v27);
LABEL_13:
      v15 = 0;
      *error = v18;
      goto LABEL_24;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_24;
  }

  if (!identifierCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      v18 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) removeDataForAnchorIdentifiers:clientIdentifier:error:]", 211, -20001, 0, 0, @"clientIdentifier is nil", v19, v20, v27);
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  conn = self->_conn;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke;
  v33[3] = &unk_27985EC00;
  v33[4] = buf;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v33];
  v13 = *(*&buf[8] + 40);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    v21 = MEMORY[0x277CCACA8];
    v34[0] = @"3DAnchors";
    v34[1] = identifierCopy;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v23 = [v21 pathWithComponents:v22];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke_21;
    v28[3] = &unk_27985F008;
    v29 = v12;
    v14 = v23;
    v30 = v14;
    v31 = identifierCopy;
    v32 = buf;
    [identifiersCopy enumerateObjectsUsingBlock:v28];
    v24 = *(*&buf[8] + 40);
    v15 = v24 == 0;
    if (error && v24)
    {
      *error = v24;
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

void __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke_21(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 UUIDString];
  v19 = @"group";
  v20[0] = *(a1 + 40);
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke_2;
  v14[3] = &unk_27985EFE0;
  v15 = v6;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v16 = v10;
  v17 = v11;
  v18 = a4;
  v12 = v6;
  [v7 deleteFile:v8 attributes:v9 reply:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke_2_cold_1(a1, v5);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    **(a1 + 56) = 1;
  }
}

- (id)getDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v10 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = clientIdentifierCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "sync getDataForAnchorIdentifier, anchorIdentifier: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (!identifierCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      v17 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) getDataForAnchorIdentifier:clientIdentifier:error:]", 265, -20001, 0, 0, @"anchorIdentifier is nil", v15, v16, obj);
LABEL_16:
      v14 = 0;
      *error = v17;
      goto LABEL_29;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_29;
  }

  if (!clientIdentifierCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      v17 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) getDataForAnchorIdentifier:clientIdentifier:error:]", 273, -20001, 0, 0, @"clientIdentifier is nil", v18, v19, obj);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__1;
  v49 = __Block_byref_object_dispose__1;
  v50 = 0;
  conn = self->_conn;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke;
  v43[3] = &unk_27985EC00;
  v43[4] = buf;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v43];
  v13 = *(*&buf[8] + 40);
  if (v13)
  {
    v14 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v46[0] = @"3DAnchors";
    v46[1] = clientIdentifierCopy;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v22 = [v20 pathWithComponents:v21];

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__1;
    v41 = __Block_byref_object_dispose__1;
    v42 = 0;
    uUIDString = [identifierCopy UUIDString];
    v44 = @"group";
    v45 = v22;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke_23;
    v32[3] = &unk_27985F030;
    v35 = &v37;
    v25 = identifierCopy;
    v33 = v25;
    v34 = clientIdentifierCopy;
    v36 = buf;
    [v12 openFile:uUIDString mode:1 attributes:v24 reply:v32];

    v26 = (*&buf[8] + 40);
    if (*(*&buf[8] + 40))
    {
      v27 = 0;
    }

    else
    {
      v28 = v38[5];
      obj = 0;
      v27 = [v28 readDataToEndOfFileAndReturnError:&obj];
      objc_storeStrong(v26, obj);
      if (*(*&buf[8] + 40) && os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(AnchorPersist) getDataForAnchorIdentifier:v25 clientIdentifier:&buf[8] error:?];
      }

      [v38[5] closeFile];
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v14 = v27;

    _Block_object_dispose(&v37, 8);
  }

  _Block_object_dispose(buf, 8);
LABEL_29:

  v29 = *MEMORY[0x277D85DE8];

  return v14;
}

void __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke_23(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = 48;
  }

  else
  {
    v12 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke_23_cold_1(a1, v12);
    }

    v11 = 56;
    v6 = a4;
  }

  objc_storeStrong((*(*(a1 + v11) + 8) + 40), v6);
}

- (void)getDataForAllAnchors:(id)anchors completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  anchorsCopy = anchors;
  completionCopy = completion;
  v8 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = anchorsCopy;
    _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "async getDataForAllAnchors, clientIdentifier: %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    if (anchorsCopy)
    {
      conn = self->_conn;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke;
      v28[3] = &unk_27985EF18;
      v10 = completionCopy;
      v29 = v10;
      v11 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v28];
      v12 = MEMORY[0x277CCACA8];
      v32[0] = @"3DAnchors";
      v32[1] = anchorsCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v14 = [v12 pathWithComponents:v13];

      v30 = @"group";
      v31 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_27;
      v23[3] = &unk_27985F0D0;
      v27 = v10;
      v24 = v11;
      v25 = v14;
      v26 = anchorsCopy;
      v16 = v14;
      v17 = v11;
      [v17 queryFile:@"/" attributes:v15 reply:v23];
    }

    else
    {
      if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
      }

      v20 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) getDataForAllAnchors:completion:]", 337, -20001, 0, 0, @"clientIdentifier is nil", v18, v19, v22);
      (*(completionCopy + 2))(completionCopy, 0, v20);
    }
  }

  else if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    [ManagedAssetsClient(AnchorPersist) getDataForAllAnchors:completion:];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_27_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_29;
    v19[3] = &unk_27985F058;
    v8 = v7;
    v20 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v19];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v21[0] = @"group";
    v21[1] = @"file.options";
    v22[0] = v9;
    v22[1] = &unk_286942540;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_36;
    v15[3] = &unk_27985F0A8;
    v16 = *(a1 + 48);
    v12 = *(a1 + 56);
    v17 = v8;
    v18 = v12;
    v13 = v8;
    [v10 openFiles:v13 mode:1 attributes:v11 reply:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasSuffix:@".masdtrans"] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_36(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_36_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_38;
    v13[3] = &unk_27985F080;
    v14 = v10;
    v15 = *(a1 + 40);
    v11 = v10;
    [v7 enumerateObjectsUsingBlock:v13];
    (*(*(a1 + 48) + 16))(*(a1 + 48), v11, 0, v12);
  }
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9 = [a2 availableData];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v8 = [v6 initWithUUIDString:v7];
  [v5 setObject:v9 forKey:v8];
}

- (void)getDataForAnchorIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  completionCopy = completion;
  v11 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = identifierCopy;
    v25 = 2112;
    v26 = clientIdentifierCopy;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "async getDataForAnchorIdentifier, anchorIdentifier: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (identifierCopy)
  {
    if (clientIdentifierCopy)
    {
      backgroundQueue = self->_backgroundQueue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke;
      v19[3] = &unk_27985F120;
      v19[4] = self;
      v22 = completionCopy;
      v20 = clientIdentifierCopy;
      v21 = identifierCopy;
      dispatch_async(backgroundQueue, v19);

      v13 = 0;
      goto LABEL_14;
    }

    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    v16 = @"clientIdentifier is nil";
    v17 = 405;
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    v16 = @"anchorIdentifier is nil";
    v17 = 396;
  }

  v13 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) getDataForAnchorIdentifier:clientIdentifier:completion:]", v17, -20001, 0, 0, v16, v14, v15, v19[0]);
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

void __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke_2;
  v15[3] = &unk_27985EF18;
  v16 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v15];
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 40);
  v19[0] = @"3DAnchors";
  v19[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v7 = [v4 pathWithComponents:v6];

  v8 = [*(a1 + 48) UUIDString];
  v17 = @"group";
  v18 = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke_43;
  v11[3] = &unk_27985F0F8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  [v3 openFile:v8 mode:1 attributes:v9 reply:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }
}

void __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke_43(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _log_0;
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke_23_cold_1(a1, v10);
    }

    v11 = *(a1 + 48);
    v12 = v9;
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v9);
      v12 = v9;
    }
  }

  else
  {
    v15 = 0;
    v13 = [v7 readDataToEndOfFileAndReturnError:&v15];
    v12 = v15;
    if (v12 && os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke_43_cold_2(a1);
    }

    [v7 closeFile];
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, v13, v12);
    }
  }
}

- (id)getDataForAllAnchors:(id)anchors error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  anchorsCopy = anchors;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v7 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = anchorsCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "sync getDataForAllAnchors, clientIdentifier: %@", &buf, 0xCu);
  }

  if (anchorsCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__1;
    v52 = __Block_byref_object_dispose__1;
    v53 = 0;
    conn = self->_conn;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke;
    v37[3] = &unk_27985EC00;
    v37[4] = &buf;
    v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v37];
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      if (error)
      {
        *error = v10;
      }

      v11 = v39[5];
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__1;
      v35 = __Block_byref_object_dispose__1;
      v36 = 0;
      v14 = MEMORY[0x277CCACA8];
      v48[0] = @"3DAnchors";
      v48[1] = anchorsCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v16 = [v14 pathWithComponents:v15];

      v46 = @"group";
      v47 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_44;
      v30[3] = &unk_27985F170;
      v30[4] = &v31;
      v30[5] = &buf;
      [v9 queryFile:@"/" attributes:v17 reply:v30];

      v18 = *(*(&buf + 1) + 40);
      if (v18)
      {
        if (error)
        {
          *error = v18;
        }

        v11 = v39[5];
      }

      else
      {
        v19 = v32[5];
        v44[0] = @"group";
        v44[1] = @"file.options";
        v45[0] = v16;
        v45[1] = &unk_286942540;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_3;
        v25[3] = &unk_27985F1C0;
        v26 = anchorsCopy;
        p_buf = &buf;
        v28 = &v38;
        v29 = &v31;
        [v9 openFiles:v19 mode:1 attributes:v20 reply:v25];

        if (error)
        {
          v21 = *(*(&buf + 1) + 40);
          if (v21)
          {
            *error = v21;
          }
        }

        v11 = v39[5];
      }

      _Block_object_dispose(&v31, 8);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      *error = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) getDataForAllAnchors:error:]", 457, -20001, 0, 0, @"clientIdentifier is nil", v12, v13, v24);
    }

    v11 = v39[5];
  }

  _Block_object_dispose(&v38, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

void __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_2;
    v10[3] = &unk_27985F148;
    v10[4] = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasSuffix:@".masdtrans"] & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_36_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_45;
    v13[3] = &unk_27985F198;
    v14 = *(a1 + 48);
    [v7 enumerateObjectsUsingBlock:v13];
  }
}

void __65__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_error___block_invoke_45(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = [a2 availableData];
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a3];
  v8 = [v6 initWithUUIDString:v7];
  [v5 setObject:v9 forKey:v8];
}

- (BOOL)removeDataForAllAnchors:(id)anchors error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  anchorsCopy = anchors;
  v7 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = anchorsCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "sync removeDataForAllAnchors, clientIdentifier: %@", &buf, 0xCu);
  }

  if (anchorsCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__1;
    v32 = __Block_byref_object_dispose__1;
    v33 = 0;
    conn = self->_conn;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__ManagedAssetsClient_AnchorPersist__removeDataForAllAnchors_error___block_invoke;
    v25[3] = &unk_27985EC00;
    v25[4] = &buf;
    v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v25];
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      v11 = 0;
      if (error)
      {
        *error = v10;
      }
    }

    else
    {
      v14 = MEMORY[0x277CCACA8];
      v28[0] = @"3DAnchors";
      v28[1] = anchorsCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v16 = [v14 pathWithComponents:v15];

      v26 = @"group";
      v27 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __68__ManagedAssetsClient_AnchorPersist__removeDataForAllAnchors_error___block_invoke_46;
      v22[3] = &unk_27985F1E8;
      v23 = anchorsCopy;
      p_buf = &buf;
      [v9 deleteFile:@"/" attributes:v17 reply:v22];

      v18 = *(*(&buf + 1) + 40);
      v11 = v18 == 0;
      if (error && v18)
      {
        *error = v18;
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      createManagedAssetError("[ManagedAssetsClient(AnchorPersist) removeDataForAllAnchors:error:]", 538, -20001, 0, 0, @"clientIdentifier is nil", v12, v13, v21);
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void __68__ManagedAssetsClient_AnchorPersist__removeDataForAllAnchors_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __68__ManagedAssetsClient_AnchorPersist__removeDataForAllAnchors_error___block_invoke_46(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __68__ManagedAssetsClient_AnchorPersist__removeDataForAllAnchors_error___block_invoke_46_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (BOOL)addAnchorGroup:(id)group clientIdentifier:(id)identifier error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  identifierCopy = identifier;
  v10 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = groupCopy;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "sync addAnchorGroup, groupIdentifier: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (!groupCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addAnchorGroup:clientIdentifier:error:];
    }

    if (error)
    {
      v17 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) addAnchorGroup:clientIdentifier:error:]", 589, -20001, 0, 0, @"groupIdentifier is nil", v15, v16, v23[0]);
LABEL_16:
      v14 = 0;
      *error = v17;
      goto LABEL_23;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_23;
  }

  if (!identifierCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      v17 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) addAnchorGroup:clientIdentifier:error:]", 597, -20001, 0, 0, @"clientIdentifier is nil", v18, v19, v23[0]);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  conn = self->_conn;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__ManagedAssetsClient_AnchorPersist__addAnchorGroup_clientIdentifier_error___block_invoke;
  v27[3] = &unk_27985EC00;
  v27[4] = buf;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v27];
  v13 = *(*&buf[8] + 40);
  if (v13)
  {
    v14 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__ManagedAssetsClient_AnchorPersist__addAnchorGroup_clientIdentifier_error___block_invoke_50;
    v23[3] = &unk_27985F210;
    v24 = groupCopy;
    v25 = identifierCopy;
    v26 = buf;
    [v12 AddAnchorGroup:v24 clientIdentifier:v25 completion:v23];
    v20 = *(*&buf[8] + 40);
    v14 = v20 == 0;
    if (error && v20)
    {
      *error = v20;
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_23:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

void __76__ManagedAssetsClient_AnchorPersist__addAnchorGroup_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __76__ManagedAssetsClient_AnchorPersist__addAnchorGroup_clientIdentifier_error___block_invoke_50(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __76__ManagedAssetsClient_AnchorPersist__addAnchorGroup_clientIdentifier_error___block_invoke_50_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (BOOL)removeAnchorGroup:(id)group clientIdentifier:(id)identifier error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  identifierCopy = identifier;
  v10 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = groupCopy;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "sync removeAnchorGroup, groupIdentifier: %@ clientIdentifier: %@", buf, 0x16u);
  }

  if (!groupCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addAnchorGroup:clientIdentifier:error:];
    }

    if (error)
    {
      v17 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) removeAnchorGroup:clientIdentifier:error:]", 645, -20001, 0, 0, @"groupIdentifier is nil", v15, v16, v23[0]);
LABEL_16:
      v14 = 0;
      *error = v17;
      goto LABEL_23;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_23;
  }

  if (!identifierCopy)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      v17 = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) removeAnchorGroup:clientIdentifier:error:]", 653, -20001, 0, 0, @"clientIdentifier is nil", v18, v19, v23[0]);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  conn = self->_conn;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__ManagedAssetsClient_AnchorPersist__removeAnchorGroup_clientIdentifier_error___block_invoke;
  v27[3] = &unk_27985EC00;
  v27[4] = buf;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v27];
  v13 = *(*&buf[8] + 40);
  if (v13)
  {
    v14 = 0;
    if (error)
    {
      *error = v13;
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__ManagedAssetsClient_AnchorPersist__removeAnchorGroup_clientIdentifier_error___block_invoke_51;
    v23[3] = &unk_27985F210;
    v24 = groupCopy;
    v25 = identifierCopy;
    v26 = buf;
    [v12 RemoveAnchorGroup:v24 clientIdentifier:v25 completion:v23];
    v20 = *(*&buf[8] + 40);
    v14 = v20 == 0;
    if (error && v20)
    {
      *error = v20;
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_23:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

void __79__ManagedAssetsClient_AnchorPersist__removeAnchorGroup_clientIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __79__ManagedAssetsClient_AnchorPersist__removeAnchorGroup_clientIdentifier_error___block_invoke_51(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __79__ManagedAssetsClient_AnchorPersist__removeAnchorGroup_clientIdentifier_error___block_invoke_51_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

- (id)getAllAnchorGroupsForClient:(id)client error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v7 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = clientCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "sync getAllAnchorGroupsForClient, clientIdentifier: %@", &buf, 0xCu);
  }

  if (clientCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__1;
    v30 = __Block_byref_object_dispose__1;
    v31 = 0;
    conn = self->_conn;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__ManagedAssetsClient_AnchorPersist__getAllAnchorGroupsForClient_error___block_invoke;
    v20[3] = &unk_27985EC00;
    v20[4] = &buf;
    v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v20];
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      if (error)
      {
        *error = v10;
      }

      v11 = v22[5];
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __72__ManagedAssetsClient_AnchorPersist__getAllAnchorGroupsForClient_error___block_invoke_52;
      v16[3] = &unk_27985F238;
      v17 = clientCopy;
      p_buf = &buf;
      v19 = &v21;
      [v9 GetAllAnchorGroups:v17 completion:v16];
      if (error)
      {
        *error = *(*(&buf + 1) + 40);
      }

      v11 = v22[5];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      *error = createManagedAssetError("[ManagedAssetsClient(AnchorPersist) getAllAnchorGroupsForClient:error:]", 700, -20001, 0, 0, @"clientIdentifier is nil", v12, v13, v16[0]);
    }

    v11 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

void __72__ManagedAssetsClient_AnchorPersist__getAllAnchorGroupsForClient_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __72__ManagedAssetsClient_AnchorPersist__getAllAnchorGroupsForClient_error___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __72__ManagedAssetsClient_AnchorPersist__getAllAnchorGroupsForClient_error___block_invoke_52_cold_1(a1);
    }

    v8 = 40;
    v4 = a3;
  }

  else
  {
    v8 = 48;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), v4);
}

- (BOOL)removeAllAnchorGroupsForClient:(id)client error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = _log_0;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = clientCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "sync removeAllAnchorGroupsForClient, clientIdentifier: %@", &buf, 0xCu);
  }

  if (clientCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    conn = self->_conn;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__ManagedAssetsClient_AnchorPersist__removeAllAnchorGroupsForClient_error___block_invoke;
    v21[3] = &unk_27985EC00;
    v21[4] = &buf;
    v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v21];
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      v11 = 0;
      if (error)
      {
        *error = v10;
      }
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__ManagedAssetsClient_AnchorPersist__removeAllAnchorGroupsForClient_error___block_invoke_54;
      v18[3] = &unk_27985F1E8;
      v19 = clientCopy;
      p_buf = &buf;
      [v9 RemoveAllAnchorGroups:v19 completion:v18];
      v14 = *(*(&buf + 1) + 40);
      v11 = v14 == 0;
      if (error && v14)
      {
        *error = v14;
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(AnchorPersist) addOrUpdateDataForAnchorIdentifier:clientIdentifier:data:completion:];
    }

    if (error)
    {
      createManagedAssetError("[ManagedAssetsClient(AnchorPersist) removeAllAnchorGroupsForClient:error:]", 743, -20001, 0, 0, @"clientIdentifier is nil", v12, v13, v17);
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void __75__ManagedAssetsClient_AnchorPersist__removeAllAnchorGroupsForClient_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
  {
    __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __75__ManagedAssetsClient_AnchorPersist__removeAllAnchorGroupsForClient_error___block_invoke_54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(_log_0, OS_LOG_TYPE_ERROR))
    {
      __75__ManagedAssetsClient_AnchorPersist__removeAllAnchorGroupsForClient_error___block_invoke_54_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)createKVStore:(id)store recordFields:(id)fields attributes:(id)attributes completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  fieldsCopy = fields;
  attributesCopy = attributes;
  completionCopy = completion;
  v14 = _log_1;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v14;
    v18 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v30 = storeCopy;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_258089000, v17, OS_LOG_TYPE_DEFAULT, "async createKVStore: %@ group: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke;
    v27[3] = &unk_27985EF40;
    v27[4] = self;
    v20 = completionCopy;
    v28 = v20;
    v21 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v27];
    v22 = createFieldsArray(fieldsCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_2;
    v25[3] = &unk_27985EF40;
    v25[4] = self;
    v26 = v20;
    [v21 createKVStore:storeCopy fields:v22 attributes:attributesCopy reply:v25];
  }

  else
  {
    v23 = createManagedAssetError("[ManagedAssetsClient(KVStore) createKVStore:recordFields:attributes:completion:]", 72, -20001, 0, 0, @"null completion is passed in", v15, v16, v25[0]);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_31;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_34;
  v6[3] = &unk_27985F288;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_34(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_34_cold_1(v2);
    }

    v3 = *v2;
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)createKVStore:(id)store recordFields:(id)fields attributes:(id)attributes error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  fieldsCopy = fields;
  attributesCopy = attributes;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v13 = _log_1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v38 = storeCopy;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_DEFAULT, "sync createKVStore: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_error___block_invoke;
  v26[3] = &unk_27985EC00;
  v26[4] = &v31;
  v16 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v26];
  v17 = createFieldsArray(fieldsCopy);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_error___block_invoke_35;
  v22[3] = &unk_27985F2B0;
  v24 = &v31;
  v18 = storeCopy;
  v23 = v18;
  v25 = &v27;
  [v16 createKVStore:v18 fields:v17 attributes:attributesCopy reply:v22];

  if (error)
  {
    *error = v32[5];
  }

  v19 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __76__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __76__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_error___block_invoke_35(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __76__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_error___block_invoke_35_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)putDataInStore:(id)store records:(id)records attributes:(id)attributes completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  recordsCopy = records;
  attributesCopy = attributes;
  completionCopy = completion;
  v14 = _log_1;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_INFO))
  {
    v17 = v14;
    v18 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v30 = storeCopy;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_258089000, v17, OS_LOG_TYPE_INFO, "async putDataInStore: %@ group: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke;
    v27[3] = &unk_27985EF40;
    v27[4] = self;
    v20 = completionCopy;
    v28 = v20;
    v21 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v27];
    v22 = convertUpdateInput(recordsCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_2;
    v25[3] = &unk_27985EF40;
    v25[4] = self;
    v26 = v20;
    [v21 putDataInStore:storeCopy records:v22 attributes:attributesCopy reply:v25];
  }

  else
  {
    v23 = createManagedAssetError("[ManagedAssetsClient(KVStore) putDataInStore:records:attributes:completion:]", 174, -20001, 0, 0, @"null completion is passed in", v15, v16, v25[0]);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_36;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
  {
    __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_37;
  v6[3] = &unk_27985F288;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_37(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_37_cold_1(v2);
    }

    v3 = *v2;
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)putDataInStore:(id)store records:(id)records attributes:(id)attributes error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  recordsCopy = records;
  attributesCopy = attributes;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v13 = _log_1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v38 = storeCopy;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_INFO, "sync putDataInStore: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_error___block_invoke;
  v26[3] = &unk_27985EC00;
  v26[4] = &v31;
  v16 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v26];
  v17 = convertUpdateInput(recordsCopy);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_error___block_invoke_38;
  v22[3] = &unk_27985F2B0;
  v24 = &v31;
  v18 = storeCopy;
  v23 = v18;
  v25 = &v27;
  [v16 putDataInStore:v18 records:v17 attributes:attributesCopy reply:v22];

  if (error)
  {
    *error = v32[5];
  }

  v19 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __72__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __72__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_error___block_invoke_38(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __72__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_error___block_invoke_38_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)updateDataInStore:(id)store keys:(id)keys values:(id)values attributes:(id)attributes completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  valuesCopy = values;
  attributesCopy = attributes;
  completionCopy = completion;
  if (completionCopy)
  {
    v19 = _log_1;
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = [attributesCopy objectForKeyedSubscript:@"group"];
      *buf = 138412546;
      v32 = storeCopy;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_258089000, v20, OS_LOG_TYPE_INFO, "async updateDataInStore: %@ group: %@", buf, 0x16u);
    }

    conn = self->_conn;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke;
    v29[3] = &unk_27985EF40;
    v29[4] = self;
    v23 = completionCopy;
    v30 = v23;
    v24 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_2;
    v27[3] = &unk_27985EF40;
    v27[4] = self;
    v28 = v23;
    [v24 updateDataInStore:storeCopy keys:keysCopy values:valuesCopy attributes:attributesCopy reply:v27];
  }

  else
  {
    v25 = createManagedAssetError("[ManagedAssetsClient(KVStore) updateDataInStore:keys:values:attributes:completion:]", 241, -20001, 0, 0, @"null completion is passed in", v16, v17, v27[0]);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_39;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
  {
    __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_40;
  v6[3] = &unk_27985F288;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_40(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_40_cold_1(v2);
    }

    v3 = *v2;
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)updateDataInStore:(id)store keys:(id)keys values:(id)values attributes:(id)attributes error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  valuesCopy = values;
  attributesCopy = attributes;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v16 = _log_1;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v40 = storeCopy;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&dword_258089000, v16, OS_LOG_TYPE_INFO, "sync updateDataInStore: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_error___block_invoke;
  v28[3] = &unk_27985EC00;
  v28[4] = &v33;
  v19 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v28];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_error___block_invoke_41;
  v24[3] = &unk_27985F2B0;
  v26 = &v33;
  v20 = storeCopy;
  v25 = v20;
  v27 = &v29;
  [v19 updateDataInStore:v20 keys:keysCopy values:valuesCopy attributes:attributesCopy reply:v24];
  if (error)
  {
    *error = v34[5];
  }

  v21 = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __79__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __79__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_error___block_invoke_41(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __79__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_error___block_invoke_41_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)queryDataInStore:(id)store keys:(id)keys attributes:(id)attributes completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  attributesCopy = attributes;
  completionCopy = completion;
  v14 = _log_1;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_INFO))
  {
    v17 = v14;
    v18 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v29 = storeCopy;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_258089000, v17, OS_LOG_TYPE_INFO, "async queryDataInStore: %@ group: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke;
    v26[3] = &unk_27985EF40;
    v26[4] = self;
    v20 = completionCopy;
    v27 = v20;
    v21 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_2;
    v24[3] = &unk_27985F300;
    v24[4] = self;
    v25 = v20;
    [v21 queryDataInStore:storeCopy keys:keysCopy attributes:attributesCopy reply:v24];
  }

  else
  {
    v22 = createManagedAssetError("[ManagedAssetsClient(KVStore) queryDataInStore:keys:attributes:completion:]", 389, -20001, 0, 0, @"null completion is passed in", v15, v16, v24[0]);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_42;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
  {
    __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_2_cold_1();
  }

  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_43;
  block[3] = &unk_27985F2D8;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_43(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_43_cold_1();
    }

    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = 0;
    v4 = convertChainedKVQueryOutput(v5, &v6);
    v3 = v6;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)queryDataInStore:(id)store keys:(id)keys attributes:(id)attributes error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  attributesCopy = attributes;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v13 = _log_1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v39 = storeCopy;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_INFO, "sync queryDataInStore: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_error___block_invoke;
  v25[3] = &unk_27985EC00;
  v25[4] = &v32;
  v16 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_error___block_invoke_45;
  v21[3] = &unk_27985F328;
  v23 = &v32;
  v17 = storeCopy;
  v22 = v17;
  v24 = &v26;
  [v16 queryDataInStore:v17 keys:keysCopy attributes:attributesCopy reply:v21];
  if (error)
  {
    *error = v33[5];
  }

  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __71__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __71__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_error___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  if (v6)
  {
    objc_storeStrong((v7 + 40), a3);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __71__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_error___block_invoke_45_cold_1(a1);
    }
  }

  else
  {
    obj = *(v7 + 40);
    v8 = convertChainedKVQueryOutput(a2, &obj);
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)deleteDataInStore:(id)store keys:(id)keys attributes:(id)attributes completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  attributesCopy = attributes;
  completionCopy = completion;
  v14 = _log_1;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_INFO))
  {
    v17 = v14;
    v18 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v29 = storeCopy;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_258089000, v17, OS_LOG_TYPE_INFO, "async deleteDataInStore: %@ group: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke;
    v26[3] = &unk_27985EF40;
    v26[4] = self;
    v20 = completionCopy;
    v27 = v20;
    v21 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_2;
    v24[3] = &unk_27985EF40;
    v24[4] = self;
    v25 = v20;
    [v21 deleteDataInStore:storeCopy keys:keysCopy attributes:attributesCopy reply:v24];
  }

  else
  {
    v22 = createManagedAssetError("[ManagedAssetsClient(KVStore) deleteDataInStore:keys:attributes:completion:]", 462, -20001, 0, 0, @"null completion is passed in", v15, v16, v24[0]);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_46;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
  {
    __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_47;
  v6[3] = &unk_27985F288;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_47(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_47_cold_1(v2);
    }

    v3 = *v2;
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)deleteDataInStore:(id)store keys:(id)keys attributes:(id)attributes error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  keysCopy = keys;
  attributesCopy = attributes;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v13 = _log_1;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v37 = storeCopy;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_INFO, "sync deleteDataInStore: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_error___block_invoke;
  v25[3] = &unk_27985EC00;
  v25[4] = &v30;
  v16 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_error___block_invoke_48;
  v21[3] = &unk_27985F2B0;
  v23 = &v30;
  v17 = storeCopy;
  v22 = v17;
  v24 = &v26;
  [v16 deleteDataInStore:v17 keys:keysCopy attributes:attributesCopy reply:v21];
  if (error)
  {
    *error = v31[5];
  }

  v18 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __72__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __72__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_error___block_invoke_48(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __72__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_error___block_invoke_48_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)deleteKVStore:(id)store attributes:(id)attributes completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  attributesCopy = attributes;
  completionCopy = completion;
  v11 = _log_1;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v11;
    v15 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v26 = storeCopy;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_DEFAULT, "async deleteKVStore: %@ group: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke;
    v23[3] = &unk_27985EF40;
    v23[4] = self;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_2;
    v21[3] = &unk_27985EF40;
    v21[4] = self;
    v22 = v17;
    [v18 deleteKVStore:storeCopy attributes:attributesCopy reply:v21];
  }

  else
  {
    v19 = createManagedAssetError("[ManagedAssetsClient(KVStore) deleteKVStore:attributes:completion:]", 528, -20001, 0, 0, @"null completion is passed in", v12, v13, v21[0]);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_49;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
  {
    __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_50;
  v6[3] = &unk_27985F288;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_50(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_47_cold_1(v2);
    }

    v3 = *v2;
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)deleteKVStore:(id)store attributes:(id)attributes error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  attributesCopy = attributes;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v10 = _log_1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v34 = storeCopy;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_DEFAULT, "sync deleteKVStore: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__ManagedAssetsClient_KVStore__deleteKVStore_attributes_error___block_invoke;
  v22[3] = &unk_27985EC00;
  v22[4] = &v27;
  v13 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__ManagedAssetsClient_KVStore__deleteKVStore_attributes_error___block_invoke_51;
  v18[3] = &unk_27985F2B0;
  v20 = &v27;
  v14 = storeCopy;
  v19 = v14;
  v21 = &v23;
  [v13 deleteKVStore:v14 attributes:attributesCopy reply:v18];
  if (error)
  {
    *error = v28[5];
  }

  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __63__ManagedAssetsClient_KVStore__deleteKVStore_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __63__ManagedAssetsClient_KVStore__deleteKVStore_attributes_error___block_invoke_51(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __63__ManagedAssetsClient_KVStore__deleteKVStore_attributes_error___block_invoke_51_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)checkIfKVStoreGroupExistUsing:(id)using exist:(BOOL *)exist error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  usingCopy = using;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = _log_1;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = usingCopy;
    _os_log_impl(&dword_258089000, v9, OS_LOG_TYPE_INFO, "sync checkIfKVStoreGroupUsingAttributes: %@", buf, 0xCu);
  }

  conn = self->_conn;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke;
  v16[3] = &unk_27985EC00;
  v16[4] = &v21;
  v11 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke_52;
  v15[3] = &unk_27985F350;
  v15[4] = &v21;
  v15[5] = &v17;
  v15[6] = exist;
  [v11 checkIfKVStoreGroupExistUsing:usingCopy reply:v15];
  if (error)
  {
    *error = v22[5];
  }

  v12 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke_52(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_ERROR))
    {
      __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke_52_cold_1();
    }
  }

  else
  {
    **(a1 + 48) = a2;
    v7 = _log_1;
    if (os_log_type_enabled(_log_1, OS_LOG_TYPE_DEBUG))
    {
      __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke_52_cold_2((a1 + 48), v7);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)openFile:(id)file mode:(unint64_t)mode attributes:(id)attributes completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  completionCopy = completion;
  v13 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v26 = fileCopy;
    v27 = 2048;
    modeCopy = mode;
    v29 = 2112;
    v30 = attributesCopy;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_INFO, "sync openFile: %@ mode:%lu attributes: %@", buf, 0x20u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__ManagedAssetsClient_FileAsset__openFile_mode_attributes_completion___block_invoke;
    v23[3] = &unk_27985EF40;
    v23[4] = self;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__ManagedAssetsClient_FileAsset__openFile_mode_attributes_completion___block_invoke_2;
    v21[3] = &unk_27985F3A0;
    v21[4] = self;
    v22 = v17;
    [v18 openFile:fileCopy mode:mode attributes:attributesCopy reply:v21];
  }

  else
  {
    v19 = createManagedAssetError("[ManagedAssetsClient(FileAsset) openFile:mode:attributes:completion:]", 84, -20001, 0, 0, @"null completion is passed in", v14, v15, v21[0]);
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __70__ManagedAssetsClient_FileAsset__openFile_mode_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ManagedAssetsClient_FileAsset__openFile_mode_attributes_completion___block_invoke_35;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __70__ManagedAssetsClient_FileAsset__openFile_mode_attributes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__ManagedAssetsClient_FileAsset__openFile_mode_attributes_completion___block_invoke_3;
  v15[3] = &unk_27985F378;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

- (id)openFile:(id)file mode:(unint64_t)mode attributes:(id)attributes attributesOut:(id *)out error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v14 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v41 = fileCopy;
    v42 = 2048;
    modeCopy = mode;
    v44 = 2112;
    v45 = attributesCopy;
    _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_INFO, "async openFile: %@ mode:%lu attributes: %@", buf, 0x20u);
  }

  conn = self->_conn;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__ManagedAssetsClient_FileAsset__openFile_mode_attributes_attributesOut_error___block_invoke;
  v21[3] = &unk_27985EC00;
  v21[4] = &v34;
  v16 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__ManagedAssetsClient_FileAsset__openFile_mode_attributes_attributesOut_error___block_invoke_39;
  v20[3] = &unk_27985F3C8;
  v20[4] = &v28;
  v20[5] = &v22;
  v20[6] = &v34;
  [v16 openFile:fileCopy mode:mode attributes:attributesCopy reply:v20];
  if (error)
  {
    *error = v35[5];
  }

  if (out)
  {
    *out = v23[5];
  }

  v17 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __79__ManagedAssetsClient_FileAsset__openFile_mode_attributes_attributesOut_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __79__ManagedAssetsClient_FileAsset__openFile_mode_attributes_attributesOut_error___block_invoke_39(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v8 = a3;
  v9 = a4;
  if (v12)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v10 = 40;
    v11 = v8;
  }

  else
  {
    v10 = 48;
    v11 = v9;
  }

  objc_storeStrong((*(*(a1 + v10) + 8) + 40), v11);
}

void __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_40;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1[4] + 16);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3;
  v19[3] = &unk_27985F3F0;
  v20 = v12;
  v21 = v11;
  v14 = a1[5];
  v25 = a1[6];
  v22 = v9;
  v23 = v10;
  v24 = v14;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  v18 = v12;
  dispatch_async(v13, v19);
}

void __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v3)
  {
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_4();
    }

    v9 = 0;
    goto LABEL_19;
  }

  [v3 cStringUsingEncoding:4];
  v4 = sandbox_extension_consume();
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_DEBUG))
  {
    __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_1();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else if (v4)
  {
LABEL_4:
    if (v4 == -1)
    {
      v5 = __error();
      v8 = createManagedAssetError("[ManagedAssetsClient(FileAsset) requestFile:isDirectory:mode:attributes:completion:]_block_invoke", 187, -20000, 0, 0, @"sandbox extension consume error, errno=%u", v6, v7, *v5);

      if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
      {
        __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_3();
      }

      v9 = 0;
      v2 = v8;
      goto LABEL_19;
    }

    v10 = [MAFile alloc];
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = v4;
LABEL_18:
    v9 = [(MAFile *)v10 initWithPath:v11 attributes:v12 extensionHandle:v13];
LABEL_19:
    (*(*(a1 + 64) + 16))();

    v22 = v2;
    goto LABEL_20;
  }

  v14 = *(a1 + 72);
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = v15;
  v17 = *(a1 + 48);
  if (v14 == 1)
  {
    v18 = [v15 isReadableFileAtPath:v17];
  }

  else
  {
    v18 = [v15 isWritableFileAtPath:v17];
  }

  v19 = v18;

  if (v19)
  {
    v10 = [MAFile alloc];
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = 0;
    goto LABEL_18;
  }

  v22 = createManagedAssetError("[ManagedAssetsClient(FileAsset) requestFile:isDirectory:mode:attributes:completion:]_block_invoke", 198, -20013, 0, 0, @"cannot request the file/directory since client is unsandboxed.", v20, v21, v24);

  v23 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_2(v23);
  }

  (*(*(a1 + 64) + 16))();
LABEL_20:
}

void __80__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __80__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_error___block_invoke_50(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    [v11 cStringUsingEncoding:4];
    v13 = sandbox_extension_consume();
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_DEBUG))
    {
      __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_1();
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else if (v13)
    {
LABEL_4:
      if (v13 == -1)
      {
        v14 = __error();
        v17 = createManagedAssetError("[ManagedAssetsClient(FileAsset) requestFile:isDirectory:mode:attributes:error:]_block_invoke", 245, -20000, 0, 0, @"sandbox extension consume error, errno=%u", v15, v16, *v14);
        v19 = a1[4];
        v18 = (a1 + 4);
        v20 = *(v19 + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v17;

        if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
        {
          __80__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_error___block_invoke_50_cold_3(v18);
        }

        goto LABEL_18;
      }

      v24 = [MAFile alloc];
      v25 = v9;
      v26 = v10;
      v27 = v13;
LABEL_17:
      v39 = [(MAFile *)v24 initWithPath:v25 attributes:v26 extensionHandle:v27];
      v40 = *(a1[5] + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      goto LABEL_18;
    }

    v28 = a1[6];
    v29 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = v29;
    if (v28 == 1)
    {
      v31 = [v29 isReadableFileAtPath:v9];

      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v38 = [v29 isWritableFileAtPath:v9];

      if (!v38)
      {
LABEL_13:
        v34 = createManagedAssetError("[ManagedAssetsClient(FileAsset) requestFile:isDirectory:mode:attributes:error:]_block_invoke", 258, -20013, 0, 0, @"cannot request the file/directory since client is unsandboxed.", v32, v33, v42);
        v35 = *(a1[4] + 8);
        v36 = *(v35 + 40);
        *(v35 + 40) = v34;

        v37 = _log_2;
        if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
        {
          __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_2(v37);
        }

        goto LABEL_18;
      }
    }

    v24 = [MAFile alloc];
    v25 = v9;
    v26 = v10;
    v27 = 0;
    goto LABEL_17;
  }

  v23 = a1[4];
  v22 = (a1 + 4);
  objc_storeStrong((*(v23 + 8) + 40), a5);
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __80__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_error___block_invoke_50_cold_4(v22);
  }

LABEL_18:
}

- (void)commitFile:(id)file attributes:(id)attributes completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  completionCopy = completion;
  v11 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v24 = fileCopy;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "sync commitFile: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__ManagedAssetsClient_FileAsset__commitFile_attributes_completion___block_invoke;
  v21[3] = &unk_27985EF40;
  v21[4] = self;
  v15 = completionCopy;
  v22 = v15;
  v16 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ManagedAssetsClient_FileAsset__commitFile_attributes_completion___block_invoke_2;
  v19[3] = &unk_27985F468;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  [v16 commitFile:fileCopy attributes:attributesCopy reply:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __67__ManagedAssetsClient_FileAsset__commitFile_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ManagedAssetsClient_FileAsset__commitFile_attributes_completion___block_invoke_51;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __67__ManagedAssetsClient_FileAsset__commitFile_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__ManagedAssetsClient_FileAsset__commitFile_attributes_completion___block_invoke_3;
    v6[3] = &unk_27985F260;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (BOOL)commitFile:(id)file attributes:(id)attributes error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v10 = _log_2;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v34 = fileCopy;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "async commitFile: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke;
  v22[3] = &unk_27985EC00;
  v22[4] = &v27;
  v13 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke_52;
  v18[3] = &unk_27985F2B0;
  v20 = &v27;
  v14 = fileCopy;
  v19 = v14;
  v21 = &v23;
  [v13 commitFile:v14 attributes:attributesCopy reply:v18];
  if (error)
  {
    *error = v28[5];
  }

  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke_52(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke_52_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)prefetchFile:(id)file attributes:(id)attributes completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  completionCopy = completion;
  v10 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    v13 = v10;
    v14 = [attributesCopy objectForKeyedSubscript:@"group"];
    *v17 = 138412546;
    *&v17[4] = fileCopy;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_258089000, v13, OS_LOG_TYPE_INFO, "async prefetchFile: %@ group: %@", v17, 0x16u);
  }

  if (completionCopy)
  {
    v15 = createManagedAssetError("[ManagedAssetsClient(FileAsset) prefetchFile:attributes:completion:]", 335, -20014, 0, 0, @"prefetchFile is not supported", v11, v12, *v17);
    completionCopy[2](completionCopy, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deleteFile:(id)file attributes:(id)attributes completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  completionCopy = completion;
  v11 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v24 = fileCopy;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "sync deleteFile: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__ManagedAssetsClient_FileAsset__deleteFile_attributes_completion___block_invoke;
  v21[3] = &unk_27985EF40;
  v21[4] = self;
  v15 = completionCopy;
  v22 = v15;
  v16 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ManagedAssetsClient_FileAsset__deleteFile_attributes_completion___block_invoke_2;
  v19[3] = &unk_27985F468;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  [v16 deleteFile:fileCopy attributes:attributesCopy reply:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __67__ManagedAssetsClient_FileAsset__deleteFile_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ManagedAssetsClient_FileAsset__deleteFile_attributes_completion___block_invoke_56;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __67__ManagedAssetsClient_FileAsset__deleteFile_attributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__ManagedAssetsClient_FileAsset__deleteFile_attributes_completion___block_invoke_3;
    v6[3] = &unk_27985F260;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (BOOL)deleteFile:(id)file attributes:(id)attributes error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v10 = _log_2;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v34 = fileCopy;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "async deleteFile: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__ManagedAssetsClient_FileAsset__deleteFile_attributes_error___block_invoke;
  v22[3] = &unk_27985EC00;
  v22[4] = &v27;
  v13 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__ManagedAssetsClient_FileAsset__deleteFile_attributes_error___block_invoke_57;
  v18[3] = &unk_27985F2B0;
  v20 = &v27;
  v14 = fileCopy;
  v19 = v14;
  v21 = &v23;
  [v13 deleteFile:v14 attributes:attributesCopy reply:v18];
  if (error)
  {
    *error = v28[5];
  }

  v15 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __62__ManagedAssetsClient_FileAsset__deleteFile_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __62__ManagedAssetsClient_FileAsset__deleteFile_attributes_error___block_invoke_57(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke_52_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)queryFile:(id)file attributes:(id)attributes completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  completionCopy = completion;
  v11 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = fileCopy;
    v25 = 2112;
    v26 = attributesCopy;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "async queryFile: %@ attributes: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    conn = self->_conn;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke;
    v21[3] = &unk_27985EF40;
    v21[4] = self;
    v15 = completionCopy;
    v22 = v15;
    v16 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_2;
    v19[3] = &unk_27985F490;
    v19[4] = self;
    v20 = v15;
    [v16 queryFile:fileCopy attributes:attributesCopy reply:v19];
  }

  else
  {
    v17 = createManagedAssetError("[ManagedAssetsClient(FileAsset) queryFile:attributes:completion:]", 398, -20001, 0, 0, @"null completion is passed in", v12, v13, v19[0]);
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_58;
  v7[3] = &unk_27985F260;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_3;
  block[3] = &unk_27985F2D8;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_3(void *a1)
{
  v2 = a1 + 4;
  if (a1[4] && os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_3_cold_1(v2);
  }

  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_DEBUG))
  {
    __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_3_cold_2(a1);
  }

  v3 = a1[5];
  v4 = a1[4];
  return (*(a1[6] + 16))();
}

- (id)queryFile:(id)file attributes:(id)attributes error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  attributesCopy = attributes;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v10 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = fileCopy;
    v32 = 2112;
    v33 = attributesCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "sync queryFile: %@ attributes: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke;
  v17[3] = &unk_27985EC00;
  v17[4] = &v24;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke_60;
  v16[3] = &unk_27985F170;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 queryFile:fileCopy attributes:attributesCopy reply:v16];
  if (error)
  {
    *error = v25[5];
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = a1 + 32;
    objc_storeStrong((*(v9 + 8) + 40), a3);
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke_60_cold_1(v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke_60_cold_2();
    }
  }
}

- (BOOL)diskUsage:(id)usage attributes:(id)attributes usage:(unint64_t *)a5 error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  attributesCopy = attributes;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v12 = _log_2;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"group"];
    *buf = 138412546;
    v37 = usageCopy;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "sync diskUsage: %@ group: %@", buf, 0x16u);
  }

  conn = self->_conn;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__ManagedAssetsClient_FileAsset__diskUsage_attributes_usage_error___block_invoke;
  v25[3] = &unk_27985EC00;
  v25[4] = &v30;
  v15 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v25];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__ManagedAssetsClient_FileAsset__diskUsage_attributes_usage_error___block_invoke_61;
  v20[3] = &unk_27985F4B8;
  v22 = &v30;
  v23 = &v26;
  v24 = a5;
  v16 = usageCopy;
  v21 = v16;
  [v15 getDiskUsage:v16 attributes:attributesCopy reply:v20];
  if (error)
  {
    *error = v31[5];
  }

  v17 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __67__ManagedAssetsClient_FileAsset__diskUsage_attributes_usage_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __67__ManagedAssetsClient_FileAsset__diskUsage_attributes_usage_error___block_invoke_61(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  **(a1 + 56) = a2;
  if (v6)
  {
    if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
    {
      __67__ManagedAssetsClient_FileAsset__diskUsage_attributes_usage_error___block_invoke_61_cold_1(a1);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)availableSpace:(unint64_t *)space error:(id *)error
{
  v6 = _log_2;
  if (os_log_type_enabled(_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v6, OS_LOG_TYPE_INFO, "sync availableSpace", buf, 2u);
  }

  v7 = NSHomeDirectory();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v9 = [defaultManager attributesOfFileSystemForPath:v7 error:&v17];
  v10 = v17;

  if (v9 && (v11 = *MEMORY[0x277CCA1D0], [v9 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [v9 objectForKeyedSubscript:v11];
    *space = [v13 unsignedLongLongValue];

    v14 = 1;
  }

  else
  {
    if (error)
    {
      v15 = v10;
      *error = v10;
      if (os_log_type_enabled(_log_2, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient(FileAsset) availableSpace:error:];
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)getConnectedClients
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v3 = _log_3;
  if (os_log_type_enabled(_log_3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_INFO, "getConnectedClients", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ManagedAssetsClient_Debugging__getConnectedClients__block_invoke_2;
  v7[3] = &unk_27985F4E0;
  v7[4] = &v9;
  [v4 getConnectedClientsWithCompletion:v7];
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __53__ManagedAssetsClient_Debugging__getConnectedClients__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }
}

void __53__ManagedAssetsClient_Debugging__getConnectedClients__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
    {
      __53__ManagedAssetsClient_Debugging__getConnectedClients__block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)getDaemonProcessInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v3 = _log_3;
  if (os_log_type_enabled(_log_3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_INFO, "getDaemonProcessInfo", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ManagedAssetsClient_Debugging__getDaemonProcessInfo__block_invoke_6;
  v7[3] = &unk_27985F4E0;
  v7[4] = &v9;
  [v4 getDaemonProcessInfo:v7];
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

void __54__ManagedAssetsClient_Debugging__getDaemonProcessInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }
}

void __54__ManagedAssetsClient_Debugging__getDaemonProcessInfo__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
    {
      __54__ManagedAssetsClient_Debugging__getDaemonProcessInfo__block_invoke_6_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)getProfileLastSwitchOutTS:(id)s error:(id *)error
{
  sCopy = s;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v7 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ManagedAssetsClient_Debugging__getProfileLastSwitchOutTS_error___block_invoke_9;
  v11[3] = &unk_27985EC78;
  v11[4] = &v18;
  v11[5] = &v12;
  [v7 getProfileSwitchTime:sCopy mode:0 completion:v11];
  if (error)
  {
    v8 = v19[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __66__ManagedAssetsClient_Debugging__getProfileLastSwitchOutTS_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }
}

void __66__ManagedAssetsClient_Debugging__getProfileLastSwitchOutTS_error___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v7)
  {
    if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
    {
      __66__ManagedAssetsClient_Debugging__getProfileLastSwitchOutTS_error___block_invoke_9_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)getProfileLastSwitchInTS:(id)s error:(id *)error
{
  sCopy = s;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v7 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12_0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ManagedAssetsClient_Debugging__getProfileLastSwitchInTS_error___block_invoke_13;
  v11[3] = &unk_27985EC78;
  v11[4] = &v18;
  v11[5] = &v12;
  [v7 getProfileSwitchTime:sCopy mode:1 completion:v11];
  if (error)
  {
    v8 = v19[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __65__ManagedAssetsClient_Debugging__getProfileLastSwitchInTS_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }
}

void __65__ManagedAssetsClient_Debugging__getProfileLastSwitchInTS_error___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v7)
  {
    if (os_log_type_enabled(_log_3, OS_LOG_TYPE_ERROR))
    {
      __65__ManagedAssetsClient_Debugging__getProfileLastSwitchInTS_error___block_invoke_13_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[ManagedAssetsClient sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__ManagedAssetsClient_sharedInstance__block_invoke()
{
  v0 = os_log_create(kManagedAssetLogSubsystem, "Framework-ManagedAssetsClient");
  v1 = _log_5;
  _log_5 = v0;

  MASetFrameworkFileAPILogger();
  MASetFrameworkKVStoreLogger();
  MASetFramework3DAnchorLogger();
  MASetFrameworkProfileLogger();
  MAEncryptedRemoteAssetUtilInit();
  MASetFrameworkDebuggingAPILogger();
  v2 = objc_alloc_init(ManagedAssetsClient);
  v3 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v2;

  _darwinNotifyQueue = dispatch_queue_create("com.apple.ManagedAssets.client.darwinnotify", 0);

  return MEMORY[0x2821F96F8]();
}

- (ManagedAssetsClient)init
{
  v54.receiver = self;
  v54.super_class = ManagedAssetsClient;
  v2 = [(ManagedAssetsClient *)&v54 init];
  v3 = v2;
  if (v2)
  {
    serviceName = v2->_serviceName;
    v2->_serviceName = @"com.apple.managedassetsd";

    v5 = dispatch_get_global_queue(0, 0);
    backgroundQueue = v3->_backgroundQueue;
    v3->_backgroundQueue = v5;

    v7 = [notifyQueueLabel cStringUsingEncoding:1];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    notifyQueue = v3->_notifyQueue;
    v3->_notifyQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.ManagedAssets.client.notifyremote", v11);
    remoteNotifyQueue = v3->_remoteNotifyQueue;
    v3->_remoteNotifyQueue = v12;

    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    remotesharingObservers = v3->_remotesharingObservers;
    v3->_remotesharingObservers = weakObjectsPointerArray;

    weakObjectsPointerArray2 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    assetEventObservers = v3->_assetEventObservers;
    v3->_assetEventObservers = weakObjectsPointerArray2;

    weakObjectsPointerArray3 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    profileEventObservers = v3->_profileEventObservers;
    v3->_profileEventObservers = weakObjectsPointerArray3;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    assetEventFilters = v3->_assetEventFilters;
    v3->_assetEventFilters = weakToStrongObjectsMapTable;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    profileEventFilters = v3->_profileEventFilters;
    v3->_profileEventFilters = weakToWeakObjectsMapTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    bidirectionalXPCObservers = v3->_bidirectionalXPCObservers;
    v3->_bidirectionalXPCObservers = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    bidirectionalXPCObserversMetaData = v3->_bidirectionalXPCObserversMetaData;
    v3->_bidirectionalXPCObserversMetaData = strongToStrongObjectsMapTable2;

    v28 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286947770];
    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v29 setWithObjects:{v30, v31, v32, v33, objc_opt_class(), 0}];
    [v28 setClasses:v34 forSelector:sel_openFiles_mode_attributes_reply_ argumentIndex:0 ofReply:1];

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v35 setWithObjects:{v36, v37, v38, v39, v40, objc_opt_class(), 0}];
    [v28 setClasses:v41 forSelector:sel_SerializeAllAssets_option_completion_ argumentIndex:0 ofReply:1];

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v42 setWithObjects:{v43, v44, v45, v46, objc_opt_class(), 0}];
    [v28 setClasses:v47 forSelector:sel_QueryAssetMetaData_completion_ argumentIndex:0 ofReply:1];

    v48 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v3->_serviceName options:0];
    conn = v3->_conn;
    v3->_conn = v48;

    [(NSXPCConnection *)v3->_conn setRemoteObjectInterface:v28];
    [(NSXPCConnection *)v3->_conn setInvalidationHandler:&__block_literal_global_203];
    [(NSXPCConnection *)v3->_conn setInterruptionHandler:&__block_literal_global_206];
    [(NSXPCConnection *)v3->_conn resume];
    v50 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286946818];
    v51 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v3->_serviceName options:0];
    fasConn = v3->_fasConn;
    v3->_fasConn = v51;

    [(NSXPCConnection *)v3->_fasConn setRemoteObjectInterface:v50];
    [(NSXPCConnection *)v3->_fasConn setInterruptionHandler:&__block_literal_global_209];
    [(NSXPCConnection *)v3->_fasConn setInterruptionHandler:&__block_literal_global_212];
    [(NSXPCConnection *)v3->_fasConn resume];
    v3->_darwinCenter = CFNotificationCenterGetDistributedCenter();
    v3->_bidirectional_xpcObserver_lock._os_unfair_lock_opaque = 0;
    [(ManagedAssetsClient *)v3 subscribeDarwinNotification:@"com.apple.tdg.ManagedAssets.Notification.DaemonLaunch"];
  }

  return v3;
}

void __27__ManagedAssetsClient_init__block_invoke()
{
  v0 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258089000, v0, OS_LOG_TYPE_INFO, "_conn invalidated.", v1, 2u);
  }
}

void __27__ManagedAssetsClient_init__block_invoke_204()
{
  v0 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258089000, v0, OS_LOG_TYPE_INFO, "_conn interrupted.", v1, 2u);
  }
}

void __27__ManagedAssetsClient_init__block_invoke_207()
{
  v0 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258089000, v0, OS_LOG_TYPE_INFO, "_fasConn invalidated.", v1, 2u);
  }
}

void __27__ManagedAssetsClient_init__block_invoke_210()
{
  v0 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258089000, v0, OS_LOG_TYPE_INFO, "_fasConn interrupted.", v1, 2u);
  }
}

- (void)removeNotificationObserverPointer:(id)pointer observerType:(unint64_t)type
{
  pointerCopy = pointer;
  if (type == 3)
  {
    v6 = 64;
  }

  else
  {
    if (type != 4)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v6 = 72;
  }

  v7 = *(&self->super.isa + v6);
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      if ([v7 pointerAtIndex:v8] == pointerCopy)
      {
        [v7 removePointerAtIndex:v8];
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < [v7 count]);
  }

LABEL_13:
}

- (BOOL)addAssetChangeEventObserver:(id)observer type:(unint64_t)type events:(unint64_t)events error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v22 = observerCopy;
    v23 = 2048;
    typeCopy = type;
    v25 = 2048;
    eventsCopy = events;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "addAssetChangeEventObserver:%@ type:%lu events:%lu", buf, 0x20u);
  }

  if ((events & 0xB2001F) != 0)
  {
    notifyQueue = self->_notifyQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__ManagedAssetsClient_addAssetChangeEventObserver_type_events_error___block_invoke;
    v17[3] = &unk_27985F930;
    v17[4] = self;
    v18 = observerCopy;
    typeCopy2 = type;
    eventsCopy2 = events;
    dispatch_sync(notifyQueue, v17);
  }

  else if (error)
  {
    *error = createManagedAssetError("[ManagedAssetsClient addAssetChangeEventObserver:type:events:error:]", 164, -20001, 0, 0, @"Invalid event mask.", v12, v13, v17[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return (events & 0xB2001F) != 0;
}

void __69__ManagedAssetsClient_addAssetChangeEventObserver_type_events_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerDarwinNotification:3];
  [*(*(a1 + 32) + 64) compact];
  v2 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    [*(*(a1 + 32) + 64) addPointer:*(a1 + 40)];
    v2 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v7 objectForKey:v3];

  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{*(a1 + 56) | objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  [v7 setObject:v5 forKey:v6];

  [*(*(a1 + 32) + 88) setObject:v7 forKey:*(a1 + 40)];
}

- (BOOL)addProfileChangeEventObserver:(id)observer events:(unint64_t)events error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v9 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = observerCopy;
    v21 = 2048;
    eventsCopy = events;
    _os_log_impl(&dword_258089000, v9, OS_LOG_TYPE_INFO, "addProfileChangeEventObserver:%@ events:%lu", buf, 0x16u);
  }

  if ((events & 0xC01C0) != 0)
  {
    notifyQueue = self->_notifyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ManagedAssetsClient_addProfileChangeEventObserver_events_error___block_invoke;
    block[3] = &unk_27985F958;
    block[4] = self;
    v17 = observerCopy;
    eventsCopy2 = events;
    dispatch_sync(notifyQueue, block);
  }

  else if (error)
  {
    *error = createManagedAssetError("[ManagedAssetsClient addProfileChangeEventObserver:events:error:]", 201, -20001, 0, 0, @"Invalid event mask.", v10, v11, v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return (events & 0xC01C0) != 0;
}

void __66__ManagedAssetsClient_addProfileChangeEventObserver_events_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerDarwinNotification:4];
  [*(*(a1 + 32) + 72) compact];
  v2 = [*(*(a1 + 32) + 96) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    [*(*(a1 + 32) + 72) addPointer:*(a1 + 40)];
  }

  v3 = *(*(a1 + 32) + 96);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  [v3 setObject:v4 forKey:*(a1 + 40)];
}

- (void)saveObserverMetaData:(id)data fileNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events type:(unint64_t)type
{
  profileCopy = profile;
  v14 = MEMORY[0x277CBEB38];
  groupCopy = group;
  namesCopy = names;
  dataCopy = data;
  dictionary = [v14 dictionary];
  [dictionary setObject:groupCopy forKeyedSubscript:@"group"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [dictionary setObject:v19 forKeyedSubscript:@"observerType"];

  [dictionary setObject:namesCopy forKeyedSubscript:@"resources"];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:events];
  [dictionary setObject:v20 forKeyedSubscript:@"events"];

  if (profileCopy)
  {
    [dictionary setObject:profileCopy forKeyedSubscript:@"profile"];
  }

  os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
  [(NSMapTable *)self->_bidirectionalXPCObserversMetaData setObject:dictionary forKey:dataCopy];

  os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);
}

- (BOOL)addFileEventObserver:(id)observer fileNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  namesCopy = names;
  groupCopy = group;
  profileCopy = profile;
  v18 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v27 = observerCopy;
    v28 = 2112;
    v29 = namesCopy;
    v30 = 2112;
    v31 = groupCopy;
    v32 = 2112;
    v33 = profileCopy;
    v34 = 2048;
    eventsCopy = events;
    _os_log_impl(&dword_258089000, v18, OS_LOG_TYPE_INFO, "addFileEventObserver:%@ files: %@ group: %@ profile: %@ events:%lu", buf, 0x34u);
  }

  if ([(ManagedAssetsClient *)self isSameObserver:observerCopy error:error])
  {
    v19 = 0;
  }

  else
  {
    [(ManagedAssetsClient *)self saveObserverMetaData:observerCopy fileNames:namesCopy sharingGroup:groupCopy profile:profileCopy events:events type:0];
    v25 = 0;
    v21 = [(ManagedAssetsClient *)self recreateFileOrKVStoreObserverXPCWith:observerCopy error:&v25];
    v19 = v25;
    if (v21)
    {
      v20 = 1;
      goto LABEL_10;
    }

    os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
    [(NSMapTable *)self->_bidirectionalXPCObserversMetaData removeObjectForKey:observerCopy];
    os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);
    if (error)
    {
      v22 = v19;
      v20 = 0;
      *error = v19;
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)addKVStoreEventObserver:(id)observer storeNames:(id)names sharingGroup:(id)group profile:(id)profile events:(unint64_t)events error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  namesCopy = names;
  groupCopy = group;
  profileCopy = profile;
  v18 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v27 = observerCopy;
    v28 = 2112;
    v29 = namesCopy;
    v30 = 2112;
    v31 = groupCopy;
    v32 = 2112;
    v33 = profileCopy;
    v34 = 2048;
    eventsCopy = events;
    _os_log_impl(&dword_258089000, v18, OS_LOG_TYPE_INFO, "addKVStoreEventObserver:%@ stores: %@ group: %@ profile: %@ events:%lu", buf, 0x34u);
  }

  if ([(ManagedAssetsClient *)self isSameObserver:observerCopy error:error])
  {
    v19 = 0;
LABEL_5:
    v20 = 0;
    goto LABEL_11;
  }

  if (!groupCopy)
  {
    groupCopy = @"private";
  }

  v20 = 1;
  [(ManagedAssetsClient *)self saveObserverMetaData:observerCopy fileNames:namesCopy sharingGroup:groupCopy profile:profileCopy events:events type:1];
  v25 = 0;
  v21 = [(ManagedAssetsClient *)self recreateFileOrKVStoreObserverXPCWith:observerCopy error:&v25];
  v19 = v25;
  if (!v21)
  {
    os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
    [(NSMapTable *)self->_bidirectionalXPCObserversMetaData removeObjectForKey:observerCopy];
    os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);
    if (error)
    {
      v22 = v19;
      v20 = 0;
      *error = v19;
      goto LABEL_11;
    }

    goto LABEL_5;
  }

LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)isSameObserver:(id)observer error:(id *)error
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
  v7 = [(NSMapTable *)self->_bidirectionalXPCObserversMetaData objectForKey:observerCopy];

  os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);
  if (v7)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient isSameObserver:error:];
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (error)
    {
LABEL_4:
      *error = createManagedAssetError("[ManagedAssetsClient isSameObserver:error:]", 337, -20001, 0, 0, @"Client is trying to re-register the same observer %@", v8, v9, observerCopy);
    }
  }

LABEL_5:

  return v7 != 0;
}

- (void)removeObserverFromFilter:(id)filter
{
  filterCopy = filter;
  if ([filterCopy conformsToProtocol:&unk_286947878])
  {
    if (objc_opt_respondsToSelector())
    {
      [(NSMapTable *)self->_assetEventFilters removeObjectForKey:filterCopy];
      [(ManagedAssetsClient *)self unregisterDarwinNotificationIfNeed:3];
      [(ManagedAssetsClient *)self removeNotificationObserverPointer:filterCopy observerType:3];
    }

    if (objc_opt_respondsToSelector())
    {
      [(NSMapTable *)self->_profileEventFilters removeObjectForKey:filterCopy];
      [(ManagedAssetsClient *)self unregisterDarwinNotificationIfNeed:4];
      [(ManagedAssetsClient *)self removeNotificationObserverPointer:filterCopy observerType:4];
    }
  }
}

- (void)removeNotificationObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", dispatch_queue_get_label(0)];
  v6 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = observerCopy;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_258089000, v6, OS_LOG_TYPE_INFO, "removeNotificationObserver:%@ using queue: %@", buf, 0x16u);
  }

  if ([notifyQueueLabel isEqualToString:v5])
  {
    [(ManagedAssetsClient *)self removeObserverFromFilter:observerCopy];
  }

  else
  {
    notifyQueue = self->_notifyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__ManagedAssetsClient_removeNotificationObserver___block_invoke;
    block[3] = &unk_27985F980;
    block[4] = self;
    v12 = observerCopy;
    dispatch_sync(notifyQueue, block);
  }

  os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
  v8 = [(NSMapTable *)self->_bidirectionalXPCObservers objectForKey:observerCopy];
  if (v8)
  {
    v9 = v8;
    [(NSMapTable *)self->_bidirectionalXPCObservers removeObjectForKey:observerCopy];
    [v9 invalidate];
  }

  [(NSMapTable *)self->_bidirectionalXPCObserversMetaData removeObjectForKey:observerCopy];
  os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)createAssetWithDescriptor:(id)descriptor UUID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dCopy = d;
  completionCopy = completion;
  v12 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v26 = descriptorCopy;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_INFO, "async create asset with descriptor:%@ UUID:%@", buf, 0x16u);
  }

  v13 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient createAssetWithDescriptor:v13 UUID:? completion:?];
    if (completionCopy)
    {
      goto LABEL_5;
    }
  }

  else if (completionCopy)
  {
LABEL_5:
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke;
    block[3] = &unk_27985EEA0;
    block[4] = self;
    v24 = a2;
    v23 = completionCopy;
    v21 = descriptorCopy;
    v22 = dCopy;
    dispatch_async(backgroundQueue, block);

    goto LABEL_10;
  }

  v17 = createManagedAssetError("[ManagedAssetsClient createAssetWithDescriptor:UUID:completion:]", 396, -20001, 0, 0, @"null completion is passed in", v14, v15, v19);
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    [ManagedAssetsClient(Profile) importAssets:option:completion:];
  }

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2;
  v16[3] = &unk_27985F9A8;
  v9 = *(a1 + 56);
  v3 = v9;
  v17 = v9;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v16];
  v5 = [*(a1 + 40) type];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_256;
  v10[3] = &unk_27985FA20;
  v11 = *(a1 + 40);
  v12 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 56);
  v8 = v4;
  [v8 GetTempAssetFileHandle:1 assetType:v5 assetHandle:0 completion:v10];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_256(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10 && v9 && !v12)
  {
    v14 = [*(a1 + 32) data];
    v38 = 0;
    [v9 writeData:v14 error:&v38];
    v15 = v38;

    [v9 closeFile];
    if (!v15)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_257;
      v34[3] = &unk_27985F9F8;
      v27 = *(a1 + 48);
      v34[4] = *(a1 + 56);
      v35 = v25;
      v36 = *(a1 + 48);
      v37 = *(a1 + 64);
      [v26 CreateAsset:v35 uuid:v27 sessionToken:v10 completion:v34];

      goto LABEL_12;
    }

    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_256_cold_2();
    }

    v16 = *(a1 + 40);
    v39[0] = v10;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v16 DeleteTempAsset:1 tokens:v17];

    v18 = *(*(a1 + 56) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_259;
    block[3] = &unk_27985F260;
    v19 = *(a1 + 64);
    v32 = v15;
    v33 = v19;
    v20 = v15;
    dispatch_async(v18, block);

    v21 = v33;
  }

  else
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_256_cold_1();
    }

    v22 = *(*(a1 + 56) + 16);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_260;
    v28[3] = &unk_27985F260;
    v23 = *(a1 + 64);
    v29 = v13;
    v30 = v23;
    v20 = v13;
    dispatch_async(v22, v28);

    v21 = v30;
  }

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_257(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_3;
  block[3] = &unk_27985F9D0;
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v5;
  v15 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v4 = a1[7];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "created asset (async) as handle:%@ UUID:%@", &v10, 0x16u);
  }

  v6 = a1[7];
  v7 = a1[4];
  result = (*(a1[8] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createAssetWithDescriptor:(id)descriptor UUID:(id)d error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  dCopy = d;
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = descriptorCopy;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "create asset with descriptor:%@ UUID:%@", buf, 0x16u);
  }

  v12 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient createAssetWithDescriptor:v12 UUID:descriptorCopy error:?];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = __Block_byref_object_copy__5;
  v53 = __Block_byref_object_dispose__5;
  v54 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5;
  v42 = __Block_byref_object_dispose__5;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  conn = self->_conn;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke;
  v31[3] = &unk_27985EDB0;
  v31[4] = &v38;
  v31[5] = a2;
  v14 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v31];
  type = [descriptorCopy type];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_262;
  v27[3] = &unk_27985FA48;
  v29 = &v32;
  v30 = &v38;
  v16 = descriptorCopy;
  v28 = v16;
  [v14 GetTempAssetFileHandle:1 assetType:type assetHandle:0 completion:v27];
  v17 = v33[5];
  if (v39[5])
  {
    if (v17)
    {
      v50 = v33[5];
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      [v14 DeleteTempAsset:1 tokens:v18];
    }
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_263;
    v26[3] = &unk_27985FA70;
    v26[4] = &v38;
    v26[5] = buf;
    [v14 CreateAsset:v16 uuid:dCopy sessionToken:v17 completion:v26];
  }

  v19 = _log_5;
  if (v39[5])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      v20 = v39[5];
      *v44 = 138412802;
      v45 = v16;
      v46 = 2112;
      v47 = dCopy;
      v48 = 2112;
      v49 = v20;
      _os_log_error_impl(&dword_258089000, v19, OS_LOG_TYPE_ERROR, "fail to create asset with descriptor:%@ UUID:%@ error:%@", v44, 0x20u);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*&buf[8] + 40);
    *v44 = 138412546;
    v45 = v21;
    v46 = 2112;
    v47 = dCopy;
    _os_log_impl(&dword_258089000, v19, OS_LOG_TYPE_DEFAULT, "created asset as handle:%@ UUID:%@", v44, 0x16u);
  }

  if (error)
  {
    v22 = v39[5];
    if (v22)
    {
      *error = v22;
    }
  }

  v23 = *(*&buf[8] + 40);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(buf, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_262(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  if (v9 && v8 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [*(a1 + 32) data];
    v12 = *(*(a1 + 48) + 8);
    obj = 0;
    [v8 writeData:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);

    if (*(*(*(a1 + 48) + 8) + 40) && os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_262_cold_2();
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_262_cold_1();
  }

  [v8 closeFile];
}

void __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_263(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)updateAssetWithHandle:(id)handle UUID:(id)d assetData:(id)data assetAlgorithm:(id)algorithm completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  dataCopy = data;
  algorithmCopy = algorithm;
  completionCopy = completion;
  v18 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v34 = handleCopy;
    v35 = 2112;
    v36 = dCopy;
    _os_log_impl(&dword_258089000, v18, OS_LOG_TYPE_INFO, "async update asset with handle:%@ UUID:%@", buf, 0x16u);
  }

  v19 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient updateAssetWithHandle:v19 UUID:? assetData:? assetAlgorithm:? completion:?];
    if (completionCopy)
    {
      goto LABEL_5;
    }
  }

  else if (completionCopy)
  {
LABEL_5:
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke;
    block[3] = &unk_27985FB10;
    block[4] = self;
    v32 = a2;
    v31 = completionCopy;
    v27 = handleCopy;
    v28 = dataCopy;
    v29 = dCopy;
    v30 = algorithmCopy;
    dispatch_async(backgroundQueue, block);

    goto LABEL_10;
  }

  v23 = createManagedAssetError("[ManagedAssetsClient updateAssetWithHandle:UUID:assetData:assetAlgorithm:completion:]", 524, -20001, 0, 0, @"null completion is passed in", v20, v21, v25);
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    [ManagedAssetsClient(Profile) importAssets:option:completion:];
  }

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
}

void __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_2;
  v18[3] = &unk_27985F9A8;
  v9 = *(a1 + 72);
  v3 = v9;
  v19 = v9;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_264;
  v10[3] = &unk_27985FAE8;
  v5 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v4;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v15 = v6;
  v16 = v7;
  v17 = *(a1 + 72);
  v8 = v4;
  [v8 GetTempAssetFileHandle:0 assetType:0 assetHandle:v5 completion:v10];
}

void __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_264(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v12;
  v15 = v14;
  if (v10 && v9 && !v14)
  {
    if (v11)
    {
      v37 = 0;
      v16 = reencryptRemoteAsset([v11 bytes], objc_msgSend(v11, "length"), v13, &v37);
      v17 = v37;

      if (v17)
      {
LABEL_12:
        [v9 closeFile];
        v13 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = v13;
    }

    v36 = 0;
    [v9 writeData:v16 error:&v36];
    v18 = v36;
    if (!v18)
    {
      v26 = *(a1 + 40);
      v25 = *(a1 + 48);
      v27 = *(a1 + 56);
      v28 = *(a1 + 64);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_2_265;
      v32[3] = &unk_27985FAC0;
      v32[4] = *(a1 + 72);
      v33 = v25;
      v34 = *(a1 + 56);
      v35 = *(a1 + 80);
      [v26 UpdateAsset:v33 uuid:v27 sessionToken:v10 algorithmVersion:v28 completion:v32];

      goto LABEL_18;
    }

    v17 = v18;
    goto LABEL_12;
  }

  [v9 closeFile];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v17 = v15;
LABEL_13:
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_264_cold_1(a1);
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v10)
  {
LABEL_15:
    v19 = *(a1 + 40);
    v38[0] = v10;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    [v19 DeleteTempAsset:0 tokens:v20];
  }

LABEL_17:
  v21 = *(*(a1 + 72) + 16);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_266;
  v29[3] = &unk_27985F260;
  v22 = *(a1 + 80);
  v30 = v17;
  v31 = v22;
  v23 = v17;
  dispatch_async(v21, v29);

  v16 = v13;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

void __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_2_265(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_3;
  v6[3] = &unk_27985FA98;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "updated asset (async) with handle:%@ UUID:%@", &v9, 0x16u);
  }

  v6 = a1[4];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateAssetWithHandle:(id)handle UUID:(id)d assetData:(id)data assetAlgorithm:(id)algorithm error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  dataCopy = data;
  algorithmCopy = algorithm;
  v17 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = handleCopy;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_258089000, v17, OS_LOG_TYPE_INFO, "update asset with handle:%@ UUID:%@", buf, 0x16u);
  }

  v18 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient updateAssetWithHandle:v18 UUID:dataCopy assetData:? assetAlgorithm:? error:?];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__5;
  v51 = __Block_byref_object_dispose__5;
  v52 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5;
  v40 = __Block_byref_object_dispose__5;
  v41 = 0;
  conn = self->_conn;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __81__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_error___block_invoke;
  v35[3] = &unk_27985EDB0;
  v35[4] = buf;
  v35[5] = a2;
  v20 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v35];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_error___block_invoke_267;
  v31[3] = &unk_27985FB38;
  v21 = dataCopy;
  v32 = v21;
  v33 = &v36;
  v34 = buf;
  [v20 GetTempAssetFileHandle:0 assetType:0 assetHandle:handleCopy completion:v31];
  v22 = v37[5];
  if (*(*&buf[8] + 40))
  {
    if (v22)
    {
      v48 = v37[5];
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      [v20 DeleteTempAsset:0 tokens:v23];
    }
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __81__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_error___block_invoke_2;
    v30[3] = &unk_27985EC00;
    v30[4] = buf;
    [v20 UpdateAsset:handleCopy uuid:dCopy sessionToken:v22 algorithmVersion:algorithmCopy completion:v30];
  }

  v24 = *(*&buf[8] + 40);
  v25 = _log_5;
  if (v24)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      v26 = *(*&buf[8] + 40);
      *v42 = 138412802;
      v43 = handleCopy;
      v44 = 2112;
      v45 = dCopy;
      v46 = 2112;
      v47 = v26;
      _os_log_error_impl(&dword_258089000, v25, OS_LOG_TYPE_ERROR, "fail to update asset with handle:%@ UUID:%@ error:%@", v42, 0x20u);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 138412546;
    v43 = handleCopy;
    v44 = 2112;
    v45 = dCopy;
    _os_log_impl(&dword_258089000, v25, OS_LOG_TYPE_DEFAULT, "updated asset with handle:%@ UUID:%@", v42, 0x16u);
  }

  if (error)
  {
    v27 = *(*&buf[8] + 40);
    if (v27)
    {
      *error = v27;
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(buf, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v24 == 0;
}

void __81__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __81__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_error___block_invoke_267(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  if (v10)
  {
    if (v9)
    {
      v14 = *(*(a1 + 48) + 8);
      if (!*(v14 + 40))
      {
        if (v11)
        {
          v15 = [v11 bytes];
          v16 = [v11 length];
          v17 = *(*(a1 + 48) + 8);
          obj = *(v17 + 40);
          v18 = reencryptRemoteAsset(v15, v16, v13, &obj);
          objc_storeStrong((v17 + 40), obj);

          v14 = *(*(a1 + 48) + 8);
          if (*(v14 + 40))
          {
            v13 = v18;
            goto LABEL_9;
          }

          v13 = v18;
        }

        v19 = 0;
        [v9 writeData:v13 error:&v19];
        objc_storeStrong((v14 + 40), v19);
      }
    }
  }

LABEL_9:
  [v9 closeFile];
}

- (void)updateAssetHandle:(id)handle withOptions:(id)options assetData:(id)data completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  optionsCopy = options;
  dataCopy = data;
  completionCopy = completion;
  v15 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = handleCopy;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_impl(&dword_258089000, v15, OS_LOG_TYPE_INFO, "async update asset with handle:%@ options:%@", buf, 0x16u);
  }

  v16 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient updateAssetWithHandle:v16 UUID:? assetData:? assetAlgorithm:? completion:?];
    if (completionCopy)
    {
      goto LABEL_5;
    }
  }

  else if (completionCopy)
  {
LABEL_5:
    backgroundQueue = self->_backgroundQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke;
    v22[3] = &unk_27985FB88;
    v22[4] = self;
    v27 = a2;
    v26 = completionCopy;
    v23 = dataCopy;
    v24 = handleCopy;
    v25 = optionsCopy;
    dispatch_async(backgroundQueue, v22);

    goto LABEL_10;
  }

  v20 = createManagedAssetError("[ManagedAssetsClient updateAssetHandle:withOptions:assetData:completion:]", 673, -20001, 0, 0, @"null completion is passed in", v17, v18, v22[0]);
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    [ManagedAssetsClient(Profile) importAssets:option:completion:];
  }

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

void __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_2;
  v23[3] = &unk_27985F9A8;
  v11 = *(a1 + 64);
  v3 = v11;
  v24 = v11;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v23];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v5)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_268;
    v16[3] = &unk_27985FB60;
    v17 = v5;
    v18 = v4;
    v19 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v20 = v7;
    v21 = v8;
    v22 = *(a1 + 64);
    [v18 GetTempAssetFileHandle:0 assetType:0 assetHandle:v6 completion:v16];

    v9 = v17;
  }

  else
  {
    v10 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_2_271;
    v12[3] = &unk_27985FAC0;
    v12[4] = *(a1 + 32);
    v13 = v6;
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v4 UpdateAssetV2:v13 sessionToken:0 options:v10 completion:v12];

    v9 = v13;
  }
}

void __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_268(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = v12;
  v15 = v14;
  if (v10 && v9 && !v14)
  {
    if (v11)
    {
      v40 = 0;
      v16 = reencryptRemoteAsset([v11 bytes], objc_msgSend(v11, "length"), v13, &v40);
      v17 = v40;

      if (v17)
      {
LABEL_12:
        [v9 closeFile];
        v13 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = v13;
    }

    v39 = 0;
    [v9 writeData:v16 error:&v39];
    v18 = v39;
    if (!v18)
    {
      [v9 closeFile];
      v25 = *(a1 + 56);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_2_269;
      v36[3] = &unk_27985FAC0;
      v26 = *(a1 + 40);
      v32 = *(a1 + 64);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 72);
      *&v30 = v28;
      *(&v30 + 1) = v29;
      *&v31 = v32;
      *(&v31 + 1) = v27;
      v37 = v31;
      v38 = v30;
      [v26 UpdateAssetV2:v27 sessionToken:v10 options:v25 completion:v36];

      goto LABEL_18;
    }

    v17 = v18;
    goto LABEL_12;
  }

  [v9 closeFile];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v17 = v15;
LABEL_13:
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_264_cold_1(a1);
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v10)
  {
LABEL_15:
    v19 = *(a1 + 40);
    v41[0] = v10;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    [v19 DeleteTempAsset:0 tokens:v20];
  }

LABEL_17:
  v21 = *(*(a1 + 64) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_270;
  block[3] = &unk_27985F260;
  v22 = *(a1 + 72);
  v34 = v17;
  v35 = v22;
  v23 = v17;
  dispatch_async(v21, block);

  v16 = v13;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

void __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_2_269(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3;
  v6[3] = &unk_27985FA98;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "updated asset (async) with handle:%@ options:%@", &v9, 0x16u);
  }

  v6 = a1[4];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_2_271(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3_272;
  v6[3] = &unk_27985FA98;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3_272(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "updated asset (async) with handle:%@ options:%@", &v9, 0x16u);
  }

  v6 = a1[4];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateAssetHandle:(id)handle withOptions:(id)options assetData:(id)data error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  optionsCopy = options;
  dataCopy = data;
  v14 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = handleCopy;
    *&buf[12] = 2112;
    *&buf[14] = optionsCopy;
    _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_INFO, "update asset with handle:%@ options:%@", buf, 0x16u);
  }

  v15 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
  {
    [ManagedAssetsClient updateAssetHandle:v15 withOptions:dataCopy assetData:? error:?];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__5;
  v47 = __Block_byref_object_dispose__5;
  v48 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  conn = self->_conn;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __69__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_error___block_invoke;
  v31[3] = &unk_27985EDB0;
  v31[4] = buf;
  v31[5] = a2;
  v17 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v31];
  if (!dataCopy)
  {
    goto LABEL_11;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_error___block_invoke_273;
  v27[3] = &unk_27985FB38;
  v28 = dataCopy;
  v29 = &v32;
  v30 = buf;
  [v17 GetTempAssetFileHandle:0 assetType:0 assetHandle:handleCopy completion:v27];
  if (!*(*&buf[8] + 40))
  {

LABEL_11:
    v19 = v33[5];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_error___block_invoke_2;
    v26[3] = &unk_27985EC00;
    v26[4] = buf;
    [v17 UpdateAssetV2:handleCopy sessionToken:v19 options:optionsCopy completion:v26];
    goto LABEL_12;
  }

  if (v33[5])
  {
    v44 = v33[5];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [v17 DeleteTempAsset:0 tokens:v18];
  }

LABEL_12:
  v20 = *(*&buf[8] + 40);
  v21 = _log_5;
  if (v20)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*&buf[8] + 40);
      *v38 = 138412802;
      v39 = handleCopy;
      v40 = 2112;
      v41 = optionsCopy;
      v42 = 2112;
      v43 = v22;
      _os_log_error_impl(&dword_258089000, v21, OS_LOG_TYPE_ERROR, "fail to update asset with handle:%@ options:%@ error:%@", v38, 0x20u);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 138412546;
    v39 = handleCopy;
    v40 = 2112;
    v41 = optionsCopy;
    _os_log_impl(&dword_258089000, v21, OS_LOG_TYPE_DEFAULT, "updated asset with handle:%@ options:%@", v38, 0x16u);
  }

  if (error)
  {
    v23 = *(*&buf[8] + 40);
    if (v23)
    {
      *error = v23;
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(buf, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v20 == 0;
}

void __69__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __69__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_error___block_invoke_273(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  if (v10)
  {
    if (v9)
    {
      v14 = *(*(a1 + 48) + 8);
      if (!*(v14 + 40))
      {
        if (v11)
        {
          v15 = [v11 bytes];
          v16 = [v11 length];
          v17 = *(*(a1 + 48) + 8);
          obj = *(v17 + 40);
          v18 = reencryptRemoteAsset(v15, v16, v13, &obj);
          objc_storeStrong((v17 + 40), obj);

          v14 = *(*(a1 + 48) + 8);
          if (*(v14 + 40))
          {
            v13 = v18;
            goto LABEL_9;
          }

          v13 = v18;
        }

        v19 = 0;
        [v9 writeData:v13 error:&v19];
        objc_storeStrong((v14 + 40), v19);
      }
    }
  }

LABEL_9:
  [v9 closeFile];
}

- (void)deleteAssetWithHandle:(id)handle UUID:(id)d completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  completionCopy = completion;
  if (d)
  {
    v13 = @"com.apple.managedassets.profileUUID";
    v14[0] = d;
    v10 = MEMORY[0x277CBEAC0];
    dCopy = d;
    d = [v10 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  [(ManagedAssetsClient *)self deleteAssetWithHandle:handleCopy withOptions:d completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteAssetWithHandle:(id)handle UUID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (d)
  {
    v14 = @"com.apple.managedassets.profileUUID";
    v15[0] = d;
    v9 = MEMORY[0x277CBEAC0];
    dCopy = d;
    d = [v9 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  v11 = [(ManagedAssetsClient *)self deleteAssetWithHandle:handleCopy withOptions:d error:error];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)deleteAssetWithHandle:(id)handle withOptions:(id)options completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  optionsCopy = options;
  completionCopy = completion;
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = handleCopy;
    v23 = 2112;
    v24 = optionsCopy;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "async delete asset with handle:%@ with options %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke;
    v17[3] = &unk_27985F120;
    v17[4] = self;
    v20 = completionCopy;
    v18 = handleCopy;
    v19 = optionsCopy;
    dispatch_async(backgroundQueue, v17);
  }

  else
  {
    v15 = createManagedAssetError("[ManagedAssetsClient deleteAssetWithHandle:withOptions:completion:]", 856, -20001, 0, 0, @"null completion is passed in", v12, v13, v17[0]);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_2;
  v13[3] = &unk_27985EF18;
  v14 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v4 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_3;
  v10[3] = &unk_27985FAC0;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 DeleteAsset:v5 withOptions:v4 completion:v10];
}

void __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_4;
  v6[3] = &unk_27985FA98;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_4(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_4_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = a1[6];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "deleted asset (async) with handle:%@ options:%@", &v9, 0x16u);
  }

  v6 = a1[4];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteAssetWithHandle:(id)handle withOptions:(id)options error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  optionsCopy = options;
  v10 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = handleCopy;
    *&buf[12] = 2112;
    *&buf[14] = optionsCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "delete asset with handle:%@ options:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  conn = self->_conn;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__ManagedAssetsClient_deleteAssetWithHandle_withOptions_error___block_invoke;
  v20[3] = &unk_27985EC00;
  v20[4] = buf;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__ManagedAssetsClient_deleteAssetWithHandle_withOptions_error___block_invoke_2;
  v19[3] = &unk_27985EC00;
  v19[4] = buf;
  [v12 DeleteAsset:handleCopy withOptions:optionsCopy completion:v19];

  v13 = *(*&buf[8] + 40);
  v14 = _log_5;
  if (v13)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*&buf[8] + 40);
      *v21 = 138412802;
      v22 = handleCopy;
      v23 = 2112;
      v24 = optionsCopy;
      v25 = 2112;
      v26 = v15;
      _os_log_error_impl(&dword_258089000, v14, OS_LOG_TYPE_ERROR, "fail to delete asset with handle:%@ options:%@ error:%@", v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 138412546;
    v22 = handleCopy;
    v23 = 2112;
    v24 = optionsCopy;
    _os_log_impl(&dword_258089000, v14, OS_LOG_TYPE_DEFAULT, "deleted asset with handle:%@ options:%@", v21, 0x16u);
  }

  if (error)
  {
    v16 = *(*&buf[8] + 40);
    if (v16)
    {
      *error = v16;
    }
  }

  _Block_object_dispose(buf, 8);

  v17 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

- (void)deleteAllAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "delete all assets", buf, 2u);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke;
    v10[3] = &unk_27985F288;
    v10[4] = self;
    v11 = completionCopy;
    dispatch_async(backgroundQueue, v10);
  }

  else
  {
    v9 = createManagedAssetError("[ManagedAssetsClient deleteAllAssetsWithCompletion:]", 906, -20001, 0, 0, @"null completion is passed in", v6, v7, v10[0]);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }
}

void __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_2;
  v7[3] = &unk_27985EF18;
  v8 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_3;
  v5[3] = &unk_27985EF40;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 DeleteAllAssetsExcept:0 withOptions:0 completion:v5];
}

void __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_4;
  v6[3] = &unk_27985F288;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = _log_5;
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_4_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "deleted all assets", v6, 2u);
  }

  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (BOOL)deleteAllAssetsWithOptions:(id)options error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = optionsCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "delete all assets sync options:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__ManagedAssetsClient_deleteAllAssetsWithOptions_error___block_invoke;
  v17[3] = &unk_27985EC00;
  v17[4] = &buf;
  v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__ManagedAssetsClient_deleteAllAssetsWithOptions_error___block_invoke_2;
  v16[3] = &unk_27985EC00;
  v16[4] = &buf;
  [v9 DeleteAllAssetsExcept:0 withOptions:optionsCopy completion:v16];

  v10 = _log_5;
  if (*(*(&buf + 1) + 40))
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient deleteAllAssetsWithOptions:optionsCopy error:&buf + 8];
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138412290;
    v19 = optionsCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_DEFAULT, "deleted all assets sync options:%@", v18, 0xCu);
  }

  v11 = *(&buf + 1);
  if (error)
  {
    v12 = *(*(&buf + 1) + 40);
    if (v12)
    {
      *error = v12;
      v11 = *(&buf + 1);
    }
  }

  v13 = *(v11 + 40) == 0;
  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)deleteAllAssetsWithOptions:(id)options completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = optionsCopy;
    _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "delete all assets async options:%@", buf, 0xCu);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke;
    block[3] = &unk_27985FBD8;
    block[4] = self;
    v17 = completionCopy;
    v16 = optionsCopy;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    v12 = createManagedAssetError("[ManagedAssetsClient deleteAllAssetsWithOptions:completion:]", 954, -20001, 0, 0, @"null completion is passed in", v9, v10, v14);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_2;
  v8[3] = &unk_27985EF18;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_3;
  v5[3] = &unk_27985FBB0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 DeleteAllAssetsExcept:0 withOptions:v6 completion:v5];
}

void __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_4;
  block[3] = &unk_27985F2D8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_4_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "deleted all assets async options:%@", &v8, 0xCu);
  }

  v5 = a1[4];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteAllAssetsExcept:(id)except error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v7 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = exceptCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "delete all assets except assetHandles: %@", buf, 0xCu);
  }

  conn = self->_conn;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__ManagedAssetsClient_deleteAllAssetsExcept_error___block_invoke;
  v19[3] = &unk_27985EC00;
  v19[4] = &v20;
  v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__ManagedAssetsClient_deleteAllAssetsExcept_error___block_invoke_2;
  v16[3] = &unk_27985F1E8;
  v10 = exceptCopy;
  v17 = v10;
  v18 = &v20;
  [v9 DeleteAllAssetsExcept:v10 withOptions:0 completion:v16];

  v11 = v21;
  if (error)
  {
    v12 = v21[5];
    if (v12)
    {
      *error = v12;
      v11 = v21;
    }
  }

  v13 = v11[5] == 0;

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __51__ManagedAssetsClient_deleteAllAssetsExcept_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _log_5;
  if (v3)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __51__ManagedAssetsClient_deleteAllAssetsExcept_error___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_258089000, v4, OS_LOG_TYPE_DEFAULT, "delete all assets except assetHandles: %@", &v9, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteAssetsWithOptions:(id)options completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = optionsCopy;
    _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "delete assets async options:%@", buf, 0xCu);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke;
    block[3] = &unk_27985FBD8;
    block[4] = self;
    v17 = completionCopy;
    v16 = optionsCopy;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    v12 = createManagedAssetError("[ManagedAssetsClient deleteAssetsWithOptions:completion:]", 1001, -20001, 0, 0, @"null completion is passed in", v9, v10, v14);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_2;
  v8[3] = &unk_27985EF18;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_3;
  v5[3] = &unk_27985FBB0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 DeleteAssetsWithOptions:v6 completion:v5];
}

void __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_4;
  block[3] = &unk_27985F2D8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_4_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "deleted assets async options:%@", &v8, 0xCu);
  }

  v5 = a1[4];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deleteAllAssetsWithUUID:(id)d completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = dCopy;
    _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "async delete all assets with UUID:%@", buf, 0xCu);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke;
    block[3] = &unk_27985FBD8;
    block[4] = self;
    v17 = completionCopy;
    v16 = dCopy;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    v12 = createManagedAssetError("[ManagedAssetsClient deleteAllAssetsWithUUID:completion:]", 1026, -20001, 0, 0, @"null completion is passed in", v9, v10, v14);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_2;
  v11[3] = &unk_27985EF18;
  v12 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];
  v4 = *(a1 + 40);
  v13 = @"com.apple.managedassets.profileUUID";
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_3;
  v8[3] = &unk_27985FBB0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  [v3 DeleteAssetsWithOptions:v5 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_4;
  block[3] = &unk_27985F2D8;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_4_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_DEFAULT, "deleted all assets (async) with UUID:%@", &v8, 0xCu);
  }

  v5 = a1[4];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteAllAssetsWithUUID:(id)d error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "delete all assets with UUID:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__ManagedAssetsClient_deleteAllAssetsWithUUID_error___block_invoke;
  v17[3] = &unk_27985EC00;
  v17[4] = &buf;
  v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v20 = @"com.apple.managedassets.profileUUID";
  v21 = dCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ManagedAssetsClient_deleteAllAssetsWithUUID_error___block_invoke_2;
  v16[3] = &unk_27985EC00;
  v16[4] = &buf;
  [v9 DeleteAssetsWithOptions:v10 completion:v16];

  v11 = *(*(&buf + 1) + 40);
  v12 = _log_5;
  if (v11)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient deleteAllAssetsWithUUID:dCopy error:&buf + 8];
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138412290;
    v19 = dCopy;
    _os_log_impl(&dword_258089000, v12, OS_LOG_TYPE_DEFAULT, "deleted all assets with UUID:%@", v18, 0xCu);
  }

  if (error)
  {
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      *error = v13;
    }
  }

  _Block_object_dispose(&buf, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (void)queryAssetsWithOptions:(id)options completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v8 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = optionsCopy;
    _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "async query assets with options:%@", buf, 0xCu);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke;
    block[3] = &unk_27985FBD8;
    block[4] = self;
    v17 = completionCopy;
    v16 = optionsCopy;
    dispatch_async(backgroundQueue, block);
  }

  else
  {
    v12 = createManagedAssetError("[ManagedAssetsClient queryAssetsWithOptions:completion:]", 1076, -20001, 0, 0, @"null completion is passed in", v9, v10, v14);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_2;
  v8[3] = &unk_27985EF18;
  v9 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_3;
  v5[3] = &unk_27985FC00;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 QueryAssets:v6 completion:v5];
}

void __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_4;
  v10[3] = &unk_27985FA98;
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_4(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_4_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v4 = a1[6];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_INFO, "queried asset result (async):%@", &v9, 0xCu);
  }

  v5 = a1[6];
  v6 = a1[4];
  result = (*(a1[7] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)queryAssetsWithOptions:(id)options error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = optionsCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "query assets with options:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__5;
  v19[3] = __Block_byref_object_dispose__5;
  v20 = 0;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__ManagedAssetsClient_queryAssetsWithOptions_error___block_invoke;
  v17[3] = &unk_27985EC00;
  v17[4] = &v18;
  v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__ManagedAssetsClient_queryAssetsWithOptions_error___block_invoke_2;
  v16[3] = &unk_27985FC28;
  v16[4] = &v18;
  v16[5] = &buf;
  [v9 QueryAssets:optionsCopy completion:v16];

  v10 = _log_5;
  if (*(v19[0] + 40))
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient queryAssetsWithOptions:optionsCopy error:v19];
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v11 = *(*(&buf + 1) + 40);
    *v21 = 138412290;
    v22 = v11;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "queried asset result:%@", v21, 0xCu);
  }

  if (error)
  {
    v12 = *(v19[0] + 40);
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&buf, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __52__ManagedAssetsClient_queryAssetsWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)queryAssetMetaDataWithOptions:(id)options error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = optionsCopy;
    _os_log_impl(&dword_258089000, v7, OS_LOG_TYPE_INFO, "query assetMetaData with options:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__5;
  v19[3] = __Block_byref_object_dispose__5;
  v20 = 0;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__ManagedAssetsClient_queryAssetMetaDataWithOptions_error___block_invoke;
  v17[3] = &unk_27985EC00;
  v17[4] = &v18;
  v9 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__ManagedAssetsClient_queryAssetMetaDataWithOptions_error___block_invoke_2;
  v16[3] = &unk_27985F170;
  v16[4] = &v18;
  v16[5] = &buf;
  [v9 QueryAssetMetaData:optionsCopy completion:v16];

  v10 = _log_5;
  if (*(v19[0] + 40))
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient queryAssetsWithOptions:optionsCopy error:v19];
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v11 = *(*(&buf + 1) + 40);
    *v21 = 138412290;
    v22 = v11;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "queried assetMetaData result:%@", v21, 0xCu);
  }

  if (error)
  {
    v12 = *(v19[0] + 40);
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&buf, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __59__ManagedAssetsClient_queryAssetMetaDataWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)recoverRemoteAsset:(id)asset
{
  v13 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = assetCopy;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "recoverRemoteAsset: %@", buf, 0xCu);
  }

  v6 = [(NSXPCConnection *)self->_conn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_277];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ManagedAssetsClient_recoverRemoteAsset___block_invoke_278;
  v9[3] = &unk_27985FC50;
  v10 = assetCopy;
  v7 = assetCopy;
  [v6 recoverRemoteAsset:v7 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __42__ManagedAssetsClient_recoverRemoteAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1();
  }
}

void __42__ManagedAssetsClient_recoverRemoteAsset___block_invoke_278(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _log_5;
  if (v3)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __42__ManagedAssetsClient_recoverRemoteAsset___block_invoke_278_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_258089000, v4, OS_LOG_TYPE_INFO, "requested to recover remote asset: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getAssetDataWithHandle:(id)handle UUID:(id)d completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  completionCopy = completion;
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = handleCopy;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "async get asset data with handle:%@ UUID:%@", buf, 0x16u);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke;
    v17[3] = &unk_27985F120;
    v17[4] = self;
    v20 = completionCopy;
    v18 = handleCopy;
    v19 = dCopy;
    dispatch_async(backgroundQueue, v17);
  }

  else
  {
    v15 = createManagedAssetError("[ManagedAssetsClient getAssetDataWithHandle:UUID:completion:]", 1208, -20001, 0, 0, @"null completion is passed in", v12, v13, v17[0]);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_2;
  v13[3] = &unk_27985EF18;
  v14 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v13];
  v4 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3;
  v10[3] = &unk_27985FCA0;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 GetAssetData:v5 uuid:v4 completion:v10];
}

void __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9 && v11)
  {
    v31 = v12;
    v13 = decrypteRemoteAsset([v11 bytes], objc_msgSend(v11, "length"), v9, &v31);
    v14 = v31;

    if (v14)
    {
      [*(a1 + 32) recoverRemoteAsset:*(a1 + 40)];
    }
  }

  else if (v9)
  {
    v30 = 0;
    v13 = [v9 readDataToEndOfFileAndReturnError:&v30];
    v14 = v30;

    if (v14 && os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3_cold_1(a1);
    }

    [v9 closeFile];
  }

  else
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12;
  }

  v15 = _log_5;
  if (v12)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3_cold_2(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = v15;
      v19 = [v13 length];
      *buf = 138412802;
      v33 = v17;
      v34 = 2112;
      v35 = v16;
      v36 = 2048;
      v37 = v19;
      _os_log_impl(&dword_258089000, v18, OS_LOG_TYPE_INFO, "get asset data (async) with handle:%@ UUID:%@ dataSize:%lu", buf, 0x20u);
    }

    if (v13)
    {
      v20 = _log_5;
      if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
      {
        [ManagedAssetsClient updateAssetWithHandle:v20 UUID:? assetData:? assetAlgorithm:? completion:?];
      }
    }
  }

  v21 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_279;
  block[3] = &unk_27985FC78;
  v22 = *(a1 + 56);
  v28 = v14;
  v29 = v22;
  v27 = v13;
  v23 = v14;
  v24 = v13;
  dispatch_async(v21, block);

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getAssetDataWithHandle:(id)handle UUID:(id)d error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  v10 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = handleCopy;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "get asset data with handle:%@ UUID:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0;
  conn = self->_conn;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__ManagedAssetsClient_getAssetDataWithHandle_UUID_error___block_invoke;
  v28[3] = &unk_27985EC00;
  v28[4] = &v29;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v28];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__ManagedAssetsClient_getAssetDataWithHandle_UUID_error___block_invoke_2;
  v24[3] = &unk_27985FCC8;
  v24[4] = self;
  v13 = handleCopy;
  v25 = v13;
  v26 = buf;
  v27 = &v29;
  [v12 GetAssetData:v13 uuid:dCopy completion:v24];

  v14 = _log_5;
  if (v30[5])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      v15 = v30[5];
      *v35 = 138412802;
      v36 = v13;
      v37 = 2112;
      v38 = dCopy;
      v39 = 2112;
      v40 = v15;
      _os_log_error_impl(&dword_258089000, v14, OS_LOG_TYPE_ERROR, "fail to get asset data with handle:%@ UUID:%@ error:%@", v35, 0x20u);
    }
  }

  else
  {
    v16 = _log_5;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [*(*&buf[8] + 40) length];
      *v35 = 138412802;
      v36 = v13;
      v37 = 2112;
      v38 = dCopy;
      v39 = 2048;
      v40 = v17;
      _os_log_impl(&dword_258089000, v16, OS_LOG_TYPE_INFO, "get asset data with handle:%@ UUID:%@ dataSize:%lu", v35, 0x20u);
    }

    v18 = _log_5;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = getMASHA256Hash(*(*&buf[8] + 40));
      [ManagedAssetsClient getAssetDataWithHandle:v19 UUID:v35 error:v18];
    }
  }

  if (error)
  {
    v20 = v30[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = *(*&buf[8] + 40);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __57__ManagedAssetsClient_getAssetDataWithHandle_UUID_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9 && v11)
  {
    v21 = v12;
    v13 = decrypteRemoteAsset([v11 bytes], objc_msgSend(v11, "length"), v9, &v21);
    v14 = v21;

    if (v14)
    {
      [*(a1 + 32) recoverRemoteAsset:*(a1 + 40)];
    }
  }

  else if (v9)
  {
    v20 = 0;
    v13 = [v9 readDataToEndOfFileAndReturnError:&v20];
    v14 = v20;

    if (v14 && os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3_cold_1(a1);
    }

    [v9 closeFile];
  }

  else
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12;
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;
  v17 = v13;

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v14;
}

- (void)getAssetMetaDataWithHandle:(id)handle UUID:(id)d completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  completionCopy = completion;
  v11 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = handleCopy;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_INFO, "async get asset metadata with handle:%@ UUID:%@", buf, 0x16u);
  }

  if (completionCopy)
  {
    backgroundQueue = self->_backgroundQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke;
    v17[3] = &unk_27985F120;
    v17[4] = self;
    v20 = completionCopy;
    v18 = handleCopy;
    v19 = dCopy;
    dispatch_async(backgroundQueue, v17);
  }

  else
  {
    v15 = createManagedAssetError("[ManagedAssetsClient getAssetMetaDataWithHandle:UUID:completion:]", 1299, -20001, 0, 0, @"null completion is passed in", v12, v13, v17[0]);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_2;
  v12[3] = &unk_27985EF18;
  v13 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_3;
  v9[3] = &unk_27985FCF0;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 GetAssetMeteData:v4 uuid:0 completion:v9];
}

void __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_4;
  block[3] = &unk_27985F9D0;
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v5;
  v15 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_4(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = _log_5;
  if (a1[4])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_4_cold_1(a1, v2);
    }
  }

  else
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
    {
      v4 = a1[5];
      v5 = a1[6];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_258089000, v3, OS_LOG_TYPE_INFO, "get asset metadata (async) with handle:%@ UUID:%@", &v10, 0x16u);
    }

    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
    {
      __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_4_cold_2(a1);
    }
  }

  v6 = a1[7];
  v7 = a1[4];
  result = (*(a1[8] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getAssetMetaDataWithHandle:(id)handle UUID:(id)d error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  v10 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = handleCopy;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "get asset metadata with handle:%@ UUID:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  conn = self->_conn;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_error___block_invoke;
  v21[3] = &unk_27985EC00;
  v21[4] = &v22;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_error___block_invoke_2;
  v20[3] = &unk_27985FD18;
  v20[4] = buf;
  v20[5] = &v22;
  [v12 GetAssetMeteData:handleCopy uuid:dCopy completion:v20];

  v13 = v23;
  if (error)
  {
    v14 = v23[5];
    if (v14)
    {
      *error = v14;
      v13 = v23;
    }
  }

  v15 = _log_5;
  if (v13[5])
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      v16 = v23[5];
      *v28 = 138412802;
      v29 = handleCopy;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = v16;
      _os_log_error_impl(&dword_258089000, v15, OS_LOG_TYPE_ERROR, "fail to get asset metadata with handle:%@ UUID:%@ error:%@", v28, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
    {
      *v28 = 138412546;
      v29 = handleCopy;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&dword_258089000, v15, OS_LOG_TYPE_INFO, "get asset metadata with handle:%@ UUID:%@", v28, 0x16u);
    }

    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEBUG))
    {
      [ManagedAssetsClient getAssetMetaDataWithHandle:? UUID:? error:?];
    }
  }

  v17 = *(*&buf[8] + 40);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __61__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)registerDarwinNotification:(unint64_t)notification
{
  if (notification == 4)
  {
    if ([(NSPointerArray *)self->_profileEventObservers count])
    {
      goto LABEL_8;
    }

    v4 = kMASDNotificationTypeProfileChangeEvent;
    goto LABEL_7;
  }

  if (notification == 3 && ![(NSPointerArray *)self->_assetEventObservers count])
  {
    v4 = kMASDNotificationTypeAssetChangeEvent;
LABEL_7:
    [(ManagedAssetsClient *)self subscribeDarwinNotification:*v4];
  }

LABEL_8:
  remoteObjectProxy = [(NSXPCConnection *)self->_conn remoteObjectProxy];
  [remoteObjectProxy WakeUp];
}

- (void)unregisterDarwinNotificationIfNeed:(unint64_t)need
{
  if (need == 4)
  {
    if ([(NSPointerArray *)self->_profileEventObservers count])
    {
      return;
    }

    v4 = kMASDNotificationTypeProfileChangeEvent;
  }

  else
  {
    if (need != 3 || [(NSPointerArray *)self->_assetEventObservers count])
    {
      return;
    }

    v4 = kMASDNotificationTypeAssetChangeEvent;
  }

  v5 = *v4;

  [(ManagedAssetsClient *)self unsubscribeDarwinNotification:v5];
}

- (void)didReceiveAssetChangeWith:(unint64_t)with assethandles:(id)assethandles
{
  assethandlesCopy = assethandles;
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ManagedAssetsClient_didReceiveAssetChangeWith_assethandles___block_invoke;
  block[3] = &unk_27985F958;
  v10 = assethandlesCopy;
  withCopy = with;
  block[4] = self;
  v8 = assethandlesCopy;
  dispatch_async(notifyQueue, block);
}

void __62__ManagedAssetsClient_didReceiveAssetChangeWith_assethandles___block_invoke(void *a1)
{
  [*(a1[4] + 64) compact];
  v2 = [*(a1[4] + 64) allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ManagedAssetsClient_didReceiveAssetChangeWith_assethandles___block_invoke_2;
  v5[3] = &unk_27985FD68;
  v4 = a1[5];
  v3 = a1[6];
  v5[4] = a1[4];
  v7 = v3;
  v6 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __62__ManagedAssetsClient_didReceiveAssetChangeWith_assethandles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [*(*(a1 + 32) + 88) objectForKey:v3];
  v6 = [v5 objectForKeyedSubscript:&unk_286942840];
  v7 = [v6 unsignedIntegerValue];
  v8 = *(a1 + 48);
  if ((v8 & v7) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 didReceiveAssetChangeWith:*(a1 + 48) assethandles:*(a1 + 40)];
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__ManagedAssetsClient_didReceiveAssetChangeWith_assethandles___block_invoke_283;
    v10[3] = &unk_27985FD40;
    v13 = v8;
    v11 = *(a1 + 40);
    v9 = v4;
    v12 = v9;
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
    if ([v9 count] && objc_msgSend(v3, "conformsToProtocol:", &unk_286947878) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 didReceiveAssetChangeWith:*(a1 + 48) assethandles:v9];
    }
  }
}

void __62__ManagedAssetsClient_didReceiveAssetChangeWith_assethandles___block_invoke_283(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ((*(a1 + 48) & [a3 unsignedIntegerValue]) != 0)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v5)
    {
      [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

- (void)didReceiveProfileChangeWith:(unint64_t)with profile:(id)profile type:(unint64_t)type
{
  profileCopy = profile;
  notifyQueue = self->_notifyQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__ManagedAssetsClient_didReceiveProfileChangeWith_profile_type___block_invoke;
  v11[3] = &unk_27985F930;
  v11[4] = self;
  v12 = profileCopy;
  withCopy = with;
  typeCopy = type;
  v10 = profileCopy;
  dispatch_async(notifyQueue, v11);
}

void __64__ManagedAssetsClient_didReceiveProfileChangeWith_profile_type___block_invoke(void *a1)
{
  [*(a1[4] + 72) compact];
  v2 = [*(a1[4] + 72) allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ManagedAssetsClient_didReceiveProfileChangeWith_profile_type___block_invoke_2;
  v7[3] = &unk_27985FD90;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = a1[4];
  v9 = v3;
  v5 = v4;
  v6 = a1[7];
  v8 = v5;
  v10 = v6;
  [v2 enumerateObjectsUsingBlock:v7];
}

void __64__ManagedAssetsClient_didReceiveProfileChangeWith_profile_type___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1[4] + 96) objectForKey:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
    v6 = a1[6];
    v7 = v6 & v5;
    v8 = v6 & 0xC01C0;
    v9 = !v7 || v8 == 0;
    if (!v9 && [v10 conformsToProtocol:&unk_286947878] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v10 didReceiveProfileChangeWith:a1[6] profile:a1[5] type:a1[7]];
    }
  }
}

- (void)subscribeDarwinNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "Subscribe Darwin notification with type %@", &v7, 0xCu);
  }

  CFNotificationCenterAddObserver(self->_darwinCenter, self, _handleDarwinNotification, notificationCopy, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeDarwinNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "Unsubscribe Darwin notification with type %@", &v7, 0xCu);
  }

  CFNotificationCenterRemoveObserver(self->_darwinCenter, self, notificationCopy, 0);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchCoreRxLensData:(id)data recordUUID:(id)d accPayload:(id)payload rxIdL:(int64_t)l rxIdR:(int64_t)r axisL:(int64_t)axisL axisR:(int64_t)axisR calRequiredL:(BOOL)self0 calRequiredR:(BOOL)self1 version:(unint64_t)self2 attributes:(id)self3 completion:(id)self4
{
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  payloadCopy = payload;
  attributesCopy = attributes;
  completionCopy = completion;
  v23 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v43 = dataCopy;
    v44 = 2112;
    v45 = dCopy;
    _os_log_impl(&dword_258089000, v23, OS_LOG_TYPE_INFO, "async fetchCoreRxLensData name:%@ recordUUID:%@", buf, 0x16u);
  }

  conn = self->_conn;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke;
  v39[3] = &unk_27985FDB8;
  v41 = a2;
  v39[4] = self;
  v25 = completionCopy;
  v40 = v25;
  v26 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v39];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_2;
  v35[3] = &unk_27985FDE0;
  v36 = dataCopy;
  v37 = dCopy;
  v38 = v25;
  v27 = v25;
  v28 = dCopy;
  v29 = dataCopy;
  LOWORD(v31) = __PAIR16__(requiredR, requiredL);
  [v26 fetchCoreRxLensData:v29 recordUUID:v28 accPayload:payloadCopy rxIdL:l rxIdR:r axisL:axisL axisR:axisR calRequiredL:v31 calRequiredR:version version:attributesCopy attributes:v35 reply:?];

  v30 = *MEMORY[0x277D85DE8];
}

void __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_286;
  v8[3] = &unk_27985F260;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _log_5;
  if (v9)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_DEFAULT, "successfully fetched CoreRx lens data for lens: %@ recordUUID: %@ attributesOut: %@", &v13, 0x20u);
  }

  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchCoreRxLensData:(id)data recordUUID:(id)d accPayload:(id)payload rxIdL:(int64_t)l rxIdR:(int64_t)r axisL:(int64_t)axisL axisR:(int64_t)axisR calRequiredL:(BOOL)self0 calRequiredR:(BOOL)self1 version:(unint64_t)self2 attributes:(id)self3 attributesOut:(id *)self4 recordUUIDOut:(id *)self5 error:(id *)self6
{
  v70 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  payloadCopy = payload;
  attributesCopy = attributes;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__5;
  v64 = __Block_byref_object_dispose__5;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__5;
  v58 = __Block_byref_object_dispose__5;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__5;
  v52 = __Block_byref_object_dispose__5;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v24 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v67 = dataCopy;
    v68 = 2112;
    v69 = dCopy;
    _os_log_impl(&dword_258089000, v24, OS_LOG_TYPE_INFO, "sync fetchCoreRxLensData name:%@ recordUUID:%@", buf, 0x16u);
  }

  conn = self->_conn;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __168__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_attributesOut_recordUUIDOut_error___block_invoke;
  v43[3] = &unk_27985EDB0;
  v43[4] = &v60;
  v43[5] = a2;
  v26 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v43];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __168__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_attributesOut_recordUUIDOut_error___block_invoke_288;
  v36[3] = &unk_27985FE08;
  v39 = &v54;
  v40 = &v48;
  v41 = &v60;
  v27 = dataCopy;
  v37 = v27;
  v28 = dCopy;
  v38 = v28;
  v42 = &v44;
  LOWORD(v32) = __PAIR16__(requiredR, requiredL);
  [v26 fetchCoreRxLensData:v27 recordUUID:v28 accPayload:payloadCopy rxIdL:l rxIdR:r axisL:axisL axisR:axisR calRequiredL:v32 calRequiredR:version version:attributesCopy attributes:v36 reply:?];
  if (dOut)
  {
    *dOut = v55[5];
  }

  if (out)
  {
    *out = v49[5];
  }

  if (error)
  {
    *error = v61[5];
  }

  v29 = *(v45 + 24);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

void __168__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_attributesOut_recordUUIDOut_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __168__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_attributesOut_recordUUIDOut_error___block_invoke_288(void *a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  if (v10)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a4);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v11 = _log_5;
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_258089000, v11, OS_LOG_TYPE_DEFAULT, "successfully fetched CoreRx lens data for lens: %@ recordUUID: %@ attributesOut: %@", &v14, 0x20u);
    }

    *(*(a1[9] + 8) + 24) = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)testDaemon:(id)daemon results:(id *)results error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  daemonCopy = daemon;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = daemonCopy;
    _os_log_impl(&dword_258089000, v10, OS_LOG_TYPE_INFO, "sync testDaemon inputs: %@", buf, 0xCu);
  }

  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__ManagedAssetsClient_testDaemon_results_error___block_invoke;
  v17[3] = &unk_27985EDB0;
  v17[4] = &v28;
  v17[5] = a2;
  v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__ManagedAssetsClient_testDaemon_results_error___block_invoke_289;
  v16[3] = &unk_27985FE30;
  v16[4] = &v22;
  v16[5] = &v28;
  v16[6] = &v18;
  [v12 daemonTest:daemonCopy completion:v16];
  if (results)
  {
    *results = v23[5];
  }

  if (error)
  {
    *error = v29[5];
  }

  v13 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __48__ManagedAssetsClient_testDaemon_results_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __48__ManagedAssetsClient_testDaemon_results_error___block_invoke_289(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __48__ManagedAssetsClient_testDaemon_results_error___block_invoke_289_cold_1();
    }
  }

  else
  {
    v8 = _log_5;
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = 0;
      _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "testDaemon SUCCEED results: %@ error: %@", &v10, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recoveryTaskWhenDaemonIsReady
{
  remoteNotifyQueue = self->_remoteNotifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ManagedAssetsClient_recoveryTaskWhenDaemonIsReady__block_invoke;
  block[3] = &unk_27985FE58;
  block[4] = self;
  dispatch_async(remoteNotifyQueue, block);
}

void __52__ManagedAssetsClient_recoveryTaskWhenDaemonIsReady__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 56) compact];
  v2 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v2, OS_LOG_TYPE_INFO, "recovery when daemon is ready", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 56) count];
  v4 = *(a1 + 32);
  if (v3 && !*(v4 + 128))
  {
    v28 = 0;
    v5 = [v4 recreateRemoteObserverXPCWith:&v28];
    v6 = v28;
    if ((v5 & 1) == 0 && os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __52__ManagedAssetsClient_recoveryTaskWhenDaemonIsReady__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
  }

  os_unfair_lock_lock((v4 + 104));
  v7 = [*(*(a1 + 32) + 120) keyEnumerator];
  v8 = [v7 allObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    *&v11 = 138412290;
    v22 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v16 = _log_5;
        if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
        {
          *buf = v22;
          v30 = v15;
          _os_log_impl(&dword_258089000, v16, OS_LOG_TYPE_INFO, "try to register observer %@", buf, 0xCu);
        }

        v17 = *(a1 + 32);
        v23 = 0;
        v18 = [v17 recreateFileOrKVStoreObserverXPCWith:v15 error:{&v23, v22}];
        v19 = v23;
        if ((v18 & 1) == 0)
        {
          v20 = _log_5;
          if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v30 = v19;
            _os_log_error_impl(&dword_258089000, v20, OS_LOG_TYPE_ERROR, "fail to re-register file/kvstore observer to managedassetsd through xpc, error: %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)recreateFileOrKVStoreObserverXPCWith:(id)with error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x3032000000;
  v38[2] = __Block_byref_object_copy__5;
  v38[3] = __Block_byref_object_dispose__5;
  v39 = 0;
  os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
  v7 = [(NSMapTable *)self->_bidirectionalXPCObservers objectForKey:withCopy];
  v8 = [(NSMapTable *)self->_bidirectionalXPCObserversMetaData objectForKey:withCopy];
  os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_serviceName options:0];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869469F8];
    [v7 setRemoteObjectInterface:v10];

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286947878];
    [v7 setExportedInterface:v11];

    [v7 setExportedObject:withCopy];
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke;
    v33[3] = &unk_27985FE80;
    objc_copyWeak(&v35, &location);
    v12 = withCopy;
    v34 = v12;
    [v7 setInterruptionHandler:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke_2;
    v30[3] = &unk_27985FE80;
    objc_copyWeak(&v32, &location);
    v13 = v12;
    v31 = v13;
    [v7 setInvalidationHandler:v30];
    [v7 resume];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke_3;
    v29[3] = &unk_27985EDB0;
    v29[4] = &v37;
    v29[5] = a2;
    v26 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v29];
    v14 = *(v38[0] + 40);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v25 = [v8 objectForKeyedSubscript:@"group"];
      v16 = [v8 objectForKeyedSubscript:@"observerType"];
      integerValue = [v16 integerValue];
      v17 = [v8 objectForKeyedSubscript:@"resources"];
      v18 = [v8 objectForKeyedSubscript:@"profile"];
      v19 = [v8 objectForKeyedSubscript:@"events"];
      integerValue2 = [v19 integerValue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke_290;
      v28[3] = &unk_27985EC00;
      v28[4] = &v37;
      [v26 RegisterOberverWithGroup:v25 observerType:integerValue resourceNames:v17 profile:v18 events:integerValue2 completion:v28];

      v21 = _log_5;
      if (!*(v38[0] + 40))
      {
        if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v13;
          _os_log_impl(&dword_258089000, v21, OS_LOG_TYPE_INFO, "register observer %@ at managedassetsd", buf, 0xCu);
        }

        os_unfair_lock_lock(&self->_bidirectional_xpcObserver_lock);
        [(NSMapTable *)self->_bidirectionalXPCObservers setObject:v7 forKey:v13];
        os_unfair_lock_unlock(&self->_bidirectional_xpcObserver_lock);
        v9 = 1;
        goto LABEL_10;
      }

      if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
      {
        [ManagedAssetsClient recreateFileOrKVStoreObserverXPCWith:v38 error:?];
      }

      [v7 invalidate];

      v15 = *(v38[0] + 40);
      v7 = 0;
    }

    v9 = 0;
    *error = v15;
LABEL_10:

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  _Block_object_dispose(&v37, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

void __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fileOrKVStoreObserverXPCExitHandler:*(a1 + 32)];
}

void __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fileOrKVStoreObserverXPCExitHandler:*(a1 + 32)];
}

void __66__ManagedAssetsClient_recreateFileOrKVStoreObserverXPCWith_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)recreateRemoteObserverXPCWith:(id *)with
{
  if (self->_remoteObserverConn)
  {
    return 1;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:self->_serviceName options:0];
  remoteObserverConn = self->_remoteObserverConn;
  self->_remoteObserverConn = v7;

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869469F8];
  [(NSXPCConnection *)self->_remoteObserverConn setRemoteObjectInterface:v9];

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869478D8];
  [(NSXPCConnection *)self->_remoteObserverConn setExportedInterface:v10];

  exportedInterface = [(NSXPCConnection *)self->_remoteObserverConn exportedInterface];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
  [exportedInterface setClasses:v16 forSelector:sel_didReceiveShareAssets_participant_error_ argumentIndex:0 ofReply:0];

  [(NSXPCConnection *)self->_remoteObserverConn setExportedObject:self];
  objc_initWeak(&location, self);
  v17 = self->_remoteObserverConn;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke;
  v27[3] = &unk_27985FEA8;
  objc_copyWeak(&v28, &location);
  [(NSXPCConnection *)v17 setInterruptionHandler:v27];
  v18 = self->_remoteObserverConn;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke_2;
  v25[3] = &unk_27985FEA8;
  objc_copyWeak(&v26, &location);
  [(NSXPCConnection *)v18 setInvalidationHandler:v25];
  [(NSXPCConnection *)self->_remoteObserverConn resume];
  v19 = self->_remoteObserverConn;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke_3;
  v24[3] = &unk_27985EDB0;
  v24[4] = &v30;
  v24[5] = a2;
  v20 = [(NSXPCConnection *)v19 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v21 = v31[5];
  if (v21 || (v23[0] = MEMORY[0x277D85DD0], v23[1] = 3221225472, v23[2] = __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke_299, v23[3] = &unk_27985EC00, v23[4] = &v30, [v20 RegisterRemoteSharingOberverWithCompletion:v23], (v21 = v31[5]) != 0))
  {
    v3 = 0;
    *with = v21;
  }

  else
  {
    v3 = 1;
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v30, 8);

  return v3;
}

void __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained remoteObserverXPCExitHandler];
}

void __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained remoteObserverXPCExitHandler];
}

void __53__ManagedAssetsClient_recreateRemoteObserverXPCWith___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)remoteObserverXPCExitHandler
{
  [(NSXPCConnection *)self->_remoteObserverConn invalidate];
  remoteObserverConn = self->_remoteObserverConn;
  self->_remoteObserverConn = 0;
}

- (void)fileOrKVStoreObserverXPCExitHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [(NSMapTable *)self->_bidirectionalXPCObservers objectForKey:?];
  if (v4)
  {
    v5 = v4;
    [v4 invalidate];

    [(NSMapTable *)self->_bidirectionalXPCObservers removeObjectForKey:handlerCopy];
  }
}

- (void)checkIfCloudZonesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258089000, v5, OS_LOG_TYPE_INFO, "checkIfCloudZonesWithCompletionHandler", buf, 2u);
  }

  if (handlerCopy)
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__ManagedAssetsClient_checkIfCloudZonesWithCompletionHandler___block_invoke;
    v14[3] = &unk_27985EF18;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__ManagedAssetsClient_checkIfCloudZonesWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_27985FED0;
    v13 = v9;
    [v10 CheckIfCloudAssetZonesWithCompletion:v12];

    v11 = v15;
  }

  else
  {
    v11 = createManagedAssetError("[ManagedAssetsClient checkIfCloudZonesWithCompletionHandler:]", 1799, -20001, 0, 0, @"null completion is passed in", v6, v7, v12[0]);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      [ManagedAssetsClient(Profile) importAssets:option:completion:];
    }
  }
}

void __62__ManagedAssetsClient_checkIfCloudZonesWithCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _log_5;
  if (v5)
  {
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __62__ManagedAssetsClient_checkIfCloudZonesWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    v7 = @"have not been created";
    if (a2)
    {
      v7 = @"exist";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_258089000, v6, OS_LOG_TYPE_INFO, "MA cloud asset zones %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveAVPSetupUserOption:(int64_t)option error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v8 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    optionCopy = option;
    _os_log_impl(&dword_258089000, v8, OS_LOG_TYPE_INFO, "notifyAVPSetupUserOption:%ld", buf, 0xCu);
  }

  conn = self->_conn;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__ManagedAssetsClient_saveAVPSetupUserOption_error___block_invoke;
  v15[3] = &unk_27985FEF8;
  v15[5] = &v16;
  v15[6] = a2;
  v15[4] = &v20;
  v10 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__ManagedAssetsClient_saveAVPSetupUserOption_error___block_invoke_307;
  v14[3] = &unk_27985EC50;
  v14[4] = &v16;
  v14[5] = &v20;
  [v10 saveAVPSetupUserOption:option completion:v14];
  if (error)
  {
    *error = v21[5];
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __52__ManagedAssetsClient_saveAVPSetupUserOption_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_5;
  if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
  {
    __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __52__ManagedAssetsClient_saveAVPSetupUserOption_error___block_invoke_307(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(_log_5, OS_LOG_TYPE_ERROR))
    {
      __52__ManagedAssetsClient_saveAVPSetupUserOption_error___block_invoke_307_cold_1();
    }
  }
}

void __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Fail to get xpc proxy, error = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__ManagedAssetsClient_Profile__getCurrentProfileType__block_invoke_9_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Fail to invoke GetCurrentProfileType, error = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ManagedAssetsClient_Profile__deleteAllNonDefaultProfilesWithError___block_invoke_13_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Fail to invoke deleteAllNonDefaultProfilesWithError, error = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(*v1 + 8) + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1(&dword_258089000, v3, v4, "Failed to create directory %@ for asset serilization, error = %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_2_cold_2(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8(a2, *MEMORY[0x277D85DE8]);
  v3 = *(*(v2 + 8) + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v4, v5, "fail to export AX file %@, error: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_Profile__exportAssetsToPath_option_profile_error___block_invoke_30_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to change remote asset at %@ to protection class A", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v3, v4, "Failed to import coreprescription data, error=%@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(&dword_258089000, v5, v6, "failed to get the proxy object via %@: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__ManagedAssetsClient_Profile__importAssets_option_completion___block_invoke_76_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_8(a2, *MEMORY[0x277D85DE8]);
  v3 = *(*(v2 + 8) + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v4, v5, "fail to write asset data to filehandle: %@, error: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ManagedAssetsClient_Profile__importAssetsFromPath_option_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = v0;
  _os_log_debug_impl(&dword_258089000, v1, OS_LOG_TYPE_DEBUG, "ptype: %@, assetList: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_12_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 UUIDString];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10(&dword_258089000, v5, v6, "failed to write data to file handle for anchor %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_12_cold_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [OUTLINED_FUNCTION_8_0() UUIDString];
  v7 = *(a1 + 56);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_258089000, v8, v9, "failed to create/update anchor %@ belonging to client: %@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __106__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_completion___block_invoke_13_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUIDString];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10(&dword_258089000, v5, v6, "failed to commit data to file handle for anchor %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __101__ManagedAssetsClient_AnchorPersist__addOrUpdateDataForAnchorIdentifier_clientIdentifier_data_error___block_invoke_16_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2);
  [OUTLINED_FUNCTION_8_0() UUIDString];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_258089000, v5, v6, "failed to create/update anchor %@ belonging to client: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __92__ManagedAssetsClient_AnchorPersist__removeDataForAnchorIdentifiers_clientIdentifier_error___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2);
  [OUTLINED_FUNCTION_8_0() UUIDString];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_258089000, v5, v6, "failed to delete anchor %@ belonging to client: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __88__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_error___block_invoke_23_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2);
  [OUTLINED_FUNCTION_8_0() UUIDString];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_258089000, v5, v6, "failed to get anchor %@ belonging to client: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_27_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__ManagedAssetsClient_AnchorPersist__getDataForAllAnchors_completion___block_invoke_36_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__ManagedAssetsClient_AnchorPersist__getDataForAnchorIdentifier_clientIdentifier_completion___block_invoke_43_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__ManagedAssetsClient_AnchorPersist__removeDataForAllAnchors_error___block_invoke_46_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__ManagedAssetsClient_AnchorPersist__addAnchorGroup_clientIdentifier_error___block_invoke_50_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__ManagedAssetsClient_AnchorPersist__removeAnchorGroup_clientIdentifier_error___block_invoke_51_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_AnchorPersist__getAllAnchorGroupsForClient_error___block_invoke_52_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__ManagedAssetsClient_AnchorPersist__removeAllAnchorGroupsForClient_error___block_invoke_54_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to get the proxy object: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "done createKVStore by masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_completion___block_invoke_34_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to createKVStore from masd, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__ManagedAssetsClient_KVStore__createKVStore_recordFields_attributes_error___block_invoke_35_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v1, v2, "failed to createKVStore, name=%@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "done updateKVStore by masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_completion___block_invoke_37_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to updateKVStore from masd, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_KVStore__putDataInStore_records_attributes_error___block_invoke_38_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v1, v2, "failed to updateKVStore, name=%@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "done updateDataInStore by masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_completion___block_invoke_40_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to updateDataInStore from masd, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __79__ManagedAssetsClient_KVStore__updateDataInStore_keys_values_attributes_error___block_invoke_41_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v1, v2, "failed to updateDataInStore, name=%@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "done queryKVStore by masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_completion___block_invoke_43_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to queryKVStore from masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ManagedAssetsClient_KVStore__queryDataInStore_keys_attributes_error___block_invoke_45_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v1, v2, "failed to queryKVStore, name=%@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "done deleteKVData by masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_completion___block_invoke_47_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to deleteKVStore from masd, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __72__ManagedAssetsClient_KVStore__deleteDataInStore_keys_attributes_error___block_invoke_48_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v1, v2, "failed to deleteKVData, name=%@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __68__ManagedAssetsClient_KVStore__deleteKVStore_attributes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "done deleteKVStore by masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__ManagedAssetsClient_KVStore__deleteKVStore_attributes_error___block_invoke_51_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v1, v2, "failed to deleteKVStore, name=%@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke_52_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to checkIfKVStoreGroupUsingAttributes, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__ManagedAssetsClient_KVStore__checkIfKVStoreGroupExistUsing_exist_error___block_invoke_52_cold_2(unsigned __int8 **a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_258089000, a2, OS_LOG_TYPE_DEBUG, "exist %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_258089000, v0, v1, "extension_handle = %lld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to consume sandbox extension, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_completion___block_invoke_3_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to requestFile from masd, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_error___block_invoke_50_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to consume sandbox extension, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __80__ManagedAssetsClient_FileAsset__requestFile_isDirectory_mode_attributes_error___block_invoke_50_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to requestFile from masd, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__ManagedAssetsClient_FileAsset__commitFile_attributes_error___block_invoke_52_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v2, v3, "failed to delete, name=%@ error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_3_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v2, v3, "failed to queryFile from masd, error: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __66__ManagedAssetsClient_FileAsset__queryFile_attributes_completion___block_invoke_3_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(&dword_258089000, v2, v3, "entries: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke_60_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v1, v2, "failed to queryFile from masd, error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__ManagedAssetsClient_FileAsset__queryFile_attributes_error___block_invoke_60_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "entries: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__ManagedAssetsClient_FileAsset__diskUsage_attributes_usage_error___block_invoke_61_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_258089000, v2, v3, "fail to obtain disk usage for file %@, error = %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __53__ManagedAssetsClient_Debugging__getConnectedClients__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to get the connected clients via debugging interface, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__ManagedAssetsClient_Debugging__getDaemonProcessInfo__block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to get the process info via debugging interface, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__ManagedAssetsClient_Debugging__getProfileLastSwitchOutTS_error___block_invoke_9_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to get the profile switch out timestamp via debugging interface, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_Debugging__getProfileLastSwitchInTS_error___block_invoke_13_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to get the profile switch in timestamp via debugging interface, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isSameObserver:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "Client is trying to re-register the same observer %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAssetWithDescriptor:(void *)a1 UUID:completion:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_18() data];
  v4 = getMASHA256Hash(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12(&dword_258089000, v5, v6, "asset data hash:%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17(a1, a2);
  v4 = OUTLINED_FUNCTION_8_0();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9(&dword_258089000, v6, v7, "failed to get the proxy object via %@: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_256_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to request temp asset file before asset creation, error:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_256_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to write asset data with the returned asset file handle, error:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__ManagedAssetsClient_createAssetWithDescriptor_UUID_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)createAssetWithDescriptor:(void *)a1 UUID:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 data];
  v5 = getMASHA256Hash(v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15(&dword_258089000, v6, v7, "asset data hash:%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_262_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to request temp asset file before asset creation, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__ManagedAssetsClient_createAssetWithDescriptor_UUID_error___block_invoke_262_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to write asset data with the returned asset file handle, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAssetWithHandle:(void *)a1 UUID:assetData:assetAlgorithm:completion:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_18();
  v4 = getMASHA256Hash(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12(&dword_258089000, v5, v6, "asset data hash:%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_264_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __86__ManagedAssetsClient_updateAssetWithHandle_UUID_assetData_assetAlgorithm_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateAssetWithHandle:(void *)a1 UUID:(void *)a2 assetData:assetAlgorithm:error:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = getMASHA256Hash(a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15(&dword_258089000, v5, v6, "asset data hash:%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __74__ManagedAssetsClient_updateAssetHandle_withOptions_assetData_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateAssetHandle:(void *)a1 withOptions:(void *)a2 assetData:error:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = getMASHA256Hash(a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15(&dword_258089000, v5, v6, "asset data hash:%@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __68__ManagedAssetsClient_deleteAssetWithHandle_withOptions_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __53__ManagedAssetsClient_deleteAllAssetsWithCompletion___block_invoke_4_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v2, v3, "fail to delete all assets error:%@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllAssetsWithOptions:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__ManagedAssetsClient_deleteAllAssetsWithOptions_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __51__ManagedAssetsClient_deleteAllAssetsExcept_error___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__ManagedAssetsClient_deleteAssetsWithOptions_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__ManagedAssetsClient_deleteAllAssetsWithUUID_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllAssetsWithUUID:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __57__ManagedAssetsClient_queryAssetsWithOptions_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryAssetsWithOptions:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __42__ManagedAssetsClient_recoverRemoteAsset___block_invoke_278_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__ManagedAssetsClient_getAssetDataWithHandle_UUID_completion___block_invoke_3_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getAssetDataWithHandle:(void *)a1 UUID:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_258089000, log, OS_LOG_TYPE_DEBUG, "asset data hash:%@", buf, 0xCu);
}

void __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_9_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __66__ManagedAssetsClient_getAssetMetaDataWithHandle_UUID_completion___block_invoke_4_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_258089000, v2, OS_LOG_TYPE_DEBUG, "asset metadata: %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)getAssetMetaDataWithHandle:(uint64_t)a1 UUID:error:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_258089000, v2, OS_LOG_TYPE_DEBUG, "asset metadata: %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_8_0();
  v6 = NSStringFromSelector(v5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9(&dword_258089000, v7, v8, "failed to get the proxy object via %@: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __145__ManagedAssetsClient_fetchCoreRxLensData_recordUUID_accPayload_rxIdL_rxIdR_axisL_axisR_calRequiredL_calRequiredR_version_attributes_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __48__ManagedAssetsClient_testDaemon_results_error___block_invoke_289_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__ManagedAssetsClient_recoveryTaskWhenDaemonIsReady__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to re-register remote observer to managedassetsd through xpc, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recreateFileOrKVStoreObserverXPCWith:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4(&dword_258089000, v2, v3, "fails to register file/kvstore observers, error: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__ManagedAssetsClient_checkIfCloudZonesWithCompletionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "fail to fetch MA cloud asset zones, error:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ManagedAssetsClient_saveAVPSetupUserOption_error___block_invoke_307_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_258089000, v0, v1, "failed to perform saveAVPSetupUserOption, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end