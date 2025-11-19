@interface HFAccessoryInvitationAccessoryProfileItemProvider
- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)a3;
- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)a3 user:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
@end

@implementation HFAccessoryInvitationAccessoryProfileItemProvider

- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_user_);
  [v5 handleFailureInMethod:a2 object:self file:@"HFAccessoryInvitationAccessoryProfileItemProvider.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInvitationAccessoryProfileItemProvider initWithHome:]", v6}];

  return 0;
}

- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)a3 user:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HFAccessoryInvitationAccessoryProfileItemProvider;
  v8 = [(HFAccessoryProfileItemProvider *)&v15 initWithHome:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, a4);
    objc_initWeak(&location, v9);
    v12 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v13, &location);
    v10 = [(HFAccessoryProfileItemProvider *)v9 filterOptions:v12];
    [v10 setByFilter:&v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v9;
}

uint64_t __71__HFAccessoryInvitationAccessoryProfileItemProvider_initWithHome_user___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained user];
  v6 = [v5 pendingAccessoryInvitations];
  v7 = [v6 na_map:&__block_literal_global_160];

  v8 = [v3 accessory];

  v9 = [v7 containsObject:v8];
  return v9;
}

id __71__HFAccessoryInvitationAccessoryProfileItemProvider_initWithHome_user___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 accessory];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFAccessoryProfileItemProvider *)self home];
  v6 = [(HFAccessoryInvitationAccessoryProfileItemProvider *)self user];
  v7 = [v4 initWithHome:v5 user:v6];

  return v7;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFAccessoryInvitationAccessoryProfileItemProvider;
  v2 = [(HFAccessoryProfileItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"pendingAccessories"];

  return v3;
}

@end