@interface FCModifyNotificationsForMarketingCommand
- (FCModifyNotificationsForMarketingCommand)initWithCoder:(id)a3;
- (FCModifyNotificationsForMarketingCommand)initWithType:(int)a3 action:(int)a4 iTunesDSID:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCModifyNotificationsForMarketingCommand

- (FCModifyNotificationsForMarketingCommand)initWithType:(int)a3 action:(int)a4 iTunesDSID:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = FCModifyNotificationsForMarketingCommand;
  v9 = [(FCModifyNotificationsForMarketingCommand *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    dsid = v9->_dsid;
    v9->_dsid = v10;

    v9->_type = a3;
    v9->_action = a4;
  }

  return v9;
}

- (FCModifyNotificationsForMarketingCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"com.apple.news.modify_notifications_for_marketing_type_key"];
  v6 = [v5 intValue];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"com.apple.news.modify_notifications_for_marketing_action_key"];
  v8 = [v7 intValue];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"com.apple.news.modify_notifications_for_marketing_dsid_key"];

  v10 = [(FCModifyNotificationsForMarketingCommand *)self initWithType:v6 action:v8 iTunesDSID:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInt:{-[FCModifyNotificationsForMarketingCommand type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"com.apple.news.modify_notifications_for_marketing_type_key"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[FCModifyNotificationsForMarketingCommand action](self, "action")}];
  [v5 encodeObject:v7 forKey:@"com.apple.news.modify_notifications_for_marketing_action_key"];

  v8 = [(FCModifyNotificationsForMarketingCommand *)self dsid];
  [v5 encodeObject:v8 forKey:@"com.apple.news.modify_notifications_for_marketing_dsid_key"];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForMarketingCommand: executing command", buf, 2u);
  }

  v10 = dispatch_group_create();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 1;
  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__82;
  v31 = __Block_byref_object_dispose__82;
  v32 = 0;
  dispatch_group_enter(v10);
  v11 = [v7 notificationsEndpointConnection];
  v12 = [(FCModifyNotificationsForMarketingCommand *)self type];
  v13 = [(FCModifyNotificationsForMarketingCommand *)self action];
  v14 = [(FCModifyNotificationsForMarketingCommand *)self dsid];
  v15 = dispatch_get_global_queue(-2, 0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__FCModifyNotificationsForMarketingCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v23[3] = &unk_1E7C3B9B0;
  v25 = v33;
  v26 = buf;
  v16 = v10;
  v24 = v16;
  [v11 modifyMarketingSubscriptionWithType:v12 action:v13 dsid:v14 callbackQueue:v15 completion:v23];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__FCModifyNotificationsForMarketingCommand_executeWithContext_delegate_qualityOfService___block_invoke_9;
  block[3] = &unk_1E7C46490;
  v19 = v8;
  v20 = self;
  v21 = v33;
  v22 = buf;
  v17 = v8;
  dispatch_group_notify(v16, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v33, 8);
}

void __89__FCModifyNotificationsForMarketingCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, char a2, void *a3)
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
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "modifyNotificationsCommand: failed to modify Marketing Subscription with error: %{public}@", &v11, 0xCu);
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

uint64_t __89__FCModifyNotificationsForMarketingCommand_executeWithContext_delegate_qualityOfService___block_invoke_9(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "modifyNotificationsForMarketingCommand: succeeded opt in/out", v8, 2u);
    }

    return [*(a1 + 32) command:*(a1 + 40) didFinishWithStatus:0];
  }

  else
  {
    if ([*(*(*(a1 + 56) + 8) + 40) fc_isNetworkUnavailableError])
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 1;
    }

    else
    {
      v7 = [*(*(*(a1 + 56) + 8) + 40) fc_shouldRetry];
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v7)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }

    return [v4 command:v5 didFinishWithStatus:v6];
  }
}

@end