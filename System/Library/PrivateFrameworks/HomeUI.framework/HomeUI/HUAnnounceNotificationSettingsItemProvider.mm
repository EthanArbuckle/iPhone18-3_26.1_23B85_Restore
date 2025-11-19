@interface HUAnnounceNotificationSettingsItemProvider
- (HMUser)user;
- (HUAnnounceNotificationSettingsItemProvider)init;
- (HUAnnounceNotificationSettingsItemProvider)initWithHome:(id)a3;
- (id)_notificationModes;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUAnnounceNotificationSettingsItemProvider

- (HUAnnounceNotificationSettingsItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUAnnounceNotificationSettingsItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_opt_new();
    items = v7->_items;
    v7->_items = v8;
  }

  return v7;
}

- (HUAnnounceNotificationSettingsItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUser_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUAnnounceNotificationSettingsItemProvider.m" lineNumber:98 description:{@"%s is unavailable; use %@ instead", "-[HUAnnounceNotificationSettingsItemProvider init]", v5}];

  return 0;
}

- (HMUser)user
{
  v2 = [(HUAnnounceNotificationSettingsItemProvider *)self home];
  v3 = [v2 currentUser];

  return v3;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v3 = [(HUAnnounceNotificationSettingsItemProvider *)self _notificationModes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_3;
  v9[3] = &unk_277DB93F0;
  objc_copyWeak(&v10, &location);
  v4 = [(HFItemProvider *)self reloadItemsWithObjects:v3 keyAdaptor:&__block_literal_global_32 itemAdaptor:&__block_literal_global_57_0 filter:0 itemMap:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_5;
  v7[3] = &unk_277DB7FA8;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

uint64_t __57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 notificationMode];

  return [v2 numberWithUnsignedInteger:v3];
}

HUAnnounceNotificationSettingsItem *__57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_4;
  v12[3] = &unk_277DB85D8;
  v6 = v3;
  v13 = v6;
  v7 = [v5 na_firstObjectPassingTest:v12];

  if (!v7)
  {
    v8 = [HUAnnounceNotificationSettingsItem alloc];
    v9 = [v6 unsignedIntegerValue];
    v10 = [WeakRetained user];
    v7 = [(HUAnnounceNotificationSettingsItem *)v8 initWithNotificationMode:v9 user:v10];
  }

  return v7;
}

BOOL __57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 notificationMode];
    v8 = v7 == [*(a1 + 32) unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __57__HUAnnounceNotificationSettingsItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained items];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HUAnnounceNotificationSettingsItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:*MEMORY[0x277D13B88]];

  return v3;
}

- (id)_notificationModes
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:&unk_282490D40];
  v4 = [MEMORY[0x277D147A8] sharedDispatcher];
  [v4 authorizationStatus];

  if (HFLocationServicesAvailableForAuthorizationStatus())
  {
    [v3 addObject:&unk_282490D58];
    v5 = [(HUAnnounceNotificationSettingsItemProvider *)self home];
    v6 = [(HUAnnounceNotificationSettingsItemProvider *)self user];
    v7 = [v5 homeAccessControlForUser:v6];
    v8 = [v7 isRemoteAccessAllowed];

    if (v8)
    {
      [v3 addObject:&unk_282490D70];
    }
  }

  v9 = [v3 copy];

  return v9;
}

@end