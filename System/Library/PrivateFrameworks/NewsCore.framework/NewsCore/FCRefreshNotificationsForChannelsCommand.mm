@interface FCRefreshNotificationsForChannelsCommand
- (FCRefreshNotificationsForChannelsCommand)initWithChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode;
- (FCRefreshNotificationsForChannelsCommand)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCRefreshNotificationsForChannelsCommand

- (FCRefreshNotificationsForChannelsCommand)initWithChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode
{
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  v17 = iDCopy;
  selfCopy = 0;
  if (dCopy && tokenCopy && iDCopy)
  {
    v25.receiver = self;
    v25.super_class = FCRefreshNotificationsForChannelsCommand;
    v19 = [(FCRefreshNotificationsForChannelsCommand *)&v25 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_channelIDs, ds);
      objc_storeStrong(&v20->_paidChannelIDs, iDs);
      objc_storeStrong(&v20->_userID, d);
      objc_storeStrong(&v20->_deviceToken, token);
      objc_storeStrong(&v20->_storefrontID, iD);
      v20->_deviceDigestMode = mode;
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

- (FCRefreshNotificationsForChannelsCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ChannelIDsKey"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"PaidChannelIDsKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v13 = [coderCopy decodeIntForKey:@"DigestModeKey"];

  v14 = [(FCRefreshNotificationsForChannelsCommand *)self initWithChannelIDs:v8 paidChannelIDs:v9 userID:v10 deviceToken:v11 storefrontID:v12 deviceDigestMode:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelIDs = [(FCRefreshNotificationsForChannelsCommand *)self channelIDs];
  [coderCopy encodeObject:channelIDs forKey:@"ChannelIDsKey"];

  paidChannelIDs = [(FCRefreshNotificationsForChannelsCommand *)self paidChannelIDs];
  [coderCopy encodeObject:paidChannelIDs forKey:@"PaidChannelIDsKey"];

  userID = [(FCRefreshNotificationsForChannelsCommand *)self userID];
  [coderCopy encodeObject:userID forKey:@"UserIDKey"];

  deviceToken = [(FCRefreshNotificationsForChannelsCommand *)self deviceToken];
  [coderCopy encodeObject:deviceToken forKey:@"DeviceTokenKey"];

  storefrontID = [(FCRefreshNotificationsForChannelsCommand *)self storefrontID];
  [coderCopy encodeObject:storefrontID forKey:@"StorefrontIDKey"];

  [coderCopy encodeInt:-[FCRefreshNotificationsForChannelsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v8 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    channelIDs = [(FCRefreshNotificationsForChannelsCommand *)self channelIDs];
    paidChannelIDs = [(FCRefreshNotificationsForChannelsCommand *)self paidChannelIDs];
    *buf = 138543618;
    v28 = channelIDs;
    v29 = 2114;
    v30 = paidChannelIDs;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "refreshNotificationsCommand: executing command channelIDs: %{public}@ paidChannelIDs: %{public}@", buf, 0x16u);
  }

  notificationsEndpointConnection = [contextCopy notificationsEndpointConnection];
  channelIDs2 = [(FCRefreshNotificationsForChannelsCommand *)self channelIDs];
  paidChannelIDs2 = [(FCRefreshNotificationsForChannelsCommand *)self paidChannelIDs];
  userID = [(FCRefreshNotificationsForChannelsCommand *)self userID];
  deviceToken = [(FCRefreshNotificationsForChannelsCommand *)self deviceToken];
  storefrontID = [(FCRefreshNotificationsForChannelsCommand *)self storefrontID];
  deviceDigestMode = [(FCRefreshNotificationsForChannelsCommand *)self deviceDigestMode];
  dispatch_get_global_queue(-2, 0);
  v19 = v22 = contextCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __89__FCRefreshNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v24[3] = &unk_1E7C38080;
  v25 = delegateCopy;
  selfCopy = self;
  v20 = delegateCopy;
  [notificationsEndpointConnection refreshNotificationsForChannelIDs:channelIDs2 paidChannelIDs:paidChannelIDs2 userID:userID deviceToken:deviceToken storefrontID:storefrontID deviceDigestMode:deviceDigestMode callbackQueue:v19 completion:v24];

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