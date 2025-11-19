@interface LKLoginSupport
+ (BOOL)hasCleanUser;
+ (BOOL)isNewUserAbleToLogin;
+ (id)findLeastRecentlyUsedCleanUser;
- (LKLoginSupport)init;
- (id)_errorForNotificationType:(unint64_t)a3;
- (id)_notificationForNotificationType:(unint64_t)a3;
- (void)_runWhenDarwinNotificationPosted:(unint64_t)a3 timeOutPeriod:(double)a4 block:(id)a5;
- (void)_runWithTimeOutPeriod:(double)a3 notificationType:(unint64_t)a4 completionBlock:(id)a5;
- (void)_timeOutAfterTimePeriod:(double)a3 withError:(id)a4 block:(id)a5;
@end

@implementation LKLoginSupport

+ (id)findLeastRecentlyUsedCleanUser
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v4 = [v3 allUsers];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 hasDataToSync] & 1) == 0)
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([v2 count])
  {
    [v2 sortUsingComparator:&__block_literal_global_3];
    v10 = [v2 firstObject];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __48__LKLoginSupport_findLeastRecentlyUsedCleanUser__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastLoginDate];
  v6 = [v4 lastLoginDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (BOOL)hasCleanUser
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 allUsers];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v9 + 1) + 8 * i) hasDataToSync])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)isNewUserAbleToLogin
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 allUsers];
  v4 = [v3 count];

  if (v4 < 0x20)
  {
    return 1;
  }

  return +[LKLoginSupport hasCleanUser];
}

- (LKLoginSupport)init
{
  v8.receiver = self;
  v8.super_class = LKLoginSupport;
  v2 = [(LKLoginSupport *)&v8 init];
  if (v2)
  {
    LKRegisterLoginKitLogging();
    v3 = objc_opt_new();
    listenerQueue = v2->_listenerQueue;
    v2->_listenerQueue = v3;

    [(NSOperationQueue *)v2->_listenerQueue setMaxConcurrentOperationCount:1];
    v5 = objc_opt_new();
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = v5;

    [(NSOperationQueue *)v2->_completionQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (id)_errorForNotificationType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = 25;
  }

  else
  {
    v5 = 26;
  }

  self = [LKError errorWithCode:v5, v3];
LABEL_6:

  return self;
}

- (id)_notificationForNotificationType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = LKLoggedInNotificationName;
  }

  else
  {
    v4 = LKReadyToLoginNotificationName;
  }

  self = *v4;
LABEL_6:

  return self;
}

- (void)_timeOutAfterTimePeriod:(double)a3 withError:(id)a4 block:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__LKLoginSupport__timeOutAfterTimePeriod_withError_block___block_invoke;
  block[3] = &unk_279826510;
  v15 = a3;
  v13 = v7;
  v14 = v8;
  v10 = v7;
  v11 = v8;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

uint64_t __58__LKLoginSupport__timeOutAfterTimePeriod_withError_block___block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_25618F000, v2, OS_LOG_TYPE_DEFAULT, "Notification hasn't posted in the given period (%f seconds). Timing out.", &v6, 0xCu);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, a1[4]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_runWhenDarwinNotificationPosted:(unint64_t)a3 timeOutPeriod:(double)a4 block:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(LKLoginSupport *)self _notificationForNotificationType:a3];
    *buf = 138412546;
    v29 = v11;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_25618F000, v10, OS_LOG_TYPE_DEFAULT, "Waiting for notification (%@) to be posted for %f seconds", buf, 0x16u);
  }

  v12 = [(LKLoginSupport *)self _errorForNotificationType:a3];
  [(LKLoginSupport *)self _timeOutAfterTimePeriod:v12 withError:v8 block:a4];

  v13 = [(LKLoginSupport *)self _notificationForNotificationType:a3];
  v14 = [v13 UTF8String];
  v15 = dispatch_get_global_queue(0, 0);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __71__LKLoginSupport__runWhenDarwinNotificationPosted_timeOutPeriod_block___block_invoke;
  v25 = &unk_279826450;
  v16 = v13;
  v26 = v16;
  v17 = v8;
  v27 = v17;
  v18 = notify_register_dispatch(v14, &_runWhenDarwinNotificationPosted_timeOutPeriod_block__notifyToken, v15, &v22);

  if (v18)
  {
    v19 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v16;
      v30 = 1026;
      LODWORD(v31) = v18;
      _os_log_impl(&dword_25618F000, v19, OS_LOG_TYPE_DEFAULT, "Could not register for %@ notification error %{public}d", buf, 0x12u);
    }

    if (v17)
    {
      v20 = [LKError errorWithCode:27, v22, v23, v24, v25, v26];
      (*(v17 + 2))(v17, v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __71__LKLoginSupport__runWhenDarwinNotificationPosted_timeOutPeriod_block___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25618F000, v2, OS_LOG_TYPE_DEFAULT, "Notified with %@", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_runWithTimeOutPeriod:(double)a3 notificationType:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [LKNotificationListenerOperation alloc];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke;
  v23[3] = &unk_279826560;
  v23[4] = self;
  v10 = v8;
  v24 = v10;
  v11 = [(LKNotificationListenerOperation *)v9 initWithNotificationType:a4 timeOutPeriod:v23 completionBlock:a3];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_3;
  v20[3] = &unk_2798265B0;
  v20[4] = self;
  v21 = v11;
  v22 = v10;
  v12 = v10;
  v13 = v11;
  v14 = MEMORY[0x259C5D090](v20);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_5;
  v17[3] = &unk_2798265D8;
  v18 = v14;
  v19 = a4;
  v15 = v14;
  [(LKNotificationListenerOperation *)v13 setListenerStartedBlock:v17];
  v16 = [(LKLoginSupport *)self listenerQueue];
  [v16 addOperation:v13];
}

void __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_2;
  v7[3] = &unk_279826538;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 addOperationWithBlock:v7];
}

uint64_t __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] completionQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_4;
  v6[3] = &unk_279826588;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  [v4 addOperationWithBlock:v6];
}

uint64_t __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_4(uint64_t result)
{
  if (!*(result + 32))
  {
    v1 = result;
    result = *(result + 40);
    if (result)
    {
      result = [result isFinished];
      if ((result & 1) == 0)
      {
        [*(v1 + 40) cancel];
        result = *(v1 + 48);
        if (result)
        {
          v2 = *(result + 16);

          return v2();
        }
      }
    }
  }

  return result;
}

void __73__LKLoginSupport__runWithTimeOutPeriod_notificationType_completionBlock___block_invoke_5(uint64_t a1)
{
  v2 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25618F000, v2, OS_LOG_TYPE_DEFAULT, "Listener has started. Check with logind now", v6, 2u);
  }

  v3 = +[LKLoginController sharedController];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 == 1)
  {
    [v3 isReadyToLogoutWithCompletionHandler:*(a1 + 32)];
  }

  else if (!v5)
  {
    [v3 isReadyToLoginWithCompletionHandler:*(a1 + 32)];
  }
}

@end