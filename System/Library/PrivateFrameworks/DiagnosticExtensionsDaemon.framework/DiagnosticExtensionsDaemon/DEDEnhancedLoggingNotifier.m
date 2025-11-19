@interface DEDEnhancedLoggingNotifier
- (DEDEnhancedLoggingNotifier)init;
- (void)presentNotificationForSession:(id)a3;
@end

@implementation DEDEnhancedLoggingNotifier

- (DEDEnhancedLoggingNotifier)init
{
  v6.receiver = self;
  v6.super_class = DEDEnhancedLoggingNotifier;
  v2 = [(DEDEnhancedLoggingNotifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D076B0]);
    statusProvider = v2->_statusProvider;
    v2->_statusProvider = v3;
  }

  return v2;
}

- (void)presentNotificationForSession:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogEnhancedLoggingNotifier();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Notifying enhancedloggingd for bug session [%{public}@]", &v8, 0xCu);
  }

  v6 = [(DEDEnhancedLoggingNotifier *)self statusProvider];
  [v6 collectionDidCompleteWithSessionIdentifier:v4];

  v7 = *MEMORY[0x277D85DE8];
}

@end