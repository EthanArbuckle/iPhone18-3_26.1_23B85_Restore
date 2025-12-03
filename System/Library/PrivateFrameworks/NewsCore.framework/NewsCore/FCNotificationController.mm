@interface FCNotificationController
- (BOOL)refreshNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs;
- (BOOL)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD;
- (BOOL)registerNotificationsForChannelID:(id)d isPaid:(BOOL)paid;
- (BOOL)registerNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD;
- (BOOL)unregisterNotificationsForChannelID:(id)d;
- (BOOL)unregisterNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD;
- (FCNotificationController)init;
- (FCNotificationController)initWithUserInfo:(id)info commandQueue:(id)queue configurationManager:(id)manager publisherNotificationsAllowed:(BOOL)allowed appleNewsNotificationsAllowed:(BOOL)notificationsAllowed;
- (id)appendBreakingNewsIfNeededToChannelIDs:(id)ds;
- (void)dealloc;
- (void)refreshNotificationsFromAppleNews;
- (void)setEndOfAudioTrackNotificationsEnabled:(BOOL)enabled;
- (void)setNewIssueNotificationsEnabled:(BOOL)enabled;
- (void)setSportsTopicNotificationsEnabled:(BOOL)enabled;
- (void)userInfoDidChangeNotificationsUserID:(id)d;
@end

@implementation FCNotificationController

- (FCNotificationController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationController init]";
    v10 = 2080;
    v11 = "FCNotificationController.m";
    v12 = 1024;
    v13 = 48;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationController)initWithUserInfo:(id)info commandQueue:(id)queue configurationManager:(id)manager publisherNotificationsAllowed:(BOOL)allowed appleNewsNotificationsAllowed:(BOOL)notificationsAllowed
{
  v32 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  queueCopy = queue;
  managerCopy = manager;
  if (!queueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "commandQueue"];
    *buf = 136315906;
    v25 = "[FCNotificationController initWithUserInfo:commandQueue:configurationManager:publisherNotificationsAllowed:appleNewsNotificationsAllowed:]";
    v26 = 2080;
    v27 = "FCNotificationController.m";
    v28 = 1024;
    v29 = 57;
    v30 = 2114;
    v31 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23.receiver = self;
  v23.super_class = FCNotificationController;
  v16 = [(FCNotificationController *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_userInfo, info);
    notificationsUserID = [infoCopy notificationsUserID];
    notificationsUserID = v17->_notificationsUserID;
    v17->_notificationsUserID = notificationsUserID;

    objc_storeStrong(&v17->_commandQueue, queue);
    objc_storeStrong(&v17->_configurationManager, manager);
    v17->_publisherNotificationsAllowed = allowed;
    v17->_appleNewsNotificationsAllowed = notificationsAllowed;
    [infoCopy addObserver:v17];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  userInfo = [(FCNotificationController *)self userInfo];
  [userInfo removeObserver:self];

  v4.receiver = self;
  v4.super_class = FCNotificationController;
  [(FCNotificationController *)&v4 dealloc];
}

void __66__FCNotificationController__registerDeviceToken_deviceDigestMode___block_invoke_22(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 deviceToken];
    v7 = [*(a1 + 32) notificationsUserID];
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "failed to create command to register device token: CloudKit unreachable, deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v9, 0x20u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)registerNotificationsForChannelID:(id)d isPaid:(BOOL)paid
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
      *buf = 136315906;
      v37 = "[FCNotificationController registerNotificationsForChannelID:isPaid:]";
      v38 = 2080;
      v39 = "FCNotificationController.m";
      v40 = 1024;
      v41 = 147;
      v42 = 2114;
      v43 = v24;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v7 contentStoreFrontID];

    if (dCopy && ([(FCNotificationController *)self deviceToken], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [(FCNotificationController *)self notificationsUserID], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      v12 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v12 isCloudKitReachable])
      {
        if (paid)
        {
          v34 = dCopy;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
          v14 = 0;
        }

        else
        {
          v35 = dCopy;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
          v13 = 0;
        }

        v16 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v14];

        v17 = [FCModifyNotificationsForChannelsCommand alloc];
        notificationsUserID = [(FCNotificationController *)self notificationsUserID];
        deviceToken = [(FCNotificationController *)self deviceToken];
        LODWORD(v25) = [(FCNotificationController *)self deviceDigestMode];
        v20 = [(FCModifyNotificationsForChannelsCommand *)v17 initWithChannelIDsToAdd:v16 paidChannelIDsToAdd:v13 channelIDsToRemove:0 userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v25];

        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v20];

        v15 = 1;
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29;
        v26[3] = &unk_1E7C382E8;
        v27 = dCopy;
        selfCopy = self;
        v29 = contentStoreFrontID;
        v15 = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29(v26);

        v16 = v27;
      }
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_28;
      v30[3] = &unk_1E7C382E8;
      v31 = dCopy;
      selfCopy2 = self;
      v33 = contentStoreFrontID;
      v15 = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_28(v30);

      v12 = v31;
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_28(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v2;
    v8 = [v5 deviceToken];
    v9 = [*(a1 + 40) notificationsUserID];
    v10 = *(a1 + 48);
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to register notifications for channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x2Au);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v2;
    v8 = [v5 deviceToken];
    v9 = [*(a1 + 40) notificationsUserID];
    v10 = *(a1 + 48);
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to register notifications: CloudKit unreachable, channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x2Au);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)unregisterNotificationsForChannelID:(id)d
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
      *buf = 136315906;
      v33 = "[FCNotificationController unregisterNotificationsForChannelID:]";
      v34 = 2080;
      v35 = "FCNotificationController.m";
      v36 = 1024;
      v37 = 184;
      v38 = 2114;
      v39 = v21;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v5 contentStoreFrontID];

    if (dCopy && ([(FCNotificationController *)self deviceToken], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, [(FCNotificationController *)self notificationsUserID], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v10 isCloudKitReachable])
      {
        v31 = dCopy;
        v11 = 1;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        v13 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v12];

        v14 = [FCModifyNotificationsForChannelsCommand alloc];
        notificationsUserID = [(FCNotificationController *)self notificationsUserID];
        deviceToken = [(FCNotificationController *)self deviceToken];
        LODWORD(v22) = [(FCNotificationController *)self deviceDigestMode];
        v17 = [(FCModifyNotificationsForChannelsCommand *)v14 initWithChannelIDsToAdd:0 paidChannelIDsToAdd:0 channelIDsToRemove:v13 userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v22];

        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v17];
      }

      else
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35;
        v23[3] = &unk_1E7C382E8;
        v24 = dCopy;
        selfCopy = self;
        v26 = contentStoreFrontID;
        v11 = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35(v23);

        v13 = v24;
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_34;
      v27[3] = &unk_1E7C382E8;
      v28 = dCopy;
      selfCopy2 = self;
      v30 = contentStoreFrontID;
      v11 = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_34(v27);

      v10 = v28;
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_34(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v2;
    v8 = [v5 deviceToken];
    v9 = [*(a1 + 40) notificationsUserID];
    v10 = *(a1 + 48);
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to unregister notifications for channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x2Au);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v2;
    v8 = [v5 deviceToken];
    v9 = [*(a1 + 40) notificationsUserID];
    v10 = *(a1 + 48);
    v11 = 138544130;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to unregister notifications: CloudKit unreachable, channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x2Au);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)refreshNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    v8 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v8 contentStoreFrontID];

    deviceToken = [(FCNotificationController *)self deviceToken];
    if (deviceToken && (v11 = deviceToken, [(FCNotificationController *)self notificationsUserID], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v13 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v13 isCloudKitReachable])
      {
        v14 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:dsCopy];
        v15 = [FCRefreshNotificationsForChannelsCommand alloc];
        notificationsUserID = [(FCNotificationController *)self notificationsUserID];
        deviceToken2 = [(FCNotificationController *)self deviceToken];
        v18 = [(FCRefreshNotificationsForChannelsCommand *)v15 initWithChannelIDs:v14 paidChannelIDs:iDsCopy userID:notificationsUserID deviceToken:deviceToken2 storefrontID:contentStoreFrontID deviceDigestMode:[(FCNotificationController *)self deviceDigestMode]];

        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v18];

        v20 = 1;
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38;
        v22[3] = &unk_1E7C44E98;
        v23 = dsCopy;
        v24 = iDsCopy;
        selfCopy = self;
        v26 = contentStoreFrontID;
        v20 = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38(v22);
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2;
      v27[3] = &unk_1E7C44E98;
      v28 = dsCopy;
      v29 = iDsCopy;
      selfCopy2 = self;
      v31 = contentStoreFrontID;
      v20 = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2(v27);

      v13 = v28;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v2;
    v9 = [v7 deviceToken];
    v10 = [*(a1 + 48) notificationsUserID];
    v11 = *(a1 + 56);
    v12 = 138544386;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications for channelIDs: %{public}@ paidChannelIDs: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x34u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v2;
    v9 = [v7 deviceToken];
    v10 = [*(a1 + 48) notificationsUserID];
    v11 = *(a1 + 56);
    v12 = 138544386;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications: CloudKit unreachable, channelIDs: %{public}@ paidChannelIDs: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x34u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)registerNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD
{
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  if (!iDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v38 = "[FCNotificationController registerNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:]";
    v39 = 2080;
    v40 = "FCNotificationController.m";
    v41 = 1024;
    v42 = 248;
    v43 = 2114;
    v44 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v11 contentStoreFrontID];

  if (iDCopy && ([(FCNotificationController *)self deviceToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCModifyNotificationsForTopicsCommand alloc];
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];
      deviceToken = [(FCNotificationController *)self deviceToken];
      LODWORD(v26) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCModifyNotificationsForTopicsCommand *)v17 initWithTopicIDsToAdd:dsCopy topicIDsToRemove:0 withTopicGroupingID:dCopy fromChannelID:iDCopy userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v26];

      commandQueue = [(FCNotificationController *)self commandQueue];
      [commandQueue addCommand:v20];

      v22 = 1;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40;
      v27[3] = &unk_1E7C44E98;
      v28 = dsCopy;
      v29 = iDCopy;
      selfCopy = self;
      v31 = contentStoreFrontID;
      v22 = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40(v27);

      v20 = v28;
    }
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v32[3] = &unk_1E7C44E98;
    v33 = dsCopy;
    v34 = iDCopy;
    selfCopy2 = self;
    v36 = contentStoreFrontID;
    v22 = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(v32);

    v16 = v33;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v2;
    v9 = [v7 deviceToken];
    v10 = [*(a1 + 48) notificationsUserID];
    v11 = *(a1 + 56);
    v12 = 138544386;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to register topic notifications with topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x34u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v2;
    v9 = [v7 deviceToken];
    v10 = [*(a1 + 48) notificationsUserID];
    v11 = *(a1 + 56);
    v12 = 138544386;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to register notifications: CloudKit unreachable, topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x34u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)unregisterNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD
{
  v45 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  if (!iDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v38 = "[FCNotificationController unregisterNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:]";
    v39 = 2080;
    v40 = "FCNotificationController.m";
    v41 = 1024;
    v42 = 280;
    v43 = 2114;
    v44 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v11 contentStoreFrontID];

  if (iDCopy && ([(FCNotificationController *)self deviceToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCModifyNotificationsForTopicsCommand alloc];
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];
      deviceToken = [(FCNotificationController *)self deviceToken];
      LODWORD(v26) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCModifyNotificationsForTopicsCommand *)v17 initWithTopicIDsToAdd:0 topicIDsToRemove:dsCopy withTopicGroupingID:dCopy fromChannelID:iDCopy userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v26];

      commandQueue = [(FCNotificationController *)self commandQueue];
      [commandQueue addCommand:v20];

      v22 = 1;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42;
      v27[3] = &unk_1E7C44E98;
      v28 = dsCopy;
      v29 = iDCopy;
      selfCopy = self;
      v31 = contentStoreFrontID;
      v22 = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42(v27);

      v20 = v28;
    }
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v32[3] = &unk_1E7C44E98;
    v33 = dsCopy;
    v34 = iDCopy;
    selfCopy2 = self;
    v36 = contentStoreFrontID;
    v22 = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(v32);

    v16 = v33;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v2;
    v9 = [v7 deviceToken];
    v10 = [*(a1 + 48) notificationsUserID];
    v11 = *(a1 + 56);
    v12 = 138544386;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to register topic notifications with topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x34u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v2;
    v9 = [v7 deviceToken];
    v10 = [*(a1 + 48) notificationsUserID];
    v11 = *(a1 + 56);
    v12 = 138544386;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to register notifications: CloudKit unreachable, topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x34u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  v11 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v11 contentStoreFrontID];

  deviceToken = [(FCNotificationController *)self deviceToken];
  if (deviceToken && (v14 = deviceToken, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCRefreshNotificationsForTopicsCommand alloc];
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];
      deviceToken2 = [(FCNotificationController *)self deviceToken];
      LODWORD(v24) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCRefreshNotificationsForTopicsCommand *)v17 initWithTopicsIDs:dsCopy withTopicGroupingID:dCopy fromChannelID:iDCopy userID:notificationsUserID deviceToken:deviceToken2 storefrontID:contentStoreFrontID deviceDigestMode:v24];

      commandQueue = [(FCNotificationController *)self commandQueue];
      [commandQueue addCommand:v20];

      v22 = 1;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43;
      v25[3] = &unk_1E7C47DD8;
      v26 = dsCopy;
      v27 = dCopy;
      v28 = iDCopy;
      selfCopy = self;
      v30 = contentStoreFrontID;
      v22 = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43(v25);
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v31[3] = &unk_1E7C47DD8;
    v32 = dsCopy;
    v33 = dCopy;
    v34 = iDCopy;
    selfCopy2 = self;
    v36 = contentStoreFrontID;
    v22 = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(v31);

    v16 = v32;
  }

  return v22;
}

uint64_t __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = v2;
    v10 = [v7 deviceToken];
    v11 = [*(a1 + 56) notificationsUserID];
    v12 = *(a1 + 64);
    v13 = 138544642;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications for topicIDs: %{public}@ topicGroupingID: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v13, 0x3Eu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = v2;
    v10 = [v7 deviceToken];
    v11 = [*(a1 + 56) notificationsUserID];
    v12 = *(a1 + 64);
    v13 = 138544642;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications: CloudKit unreachable, topicIDs: %{public}@ topicGroupingID: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v13, 0x3Eu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)setNewIssueNotificationsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__FCNotificationController_setNewIssueNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __60__FCNotificationController_setNewIssueNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [v2 setNewIssueNotificationsEnabled:*(a1 + 40)];
}

- (void)setEndOfAudioTrackNotificationsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__FCNotificationController_setEndOfAudioTrackNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __67__FCNotificationController_setEndOfAudioTrackNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [v2 setEndOfAudioTrackNotificationsEnabled:*(a1 + 40)];
}

- (void)setSportsTopicNotificationsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__FCNotificationController_setSportsTopicNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __63__FCNotificationController_setSportsTopicNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [v2 setSportsTopicNotificationsEnabledState:v3];
}

- (void)refreshNotificationsFromAppleNews
{
  if ([(FCNotificationController *)self appleNewsNotificationsAllowed])
  {
    objc_initWeak(&location, self);
    userInfo = [(FCNotificationController *)self userInfo];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_2;
    v4[3] = &unk_1E7C3C090;
    objc_copyWeak(&v5, &location);
    [userInfo syncWithCompletion:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_3;
  v7[3] = &unk_1E7C47E28;
  v8 = v4;
  v6 = v4;
  FCPerformIfNonNil(WeakRetained, v7);
}

void __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_3(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    v3 = a2;
    v4 = [v3 userInfo];
    [v3 setMarketingNotificationsEnabled:objc_msgSend(v4 error:{"marketingNotificationsEnabled"), 0}];
  }
}

- (id)appendBreakingNewsIfNeededToChannelIDs:(id)ds
{
  dsCopy = ds;
  configurationManager = [(FCNotificationController *)self configurationManager];
  configuration = [configurationManager configuration];

  topStoriesConfig = [configuration topStoriesConfig];
  channelID = [topStoriesConfig channelID];

  breakingNewsChannelID = [configuration breakingNewsChannelID];
  v10 = dsCopy;
  if ([breakingNewsChannelID length])
  {
    v10 = dsCopy;
    if ([channelID length])
    {
      v10 = dsCopy;
      if ([dsCopy containsObject:channelID])
      {
        v10 = [dsCopy arrayByAddingObject:breakingNewsChannelID];
      }
    }
  }

  return v10;
}

- (void)userInfoDidChangeNotificationsUserID:(id)d
{
  notificationsUserID = [d notificationsUserID];
  notificationsUserID2 = [(FCNotificationController *)self notificationsUserID];
  v5 = [notificationsUserID2 isEqualToString:notificationsUserID];

  if ((v5 & 1) == 0)
  {
    [(FCNotificationController *)self setNotificationsUserID:notificationsUserID];
    deviceToken = [(FCNotificationController *)self deviceToken];

    if (deviceToken)
    {
      deviceToken2 = [(FCNotificationController *)self deviceToken];
      [(FCNotificationController *)self _registerDeviceToken:deviceToken2 deviceDigestMode:[(FCNotificationController *)self deviceDigestMode]];
    }
  }
}

@end