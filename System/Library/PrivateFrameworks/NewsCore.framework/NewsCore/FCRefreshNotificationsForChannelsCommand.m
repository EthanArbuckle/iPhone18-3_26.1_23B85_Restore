@interface FCRefreshNotificationsForChannelsCommand
- (FCRefreshNotificationsForChannelsCommand)initWithChannelIDs:(id)a3 paidChannelIDs:(id)a4 userID:(id)a5 deviceToken:(id)a6 storefrontID:(id)a7 deviceDigestMode:(int)a8;
- (FCRefreshNotificationsForChannelsCommand)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCRefreshNotificationsForChannelsCommand

- (FCRefreshNotificationsForChannelsCommand)initWithChannelIDs:(id)a3 paidChannelIDs:(id)a4 userID:(id)a5 deviceToken:(id)a6 storefrontID:(id)a7 deviceDigestMode:(int)a8
{
  v24 = a3;
  v23 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  v18 = 0;
  if (v14 && v15 && v16)
  {
    v25.receiver = self;
    v25.super_class = FCRefreshNotificationsForChannelsCommand;
    v19 = [(FCRefreshNotificationsForChannelsCommand *)&v25 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_channelIDs, a3);
      objc_storeStrong(&v20->_paidChannelIDs, a4);
      objc_storeStrong(&v20->_userID, a5);
      objc_storeStrong(&v20->_deviceToken, a6);
      objc_storeStrong(&v20->_storefrontID, a7);
      v20->_deviceDigestMode = a8;
    }

    self = v20;
    v18 = self;
  }

  return v18;
}

- (FCRefreshNotificationsForChannelsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"ChannelIDsKey"];
  v9 = [v5 decodeObjectOfClasses:v7 forKey:@"PaidChannelIDsKey"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v13 = [v5 decodeIntForKey:@"DigestModeKey"];

  v14 = [(FCRefreshNotificationsForChannelsCommand *)self initWithChannelIDs:v8 paidChannelIDs:v9 userID:v10 deviceToken:v11 storefrontID:v12 deviceDigestMode:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(FCRefreshNotificationsForChannelsCommand *)self channelIDs];
  [v9 encodeObject:v4 forKey:@"ChannelIDsKey"];

  v5 = [(FCRefreshNotificationsForChannelsCommand *)self paidChannelIDs];
  [v9 encodeObject:v5 forKey:@"PaidChannelIDsKey"];

  v6 = [(FCRefreshNotificationsForChannelsCommand *)self userID];
  [v9 encodeObject:v6 forKey:@"UserIDKey"];

  v7 = [(FCRefreshNotificationsForChannelsCommand *)self deviceToken];
  [v9 encodeObject:v7 forKey:@"DeviceTokenKey"];

  v8 = [(FCRefreshNotificationsForChannelsCommand *)self storefrontID];
  [v9 encodeObject:v8 forKey:@"StorefrontIDKey"];

  [v9 encodeInt:-[FCRefreshNotificationsForChannelsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v23 = a4;
  v8 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(FCRefreshNotificationsForChannelsCommand *)self channelIDs];
    v11 = [(FCRefreshNotificationsForChannelsCommand *)self paidChannelIDs];
    *buf = 138543618;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "refreshNotificationsCommand: executing command channelIDs: %{public}@ paidChannelIDs: %{public}@", buf, 0x16u);
  }

  v12 = [v7 notificationsEndpointConnection];
  v13 = [(FCRefreshNotificationsForChannelsCommand *)self channelIDs];
  v14 = [(FCRefreshNotificationsForChannelsCommand *)self paidChannelIDs];
  v15 = [(FCRefreshNotificationsForChannelsCommand *)self userID];
  v16 = [(FCRefreshNotificationsForChannelsCommand *)self deviceToken];
  v17 = [(FCRefreshNotificationsForChannelsCommand *)self storefrontID];
  v18 = [(FCRefreshNotificationsForChannelsCommand *)self deviceDigestMode];
  dispatch_get_global_queue(-2, 0);
  v19 = v22 = v7;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__FCRefreshNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v24[3] = &unk_1E7C38080;
  v25 = v23;
  v26 = self;
  v20 = v23;
  [v12 refreshNotificationsForChannelIDs:v13 paidChannelIDs:v14 userID:v15 deviceToken:v16 storefrontID:v17 deviceDigestMode:v18 callbackQueue:v19 completion:v24];

  v21 = *MEMORY[0x1E69E9840];
}

void __89__FCRefreshNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = FCPushNotificationsLog;
  if (a2)
  {
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "refreshNotificationsCommand: succeeded refreshing channels", &v12, 2u);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "refreshNotificationsCommand: failed to refresh notifications with error: %{public}@", &v12, 0xCu);
    }

    if ([v5 fc_isNetworkUnavailableError])
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = 1;
    }

    else
    {
      v10 = [v5 fc_shouldRetry];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      if (v10)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }
    }
  }

  [v7 command:v8 didFinishWithStatus:v9];

  v11 = *MEMORY[0x1E69E9840];
}

@end