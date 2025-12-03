@interface HFAssociatedServiceTypeOptionItemProvider
+ (id)_allItemsForService:(id)service serviceType:(id)type;
+ (id)_itemForService:(id)service associatedServiceType:(id)type;
- (HFAssociatedServiceTypeOptionItemProvider)initWithItems:(id)items;
- (HFAssociatedServiceTypeOptionItemProvider)initWithService:(id)service serviceType:(id)type home:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFAssociatedServiceTypeOptionItemProvider

- (HFAssociatedServiceTypeOptionItemProvider)initWithItems:(id)items
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithServiceType_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAssociatedServiceTypeOptionItemProvider.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HFAssociatedServiceTypeOptionItemProvider initWithItems:]", v6}];

  return 0;
}

- (HFAssociatedServiceTypeOptionItemProvider)initWithService:(id)service serviceType:(id)type home:(id)home
{
  serviceCopy = service;
  typeCopy = type;
  homeCopy = home;
  v12 = [objc_opt_class() _allItemsForService:serviceCopy serviceType:typeCopy];
  v15.receiver = self;
  v15.super_class = HFAssociatedServiceTypeOptionItemProvider;
  v13 = [(HFStaticItemProvider *)&v15 initWithItems:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v13->_serviceType, type);
    objc_storeStrong(&v13->_service, service);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  service = [(HFAssociatedServiceTypeOptionItemProvider *)self service];
  serviceType = [(HFAssociatedServiceTypeOptionItemProvider *)self serviceType];
  home = [(HFAssociatedServiceTypeOptionItemProvider *)self home];
  v8 = [v4 initWithService:service serviceType:serviceType home:home];

  return v8;
}

+ (id)_allItemsForService:(id)service serviceType:(id)type
{
  serviceCopy = service;
  v7 = [HFAssociatedServiceTypeFactory associatedServiceTypesSetFor:type];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__HFAssociatedServiceTypeOptionItemProvider__allItemsForService_serviceType___block_invoke;
  v17 = &unk_277DFDF30;
  selfCopy = self;
  v8 = serviceCopy;
  v18 = v8;
  v9 = [v7 na_map:&v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  v12 = v11;

  return v12;
}

+ (id)_itemForService:(id)service associatedServiceType:(id)type
{
  serviceCopy = service;
  typeCopy = type;
  v7 = [MEMORY[0x277CD1D90] hf_userFriendlyLocalizedCapitalizedDescription:typeCopy];
  serviceSubtype = [serviceCopy serviceSubtype];
  v9 = [HFServiceIconFactory defaultIconDescriptorForServiceType:typeCopy serviceSubtype:serviceSubtype];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    NSLog(&cfstr_MissingTitleOr.isa, typeCopy);
    v12 = 0;
  }

  else
  {
    v11 = [HFAssociatedServiceTypeOptionItem alloc];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__HFAssociatedServiceTypeOptionItemProvider__itemForService_associatedServiceType___block_invoke;
    v14[3] = &unk_277DFDF58;
    v15 = v7;
    v16 = v9;
    v17 = typeCopy;
    v18 = serviceCopy;
    v12 = [(HFStaticItem *)v11 initWithResultsBlock:v14];
  }

  return v12;
}

id __83__HFAssociatedServiceTypeOptionItemProvider__itemForService_associatedServiceType___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14[0] = @"title";
  v14[1] = @"icon";
  v15 = v2;
  v14[2] = @"associatedServiceType";
  v16 = *(a1 + 48);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:v14 count:3];
  v4 = [v3 mutableCopy];

  if (*(a1 + 56))
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:?];
    [v4 setObject:v5 forKeyedSubscript:@"dependentHomeKitObjects"];

    v6 = [*(a1 + 56) associatedServiceType];

    v7 = *(a1 + 56);
    if (v6)
    {
      [v7 associatedServiceType];
    }

    else
    {
      [v7 serviceType];
    }
    v8 = ;
    v9 = [v8 isEqualToString:*(a1 + 48)];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    [v4 setObject:v10 forKeyedSubscript:@"selected"];
  }

  v11 = [MEMORY[0x277D2C900] futureWithResult:v4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end