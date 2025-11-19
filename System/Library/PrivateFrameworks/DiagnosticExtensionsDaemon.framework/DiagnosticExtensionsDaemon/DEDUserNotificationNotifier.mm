@interface DEDUserNotificationNotifier
+ (id)archivedClasses;
+ (void)forceRemoveNotificationWithIdentifier:(id)a3 hostIdentifier:(id)a4;
- (DEDNotifierConfiguration)config;
- (DEDUserNotificationNotifier)initWithCoder:(id)a3;
- (DEDUserNotificationNotifier)initWithConfiguration:(id)a3 session:(id)a4;
- (id)createNotificationCenter;
- (void)encodeWithCoder:(id)a3;
- (void)presentNotificationForSession:(id)a3;
- (void)removeNotificationForSession:(id)a3;
@end

@implementation DEDUserNotificationNotifier

- (DEDUserNotificationNotifier)initWithConfiguration:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = DEDUserNotificationNotifier;
  v8 = [(DEDUserNotificationNotifier *)&v15 init];
  if (v8)
  {
    v9 = [v6 notifierConfiguration];
    objc_storeWeak(&v8->_config, v9);

    v10 = [v7 identifier];
    bugSessionIdentifier = v8->_bugSessionIdentifier;
    v8->_bugSessionIdentifier = v10;

    v12 = [(DEDUserNotificationNotifier *)v8 createNotificationCenter];
    center = v8->_center;
    v8->_center = v12;
  }

  return v8;
}

- (id)createNotificationCenter
{
  v3 = objc_alloc(MEMORY[0x277CE2028]);
  v4 = [(DEDUserNotificationNotifier *)self config];
  v5 = [v4 hostAppIdentifier];
  v6 = [v3 initWithBundleIdentifier:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v8 = [(DEDUserNotificationNotifier *)self config];
  v9 = [v8 reviewActionLabel];

  if (v9)
  {
    v10 = MEMORY[0x277CE1F80];
    v11 = [(DEDUserNotificationNotifier *)self config];
    v12 = [v11 reviewActionLabel];
    v13 = [v10 actionWithIdentifier:@"com.apple.diagnosticextensionsd.notifier.review" title:v12 options:4];

    [v7 addObject:v13];
  }

  v14 = [(DEDUserNotificationNotifier *)self config];
  v15 = [v14 sendActionLabel];

  if (v15)
  {
    v16 = MEMORY[0x277CE1F80];
    v17 = [(DEDUserNotificationNotifier *)self config];
    v18 = [v17 sendActionLabel];
    v19 = [v16 actionWithIdentifier:@"com.apple.diagnosticextensionsd.notifier.send" title:v18 options:1];

    [v7 addObject:v19];
  }

  v20 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"com.apple.diagnosticextensionsd.notifier" actions:v7 intentIdentifiers:MEMORY[0x277CBEBF8] options:4];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__DEDUserNotificationNotifier_createNotificationCenter__block_invoke;
  v23[3] = &unk_278F66C78;
  objc_copyWeak(&v25, &location);
  v21 = v20;
  v24 = v21;
  [v6 getNotificationCategoriesWithCompletionHandler:v23];
  [v6 requestAuthorizationWithOptions:7 completionHandler:&__block_literal_global_28];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v6;
}

void __55__DEDUserNotificationNotifier_createNotificationCenter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained center];
  v5 = [v3 setByAddingObject:*(a1 + 32)];

  [v4 setNotificationCategories:v5];
}

void __55__DEDUserNotificationNotifier_createNotificationCenter__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = Log_6();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__DEDUserNotificationNotifier_createNotificationCenter__block_invoke_2_cold_1(v4, v5);
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_5;
    }

    v5 = Log_6();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "The user denied notification privileges.", v6, 2u);
    }
  }

LABEL_5:
}

- (void)presentNotificationForSession:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(DEDUserNotificationNotifier *)self identifier];
  v5 = Log_6();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DEDUserNotificationNotifier *)self bugSessionIdentifier];
    *buf = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling user notification: %{public}@ for bug session [%{public}@]", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = [(DEDUserNotificationNotifier *)self config];
  v9 = [v8 localizedNotificationTitle];
  [v7 setTitle:v9];

  v10 = [(DEDUserNotificationNotifier *)self config];
  v11 = [v10 localizedNotificationBody];
  [v7 setBody:v11];

  v12 = [(DEDUserNotificationNotifier *)self config];
  LODWORD(v11) = [v12 userNotificationShouldPlaySound];

  if (v11)
  {
    v13 = [MEMORY[0x277CE1FE0] defaultSound];
    [v7 setSound:v13];
  }

  [v7 setCategoryIdentifier:@"com.apple.diagnosticextensionsd.notifier"];
  v14 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v4 content:v7 trigger:0];
  v15 = [(DEDUserNotificationNotifier *)self center];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__DEDUserNotificationNotifier_presentNotificationForSession___block_invoke;
  v18[3] = &unk_278F661A8;
  v19 = v4;
  v16 = v4;
  [v15 addNotificationRequest:v14 withCompletionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __61__DEDUserNotificationNotifier_presentNotificationForSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = Log_6();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__DEDUserNotificationNotifier_presentNotificationForSession___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)removeNotificationForSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(DEDUserNotificationNotifier *)self identifier];
  v5 = Log_6();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DEDUserNotificationNotifier *)self bugSessionIdentifier];
    *buf = 138543618;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling user notification: %{public}@ for bug session [%{public}@]", buf, 0x16u);
  }

  v7 = [(DEDUserNotificationNotifier *)self center];
  v13 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v7 removeDeliveredNotificationsWithIdentifiers:v8];

  v9 = [(DEDUserNotificationNotifier *)self center];
  v12 = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v9 removePendingNotificationRequestsWithIdentifiers:v10];

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (DEDUserNotificationNotifier)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DEDUserNotificationNotifier;
  v5 = [(DEDUserNotificationNotifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    objc_storeWeak(&v5->_config, v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bugSessionIdentifier"];
    bugSessionIdentifier = v5->_bugSessionIdentifier;
    v5->_bugSessionIdentifier = v7;

    v9 = [(DEDUserNotificationNotifier *)v5 createNotificationCenter];
    center = v5->_center;
    v5->_center = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDUserNotificationNotifier *)self config];
  [v4 encodeObject:v5 forKey:@"config"];

  v6 = [(DEDUserNotificationNotifier *)self bugSessionIdentifier];
  [v4 encodeObject:v6 forKey:@"bugSessionIdentifier"];
}

+ (void)forceRemoveNotificationWithIdentifier:(id)a3 hostIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = Log_6();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Will force remove notification with identifier [%{public}@] for app [%{public}@]", buf, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v6];
  v14 = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v8 removeDeliveredNotificationsWithIdentifiers:v9];

  v13 = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v8 removePendingNotificationRequestsWithIdentifiers:v10];

  v11 = Log_6();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Removed notification with identifier [%{public}@] for app [%{public}@]", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (DEDNotifierConfiguration)config
{
  WeakRetained = objc_loadWeakRetained(&self->_config);

  return WeakRetained;
}

void __55__DEDUserNotificationNotifier_createNotificationCenter__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error requesting authorization\nPlease make sure you read instructions in DEDUserNotificationNotifier.h\n[error info] %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __61__DEDUserNotificationNotifier_presentNotificationForSession___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 description];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Error scheduling notification: %{public}@\nError info: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end