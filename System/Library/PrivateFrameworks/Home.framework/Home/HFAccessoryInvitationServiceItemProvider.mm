@interface HFAccessoryInvitationServiceItemProvider
- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)home serviceTypes:(id)types;
- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)home user:(id)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filter;
- (id)invalidationReasons;
@end

@implementation HFAccessoryInvitationServiceItemProvider

- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)home serviceTypes:(id)types
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_user_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryInvitationServiceItemProvider.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInvitationServiceItemProvider initWithHome:serviceTypes:]", v7}];

  return 0;
}

- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)home user:(id)user
{
  userCopy = user;
  v11.receiver = self;
  v11.super_class = HFAccessoryInvitationServiceItemProvider;
  v8 = [(HFServiceItemProvider *)&v11 initWithHome:home serviceTypes:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, user);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFServiceItemProvider *)self home];
  user = [(HFAccessoryInvitationServiceItemProvider *)self user];
  v7 = [v4 initWithHome:home user:user];

  return v7;
}

- (id)filter
{
  v18.receiver = self;
  v18.super_class = HFAccessoryInvitationServiceItemProvider;
  filter = [(HFServiceItemProvider *)&v18 filter];
  user = [(HFAccessoryInvitationServiceItemProvider *)self user];
  pendingAccessoryInvitations = [user pendingAccessoryInvitations];
  v6 = [pendingAccessoryInvitations na_map:&__block_literal_global_196];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__HFAccessoryInvitationServiceItemProvider_filter__block_invoke_2;
  v15 = &unk_277E00518;
  v16 = v6;
  v17 = filter;
  v7 = v6;
  v8 = filter;
  v9 = _Block_copy(&v12);
  v10 = [v9 copy];

  return v10;
}

id __50__HFAccessoryInvitationServiceItemProvider_filter__block_invoke(uint64_t a1, void *a2)
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

uint64_t __50__HFAccessoryInvitationServiceItemProvider_filter__block_invoke_2(uint64_t a1, void *a2)
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

  v7 = *(a1 + 40);
  if (v7 && !(*(v7 + 16))(v7, v4))
  {
    v10 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v6 accessory];
    v10 = [v8 containsObject:v9];
  }

  return v10;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFAccessoryInvitationServiceItemProvider;
  invalidationReasons = [(HFServiceItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"pendingAccessories"];

  return v3;
}

@end