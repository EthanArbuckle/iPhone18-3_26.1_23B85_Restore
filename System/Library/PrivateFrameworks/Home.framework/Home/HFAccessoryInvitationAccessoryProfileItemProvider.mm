@interface HFAccessoryInvitationAccessoryProfileItemProvider
- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)home;
- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)home user:(id)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
@end

@implementation HFAccessoryInvitationAccessoryProfileItemProvider

- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)home
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_user_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryInvitationAccessoryProfileItemProvider.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInvitationAccessoryProfileItemProvider initWithHome:]", v6}];

  return 0;
}

- (HFAccessoryInvitationAccessoryProfileItemProvider)initWithHome:(id)home user:(id)user
{
  homeCopy = home;
  userCopy = user;
  v15.receiver = self;
  v15.super_class = HFAccessoryInvitationAccessoryProfileItemProvider;
  v8 = [(HFAccessoryProfileItemProvider *)&v15 initWithHome:homeCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, user);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFAccessoryProfileItemProvider *)self home];
  user = [(HFAccessoryInvitationAccessoryProfileItemProvider *)self user];
  v7 = [v4 initWithHome:home user:user];

  return v7;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFAccessoryInvitationAccessoryProfileItemProvider;
  invalidationReasons = [(HFAccessoryProfileItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"pendingAccessories"];

  return v3;
}

@end