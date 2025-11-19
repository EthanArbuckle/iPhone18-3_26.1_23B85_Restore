@interface HFHomeItem
- (HFHomeItem)init;
- (HFHomeItem)initWithHome:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFHomeItem

- (HFHomeItem)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFHomeItem;
  v6 = [(HFHomeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (HFHomeItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFHomeItem.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HFHomeItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFHomeItem *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFHomeItem *)self home];
  v7 = [v6 hf_prettyDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v7];

  return v8;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFHomeItem *)self home];
  v7 = [v6 hf_prettyDescription];
  v8 = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, v7, v8];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HFHomeItem *)self home];

  if (!v4)
  {
    NSLog(&cfstr_HomeMustBeSetO.isa);
  }

  v5 = [(HFHomeItem *)self home];

  if (v5)
  {
    v6 = objc_alloc_init(HFMutableItemUpdateOutcome);
    v7 = [(HFHomeItem *)self home];
    v8 = [v7 name];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v8 forKeyedSubscript:@"title"];

    v9 = [(HFHomeItem *)self home];
    v10 = [v9 hf_reorderableServicesList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v10 forKeyedSubscript:@"reorderableServiceItemList"];

    v11 = [(HFHomeItem *)self home];
    v12 = [v11 hf_reorderableActionSetsList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v12 forKeyedSubscript:@"reorderableActionSetItemList"];

    v13 = [(HFHomeItem *)self home];
    v14 = [v13 hf_reorderableCamerasList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v14 forKeyedSubscript:@"reorderableCameraItemList"];

    v15 = [(HFHomeItem *)self home];
    v16 = [v15 hf_reorderableRoomsList];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v16 forKeyedSubscript:@"reorderableRoomItemList"];

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v17 forKeyedSubscript:@"dependentHomeKitClasses"];

    v18 = +[HFHomeKitDispatcher sharedDispatcher];
    v19 = [v18 homeManager];
    v20 = [v19 incomingHomeInvitations];
    v21 = [v20 count];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    [(HFMutableItemUpdateOutcome *)v6 setObject:v22 forKeyedSubscript:@"incomingHomeInvitationsCount"];

    v23 = MEMORY[0x277CCABB0];
    v24 = [(HFHomeItem *)self home];
    v25 = [v23 numberWithBool:{objc_msgSend(v24, "hf_currentUserIsAdministrator")}];
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