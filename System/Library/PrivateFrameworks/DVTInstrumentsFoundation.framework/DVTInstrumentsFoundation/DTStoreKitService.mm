@interface DTStoreKitService
+ (id)_dataUsingCompatibilityTimeRateFrom:(id)from currentVersion:(int)version;
+ (void)_sendMessage:(id)message onConnection:(id)connection completion:(id)completion;
+ (void)registerCapabilities:(id)capabilities;
+ (void)removeConfigurationDataForBundleID:(id)d connection:(id)connection completion:(id)completion;
+ (void)syncConfigurationAssetData:(id)data fileName:(id)name forBundleID:(id)d connection:(id)connection completion:(id)completion;
+ (void)syncConfigurationData:(id)data forBundleID:(id)d connection:(id)connection completion:(id)completion;
- (BOOL)_handleBuyProductMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleChangeAutoRenewStatusMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleCompleteAskToBuyTransactionMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleDeleteAllTransactionsMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleDiscoverAppsMessage:(id)message error:(id *)error;
- (BOOL)_handleFetchTransactionsMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleGetConfigurationMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleObserveTransactionsMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleRemoveConfigurationMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleSendPurchaseIntentMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleSyncConfigurationAssetMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleSyncConfigurationMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_handleUpdateTransactionMessage:(id)message forBundleID:(id)d error:(id *)error;
- (BOOL)_processMessage:(id)message error:(id *)error;
- (DTStoreKitService)initWithChannel:(id)channel;
- (id)_descriptionForServiceCommand:(unint64_t)command;
- (id)_synchronousRemoteObjectProxy:(id *)proxy;
- (void)_disconnectServiceConnection;
- (void)_sendGenericSuccessResponseForMessage:(id)message;
- (void)messageReceived:(id)received;
- (void)transactionDeleted:(unint64_t)deleted forBundleID:(id)d;
- (void)transactionUpdated:(id)updated forBundleID:(id)d;
@end

@implementation DTStoreKitService

+ (void)registerCapabilities:(id)capabilities
{
  v8 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Registering service", &v6, 0xCu);
  }

  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.storekit" withVersion:8 forClass:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (DTStoreKitService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v20.receiver = self;
  v20.super_class = DTStoreKitService;
  v5 = [(DTXService *)&v20 initWithChannel:channelCopy];
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
    [channelCopy registerDisconnectHandler:v13];
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

+ (void)removeConfigurationDataForBundleID:(id)d connection:(id)connection completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  connectionCopy = connection;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = dCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Remove configuration called for %{public}@", &v14, 0x16u);
  }

  if ([connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"] <= 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[%{public}@] Unsupported device, cannot remove configuration", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v11 = [MEMORY[0x277D03668] messageWithObject:dCopy];
    [v11 setInteger:5 forMessageKey:@"serviceCommand"];
    [self _sendMessage:v11 onConnection:connectionCopy completion:completionCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)syncConfigurationData:(id)data forBundleID:(id)d connection:(id)connection completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  connectionCopy = connection;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v27 = 138543618;
    *&v27[4] = objc_opt_class();
    v28 = 2114;
    v29 = dCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Sync configuration called for %{public}@", v27, 0x16u);
  }

  if ([connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"] <= 0)
  {
    v25 = DTSKServiceErrorWithDescription(8, @"Cannot sync configuration", v14, v15, v16, v17, v18, v19, *v27);
    completionCopy[2](completionCopy, v25);
  }

  else if (dataCopy)
  {
    v20 = [connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"];
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

      v23 = [self _dataUsingCompatibilityTimeRateFrom:dataCopy currentVersion:v21];

      dataCopy = v23;
    }

    v24 = [MEMORY[0x277D03668] messageWithObject:dCopy];
    [v24 setInteger:6 forMessageKey:@"serviceCommand"];
    [v24 setData:dataCopy forMessageKey:@"configurationFile"];
    [self _sendMessage:v24 onConnection:connectionCopy completion:completionCopy];
  }

  else
  {
    dataCopy = DTSKServiceErrorWithDescription(2, @"Missing configuration file data", v14, v15, v16, v17, v18, v19, *v27);
    completionCopy[2](completionCopy, dataCopy);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)syncConfigurationAssetData:(id)data fileName:(id)name forBundleID:(id)d connection:(id)connection completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  connectionCopy = connection;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v28 = 138543618;
    *&v28[4] = objc_opt_class();
    v29 = 2114;
    v30 = dCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Sync configuration asset called for %{public}@", v28, 0x16u);
  }

  if ([connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.storekit"] > 7)
  {
    if (dataCopy)
    {
      if (nameCopy && [nameCopy length])
      {
        v24 = [MEMORY[0x277D03668] messageWithObject:dCopy];
        [v24 setInteger:13 forMessageKey:@"serviceCommand"];
        [v24 setData:dataCopy forMessageKey:@"configurationAsset"];
        [v24 setString:nameCopy forMessageKey:@"configurationAssetFileName"];
        [self _sendMessage:v24 onConnection:connectionCopy completion:completionCopy];

        goto LABEL_14;
      }

      v25 = @"Empty asset file name";
    }

    else
    {
      v25 = @"Missing configuration asset data";
    }

    v26 = DTSKServiceErrorWithDescription(7, v25, v17, v18, v19, v20, v21, v22, *v28);
    completionCopy[2](completionCopy, v26);

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v23 = objc_opt_class();
    *v28 = 138543874;
    *&v28[4] = v23;
    v29 = 2114;
    v30 = nameCopy;
    v31 = 2114;
    v32 = dCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[%{public}@] Will not sync StoreKit asset %{public}@ for %{public}@. Unsupported device.", v28, 0x20u);
  }

  completionCopy[2](completionCopy, 0);
LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)_sendMessage:(id)message onConnection:(id)connection completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v9 = [connection makeChannelWithIdentifier:@"com.apple.instruments.server.services.storekit"];
  v16 = v9;
  if (v9)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_247F96B04;
    v18[3] = &unk_278EF2460;
    v19 = v9;
    v20 = completionCopy;
    [v19 sendControlAsync:messageCopy replyHandler:v18];
  }

  else
  {
    v17 = DTSKServiceErrorWithDescription(4, @"DTStoreKitService is unavailable.", v10, v11, v12, v13, v14, v15, v18[0]);
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

- (void)messageReceived:(id)received
{
  v20 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = receivedCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Message received: %{public}@", buf, 0x16u);
  }

  if (*MEMORY[0x277D03698] != receivedCopy)
  {
    v13 = 0;
    v6 = [(DTStoreKitService *)self _processMessage:receivedCopy error:&v13];
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
        v17 = receivedCopy;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Error processing message %{public}@: %{public}@", buf, 0x20u);
      }

      v10 = [receivedCopy newReplyWithError:v8];
      channel = [(DTXService *)self channel];
      [channel sendMessage:v10 replyHandler:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)transactionDeleted:(unint64_t)deleted forBundleID:(id)d
{
  v7 = [MEMORY[0x277D03668] messageWithObject:d];
  [v7 setInteger:7 forMessageKey:@"serviceCommand"];
  [v7 setInteger:2 forMessageKey:@"action"];
  [v7 setInteger:deleted forMessageKey:@"transactionID"];
  channel = [(DTXService *)self channel];
  [channel sendMessageAsync:v7 replyHandler:0];
}

- (void)transactionUpdated:(id)updated forBundleID:(id)d
{
  v6 = MEMORY[0x277D03668];
  updatedCopy = updated;
  v9 = [v6 messageWithObject:d];
  [v9 setInteger:7 forMessageKey:@"serviceCommand"];
  [v9 setData:updatedCopy forMessageKey:@"transactionData"];

  channel = [(DTXService *)self channel];
  [channel sendMessageAsync:v9 replyHandler:0];
}

- (BOOL)_handleBuyProductMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_247F97110;
  v40 = sub_247F97120;
  v41 = 0;
  v16 = [messageCopy dataForMessageKey:@"purchaseConfiguration"];
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
    selfCopy = self;
    v33 = dCopy;
    [v18 buyProductWithConfiguration:v16 bundleID:v33 completion:&v28];
  }

  else
  {
    v19 = DTSKServiceErrorWithDescription(6, @"Missing purchase configuration data required to complete buy", v10, v11, v12, v13, v14, v15, v28);
    v20 = v37[5];
    v37[5] = v19;
  }

  if (error)
  {
    v21 = v37[5];
    if (v21)
    {
      *error = v21;
    }
  }

  newReply = [messageCopy newReply];
  v23 = v37[5];
  [newReply setInteger:v23 == 0 forMessageKey:@"success"];
  v24 = v37[5];
  if (v24)
  {
    localizedDescription = [v24 localizedDescription];
    [newReply setString:localizedDescription forMessageKey:@"response"];
  }

  channel = [(DTXService *)self channel];
  [channel sendControlAsync:newReply replyHandler:0];

  _Block_object_dispose(&v36, 8);
  return v23 == 0;
}

- (BOOL)_handleSendPurchaseIntentMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_247F97110;
  v34 = sub_247F97120;
  v35 = 0;
  v16 = [messageCopy stringForMessageKey:@"productID"];
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
    v27 = dCopy;
    [v18 sendPurchaseIntentForProductIdentifier:v26 bundleID:v27 completion:v25];
  }

  else
  {
    v19 = DTSKServiceErrorWithDescription(3, @"Missing product ID", v10, v11, v12, v13, v14, v15, v24);
    v20 = v31[5];
    v31[5] = v19;
  }

  v21 = v31[5];
  if (error && v21)
  {
    v22 = v21;
    *error = v21;
    v21 = v31[5];
  }

  if (!v21)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy];
  }

  _Block_object_dispose(&v30, 8);
  return v21 == 0;
}

- (BOOL)_handleChangeAutoRenewStatusMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F97110;
  v27 = sub_247F97120;
  v28 = 0;
  v10 = [messageCopy integerForMessageKey:@"response"];
  v11 = [messageCopy integerForMessageKey:@"transactionID"];
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
  v14 = dCopy;
  v19 = v14;
  [v13 changeAutoRenewStatus:v10 != 0 transactionID:v11 bundleID:v14 completion:v18];

  v15 = v24[5];
  if (error && v15)
  {
    v16 = v15;
    *error = v15;
    v15 = v24[5];
  }

  if (!v15)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy];
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

- (BOOL)_handleCompleteAskToBuyTransactionMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F97110;
  v27 = sub_247F97120;
  v28 = 0;
  v10 = [messageCopy integerForMessageKey:@"response"];
  v11 = [messageCopy integerForMessageKey:@"transactionID"];
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
  v14 = dCopy;
  v19 = v14;
  [v13 completeAskToBuyRequestWithResponse:v10 != 0 transactionID:v11 bundleID:v14 completion:v18];

  v15 = v24[5];
  if (error && v15)
  {
    v16 = v15;
    *error = v15;
    v15 = v24[5];
  }

  if (!v15)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy];
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

- (BOOL)_handleDeleteAllTransactionsMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
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
  selfCopy = self;
  v11 = dCopy;
  v20 = v11;
  [v10 deleteAllTransactionsForBundleID:v11 completion:&v15];

  v12 = v24[5];
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
    v12 = v24[5];
  }

  if (!v12)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy, v15, v16, v17, v18, selfCopy];
  }

  _Block_object_dispose(&v23, 8);
  return v12 == 0;
}

- (BOOL)_handleFetchTransactionsMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
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
  v11 = dCopy;
  v18 = v11;
  [v10 getTransactionDataForBundleID:v11 completion:v17];

  v12 = v29[5];
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
    v12 = v29[5];
  }

  if (!v12)
  {
    v14 = [messageCopy newReplyWithObject:v23[5]];
    channel = [(DTXService *)self channel];
    [channel sendControlAsync:v14 replyHandler:0];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 == 0;
}

- (BOOL)_handleRemoveConfigurationMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
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
  selfCopy = self;
  v11 = dCopy;
  v20 = v11;
  [v10 removeConfigurationForBundleID:v11 completion:&v15];

  v12 = v24[5];
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
    v12 = v24[5];
  }

  if (!v12)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy, v15, v16, v17, v18, selfCopy];
  }

  _Block_object_dispose(&v23, 8);
  return v12 == 0;
}

- (BOOL)_handleSyncConfigurationMessage:(id)message forBundleID:(id)d error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v16 = [messageCopy dataForMessageKey:@"configurationFile"];
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
    [v17 saveConfigurationData:v16 forBundleID:dCopy completion:v26];

    if (error)
    {
      *error = v29[5];
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
        v37 = dCopy;
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
        v37 = dCopy;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully saved configuration file for %{public}@", buf, 0x16u);
      }

      [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy];
    }

    _Block_object_dispose(&v28, 8);
  }

  else if (error)
  {
    DTSKServiceErrorWithDescription(2, @"Configuration data is required", v10, v11, v12, v13, v14, v15, v26[0]);
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_handleSyncConfigurationAssetMessage:(id)message forBundleID:(id)d error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v10 = [messageCopy dataForMessageKey:@"configurationAsset"];
  v17 = [messageCopy stringForMessageKey:@"configurationAssetFileName"];
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
    [v18 saveConfigurationAssetData:v10 fileName:v17 forBundleID:dCopy completion:v27];

    if (error)
    {
      *error = v30[5];
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
        v40 = dCopy;
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
        v40 = dCopy;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully saved configuration asset %{public}@ for %{public}@", buf, 0x20u);
      }

      [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy];
    }

    _Block_object_dispose(&v29, 8);
  }

  else if (error)
  {
    DTSKServiceErrorWithDescription(2, @"Configuration asset data is required", v11, v12, v13, v14, v15, v16, v27[0]);
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_handleGetConfigurationMessage:(id)message forBundleID:(id)d error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
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
  [v10 configurationDataForBundleID:dCopy completion:v33];

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
        v50 = dCopy;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Successfully received configuration file for %{public}@", buf, 0x16u);
      }

      v21 = [messageCopy newReplyWithObject:dCopy];
      [v21 setData:v36[5] forMessageKey:@"configurationFile"];
      channel = [(DTXService *)self channel];
      [channel sendControlAsync:v21 replyHandler:0];

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
    v50 = dCopy;
    v51 = 2114;
    v52 = v29;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get configuration file for %{public}@: %{public}@", buf, 0x20u);
  }

  v23 = 0;
  if (error)
  {
    *error = v42[5];
  }

LABEL_12:
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_handleUpdateTransactionMessage:(id)message forBundleID:(id)d error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_247F97110;
  v41 = sub_247F97120;
  v42 = 0;
  v10 = [messageCopy integerForMessageKey:@"action"];
  v11 = [messageCopy integerForMessageKey:@"transactionID"];
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
    v32 = dCopy;
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
  if (error && v27)
  {
    v28 = v27;
    *error = v27;
    v27 = v38[5];
  }

  if (!v27)
  {
    [(DTStoreKitService *)self _sendGenericSuccessResponseForMessage:messageCopy];
  }

  _Block_object_dispose(&v37, 8);

  v29 = *MEMORY[0x277D85DE8];
  return v27 == 0;
}

- (BOOL)_handleObserveTransactionsMessage:(id)message forBundleID:(id)d error:(id *)error
{
  messageCopy = message;
  dCopy = d;
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
  v11 = dCopy;
  v18 = v11;
  [v10 startObservingTransactionsForBundleID:v11 completion:v17];

  v12 = v29[5];
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
    v12 = v29[5];
  }

  if (!v12)
  {
    v14 = [messageCopy newReplyWithObject:v23[5]];
    channel = [(DTXService *)self channel];
    [channel sendControlAsync:v14 replyHandler:0];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 == 0;
}

- (BOOL)_handleDiscoverAppsMessage:(id)message error:(id *)error
{
  messageCopy = message;
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
  if (error && v8)
  {
    v9 = v8;
    *error = v8;
    v8 = v22[5];
  }

  if (!v8)
  {
    v10 = [messageCopy newReplyWithObject:v16[5]];
    channel = [(DTXService *)self channel];
    [channel sendControlAsync:v10 replyHandler:0];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v8 == 0;
}

- (BOOL)_processMessage:(id)message error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v8 = [messageCopy integerForMessageKey:@"serviceCommand"];
  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v10 = [messageCopy objectWithAllowedClasses:v9];

  if ([objc_opt_class() _commandRequiresBundleID:v8] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v27 = DTSKServiceErrorWithDescription(1, @"No bundleID specified for message: %@", v11, v12, v13, v14, v15, v16, messageCopy);
    if (v27)
    {
LABEL_8:
      v28 = 0;
      if (!error)
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
        v26 = [(DTStoreKitService *)self _handleChangeAutoRenewStatusMessage:messageCopy forBundleID:v10 error:&v44];
        break;
      case 2:
        v43 = 0;
        v25 = &v43;
        v26 = [(DTStoreKitService *)self _handleCompleteAskToBuyTransactionMessage:messageCopy forBundleID:v10 error:&v43];
        break;
      case 3:
        v42 = 0;
        v25 = &v42;
        v26 = [(DTStoreKitService *)self _handleDeleteAllTransactionsMessage:messageCopy forBundleID:v10 error:&v42];
        break;
      case 4:
        v41 = 0;
        v25 = &v41;
        v26 = [(DTStoreKitService *)self _handleFetchTransactionsMessage:messageCopy forBundleID:v10 error:&v41];
        break;
      case 5:
        v40 = 0;
        v25 = &v40;
        v26 = [(DTStoreKitService *)self _handleRemoveConfigurationMessage:messageCopy forBundleID:v10 error:&v40];
        break;
      case 6:
        v39 = 0;
        v25 = &v39;
        v26 = [(DTStoreKitService *)self _handleSyncConfigurationMessage:messageCopy forBundleID:v10 error:&v39];
        break;
      case 7:
        v37 = 0;
        v25 = &v37;
        v26 = [(DTStoreKitService *)self _handleUpdateTransactionMessage:messageCopy forBundleID:v10 error:&v37];
        break;
      case 8:
        v36 = 0;
        v25 = &v36;
        v26 = [(DTStoreKitService *)self _handleBuyProductMessage:messageCopy forBundleID:v10 error:&v36];
        break;
      case 9:
        v35 = 0;
        v25 = &v35;
        v26 = [(DTStoreKitService *)self _handleObserveTransactionsMessage:messageCopy forBundleID:v10 error:&v35];
        break;
      case 10:
        v34 = 0;
        v25 = &v34;
        v26 = [(DTStoreKitService *)self _handleDiscoverAppsMessage:messageCopy error:&v34];
        break;
      case 11:
        v38 = 0;
        v25 = &v38;
        v26 = [(DTStoreKitService *)self _handleGetConfigurationMessage:messageCopy forBundleID:v10 error:&v38];
        break;
      case 12:
        v33 = 0;
        v25 = &v33;
        v26 = [(DTStoreKitService *)self _handleSendPurchaseIntentMessage:messageCopy forBundleID:v10 error:&v33];
        break;
      case 13:
        v32 = 0;
        v25 = &v32;
        v26 = [(DTStoreKitService *)self _handleSyncConfigurationAssetMessage:messageCopy forBundleID:v10 error:&v32];
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
    if (error)
    {
LABEL_25:
      if (v27)
      {
        v29 = v27;
        *error = v27;
      }
    }
  }

LABEL_27:

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_sendGenericSuccessResponseForMessage:(id)message
{
  newReply = [message newReply];
  [newReply setInteger:1 forMessageKey:@"success"];
  channel = [(DTXService *)self channel];
  [channel sendControlAsync:newReply replyHandler:0];
}

- (id)_synchronousRemoteObjectProxy:(id *)proxy
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
  if (proxy)
  {
    v6 = v10[5];
    if (v6)
    {
      *proxy = v6;
    }
  }

  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)_descriptionForServiceCommand:(unint64_t)command
{
  if (command >= 0xE)
  {
    command = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown command %lu", command];
  }

  else
  {
    command = off_278EF2638[command];
  }

  return command;
}

+ (id)_dataUsingCompatibilityTimeRateFrom:(id)from currentVersion:(int)version
{
  fromCopy = from;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:fromCopy options:0 error:0];
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
        versionCopy = version;
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
            v14 = fromCopy;
          }

          v15 = v14;
        }

        else
        {
          v15 = fromCopy;
        }

        _Block_object_dispose(&v19, 8);
      }

      else
      {
        v15 = fromCopy;
      }
    }

    else
    {
      v15 = fromCopy;
    }
  }

  else
  {
    v15 = fromCopy;
  }

  return v15;
}

@end