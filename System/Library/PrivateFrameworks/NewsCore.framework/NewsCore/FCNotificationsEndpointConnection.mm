@interface FCNotificationsEndpointConnection
- (FCNotificationsEndpointConnection)initWithBaseURLString:(id)string;
- (FCNotificationsEndpointConnection)initWithConfigurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager;
- (FCNotificationsEndpointConnection)initWithEndpointConnection:(id)connection configurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager;
- (id)_marketingSubscriptionRequestWithType:(int)type action:(int)action dsid:(id)dsid;
- (id)_notificationDataInDropbox;
- (id)_pushNotifySubscriptionRequestWithTopicIDs:(id)ds fromChannelID:(id)d withTopicGroupingID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode;
- (int)_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:(unint64_t)state;
- (void)_sendNotificationsSubscriptionRequest:(id)request pathComponent:(id)component callbackQueue:(id)queue completion:(id)completion;
- (void)_updateNotificationDropboxDataWithBaseURL:(id)l notificationUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1;
- (void)subscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1;
- (void)unsubscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1;
- (void)updateBaseURL:(id)l;
@end

@implementation FCNotificationsEndpointConnection

- (FCNotificationsEndpointConnection)initWithConfigurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager
{
  subscriptionManagerCopy = subscriptionManager;
  managerCopy = manager;
  v8 = objc_alloc_init(FCEndpointConnection);
  v9 = [(FCNotificationsEndpointConnection *)self initWithEndpointConnection:v8 configurationManager:managerCopy bundleSubscriptionManager:subscriptionManagerCopy];

  return v9;
}

- (FCNotificationsEndpointConnection)initWithEndpointConnection:(id)connection configurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager
{
  connectionCopy = connection;
  managerCopy = manager;
  subscriptionManagerCopy = subscriptionManager;
  v29.receiver = self;
  v29.super_class = FCNotificationsEndpointConnection;
  v12 = [(FCNotificationsEndpointConnection *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointConnection, connection);
    objc_storeStrong(&v13->_configurationManager, manager);
    objc_storeStrong(&v13->_bundleSubscriptionManager, subscriptionManager);
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

    [managerCopy addObserver:v13];
    serialQueue = [(FCNotificationsEndpointConnection *)v13 serialQueue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke;
    v26[3] = &unk_1E7C3BDC0;
    v27 = managerCopy;
    v28 = v13;
    [serialQueue enqueueBlock:v26];
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

- (FCNotificationsEndpointConnection)initWithBaseURLString:(id)string
{
  stringCopy = string;
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

    v14 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
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

- (void)subscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1
{
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  storefrontIDCopy = storefrontID;
  queueCopy = queue;
  completionCopy = completion;
  if (![dsCopy count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
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
  if (!userIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (tokenCopy)
    {
      goto LABEL_11;
    }
  }

  else if (tokenCopy)
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
  if (!storefrontIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v25 = [dsCopy count];
  if (storefrontIDCopy && tokenCopy && userIDCopy && iDCopy && v25)
  {
    LODWORD(v34) = mode;
    v26 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:dsCopy fromChannelID:iDCopy withTopicGroupingID:dCopy userID:userIDCopy deviceToken:tokenCopy storefrontID:storefrontIDCopy deviceDigestMode:v34];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __179__FCNotificationsEndpointConnection_subscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v35[3] = &unk_1E7C42598;
    v36 = completionCopy;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v26 pathComponent:@"pushnotify/subscribe" callbackQueue:queueCopy completion:v35];
  }

  else
  {
    v27 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_ERROR, "failed to submit request for subscribe notifications, invalid parameters", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (void)unsubscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  storefrontIDCopy = storefrontID;
  queueCopy = queue;
  completionCopy = completion;
  if (!iDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (userIDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (userIDCopy)
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
  if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (storefrontIDCopy)
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

  if (!storefrontIDCopy)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (iDCopy && userIDCopy && tokenCopy)
  {
    LODWORD(v32) = mode;
    v25 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:dsCopy fromChannelID:iDCopy withTopicGroupingID:dCopy userID:userIDCopy deviceToken:tokenCopy storefrontID:storefrontIDCopy deviceDigestMode:v32];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __181__FCNotificationsEndpointConnection_unsubscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v33[3] = &unk_1E7C42598;
    v34 = completionCopy;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v25 pathComponent:@"pushnotify/unsubscribe" callbackQueue:queueCopy completion:v33];

    goto LABEL_21;
  }

LABEL_18:
  v29 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_ERROR, "failed to submit request for unsubscribe notifications, invalid parameters", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (void)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1
{
  v42 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  storefrontIDCopy = storefrontID;
  queueCopy = queue;
  completionCopy = completion;
  if (!userIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (tokenCopy)
    {
      goto LABEL_6;
    }
  }

  else if (tokenCopy)
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
  if (storefrontIDCopy)
  {
    if (userIDCopy && tokenCopy)
    {
      LODWORD(v31) = mode;
      v25 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:dsCopy fromChannelID:iDCopy withTopicGroupingID:dCopy userID:userIDCopy deviceToken:tokenCopy storefrontID:storefrontIDCopy deviceDigestMode:v31];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __177__FCNotificationsEndpointConnection_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
      v32[3] = &unk_1E7C42598;
      v33 = completionCopy;
      [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v25 pathComponent:@"pushnotify/updatetoken" callbackQueue:queueCopy completion:v32];

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

  (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (id)_marketingSubscriptionRequestWithType:(int)type action:(int)action dsid:(id)dsid
{
  v8 = MEMORY[0x1E69B6EA0];
  dsidCopy = dsid;
  v10 = objc_alloc_init(v8);
  v11 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:0 deviceDigestMode:0];
  [v10 setDeviceInfo:v11];
  [v10 setDsid:dsidCopy];

  if (action == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = action == 1;
  }

  [v10 setSubscriptionAction:v12];
  [v10 setSubscriptionType:type != 0];

  return v10;
}

- (void)_sendNotificationsSubscriptionRequest:(id)request pathComponent:(id)component callbackQueue:(id)queue completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  componentCopy = component;
  queueCopy = queue;
  completionCopy = completion;
  if (!requestCopy)
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

      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_6;
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_6;
  }

  serialQueue = [(FCNotificationsEndpointConnection *)self serialQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke;
  v17[3] = &unk_1E7C425E8;
  v17[4] = self;
  v18 = componentCopy;
  v19 = requestCopy;
  v20 = queueCopy;
  v21 = completionCopy;
  [serialQueue enqueueBlock:v17];

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

- (id)_pushNotifySubscriptionRequestWithTopicIDs:(id)ds fromChannelID:(id)d withTopicGroupingID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode
{
  v40[1] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E69B6F60];
  storefrontIDCopy = storefrontID;
  tokenCopy = token;
  userIDCopy = userID;
  iDCopy = iD;
  dCopy = d;
  dsCopy = ds;
  v21 = objc_alloc_init(v15);
  [v21 setNotificationUserId:userIDCopy];

  [v21 setUserStorefrontId:storefrontIDCopy];
  v22 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:tokenCopy deviceDigestMode:mode];

  [v21 setDeviceInfo:v22];
  bundleSubscriptionManager = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
  if (bundleSubscriptionManager)
  {
    bundleSubscriptionManager2 = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
    cachedSubscription = [bundleSubscriptionManager2 cachedSubscription];
    subscriptionState = [cachedSubscription subscriptionState];
  }

  else
  {
    subscriptionState = 3;
  }

  v39 = dCopy;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v28 = [(FCNotificationsEndpointConnection *)self _notificationEntityWithChannelIDs:v27 isPaid:0 paidBundleSubscriptionStatus:subscriptionState notificationType:3];
  v40[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];

  v30 = [v29 mutableCopy];
  [v21 setNotificationEntitys:v30];

  v31 = objc_alloc_init(MEMORY[0x1E69B7038]);
  [v31 setTopicGroupingId:iDCopy];

  v32 = [dsCopy mutableCopy];
  [v31 setTopicIds:v32];

  v38 = v31;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];

  v34 = [v33 mutableCopy];
  [v21 setTopicsFolloweds:v34];

  v35 = *MEMORY[0x1E69E9840];

  return v21;
}

- (int)_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return 1;
  }

  else
  {
    return dword_1B681A98C[state - 1];
  }
}

- (void)_updateNotificationDropboxDataWithBaseURL:(id)l notificationUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode
{
  lCopy = l;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  fileCoordinatedNotificationDropbox = [(FCNotificationsEndpointConnection *)self fileCoordinatedNotificationDropbox];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __140__FCNotificationsEndpointConnection__updateNotificationDropboxDataWithBaseURL_notificationUserID_deviceToken_storefrontID_deviceDigestMode___block_invoke;
  v21[3] = &unk_1E7C42610;
  v22 = lCopy;
  v23 = dCopy;
  v24 = tokenCopy;
  v25 = iDCopy;
  modeCopy = mode;
  v17 = iDCopy;
  v18 = tokenCopy;
  v19 = dCopy;
  v20 = lCopy;
  [fileCoordinatedNotificationDropbox depositWithAccessor:v21 completion:0];
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
  fileCoordinatedNotificationDropbox = [(FCNotificationsEndpointConnection *)self fileCoordinatedNotificationDropbox];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__FCNotificationsEndpointConnection__notificationDataInDropbox__block_invoke;
  v5[3] = &unk_1E7C42638;
  v5[4] = &v6;
  [fileCoordinatedNotificationDropbox peekSyncWithAccessor:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)updateBaseURL:(id)l
{
  v4 = [FCBaseURLConfiguration notificationsBaseURLForConfiguration:l];
  [(FCNotificationsEndpointConnection *)self setBaseURL:v4];
}

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(FCNotificationsEndpointConnection *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__FCNotificationsEndpointConnection_configurationManager_configurationDidChange___block_invoke;
  v8[3] = &unk_1E7C3BDC0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  [serialQueue enqueueBlock:v8];
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