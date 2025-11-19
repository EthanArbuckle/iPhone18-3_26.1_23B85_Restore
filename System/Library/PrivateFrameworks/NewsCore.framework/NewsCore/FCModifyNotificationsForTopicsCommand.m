@interface FCModifyNotificationsForTopicsCommand
- (BOOL)canCoalesceWithCommand:(id)a3;
- (FCModifyNotificationsForTopicsCommand)initWithCoder:(id)a3;
- (FCModifyNotificationsForTopicsCommand)initWithTopicIDsToAdd:(id)a3 topicIDsToRemove:(id)a4 withTopicGroupingID:(id)a5 fromChannelID:(id)a6 userID:(id)a7 deviceToken:(id)a8 storefrontID:(id)a9 deviceDigestMode:(int)a10;
- (void)coalesceWithCommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCModifyNotificationsForTopicsCommand

- (FCModifyNotificationsForTopicsCommand)initWithTopicIDsToAdd:(id)a3 topicIDsToRemove:(id)a4 withTopicGroupingID:(id)a5 fromChannelID:(id)a6 userID:(id)a7 deviceToken:(id)a8 storefrontID:(id)a9 deviceDigestMode:(int)a10
{
  v17 = a3;
  v18 = a4;
  v30 = a5;
  v29 = a6;
  obj = a7;
  v19 = a7;
  v28 = a8;
  v20 = a8;
  v21 = a9;
  v31 = v17;
  if ([v17 count])
  {
    if (!v19)
    {
      v22 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v23 = [v18 count];
    v22 = 0;
    if (!v19 || !v23)
    {
      goto LABEL_11;
    }
  }

  v22 = 0;
  if (v20 && v21)
  {
    v32.receiver = self;
    v32.super_class = FCModifyNotificationsForTopicsCommand;
    v24 = [(FCModifyNotificationsForTopicsCommand *)&v32 init];
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_topicIDsToAdd, a3);
      objc_storeStrong(&v25->_topicIDsToRemove, a4);
      objc_storeStrong(&v25->_topicGroupingID, a5);
      objc_storeStrong(&v25->_channelID, a6);
      objc_storeStrong(&v25->_userID, obj);
      objc_storeStrong(&v25->_deviceToken, v28);
      objc_storeStrong(&v25->_storefrontID, a9);
      v25->_deviceDigestMode = a10;
    }

    self = v25;
    v22 = self;
  }

LABEL_11:

  return v22;
}

- (FCModifyNotificationsForTopicsCommand)initWithCoder:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"TopicIDsToAddKey"];
  v8 = [v4 decodeObjectOfClasses:v6 forKey:@"TopicIDsToRemoveKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TopicGroupingID"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FromChannelIDKey"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v14 = [v4 decodeIntForKey:@"DigestModeKey"];

  LODWORD(v17) = v14;
  v15 = [(FCModifyNotificationsForTopicsCommand *)self initWithTopicIDsToAdd:v7 topicIDsToRemove:v8 withTopicGroupingID:v9 fromChannelID:v10 userID:v11 deviceToken:v12 storefrontID:v13 deviceDigestMode:v17];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
  [v11 encodeObject:v4 forKey:@"TopicIDsToAddKey"];

  v5 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
  [v11 encodeObject:v5 forKey:@"TopicIDsToRemoveKey"];

  v6 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
  [v11 encodeObject:v6 forKey:@"TopicGroupingID"];

  v7 = [(FCModifyNotificationsForTopicsCommand *)self channelID];
  [v11 encodeObject:v7 forKey:@"FromChannelIDKey"];

  v8 = [(FCModifyNotificationsForTopicsCommand *)self userID];
  [v11 encodeObject:v8 forKey:@"UserIDKey"];

  v9 = [(FCModifyNotificationsForTopicsCommand *)self deviceToken];
  [v11 encodeObject:v9 forKey:@"DeviceTokenKey"];

  v10 = [(FCModifyNotificationsForTopicsCommand *)self storefrontID];
  [v11 encodeObject:v10 forKey:@"StorefrontIDKey"];

  [v11 encodeInt:-[FCModifyNotificationsForTopicsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v42 = a4;
  v7 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: executing command", buf, 2u);
  }

  v8 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
  if ([v8 count])
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
    v11 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
    v12 = [v11 count] == 0;

    if (!v12)
    {
      v13 = FCPushNotificationsLog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
        v15 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
        *v72 = 138543618;
        v73 = v14;
        v74 = 2114;
        v75 = v15;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: adding topicIDs: %{public}@ groupingID: %{public}@", v72, 0x16u);
      }

      dispatch_group_enter(group);
      v16 = [v43 notificationsEndpointConnection];
      v17 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
      v18 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
      v19 = [(FCModifyNotificationsForTopicsCommand *)self channelID];
      v20 = [(FCModifyNotificationsForTopicsCommand *)self userID];
      v21 = [(FCModifyNotificationsForTopicsCommand *)self deviceToken];
      v22 = [(FCModifyNotificationsForTopicsCommand *)self storefrontID];
      v40 = [(FCModifyNotificationsForTopicsCommand *)self deviceDigestMode];
      v23 = dispatch_get_global_queue(-2, 0);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
      v56[3] = &unk_1E7C3B9B0;
      v58 = v70;
      v59 = buf;
      v57 = group;
      LODWORD(v39) = v40;
      [v16 subscribeNotificationsForTopicIDs:v17 withTopicGroupingID:v18 fromChannelID:v19 userID:v20 deviceToken:v21 storefrontID:v22 deviceDigestMode:v39 callbackQueue:v23 completion:v56];
    }

    v24 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
    v25 = [v24 count] == 0;

    if (!v25)
    {
      v26 = FCPushNotificationsLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
        v28 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
        *v72 = 138543618;
        v73 = v27;
        v74 = 2114;
        v75 = v28;
        _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForTopicsCommand: removing topicIDs: %{public}@ groupingID: %{public}@", v72, 0x16u);
      }

      dispatch_group_enter(group);
      v29 = [v43 notificationsEndpointConnection];
      v30 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
      v31 = [(FCModifyNotificationsForTopicsCommand *)self topicGroupingID];
      v32 = [(FCModifyNotificationsForTopicsCommand *)self channelID];
      v33 = [(FCModifyNotificationsForTopicsCommand *)self userID];
      v34 = [(FCModifyNotificationsForTopicsCommand *)self deviceToken];
      v35 = [(FCModifyNotificationsForTopicsCommand *)self storefrontID];
      v41 = [(FCModifyNotificationsForTopicsCommand *)self deviceDigestMode];
      v36 = dispatch_get_global_queue(-2, 0);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke_25;
      v52[3] = &unk_1E7C3B9B0;
      v54 = v68;
      v55 = v60;
      v53 = group;
      LODWORD(v39) = v41;
      [v29 unsubscribeNotificationsForTopicIDs:v30 withTopicGroupingID:v31 fromChannelID:v32 userID:v33 deviceToken:v34 storefrontID:v35 deviceDigestMode:v39 callbackQueue:v36 completion:v52];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__FCModifyNotificationsForTopicsCommand_executeWithContext_delegate_qualityOfService___block_invoke_26;
    block[3] = &unk_1E7C3B9D8;
    v48 = v70;
    v49 = v68;
    v46 = v42;
    v47 = self;
    v50 = buf;
    v51 = v60;
    dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v68, 8);
    _Block_object_dispose(v70, 8);

    goto LABEL_15;
  }

  v9 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
  v10 = [v9 count] == 0;

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

  [v42 command:self didFinishWithStatus:0];
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

- (BOOL)canCoalesceWithCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
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
    v8 = [(FCModifyNotificationsForTopicsCommand *)self channelID];
    v9 = [v7 channelID];
    v6 = [v8 isEqual:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coalesceWithCommand:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v8 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToAdd];
  [v7 addObjectsFromArray:v8];

  v9 = [v6 topicIDsToAdd];
  [v7 addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [(FCModifyNotificationsForTopicsCommand *)self topicIDsToRemove];
  [v10 addObjectsFromArray:v11];

  v12 = [v6 topicIDsToRemove];
  [v10 addObjectsFromArray:v12];

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

  v19 = [v7 allObjects];
  [(FCModifyNotificationsForTopicsCommand *)self setTopicIDsToAdd:v19];

  v20 = [v10 allObjects];
  [(FCModifyNotificationsForTopicsCommand *)self setTopicIDsToRemove:v20];

  v21 = *MEMORY[0x1E69E9840];
}

@end