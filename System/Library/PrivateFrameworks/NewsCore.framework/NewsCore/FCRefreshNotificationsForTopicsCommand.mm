@interface FCRefreshNotificationsForTopicsCommand
- (FCRefreshNotificationsForTopicsCommand)initWithCoder:(id)coder;
- (FCRefreshNotificationsForTopicsCommand)initWithTopicsIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCRefreshNotificationsForTopicsCommand

- (FCRefreshNotificationsForTopicsCommand)initWithTopicsIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  obj = storefrontID;
  storefrontIDCopy = storefrontID;
  v19 = storefrontIDCopy;
  selfCopy = 0;
  if (userIDCopy && tokenCopy && storefrontIDCopy)
  {
    v28.receiver = self;
    v28.super_class = FCRefreshNotificationsForTopicsCommand;
    v21 = [(FCRefreshNotificationsForTopicsCommand *)&v28 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_topicIDs, ds);
      objc_storeStrong(&v22->_topicGroupingID, d);
      objc_storeStrong(&v22->_channelID, iD);
      objc_storeStrong(&v22->_userID, userID);
      objc_storeStrong(&v22->_deviceToken, token);
      objc_storeStrong(&v22->_storefrontID, obj);
      v22->_deviceDigestMode = mode;
    }

    self = v22;
    selfCopy = self;
  }

  return selfCopy;
}

- (FCRefreshNotificationsForTopicsCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"TopicIDsKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TopicGroupingID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FromChannelIDKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v14 = [coderCopy decodeIntForKey:@"DigestModeKey"];

  LODWORD(v17) = v14;
  v15 = [(FCRefreshNotificationsForTopicsCommand *)self initWithTopicsIDs:v8 withTopicGroupingID:v9 fromChannelID:v10 userID:v11 deviceToken:v12 storefrontID:v13 deviceDigestMode:v17];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topicIDs = [(FCRefreshNotificationsForTopicsCommand *)self topicIDs];
  [coderCopy encodeObject:topicIDs forKey:@"TopicIDsKey"];

  topicGroupingID = [(FCRefreshNotificationsForTopicsCommand *)self topicGroupingID];
  [coderCopy encodeObject:topicGroupingID forKey:@"TopicGroupingID"];

  channelID = [(FCRefreshNotificationsForTopicsCommand *)self channelID];
  [coderCopy encodeObject:channelID forKey:@"FromChannelIDKey"];

  userID = [(FCRefreshNotificationsForTopicsCommand *)self userID];
  [coderCopy encodeObject:userID forKey:@"UserIDKey"];

  deviceToken = [(FCRefreshNotificationsForTopicsCommand *)self deviceToken];
  [coderCopy encodeObject:deviceToken forKey:@"DeviceTokenKey"];

  storefrontID = [(FCRefreshNotificationsForTopicsCommand *)self storefrontID];
  [coderCopy encodeObject:storefrontID forKey:@"StorefrontIDKey"];

  [coderCopy encodeInt:-[FCRefreshNotificationsForTopicsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v8 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    topicIDs = [(FCRefreshNotificationsForTopicsCommand *)self topicIDs];
    topicGroupingID = [(FCRefreshNotificationsForTopicsCommand *)self topicGroupingID];
    *buf = 138543618;
    v29 = topicIDs;
    v30 = 2114;
    v31 = topicGroupingID;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "refreshNotificationsCommand: executing command topicIDs: %{public}@ groupingID: %{public}@", buf, 0x16u);
  }

  notificationsEndpointConnection = [contextCopy notificationsEndpointConnection];
  topicIDs2 = [(FCRefreshNotificationsForTopicsCommand *)self topicIDs];
  topicGroupingID2 = [(FCRefreshNotificationsForTopicsCommand *)self topicGroupingID];
  channelID = [(FCRefreshNotificationsForTopicsCommand *)self channelID];
  userID = [(FCRefreshNotificationsForTopicsCommand *)self userID];
  deviceToken = [(FCRefreshNotificationsForTopicsCommand *)self deviceToken];
  storefrontID = [(FCRefreshNotificationsForTopicsCommand *)self storefrontID];
  v24 = contextCopy;
  deviceDigestMode = [(FCRefreshNotificationsForTopicsCommand *)self deviceDigestMode];
  v19 = dispatch_get_global_queue(-2, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__FCRefreshNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v26[3] = &unk_1E7C38080;
  v26[4] = self;
  v27 = delegateCopy;
  v20 = delegateCopy;
  LODWORD(v22) = deviceDigestMode;
  [notificationsEndpointConnection refreshNotificationsForTopicIDs:topicIDs2 withTopicGroupingID:topicGroupingID2 fromChannelID:channelID userID:userID deviceToken:deviceToken storefrontID:storefrontID deviceDigestMode:v22 callbackQueue:v19 completion:v26];

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