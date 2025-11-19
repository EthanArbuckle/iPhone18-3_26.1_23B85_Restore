@interface HFAccessoryInvitationServiceItemProvider
- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)a3 serviceTypes:(id)a4;
- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)a3 user:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filter;
- (id)invalidationReasons;
@end

@implementation HFAccessoryInvitationServiceItemProvider

- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)a3 serviceTypes:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_user_);
  [v6 handleFailureInMethod:a2 object:self file:@"HFAccessoryInvitationServiceItemProvider.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryInvitationServiceItemProvider initWithHome:serviceTypes:]", v7}];

  return 0;
}

- (HFAccessoryInvitationServiceItemProvider)initWithHome:(id)a3 user:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFAccessoryInvitationServiceItemProvider;
  v8 = [(HFServiceItemProvider *)&v11 initWithHome:a3 serviceTypes:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_user, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFServiceItemProvider *)self home];
  v6 = [(HFAccessoryInvitationServiceItemProvider *)self user];
  v7 = [v4 initWithHome:v5 user:v6];

  return v7;
}

- (id)filter
{
  v18.receiver = self;
  v18.super_class = HFAccessoryInvitationServiceItemProvider;
  v3 = [(HFServiceItemProvider *)&v18 filter];
  v4 = [(HFAccessoryInvitationServiceItemProvider *)self user];
  v5 = [v4 pendingAccessoryInvitations];
  v6 = [v5 na_map:&__block_literal_global_196];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__HFAccessoryInvitationServiceItemProvider_filter__block_invoke_2;
  v15 = &unk_277E00518;
  v16 = v6;
  v17 = v3;
  v7 = v6;
  v8 = v3;
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
  v2 = [(HFServiceItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"pendingAccessories"];

  return v3;
}

@end