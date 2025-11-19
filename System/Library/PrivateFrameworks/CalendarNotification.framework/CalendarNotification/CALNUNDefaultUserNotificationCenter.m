@interface CALNUNDefaultUserNotificationCenter
- (BOOL)addNotificationRequest:(id)a3 error:(id *)a4;
- (BOOL)replaceContentForRequestWithIdentifier:(id)a3 replacementContent:(id)a4 error:(id *)a5;
- (CALNUNDefaultUserNotificationCenter)initWithBundleIdentifier:(id)a3;
- (UNUserNotificationCenterDelegate)delegate;
- (id)deliveredNotifications;
- (id)notificationCategories;
- (id)notificationSettings;
- (id)notificationSettingsForTopics;
- (void)removeAllDeliveredNotifications;
- (void)removeAllPendingNotificationRequests;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setNotificationCategories:(id)a3;
- (void)setWantsNotificationResponsesDelivered;
@end

@implementation CALNUNDefaultUserNotificationCenter

- (CALNUNDefaultUserNotificationCenter)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CALNUNDefaultUserNotificationCenter;
  v5 = [(CALNUNDefaultUserNotificationCenter *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v4];
    userNotificationCenter = v5->_userNotificationCenter;
    v5->_userNotificationCenter = v6;
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [v5 setDelegate:v4];
}

- (UNUserNotificationCenterDelegate)delegate
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v3 = [v2 delegate];

  return v3;
}

- (void)setNotificationCategories:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [v5 setNotificationCategories:v4];
}

- (id)notificationCategories
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v3 = [v2 notificationCategories];

  return v3;
}

- (BOOL)addNotificationRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CALNUNDefaultUserNotificationCenter_addNotificationRequest_error___block_invoke;
  v9[3] = &unk_278D6F228;
  v10 = v5;
  v7 = v5;
  [v6 addNotificationRequest:v7 withCompletionHandler:v9];

  return 1;
}

void __68__CALNUNDefaultUserNotificationCenter_addNotificationRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__CALNUNDefaultUserNotificationCenter_addNotificationRequest_error___block_invoke_cold_1(v3, a1, v4);
    }
  }
}

- (BOOL)replaceContentForRequestWithIdentifier:(id)a3 replacementContent:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__CALNUNDefaultUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_error___block_invoke;
  v12[3] = &unk_278D6F228;
  v13 = v7;
  v10 = v7;
  [v9 replaceContentForRequestWithIdentifier:v10 replacementContent:v8 completionHandler:v12];

  return 1;
}

void __103__CALNUNDefaultUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __103__CALNUNDefaultUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_error___block_invoke_cold_1(v3, a1, v4);
    }
  }
}

- (id)deliveredNotifications
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v3 = [v2 deliveredNotifications];

  return v3;
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [v5 removeDeliveredNotificationsWithIdentifiers:v4];
}

- (void)removeAllDeliveredNotifications
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [v2 removeAllDeliveredNotifications];
}

- (void)removeAllPendingNotificationRequests
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [v2 removeAllPendingNotificationRequests];
}

- (void)setWantsNotificationResponsesDelivered
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [v2 setWantsNotificationResponsesDelivered];
}

- (id)notificationSettings
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v3 = [v2 notificationSettings];

  return v3;
}

- (id)notificationSettingsForTopics
{
  v2 = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v3 = [v2 notificationSettingsForTopics];

  return v3;
}

void __68__CALNUNDefaultUserNotificationCenter_addNotificationRequest_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a2 + 32) identifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Error adding notification request, error = %@, request identifier = %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __103__CALNUNDefaultUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Error replacing content for notification request, error = %@, identifier = %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end