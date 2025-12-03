@interface HFAccessoryProfileItem
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
- (HFAccessoryProfileItem)init;
- (HFAccessoryProfileItem)initWithProfile:(id)profile valueSource:(id)source;
- (HMAccessory)accessory;
- (HMHome)home;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)namingComponentForHomeKitObject;
- (id)profiles;
- (id)serviceLikeBuilderInHome:(id)home;
@end

@implementation HFAccessoryProfileItem

- (HFAccessoryProfileItem)initWithProfile:(id)profile valueSource:(id)source
{
  profileCopy = profile;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HFAccessoryProfileItem;
  v9 = [(HFAccessoryProfileItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    objc_storeStrong(&v10->_valueSource, source);
  }

  return v10;
}

- (HFAccessoryProfileItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithProfile_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryProfileItem.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryProfileItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFAccessoryProfileItem *)self valueSource];
  v5 = [(HFAccessoryProfileItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (HMAccessory)accessory
{
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];

  return accessory;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = [HFServiceLikeItemUpdateRequest alloc];
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];
  valueSource = [(HFAccessoryProfileItem *)self valueSource];
  v10 = [MEMORY[0x277CBEB98] set];
  v11 = [(HFServiceLikeItemUpdateRequest *)v6 initWithAccessory:accessory valueSource:valueSource characteristics:v10];

  if (v11)
  {
    v12 = [(HFServiceLikeItemUpdateRequest *)v11 updateWithOptions:optionsCopy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__HFAccessoryProfileItem__subclass_updateWithOptions___block_invoke;
    v21[3] = &unk_277DF2828;
    v21[4] = self;
    v13 = [v12 flatMap:v21];
  }

  else
  {
    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      profile2 = [(HFAccessoryProfileItem *)self profile];
      *buf = 138412802;
      selfCopy = self;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = profile2;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "%@:%@ Failed to create HFServiceLikeItemUpdateRequest. Profile: %@ ", buf, 0x20u);
    }

    v15 = MEMORY[0x277D2C900];
    v12 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
    v13 = [v15 futureWithResult:v12];
  }

  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __54__HFAccessoryProfileItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 standardResults];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x277CBEB98];
  v6 = [*(a1 + 32) profile];
  v7 = [*(a1 + 32) profile];
  v8 = [v7 accessory];
  v9 = [v5 setWithObjects:{v6, v8, 0}];
  [v4 setObject:v9 forKeyedSubscript:@"dependentHomeKitObjects"];

  v10 = [*(a1 + 32) profile];
  v11 = [v10 hf_parentRoom];
  v12 = [v11 uniqueIdentifier];
  [v4 setObject:v12 forKeyedSubscript:@"roomIdentifier"];

  v13 = [*(a1 + 32) accessory];
  v14 = [v13 name];
  [v4 setObject:v14 forKeyedSubscript:@"title"];

  v15 = [*(a1 + 32) profile];
  v16 = [v15 hf_iconDescriptor];
  [v4 setObject:v16 forKeyedSubscript:@"icon"];

  v17 = [*(a1 + 32) profile];
  v18 = [v17 accessory];
  v19 = [v18 hf_serviceNameComponents];
  [v4 setObject:v19 forKeyedSubscript:@"serviceNameComponents"];

  v20 = MEMORY[0x277D2C900];
  v21 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

- (HMHome)home
{
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];
  home = [accessory home];

  return home;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];
  v5 = [v2 setWithObject:accessory];

  return v5;
}

- (id)profiles
{
  v2 = MEMORY[0x277CBEB98];
  profile = [(HFAccessoryProfileItem *)self profile];
  v4 = [v2 setWithObject:profile];

  return v4;
}

- (id)namingComponentForHomeKitObject
{
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];
  v4 = [HFNamingComponents namingComponentFromAccessory:accessory];

  return v4;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  v5 = [HFAccessoryBuilder alloc];
  profile = [(HFAccessoryProfileItem *)self profile];
  accessory = [profile accessory];
  v8 = [(HFAccessoryBuilder *)v5 initWithExistingObject:accessory inHome:homeCopy];

  return v8;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  profile = [(HFAccessoryProfileItem *)self profile];
  v7 = [v5 initWithProfile:profile valueSource:sourceCopy];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (NSSet)services
{
  v2 = MEMORY[0x277CBEB98];
  profile = [(HFAccessoryProfileItem *)self profile];
  services = [profile services];
  v5 = [v2 setWithArray:services];

  return v5;
}

+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source
{
  sourceCopy = source;
  objectCopy = object;
  v8 = objc_opt_class();
  hf_homeKitObject = [objectCopy hf_homeKitObject];

  v10 = hf_homeKitObject;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v12 = 0;
LABEL_8:

  v15 = [[self alloc] initWithProfile:v12 valueSource:sourceCopy];

  return v15;
}

@end