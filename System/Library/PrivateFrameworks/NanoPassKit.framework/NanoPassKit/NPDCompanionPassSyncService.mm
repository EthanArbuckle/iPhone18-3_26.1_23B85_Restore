@interface NPDCompanionPassSyncService
- (NPDCompanionPassSyncService)initWithCompanionPaymentPassDatabase:(id)a3;
- (NPDCompanionPassSyncServiceDataSource)dataSource;
- (NPDCompanionPassSyncServiceDelegate)delegate;
- (id)_passWithUniqueID:(id)a3;
- (id)companionCatalogToSendWithStateChange;
- (id)currentLibraryPassSyncStateWithReconciledState:(id)a3;
- (id)passSyncEngine:(id)a3 dataForPassWithUniqueID:(id)a4;
- (id)passSyncEngine:(id)a3 partialDataForPassWithUniqueID:(id)a4 baseManifest:(id)a5 outRemoteAssets:(id *)a6;
- (unint64_t)_associatedDataToRequestForPass:(id)a3;
- (unint64_t)settingsForPassWithUniqueID:(id)a3;
- (void)_companionPaymentPassCatalogChanged:(id)a3;
- (void)_removePassWithUniqueID:(id)a3 completion:(id)a4;
- (void)_savePassData:(id)a3 forSyncStateItem:(id)a4 baseManifestHashForPartialUpdate:(id)a5 remoteAssetsForPartialUpdate:(id)a6 completion:(id)a7;
- (void)handleIncomingCompanionCatalog:(id)a3 watchCatalog:(id)a4;
- (void)handleIncomingPassSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)handleRequestedAssociatedData:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)passSyncEngine:(id)a3 requestsAddPassData:(id)a4 forSyncStateItem:(id)a5 completion:(id)a6;
- (void)passSyncEngine:(id)a3 requestsRemovePassWithUniqueID:(id)a4 completion:(id)a5;
- (void)passSyncEngine:(id)a3 requestsUpdatePassData:(id)a4 forSyncStateItem:(id)a5 baseManifestHashForPartialUpdate:(id)a6 remoteAssetsForPartialUpdate:(id)a7 completion:(id)a8;
- (void)teardownSync;
@end

@implementation NPDCompanionPassSyncService

- (NPDCompanionPassSyncService)initWithCompanionPaymentPassDatabase:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = NPDCompanionPassSyncService;
  v6 = [(NPDCompanionPassSyncService *)&v15 initWithPassSyncEngineRole:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_companionPaymentPassDatabase, a3);
    v8 = [NPDSyncServiceLibraryDataSource alloc];
    v9 = +[PKPassLibrary sharedInstance];
    v10 = +[NPDSyncServiceLibraryDataSource nonPaymentPassesFilter];
    v11 = [(NPDSyncServiceLibraryDataSource *)v8 initWithPassLibrary:v9 passesFilter:v10];
    nonPaymentPassSyncServiceSource = v7->_nonPaymentPassSyncServiceSource;
    v7->_nonPaymentPassSyncServiceSource = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"_companionPaymentPassDatabaseChanged:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.Changed" object:v5];
    [v13 addObserver:v7 selector:"_companionPaymentPassCatalogChanged:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.CatalogChanged" object:v5];
  }

  return v7;
}

- (void)teardownSync
{
  v4.receiver = self;
  v4.super_class = NPDCompanionPassSyncService;
  [(NPDCompanionPassSyncService *)&v4 teardownSync];
  [(NPDCompanionPassSyncService *)self setDelegate:0];
  [(NPDCompanionPassSyncService *)self setDataSource:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (id)currentLibraryPassSyncStateWithReconciledState:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = NPKPairedOrPairingDevice();
  v7 = [(NPDCompanionPassSyncService *)self nonPaymentPassSyncServiceSource];
  v8 = [v7 passLibrarySyncStateForDevice:v6];

  v9 = objc_alloc_init(NSMutableSet);
  v10 = [(NPDCompanionPaymentPassDatabase *)self->_companionPaymentPassDatabase uniqueIDs];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100008DCC;
  v19 = &unk_100071130;
  v20 = self;
  v21 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:&v16];

  v12 = [NPKPassLibrarySyncState alloc];
  v13 = [v12 initWithPasses:v11 device:{v6, v16, v17, v18, v19, v20}];

  objc_autoreleasePoolPop(v5);
  v14 = [v8 mergeWithPassLibrarySyncState:v13];

  return v14;
}

- (unint64_t)settingsForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionPassSyncService *)self dataSource];
  v6 = [v5 companionPassSyncService:self settingsForPassWithUniqueID:v4];

  return v6;
}

- (void)handleIncomingPassSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v6 = a4;
  v7 = [(NPDCompanionPassSyncService *)self delegate];
  [v7 companionPassSyncService:self receivedUpdatedSettings:a3 forPassWithUniqueID:v6];
}

- (void)handleIncomingCompanionCatalog:(id)a3 watchCatalog:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: received incoming catalogs (companion %p watch %p", &v12, 0x16u);
    }
  }

  if (v7)
  {
    v11 = [(NPDCompanionPassSyncService *)self companionPaymentPassDatabase];
    [v11 setCatalog:v7 fromWatch:1];
  }
}

- (id)companionCatalogToSendWithStateChange
{
  v2 = [(NPDCompanionPassSyncService *)self nonPaymentPassSyncServiceSource];
  v3 = [v2 passesCatalog];

  return v3;
}

- (void)passSyncEngine:(id)a3 requestsAddPassData:(id)a4 forSyncStateItem:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = pk_Sync_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Sync_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 npkDescription];
      *buf = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: add pass data delegate method invoked\n\tPass data: %@\n\tSync state item: %@", buf, 0x16u);
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000092C8;
  v18[3] = &unk_100071158;
  v19 = v10;
  v20 = v11;
  v18[4] = self;
  v16 = v10;
  v17 = v11;
  [(NPDCompanionPassSyncService *)self _savePassData:v9 forSyncStateItem:v16 baseManifestHashForPartialUpdate:0 remoteAssetsForPartialUpdate:0 completion:v18];
}

- (void)passSyncEngine:(id)a3 requestsUpdatePassData:(id)a4 forSyncStateItem:(id)a5 baseManifestHashForPartialUpdate:(id)a6 remoteAssetsForPartialUpdate:(id)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = pk_Sync_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = pk_Sync_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v13 npkDescription];
      *buf = 138413058;
      v26 = v21;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: update pass data delegate method invoked\n\tPass data: %@\n\tSync state item: %@\n\tBase manifest hash for partial update: %@\n\tRemote assets for partial update: %@", buf, 0x2Au);
    }
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000095D8;
  v23[3] = &unk_100071180;
  v24 = v17;
  v22 = v17;
  [(NPDCompanionPassSyncService *)self _savePassData:v13 forSyncStateItem:v14 baseManifestHashForPartialUpdate:v15 remoteAssetsForPartialUpdate:v16 completion:v23];
}

- (void)passSyncEngine:(id)a3 requestsRemovePassWithUniqueID:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = pk_Sync_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Sync_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: remove pass delegate method invoked\n\tUnique ID: %@", &v12, 0xCu);
    }
  }

  [(NPDCompanionPassSyncService *)self _removePassWithUniqueID:v7 completion:v8];
}

- (id)passSyncEngine:(id)a3 partialDataForPassWithUniqueID:(id)a4 baseManifest:(id)a5 outRemoteAssets:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (NPKIsPairedDeviceGraceOrLater())
  {
    v11 = [(NPDCompanionPassSyncService *)self _passWithUniqueID:v9];
    if (v10)
    {
      v12 = NPKPartialPassDataWithBaseManifest();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = pk_Sync_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Sync_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v12 npkDescription];
      v17 = v16;
      if (a6)
      {
        v18 = *a6;
      }

      else
      {
        v18 = 0;
      }

      v20 = 138413058;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: partial pass data data source method invoked\n\tUnique ID: %@\n\tmanifest: %@\n\tReturning archive data: %@\n\tRemote assets: %@", &v20, 0x2Au);
    }
  }

  return v12;
}

- (id)passSyncEngine:(id)a3 dataForPassWithUniqueID:(id)a4
{
  v5 = a4;
  v6 = [(NPDCompanionPassSyncService *)self _passWithUniqueID:v5];
  v7 = [v6 archiveData];
  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 npkDescription];
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: full pass data data source method invoked\n\tUnique ID: %@\n\tReturning archive data: %@", &v13, 0x16u);
    }
  }

  return v7;
}

- (void)handleRequestedAssociatedData:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v6 = a4;
  if ((a3 & 8) != 0)
  {
    [(NPDCompanionPassSyncService *)self handleSettingsChanged:[(NPDCompanionPassSyncService *)self settingsForPassWithUniqueID:v6] forPassWithUniqueID:v6];
    a3 &= ~8uLL;
  }

  if (a3)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = NSStringFromNPKAssociatedPassData();
        v11 = 138412546;
        v12 = v10;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: we can't handle requested data:%@ for passWithUniqueID:%@", &v11, 0x16u);
      }
    }
  }
}

- (unint64_t)_associatedDataToRequestForPass:(id)a3
{
  v3 = a3;
  v4 = [v3 secureElementPass];
  if ([v4 isStoredValuePass])
  {
    if ([v4 isTransitPass])
    {
      v5 = 7;
    }

    else
    {
      v5 = 5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | [v4 isAccessPass];
  if (!v4 && NPKIsValidVASPass())
  {
    v6 |= 8uLL;
  }

  return v6;
}

- (id)_passWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionPaymentPassDatabase *)self->_companionPaymentPassDatabase paymentPassWithUniqueID:v4];
  if (!v5)
  {
    v6 = [(NPDCompanionPassSyncService *)self nonPaymentPassSyncServiceSource];
    v5 = [v6 passWithUniqueID:v4];
  }

  return v5;
}

- (void)_companionPaymentPassCatalogChanged:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CatalogFromWatch"];
  v6 = [v5 BOOLValue];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = [v10 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"Catalog"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NPDCompanionPassSyncService *)self handleCatalogChangeWithCompanionCatalog:0 watchCatalog:v9];
    }

    v7 = v10;
  }
}

- (void)_savePassData:(id)a3 forSyncStateItem:(id)a4 baseManifestHashForPartialUpdate:(id)a5 remoteAssetsForPartialUpdate:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v44 = a6;
  v15 = a7;
  v16 = [NPKOSTransaction transactionWithName:@"Save pass data for sync"];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10000A324;
  v55[3] = &unk_100071158;
  v17 = v15;
  v57 = v17;
  v55[4] = self;
  v18 = v16;
  v56 = v18;
  v19 = objc_retainBlock(v55);
  v42 = v12;
  v43 = v13;
  if (v14)
  {
    v20 = [v13 uniqueID];
    v21 = [(NPDCompanionPassSyncService *)self _passWithUniqueID:v20];

    v22 = NPKManifestHashForPass();
    if (![v22 isEqual:v14])
    {
      v24 = 0;
LABEL_12:
      v29 = pk_Sync_log();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v31 = pk_Sync_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v43 uniqueID];
          *buf = 138413314;
          v60 = v32;
          v61 = 2112;
          v62 = v14;
          v63 = 2112;
          v64 = v22;
          v65 = 2112;
          v66 = v44;
          v67 = 2112;
          v68 = v24;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Warning: Unable to construct pass from partial update\n\tunique ID: %@\n\tincoming base manifest hash: %@\n\tour base manifest hash: %@\n\tremote assets: %@\n\terror: %@", buf, 0x34u);
        }
      }

      v23 = 0;
      v27 = 1;
      goto LABEL_24;
    }

    v54[1] = 0;
    v23 = NPKUpdatedPassWithPartialPassData();
    v24 = 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_23:
    v27 = 0;
LABEL_24:

    goto LABEL_28;
  }

  v54[0] = 0;
  v21 = [[PKSerializedDataAccessor alloc] initWithData:v12 error:v54];
  v25 = v54[0];
  v24 = v25;
  if (!v21 || v25)
  {
    if (v25)
    {
      v33 = pk_Sync_log();
      v27 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        v22 = pk_Sync_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v60 = v21;
          v61 = 2112;
          v62 = v24;
          v28 = "Error: Error creating data accessor (%@). Error: %@";
          goto LABEL_21;
        }

LABEL_22:
        v23 = 0;
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v23 = 0;
  }

  else
  {
    v53 = 0;
    v23 = [PKPass createWithFileDataAccessor:v21 validationOptions:2 warnings:0 error:&v53];
    v24 = v53;
    if (!v23)
    {
      v26 = pk_Sync_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        v22 = pk_Sync_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v60 = v42;
          v61 = 2112;
          v62 = v24;
          v28 = "Error: Unable to create a pass from this pass data! %@. Error: %@";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

LABEL_25:
      v23 = 0;
      goto LABEL_28;
    }
  }

  v27 = 0;
LABEL_28:

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    companionPaymentPassDatabase = self->_companionPaymentPassDatabase;
    v35 = [v23 paymentPass];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10000A478;
    v49[3] = &unk_1000711D0;
    v50 = v23;
    v51 = v19;
    v52 = v27;
    [(NPDCompanionPaymentPassDatabase *)companionPaymentPassDatabase savePaymentPass:v35 requireExisting:0 requireNewer:0 completion:v49];

    v36 = v43;
  }

  else
  {
    v36 = v43;
    if (v23)
    {
      v37 = [(NPDCompanionPassSyncService *)self nonPaymentPassSyncServiceSource];
      v58 = v23;
      v38 = [NSArray arrayWithObjects:&v58 count:1];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10000A594;
      v45[3] = &unk_1000711F8;
      v46 = v23;
      v47 = v19;
      v48 = v27;
      [v37 addPasses:v38 withCompletionHandler:v45];
    }

    else
    {
      v39 = pk_Sync_log();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (v40)
      {
        v41 = pk_Sync_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v60 = v24;
          v61 = 2112;
          v62 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Warning: Companion pass sync service: Unable to initialize PKPass with provided data\n\tError: %@\n\tSync state item: %@", buf, 0x16u);
        }
      }

      (v19[2])(v19, 0, v27, 0);
    }
  }
}

- (void)_removePassWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionPassSyncService *)self nonPaymentPassSyncServiceSource];
  v9 = [v8 passWithUniqueID:v6];
  v10 = v9;
  if (v9 && [v9 passType] != 1)
  {
    v17 = pk_Sync_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Sync_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Companion pass sync service: Removing non-payment pass from companion library\n\tUnique ID: %@", buf, 0xCu);
      }
    }

    [v8 removePassWithUniqueID:v6 diagnosticReason:@"Delete request received from watch"];
  }

  else
  {
    v11 = [(NPDCompanionPaymentPassDatabase *)self->_companionPaymentPassDatabase uniqueIDs];
    v12 = [v11 containsObject:v6];

    if (v12)
    {
      companionPaymentPassDatabase = self->_companionPaymentPassDatabase;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000A920;
      v20[3] = &unk_100071220;
      v21 = v6;
      v22 = self;
      v23 = v7;
      [(NPDCompanionPaymentPassDatabase *)companionPaymentPassDatabase removePaymentPassWithUniqueID:v21 completion:v20];

      goto LABEL_16;
    }

    v14 = pk_Sync_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_Sync_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass sync service: Pass does not exist in either database; reporting success\n\tunique ID: %@", buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 1);
  }

LABEL_16:
}

- (NPDCompanionPassSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NPDCompanionPassSyncServiceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end