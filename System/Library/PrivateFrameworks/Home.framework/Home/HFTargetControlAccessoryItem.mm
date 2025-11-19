@interface HFTargetControlAccessoryItem
+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4;
- (HFTargetControlAccessoryItem)init;
- (HFTargetControlAccessoryItem)initWithAccessory:(id)a3 valueSource:(id)a4;
- (HMHome)home;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
- (id)iconDescriptor;
- (id)namingComponentForHomeKitObject;
- (id)serviceLikeBuilderInHome:(id)a3;
@end

@implementation HFTargetControlAccessoryItem

+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 hf_homeKitObject];

  v10 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10;
    if (v11)
    {
      goto LABEL_8;
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v12 = 0;
LABEL_8:

  v15 = [[a1 alloc] initWithAccessory:v12 valueSource:v6];

  return v15;
}

- (HFTargetControlAccessoryItem)initWithAccessory:(id)a3 valueSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFTargetControlAccessoryItem;
  v9 = [(HFTargetControlAccessoryItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, a3);
    objc_storeStrong(&v10->_valueSource, a4);
  }

  return v10;
}

- (HFTargetControlAccessoryItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_valueSource_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFTargetControlAccessoryItem.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFTargetControlAccessoryItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFTargetControlAccessoryItem *)self valueSource];
  v5 = [(HFTargetControlAccessoryItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [HFServiceLikeItemUpdateRequest alloc];
  v7 = [(HFTargetControlAccessoryItem *)self accessory];
  v8 = [(HFTargetControlAccessoryItem *)self valueSource];
  v9 = [MEMORY[0x277CBEB98] set];
  v10 = [(HFServiceLikeItemUpdateRequest *)v6 initWithAccessory:v7 valueSource:v8 characteristics:v9];

  if (v10)
  {
    v11 = [(HFServiceLikeItemUpdateRequest *)v10 updateWithOptions:v5];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__HFTargetControlAccessoryItem__subclass_updateWithOptions___block_invoke;
    v20[3] = &unk_277DF2828;
    v20[4] = self;
    v12 = [v11 flatMap:v20];
  }

  else
  {
    v13 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [(HFTargetControlAccessoryItem *)self accessory];
      *buf = 138412802;
      v22 = self;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "%@:%@ Failed to create HFServiceLikeItemUpdateRequest. Accessory: %@ ", buf, 0x20u);
    }

    v14 = MEMORY[0x277D2C900];
    v11 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
    v12 = [v14 futureWithResult:v11];
  }

  v15 = v12;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __60__HFTargetControlAccessoryItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 standardResults];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"state"];
  v6 = [v5 integerValue];

  v7 = &HFCAPackageStateOn;
  if (v6 != 2)
  {
    v7 = &HFCAPackageStateOff;
  }

  v8 = *v7;
  v9 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierRemoteControl" state:v8];
  [v4 setObject:v9 forKeyedSubscript:@"icon"];

  v10 = [*(a1 + 32) accessory];
  v11 = [v10 room];
  v12 = [v11 uniqueIdentifier];
  [v4 na_safeSetObject:v12 forKey:@"roomIdentifier"];

  v13 = [*(a1 + 32) accessory];
  v14 = [v13 hf_serviceNameComponents];

  if (v14)
  {
    [v4 setObject:v14 forKeyedSubscript:@"serviceNameComponents"];
    v15 = [v14 composedString];
    if (v15)
    {
      [v4 setObject:v15 forKeyedSubscript:@"title"];
    }

    v16 = [v4 objectForKeyedSubscript:@"controlDescription"];

    if (!v16)
    {
      [v4 setObject:v15 forKeyedSubscript:@"controlDescription"];
    }
  }

  v17 = [v4 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v18 = [v17 mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x277CBEB58] set];
  }

  v21 = v20;

  v22 = [*(a1 + 32) accessory];
  [v21 addObject:v22];

  [v4 setObject:v21 forKeyedSubscript:@"dependentHomeKitObjects"];
  v23 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setObject:v23 forKeyedSubscript:@"dependentHomeKitClasses"];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
  v24 = MEMORY[0x277D2C900];
  v25 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v26 = [v24 futureWithResult:v25];

  return v26;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = [HFTargetControlAccessoryItem alloc];
  v6 = [(HFTargetControlAccessoryItem *)self accessory];
  v7 = [(HFTargetControlAccessoryItem *)v5 initWithAccessory:v6 valueSource:v4];

  [(HFItem *)v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)iconDescriptor
{
  v2 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierRemoteControl"];

  return v2;
}

- (HMHome)home
{
  v2 = [(HFTargetControlAccessoryItem *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFTargetControlAccessoryItem *)self accessory];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)serviceLikeBuilderInHome:(id)a3
{
  v4 = a3;
  v5 = [HFAccessoryBuilder alloc];
  v6 = [(HFTargetControlAccessoryItem *)self homeKitObject];
  v7 = [(HFAccessoryBuilder *)v5 initWithExistingObject:v6 inHome:v4];

  return v7;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFTargetControlAccessoryItem *)self accessory];
  v3 = [HFNamingComponents namingComponentFromAccessory:v2];

  return v3;
}

@end