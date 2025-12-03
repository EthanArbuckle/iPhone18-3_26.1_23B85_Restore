@interface HFOutgoingHomeInvitationItemProvider
- (HFOutgoingHomeInvitationItemProvider)init;
- (HFOutgoingHomeInvitationItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFOutgoingHomeInvitationItemProvider

- (HFOutgoingHomeInvitationItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFOutgoingHomeInvitationItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outgoingInvites = v7->_outgoingInvites;
    v7->_outgoingInvites = v8;
  }

  return v7;
}

- (HFOutgoingHomeInvitationItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFOutgoingHomeInvitationItemProvider.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFOutgoingHomeInvitationItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFOutgoingHomeInvitationItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  home = [(HFOutgoingHomeInvitationItemProvider *)self home];
  outgoingInvitations = [home outgoingInvitations];

  objc_initWeak(&location, self);
  filter = [(HFOutgoingHomeInvitationItemProvider *)self filter];
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:outgoingInvitations filter:filter itemMap:&__block_literal_global_56];
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
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"outgoinginvitations"];

  return v3;
}

@end