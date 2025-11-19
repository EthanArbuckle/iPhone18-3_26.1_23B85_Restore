@interface LACDTONotificationManager
- (LACDTONotificationManager)initWithReplyQueue:(id)a3;
- (LACDTONotificationManager)initWithReplyQueue:(id)a3 notificationFactory:(id)a4;
- (LACDTONotificationManagerDelegate)delegate;
- (id)_securityDelayManager;
- (void)cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion:(id)a3;
- (void)notificationManager:(id)a3 didRespondToNotification:(id)a4 fromCategory:(id)a5 withAction:(id)a6 completionHandler:(id)a7;
- (void)postNewSecurityDelayRequiredNotificationWithCompletion:(id)a3;
- (void)scheduleSecurityDelayFinishedNotificationForPendingEvaluation:(id)a3 after:(double)a4 validity:(double)a5 completion:(id)a6;
- (void)setDelegate:(id)a3;
@end

@implementation LACDTONotificationManager

- (LACDTONotificationManager)initWithReplyQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LACDTONotificationFactory);
  v6 = [(LACDTONotificationManager *)self initWithReplyQueue:v4 notificationFactory:v5];

  return v6;
}

- (LACDTONotificationManager)initWithReplyQueue:(id)a3 notificationFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTONotificationManager;
  v9 = [(LACDTONotificationManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replyQueue, a3);
    objc_storeStrong(&v10->_notificationFactory, a4);
  }

  return v10;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  v4 = [(LACDTONotificationManager *)self _securityDelayManager];
  [v4 setDelegate:self];
}

- (void)scheduleSecurityDelayFinishedNotificationForPendingEvaluation:(id)a3 after:(double)a4 validity:(double)a5 completion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [(LACDTONotificationManager *)self _securityDelayManager];
  v13 = [(LACDTONotificationFactory *)self->_notificationFactory securityDelayEndedNotificationForPendingEvaluation:v10 after:a4 validity:a5];
  v14 = LACLogDTONotifications();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v13;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Will schedule notification %{public}@ for %{public}@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__LACDTONotificationManager_scheduleSecurityDelayFinishedNotificationForPendingEvaluation_after_validity_completion___block_invoke;
  v20[3] = &unk_1E7A972E8;
  v21 = v13;
  v22 = v10;
  v23 = v12;
  v24 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  [v15 postNotification:v18 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __117__LACDTONotificationManager_scheduleSecurityDelayFinishedNotificationForPendingEvaluation_after_validity_completion___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTONotifications();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __117__LACDTONotificationManager_scheduleSecurityDelayFinishedNotificationForPendingEvaluation_after_validity_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Did schedule notification %{public}@ for %{public}@", &v9, 0x16u);
  }

  (*(a1[7] + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)postNewSecurityDelayRequiredNotificationWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LACDTONotificationManager *)self _securityDelayManager];
  v6 = [(LACDTONotificationFactory *)self->_notificationFactory newSecurityDelayRequiredNotification];
  v7 = LACLogDTONotifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Will post notification %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__LACDTONotificationManager_postNewSecurityDelayRequiredNotificationWithCompletion___block_invoke;
  v12[3] = &unk_1E7A967E0;
  v14 = v5;
  v15 = v4;
  v13 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v6;
  [v8 postNotification:v10 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __84__LACDTONotificationManager_postNewSecurityDelayRequiredNotificationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTONotifications();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__LACDTONotificationManager_postNewSecurityDelayRequiredNotificationWithCompletion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Did post notification %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LACDTONotificationManager *)self _securityDelayManager];
  v13[0] = @"com.apple.coreauthd.notifications.newSecurityDelayRequired";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__LACDTONotificationManager_cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion___block_invoke;
  v10[3] = &unk_1E7A95998;
  v11 = v5;
  v12 = v4;
  v7 = v5;
  v8 = v4;
  [v7 cancelNotificationsWithIdentifiers:v6 scheduledOnly:0 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notificationManager:(id)a3 didRespondToNotification:(id)a4 fromCategory:(id)a5 withAction:(id)a6 completionHandler:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if ([a5 isEqualToString:@"com.apple.coreauthd.notifications.category.securityDelay.required"])
  {
    v14 = [(LACDTONotificationManager *)self delegate];
    [v14 notificationManager:self didReceiveUserAction:v12 completionHandler:v13];
  }

  else
  {
    v15 = LACLogDTONotifications();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - not handling notification %{public}@", &v17, 0x16u);
    }

    v13[2](v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_securityDelayManager
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = LACUserInterfaceBundleIdentifierDefault();
  v4 = +[LACDTOMutableNotificationCategory newSecurityDelayRequiredCategory];
  v11[0] = v4;
  v5 = +[LACDTOMutableNotificationCategory securityDelayEndedCategory];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v7 = +[LACUNManagerProvider sharedInstance];
  v8 = [v7 sharedInstanceWithBundleIdentifier:v3 categories:v6 replyQueue:self->_replyQueue];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (LACDTONotificationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __117__LACDTONotificationManager_scheduleSecurityDelayFinishedNotificationForPendingEvaluation_after_validity_completion___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_5();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_error_impl(&dword_1B0233000, v6, OS_LOG_TYPE_ERROR, "Could not schedule notification %{public}@ for %{public}@ (error:=%{public}@)", v8, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __84__LACDTONotificationManager_postNewSecurityDelayRequiredNotificationWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_5();
  v6 = v2;
  _os_log_error_impl(&dword_1B0233000, v3, OS_LOG_TYPE_ERROR, "Could not post notification %{public}@ (error:=%{public}@)", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end