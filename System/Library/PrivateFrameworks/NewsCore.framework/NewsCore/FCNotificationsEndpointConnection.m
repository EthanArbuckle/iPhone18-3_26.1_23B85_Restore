@interface FCNotificationsEndpointConnection
- (FCNotificationsEndpointConnection)initWithBaseURLString:(id)a3;
- (FCNotificationsEndpointConnection)initWithConfigurationManager:(id)a3 bundleSubscriptionManager:(id)a4;
- (FCNotificationsEndpointConnection)initWithEndpointConnection:(id)a3 configurationManager:(id)a4 bundleSubscriptionManager:(id)a5;
- (id)_marketingSubscriptionRequestWithType:(int)a3 action:(int)a4 dsid:(id)a5;
- (id)_notificationDataInDropbox;
- (id)_pushNotifySubscriptionRequestWithTopicIDs:(id)a3 fromChannelID:(id)a4 withTopicGroupingID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9;
- (int)_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:(unint64_t)a3;
- (void)_sendNotificationsSubscriptionRequest:(id)a3 pathComponent:(id)a4 callbackQueue:(id)a5 completion:(id)a6;
- (void)_updateNotificationDropboxDataWithBaseURL:(id)a3 notificationUserID:(id)a4 deviceToken:(id)a5 storefrontID:(id)a6 deviceDigestMode:(int)a7;
- (void)configurationManager:(id)a3 configurationDidChange:(id)a4;
- (void)refreshNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9 callbackQueue:(id)a10 completion:(id)a11;
- (void)subscribeNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9 callbackQueue:(id)a10 completion:(id)a11;
- (void)unsubscribeNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9 callbackQueue:(id)a10 completion:(id)a11;
- (void)updateBaseURL:(id)a3;
@end

@implementation FCNotificationsEndpointConnection

- (FCNotificationsEndpointConnection)initWithConfigurationManager:(id)a3 bundleSubscriptionManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FCEndpointConnection);
  v9 = [(FCNotificationsEndpointConnection *)self initWithEndpointConnection:v8 configurationManager:v7 bundleSubscriptionManager:v6];

  return v9;
}

- (FCNotificationsEndpointConnection)initWithEndpointConnection:(id)a3 configurationManager:(id)a4 bundleSubscriptionManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = FCNotificationsEndpointConnection;
  v12 = [(FCNotificationsEndpointConnection *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointConnection, a3);
    objc_storeStrong(&v13->_configurationManager, a4);
    objc_storeStrong(&v13->_bundleSubscriptionManager, a5);
    v14 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v13->_serialQueue;
    v13->_serialQueue = v14;

    v16 = NFGeneralDeviceString();
    deviceType = v13->_deviceType;
    v13->_deviceType = v16;

    v18 = NFDeviceOSVersion();
    deviceOSVersion = v13->_deviceOSVersion;
    v13->_deviceOSVersion = v18;

    v20 = [FCFileCoordinatedNotificationDropbox alloc];
    v21 = FCURLForNotificationDropbox();
    v22 = [(FCFileCoordinatedNotificationDropbox *)v20 initWithFileURL:v21];
    fileCoordinatedNotificationDropbox = v13->_fileCoordinatedNotificationDropbox;
    v13->_fileCoordinatedNotificationDropbox = v22;

    [v10 addObserver:v13];
    v24 = [(FCNotificationsEndpointConnection *)v13 serialQueue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke;
    v26[3] = &unk_1E7C3BDC0;
    v27 = v10;
    v28 = v13;
    [v24 enqueueBlock:v26];
  }

  return v13;
}

void __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke_2;
  v6[3] = &unk_1E7C3B248;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 fetchConfigurationIfNeededWithCompletion:v6];
}

void __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch endpoint configuration with error: %{public}@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) updateBaseURL:v5];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (FCNotificationsEndpointConnection)initWithBaseURLString:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FCNotificationsEndpointConnection;
  v5 = [(FCNotificationsEndpointConnection *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(FCEndpointConnection);
    endpointConnection = v5->_endpointConnection;
    v5->_endpointConnection = v6;

    v8 = NFGeneralDeviceString();
    deviceType = v5->_deviceType;
    v5->_deviceType = v8;

    v10 = NFDeviceOSVersion();
    deviceOSVersion = v5->_deviceOSVersion;
    v5->_deviceOSVersion = v10;

    v12 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v12;

    v14 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    [(FCNotificationsEndpointConnection *)v5 setBaseURL:v14];
  }

  return v5;
}

void __129__FCNotificationsEndpointConnection_registerDeviceWithUserID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to register device token with error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __131__FCNotificationsEndpointConnection_unregisterDeviceWithUserID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to unregister device token with error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __162__FCNotificationsEndpointConnection_subscribeNotificationsForChannelIDs_paidChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to subscribe notifications for channels error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __149__FCNotificationsEndpointConnection_unsubscribeNotificationsForChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to unsubscribe notifications for channels with error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __160__FCNotificationsEndpointConnection_refreshNotificationsForChannelIDs_paidChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to refresh notifications for channels with error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)subscribeNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9 callbackQueue:(id)a10 completion:(id)a11
{
  v45 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  if (![v17 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"topicIDs should include some values"];
    *buf = 136315906;
    v38 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v39 = 2080;
    v40 = "FCNotificationsEndpointConnection.m";
    v41 = 1024;
    v42 = 337;
    v43 = 2114;
    v44 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else if (v19)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v38 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v39 = 2080;
    v40 = "FCNotificationsEndpointConnection.m";
    v41 = 1024;
    v42 = 338;
    v43 = 2114;
    v44 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v38 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v39 = 2080;
    v40 = "FCNotificationsEndpointConnection.m";
    v41 = 1024;
    v42 = 339;
    v43 = 2114;
    v44 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v21)
    {
      goto LABEL_11;
    }
  }

  else if (v21)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v38 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v39 = 2080;
    v40 = "FCNotificationsEndpointConnection.m";
    v41 = 1024;
    v42 = 340;
    v43 = 2114;
    v44 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v38 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v39 = 2080;
    v40 = "FCNotificationsEndpointConnection.m";
    v41 = 1024;
    v42 = 341;
    v43 = 2114;
    v44 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v25 = [v17 count];
  if (v22 && v21 && v20 && v19 && v25)
  {
    LODWORD(v34) = a9;
    v26 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:v17 fromChannelID:v19 withTopicGroupingID:v18 userID:v20 deviceToken:v21 storefrontID:v22 deviceDigestMode:v34];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __179__FCNotificationsEndpointConnection_subscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v35[3] = &unk_1E7C42598;
    v36 = v24;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v26 pathComponent:@"pushnotify/subscribe" callbackQueue:v23 completion:v35];
  }

  else
  {
    v27 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_ERROR, "failed to submit request for subscribe notifications, invalid parameters", buf, 2u);
    }

    (*(v24 + 2))(v24, 0, 0);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __179__FCNotificationsEndpointConnection_subscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to subscribe notifications for topic error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9 callbackQueue:(id)a10 completion:(id)a11
{
  v43 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v36 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v37 = 2080;
    v38 = "FCNotificationsEndpointConnection.m";
    v39 = 1024;
    v40 = 380;
    v41 = 2114;
    v42 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v20)
    {
      goto LABEL_6;
    }
  }

  else if (v20)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v36 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v37 = 2080;
    v38 = "FCNotificationsEndpointConnection.m";
    v39 = 1024;
    v40 = 381;
    v41 = 2114;
    v42 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v36 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v37 = 2080;
    v38 = "FCNotificationsEndpointConnection.m";
    v39 = 1024;
    v40 = 382;
    v41 = 2114;
    v42 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v22)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
      *buf = 136315906;
      v36 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
      v37 = 2080;
      v38 = "FCNotificationsEndpointConnection.m";
      v39 = 1024;
      v40 = 383;
      v41 = 2114;
      v42 = v31;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_18;
  }

  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v19 && v20 && v21)
  {
    LODWORD(v32) = a9;
    v25 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:v17 fromChannelID:v19 withTopicGroupingID:v18 userID:v20 deviceToken:v21 storefrontID:v22 deviceDigestMode:v32];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __181__FCNotificationsEndpointConnection_unsubscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v33[3] = &unk_1E7C42598;
    v34 = v24;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v25 pathComponent:@"pushnotify/unsubscribe" callbackQueue:v23 completion:v33];

    goto LABEL_21;
  }

LABEL_18:
  v29 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_ERROR, "failed to submit request for unsubscribe notifications, invalid parameters", buf, 2u);
  }

  (*(v24 + 2))(v24, 0, 0);
LABEL_21:

  v30 = *MEMORY[0x1E69E9840];
}

void __181__FCNotificationsEndpointConnection_unsubscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to unsubscribe notifications for topic error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)refreshNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9 callbackQueue:(id)a10 completion:(id)a11
{
  v42 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  if (!v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v35 = "[FCNotificationsEndpointConnection refreshNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v36 = 2080;
    v37 = "FCNotificationsEndpointConnection.m";
    v38 = 1024;
    v39 = 424;
    v40 = 2114;
    v41 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v21)
    {
      goto LABEL_6;
    }
  }

  else if (v21)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v35 = "[FCNotificationsEndpointConnection refreshNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v36 = 2080;
    v37 = "FCNotificationsEndpointConnection.m";
    v38 = 1024;
    v39 = 425;
    v40 = 2114;
    v41 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (v22)
  {
    if (v20 && v21)
    {
      LODWORD(v31) = a9;
      v25 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:v17 fromChannelID:v19 withTopicGroupingID:v18 userID:v20 deviceToken:v21 storefrontID:v22 deviceDigestMode:v31];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __177__FCNotificationsEndpointConnection_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
      v32[3] = &unk_1E7C42598;
      v33 = v24;
      [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v25 pathComponent:@"pushnotify/updatetoken" callbackQueue:v23 completion:v32];

      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v35 = "[FCNotificationsEndpointConnection refreshNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v36 = 2080;
    v37 = "FCNotificationsEndpointConnection.m";
    v38 = 1024;
    v39 = 426;
    v40 = 2114;
    v41 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v26 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_ERROR, "failed to submit refresh request for subscribe notifications, invalid parameters", buf, 2u);
  }

  (*(v24 + 2))(v24, 0, 0);
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
}

void __177__FCNotificationsEndpointConnection_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to refresh notifications for topics with error: %{public}@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) baseURL];

  if (v4)
  {
    v5 = [*(a1 + 32) baseURL];
    v6 = [v5 URLByAppendingPathComponent:@"marketingNotification/subscription"];

    v7 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_INFO, "ModifyMarketingSubscription url: %@ request: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) endpointConnection];
    v10 = [*(a1 + 40) data];
    v11 = *MEMORY[0x1E695ABC0];
    v12 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke_34;
    v18[3] = &unk_1E7C3BD48;
    v19 = v6;
    v20 = v3;
    v21 = *(a1 + 56);
    v13 = v6;
    LODWORD(v14) = v11;
    [v9 performHTTPRequestWithURL:v13 method:@"POST" data:v10 contentType:@"application/x-protobuf" priority:1 requiresMescalSigning:v12 callbackQueue:v14 completion:v18];
  }

  else
  {
    v3[2](v3);
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke_34(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_INFO, "ModifyMarketingSubscription response: %@ error: %@", &v15, 0x16u);
  }

  if (v8)
  {
    v11 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], a1[4]);
    (*(a1[5] + 16))();
    v12 = a1[6];
    if (v12)
    {
      (*(v12 + 16))(v12, v11 == 0, v11);
    }
  }

  else
  {
    (*(a1[5] + 16))();
    v13 = a1[6];
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_marketingSubscriptionRequestWithType:(int)a3 action:(int)a4 dsid:(id)a5
{
  v8 = MEMORY[0x1E69B6EA0];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  v11 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:0 deviceDigestMode:0];
  [v10 setDeviceInfo:v11];
  [v10 setDsid:v9];

  if (a4 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4 == 1;
  }

  [v10 setSubscriptionAction:v12];
  [v10 setSubscriptionType:a3 != 0];

  return v10;
}

- (void)_sendNotificationsSubscriptionRequest:(id)a3 pathComponent:(id)a4 callbackQueue:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionRequest"];
      *buf = 136315906;
      v23 = "[FCNotificationsEndpointConnection _sendNotificationsSubscriptionRequest:pathComponent:callbackQueue:completion:]";
      v24 = 2080;
      v25 = "FCNotificationsEndpointConnection.m";
      v26 = 1024;
      v27 = 522;
      v28 = 2114;
      v29 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    else if (!v13)
    {
      goto LABEL_6;
    }

    (*(v13 + 2))(v13, 0, 0);
    goto LABEL_6;
  }

  v14 = [(FCNotificationsEndpointConnection *)self serialQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke;
  v17[3] = &unk_1E7C425E8;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = v13;
  [v14 enqueueBlock:v17];

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
}

void __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) baseURL];

  if (v4)
  {
    v5 = [*(a1 + 32) baseURL];
    v6 = [v5 URLByAppendingPathComponent:*(a1 + 40)];

    v7 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_INFO, "PushNotify url: %@ request: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) endpointConnection];
    v10 = [*(a1 + 48) data];
    v11 = *MEMORY[0x1E695ABC0];
    v12 = *(a1 + 56);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke_38;
    v18[3] = &unk_1E7C3BD48;
    v19 = v6;
    v20 = v3;
    v21 = *(a1 + 64);
    v13 = v6;
    LODWORD(v14) = v11;
    [v9 performHTTPRequestWithURL:v13 method:@"POST" data:v10 contentType:@"application/x-protobuf" priority:1 requiresMescalSigning:v12 callbackQueue:v14 completion:v18];
  }

  else
  {
    v3[2](v3);
    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke_38(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_INFO, "PushNotify response: %@ error: %@", &v15, 0x16u);
  }

  if (v8)
  {
    v11 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], a1[4]);
    (*(a1[5] + 16))();
    v12 = a1[6];
    if (v12)
    {
      (*(v12 + 16))(v12, v11 == 0, v11);
    }
  }

  else
  {
    (*(a1[5] + 16))();
    v13 = a1[6];
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_pushNotifySubscriptionRequestWithTopicIDs:(id)a3 fromChannelID:(id)a4 withTopicGroupingID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9
{
  v40[1] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E69B6F60];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v37 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(v15);
  [v21 setNotificationUserId:v18];

  [v21 setUserStorefrontId:v16];
  v22 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:v17 deviceDigestMode:a9];

  [v21 setDeviceInfo:v22];
  v23 = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
  if (v23)
  {
    v24 = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
    v25 = [v24 cachedSubscription];
    v26 = [v25 subscriptionState];
  }

  else
  {
    v26 = 3;
  }

  v39 = v19;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v28 = [(FCNotificationsEndpointConnection *)self _notificationEntityWithChannelIDs:v27 isPaid:0 paidBundleSubscriptionStatus:v26 notificationType:3];
  v40[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];

  v30 = [v29 mutableCopy];
  [v21 setNotificationEntitys:v30];

  v31 = objc_alloc_init(MEMORY[0x1E69B7038]);
  [v31 setTopicGroupingId:v37];

  v32 = [v20 mutableCopy];
  [v31 setTopicIds:v32];

  v38 = v31;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];

  v34 = [v33 mutableCopy];
  [v21 setTopicsFolloweds:v34];

  v35 = *MEMORY[0x1E69E9840];

  return v21;
}

- (int)_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 1;
  }

  else
  {
    return dword_1B681A98C[a3 - 1];
  }
}

- (void)_updateNotificationDropboxDataWithBaseURL:(id)a3 notificationUserID:(id)a4 deviceToken:(id)a5 storefrontID:(id)a6 deviceDigestMode:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(FCNotificationsEndpointConnection *)self fileCoordinatedNotificationDropbox];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __140__FCNotificationsEndpointConnection__updateNotificationDropboxDataWithBaseURL_notificationUserID_deviceToken_storefrontID_deviceDigestMode___block_invoke;
  v21[3] = &unk_1E7C42610;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a7;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [v16 depositWithAccessor:v21 completion:0];
}

void __140__FCNotificationsEndpointConnection__updateNotificationDropboxDataWithBaseURL_notificationUserID_deviceToken_storefrontID_deviceDigestMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setBaseURLString:v3];
  [v4 setNotificationUserID:*(a1 + 40)];
  [v4 setDeviceToken:*(a1 + 48)];
  [v4 setStorefrontID:*(a1 + 56)];
  [v4 setDeviceDigestMode:*(a1 + 64)];
}

- (id)_notificationDataInDropbox
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__52;
  v10 = __Block_byref_object_dispose__52;
  v11 = 0;
  v2 = [(FCNotificationsEndpointConnection *)self fileCoordinatedNotificationDropbox];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__FCNotificationsEndpointConnection__notificationDataInDropbox__block_invoke;
  v5[3] = &unk_1E7C42638;
  v5[4] = &v6;
  [v2 peekSyncWithAccessor:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)updateBaseURL:(id)a3
{
  v4 = [FCBaseURLConfiguration notificationsBaseURLForConfiguration:a3];
  [(FCNotificationsEndpointConnection *)self setBaseURL:v4];
}

- (void)configurationManager:(id)a3 configurationDidChange:(id)a4
{
  v5 = a4;
  v6 = [(FCNotificationsEndpointConnection *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__FCNotificationsEndpointConnection_configurationManager_configurationDidChange___block_invoke;
  v8[3] = &unk_1E7C3BDC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 enqueueBlock:v8];
}

void __81__FCNotificationsEndpointConnection_configurationManager_configurationDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 updateBaseURL:v3];
  v4[2]();
}

@end