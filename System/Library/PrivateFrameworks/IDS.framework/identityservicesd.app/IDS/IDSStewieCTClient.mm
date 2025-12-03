@interface IDSStewieCTClient
- (BOOL)forceRollKeys;
- (BOOL)forceRollSMSConfigWipeAll:(BOOL)all;
- (IDSStewieCTClient)initWithCoreTelephonyClient:(id)client queue:(id)queue;
- (IDSStewieCTClient)initWithQueue:(id)queue;
- (IDSStewieCTClientDelegate)delegate;
- (void)didUpdateSessionKeys:(id)keys withAnySuccess:(BOOL)success;
- (void)fetchSessionKeysUpdate;
- (void)fetchStewieEnabledWithCompletion:(id)completion;
- (void)fetchStewieSMSConfig;
- (void)notifyAboutStewieBlocked:(BOOL)blocked;
- (void)notifyStewieSMSConfigUpdated:(id)updated withError:(id)error forSPSEnv:(id)env;
- (void)satelliteMsgCfgChanged;
- (void)stewieSupportChanged;
- (void)transportKeysChanged;
@end

@implementation IDSStewieCTClient

- (IDSStewieCTClient)initWithCoreTelephonyClient:(id)client queue:(id)queue
{
  clientCopy = client;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IDSStewieCTClient;
  v9 = [(IDSStewieCTClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coreTelephonyClient, client);
    [(CoreTelephonyClient *)v10->_coreTelephonyClient setDelegate:v10];
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

- (IDSStewieCTClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[CoreTelephonyClient alloc] initWithQueue:queueCopy];
  v6 = [(IDSStewieCTClient *)self initWithCoreTelephonyClient:v5 queue:queueCopy];

  return v6;
}

- (void)transportKeysChanged
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "transportKeysChanged called - need to fetch session key updates from CT", v4, 2u);
  }

  [(IDSStewieCTClient *)self fetchSessionKeysUpdate];
}

- (void)stewieSupportChanged
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stewieSupportChanged called by CT.", buf, 2u);
  }

  queue = [(IDSStewieCTClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005FF610;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)satelliteMsgCfgChanged
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "satelliteMsgCfgChanged called - need to fetch new SMS config from CT", v4, 2u);
  }

  [(IDSStewieCTClient *)self fetchStewieSMSConfig];
}

- (void)fetchSessionKeysUpdate
{
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching session key updates from CT...", buf, 2u);
  }

  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005FF7CC;
  v6[3] = &unk_100BE2090;
  v6[4] = self;
  [coreTelephonyClient getTransportKeysToUpdateWithCompletion:v6];
}

- (void)didUpdateSessionKeys:(id)keys withAnySuccess:(BOOL)success
{
  successCopy = success;
  keysCopy = keys;
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didUpdateSessionKeys called - need to tell CT", buf, 2u);
  }

  if (CUTIsInternalInstall())
  {
    IMGetSPSEnvironmentName();
  }

  else
  {
    IMGetEnvironmentName();
  }
  v9 = ;
  v10 = v9;
  if (successCopy)
  {
    v30 = v9;
    coreTelephonyClient2 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = keysCopy;
    v12 = keysCopy;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [CTTransportSTK alloc];
          v19 = [v17 stk];
          index = [v17 index];
          keyEPKI = [v17 keyEPKI];
          v22 = [v18 initWithSTK:v19 forIdx:index epki:keyEPKI];

          [coreTelephonyClient2 addObject:v22];
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v14);
    }

    v10 = v30;
    v23 = [[CTTransportKeysReceipt alloc] initWith:coreTelephonyClient2 sps:v30];
    v24 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [coreTelephonyClient2 count];
      *buf = 134218242;
      v37 = v25;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending CTTransportKeysReceipt with %ld key stks, spsEnv: %@", buf, 0x16u);
    }

    coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
    v27 = [coreTelephonyClient setTransportKeysUpdated:1 with:v23];

    keysCopy = v31;
  }

  else
  {
    v23 = [[CTTransportKeysReceipt alloc] initWith:&__NSArray0__struct sps:v9];
    v28 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sending CTTransportKeysReceipt with 0 key stks, spsEnv: %@", buf, 0xCu);
    }

    coreTelephonyClient2 = [(IDSStewieCTClient *)self coreTelephonyClient];
    v27 = [coreTelephonyClient2 setTransportKeysUpdated:1 with:v23];
  }

  if (v27)
  {
    v29 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v27;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Confirmed updated session keys with error { confirmKeyError: %@ }", buf, 0xCu);
    }
  }
}

- (BOOL)forceRollKeys
{
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "forceRollKeys called. Telling CT", &v9, 2u);
  }

  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  forceRollAllTransportKeys = [coreTelephonyClient forceRollAllTransportKeys];

  v7 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = forceRollAllTransportKeys;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "forceRollAllTransportKeys finished { error : %@ }", &v9, 0xCu);
  }

  return forceRollAllTransportKeys == 0;
}

- (BOOL)forceRollSMSConfigWipeAll:(BOOL)all
{
  allCopy = all;
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "forceRollSMSConfig called. Telling CT", &v11, 2u);
  }

  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  v8 = [coreTelephonyClient reprovisionSatelliteMsg:allCopy];

  v9 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "forceRollSMSConfig finished { error : %@ }", &v11, 0xCu);
  }

  return v8 == 0;
}

- (void)notifyAboutStewieBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notifyAboutStewieBlocked called. Telling CT", v8, 2u);
  }

  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  [coreTelephonyClient setStewieBlocked:blockedCopy completion:&stru_100BE20B0];
}

- (void)fetchStewieEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching Stewie enablement status from CT...", buf, 2u);
  }

  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100600494;
  v9[3] = &unk_100BE20D8;
  v10 = completionCopy;
  v8 = completionCopy;
  [coreTelephonyClient getStewieSupportWithCompletion:v9];
}

- (void)fetchStewieSMSConfig
{
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching Parakeet messaging SMS config from CT...", buf, 2u);
  }

  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  v15 = 0;
  v6 = [coreTelephonyClient getSatelliteMsgCfgToUpdate:&v15];
  v7 = v15;

  v8 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Parakeet SMS config fetched from CT %@ with error %@", buf, 0x16u);
  }

  v9 = [IDSStewieSMSConfig alloc];
  v10 = [(IDSStewieSMSConfig *)v6 cfg];
  cfg_id = [(IDSStewieSMSConfig *)v6 cfg_id];
  v12 = [(IDSStewieSMSConfig *)v9 initWithConfig:v10 withID:cfg_id];

  if (v12 && !v7)
  {
    v13 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Forwarding SMS config: %@ to key manager", buf, 0xCu);
    }

    delegate = [(IDSStewieCTClient *)self delegate];
    [delegate stewieCTClient:self receivedStewieMessageConfigChanged:v12];
  }
}

- (void)notifyStewieSMSConfigUpdated:(id)updated withError:(id)error forSPSEnv:(id)env
{
  updatedCopy = updated;
  errorCopy = error;
  envCopy = env;
  queue = [(IDSStewieCTClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = updatedCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Parakeet messaging config update to CT for UUID %@ with Error %@", &v16, 0x16u);
  }

  v13 = [[CTSatelliteMessagingProvisioningReceipt alloc] initWithID:updatedCopy result:errorCopy sps:envCopy];
  coreTelephonyClient = [(IDSStewieCTClient *)self coreTelephonyClient];
  v15 = [coreTelephonyClient setSatelliteMsgCfgUpdated:v13];
}

- (IDSStewieCTClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end