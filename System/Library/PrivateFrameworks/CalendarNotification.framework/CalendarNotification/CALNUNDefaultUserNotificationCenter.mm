@interface CALNUNDefaultUserNotificationCenter
- (BOOL)addNotificationRequest:(id)request error:(id *)error;
- (BOOL)replaceContentForRequestWithIdentifier:(id)identifier replacementContent:(id)content error:(id *)error;
- (CALNUNDefaultUserNotificationCenter)initWithBundleIdentifier:(id)identifier;
- (UNUserNotificationCenterDelegate)delegate;
- (id)deliveredNotifications;
- (id)notificationCategories;
- (id)notificationSettings;
- (id)notificationSettingsForTopics;
- (void)removeAllDeliveredNotifications;
- (void)removeAllPendingNotificationRequests;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers;
- (void)setDelegate:(id)delegate;
- (void)setNotificationCategories:(id)categories;
- (void)setWantsNotificationResponsesDelivered;
@end

@implementation CALNUNDefaultUserNotificationCenter

- (CALNUNDefaultUserNotificationCenter)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CALNUNDefaultUserNotificationCenter;
  v5 = [(CALNUNDefaultUserNotificationCenter *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:identifierCopy];
    userNotificationCenter = v5->_userNotificationCenter;
    v5->_userNotificationCenter = v6;
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setDelegate:delegateCopy];
}

- (UNUserNotificationCenterDelegate)delegate
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  delegate = [userNotificationCenter delegate];

  return delegate;
}

- (void)setNotificationCategories:(id)categories
{
  categoriesCopy = categories;
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setNotificationCategories:categoriesCopy];
}

- (id)notificationCategories
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  notificationCategories = [userNotificationCenter notificationCategories];

  return notificationCategories;
}

- (BOOL)addNotificationRequest:(id)request error:(id *)error
{
  requestCopy = request;
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CALNUNDefaultUserNotificationCenter_addNotificationRequest_error___block_invoke;
  v9[3] = &unk_278D6F228;
  v10 = requestCopy;
  v7 = requestCopy;
  [userNotificationCenter addNotificationRequest:v7 withCompletionHandler:v9];

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

- (BOOL)replaceContentForRequestWithIdentifier:(id)identifier replacementContent:(id)content error:(id *)error
{
  identifierCopy = identifier;
  contentCopy = content;
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__CALNUNDefaultUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_error___block_invoke;
  v12[3] = &unk_278D6F228;
  v13 = identifierCopy;
  v10 = identifierCopy;
  [userNotificationCenter replaceContentForRequestWithIdentifier:v10 replacementContent:contentCopy completionHandler:v12];

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
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  deliveredNotifications = [userNotificationCenter deliveredNotifications];

  return deliveredNotifications;
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:identifiersCopy];
}

- (void)removeAllDeliveredNotifications
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removeAllDeliveredNotifications];
}

- (void)removeAllPendingNotificationRequests
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removeAllPendingNotificationRequests];
}

- (void)setWantsNotificationResponsesDelivered
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setWantsNotificationResponsesDelivered];
}

- (id)notificationSettings
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  notificationSettings = [userNotificationCenter notificationSettings];

  return notificationSettings;
}

- (id)notificationSettingsForTopics
{
  userNotificationCenter = [(CALNUNDefaultUserNotificationCenter *)self userNotificationCenter];
  notificationSettingsForTopics = [userNotificationCenter notificationSettingsForTopics];

  return notificationSettingsForTopics;
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