@interface CNDonationLoggerProvider
+ (CNDonationLoggerProvider)defaultProvider;
- (CNDonationLoggerProvider)init;
@end

@implementation CNDonationLoggerProvider

+ (CNDonationLoggerProvider)defaultProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CNDonationLoggerProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultProvider_cn_once_token_1 != -1)
  {
    dispatch_once(&defaultProvider_cn_once_token_1, block);
  }

  v2 = defaultProvider_cn_once_object_1;

  return v2;
}

uint64_t __43__CNDonationLoggerProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_cn_once_object_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CNDonationLoggerProvider)init
{
  v19.receiver = self;
  v19.super_class = CNDonationLoggerProvider;
  v2 = [(CNDonationLoggerProvider *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CNDonationAgentLogger);
    agentLoggerImpl = v2->_agentLoggerImpl;
    v2->_agentLoggerImpl = v3;

    v5 = objc_alloc_init(_CNDonationExtensionLogger);
    extensionLoggerImpl = v2->_extensionLoggerImpl;
    v2->_extensionLoggerImpl = v5;

    v7 = objc_alloc_init(_CNDonationToolLogger);
    toolLoggerImpl = v2->_toolLoggerImpl;
    v2->_toolLoggerImpl = v7;

    v9 = objc_alloc_init(_CNDonationAccountLogger);
    accountLoggerImpl = v2->_accountLoggerImpl;
    v2->_accountLoggerImpl = v9;

    v11 = objc_alloc_init(_CNDonationPreferencesLogger);
    preferencesLoggerImpl = v2->_preferencesLoggerImpl;
    v2->_preferencesLoggerImpl = v11;

    v13 = objc_alloc_init(_CNDonationAnalyticsLogger);
    analyticsLoggerImpl = v2->_analyticsLoggerImpl;
    v2->_analyticsLoggerImpl = v13;

    v15 = objc_alloc_init(_CNDonationManagedDuplicatesLogger);
    duplicatesLoggerImpl = v2->_duplicatesLoggerImpl;
    v2->_duplicatesLoggerImpl = v15;

    v17 = v2;
  }

  return v2;
}

@end