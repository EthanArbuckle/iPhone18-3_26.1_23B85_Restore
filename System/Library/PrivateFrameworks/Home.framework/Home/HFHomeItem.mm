@interface HFHomeItem
- (HFHomeItem)init;
- (HFHomeItem)initWithHome:(id)home;
- (NSString)debugDescription;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFHomeItem

- (HFHomeItem)initWithHome:(id)home
{
  homeCopy = home;
  v9.receiver = self;
  v9.super_class = HFHomeItem;
  v6 = [(HFHomeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
  }

  return v7;
}

- (HFHomeItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomeItem.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HFHomeItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFHomeItem *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  home = [(HFHomeItem *)self home];
  hf_prettyDescription = [home hf_prettyDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, hf_prettyDescription];

  return v8;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  home = [(HFHomeItem *)self home];
  hf_prettyDescription = [home hf_prettyDescription];
  latestResults = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  home = [(HFHomeItem *)self home];

  if (!home)
  {
    NSLog(&cfstr_HomeMustBeSetO.isa);
  }

  home2 = [(HFHomeItem *)self home];

  if (home2)
  {
    v6 = objc_alloc_init(HFMutableItemUpdateOutcome);
    home3 = [(HFHomeItem *)self home];
    name = [home3 name];
    [(HFMutableItemUpdateOutcome *)v6 setObject:name forKeyedSubscript:@"title"];

    home4 = [(HFHomeItem *)self home];
    hf_reorderableServicesList = [home4 hf_reorderableServicesList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:hf_reorderableServicesList forKeyedSubscript:@"reorderableServiceItemList"];

    home5 = [(HFHomeItem *)self home];
    hf_reorderableActionSetsList = [home5 hf_reorderableActionSetsList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:hf_reorderableActionSetsList forKeyedSubscript:@"reorderableActionSetItemList"];

    home6 = [(HFHomeItem *)self home];
    hf_reorderableCamerasList = [home6 hf_reorderableCamerasList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:hf_reorderableCamerasList forKeyedSubscript:@"reorderableCameraItemList"];

    home7 = [(HFHomeItem *)self home];
    hf_reorderableRoomsList = [home7 hf_reorderableRoomsList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:hf_reorderableRoomsList forKeyedSubscript:@"reorderableRoomItemList"];

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v17 forKeyedSubscript:@"dependentHomeKitClasses"];

    v18 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v18 homeManager];
    incomingHomeInvitations = [homeManager incomingHomeInvitations];
    v21 = [incomingHomeInvitations count];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v22 forKeyedSubscript:@"incomingHomeInvitationsCount"];

    v23 = MEMORY[0x277CCABB0];
    home8 = [(HFHomeItem *)self home];
    v25 = [v23 numberWithBool:{objc_msgSend(home8, "hf_currentUserIsAdministrator")}];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v25 forKeyedSubscript:@"administrator"];

    [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v26 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [v26 futureWithError:v6];
  }
  v27 = ;

  return v27;
}

@end