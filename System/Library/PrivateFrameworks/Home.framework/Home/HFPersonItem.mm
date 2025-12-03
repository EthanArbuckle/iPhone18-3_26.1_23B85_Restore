@interface HFPersonItem
- (HFPersonItem)initWithPerson:(id)person fromPersonManager:(id)manager home:(id)home;
- (NSString)description;
- (id)_homeKitObjectFetch;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFPersonItem

- (HFPersonItem)initWithPerson:(id)person fromPersonManager:(id)manager home:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFPersonItem;
  v11 = [(HFFetchedHomeKitObjectItem *)&v14 initWithHomeKitObject:person];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personManager, manager);
    objc_storeStrong(&v12->_home, home);
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HFPersonItem;
  v4 = [(HFItem *)&v9 description];
  person = [(HFPersonItem *)self person];
  personManager = [(HFPersonItem *)self personManager];
  v7 = [v3 stringWithFormat:@"%@ person: %@ manager: %@", v4, person, personManager];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  person = [(HFPersonItem *)self person];
  personManager = [(HFPersonItem *)self personManager];
  home = [(HFPersonItem *)self home];
  v8 = [v4 initWithPerson:person fromPersonManager:personManager home:home];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = HFPersonItem;
  v5 = [(HFFetchedHomeKitObjectItem *)&v11 _subclass_updateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HFPersonItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v9[4] = self;
  v10 = optionsCopy;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __44__HFPersonItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [HFPersonItemUpdateRequest alloc];
  v5 = [*(a1 + 32) person];
  v6 = [*(a1 + 32) personManager];
  v7 = [*(a1 + 32) home];
  v8 = [(HFPersonItemUpdateRequest *)v4 initWithPerson:v5 personManager:v6 home:v7];

  v9 = [(HFPersonItemUpdateRequest *)v8 updateWithOptions:*(a1 + 40)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HFPersonItem__subclass_updateWithOptions___block_invoke_2;
  v13[3] = &unk_277DF43A8;
  v14 = v3;
  v10 = v3;
  v11 = [v9 flatMap:v13];

  return v11;
}

uint64_t __44__HFPersonItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addResultsFromOutcome:a2];
  v3 = MEMORY[0x277D2C900];
  v4 = *(a1 + 32);

  return [v3 futureWithResult:v4];
}

- (id)_homeKitObjectFetch
{
  personManager = [(HFPersonItem *)self personManager];
  person = [(HFPersonItem *)self person];
  uUID = [person UUID];
  v6 = [personManager hf_personWithIdentifier:uUID];

  return v6;
}

@end