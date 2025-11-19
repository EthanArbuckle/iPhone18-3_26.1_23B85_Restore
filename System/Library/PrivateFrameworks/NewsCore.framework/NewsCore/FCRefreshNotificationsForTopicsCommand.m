@interface FCRefreshNotificationsForTopicsCommand
- (FCRefreshNotificationsForTopicsCommand)initWithCoder:(id)a3;
- (FCRefreshNotificationsForTopicsCommand)initWithTopicsIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCRefreshNotificationsForTopicsCommand

- (FCRefreshNotificationsForTopicsCommand)initWithTopicsIDs:(id)a3 withTopicGroupingID:(id)a4 fromChannelID:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v16 = a6;
  v17 = a7;
  obj = a8;
  v18 = a8;
  v19 = v18;
  v20 = 0;
  if (v16 && v17 && v18)
  {
    v28.receiver = self;
    v28.super_class = FCRefreshNotificationsForTopicsCommand;
    v21 = [(FCRefreshNotificationsForTopicsCommand *)&v28 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_topicIDs, a3);
      objc_storeStrong(&v22->_topicGroupingID, a4);
      objc_storeStrong(&v22->_channelID, a5);
      objc_storeStrong(&v22->_userID, a6);
      objc_storeStrong(&v22->_deviceToken, a7);
      objc_storeStrong(&v22->_storefrontID, obj);
      v22->_deviceDigestMode = a9;
    }

    self = v22;
    v20 = self;
  }

  return v20;
}

- (FCRefreshNotificationsForTopicsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"TopicIDsKey"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"TopicGroupingID"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"FromChannelIDKey"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v14 = [v5 decodeIntForKey:@"DigestModeKey"];

  LODWORD(v17) = v14;
  v15 = [(FCRefreshNotificationsForTopicsCommand *)self initWithTopicsIDs:v8 withTopicGroupingID:v9 fromChannelID:v10 userID:v11 deviceToken:v12 storefrontID:v13 deviceDigestMode:v17];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(FCRefreshNotificationsForTopicsCommand *)self topicIDs];
  [v10 encodeObject:v4 forKey:@"TopicIDsKey"];

  v5 = [(FCRefreshNotificationsForTopicsCommand *)self topicGroupingID];
  [v10 encodeObject:v5 forKey:@"TopicGroupingID"];

  v6 = [(FCRefreshNotificationsForTopicsCommand *)self channelID];
  [v10 encodeObject:v6 forKey:@"FromChannelIDKey"];

  v7 = [(FCRefreshNotificationsForTopicsCommand *)self userID];
  [v10 encodeObject:v7 forKey:@"UserIDKey"];

  v8 = [(FCRefreshNotificationsForTopicsCommand *)self deviceToken];
  [v10 encodeObject:v8 forKey:@"DeviceTokenKey"];

  v9 = [(FCRefreshNotificationsForTopicsCommand *)self storefrontID];
  [v10 encodeObject:v9 forKey:@"StorefrontIDKey"];

  [v10 encodeInt:-[FCRefreshNotificationsForTopicsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v25 = a4;
  v8 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(FCRefreshNotificationsForTopicsCommand *)self topicIDs];
    v11 = [(FCRefreshNotificationsForTopicsCommand *)self topicGroupingID];
    *buf = 138543618;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "refreshNotificationsCommand: executing command topicIDs: %{public}@ groupingID: %{public}@", buf, 0x16u);
  }

  v23 = [v7 notificationsEndpointConnection];
  v12 = [(FCRefreshNotificationsForTopicsCommand *)self topicIDs];
  v13 = [(FCRefreshNotificationsForTopicsCommand *)self topicGroupingID];
  v14 = [(FCRefreshNotificationsForTopicsCommand *)self channelID];
  v15 = [(FCRefreshNotificationsForTopicsCommand *)self userID];
  v16 = [(FCRefreshNotificationsForTopicsCommand *)self deviceToken];
  v17 = [(FCRefreshNotificationsForTopicsCommand *)self storefrontID];
  v24 = v7;
  v18 = [(FCRefreshNotificationsForTopicsCommand *)self deviceDigestMode];
  v19 = dispatch_get_global_queue(-2, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__FCRefreshNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v26[3] = &unk_1E7C38080;
  v26[4] = self;
  v27 = v25;
  v20 = v25;
  LODWORD(v22) = v18;
  [v23 refreshNotificationsForTopicIDs:v12 withTopicGroupingID:v13 fromChannelID:v14 userID:v15 deviceToken:v16 storefrontID:v17 deviceDigestMode:v22 callbackQueue:v19 completion:v26];

  v21 = *MEMORY[0x1E69E9840];
}

void __87__FCRefreshNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = FCPushNotificationsLog;
  if (a2)
  {
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 topicGroupingID];
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "refreshNotificationsCommand: succeeded refreshing topics for groupID: %{public}@", &v15, 0xCu);
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "refreshNotificationsCommand: failed to refresh notifications with error: %{public}@", &v15, 0xCu);
    }

    if ([v5 fc_isNetworkUnavailableError])
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 1;
    }

    else
    {
      v13 = [v5 fc_shouldRetry];
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v13)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }
    }
  }

  [v10 command:v11 didFinishWithStatus:v12];

  v14 = *MEMORY[0x1E69E9840];
}

@end