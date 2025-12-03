@interface CALNUNNotificationIconMapper
- (CALNUNNotificationIconMapper)initWithIconProvider:(id)provider;
- (id)iconIdentifierFromUNNotificationIcon:(id)icon;
- (id)unNotificationIconFromIconIdentifier:(id)identifier;
@end

@implementation CALNUNNotificationIconMapper

- (CALNUNNotificationIconMapper)initWithIconProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationIconMapper;
  v6 = [(CALNUNNotificationIconMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconProvider, provider);
  }

  return v7;
}

- (id)iconIdentifierFromUNNotificationIcon:(id)icon
{
  iconCopy = icon;
  iconProvider = [(CALNUNNotificationIconMapper *)self iconProvider];
  v6 = [iconProvider iconIdentifierForIcon:iconCopy];

  if (!v6)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CALNUNNotificationIconMapper *)iconCopy iconIdentifierFromUNNotificationIcon:v7];
    }
  }

  return v6;
}

- (id)unNotificationIconFromIconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconProvider = [(CALNUNNotificationIconMapper *)self iconProvider];
  v6 = [iconProvider iconWithIdentifier:identifierCopy];

  return v6;
}

- (void)iconIdentifierFromUNNotificationIcon:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not get icon identifier from notification icon = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end