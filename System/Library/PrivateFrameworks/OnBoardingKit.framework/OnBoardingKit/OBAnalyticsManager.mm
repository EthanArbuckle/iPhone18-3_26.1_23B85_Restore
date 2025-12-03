@interface OBAnalyticsManager
+ (id)sharedManager;
- (OBAnalyticsManager)init;
- (void)addEvent:(id)event;
- (void)addEvent:(id)event withPayload:(id)payload;
- (void)commit;
- (void)logPresentationOfPrivacyLinkWithIdentifier:(id)identifier;
- (void)logPresentationOfPrivacySplashWithIdentifier:(id)identifier;
- (void)logPresentationOfPrivacyUnifiedAbout;
- (void)logTapOnPrivacyLinkWithIdentifier:(id)identifier;
@end

@implementation OBAnalyticsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[OBAnalyticsManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __35__OBAnalyticsManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(OBAnalyticsManager);

  return MEMORY[0x1EEE66BB8]();
}

- (OBAnalyticsManager)init
{
  v6.receiver = self;
  v6.super_class = OBAnalyticsManager;
  v2 = [(OBAnalyticsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    events = v2->_events;
    v2->_events = v3;
  }

  return v2;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  events = [(OBAnalyticsManager *)self events];
  [events addObject:eventCopy];
}

- (void)addEvent:(id)event withPayload:(id)payload
{
  v7 = [OBAnalyticsEvent eventWithName:event withPayload:payload];
  if ([(OBAnalyticsManager *)self shouldStashMetrics])
  {
    [(OBAnalyticsManager *)self addEvent:v7];
  }

  else
  {
    name = [v7 name];
    payload = [v7 payload];
    AnalyticsSendEvent();
  }
}

- (void)commit
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _OBLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4FB6000, v3, OS_LOG_TYPE_DEFAULT, "Commiting analytics...", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  events = [(OBAnalyticsManager *)self events];
  v5 = [events countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        payload = [v9 payload];
        AnalyticsSendEvent();
      }

      v6 = [events countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)logPresentationOfPrivacyUnifiedAbout
{
  v3 = _OBLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B4FB6000, v3, OS_LOG_TYPE_DEFAULT, "presentation of unified about", v4, 2u);
  }

  [(OBAnalyticsManager *)self logPresentationOfPrivacySplashWithIdentifier:@"com.apple.onboardingkit.unifiedAbout"];
}

- (void)logPresentationOfPrivacySplashWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = @"gdprAboutShown";
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "presentation of about event: %@ identifier: %@", buf, 0x16u);
  }

  v8 = @"bundleid";
  v9 = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(OBAnalyticsManager *)self addEvent:@"gdprAboutShown" withPayload:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logPresentationOfPrivacyLinkWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = @"gdprLinkShown";
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "presentation of about event: %@ identifier: %@", buf, 0x16u);
  }

  v8 = @"bundleid";
  v9 = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(OBAnalyticsManager *)self addEvent:@"gdprLinkShown" withPayload:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logTapOnPrivacyLinkWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = @"gdprLinkClicked";
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "presentation of about event: %@ identifier: %@", buf, 0x16u);
  }

  v8 = @"bundleid";
  v9 = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(OBAnalyticsManager *)self addEvent:@"gdprLinkClicked" withPayload:v6];

  v7 = *MEMORY[0x1E69E9840];
}

@end