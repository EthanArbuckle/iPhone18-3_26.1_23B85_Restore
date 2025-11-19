@interface IMDualSIMUtilitiesManager
+ (IMDualSIMUtilitiesManager)sharedManager;
+ (id)_localizedShortNameForSIMID:(id)a3;
+ (id)_updateConversationListSIMShortNamesDictionary;
- (IMDualSIMUtilitiesManager)init;
- (void)_handleSIMSubscriptionsUpdate;
@end

@implementation IMDualSIMUtilitiesManager

+ (IMDualSIMUtilitiesManager)sharedManager
{
  if (qword_1ED8CA0F8 != -1)
  {
    sub_1A8602AB8();
  }

  v3 = qword_1ED8C95B8;

  return v3;
}

- (IMDualSIMUtilitiesManager)init
{
  v7.receiver = self;
  v7.super_class = IMDualSIMUtilitiesManager;
  v2 = [(IMDualSIMUtilitiesManager *)&v7 init];
  if (v2)
  {
    v3 = +[IMDualSIMUtilitiesManager _updateConversationListSIMShortNamesDictionary];
    conversationListSIMShortNameDictionary = v2->_conversationListSIMShortNameDictionary;
    v2->_conversationListSIMShortNameDictionary = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1A8663368, @"__kIMSIMSubscriptionsChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)_updateConversationListSIMShortNamesDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[IMCTSubscriptionUtilities sharedInstance];
  v4 = [v3 ctSubscriptionInfo];
  v5 = [v4 subscriptions];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) labelID];
        v12 = [IMDualSIMUtilitiesManager _localizedShortNameForSIMID:v11];
        if (v12)
        {
          [v2 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v2 copy];

  return v13;
}

- (void)_handleSIMSubscriptionsUpdate
{
  v3 = +[IMDualSIMUtilitiesManager _updateConversationListSIMShortNamesDictionary];
  conversationListSIMShortNameDictionary = self->_conversationListSIMShortNameDictionary;
  self->_conversationListSIMShortNameDictionary = v3;

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 __mainThreadPostNotificationName:@"__kIMSIMShortNameChanged" object:0];
}

+ (id)_localizedShortNameForSIMID:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  v5 = [MEMORY[0x1E69D8A58] sharedInstance];
  v6 = [v5 providerManager];

  v7 = [v6 telephonyProvider];
  v8 = [v7 senderIdentityForAccountUUID:v4];

  v9 = [v8 localizedShortName];
  if (!v9)
  {
    v10 = IMLogHandleForCategory("IMDualSIMUtilitiesManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C19DC(v3, v4, v10);
    }

    v11 = IMLogHandleForCategory("IMDualSIMUtilitiesManager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1A64(v8, v11);
    }
  }

  return v9;
}

@end