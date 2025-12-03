@interface FCModifyNotificationsForChannelsCommand
- (BOOL)canCoalesceWithCommand:(id)command;
- (FCModifyNotificationsForChannelsCommand)initWithChannelIDsToAdd:(id)add paidChannelIDsToAdd:(id)toAdd channelIDsToRemove:(id)remove userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode;
- (FCModifyNotificationsForChannelsCommand)initWithCoder:(id)coder;
- (void)coalesceWithCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCModifyNotificationsForChannelsCommand

- (FCModifyNotificationsForChannelsCommand)initWithChannelIDsToAdd:(id)add paidChannelIDsToAdd:(id)toAdd channelIDsToRemove:(id)remove userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode
{
  addCopy = add;
  toAddCopy = toAdd;
  removeCopy = remove;
  dCopy = d;
  tokenCopy = token;
  obj = iD;
  iDCopy = iD;
  v26 = addCopy;
  if ([addCopy count] || objc_msgSend(toAddCopy, "count"))
  {
    if (!dCopy)
    {
      selfCopy = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v24 = [removeCopy count];
    selfCopy = 0;
    if (!dCopy || !v24)
    {
      goto LABEL_10;
    }
  }

  selfCopy = 0;
  if (tokenCopy && iDCopy)
  {
    v29.receiver = self;
    v29.super_class = FCModifyNotificationsForChannelsCommand;
    v21 = [(FCModifyNotificationsForChannelsCommand *)&v29 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_channelIDsToAdd, add);
      objc_storeStrong(&v22->_paidChannelIDsToAdd, toAdd);
      objc_storeStrong(&v22->_channelIDsToRemove, remove);
      objc_storeStrong(&v22->_userID, d);
      objc_storeStrong(&v22->_deviceToken, token);
      objc_storeStrong(&v22->_storefrontID, obj);
      v22->_deviceDigestMode = mode;
    }

    self = v22;
    selfCopy = self;
  }

LABEL_10:

  return selfCopy;
}

- (FCModifyNotificationsForChannelsCommand)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ChannelIDsToAddKey"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"PaidChannelIDsToAddKey"];
  v10 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ChannelIDsToRemoveKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserIDKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceTokenKey"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StorefrontIDKey"];
  v14 = [coderCopy decodeIntForKey:@"DigestModeKey"];

  LODWORD(v17) = v14;
  v15 = [(FCModifyNotificationsForChannelsCommand *)self initWithChannelIDsToAdd:v8 paidChannelIDsToAdd:v9 channelIDsToRemove:v10 userID:v11 deviceToken:v12 storefrontID:v13 deviceDigestMode:v17];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelIDsToAdd = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
  [coderCopy encodeObject:channelIDsToAdd forKey:@"ChannelIDsToAddKey"];

  paidChannelIDsToAdd = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
  [coderCopy encodeObject:paidChannelIDsToAdd forKey:@"PaidChannelIDsToAddKey"];

  channelIDsToRemove = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
  [coderCopy encodeObject:channelIDsToRemove forKey:@"ChannelIDsToRemoveKey"];

  userID = [(FCModifyNotificationsForChannelsCommand *)self userID];
  [coderCopy encodeObject:userID forKey:@"UserIDKey"];

  deviceToken = [(FCModifyNotificationsForChannelsCommand *)self deviceToken];
  [coderCopy encodeObject:deviceToken forKey:@"DeviceTokenKey"];

  storefrontID = [(FCModifyNotificationsForChannelsCommand *)self storefrontID];
  [coderCopy encodeObject:storefrontID forKey:@"StorefrontIDKey"];

  [coderCopy encodeInt:-[FCModifyNotificationsForChannelsCommand deviceDigestMode](self forKey:{"deviceDigestMode"), @"DigestModeKey"}];
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  v73 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  v7 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: executing command", buf, 2u);
  }

  channelIDsToAdd = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
  if ([channelIDsToAdd count])
  {
    goto LABEL_6;
  }

  paidChannelIDsToAdd = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
  if ([paidChannelIDsToAdd count])
  {

LABEL_6:
    goto LABEL_7;
  }

  channelIDsToRemove = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
  v37 = [channelIDsToRemove count] == 0;

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
    channelIDsToAdd2 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
    if ([channelIDsToAdd2 count])
    {
    }

    else
    {
      paidChannelIDsToAdd2 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
      v13 = [paidChannelIDsToAdd2 count] == 0;

      if (v13)
      {
LABEL_13:
        channelIDsToRemove2 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
        v25 = [channelIDsToRemove2 count] == 0;

        if (!v25)
        {
          v26 = FCPushNotificationsLog;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            channelIDsToRemove3 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
            *v69 = 138543362;
            v70 = channelIDsToRemove3;
            _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: removing channelIDs: %{public}@", v69, 0xCu);
          }

          dispatch_group_enter(v10);
          notificationsEndpointConnection = [contextCopy notificationsEndpointConnection];
          channelIDsToRemove4 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
          userID = [(FCModifyNotificationsForChannelsCommand *)self userID];
          deviceToken = [(FCModifyNotificationsForChannelsCommand *)self deviceToken];
          storefrontID = [(FCModifyNotificationsForChannelsCommand *)self storefrontID];
          deviceDigestMode = [(FCModifyNotificationsForChannelsCommand *)self deviceDigestMode];
          v34 = dispatch_get_global_queue(-2, 0);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke_22;
          v49[3] = &unk_1E7C3B9B0;
          v51 = v65;
          v52 = v57;
          v50 = v10;
          [notificationsEndpointConnection unsubscribeNotificationsForChannelIDs:channelIDsToRemove4 userID:userID deviceToken:deviceToken storefrontID:storefrontID deviceDigestMode:deviceDigestMode callbackQueue:v34 completion:v49];
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke_23;
        block[3] = &unk_1E7C3B9D8;
        v45 = v67;
        v46 = v65;
        v43 = delegateCopy;
        selfCopy = self;
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
      channelIDsToAdd3 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
      paidChannelIDsToAdd3 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
      *v69 = 138543618;
      v70 = channelIDsToAdd3;
      v71 = 2114;
      v72 = paidChannelIDsToAdd3;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForChannelsCommand: adding channelIDs: %{public}@ paidChannelIDs: %{public}@", v69, 0x16u);
    }

    dispatch_group_enter(v10);
    notificationsEndpointConnection2 = [contextCopy notificationsEndpointConnection];
    channelIDsToAdd4 = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
    paidChannelIDsToAdd4 = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
    userID2 = [(FCModifyNotificationsForChannelsCommand *)self userID];
    deviceToken2 = [(FCModifyNotificationsForChannelsCommand *)self deviceToken];
    storefrontID2 = [(FCModifyNotificationsForChannelsCommand *)self storefrontID];
    deviceDigestMode2 = [(FCModifyNotificationsForChannelsCommand *)self deviceDigestMode];
    v23 = dispatch_get_global_queue(-2, 0);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __88__FCModifyNotificationsForChannelsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
    v53[3] = &unk_1E7C3B9B0;
    v55 = v67;
    v56 = buf;
    v54 = v10;
    [notificationsEndpointConnection2 subscribeNotificationsForChannelIDs:channelIDsToAdd4 paidChannelIDs:paidChannelIDsToAdd4 userID:userID2 deviceToken:deviceToken2 storefrontID:storefrontID2 deviceDigestMode:deviceDigestMode2 callbackQueue:v23 completion:v53];

    goto LABEL_13;
  }

  v38 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_INFO, "modifyNotificationsForChannelsCommand: no channels to add or remove", buf, 2u);
  }

  [delegateCopy command:self didFinishWithStatus:0];
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

- (BOOL)canCoalesceWithCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)coalesceWithCommand:(id)command
{
  v32 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  objc_opt_class();
  v26 = commandCopy;
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
  channelIDsToAdd = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToAdd];
  [v7 addObjectsFromArray:channelIDsToAdd];

  channelIDsToAdd2 = [v6 channelIDsToAdd];
  [v7 addObjectsFromArray:channelIDsToAdd2];

  v10 = [MEMORY[0x1E695DFA8] set];
  paidChannelIDsToAdd = [(FCModifyNotificationsForChannelsCommand *)self paidChannelIDsToAdd];
  [v10 addObjectsFromArray:paidChannelIDsToAdd];

  paidChannelIDsToAdd2 = [v6 paidChannelIDsToAdd];
  [v10 addObjectsFromArray:paidChannelIDsToAdd2];

  v13 = [MEMORY[0x1E695DFA8] set];
  channelIDsToRemove = [(FCModifyNotificationsForChannelsCommand *)self channelIDsToRemove];
  [v13 addObjectsFromArray:channelIDsToRemove];

  channelIDsToRemove2 = [v6 channelIDsToRemove];
  [v13 addObjectsFromArray:channelIDsToRemove2];

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

  allObjects = [v7 allObjects];
  [(FCModifyNotificationsForChannelsCommand *)self setChannelIDsToAdd:allObjects];

  allObjects2 = [v10 allObjects];
  [(FCModifyNotificationsForChannelsCommand *)self setPaidChannelIDsToAdd:allObjects2];

  allObjects3 = [v13 allObjects];
  [(FCModifyNotificationsForChannelsCommand *)self setChannelIDsToRemove:allObjects3];

  v25 = *MEMORY[0x1E69E9840];
}

@end