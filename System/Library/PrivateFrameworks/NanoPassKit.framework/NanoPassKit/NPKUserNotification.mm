@interface NPKUserNotification
- (NSArray)identifierHashComponents;
- (NSString)body;
- (NSString)identifier;
- (NSString)title;
@end

@implementation NPKUserNotification

- (NSString)title
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "[NPKUserNotification title]";
      v7 = 2082;
      v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/User Notifications/NPKUserNotification.m";
      v9 = 2048;
      v10 = 24;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v5, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (NSString)body
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "[NPKUserNotification body]";
      v7 = 2082;
      v8 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/User Notifications/NPKUserNotification.m";
      v9 = 2048;
      v10 = 29;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v5, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (NSArray)identifierHashComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  title = [(NPKUserNotification *)self title];
  [v3 safelyAddObject:title];

  body = [(NPKUserNotification *)self body];
  [v3 safelyAddObject:body];

  notificationCategoryIdentifier = [(NPKUserNotification *)self notificationCategoryIdentifier];
  [v3 safelyAddObject:notificationCategoryIdentifier];

  return v3;
}

- (NSString)identifier
{
  v3 = objc_opt_class();
  identifierHashComponents = [(NPKUserNotification *)self identifierHashComponents];
  v5 = [v3 generateModelIdentifierWith:identifierHashComponents];

  return v5;
}

@end