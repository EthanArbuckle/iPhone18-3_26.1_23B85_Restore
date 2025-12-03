@interface FCModifyNotificationsForTopicsCommand
- (BOOL)canCoalesceWithCommand:(id)command;
- (FCModifyNotificationsForTopicsCommand)initWithCoder:(id)coder;
- (FCModifyNotificationsForTopicsCommand)initWithTopicIDsToAdd:(id)add topicIDsToRemove:(id)remove withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)self0;
- (void)coalesceWithCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCModifyNotificationsForTopicsCommand

- (FCModifyNotificationsForTopicsCommand)initWithTopicIDsToAdd:(id)add topicIDsToRemove:(id)remove withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)self0
{
  addCopy = add;
  removeCopy = remove;
  dCopy = d;
  iDCopy = iD;
  obj = userID;
  userIDCopy = userID;
  tokenCopy = token;
  tokenCopy2 = token;
  storefrontIDCopy = storefrontID;
  v31 = addCopy;
  if ([addCopy count])
  {
    if (!userIDCopy)
    {
      selfCopy = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v23 = [removeCopy count];
    selfCopy = 0;
    if (!userIDCopy || !v23)
    {
      goto LABEL_11;
    }
  }

  selfCopy = 0;
  if (tokenCopy2 && storefrontIDCopy)
  {
    v32.receiver = self;
    v32.super_class = FCModifyNotificationsForTopicsCommand;
    v24 = [(FCModifyNotificationsForTopicsCommand *)&v32 init];
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_topicIDsToAdd, add);
      objc_storeStrong(&v25->_topicIDsToRemove, remove);
      objc_storeStrong(&v25->_topicGroupingID, d);
      objc_storeStrong(&v25->_channelID, iD);
      objc_storeStrong(&v25->_userID, obj);
      objc_storeStrong(&v25->_deviceToken, tokenCopy);
      objc_storeStrong(&v25->_storefrontID, storefrontID);
      v25->_deviceDigestMode = mode;
    }

    self = v25;
    selfCopy = self;
  }

LABEL_11:

  return selfCopy;
}

- (FCModifyNotificationsForTopicsCommand)initWithCoder:(id)coder
{
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"TopicIDsToAddKey"];
  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"TopicIDsToRemoveKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TopicGroupingID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FromChannelIDKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v14 = [coderCopy decodeIntForKey:@"DigestModeKey"];

  LODWORD(v17) = v14;
  v15 = [(FCModifyNotificationsForTopicsCommand *)self initWithTopicIDsToAdd:v7 topicIDsToRemove:v8 withTopicGroupingID:v9 fromChannelID:v10 userID:v11 deviceToken:v12 storefrontID:v13 deviceDigestMode:v17];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topicIDsToAdd = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
  [coderCopy encodeObject:topicIDsToAdd forKey:@"TopicIDsToAddKey"];

  topicIDsToRemove = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
  [coderCopy encodeObject:topicIDsToRemove forKey:@"TopicIDsToRemoveKey"];

  topicGroupingID = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
  [coderCopy encodeObject:topicGroupingID forKey:@"TopicGroupingID"];

  channelID = [(FCModifyNotificationsForTopicsCommand *)self channelID];
  [coderCopy encodeObject:channelID forKey:@"FromChannelIDKey"];

  userID = [(FCModifyNotificationsForTopicsCommand *)self userID];
  [coderCopy encodeObject:userID forKey:@"UserIDKey"];

  deviceToken = [(FCModifyNotificationsForTopicsCommand *)self deviceToken];
  [coderCopy encodeObject:deviceToken forKey:@"DeviceTokenKey"];

  storefrontID = [(FCModifyNotificationsForTopicsCommand *)self storefrontID];
  [coderCopy encodeObject:storefrontID forKey:@"StorefrontIDKey"];

  [coderCopy encodeInt:-[FCModifyNotificationsForTopicsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  v76 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v7 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: executing command", buf, 2u);
  }

  topicIDsToAdd = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
  if ([topicIDsToAdd count])
  {

LABEL_6:
    group = dispatch_group_create();
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v71 = 1;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 1;
    *buf = 0;
    v63 = buf;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__83;
    v66 = __Block_byref_object_dispose__83;
    v67 = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__83;
    v60[4] = __Block_byref_object_dispose__83;
    v61 = 0;
    topicIDsToAdd2 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
    v12 = [topicIDsToAdd2 count] == 0;

    if (!v12)
    {
      v13 = FCPushNotificationsLog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        topicIDsToAdd3 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
        topicGroupingID = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
        *v72 = 138543618;
        v73 = topicIDsToAdd3;
        v74 = 2114;
        v75 = topicGroupingID;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: adding topicIDs: %{public}@ groupingID: %{public}@", v72, 0x16u);
      }

      dispatch_group_enter(group);
      notificationsEndpointConnection = [contextCopy notificationsEndpointConnection];
      topicIDsToAdd4 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
      topicGroupingID2 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
      channelID = [(FCModifyNotificationsForTopicsCommand *)self channelID];
      userID = [(FCModifyNotificationsForTopicsCommand *)self userID];
      deviceToken = [(FCModifyNotificationsForTopicsCommand *)self deviceToken];
      storefrontID = [(FCModifyNotificationsForTopicsCommand *)self storefrontID];
      deviceDigestMode = [(FCModifyNotificationsForTopicsCommand *)self deviceDigestMode];
      v23 = dispatch_get_global_queue(-2, 0);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
      v56[3] = &unk_1E7C3B9B0;
      v58 = v70;
      v59 = buf;
      v57 = group;
      LODWORD(v39) = deviceDigestMode;
      [notificationsEndpointConnection subscribeNotificationsForTopicIDs:topicIDsToAdd4 withTopicGroupingID:topicGroupingID2 fromChannelID:channelID userID:userID deviceToken:deviceToken storefrontID:storefrontID deviceDigestMode:v39 callbackQueue:v23 completion:v56];
    }

    topicIDsToRemove = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
    v25 = [topicIDsToRemove count] == 0;

    if (!v25)
    {
      v26 = FCPushNotificationsLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        topicIDsToRemove2 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
        topicGroupingID3 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
        *v72 = 138543618;
        v73 = topicIDsToRemove2;
        v74 = 2114;
        v75 = topicGroupingID3;
        _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: removing topicIDs: %{public}@ groupingID: %{public}@", v72, 0x16u);
      }

      dispatch_group_enter(group);
      notificationsEndpointConnection2 = [contextCopy notificationsEndpointConnection];
      topicIDsToRemove3 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
      topicGroupingID4 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
      channelID2 = [(FCModifyNotificationsForTopicsCommand *)self channelID];
      userID2 = [(FCModifyNotificationsForTopicsCommand *)self userID];
      deviceToken2 = [(FCModifyNotificationsForTopicsCommand *)self deviceToken];
      storefrontID2 = [(FCModifyNotificationsForTopicsCommand *)self storefrontID];
      deviceDigestMode2 = [(FCModifyNotificationsForTopicsCommand *)self deviceDigestMode];
      v36 = dispatch_get_global_queue(-2, 0);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke_25;
      v52[3] = &unk_1E7C3B9B0;
      v54 = v68;
      v55 = v60;
      v53 = group;
      LODWORD(v39) = deviceDigestMode2;
      [notificationsEndpointConnection2 unsubscribeNotificationsForTopicIDs:topicIDsToRemove3 withTopicGroupingID:topicGroupingID4 fromChannelID:channelID2 userID:userID2 deviceToken:deviceToken2 storefrontID:storefrontID2 deviceDigestMode:v39 callbackQueue:v36 completion:v52];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke_26;
    block[3] = &unk_1E7C3B9D8;
    v48 = v70;
    v49 = v68;
    v46 = delegateCopy;
    selfCopy = self;
    v50 = buf;
    v51 = v60;
    dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v68, 8);
    _Block_object_dispose(v70, 8);

    goto LABEL_15;
  }

  topicIDsToRemove4 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
  v10 = [topicIDsToRemove4 count] == 0;

  if (!v10)
  {
    goto LABEL_6;
  }

  v38 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_INFO, "modifyNotificationsForTopicsCommand: no topics to add or remove", buf, 2u);
  }

  [delegateCopy command:self didFinishWithStatus:0];
LABEL_15:

  v37 = *MEMORY[0x1E69E9840];
}

void __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "modifyNotificationsForTopicsCommand: failed to add topics with error: %{public}@", &v11, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
  v10 = *MEMORY[0x1E69E9840];
}

void __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "modifyNotificationsForTopicsCommand: failed to remove topics with error: %{public}@", &v11, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke_26(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: succeeded adding/removing topics", v7, 2u);
    }

    return [*(a1 + 32) command:*(a1 + 40) didFinishWithStatus:0];
  }

  else
  {
    if (([*(*(*(a1 + 64) + 8) + 40) fc_isNetworkUnavailableError] & 1) != 0 || objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "fc_isNetworkUnavailableError"))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 1;
    }

    else if (([*(*(*(a1 + 64) + 8) + 40) fc_shouldRetry] & 1) != 0 || objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "fc_shouldRetry"))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 2;
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 3;
    }

    return [v4 command:v5 didFinishWithStatus:v6];
  }
}

- (BOOL)canCoalesceWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (commandCopy)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = commandCopy;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;
    channelID = [(FCModifyNotificationsForTopicsCommand *)self channelID];
    channelID2 = [v7 channelID];
    v6 = [channelID isEqual:channelID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coalesceWithCommand:(id)command
{
  v27 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  objc_opt_class();
  if (commandCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = commandCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [MEMORY[0x1E695DFA8] set];
  topicIDsToAdd = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
  [v7 addObjectsFromArray:topicIDsToAdd];

  topicIDsToAdd2 = [v6 topicIDsToAdd];
  [v7 addObjectsFromArray:topicIDsToAdd2];

  v10 = [MEMORY[0x1E695DFA8] set];
  topicIDsToRemove = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
  [v10 addObjectsFromArray:topicIDsToRemove];

  topicIDsToRemove2 = [v6 topicIDsToRemove];
  [v10 addObjectsFromArray:topicIDsToRemove2];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v10 copy];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v7 containsObject:v18])
        {
          [v7 removeObject:v18];
          [v10 removeObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  allObjects = [v7 allObjects];
  [(FCModifyNotificationsForTopicsCommand *)self setTopicIDsToAdd:allObjects];

  allObjects2 = [v10 allObjects];
  [(FCModifyNotificationsForTopicsCommand *)self setTopicIDsToRemove:allObjects2];

  v21 = *MEMORY[0x1E69E9840];
}

@end