@interface HFGenericAccessoryItem
+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4;
- (HFGenericAccessoryItem)initWithAccessory:(id)a3 valueSource:(id)a4;
- (HMHome)home;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)namingComponentForHomeKitObject;
- (id)serviceLikeBuilderInHome:(id)a3;
@end

@implementation HFGenericAccessoryItem

- (HFGenericAccessoryItem)initWithAccessory:(id)a3 valueSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFGenericAccessoryItem;
  v9 = [(HFGenericAccessoryItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, a3);
    objc_storeStrong(&v10->_valueSource, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [HFServiceLikeItemUpdateRequest alloc];
  v7 = [(HFGenericAccessoryItem *)self accessory];
  v8 = [(HFGenericAccessoryItem *)self valueSource];
  v9 = [MEMORY[0x277CBEB98] set];
  v10 = [(HFServiceLikeItemUpdateRequest *)v6 initWithAccessory:v7 valueSource:v8 characteristics:v9];

  if (v10)
  {
    v11 = [(HFServiceLikeItemUpdateRequest *)v10 updateWithOptions:v5];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__HFGenericAccessoryItem__subclass_updateWithOptions___block_invoke;
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
      v19 = [(HFGenericAccessoryItem *)self accessory];
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

id __54__HFGenericAccessoryItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [a2 standardResults];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 32) accessory];
  if ([v5 hf_requiresFirmwareUpdate])
  {
    v6 = @"HFServiceLongFormErrorDoesNotSupportNotifications";
  }

  else
  {
    v6 = @"HFServiceLongFormErrorAccessoryTypeNotSupported";
  }

  v7 = _HFLocalizedStringWithDefaultValue(v6, v6, 1);

  v8 = [*(a1 + 32) accessory];
  v9 = [v8 room];
  v10 = [v9 uniqueIdentifier];
  [v4 na_safeSetObject:v10 forKey:@"roomIdentifier"];

  v22[0] = @"description";
  v11 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryNotSupported", @"HFServiceDescriptionAccessoryNotSupported", 1);
  v23[0] = v11;
  v23[1] = v7;
  v22[1] = @"longErrorDescription";
  v22[2] = @"state";
  v23[2] = &unk_2825232E0;
  v22[3] = @"icon";
  v12 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
  v23[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  [v4 addEntriesFromDictionary:v13];

  v14 = [*(a1 + 32) accessory];
  v15 = [v14 hf_serviceNameComponents];

  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"serviceNameComponents"];
    v16 = [v15 composedString];
    if (v16)
    {
      [v4 setObject:v16 forKeyedSubscript:@"title"];
    }
  }

  v17 = MEMORY[0x277D2C900];
  v18 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v19 = [v17 futureWithResult:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFGenericAccessoryItem *)self valueSource];
  v5 = [(HFGenericAccessoryItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = [HFGenericAccessoryItem alloc];
  v6 = [(HFGenericAccessoryItem *)self accessory];
  v7 = [(HFGenericAccessoryItem *)v5 initWithAccessory:v6 valueSource:v4];

  [(HFItem *)v7 copyLatestResultsFromItem:self];
  return v7;
}

- (HMHome)home
{
  v2 = [(HFGenericAccessoryItem *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFGenericAccessoryItem *)self accessory];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (NSSet)services
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFGenericAccessoryItem *)self accessory];
  v4 = [v3 services];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)serviceLikeBuilderInHome:(id)a3
{
  v4 = a3;
  v5 = [HFAccessoryBuilder alloc];
  v6 = [(HFGenericAccessoryItem *)self homeKitObject];
  v7 = [(HFAccessoryBuilder *)v5 initWithExistingObject:v6 inHome:v4];

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFGenericAccessoryItem *)self accessory];
  v3 = [HFNamingComponents namingComponentFromAccessory:v2];

  return v3;
}

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

@end