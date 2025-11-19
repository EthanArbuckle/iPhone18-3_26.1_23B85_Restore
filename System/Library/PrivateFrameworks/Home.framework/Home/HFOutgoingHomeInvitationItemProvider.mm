@interface HFOutgoingHomeInvitationItemProvider
- (HFOutgoingHomeInvitationItemProvider)init;
- (HFOutgoingHomeInvitationItemProvider)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFOutgoingHomeInvitationItemProvider

- (HFOutgoingHomeInvitationItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFOutgoingHomeInvitationItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outgoingInvites = v7->_outgoingInvites;
    v7->_outgoingInvites = v8;
  }

  return v7;
}

- (HFOutgoingHomeInvitationItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFOutgoingHomeInvitationItemProvider.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFOutgoingHomeInvitationItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFOutgoingHomeInvitationItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  v3 = [(HFOutgoingHomeInvitationItemProvider *)self home];
  v4 = [v3 outgoingInvitations];

  objc_initWeak(&location, self);
  v5 = [(HFOutgoingHomeInvitationItemProvider *)self filter];
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v4 filter:v5 itemMap:&__block_literal_global_56];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HFOutgoingHomeInvitationItemProvider_reloadItems__block_invoke_2;
  v9[3] = &unk_277DF30B8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

HFOutgoingHomeInvitationItem *__51__HFOutgoingHomeInvitationItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [[HFOutgoingHomeInvitationItem alloc] initWithOutgoingInvitation:v5];

  return v6;
}

id __51__HFOutgoingHomeInvitationItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained outgoingInvites];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained outgoingInvites];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFOutgoingHomeInvitationItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"outgoinginvitations"];

  return v3;
}

@end