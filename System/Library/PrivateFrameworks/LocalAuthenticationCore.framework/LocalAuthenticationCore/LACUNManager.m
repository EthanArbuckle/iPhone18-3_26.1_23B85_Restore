@interface LACUNManager
- (LACUNManager)initWithBundleIdentifier:(id)a3 categories:(id)a4;
- (LACUNManagerDelegate)delegate;
- (id)_makeNotificationRequestWithConfiguration:(id)a3;
- (void)cancelAllNotificationsWithCompletion:(id)a3;
- (void)cancelNotificationsWithIdentifiers:(id)a3 scheduledOnly:(BOOL)a4 completion:(id)a5;
- (void)postNotification:(id)a3 completion:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation LACUNManager

- (LACUNManager)initWithBundleIdentifier:(id)a3 categories:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = LACUNManager;
  v8 = [(LACUNManager *)&v17 init];
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__LACUNManager_initWithBundleIdentifier_categories___block_invoke;
    v13[3] = &unk_1E7A95E70;
    v14 = v6;
    v9 = v8;
    v15 = v9;
    v16 = v7;
    v10 = __52__LACUNManager_initWithBundleIdentifier_categories___block_invoke(v13);
    notificationCenter = v9->_notificationCenter;
    v9->_notificationCenter = v10;
  }

  return v8;
}

id __52__LACUNManager_initWithBundleIdentifier_categories___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (getUNMutableNotificationContentClass() && getUNNotificationActionClass() && getUNNotificationCategoryClass() && getUNNotificationIconClass() && getUNNotificationRequestClass() && getUNTimeIntervalNotificationTriggerClass() && getUNUserNotificationCenterClass())
  {
    v2 = [objc_alloc(getUNUserNotificationCenterClass()) initWithBundleIdentifier:*(a1 + 32)];
    [v2 setDelegate:*(a1 + 40)];
    v27 = v2;
    [v2 setWantsNotificationResponsesDelivered];
    v3 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(a1 + 48);
    v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v31)
    {
      v29 = *v39;
      v30 = v3;
      do
      {
        v4 = 0;
        do
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v4;
          v5 = *(*(&v38 + 1) + 8 * v4);
          v6 = objc_opt_new();
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v32 = v5;
          v7 = [v5 actions];
          v8 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v35;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v35 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v34 + 1) + 8 * i);
                if ([v12 isTitleLocalized])
                {
                  v13 = [v12 title];
                }

                else
                {
                  v14 = MEMORY[0x1E696AEC0];
                  v15 = [v12 title];
                  v13 = [v14 localizedUserNotificationStringForKey:v15 arguments:0];
                }

                if ([v12 isDestructive])
                {
                  v16 = 2;
                }

                else
                {
                  v16 = 0;
                }

                UNNotificationActionClass = getUNNotificationActionClass();
                v18 = [v12 identifier];
                v19 = [UNNotificationActionClass actionWithIdentifier:v18 title:v13 options:v16];

                [v6 addObject:v19];
              }

              v9 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v9);
          }

          if ([v32 hiddenPreviewShowsTitle])
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }

          UNNotificationCategoryClass = getUNNotificationCategoryClass();
          v22 = [v32 identifier];
          v23 = [UNNotificationCategoryClass categoryWithIdentifier:v22 actions:v6 intentIdentifiers:MEMORY[0x1E695E0F0] options:v20];

          v3 = v30;
          [v30 addObject:v23];

          v4 = v33 + 1;
        }

        while (v33 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v31);
    }

    v24 = v27;
    if ([v3 count])
    {
      [v27 setNotificationCategories:v3];
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)postNotification:(id)a3 completion:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_notificationCenter)
  {
    v9 = [v6 identifier];

    if (v9)
    {
      notificationCenter = self->_notificationCenter;
      v11 = [v6 identifier];
      v22[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v12];
    }

    v13 = [(LACUNManager *)self _makeNotificationRequestWithConfiguration:v6];
    [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v13 withCompletionHandler:v8];
    v14 = LACLogNotifications();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 content];
      v16 = [v13 identifier];
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Posted notification with content: (%@) identifier: %@)", &v18, 0x16u);
    }

    goto LABEL_9;
  }

  if (v7)
  {
    v13 = [LACError errorWithCode:-1020 debugDescription:@"UNUserNotificationCenter instance is nil"];
    (v8)[2](v8, v13);
LABEL_9:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancelNotificationsWithIdentifiers:(id)a3 scheduledOnly:(BOOL)a4 completion:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_notificationCenter)
  {
    v11 = LACLogNotifications();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Cancelling notifications with identifiers: (%@)", &v14, 0xCu);
    }

    [(UNUserNotificationCenter *)self->_notificationCenter removePendingNotificationRequestsWithIdentifiers:v8];
    if (!a4)
    {
      [(UNUserNotificationCenter *)self->_notificationCenter removeDeliveredNotificationsWithIdentifiers:v8];
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else if (v9)
  {
    v12 = [LACError errorWithCode:-1020 debugDescription:@"UNUserNotificationCenter instance is nil"];
    (v10)[2](v10, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancelAllNotificationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_notificationCenter)
  {
    v6 = LACLogNotifications();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling all notifications", v8, 2u);
    }

    [(UNUserNotificationCenter *)self->_notificationCenter removeAllDeliveredNotifications];
    [(UNUserNotificationCenter *)self->_notificationCenter removeAllPendingNotificationRequests];
    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else if (v4)
  {
    v7 = [LACError errorWithCode:-1020 debugDescription:@"UNUserNotificationCenter instance is nil"];
    (v5)[2](v5, v7);
  }
}

- (id)_makeNotificationRequestWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getUNMutableNotificationContentClass());
  [v3 withdrawInterval];
  if (v5 > 20.0)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [v3 withdrawInterval];
    v7 = [v6 dateByAddingTimeInterval:?];

    [v4 setExpirationDate:v7];
  }

  v8 = [v3 systemIconName];

  if (v8)
  {
    UNNotificationIconClass = getUNNotificationIconClass();
    v10 = [v3 systemIconName];
    v11 = [UNNotificationIconClass iconForSystemImageNamed:v10];
    [v4 setIcon:v11];
  }

  if ([v3 isTitleLocalized])
  {
    v12 = [v3 title];
    [v4 setTitle:v12];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v12 = [v3 title];
    v14 = [v13 localizedUserNotificationStringForKey:v12 arguments:0];
    [v4 setTitle:v14];
  }

  if ([v3 isBodyLocalized])
  {
    v15 = [v3 body];
    [v4 setBody:v15];
  }

  else
  {
    v16 = MEMORY[0x1E696AEC0];
    v15 = [v3 body];
    v17 = [v16 localizedUserNotificationStringForKey:v15 arguments:0];
    [v4 setBody:v17];
  }

  if ([v3 isTimeSensitive])
  {
    [v4 setInterruptionLevel:2];
    [v4 setShouldIgnoreDoNotDisturb:1];
  }

  v18 = [v3 defaultActionURL];

  if (v18)
  {
    [v4 setHasDefaultAction:1];
    v19 = [v3 defaultActionURL];
    [v4 setDefaultActionURL:v19];

    [v4 setShouldBackgroundDefaultAction:1];
  }

  else
  {
    [v4 setShouldSuppressDefaultAction:1];
  }

  if ([v3 shouldDisplayActionsInline])
  {
    [v4 setShouldDisplayActionsInline:1];
  }

  v20 = [v3 categoryIdentifier];

  if (v20)
  {
    v21 = [v3 categoryIdentifier];
    [v4 setCategoryIdentifier:v21];
  }

  [v3 triggerInterval];
  if (v22 <= 0.0)
  {
    v24 = 0;
  }

  else
  {
    UNTimeIntervalNotificationTriggerClass = getUNTimeIntervalNotificationTriggerClass();
    [v3 triggerInterval];
    v24 = [UNTimeIntervalNotificationTriggerClass triggerWithTimeInterval:0 repeats:?];
  }

  UNNotificationRequestClass = getUNNotificationRequestClass();
  v26 = [v3 identifier];
  v27 = [UNNotificationRequestClass requestWithIdentifier:v26 content:v4 trigger:v24];

  return v27;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v7 notification];
  v10 = [v9 request];
  v11 = [v10 identifier];

  v12 = [v7 notification];
  v13 = [v12 request];
  v14 = [v13 content];
  v15 = [v14 categoryIdentifier];

  v16 = [v7 actionIdentifier];
  v17 = LACLogNotifications();
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_16;
  }

  v35[0] = @"identifier";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v18;
  v36[0] = v18;
  v35[1] = @"category";
  v19 = v15;
  if (!v15)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = self;
  v30 = v19;
  v36[1] = v19;
  v35[2] = @"action";
  v20 = v16;
  if (!v16)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v8;
  v36[2] = v20;
  v35[3] = @"url";
  v32 = [v7 notification];
  v21 = [v32 request];
  v22 = [v21 content];
  v23 = [v22 defaultActionURL];
  v24 = v23;
  if (!v23)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v36[3] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];
  *buf = 138543362;
  v38 = v25;
  _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Did receive response for notification %{public}@", buf, 0xCu);

  if (!v23)
  {
  }

  v8 = v34;
  if (!v16)
  {
  }

  self = v33;
  if (v15)
  {
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_16;
    }
  }

LABEL_16:
  v26 = [(LACUNManager *)self delegate];

  if (v26)
  {
    v27 = [(LACUNManager *)self delegate];
    [v27 notificationManager:self didRespondToNotification:v11 fromCategory:v15 withAction:v16 completionHandler:v8];
  }

  else
  {
    v8[2](v8);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (LACUNManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end