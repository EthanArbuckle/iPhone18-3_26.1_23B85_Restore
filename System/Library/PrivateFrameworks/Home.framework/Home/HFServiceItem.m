@interface HFServiceItem
+ (Class)itemClassForService:(id)a3;
+ (NSDictionary)_serviceTypeToServiceItemClassMap;
+ (NSSet)supportedServiceTypes;
+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4;
+ (id)serviceItemForService:(id)a3 valueSource:(id)a4;
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (HFServiceItem)init;
- (HFServiceItem)initWithValueSource:(id)a3 service:(id)a4;
- (HMHome)home;
- (NSSet)services;
- (NSString)debugDescription;
- (NSString)description;
- (id)_actionableCharacteristics;
- (id)_allRepresentedServices;
- (id)_augmentedStandardResultsForUpdateResponse:(id)a3 controlItems:(id)a4;
- (id)_descriptionBuilder;
- (id)_siriEndPointProfiles;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)characteristicsToReadForCharacteristicTypes:(id)a3 controlItems:(id)a4;
- (id)characteristicsToReadWithCharacteristicTypes:(id)a3 options:(id)a4 controlItems:(id *)a5;
- (id)controlDescriptionForCharacteristic:(id)a3 withValue:(id)a4;
- (id)controlItemValueSourceForPrimaryService;
- (id)controlItemValueSourceForServices:(id)a3;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
- (id)descriptionForCharacteristic:(id)a3 withValue:(id)a4;
- (id)incrementalStateIconDescriptorForPrimaryState:(int64_t)a3 incrementalValue:(id)a4;
- (id)namingComponentForHomeKitObject;
- (id)performStandardUpdateWithCharacteristicTypes:(id)a3 options:(id)a4;
- (id)serviceLikeBuilderInHome:(id)a3;
- (void)applyInflectionToDescriptions:(id)a3;
@end

@implementation HFServiceItem

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

  v15 = [a1 serviceItemForService:v12 valueSource:v6];

  return v15;
}

+ (NSSet)supportedServiceTypes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HFServiceItem.m" lineNumber:48 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFServiceItem supportedServiceTypes]", objc_opt_class()}];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

+ (NSDictionary)_serviceTypeToServiceItemClassMap
{
  if (qword_280E02438 != -1)
  {
    dispatch_once(&qword_280E02438, &__block_literal_global_232);
  }

  v3 = _MergedGlobals_3_3;

  return v3;
}

void __50__HFServiceItem__serviceTypeToServiceItemClassMap__block_invoke()
{
  v53 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 URLForResource:@"HFServiceItems" withExtension:@"plist"];

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v1 path];
  v4 = [v2 fileExistsAtPath:v3];

  v5 = HFLogForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v1;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Loading HFServiceItems.plist at URL %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v52 = v1;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Error finding HFServiceItems.plist at URL %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v1];
  v8 = HFLogForCategory(0);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v7;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Loaded HFServiceItems.plist data %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v52 = 0;
    _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Error loading HFServiceItems.plist data %@", buf, 0xCu);
  }

  v48 = 0;
  v49 = 200;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:&v49 error:&v48];
  v11 = v48;
  if (v11)
  {
    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v11;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Error deserializing HFServiceItems.plist %@", buf, 0xCu);
    }
  }

  v40 = v1;
  objc_opt_class();
  v13 = v10;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v38 = v13;

  objc_opt_class();
  v37 = v15;
  v16 = [v15 objectForKeyedSubscript:@"ServiceItems"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 count];
  v20 = HFLogForCategory(0);
  v21 = v20;
  v39 = v7;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Read services from HFServiceItems.plist", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "Error reading services from HFServiceItems.plist", buf, 2u);
  }

  v22 = [v18 mutableCopy];
  [v22 addObject:@"HFTelevisionServiceItem"];
  [v22 addObject:@"HFInputSourceServiceItem"];
  v36 = v22;
  v23 = [v22 copy];

  v24 = [MEMORY[0x277CBEB38] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = v23;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = NSClassFromString(*(*(&v44 + 1) + 8 * i));
        if ([(objc_class *)v30 isSubclassOfClass:objc_opt_class()])
        {
          v31 = v30 == 0;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = [(objc_class *)v30 supportedServiceTypes];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __50__HFServiceItem__serviceTypeToServiceItemClassMap__block_invoke_29;
          v41[3] = &unk_277E02738;
          v42 = v24;
          v43 = v30;
          [v32 enumerateObjectsUsingBlock:v41];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v27);
  }

  v33 = [v24 copy];
  v34 = _MergedGlobals_3_3;
  _MergedGlobals_3_3 = v33;

  v35 = *MEMORY[0x277D85DE8];
}

+ (Class)itemClassForService:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _serviceTypeToServiceItemClassMap];
  v5 = [v3 serviceType];

  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (id)serviceItemForService:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_msgSend(a1 itemClassForService:{v7)), "initWithValueSource:service:", v6, v7}];

  return v8;
}

- (HFServiceItem)initWithValueSource:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(HFServiceItem *)self isMemberOfClass:objc_opt_class()])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:119 description:@"HFServiceItem is an abstract base class. It must be instantiated using +serviceItemForService:valueSource: or using one of its concrete subclasses directly."];
  }

  v18.receiver = self;
  v18.super_class = HFServiceItem;
  v9 = [(HFServiceItem *)&v18 init];
  if (v9)
  {
    v10 = [HFOverrideCharacteristicValueSource alloc];
    v11 = [v8 home];
    v12 = [v11 hf_suspendedStateOverrideValueProvider];
    v13 = [(HFOverrideCharacteristicValueSource *)v10 initWithOriginalValueSource:v7 overrideValueProvider:v12];

    valueSource = v9->_valueSource;
    v9->_valueSource = v13;
    v15 = v13;

    objc_storeStrong(&v9->_service, a4);
  }

  return v9;
}

- (HFServiceItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_service_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:131 description:{@"%s is unavailable; use %@ instead", "-[HFServiceItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFServiceItem *)self valueSource];
  v5 = [(HFServiceItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFServiceItem *)self service];
  v7 = [v5 initWithValueSource:v4 service:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFServiceItem *)self service];
  v5 = [v4 hf_prettyDescription];
  v6 = [v3 appendObject:v5 withName:@"service"];

  v7 = [(HFServiceItem *)self service];
  v8 = [v7 hf_childServices];
  v9 = [v8 allObjects];
  [v3 appendArraySection:v9 withName:@"childServices" skipIfEmpty:1 objectTransformer:&__block_literal_global_49_2];

  return v3;
}

- (NSString)description
{
  v2 = [(HFServiceItem *)self _descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (NSString)debugDescription
{
  v3 = [(HFServiceItem *)self _descriptionBuilder];
  v4 = [(HFItem *)self latestResults];
  [v3 appendDictionarySection:v4 withName:@"results:" skipIfEmpty:0];

  v5 = [v3 build];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
  v5 = [v3 futureWithError:v4];

  return v5;
}

- (id)controlItemValueSourceForPrimaryService
{
  v3 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v4 = [(HFServiceItem *)self valueSource];
  v5 = MEMORY[0x277CBEB98];
  v6 = [(HFServiceItem *)self service];
  v7 = [v6 characteristics];
  v8 = [v5 setWithArray:v7];
  v9 = [(HFServiceItem *)self service];
  v10 = [v9 hf_serviceDescriptor];
  v11 = [(HFSimpleAggregatedCharacteristicValueSource *)v3 initWithValueSource:v4 characteristics:v8 primaryServiceDescriptor:v10];

  return v11;
}

- (id)controlItemValueSourceForServices:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"services.count > 0"}];
  }

  v6 = [(HFServiceItem *)self _allRepresentedServices];
  v7 = [v5 isSubsetOfSet:v6];

  if ((v7 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [v5 hf_prettyDescription];
    [v15 handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:196 description:{@"An HFServiceItem can only create a value source for its main service (self.service) and its child services (self.service.hf_childServices). But the client requested a value source for some other services: %@", v16}];
  }

  v8 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v9 = [(HFServiceItem *)self valueSource];
  v10 = [(HFServiceItem *)self service];
  v11 = [v10 hf_serviceDescriptor];
  v12 = [(HFSimpleAggregatedCharacteristicValueSource *)v8 initWithValueSource:v9 services:v5 primaryServiceDescriptor:v11];

  return v12;
}

- (id)_actionableCharacteristics
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = HFItemUpdateOptionDisableOptionalData;
  v10[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [(HFServiceItem *)self createControlItemsWithOptions:v3];

  v5 = [v4 na_flatMap:&__block_literal_global_67_5];
  v6 = [v5 na_filter:&__block_literal_global_73_0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __43__HFServiceItem__actionableCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicOptions];
  v4 = [v3 objectForKeyedSubscript:&unk_282525350];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFServiceItem__actionableCharacteristics__block_invoke_69;
  v8[3] = &unk_277DF2DD8;
  v9 = v2;
  v5 = v2;
  v6 = [v4 na_flatMap:v8];

  return v6;
}

id __43__HFServiceItem__actionableCharacteristics__block_invoke_69(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

- (BOOL)containsActions
{
  v2 = [(HFServiceItem *)self _actionableCharacteristics];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  v2 = [(HFServiceItem *)self _actionableCharacteristics];
  v3 = [v2 na_any:&__block_literal_global_75_3];

  return v3;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFServiceItem *)self service];

  if (!v5)
  {
    NSLog(&cfstr_CanTFindServic.isa);
  }

  v6 = [(HFServiceItem *)self service];

  if (v6)
  {
    v7 = [(HFServiceItem *)self _actionableCharacteristics];
    v8 = [(HFServiceItem *)self valueSource];
    v9 = [v8 readValuesForCharacteristics:v7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HFServiceItem_currentStateActionBuildersForHome___block_invoke;
    v13[3] = &unk_277DF3A40;
    v14 = v7;
    v15 = v4;
    v10 = v7;
    v11 = [v9 flatMap:v13];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [MEMORY[0x277D2C900] futureWithError:v8];
  }

  return v11;
}

id __51__HFServiceItem_currentStateActionBuildersForHome___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = *(a1 + 32);
  v31 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    v29 = 0;
    v30 = *v33;
    v28 = v5;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [v7 characteristicType];
        v9 = [v3 responseForCharacteristicType:v8];
        v10 = [v9 value];

        if (v10)
        {
          goto LABEL_10;
        }

        v11 = [v7 value];
        if (v11 || ([v7 hf_defaultValue], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = v11;
LABEL_10:
          v12 = [(HFItemBuilder *)[HFCharacteristicWriteActionBuilder alloc] initWithHome:*(a1 + 40)];
          [(HFCharacteristicWriteActionBuilder *)v12 setCharacteristic:v7];
          [(HFCharacteristicWriteActionBuilder *)v12 setTargetValue:v10];
          [v4 addObject:v12];
          v13 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
          v14 = [v7 characteristicType];
          if (![v13 containsObject:v14] || objc_msgSend(v10, "BOOLValue"))
          {

            goto LABEL_13;
          }

          v15 = a1;
          v16 = v4;
          v17 = v3;
          v18 = [v7 service];
          v19 = [v18 hf_isVisible];

          if (v19)
          {
            v13 = v29;
            v29 = v12;
            v3 = v17;
            v4 = v16;
            a1 = v15;
            v5 = v28;
LABEL_13:
          }

          else
          {
            v3 = v17;
            v4 = v16;
            a1 = v15;
            v5 = v28;
          }
        }

        ++v6;
      }

      while (v31 != v6);
      v20 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v31 = v20;
      if (!v20)
      {
        goto LABEL_23;
      }
    }
  }

  v29 = 0;
LABEL_23:

  v21 = objc_opt_new();
  v22 = v21;
  if (v29)
  {
    [v21 addObject:v29];
    v23 = v4;
  }

  else
  {
    [v4 allObjects];
    v24 = v23 = v4;
    [v22 addObjectsFromArray:v24];
  }

  v25 = [MEMORY[0x277D2C900] futureWithResult:v22];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HMHome)home
{
  v2 = [(HFServiceItem *)self service];
  v3 = [v2 home];

  return v3;
}

- (NSSet)services
{
  v3 = [(HFServiceItem *)self service];
  v4 = MEMORY[0x277CBEB98];
  if (v3)
  {
    v5 = [(HFServiceItem *)self service];
    v6 = [v4 setWithObject:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (id)accessories
{
  v2 = [(HFServiceItem *)self services];
  v3 = [v2 na_map:&__block_literal_global_85_2];

  return v3;
}

- (id)_siriEndPointProfiles
{
  v2 = [(HFServiceItem *)self accessories];
  v3 = [v2 na_filter:&__block_literal_global_88_0];

  return v3;
}

BOOL __38__HFServiceItem__siriEndPointProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_siriEndpointProfile];
  v3 = v2 != 0;

  return v3;
}

- (id)serviceLikeBuilderInHome:(id)a3
{
  v4 = a3;
  v5 = [HFServiceBuilder alloc];
  v6 = [(HFServiceItem *)self homeKitObject];
  v7 = [(HFServiceBuilder *)v5 initWithExistingObject:v6 inHome:v4];

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFServiceItem *)self service];
  v3 = [HFNamingComponents namingComponentFromService:v2];

  return v3;
}

- (id)characteristicsToReadForCharacteristicTypes:(id)a3 controlItems:(id)a4
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke;
  v12[3] = &unk_277DF2DD8;
  v12[4] = self;
  v6 = a4;
  v7 = [a3 na_flatMap:v12];
  v8 = [v7 mutableCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_3;
  v11[3] = &unk_277E02780;
  v11[4] = self;
  v9 = [v6 na_flatMap:v11];

  [v8 unionSet:v9];

  return v8;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) servicesToReadForCharacteristicType:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_2;
  v8[3] = &unk_277DF7AF8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_map:v8];

  return v6;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristicOptions];
  v5 = [v4 allCharacteristicTypes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_4;
  v19[3] = &unk_277DF2DD8;
  v6 = v3;
  v20 = v6;
  v7 = [v5 na_flatMap:v19];
  v8 = [v7 mutableCopy];

  objc_opt_class();
  v9 = v6;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 childServiceFilter];
    v13 = [v11 parentService];
    v14 = [v12 filteredChildServicesForParentService:v13];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_5;
    v18[3] = &unk_277DF7AF8;
    v18[4] = *(a1 + 32);
    v15 = [v14 na_map:v18];
    v16 = [v15 na_flatMap:&__block_literal_global_94_0];
    [v8 unionSet:v16];
  }

  return v8;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [HFServiceItem serviceItemForService:v3 valueSource:v4];

  return v5;
}

id __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_6(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = a2;
  v4 = [v2 set];
  v10 = HFItemUpdateOptionDisableOptionalData;
  v11[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v3 createControlItemsWithOptions:v5];
  v7 = [v3 characteristicsToReadForCharacteristicTypes:v4 controlItems:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)performStandardUpdateWithCharacteristicTypes:(id)a3 options:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v9 = a3;
  v10 = [v8 set];
  v27 = v10;
  v11 = [(HFServiceItem *)self characteristicsToReadWithCharacteristicTypes:v9 options:v7 controlItems:&v27];

  v12 = v27;
  v13 = [HFServiceLikeItemUpdateRequest alloc];
  v14 = [(HFServiceItem *)self service];
  v15 = [(HFServiceItem *)self valueSource];
  v16 = [(HFServiceLikeItemUpdateRequest *)v13 initWithService:v14 valueSource:v15 characteristics:v11];

  if (v16)
  {
    v17 = [(HFServiceLikeItemUpdateRequest *)v16 updateWithOptions:v7];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__HFServiceItem_performStandardUpdateWithCharacteristicTypes_options___block_invoke;
    v25[3] = &unk_277DF5578;
    v25[4] = self;
    v26 = v12;
    v18 = [v17 flatMap:v25];
  }

  else
  {
    v19 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = [(HFServiceItem *)self service];
      *buf = 138412802;
      v29 = self;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "%@:%@ Failed to create HFServiceLikeItemUpdateRequest. Service: %@ ", buf, 0x20u);
    }

    v20 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v18 = [v20 futureWithError:v17];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

id __70__HFServiceItem_performStandardUpdateWithCharacteristicTypes_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _augmentedStandardResultsForUpdateResponse:v4 controlItems:v3];
  v6 = [HFServiceLikeItemUpdateResponse alloc];
  v7 = [v4 displayMetadata];
  v8 = [v4 readResponse];

  v9 = [(HFServiceLikeItemUpdateResponse *)v6 initWithDisplayMetadata:v7 readResponse:v8 standardResults:v5];
  v10 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v10;
}

- (id)characteristicsToReadWithCharacteristicTypes:(id)a3 options:(id)a4 controlItems:(id *)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HFServiceItem *)self createControlItemsWithOptions:v9];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __83__HFServiceItem_characteristicsToReadWithCharacteristicTypes_options_controlItems___block_invoke;
  v57[3] = &unk_277E027A8;
  v57[4] = self;
  v11 = [v10 na_filter:v57];

  v48 = v11;
  v51 = [MEMORY[0x277CBEB58] setWithSet:v11];
  v49 = self;
  v12 = [(HFServiceItem *)self service];
  LODWORD(self) = [v12 isPrimaryService];

  if (!self)
  {
    goto LABEL_20;
  }

  v45 = a5;
  v46 = v9;
  v47 = v8;
  [(HFServiceItem *)v49 _siriEndPointProfiles];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v13 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = &selRef_accessoryDidUpdatePairingIdentity_;
  v52 = *v54;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v54 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v53 + 1) + 8 * i);
      v18 = v15[171];
      v19 = [v17 mediaProfile];
      if ([v19 conformsToProtocol:v18])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v22 = [v21 hf_mediaValueSource];
      if (v22)
      {
        v23 = [[HFMediaControlItem alloc] initWithValueSource:v22 mediaProfileContainer:v21 mediaAccessoryItemType:6 displayResults:0];
        [v51 addObject:v23];
        if (_os_feature_enabled_impl())
        {
          v24 = v15;
          v25 = +[HFHomeKitDispatcher sharedDispatcher];
          v26 = [(HFHomePodAlarmControlItem *)v25 home];
          if (![(HFHomePodTimerControlItem *)v26 hf_currentUserIsAdministrator])
          {
            goto LABEL_15;
          }

          v27 = [v17 hf_siriEndpointProfile];
          v28 = [v27 supportsOnboarding];

          v15 = v24;
          if (v28)
          {
            v25 = [[HFHomePodAlarmControlItem alloc] initWithMediaProfileContainer:v21 displayResults:0];
            [v51 addObject:v25];
            v26 = [[HFHomePodTimerControlItem alloc] initWithMediaProfileContainer:v21 displayResults:0];
            [v51 addObject:v26];
LABEL_15:

            v15 = v24;
          }
        }
      }
    }

    v14 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v14);
LABEL_19:

  v9 = v46;
  v8 = v47;
  a5 = v45;
LABEL_20:
  v29 = [v51 copy];

  v30 = [v9 objectForKeyedSubscript:HFItemUpdateOptionPreviousResults];
  v31 = [v30 objectForKeyedSubscript:@"childItems"];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [MEMORY[0x277CBEB98] set];
  }

  v34 = v33;

  *a5 = [v34 na_setByDiffingWithSet:v29];
  v35 = [(HFServiceItem *)v49 service];
  v36 = [v35 hf_serviceDescriptor];
  v37 = [HFServiceState stateClassForServiceDescriptor:v36];

  if (v37)
  {
    v38 = [(objc_class *)v37 requiredCharacteristicTypes];
    v39 = [(objc_class *)v37 optionalCharacteristicTypes];
    v40 = [v38 setByAddingObjectsFromSet:v39];

    v41 = [v8 setByAddingObjectsFromSet:v40];

    v8 = v41;
  }

  v42 = [(HFServiceItem *)v49 characteristicsToReadForCharacteristicTypes:v8 controlItems:*a5];

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

uint64_t __83__HFServiceItem_characteristicsToReadWithCharacteristicTypes_options_controlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _allRepresentedServices];
  v5 = [v3 supportsItemRepresentingServices:v4];

  return v5;
}

- (id)_augmentedStandardResultsForUpdateResponse:(id)a3 controlItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 standardResults];
  v9 = [v8 mutableCopy];

  v10 = [(HFServiceItem *)self service];
  v11 = [v10 hf_serviceNameComponents];

  if (v11)
  {
    [v9 setObject:v11 forKeyedSubscript:@"serviceNameComponents"];
    v12 = [v11 composedString];
    if (v12)
    {
      [v9 setObject:v12 forKeyedSubscript:@"title"];
    }
  }

  v13 = [(HFServiceItem *)self service];
  v14 = [v13 hf_parentRoom];

  v44 = v14;
  v15 = [v14 uniqueIdentifier];
  if (v15)
  {
    [v9 setObject:v15 forKeyedSubscript:@"roomIdentifier"];
  }

  v43 = v15;
  [v9 setObject:v7 forKeyedSubscript:@"childItems"];
  v16 = [v6 displayMetadata];
  v17 = [v16 serviceState];

  if (v17)
  {
    v18 = objc_alloc_init(HFServiceStateDescriptionFormatter);
    v19 = [v9 objectForKeyedSubscript:@"description"];

    if (!v19)
    {
      v20 = [(HFServiceStateDescriptionFormatter *)v18 stringForObjectValue:v17];
      [v9 na_safeSetObject:v20 forKey:@"description"];
    }

    [(HFServiceStateDescriptionFormatter *)v18 setDescriptionContext:1];
    v21 = [(HFServiceStateDescriptionFormatter *)v18 stringForObjectValue:v17];
    [v9 na_safeSetObject:v21 forKey:@"controlDescription"];
  }

  v22 = [v6 displayMetadata];
  v23 = [v22 transitioningPrimaryState];

  if (v23)
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isInStateTransition"];
  }

  else
  {
    v24 = [v6 displayMetadata];
    v23 = [v24 primaryState];
  }

  v25 = [(HFServiceItem *)self service];
  v26 = [v25 hf_iconDescriptor];

  objc_opt_class();
  v45 = v7;
  if (objc_opt_isKindOfClass())
  {
    v27 = &HFCAPackageStateOn;
    if (v23 != 2)
    {
      v27 = &HFCAPackageStateOff;
    }

    v28 = *v27;
    v29 = [(HFServiceItem *)self service];
    v30 = [HFServiceIconFactory iconModifiersForService:v29];

    v31 = [HFCAPackageIconDescriptor alloc];
    v32 = [(__CFString *)v26 identifier];
    v33 = [(HFCAPackageIconDescriptor *)v31 initWithPackageIdentifier:v32 state:v28 modifiers:v30];

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [(__CFString *)v26 iconDescriptorForPrimaryState:v23];
    if (v41)
    {
      v28 = v41;

      v26 = v28;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [HFPrimaryStateIconDescriptor alloc];
    v28 = [(__CFString *)v26 identifier];
    v33 = [(HFPrimaryStateIconDescriptor *)v42 initWithIdentifier:v28 primaryState:v23];

LABEL_18:
    v26 = v33;
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HFServiceItem *)self incrementalStateIconDescriptorForPrimaryState:v23 incrementalValue:0];
    v26 = v28 = v26;
    goto LABEL_19;
  }

LABEL_20:
  [v9 na_safeSetObject:v26 forKey:@"icon"];
  v34 = [(HFServiceItem *)self service];
  v35 = [v34 hf_dateAdded];
  [v9 na_safeSetObject:v35 forKey:@"dateAdded"];

  v36 = [(HFServiceItem *)self service];
  LODWORD(v35) = [v36 hf_hasSetFavorite];

  if (v35)
  {
    v37 = MEMORY[0x277CCABB0];
    v38 = [(HFServiceItem *)self service];
    v39 = [v37 numberWithBool:{objc_msgSend(v38, "hf_isFavorite")}];
    [v9 setObject:v39 forKeyedSubscript:@"isFavorite"];
  }

  return v9;
}

- (id)incrementalStateIconDescriptorForPrimaryState:(int64_t)a3 incrementalValue:(id)a4
{
  v6 = a4;
  v7 = [(HFServiceItem *)self service];
  v8 = [v7 hf_iconDescriptor];

  v9 = v6;
  v10 = v9;
  if (a3 == 2)
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_282525680;
    }
  }

  else
  {

    v11 = 0;
  }

  v12 = [HFIncrementalStateIconDescriptor alloc];
  v13 = [v8 identifier];
  v14 = [(HFIncrementalStateIconDescriptor *)v12 initWithIdentifier:v13 incrementalState:v11];

  return v14;
}

- (id)descriptionForCharacteristic:(id)a3 withValue:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAA28];
  v16 = @"serviceType";
  v7 = a4;
  v8 = a3;
  v9 = [(HFServiceItem *)self service];
  v10 = [v9 serviceType];
  v17[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v6 hf_valueFormatterForCharacteristic:v8 options:v11];

  v13 = [v12 stringForObjectValue:v7];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)controlDescriptionForCharacteristic:(id)a3 withValue:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  v10 = [(HFServiceItem *)self service];
  v11 = [v10 serviceType];
  [v9 na_safeSetObject:v11 forKey:@"serviceType"];

  v12 = [(HFServiceItem *)self service];
  v13 = [v12 accessory];
  v14 = [v13 room];
  v15 = [v14 name];
  [v9 na_safeSetObject:v15 forKey:@"roomName"];

  v16 = [MEMORY[0x277CCAA28] hf_controlDescriptionFormatterForCharacteristic:v8 options:v9];

  v17 = [v16 stringForObjectValue:v7];

  return v17;
}

- (void)applyInflectionToDescriptions:(id)a3
{
  v22 = a3;
  v4 = [(HFServiceItem *)self service];
  v5 = [v4 hf_serviceNameComponents];
  v6 = [v5 serviceName];

  v7 = [v22 objectForKeyedSubscript:@"description"];

  if (v7)
  {
    v8 = MEMORY[0x277CCA898];
    v9 = [v22 objectForKeyedSubscript:@"description"];
    v10 = [v8 hf_attributedStringWithInflectableAccessoryStatus:v9 accessoryName:v6];
    v11 = [v10 string];
    [v22 setObject:v11 forKeyedSubscript:@"description"];
  }

  v12 = [v22 objectForKeyedSubscript:@"controlDescription"];

  if (v12)
  {
    v13 = MEMORY[0x277CCA898];
    v14 = [v22 objectForKeyedSubscript:@"controlDescription"];
    v15 = [v13 hf_attributedStringWithInflectableAccessoryStatus:v14 accessoryName:v6];
    v16 = [v15 string];
    [v22 setObject:v16 forKeyedSubscript:@"controlDescription"];
  }

  v17 = [v22 objectForKeyedSubscript:@"detailedControlDescription"];

  if (v17)
  {
    v18 = MEMORY[0x277CCA898];
    v19 = [v22 objectForKeyedSubscript:@"detailedControlDescription"];
    v20 = [v18 hf_attributedStringWithInflectableAccessoryStatus:v19 accessoryName:v6];
    v21 = [v20 string];
    [v22 setObject:v21 forKeyedSubscript:@"detailedControlDescription"];
  }
}

- (id)_allRepresentedServices
{
  v3 = [(HFServiceItem *)self service];
  v4 = [v3 hf_childServices];
  v5 = [(HFServiceItem *)self service];
  v6 = [v4 setByAddingObject:v5];

  return v6;
}

@end