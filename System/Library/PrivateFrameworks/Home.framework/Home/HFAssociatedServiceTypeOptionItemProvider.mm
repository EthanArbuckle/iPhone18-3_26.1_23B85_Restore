@interface HFAssociatedServiceTypeOptionItemProvider
+ (id)_allItemsForService:(id)a3 serviceType:(id)a4;
+ (id)_itemForService:(id)a3 associatedServiceType:(id)a4;
- (HFAssociatedServiceTypeOptionItemProvider)initWithItems:(id)a3;
- (HFAssociatedServiceTypeOptionItemProvider)initWithService:(id)a3 serviceType:(id)a4 home:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFAssociatedServiceTypeOptionItemProvider

- (HFAssociatedServiceTypeOptionItemProvider)initWithItems:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithServiceType_home_);
  [v5 handleFailureInMethod:a2 object:self file:@"HFAssociatedServiceTypeOptionItemProvider.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HFAssociatedServiceTypeOptionItemProvider initWithItems:]", v6}];

  return 0;
}

- (HFAssociatedServiceTypeOptionItemProvider)initWithService:(id)a3 serviceType:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_opt_class() _allItemsForService:v9 serviceType:v10];
  v15.receiver = self;
  v15.super_class = HFAssociatedServiceTypeOptionItemProvider;
  v13 = [(HFStaticItemProvider *)&v15 initWithItems:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_home, a5);
    objc_storeStrong(&v13->_serviceType, a4);
    objc_storeStrong(&v13->_service, a3);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFAssociatedServiceTypeOptionItemProvider *)self service];
  v6 = [(HFAssociatedServiceTypeOptionItemProvider *)self serviceType];
  v7 = [(HFAssociatedServiceTypeOptionItemProvider *)self home];
  v8 = [v4 initWithService:v5 serviceType:v6 home:v7];

  return v8;
}

+ (id)_allItemsForService:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = [HFAssociatedServiceTypeFactory associatedServiceTypesSetFor:a4];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__HFAssociatedServiceTypeOptionItemProvider__allItemsForService_serviceType___block_invoke;
  v17 = &unk_277DFDF30;
  v19 = a1;
  v8 = v6;
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

+ (id)_itemForService:(id)a3 associatedServiceType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CD1D90] hf_userFriendlyLocalizedCapitalizedDescription:v6];
  v8 = [v5 serviceSubtype];
  v9 = [HFServiceIconFactory defaultIconDescriptorForServiceType:v6 serviceSubtype:v8];

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
    NSLog(&cfstr_MissingTitleOr.isa, v6);
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
    v17 = v6;
    v18 = v5;
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