@interface LACDTONotificationManager
- (LACDTONotificationManager)initWithReplyQueue:(id)queue;
- (LACDTONotificationManager)initWithReplyQueue:(id)queue notificationFactory:(id)factory;
- (LACDTONotificationManagerDelegate)delegate;
- (id)_securityDelayManager;
- (void)cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion:(id)completion;
- (void)notificationManager:(id)manager didRespondToNotification:(id)notification fromCategory:(id)category withAction:(id)action completionHandler:(id)handler;
- (void)postNewSecurityDelayRequiredNotificationWithCompletion:(id)completion;
- (void)scheduleSecurityDelayFinishedNotificationForPendingEvaluation:(id)evaluation after:(double)after validity:(double)validity completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation LACDTONotificationManager

- (LACDTONotificationManager)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(LACDTONotificationFactory);
  v6 = [(LACDTONotificationManager *)self initWithReplyQueue:queueCopy notificationFactory:v5];

  return v6;
}

- (LACDTONotificationManager)initWithReplyQueue:(id)queue notificationFactory:(id)factory
{
  queueCopy = queue;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = LACDTONotificationManager;
  v9 = [(LACDTONotificationManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replyQueue, queue);
    objc_storeStrong(&v10->_notificationFactory, factory);
  }

  return v10;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  _securityDelayManager = [(LACDTONotificationManager *)self _securityDelayManager];
  [_securityDelayManager setDelegate:self];
}

- (void)scheduleSecurityDelayFinishedNotificationForPendingEvaluation:(id)evaluation after:(double)after validity:(double)validity completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  evaluationCopy = evaluation;
  completionCopy = completion;
  _securityDelayManager = [(LACDTONotificationManager *)self _securityDelayManager];
  v13 = [(LACDTONotificationFactory *)self->_notificationFactory securityDelayEndedNotificationForPendingEvaluation:evaluationCopy after:after validity:validity];
  v14 = LACLogDTONotifications();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v13;
    v27 = 2114;
    v28 = evaluationCopy;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Will schedule notification %{public}@ for %{public}@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__LACDTONotificationManager_scheduleSecurityDelayFinishedNotificationForPendingEvaluation_after_validity_completion___block_invoke;
  v20[3] = &unk_1E7A972E8;
  v21 = v13;
  v22 = evaluationCopy;
  v23 = _securityDelayManager;
  v24 = completionCopy;
  v15 = _securityDelayManager;
  v16 = completionCopy;
  v17 = evaluationCopy;
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

- (void)postNewSecurityDelayRequiredNotificationWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _securityDelayManager = [(LACDTONotificationManager *)self _securityDelayManager];
  newSecurityDelayRequiredNotification = [(LACDTONotificationFactory *)self->_notificationFactory newSecurityDelayRequiredNotification];
  v7 = LACLogDTONotifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = newSecurityDelayRequiredNotification;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Will post notification %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__LACDTONotificationManager_postNewSecurityDelayRequiredNotificationWithCompletion___block_invoke;
  v12[3] = &unk_1E7A967E0;
  v14 = _securityDelayManager;
  v15 = completionCopy;
  v13 = newSecurityDelayRequiredNotification;
  v8 = _securityDelayManager;
  v9 = completionCopy;
  v10 = newSecurityDelayRequiredNotification;
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

- (void)cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _securityDelayManager = [(LACDTONotificationManager *)self _securityDelayManager];
  v13[0] = @"com.apple.coreauthd.notifications.newSecurityDelayRequired";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__LACDTONotificationManager_cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion___block_invoke;
  v10[3] = &unk_1E7A95998;
  v11 = _securityDelayManager;
  v12 = completionCopy;
  v7 = _securityDelayManager;
  v8 = completionCopy;
  [v7 cancelNotificationsWithIdentifiers:v6 scheduledOnly:0 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notificationManager:(id)manager didRespondToNotification:(id)notification fromCategory:(id)category withAction:(id)action completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  actionCopy = action;
  handlerCopy = handler;
  if ([category isEqualToString:@"com.apple.coreauthd.notifications.category.securityDelay.required"])
  {
    delegate = [(LACDTONotificationManager *)self delegate];
    [delegate notificationManager:self didReceiveUserAction:actionCopy completionHandler:handlerCopy];
  }

  else
  {
    v15 = LACLogDTONotifications();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = notificationCopy;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - not handling notification %{public}@", &v17, 0x16u);
    }

    handlerCopy[2](handlerCopy);
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