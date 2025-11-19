@interface FCModifyNotificationsForChannelsCommand
- (BOOL)canCoalesceWithCommand:(id)a3;
- (FCModifyNotificationsForChannelsCommand)initWithChannelIDsToAdd:(id)a3 paidChannelIDsToAdd:(id)a4 channelIDsToRemove:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9;
- (FCModifyNotificationsForChannelsCommand)initWithCoder:(id)a3;
- (void)coalesceWithCommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCModifyNotificationsForChannelsCommand

- (FCModifyNotificationsForChannelsCommand)initWithChannelIDsToAdd:(id)a3 paidChannelIDsToAdd:(id)a4 channelIDsToRemove:(id)a5 userID:(id)a6 deviceToken:(id)a7 storefrontID:(id)a8 deviceDigestMode:(int)a9
{
  v16 = a3;
  v28 = a4;
  v27 = a5;
  v17 = a6;
  v18 = a7;
  obj = a8;
  v19 = a8;
  v26 = v16;
  if ([v16 count] || objc_msgSend(v28, "count"))
  {
    if (!v17)
    {
      v20 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v24 = [v27 count];
    v20 = 0;
    if (!v17 || !v24)
    {
      goto LABEL_10;
    }
  }

  v20 = 0;
  if (v18 && v19)
  {
    v29.receiver = self;
    v29.super_class = FCModifyNotificationsForChannelsCommand;
    v21 = [(FCModifyNotificationsForChannelsCommand *)&v29 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_channelIDsToAdd, a3);
      objc_storeStrong(&v22->_paidChannelIDsToAdd, a4);
      objc_storeStrong(&v22->_channelIDsToRemove, a5);
      objc_storeStrong(&v22->_userID, a6);
      objc_storeStrong(&v22->_deviceToken, a7);
      objc_storeStrong(&v22->_storefrontID, obj);
      v22->_deviceDigestMode = a9;
    }

    self = v22;
    v20 = self;
  }

LABEL_10:

  return v20;
}

- (FCModifyNotificationsForChannelsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"ChannelIDsToAddKey"];
  v9 = [v5 decodeObjectOfClasses:v7 forKey:@"PaidChannelIDsToAddKey"];
  v10 = [v5 decodeObjectOfClasses:v7 forKey:@"ChannelIDsToRemoveKey"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v14 = [v5 decodeIntForKey:@"DigestModeKey"];

  LODWORD(v17) = v14;
  v15 = [(FCModifyNotificationsForChannelsCommand *)self initWithChannelIDsToAdd:v8 paidChannelIDsToAdd:v9 channelIDsToRemove:v10 userID:v11 deviceToken:v12 storefrontID:v13 deviceDigestMode:v17];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
  [v10 encodeObject:v4 forKey:@"ChannelIDsToAddKey"];

  v5 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
  [v10 encodeObject:v5 forKey:@"PaidChannelIDsToAddKey"];

  v6 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
  [v10 encodeObject:v6 forKey:@"ChannelIDsToRemoveKey"];

  v7 = [(FCModifyNotificationsForChannelsCommand *)self userID];
  [v10 encodeObject:v7 forKey:@"UserIDKey"];

  v8 = [(FCModifyNotificationsForChannelsCommand *)self deviceToken];
  [v10 encodeObject:v8 forKey:@"DeviceTokenKey"];

  v9 = [(FCModifyNotificationsForChannelsCommand *)self storefrontID];
  [v10 encodeObject:v9 forKey:@"StorefrontIDKey"];

  [v10 encodeInt:-[FCModifyNotificationsForChannelsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v40 = a4;
  v7 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: executing command", buf, 2u);
  }

  v8 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
  if ([v8 count])
  {
    goto LABEL_6;
  }

  v9 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
  if ([v9 count])
  {

LABEL_6:
    goto LABEL_7;
  }

  v36 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
  v37 = [v36 count] == 0;

  if (!v37)
  {
LABEL_7:
    v10 = dispatch_group_create();
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 1;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2020000000;
    v66 = 1;
    *buf = 0;
    v60 = buf;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__24;
    v63 = __Block_byref_object_dispose__24;
    v64 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = __Block_byref_object_copy__24;
    v57[4] = __Block_byref_object_dispose__24;
    v58 = 0;
    v11 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
    if ([v11 count])
    {
    }

    else
    {
      v12 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
      v13 = [v12 count] == 0;

      if (v13)
      {
LABEL_13:
        v24 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
        v25 = [v24 count] == 0;

        if (!v25)
        {
          v26 = FCPushNotificationsLog;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
            *v69 = 138543362;
            v70 = v27;
            _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: removing channelIDs: %{public}@", v69, 0xCu);
          }

          dispatch_group_enter(v10);
          v28 = [v41 notificationsEndpointConnection];
          v29 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
          v30 = [(FCModifyNotificationsForChannelsCommand *)self userID];
          v31 = [(FCModifyNotificationsForChannelsCommand *)self deviceToken];
          v32 = [(FCModifyNotificationsForChannelsCommand *)self storefrontID];
          v33 = [(FCModifyNotificationsForChannelsCommand *)self deviceDigestMode];
          v34 = dispatch_get_global_queue(-2, 0);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke_22;
          v49[3] = &unk_1E7C3B9B0;
          v51 = v65;
          v52 = v57;
          v50 = v10;
          [v28 unsubscribeNotificationsForChannelIDs:v29 userID:v30 deviceToken:v31 storefrontID:v32 deviceDigestMode:v33 callbackQueue:v34 completion:v49];
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke_23;
        block[3] = &unk_1E7C3B9D8;
        v45 = v67;
        v46 = v65;
        v43 = v40;
        v44 = self;
        v47 = buf;
        v48 = v57;
        dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

        _Block_object_dispose(v57, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(v65, 8);
        _Block_object_dispose(v67, 8);

        goto LABEL_18;
      }
    }

    v14 = FCPushNotificationsLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
      v16 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
      *v69 = 138543618;
      v70 = v15;
      v71 = 2114;
      v72 = v16;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: adding channelIDs: %{public}@ paidChannelIDs: %{public}@", v69, 0x16u);
    }

    dispatch_group_enter(v10);
    v17 = [v41 notificationsEndpointConnection];
    v18 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
    v19 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
    v20 = [(FCModifyNotificationsForChannelsCommand *)self userID];
    v21 = [(FCModifyNotificationsForChannelsCommand *)self deviceToken];
    v22 = [(FCModifyNotificationsForChannelsCommand *)self storefrontID];
    v39 = [(FCModifyNotificationsForChannelsCommand *)self deviceDigestMode];
    v23 = dispatch_get_global_queue(-2, 0);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
    v53[3] = &unk_1E7C3B9B0;
    v55 = v67;
    v56 = buf;
    v54 = v10;
    [v17 subscribeNotificationsForChannelIDs:v18 paidChannelIDs:v19 userID:v20 deviceToken:v21 storefrontID:v22 deviceDigestMode:v39 callbackQueue:v23 completion:v53];

    goto LABEL_13;
  }

  v38 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_INFO, "modifyNotificationsForChannelsCommand: no channels to add or remove", buf, 2u);
  }

  [v40 command:self didFinishWithStatus:0];
LABEL_18:

  v35 = *MEMORY[0x1E69E9840];
}

void __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, char a2, void *a3)
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
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "modifyNotificationsForChannelsCommand: failed to add channels with error: %{public}@", &v11, 0xCu);
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

void __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke_22(uint64_t a1, char a2, void *a3)
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
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "modifyNotificationsForChannelsCommand: failed to remove channels with error: %{public}@", &v11, 0xCu);
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

uint64_t __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke_23(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: succeeded adding/removing channels", v7, 2u);
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
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)coalesceWithCommand:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v26 = v4;
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
  v8 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
  [v7 addObjectsFromArray:v8];

  v9 = [v6 channelIDsToAdd];
  [v7 addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
  [v10 addObjectsFromArray:v11];

  v12 = [v6 paidChannelIDsToAdd];
  [v10 addObjectsFromArray:v12];

  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
  [v13 addObjectsFromArray:v14];

  v15 = [v6 channelIDsToRemove];
  [v13 addObjectsFromArray:v15];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [v13 copy];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        if ([v7 containsObject:v21])
        {
          [v7 removeObject:v21];
          [v13 removeObject:v21];
        }

        if ([v10 containsObject:v21])
        {
          [v10 removeObject:v21];
          [v13 removeObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = [v7 allObjects];
  [(FCModifyNotificationsForChannelsCommand *)self setChannelIDsToAdd:v22];

  v23 = [v10 allObjects];
  [(FCModifyNotificationsForChannelsCommand *)self setPaidChannelIDsToAdd:v23];

  v24 = [v13 allObjects];
  [(FCModifyNotificationsForChannelsCommand *)self setChannelIDsToRemove:v24];

  v25 = *MEMORY[0x1E69E9840];
}

@end