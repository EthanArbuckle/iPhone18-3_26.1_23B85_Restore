@interface DTStoreKitService
+ (id)_dataUsingCompatibilityTimeRateFrom:(id)a3 currentVersion:(int)a4;
+ (void)_sendMessage:(id)a3 onConnection:(id)a4 completion:(id)a5;
+ (void)registerCapabilities:(id)a3;
+ (void)removeConfigurationDataForBundleID:(id)a3 connection:(id)a4 completion:(id)a5;
+ (void)syncConfigurationAssetData:(id)a3 fileName:(id)a4 forBundleID:(id)a5 connection:(id)a6 completion:(id)a7;
+ (void)syncConfigurationData:(id)a3 forBundleID:(id)a4 connection:(id)a5 completion:(id)a6;
- (BOOL)_handleBuyProductMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleChangeAutoRenewStatusMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleCompleteAskToBuyTransactionMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleDeleteAllTransactionsMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleDiscoverAppsMessage:(id)a3 error:(id *)a4;
- (BOOL)_handleFetchTransactionsMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleGetConfigurationMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleObserveTransactionsMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleRemoveConfigurationMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleSendPurchaseIntentMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleSyncConfigurationAssetMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleSyncConfigurationMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_handleUpdateTransactionMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5;
- (BOOL)_processMessage:(id)a3 error:(id *)a4;
- (DTStoreKitService)initWithChannel:(id)a3;
- (id)_descriptionForServiceCommand:(unint64_t)a3;
- (id)_synchronousRemoteObjectProxy:(id *)a3;
- (void)_disconnectServiceConnection;
- (void)_sendGenericSuccessResponseForMessage:(id)a3;
- (void)messageReceived:(id)a3;
- (void)transactionDeleted:(unint64_t)a3 forBundleID:(id)a4;
- (void)transactionUpdated:(id)a3 forBundleID:(id)a4;
@end

@implementation DTStoreKitService

+ (void)registerCapabilities:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Registering service", &v6, 0xCu);
  }

  [v4 publishCapability:@"com.apple.instruments.server.services.storekit" withVersion:8 forClass:a1];

  v5 = *MEMORY[0x277D85DE8];
}

- (DTStoreKitService)initWithChannel:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DTStoreKitService;
  v5 = [(DTXService *)&v20 initWithChannel:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.storekit.configuration.xpc" options:0];
    connectionToDaemon = v5->_connectionToDaemon;
    v5->_connectionToDaemon = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A4DD08];
    [(NSXPCConnection *)v5->_connectionToDaemon setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A3E498];
    [(NSXPCConnection *)v5->_connectionToDaemon setExportedInterface:v9];

    [(NSXPCConnection *)v5->_connectionToDaemon setExportedObject:v5];
    objc_initWeak(&location, v5);
    v10 = v5->_connectionToDaemon;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247F960DC;
    v17[3] = &unk_278EF1238;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v17];
    v11 = v5->_connectionToDaemon;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_247F96190;
    v15[3] = &unk_278EF1238;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:v15];
    [(NSXPCConnection *)v5->_connectionToDaemon resume];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247F96258;
    v13[3] = &unk_278EF1238;
    objc_copyWeak(&v14, &location);
    [v4 registerDisconnectHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_disconnectServiceConnection
{
  [(NSXPCConnection *)self->_connectionToDaemon invalidate];
  connectionToDaemon = self->_connectionToDaemon;
  self->_connectionToDaemon = 0;
}

+ (void)removeConfigurationDataForBundleID:(id)a3 connection:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Remove configuration called for %{public}@", &v14, 0x16u);
  }

  if ([v9 remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"] <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[%{public}@] Unsupported device, cannot remove configuration", &v14, 0xCu);
    }

    v10[2](v10, 0);
  }

  else
  {
    v11 = [MEMORY[0x277D03668] messageWithObject:v8];
    [v11 setInteger:5 forMessageKey:@"serviceCommand"];
    [a1 _sendMessage:v11 onConnection:v9 completion:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)syncConfigurationData:(id)a3 forBundleID:(id)a4 connection:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v27 = 138543618;
    *&v27[4] = objc_opt_class();
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Sync configuration called for %{public}@", v27, 0x16u);
  }

  if ([v12 remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"] <= 0)
  {
    v25 = DTSKServiceErrorWithDescription(8, @"Cannot sync configuration", v14, v15, v16, v17, v18, v19, *v27);
    v13[2](v13, v25);
  }

  else if (v10)
  {
    v20 = [v12 remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"];
    if (v20 <= 4)
    {
      v21 = v20;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *v27 = 138543362;
        *&v27[4] = v22;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%{public}@] Using compatibility time rate to sync configuration", v27, 0xCu);
      }

      v23 = [a1 _dataUsingCompatibilityTimeRateFrom:v10 currentVersion:v21];

      v10 = v23;
    }

    v24 = [MEMORY[0x277D03668] messageWithObject:v11];
    [v24 setInteger:6 forMessageKey:@"serviceCommand"];
    [v24 setData:v10 forMessageKey:@"configurationFile"];
    [a1 _sendMessage:v24 onConnection:v12 completion:v13];
  }

  else
  {
    v10 = DTSKServiceErrorWithDescription(2, @"Missing configuration file data", v14, v15, v16, v17, v18, v19, *v27);
    v13[2](v13, v10);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)syncConfigurationAssetData:(id)a3 fileName:(id)a4 forBundleID:(id)a5 connection:(id)a6 completion:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v28 = 138543618;
    *&v28[4] = objc_opt_class();
    v29 = 2114;
    v30 = v14;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Sync configuration asset called for %{public}@", v28, 0x16u);
  }

  if ([v15 remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"] > 7)
  {
    if (v12)
    {
      if (v13 && [v13 length])
      {
        v24 = [MEMORY[0x277D03668] messageWithObject:v14];
        [v24 setInteger:13 forMessageKey:@"serviceCommand"];
        [v24 setData:v12 forMessageKey:@"configurationAsset"];
        [v24 setString:v13 forMessageKey:@"configurationAssetFileName"];
        [a1 _sendMessage:v24 onConnection:v15 completion:v16];

        goto LABEL_14;
      }

      v25 = @"Empty asset file name";
    }

    else
    {
      v25 = @"Missing configuration asset data";
    }

    v26 = DTSKServiceErrorWithDescription(7, v25, v17, v18, v19, v20, v21, v22, *v28);
    v16[2](v16, v26);

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v23 = objc_opt_class();
    *v28 = 138543874;
    *&v28[4] = v23;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v14;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[%{public}@] Will not sync StoreKit asset %{public}@ for %{public}@. Unsupported device.", v28, 0x20u);
  }

  v16[2](v16, 0);
LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)_sendMessage:(id)a3 onConnection:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 makeChannelWithIdentifier:@"com.apple.instruments.server.services.storekit"];
  v16 = v9;
  if (v9)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_247F96B04;
    v18[3] = &unk_278EF2460;
    v19 = v9;
    v20 = v8;
    [v19 sendControlAsync:v7 replyHandler:v18];
  }

  else
  {
    v17 = DTSKServiceErrorWithDescription(4, @"DTStoreKitService is unavailable.", v10, v11, v12, v13, v14, v15, v18[0]);
    (*(v8 + 2))(v8, v17);
  }
}

- (void)messageReceived:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Message received: %{public}@", buf, 0x16u);
  }

  if (*MEMORY[0x277D03698] != v5)
  {
    v13 = 0;
    v6 = [(DTStoreKitService *)self _processMessage:v5 error:&v13];
    v7 = v13;
    v8 = v7;
    if (!v6)
    {
      if (!v7)
      {
        sub_24802D2B8(a2, self);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        *buf = 138543874;
        v15 = v9;
        v16 = 2114;
        v17 = v5;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Error processing message %{public}@: %{public}@", buf, 0x20u);
      }

      v10 = [v5 newReplyWithError:v8];
      v11 = [(DTXService *)self channel];
      [v11 sendMessage:v10 replyHandler:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)transactionDeleted:(unint64_t)a3 forBundleID:(id)a4
{
  v7 = [MEMORY[0x277D03668] messageWithObject:a4];
  [v7 setInteger:7 forMessageKey:@"serviceCommand"];
  [v7 setInteger:2 forMessageKey:@"action"];
  [v7 setInteger:a3 forMessageKey:@"transactionID"];
  v6 = [(DTXService *)self channel];
  [v6 sendMessageAsync:v7 replyHandler:0];
}

- (void)transactionUpdated:(id)a3 forBundleID:(id)a4
{
  v6 = MEMORY[0x277D03668];
  v7 = a3;
  v9 = [v6 messageWithObject:a4];
  [v9 setInteger:7 forMessageKey:@"serviceCommand"];
  [v9 setData:v7 forMessageKey:@"transactionData"];

  v8 = [(DTXService *)self channel];
  [v8 sendMessageAsync:v9 replyHandler:0];
}

- (BOOL)_handleBuyProductMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_247F97110;
  v40 = sub_247F97120;
  v41 = 0;
  v16 = [v8 dataForMessageKey:@"purchaseConfiguration"];
  if (v16)
  {
    v17 = (v37 + 5);
    obj = v37[5];
    v18 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
    objc_storeStrong(v17, obj);
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_247F97128;
    v31 = &unk_278EF2488;
    v34 = &v36;
    v32 = self;
    v33 = v9;
    [v18 buyProductWithConfiguration:v16 bundleID:v33 completion:&v28];
  }

  else
  {
    v19 = DTSKServiceErrorWithDescription(6, @"Missing purchase configuration data required to complete buy", v10, v11, v12, v13, v14, v15, v28);
    v20 = v37[5];
    v37[5] = v19;
  }

  if (a5)
  {
    v21 = v37[5];
    if (v21)
    {
      *a5 = v21;
    }
  }

  v22 = [v8 newReply];
  v23 = v37[5];
  [v22 setInteger:v23 == 0 forMessageKey:@"success"];
  v24 = v37[5];
  if (v24)
  {
    v25 = [v24 localizedDescription];
    [v22 setString:v25 forMessageKey:@"response"];
  }

  v26 = [(DTXService *)self channel];
  [v26 sendControlAsync:v22 replyHandler:0];

  _Block_object_dispose(&v36, 8);
  return v23 == 0;
}

- (BOOL)_handleSendPurchaseIntentMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_247F97110;
  v34 = sub_247F97120;
  v35 = 0;
  v16 = [v8 stringForMessageKey:@"productID"];
  if (v16)
  {
    v17 = (v31 + 5);
    obj = v31[5];
    v18 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
    objc_storeStrong(v17, obj);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_247F9747C;
    v25[3] = &unk_278EF24B0;
    v28 = &v30;
    v25[4] = self;
    v26 = v16;
    v27 = v9;
    [v18 sendPurchaseIntentForProductIdentifier:v26 bundleID:v27 completion:v25];
  }

  else
  {
    v19 = DTSKServiceErrorWithDescription(3, @"Missing product ID", v10, v11, v12, v13, v14, v15, v24);
    v20 = v31[5];
    v31[5] = v19;
  }

  v21 = v31[5];
  if (a5 && v21)
  {
    v22 = v21;
    *a5 = v21;
    v21 = v31[5];
  }

  if (!v21)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8];
  }

  _Block_object_dispose(&v30, 8);
  return v21 == 0;
}

- (BOOL)_handleChangeAutoRenewStatusMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F97110;
  v27 = sub_247F97120;
  v28 = 0;
  v10 = [v8 integerForMessageKey:@"response"];
  v11 = [v8 integerForMessageKey:@"transactionID"];
  v12 = (v24 + 5);
  obj = v24[5];
  v13 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(v12, obj);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_247F977C4;
  v18[3] = &unk_278EF24D8;
  v20 = &v23;
  v21 = v11;
  v18[4] = self;
  v14 = v9;
  v19 = v14;
  [v13 changeAutoRenewStatus:v10 != 0 transactionID:v11 bundleID:v14 completion:v18];

  v15 = v24[5];
  if (a5 && v15)
  {
    v16 = v15;
    *a5 = v15;
    v15 = v24[5];
  }

  if (!v15)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8];
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

- (BOOL)_handleCompleteAskToBuyTransactionMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F97110;
  v27 = sub_247F97120;
  v28 = 0;
  v10 = [v8 integerForMessageKey:@"response"];
  v11 = [v8 integerForMessageKey:@"transactionID"];
  v12 = (v24 + 5);
  obj = v24[5];
  v13 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(v12, obj);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_247F97B1C;
  v18[3] = &unk_278EF24D8;
  v20 = &v23;
  v21 = v11;
  v18[4] = self;
  v14 = v9;
  v19 = v14;
  [v13 completeAskToBuyRequestWithResponse:v10 != 0 transactionID:v11 bundleID:v14 completion:v18];

  v15 = v24[5];
  if (a5 && v15)
  {
    v16 = v15;
    *a5 = v15;
    v15 = v24[5];
  }

  if (!v15)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8];
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

- (BOOL)_handleDeleteAllTransactionsMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F97110;
  v27 = sub_247F97120;
  v28 = 0;
  obj = 0;
  v10 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(&v28, obj);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_247F97E20;
  v18 = &unk_278EF2500;
  v21 = &v23;
  v19 = self;
  v11 = v9;
  v20 = v11;
  [v10 deleteAllTransactionsForBundleID:v11 completion:&v15];

  v12 = v24[5];
  if (a5 && v12)
  {
    v13 = v12;
    *a5 = v12;
    v12 = v24[5];
  }

  if (!v12)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8, v15, v16, v17, v18, v19];
  }

  _Block_object_dispose(&v23, 8);
  return v12 == 0;
}

- (BOOL)_handleFetchTransactionsMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_247F97110;
  v32 = sub_247F97120;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_247F97110;
  v26 = sub_247F97120;
  v27 = 0;
  obj = 0;
  v10 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(&v33, obj);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_247F98190;
  v17[3] = &unk_278EF2528;
  v19 = &v28;
  v20 = &v22;
  v17[4] = self;
  v11 = v9;
  v18 = v11;
  [v10 getTransactionDataForBundleID:v11 completion:v17];

  v12 = v29[5];
  if (a5 && v12)
  {
    v13 = v12;
    *a5 = v12;
    v12 = v29[5];
  }

  if (!v12)
  {
    v14 = [v8 newReplyWithObject:v23[5]];
    v15 = [(DTXService *)self channel];
    [v15 sendControlAsync:v14 replyHandler:0];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 == 0;
}

- (BOOL)_handleRemoveConfigurationMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F97110;
  v27 = sub_247F97120;
  v28 = 0;
  obj = 0;
  v10 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(&v28, obj);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_247F984A0;
  v18 = &unk_278EF2500;
  v21 = &v23;
  v19 = self;
  v11 = v9;
  v20 = v11;
  [v10 removeConfigurationForBundleID:v11 completion:&v15];

  v12 = v24[5];
  if (a5 && v12)
  {
    v13 = v12;
    *a5 = v12;
    v12 = v24[5];
  }

  if (!v12)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8, v15, v16, v17, v18, v19];
  }

  _Block_object_dispose(&v23, 8);
  return v12 == 0;
}

- (BOOL)_handleSyncConfigurationMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v16 = [v8 dataForMessageKey:@"configurationFile"];
  if (v16)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_247F97110;
    v32 = sub_247F97120;
    v33 = 0;
    obj = 0;
    v17 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
    objc_storeStrong(&v33, obj);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_247F988F0;
    v26[3] = &unk_278EF2550;
    v26[4] = &v28;
    [v17 saveConfigurationData:v16 forBundleID:v9 completion:v26];

    if (a5)
    {
      *a5 = v29[5];
    }

    v18 = v29[5];
    v19 = v18 == 0;
    v20 = MEMORY[0x277D86220];
    if (v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = v29[5];
        *buf = 138543874;
        v35 = v21;
        v36 = 2114;
        v37 = v9;
        v38 = 2114;
        v39 = v22;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save configuration file for %{public}@: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v23 = objc_opt_class();
        *buf = 138543618;
        v35 = v23;
        v36 = 2114;
        v37 = v9;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully saved configuration file for %{public}@", buf, 0x16u);
      }

      [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8];
    }

    _Block_object_dispose(&v28, 8);
  }

  else if (a5)
  {
    DTSKServiceErrorWithDescription(2, @"Configuration data is required", v10, v11, v12, v13, v14, v15, v26[0]);
    *a5 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_handleSyncConfigurationAssetMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 dataForMessageKey:@"configurationAsset"];
  v17 = [v8 stringForMessageKey:@"configurationAssetFileName"];
  if (v10)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_247F97110;
    v33 = sub_247F97120;
    v34 = 0;
    obj = 0;
    v18 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
    objc_storeStrong(&v34, obj);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_247F98C34;
    v27[3] = &unk_278EF2550;
    v27[4] = &v29;
    [v18 saveConfigurationAssetData:v10 fileName:v17 forBundleID:v9 completion:v27];

    if (a5)
    {
      *a5 = v30[5];
    }

    v19 = v30[5];
    v20 = v19 == 0;
    v21 = MEMORY[0x277D86220];
    if (v19)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = v30[5];
        *buf = 138544130;
        v36 = v22;
        v37 = 2114;
        v38 = v17;
        v39 = 2114;
        v40 = v9;
        v41 = 2114;
        v42 = v23;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Failed to save configuration asset %{public}@ for %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_opt_class();
        *buf = 138543874;
        v36 = v24;
        v37 = 2114;
        v38 = v17;
        v39 = 2114;
        v40 = v9;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully saved configuration asset %{public}@ for %{public}@", buf, 0x20u);
      }

      [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8];
    }

    _Block_object_dispose(&v29, 8);
  }

  else if (a5)
  {
    DTSKServiceErrorWithDescription(2, @"Configuration asset data is required", v11, v12, v13, v14, v15, v16, v27[0]);
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_handleGetConfigurationMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_247F97110;
  v45 = sub_247F97120;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_247F97110;
  v39 = sub_247F97120;
  v40 = 0;
  obj = 0;
  v10 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(&v46, obj);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_247F9900C;
  v33[3] = &unk_278EF2578;
  v33[4] = &v41;
  v33[5] = &v35;
  [v10 configurationDataForBundleID:v9 completion:v33];

  v17 = v42[5];
  if (v36[5])
  {
    if (!v17)
    {
      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v48 = v20;
        v49 = 2114;
        v50 = v9;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully received configuration file for %{public}@", buf, 0x16u);
      }

      v21 = [v8 newReplyWithObject:v9];
      [v21 setData:v36[5] forMessageKey:@"configurationFile"];
      v22 = [(DTXService *)self channel];
      [v22 sendControlAsync:v21 replyHandler:0];

      v23 = 1;
      goto LABEL_12;
    }
  }

  else if (!v17)
  {
    v24 = DTSKServiceErrorWithDescription(2, @"Configuration data not found", v11, v12, v13, v14, v15, v16, v32);
    v25 = v42[5];
    v42[5] = v24;

    if (!v42[5])
    {
      __assert_rtn("[DTStoreKitService _handleGetConfigurationMessage:forBundleID:error:]", "DTStoreKitService.m", 561, "localError");
    }
  }

  v26 = MEMORY[0x277D86220];
  v27 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v28 = objc_opt_class();
    v29 = v42[5];
    *buf = 138543874;
    v48 = v28;
    v49 = 2114;
    v50 = v9;
    v51 = 2114;
    v52 = v29;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get configuration file for %{public}@: %{public}@", buf, 0x20u);
  }

  v23 = 0;
  if (a5)
  {
    *a5 = v42[5];
  }

LABEL_12:
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_handleUpdateTransactionMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_247F97110;
  v41 = sub_247F97120;
  v42 = 0;
  v10 = [v8 integerForMessageKey:@"action"];
  v11 = [v8 integerForMessageKey:@"transactionID"];
  if (v10)
  {
    v12 = v11;
    v13 = (v38 + 5);
    obj = v38[5];
    v14 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
    objc_storeStrong(v13, obj);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_247F99370;
    v31[3] = &unk_278EF25A0;
    v33 = &v37;
    v34 = v10;
    v31[4] = self;
    v35 = v12;
    v32 = v9;
    [v14 performAction:v10 transactionID:v12 bundleID:v32 completion:v31];
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      *buf = 138543618;
      v44 = v17;
      v45 = 2048;
      v46 = 0;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Unknown action provided: %ld", buf, 0x16u);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown action: %ld"];
    v25 = DTSKServiceErrorWithDescription(5, v18, v19, v20, v21, v22, v23, v24, 0);
    v26 = v38[5];
    v38[5] = v25;
  }

  v27 = v38[5];
  if (a5 && v27)
  {
    v28 = v27;
    *a5 = v27;
    v27 = v38[5];
  }

  if (!v27)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:v8];
  }

  _Block_object_dispose(&v37, 8);

  v29 = *MEMORY[0x277D85DE8];
  return v27 == 0;
}

- (BOOL)_handleObserveTransactionsMessage:(id)a3 forBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_247F97110;
  v32 = sub_247F97120;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_247F97110;
  v26 = sub_247F97120;
  v27 = 0;
  obj = 0;
  v10 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(&v33, obj);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_247F99710;
  v17[3] = &unk_278EF2528;
  v19 = &v28;
  v20 = &v22;
  v17[4] = self;
  v11 = v9;
  v18 = v11;
  [v10 startObservingTransactionsForBundleID:v11 completion:v17];

  v12 = v29[5];
  if (a5 && v12)
  {
    v13 = v12;
    *a5 = v12;
    v12 = v29[5];
  }

  if (!v12)
  {
    v14 = [v8 newReplyWithObject:v23[5]];
    v15 = [(DTXService *)self channel];
    [v15 sendControlAsync:v14 replyHandler:0];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 == 0;
}

- (BOOL)_handleDiscoverAppsMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_247F97110;
  v25 = sub_247F97120;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_247F97110;
  v19 = sub_247F97120;
  v20 = 0;
  obj = 0;
  v7 = [(DTStoreKitService *)self _synchronousRemoteObjectProxy:&obj];
  objc_storeStrong(&v26, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F99A7C;
  v13[3] = &unk_278EF25C8;
  v13[5] = &v21;
  v13[6] = &v15;
  v13[4] = self;
  [v7 testingAppsWithCompletion:v13];

  v8 = v22[5];
  if (a4 && v8)
  {
    v9 = v8;
    *a4 = v8;
    v8 = v22[5];
  }

  if (!v8)
  {
    v10 = [v6 newReplyWithObject:v16[5]];
    v11 = [(DTXService *)self channel];
    [v11 sendControlAsync:v10 replyHandler:0];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v8 == 0;
}

- (BOOL)_processMessage:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 integerForMessageKey:@"serviceCommand"];
  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v10 = [v7 objectWithAllowedClasses:v9];

  if ([objc_opt_class() _commandRequiresBundleID:v8] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = DTSKServiceErrorWithDescription(1, @"No bundleID specified for message: %@", v11, v12, v13, v14, v15, v16, v7);
    if (v27)
    {
LABEL_8:
      v28 = 0;
      if (!a4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    sub_24802D31C(a2, self);
LABEL_29:
    v28 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = [(DTStoreKitService *)self _descriptionForServiceCommand:v8];
      *buf = 138543618;
      v46 = v23;
      v47 = 2114;
      v48 = v24;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Service Command Received: %{public}@", buf, 0x16u);
    }

    switch(v8)
    {
      case 1:
        v44 = 0;
        v25 = &v44;
        v26 = [(DTStoreKitService *)self _handleChangeAutoRenewStatusMessage:v7 forBundleID:v10 error:&v44];
        break;
      case 2:
        v43 = 0;
        v25 = &v43;
        v26 = [(DTStoreKitService *)self _handleCompleteAskToBuyTransactionMessage:v7 forBundleID:v10 error:&v43];
        break;
      case 3:
        v42 = 0;
        v25 = &v42;
        v26 = [(DTStoreKitService *)self _handleDeleteAllTransactionsMessage:v7 forBundleID:v10 error:&v42];
        break;
      case 4:
        v41 = 0;
        v25 = &v41;
        v26 = [(DTStoreKitService *)self _handleFetchTransactionsMessage:v7 forBundleID:v10 error:&v41];
        break;
      case 5:
        v40 = 0;
        v25 = &v40;
        v26 = [(DTStoreKitService *)self _handleRemoveConfigurationMessage:v7 forBundleID:v10 error:&v40];
        break;
      case 6:
        v39 = 0;
        v25 = &v39;
        v26 = [(DTStoreKitService *)self _handleSyncConfigurationMessage:v7 forBundleID:v10 error:&v39];
        break;
      case 7:
        v37 = 0;
        v25 = &v37;
        v26 = [(DTStoreKitService *)self _handleUpdateTransactionMessage:v7 forBundleID:v10 error:&v37];
        break;
      case 8:
        v36 = 0;
        v25 = &v36;
        v26 = [(DTStoreKitService *)self _handleBuyProductMessage:v7 forBundleID:v10 error:&v36];
        break;
      case 9:
        v35 = 0;
        v25 = &v35;
        v26 = [(DTStoreKitService *)self _handleObserveTransactionsMessage:v7 forBundleID:v10 error:&v35];
        break;
      case 10:
        v34 = 0;
        v25 = &v34;
        v26 = [(DTStoreKitService *)self _handleDiscoverAppsMessage:v7 error:&v34];
        break;
      case 11:
        v38 = 0;
        v25 = &v38;
        v26 = [(DTStoreKitService *)self _handleGetConfigurationMessage:v7 forBundleID:v10 error:&v38];
        break;
      case 12:
        v33 = 0;
        v25 = &v33;
        v26 = [(DTStoreKitService *)self _handleSendPurchaseIntentMessage:v7 forBundleID:v10 error:&v33];
        break;
      case 13:
        v32 = 0;
        v25 = &v32;
        v26 = [(DTStoreKitService *)self _handleSyncConfigurationAssetMessage:v7 forBundleID:v10 error:&v32];
        break;
      default:
        v27 = DTSKServiceErrorWithDescription(0, @"Unknown StoreKit service command received: %ld", v17, v18, v19, v20, v21, v22, v8);
        if (v27)
        {
          goto LABEL_8;
        }

        sub_24802D390(a2, self);
        goto LABEL_29;
    }

    v28 = v26;
    v27 = *v25;
    if (a4)
    {
LABEL_25:
      if (v27)
      {
        v29 = v27;
        *a4 = v27;
      }
    }
  }

LABEL_27:

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_sendGenericSuccessResponseForMessage:(id)a3
{
  v5 = [a3 newReply];
  [v5 setInteger:1 forMessageKey:@"success"];
  v4 = [(DTXService *)self channel];
  [v4 sendControlAsync:v5 replyHandler:0];
}

- (id)_synchronousRemoteObjectProxy:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_247F97110;
  v13 = sub_247F97120;
  v14 = 0;
  connectionToDaemon = self->_connectionToDaemon;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247F9A150;
  v8[3] = &unk_278EF25F0;
  v8[4] = self;
  v8[5] = &v9;
  v5 = [(NSXPCConnection *)connectionToDaemon synchronousRemoteObjectProxyWithErrorHandler:v8];
  if (a3)
  {
    v6 = v10[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)_descriptionForServiceCommand:(unint64_t)a3
{
  if (a3 >= 0xE)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown command %lu", a3];
  }

  else
  {
    v4 = off_278EF2638[a3];
  }

  return v4;
}

+ (id)_dataUsingCompatibilityTimeRateFrom:(id)a3 currentVersion:(int)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
  v7 = [v6 mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 objectForKey:@"settings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKey:@"_compatibilityTimeRate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = sub_247F97110;
        v23 = sub_247F97120;
        v24 = 0;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = sub_247F9A540;
        v17[3] = &unk_278EF2618;
        v18 = a4;
        v17[4] = &v19;
        [v9 enumerateKeysAndObjectsUsingBlock:v17];
        if (v20[5])
        {
          v10 = [v9 objectForKeyedSubscript:?];
          v11 = [v8 mutableCopy];
          [v11 setObject:v10 forKey:@"_timeRate"];
          [v11 removeObjectForKey:@"_compatibilityTimeRate"];
          [v7 setObject:v11 forKey:@"settings"];
          v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:0];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = v5;
          }

          v15 = v14;
        }

        else
        {
          v15 = v5;
        }

        _Block_object_dispose(&v19, 8);
      }

      else
      {
        v15 = v5;
      }
    }

    else
    {
      v15 = v5;
    }
  }

  else
  {
    v15 = v5;
  }

  return v15;
}

@end