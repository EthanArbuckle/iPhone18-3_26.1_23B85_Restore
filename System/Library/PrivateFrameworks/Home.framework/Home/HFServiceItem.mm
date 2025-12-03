@interface HFServiceItem
+ (Class)itemClassForService:(id)service;
+ (NSDictionary)_serviceTypeToServiceItemClassMap;
+ (NSSet)supportedServiceTypes;
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
+ (id)serviceItemForService:(id)service valueSource:(id)source;
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (HFServiceItem)init;
- (HFServiceItem)initWithValueSource:(id)source service:(id)service;
- (HMHome)home;
- (NSSet)services;
- (NSString)debugDescription;
- (NSString)description;
- (id)_actionableCharacteristics;
- (id)_allRepresentedServices;
- (id)_augmentedStandardResultsForUpdateResponse:(id)response controlItems:(id)items;
- (id)_descriptionBuilder;
- (id)_siriEndPointProfiles;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)characteristicsToReadForCharacteristicTypes:(id)types controlItems:(id)items;
- (id)characteristicsToReadWithCharacteristicTypes:(id)types options:(id)options controlItems:(id *)items;
- (id)controlDescriptionForCharacteristic:(id)characteristic withValue:(id)value;
- (id)controlItemValueSourceForPrimaryService;
- (id)controlItemValueSourceForServices:(id)services;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)descriptionForCharacteristic:(id)characteristic withValue:(id)value;
- (id)incrementalStateIconDescriptorForPrimaryState:(int64_t)state incrementalValue:(id)value;
- (id)namingComponentForHomeKitObject;
- (id)performStandardUpdateWithCharacteristicTypes:(id)types options:(id)options;
- (id)serviceLikeBuilderInHome:(id)home;
- (void)applyInflectionToDescriptions:(id)descriptions;
@end

@implementation HFServiceItem

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

  v15 = [self serviceItemForService:v12 valueSource:sourceCopy];

  return v15;
}

+ (NSSet)supportedServiceTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:48 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFServiceItem supportedServiceTypes]", objc_opt_class()}];

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

+ (Class)itemClassForService:(id)service
{
  serviceCopy = service;
  _serviceTypeToServiceItemClassMap = [objc_opt_class() _serviceTypeToServiceItemClassMap];
  serviceType = [serviceCopy serviceType];

  v6 = [_serviceTypeToServiceItemClassMap objectForKeyedSubscript:serviceType];

  return v6;
}

+ (id)serviceItemForService:(id)service valueSource:(id)source
{
  sourceCopy = source;
  serviceCopy = service;
  v8 = [objc_alloc(objc_msgSend(self itemClassForService:{serviceCopy)), "initWithValueSource:service:", sourceCopy, serviceCopy}];

  return v8;
}

- (HFServiceItem)initWithValueSource:(id)source service:(id)service
{
  sourceCopy = source;
  serviceCopy = service;
  if ([(HFServiceItem *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:119 description:@"HFServiceItem is an abstract base class. It must be instantiated using +serviceItemForService:valueSource: or using one of its concrete subclasses directly."];
  }

  v18.receiver = self;
  v18.super_class = HFServiceItem;
  v9 = [(HFServiceItem *)&v18 init];
  if (v9)
  {
    v10 = [HFOverrideCharacteristicValueSource alloc];
    home = [serviceCopy home];
    hf_suspendedStateOverrideValueProvider = [home hf_suspendedStateOverrideValueProvider];
    v13 = [(HFOverrideCharacteristicValueSource *)v10 initWithOriginalValueSource:sourceCopy overrideValueProvider:hf_suspendedStateOverrideValueProvider];

    valueSource = v9->_valueSource;
    v9->_valueSource = v13;
    v15 = v13;

    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (HFServiceItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_service_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:131 description:{@"%s is unavailable; use %@ instead", "-[HFServiceItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFServiceItem *)self valueSource];
  v5 = [(HFServiceItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  service = [(HFServiceItem *)self service];
  v7 = [v5 initWithValueSource:sourceCopy service:service];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  service = [(HFServiceItem *)self service];
  hf_prettyDescription = [service hf_prettyDescription];
  v6 = [v3 appendObject:hf_prettyDescription withName:@"service"];

  service2 = [(HFServiceItem *)self service];
  hf_childServices = [service2 hf_childServices];
  allObjects = [hf_childServices allObjects];
  [v3 appendArraySection:allObjects withName:@"childServices" skipIfEmpty:1 objectTransformer:&__block_literal_global_49_2];

  return v3;
}

- (NSString)description
{
  _descriptionBuilder = [(HFServiceItem *)self _descriptionBuilder];
  build = [_descriptionBuilder build];

  return build;
}

- (NSString)debugDescription
{
  _descriptionBuilder = [(HFServiceItem *)self _descriptionBuilder];
  latestResults = [(HFItem *)self latestResults];
  [_descriptionBuilder appendDictionarySection:latestResults withName:@"results:" skipIfEmpty:0];

  build = [_descriptionBuilder build];

  return build;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
  v5 = [v3 futureWithError:v4];

  return v5;
}

- (id)controlItemValueSourceForPrimaryService
{
  v3 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  valueSource = [(HFServiceItem *)self valueSource];
  v5 = MEMORY[0x277CBEB98];
  service = [(HFServiceItem *)self service];
  characteristics = [service characteristics];
  v8 = [v5 setWithArray:characteristics];
  service2 = [(HFServiceItem *)self service];
  hf_serviceDescriptor = [service2 hf_serviceDescriptor];
  v11 = [(HFSimpleAggregatedCharacteristicValueSource *)v3 initWithValueSource:valueSource characteristics:v8 primaryServiceDescriptor:hf_serviceDescriptor];

  return v11;
}

- (id)controlItemValueSourceForServices:(id)services
{
  servicesCopy = services;
  if (![servicesCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"services.count > 0"}];
  }

  _allRepresentedServices = [(HFServiceItem *)self _allRepresentedServices];
  v7 = [servicesCopy isSubsetOfSet:_allRepresentedServices];

  if ((v7 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    hf_prettyDescription = [servicesCopy hf_prettyDescription];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFServiceItem.m" lineNumber:196 description:{@"An HFServiceItem can only create a value source for its main service (self.service) and its child services (self.service.hf_childServices). But the client requested a value source for some other services: %@", hf_prettyDescription}];
  }

  v8 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  valueSource = [(HFServiceItem *)self valueSource];
  service = [(HFServiceItem *)self service];
  hf_serviceDescriptor = [service hf_serviceDescriptor];
  v12 = [(HFSimpleAggregatedCharacteristicValueSource *)v8 initWithValueSource:valueSource services:servicesCopy primaryServiceDescriptor:hf_serviceDescriptor];

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
  _actionableCharacteristics = [(HFServiceItem *)self _actionableCharacteristics];
  v3 = [_actionableCharacteristics count] != 0;

  return v3;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  _actionableCharacteristics = [(HFServiceItem *)self _actionableCharacteristics];
  v3 = [_actionableCharacteristics na_any:&__block_literal_global_75_3];

  return v3;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  service = [(HFServiceItem *)self service];

  if (!service)
  {
    NSLog(&cfstr_CanTFindServic.isa);
  }

  service2 = [(HFServiceItem *)self service];

  if (service2)
  {
    _actionableCharacteristics = [(HFServiceItem *)self _actionableCharacteristics];
    valueSource = [(HFServiceItem *)self valueSource];
    v9 = [valueSource readValuesForCharacteristics:_actionableCharacteristics];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HFServiceItem_currentStateActionBuildersForHome___block_invoke;
    v13[3] = &unk_277DF3A40;
    v14 = _actionableCharacteristics;
    v15 = homeCopy;
    v10 = _actionableCharacteristics;
    v11 = [v9 flatMap:v13];
  }

  else
  {
    valueSource = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [MEMORY[0x277D2C900] futureWithError:valueSource];
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
  service = [(HFServiceItem *)self service];
  home = [service home];

  return home;
}

- (NSSet)services
{
  service = [(HFServiceItem *)self service];
  v4 = MEMORY[0x277CBEB98];
  if (service)
  {
    service2 = [(HFServiceItem *)self service];
    v6 = [v4 setWithObject:service2];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (id)accessories
{
  services = [(HFServiceItem *)self services];
  v3 = [services na_map:&__block_literal_global_85_2];

  return v3;
}

- (id)_siriEndPointProfiles
{
  accessories = [(HFServiceItem *)self accessories];
  v3 = [accessories na_filter:&__block_literal_global_88_0];

  return v3;
}

BOOL __38__HFServiceItem__siriEndPointProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_siriEndpointProfile];
  v3 = v2 != 0;

  return v3;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  v5 = [HFServiceBuilder alloc];
  homeKitObject = [(HFServiceItem *)self homeKitObject];
  v7 = [(HFServiceBuilder *)v5 initWithExistingObject:homeKitObject inHome:homeCopy];

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  service = [(HFServiceItem *)self service];
  v3 = [HFNamingComponents namingComponentFromService:service];

  return v3;
}

- (id)characteristicsToReadForCharacteristicTypes:(id)types controlItems:(id)items
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke;
  v12[3] = &unk_277DF2DD8;
  v12[4] = self;
  itemsCopy = items;
  v7 = [types na_flatMap:v12];
  v8 = [v7 mutableCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HFServiceItem_characteristicsToReadForCharacteristicTypes_controlItems___block_invoke_3;
  v11[3] = &unk_277E02780;
  v11[4] = self;
  v9 = [itemsCopy na_flatMap:v11];

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

- (id)performStandardUpdateWithCharacteristicTypes:(id)types options:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v8 = MEMORY[0x277CBEB98];
  typesCopy = types;
  v10 = [v8 set];
  v27 = v10;
  v11 = [(HFServiceItem *)self characteristicsToReadWithCharacteristicTypes:typesCopy options:optionsCopy controlItems:&v27];

  v12 = v27;
  v13 = [HFServiceLikeItemUpdateRequest alloc];
  service = [(HFServiceItem *)self service];
  valueSource = [(HFServiceItem *)self valueSource];
  v16 = [(HFServiceLikeItemUpdateRequest *)v13 initWithService:service valueSource:valueSource characteristics:v11];

  if (v16)
  {
    v17 = [(HFServiceLikeItemUpdateRequest *)v16 updateWithOptions:optionsCopy];
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
      service2 = [(HFServiceItem *)self service];
      *buf = 138412802;
      selfCopy = self;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = service2;
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

- (id)characteristicsToReadWithCharacteristicTypes:(id)types options:(id)options controlItems:(id *)items
{
  v59 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  optionsCopy = options;
  v10 = [(HFServiceItem *)self createControlItemsWithOptions:optionsCopy];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __83__HFServiceItem_characteristicsToReadWithCharacteristicTypes_options_controlItems___block_invoke;
  v57[3] = &unk_277E027A8;
  v57[4] = self;
  v11 = [v10 na_filter:v57];

  v48 = v11;
  v51 = [MEMORY[0x277CBEB58] setWithSet:v11];
  selfCopy = self;
  service = [(HFServiceItem *)self service];
  LODWORD(self) = [service isPrimaryService];

  if (!self)
  {
    goto LABEL_20;
  }

  itemsCopy = items;
  v46 = optionsCopy;
  v47 = typesCopy;
  [(HFServiceItem *)selfCopy _siriEndPointProfiles];
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
      mediaProfile = [v17 mediaProfile];
      if ([mediaProfile conformsToProtocol:v18])
      {
        v20 = mediaProfile;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      hf_mediaValueSource = [v21 hf_mediaValueSource];
      if (hf_mediaValueSource)
      {
        v23 = [[HFMediaControlItem alloc] initWithValueSource:hf_mediaValueSource mediaProfileContainer:v21 mediaAccessoryItemType:6 displayResults:0];
        [v51 addObject:v23];
        if (_os_feature_enabled_impl())
        {
          v24 = v15;
          v25 = +[HFHomeKitDispatcher sharedDispatcher];
          home = [(HFHomePodAlarmControlItem *)v25 home];
          if (![(HFHomePodTimerControlItem *)home hf_currentUserIsAdministrator])
          {
            goto LABEL_15;
          }

          hf_siriEndpointProfile = [v17 hf_siriEndpointProfile];
          supportsOnboarding = [hf_siriEndpointProfile supportsOnboarding];

          v15 = v24;
          if (supportsOnboarding)
          {
            v25 = [[HFHomePodAlarmControlItem alloc] initWithMediaProfileContainer:v21 displayResults:0];
            [v51 addObject:v25];
            home = [[HFHomePodTimerControlItem alloc] initWithMediaProfileContainer:v21 displayResults:0];
            [v51 addObject:home];
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

  optionsCopy = v46;
  typesCopy = v47;
  items = itemsCopy;
LABEL_20:
  v29 = [v51 copy];

  v30 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionPreviousResults];
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

  *items = [v34 na_setByDiffingWithSet:v29];
  service2 = [(HFServiceItem *)selfCopy service];
  hf_serviceDescriptor = [service2 hf_serviceDescriptor];
  v37 = [HFServiceState stateClassForServiceDescriptor:hf_serviceDescriptor];

  if (v37)
  {
    requiredCharacteristicTypes = [(objc_class *)v37 requiredCharacteristicTypes];
    optionalCharacteristicTypes = [(objc_class *)v37 optionalCharacteristicTypes];
    v40 = [requiredCharacteristicTypes setByAddingObjectsFromSet:optionalCharacteristicTypes];

    v41 = [typesCopy setByAddingObjectsFromSet:v40];

    typesCopy = v41;
  }

  v42 = [(HFServiceItem *)selfCopy characteristicsToReadForCharacteristicTypes:typesCopy controlItems:*items];

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

- (id)_augmentedStandardResultsForUpdateResponse:(id)response controlItems:(id)items
{
  responseCopy = response;
  itemsCopy = items;
  standardResults = [responseCopy standardResults];
  v9 = [standardResults mutableCopy];

  service = [(HFServiceItem *)self service];
  hf_serviceNameComponents = [service hf_serviceNameComponents];

  if (hf_serviceNameComponents)
  {
    [v9 setObject:hf_serviceNameComponents forKeyedSubscript:@"serviceNameComponents"];
    composedString = [hf_serviceNameComponents composedString];
    if (composedString)
    {
      [v9 setObject:composedString forKeyedSubscript:@"title"];
    }
  }

  service2 = [(HFServiceItem *)self service];
  hf_parentRoom = [service2 hf_parentRoom];

  v44 = hf_parentRoom;
  uniqueIdentifier = [hf_parentRoom uniqueIdentifier];
  if (uniqueIdentifier)
  {
    [v9 setObject:uniqueIdentifier forKeyedSubscript:@"roomIdentifier"];
  }

  v43 = uniqueIdentifier;
  [v9 setObject:itemsCopy forKeyedSubscript:@"childItems"];
  displayMetadata = [responseCopy displayMetadata];
  serviceState = [displayMetadata serviceState];

  if (serviceState)
  {
    v18 = objc_alloc_init(HFServiceStateDescriptionFormatter);
    v19 = [v9 objectForKeyedSubscript:@"description"];

    if (!v19)
    {
      v20 = [(HFServiceStateDescriptionFormatter *)v18 stringForObjectValue:serviceState];
      [v9 na_safeSetObject:v20 forKey:@"description"];
    }

    [(HFServiceStateDescriptionFormatter *)v18 setDescriptionContext:1];
    v21 = [(HFServiceStateDescriptionFormatter *)v18 stringForObjectValue:serviceState];
    [v9 na_safeSetObject:v21 forKey:@"controlDescription"];
  }

  displayMetadata2 = [responseCopy displayMetadata];
  transitioningPrimaryState = [displayMetadata2 transitioningPrimaryState];

  if (transitioningPrimaryState)
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isInStateTransition"];
  }

  else
  {
    displayMetadata3 = [responseCopy displayMetadata];
    transitioningPrimaryState = [displayMetadata3 primaryState];
  }

  service3 = [(HFServiceItem *)self service];
  hf_iconDescriptor = [service3 hf_iconDescriptor];

  objc_opt_class();
  v45 = itemsCopy;
  if (objc_opt_isKindOfClass())
  {
    v27 = &HFCAPackageStateOn;
    if (transitioningPrimaryState != 2)
    {
      v27 = &HFCAPackageStateOff;
    }

    identifier2 = *v27;
    service4 = [(HFServiceItem *)self service];
    v30 = [HFServiceIconFactory iconModifiersForService:service4];

    v31 = [HFCAPackageIconDescriptor alloc];
    identifier = [(__CFString *)hf_iconDescriptor identifier];
    v33 = [(HFCAPackageIconDescriptor *)v31 initWithPackageIdentifier:identifier state:identifier2 modifiers:v30];

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [(__CFString *)hf_iconDescriptor iconDescriptorForPrimaryState:transitioningPrimaryState];
    if (v41)
    {
      identifier2 = v41;

      hf_iconDescriptor = identifier2;
    }

    else
    {
      identifier2 = 0;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [HFPrimaryStateIconDescriptor alloc];
    identifier2 = [(__CFString *)hf_iconDescriptor identifier];
    v33 = [(HFPrimaryStateIconDescriptor *)v42 initWithIdentifier:identifier2 primaryState:transitioningPrimaryState];

LABEL_18:
    hf_iconDescriptor = v33;
LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HFServiceItem *)self incrementalStateIconDescriptorForPrimaryState:transitioningPrimaryState incrementalValue:0];
    hf_iconDescriptor = identifier2 = hf_iconDescriptor;
    goto LABEL_19;
  }

LABEL_20:
  [v9 na_safeSetObject:hf_iconDescriptor forKey:@"icon"];
  service5 = [(HFServiceItem *)self service];
  hf_dateAdded = [service5 hf_dateAdded];
  [v9 na_safeSetObject:hf_dateAdded forKey:@"dateAdded"];

  service6 = [(HFServiceItem *)self service];
  LODWORD(hf_dateAdded) = [service6 hf_hasSetFavorite];

  if (hf_dateAdded)
  {
    v37 = MEMORY[0x277CCABB0];
    service7 = [(HFServiceItem *)self service];
    v39 = [v37 numberWithBool:{objc_msgSend(service7, "hf_isFavorite")}];
    [v9 setObject:v39 forKeyedSubscript:@"isFavorite"];
  }

  return v9;
}

- (id)incrementalStateIconDescriptorForPrimaryState:(int64_t)state incrementalValue:(id)value
{
  valueCopy = value;
  service = [(HFServiceItem *)self service];
  hf_iconDescriptor = [service hf_iconDescriptor];

  v9 = valueCopy;
  v10 = v9;
  if (state == 2)
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
  identifier = [hf_iconDescriptor identifier];
  v14 = [(HFIncrementalStateIconDescriptor *)v12 initWithIdentifier:identifier incrementalState:v11];

  return v14;
}

- (id)descriptionForCharacteristic:(id)characteristic withValue:(id)value
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAA28];
  v16 = @"serviceType";
  valueCopy = value;
  characteristicCopy = characteristic;
  service = [(HFServiceItem *)self service];
  serviceType = [service serviceType];
  v17[0] = serviceType;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [v6 hf_valueFormatterForCharacteristic:characteristicCopy options:v11];

  v13 = [v12 stringForObjectValue:valueCopy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)controlDescriptionForCharacteristic:(id)characteristic withValue:(id)value
{
  v6 = MEMORY[0x277CBEB38];
  valueCopy = value;
  characteristicCopy = characteristic;
  dictionary = [v6 dictionary];
  service = [(HFServiceItem *)self service];
  serviceType = [service serviceType];
  [dictionary na_safeSetObject:serviceType forKey:@"serviceType"];

  service2 = [(HFServiceItem *)self service];
  accessory = [service2 accessory];
  room = [accessory room];
  name = [room name];
  [dictionary na_safeSetObject:name forKey:@"roomName"];

  v16 = [MEMORY[0x277CCAA28] hf_controlDescriptionFormatterForCharacteristic:characteristicCopy options:dictionary];

  v17 = [v16 stringForObjectValue:valueCopy];

  return v17;
}

- (void)applyInflectionToDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  service = [(HFServiceItem *)self service];
  hf_serviceNameComponents = [service hf_serviceNameComponents];
  serviceName = [hf_serviceNameComponents serviceName];

  v7 = [descriptionsCopy objectForKeyedSubscript:@"description"];

  if (v7)
  {
    v8 = MEMORY[0x277CCA898];
    v9 = [descriptionsCopy objectForKeyedSubscript:@"description"];
    v10 = [v8 hf_attributedStringWithInflectableAccessoryStatus:v9 accessoryName:serviceName];
    string = [v10 string];
    [descriptionsCopy setObject:string forKeyedSubscript:@"description"];
  }

  v12 = [descriptionsCopy objectForKeyedSubscript:@"controlDescription"];

  if (v12)
  {
    v13 = MEMORY[0x277CCA898];
    v14 = [descriptionsCopy objectForKeyedSubscript:@"controlDescription"];
    v15 = [v13 hf_attributedStringWithInflectableAccessoryStatus:v14 accessoryName:serviceName];
    string2 = [v15 string];
    [descriptionsCopy setObject:string2 forKeyedSubscript:@"controlDescription"];
  }

  v17 = [descriptionsCopy objectForKeyedSubscript:@"detailedControlDescription"];

  if (v17)
  {
    v18 = MEMORY[0x277CCA898];
    v19 = [descriptionsCopy objectForKeyedSubscript:@"detailedControlDescription"];
    v20 = [v18 hf_attributedStringWithInflectableAccessoryStatus:v19 accessoryName:serviceName];
    string3 = [v20 string];
    [descriptionsCopy setObject:string3 forKeyedSubscript:@"detailedControlDescription"];
  }
}

- (id)_allRepresentedServices
{
  service = [(HFServiceItem *)self service];
  hf_childServices = [service hf_childServices];
  service2 = [(HFServiceItem *)self service];
  v6 = [hf_childServices setByAddingObject:service2];

  return v6;
}

@end