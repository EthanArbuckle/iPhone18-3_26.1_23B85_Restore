@interface FCNotificationController
- (BOOL)refreshNotificationsForChannelIDs:(id)a3 paidChannelIDs:(id)a4;
- (BOOL)refreshNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5;
- (BOOL)registerNotificationsForChannelID:(id)a3 isPaid:(BOOL)a4;
- (BOOL)registerNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5;
- (BOOL)unregisterNotificationsForChannelID:(id)a3;
- (BOOL)unregisterNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5;
- (FCNotificationController)init;
- (FCNotificationController)initWithUserInfo:(id)a3 commandQueue:(id)a4 configurationManager:(id)a5 publisherNotificationsAllowed:(BOOL)a6 appleNewsNotificationsAllowed:(BOOL)a7;
- (id)appendBreakingNewsIfNeededToChannelIDs:(id)a3;
- (void)dealloc;
- (void)refreshNotificationsFromAppleNews;
- (void)setEndOfAudioTrackNotificationsEnabled:(BOOL)a3;
- (void)setNewIssueNotificationsEnabled:(BOOL)a3;
- (void)setSportsTopicNotificationsEnabled:(BOOL)a3;
- (void)userInfoDidChangeNotificationsUserID:(id)a3;
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

- (FCNotificationController)initWithUserInfo:(id)a3 commandQueue:(id)a4 configurationManager:(id)a5 publisherNotificationsAllowed:(BOOL)a6 appleNewsNotificationsAllowed:(BOOL)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v16->_userInfo, a3);
    v18 = [v13 notificationsUserID];
    notificationsUserID = v17->_notificationsUserID;
    v17->_notificationsUserID = v18;

    objc_storeStrong(&v17->_commandQueue, a4);
    objc_storeStrong(&v17->_configurationManager, a5);
    v17->_publisherNotificationsAllowed = a6;
    v17->_appleNewsNotificationsAllowed = a7;
    [v13 addObserver:v17];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  v3 = [(FCNotificationController *)self userInfo];
  [v3 removeObserver:self];

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

- (BOOL)registerNotificationsForChannelID:(id)a3 isPaid:(BOOL)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v8 = [v7 contentStoreFrontID];

    if (v6 && ([(FCNotificationController *)self deviceToken], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [(FCNotificationController *)self notificationsUserID], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      v12 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v12 isCloudKitReachable])
      {
        if (a4)
        {
          v34 = v6;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
          v14 = 0;
        }

        else
        {
          v35 = v6;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
          v13 = 0;
        }

        v16 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v14];

        v17 = [FCModifyNotificationsForChannelsCommand alloc];
        v18 = [(FCNotificationController *)self notificationsUserID];
        v19 = [(FCNotificationController *)self deviceToken];
        LODWORD(v25) = [(FCNotificationController *)self deviceDigestMode];
        v20 = [(FCModifyNotificationsForChannelsCommand *)v17 initWithChannelIDsToAdd:v16 paidChannelIDsToAdd:v13 channelIDsToRemove:0 userID:v18 deviceToken:v19 storefrontID:v8 deviceDigestMode:v25];

        v21 = [(FCNotificationController *)self commandQueue];
        [v21 addCommand:v20];

        v15 = 1;
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29;
        v26[3] = &unk_1E7C382E8;
        v27 = v6;
        v28 = self;
        v29 = v8;
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
      v31 = v6;
      v32 = self;
      v33 = v8;
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

- (BOOL)unregisterNotificationsForChannelID:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v6 = [v5 contentStoreFrontID];

    if (v4 && ([(FCNotificationController *)self deviceToken], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, [(FCNotificationController *)self notificationsUserID], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v10 isCloudKitReachable])
      {
        v31 = v4;
        v11 = 1;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
        v13 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v12];

        v14 = [FCModifyNotificationsForChannelsCommand alloc];
        v15 = [(FCNotificationController *)self notificationsUserID];
        v16 = [(FCNotificationController *)self deviceToken];
        LODWORD(v22) = [(FCNotificationController *)self deviceDigestMode];
        v17 = [(FCModifyNotificationsForChannelsCommand *)v14 initWithChannelIDsToAdd:0 paidChannelIDsToAdd:0 channelIDsToRemove:v13 userID:v15 deviceToken:v16 storefrontID:v6 deviceDigestMode:v22];

        v18 = [(FCNotificationController *)self commandQueue];
        [v18 addCommand:v17];
      }

      else
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35;
        v23[3] = &unk_1E7C382E8;
        v24 = v4;
        v25 = self;
        v26 = v6;
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
      v28 = v4;
      v29 = self;
      v30 = v6;
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

- (BOOL)refreshNotificationsForChannelIDs:(id)a3 paidChannelIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    v8 = +[FCAppleAccount sharedAccount];
    v9 = [v8 contentStoreFrontID];

    v10 = [(FCNotificationController *)self deviceToken];
    if (v10 && (v11 = v10, [(FCNotificationController *)self notificationsUserID], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v13 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v13 isCloudKitReachable])
      {
        v14 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v6];
        v15 = [FCRefreshNotificationsForChannelsCommand alloc];
        v16 = [(FCNotificationController *)self notificationsUserID];
        v17 = [(FCNotificationController *)self deviceToken];
        v18 = [(FCRefreshNotificationsForChannelsCommand *)v15 initWithChannelIDs:v14 paidChannelIDs:v7 userID:v16 deviceToken:v17 storefrontID:v9 deviceDigestMode:[(FCNotificationController *)self deviceDigestMode]];

        v19 = [(FCNotificationController *)self commandQueue];
        [v19 addCommand:v18];

        v20 = 1;
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38;
        v22[3] = &unk_1E7C44E98;
        v23 = v6;
        v24 = v7;
        v25 = self;
        v26 = v9;
        v20 = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38(v22);
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2;
      v27[3] = &unk_1E7C44E98;
      v28 = v6;
      v29 = v7;
      v30 = self;
      v31 = v9;
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

- (BOOL)registerNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v12 = [v11 contentStoreFrontID];

  if (v10 && ([(FCNotificationController *)self deviceToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCModifyNotificationsForTopicsCommand alloc];
      v18 = [(FCNotificationController *)self notificationsUserID];
      v19 = [(FCNotificationController *)self deviceToken];
      LODWORD(v26) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCModifyNotificationsForTopicsCommand *)v17 initWithTopicIDsToAdd:v8 topicIDsToRemove:0 withTopicGroupingID:v9 fromChannelID:v10 userID:v18 deviceToken:v19 storefrontID:v12 deviceDigestMode:v26];

      v21 = [(FCNotificationController *)self commandQueue];
      [v21 addCommand:v20];

      v22 = 1;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40;
      v27[3] = &unk_1E7C44E98;
      v28 = v8;
      v29 = v10;
      v30 = self;
      v31 = v12;
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
    v33 = v8;
    v34 = v10;
    v35 = self;
    v36 = v12;
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

- (BOOL)unregisterNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v12 = [v11 contentStoreFrontID];

  if (v10 && ([(FCNotificationController *)self deviceToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCModifyNotificationsForTopicsCommand alloc];
      v18 = [(FCNotificationController *)self notificationsUserID];
      v19 = [(FCNotificationController *)self deviceToken];
      LODWORD(v26) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCModifyNotificationsForTopicsCommand *)v17 initWithTopicIDsToAdd:0 topicIDsToRemove:v8 withTopicGroupingID:v9 fromChannelID:v10 userID:v18 deviceToken:v19 storefrontID:v12 deviceDigestMode:v26];

      v21 = [(FCNotificationController *)self commandQueue];
      [v21 addCommand:v20];

      v22 = 1;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42;
      v27[3] = &unk_1E7C44E98;
      v28 = v8;
      v29 = v10;
      v30 = self;
      v31 = v12;
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
    v33 = v8;
    v34 = v10;
    v35 = self;
    v36 = v12;
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

- (BOOL)refreshNotificationsForTopicIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[FCAppleAccount sharedAccount];
  v12 = [v11 contentStoreFrontID];

  v13 = [(FCNotificationController *)self deviceToken];
  if (v13 && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCRefreshNotificationsForTopicsCommand alloc];
      v18 = [(FCNotificationController *)self notificationsUserID];
      v19 = [(FCNotificationController *)self deviceToken];
      LODWORD(v24) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCRefreshNotificationsForTopicsCommand *)v17 initWithTopicsIDs:v8 withTopicGroupingID:v9 fromChannelID:v10 userID:v18 deviceToken:v19 storefrontID:v12 deviceDigestMode:v24];

      v21 = [(FCNotificationController *)self commandQueue];
      [v21 addCommand:v20];

      v22 = 1;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43;
      v25[3] = &unk_1E7C47DD8;
      v26 = v8;
      v27 = v9;
      v28 = v10;
      v29 = self;
      v30 = v12;
      v22 = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43(v25);
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v31[3] = &unk_1E7C47DD8;
    v32 = v8;
    v33 = v9;
    v34 = v10;
    v35 = self;
    v36 = v12;
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

- (void)setNewIssueNotificationsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__FCNotificationController_setNewIssueNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __60__FCNotificationController_setNewIssueNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [v2 setNewIssueNotificationsEnabled:*(a1 + 40)];
}

- (void)setEndOfAudioTrackNotificationsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__FCNotificationController_setEndOfAudioTrackNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __67__FCNotificationController_setEndOfAudioTrackNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [v2 setEndOfAudioTrackNotificationsEnabled:*(a1 + 40)];
}

- (void)setSportsTopicNotificationsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__FCNotificationController_setSportsTopicNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  v4 = a3;
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
    v3 = [(FCNotificationController *)self userInfo];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_2;
    v4[3] = &unk_1E7C3C090;
    objc_copyWeak(&v5, &location);
    [v3 syncWithCompletion:v4];

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

- (id)appendBreakingNewsIfNeededToChannelIDs:(id)a3
{
  v4 = a3;
  v5 = [(FCNotificationController *)self configurationManager];
  v6 = [v5 configuration];

  v7 = [v6 topStoriesConfig];
  v8 = [v7 channelID];

  v9 = [v6 breakingNewsChannelID];
  v10 = v4;
  if ([v9 length])
  {
    v10 = v4;
    if ([v8 length])
    {
      v10 = v4;
      if ([v4 containsObject:v8])
      {
        v10 = [v4 arrayByAddingObject:v9];
      }
    }
  }

  return v10;
}

- (void)userInfoDidChangeNotificationsUserID:(id)a3
{
  v8 = [a3 notificationsUserID];
  v4 = [(FCNotificationController *)self notificationsUserID];
  v5 = [v4 isEqualToString:v8];

  if ((v5 & 1) == 0)
  {
    [(FCNotificationController *)self setNotificationsUserID:v8];
    v6 = [(FCNotificationController *)self deviceToken];

    if (v6)
    {
      v7 = [(FCNotificationController *)self deviceToken];
      [(FCNotificationController *)self _registerDeviceToken:v7 deviceDigestMode:[(FCNotificationController *)self deviceDigestMode]];
    }
  }
}

@end