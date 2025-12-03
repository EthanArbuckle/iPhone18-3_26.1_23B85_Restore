@interface HFSimpleAggregatedCharacteristicValueSource
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNaturalLightingEnabled;
- (BOOL)isNaturalLightingSupported;
- (HFSimpleAggregatedCharacteristicValueSource)init;
- (HFSimpleAggregatedCharacteristicValueSource)initWithValueSource:(id)source characteristics:(id)characteristics primaryServiceDescriptor:(id)descriptor;
- (HFSimpleAggregatedCharacteristicValueSource)initWithValueSource:(id)source services:(id)services primaryServiceDescriptor:(id)descriptor;
- (NSSet)allServices;
- (NSSet)characteristics;
- (NSSet)lightProfiles;
- (id)allCharacteristicsForCharacteristicType:(id)type;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)metadataForCharacteristicType:(id)type;
- (id)readValuesForCharacteristicTypes:(id)types;
- (id)readValuesForServiceStateRecipe:(id)recipe;
- (id)writeNaturalLightEnabledState:(BOOL)state;
- (id)writeValuesForCharacteristicRecipes:(id)recipes;
- (id)writeValuesForCharacteristicTypes:(id)types;
- (unint64_t)hash;
- (void)beginTransactionWithReason:(id)reason readPolicy:(id)policy logger:(id)logger;
- (void)commitTransactionWithReason:(id)reason;
- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)brightness completion:(id)completion;
@end

@implementation HFSimpleAggregatedCharacteristicValueSource

- (HFSimpleAggregatedCharacteristicValueSource)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_characteristics_primaryServiceDescriptor_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAggregatedCharacteristicValueSource.m" lineNumber:29 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleAggregatedCharacteristicValueSource init]", v5}];

  return 0;
}

- (HFSimpleAggregatedCharacteristicValueSource)initWithValueSource:(id)source services:(id)services primaryServiceDescriptor:(id)descriptor
{
  servicesCopy = services;
  descriptorCopy = descriptor;
  sourceCopy = source;
  v12 = [servicesCopy na_flatMap:&__block_literal_global_3];
  v13 = [(HFSimpleAggregatedCharacteristicValueSource *)self initWithValueSource:sourceCopy characteristics:v12 primaryServiceDescriptor:descriptorCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_allServices, services);
  }

  return v13;
}

id __101__HFSimpleAggregatedCharacteristicValueSource_initWithValueSource_services_primaryServiceDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (HFSimpleAggregatedCharacteristicValueSource)initWithValueSource:(id)source characteristics:(id)characteristics primaryServiceDescriptor:(id)descriptor
{
  sourceCopy = source;
  characteristicsCopy = characteristics;
  descriptorCopy = descriptor;
  if (!sourceCopy)
  {
    NSLog(&cfstr_ValueSourceCan.isa);
  }

  v17.receiver = self;
  v17.super_class = HFSimpleAggregatedCharacteristicValueSource;
  v12 = [(HFSimpleAggregatedCharacteristicValueSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_valueSource, source);
    objc_storeStrong(&v13->_primaryServiceDescriptor, descriptor);
    v14 = [characteristicsCopy na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_13];
    characteristicsByType = v13->_characteristicsByType;
    v13->_characteristicsByType = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  v5 = [(HFSimpleAggregatedCharacteristicValueSource *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  v18 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = HFLogForCategory(0x3BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[HFSimpleAggregatedCharacteristicValueSource copyWithValueSource:]";
    v14 = 2048;
    v15 = 63;
    v16 = 2112;
    v17 = sourceCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s (Line: %ld) Copying with valueSource %@.", &v12, 0x20u);
  }

  v6 = objc_alloc(objc_opt_class());
  characteristics = [(HFSimpleAggregatedCharacteristicValueSource *)self characteristics];
  primaryServiceDescriptor = [(HFSimpleAggregatedCharacteristicValueSource *)self primaryServiceDescriptor];
  v9 = [v6 initWithValueSource:sourceCopy characteristics:characteristics primaryServiceDescriptor:primaryServiceDescriptor];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSSet)allServices
{
  allServices = self->_allServices;
  if (!allServices)
  {
    characteristics = [(HFSimpleAggregatedCharacteristicValueSource *)self characteristics];
    v5 = [characteristics na_map:&__block_literal_global_16];
    v6 = self->_allServices;
    self->_allServices = v5;

    allServices = self->_allServices;
  }

  return allServices;
}

- (NSSet)characteristics
{
  characteristics = self->_characteristics;
  if (!characteristics)
  {
    v4 = MEMORY[0x277CBEB98];
    characteristicsByType = [(HFSimpleAggregatedCharacteristicValueSource *)self characteristicsByType];
    allValues = [characteristicsByType allValues];
    v7 = [allValues na_flatMap:&__block_literal_global_19];
    v8 = [v4 setWithArray:v7];
    v9 = self->_characteristics;
    self->_characteristics = v8;

    characteristics = self->_characteristics;
  }

  return characteristics;
}

- (id)readValuesForServiceStateRecipe:(id)recipe
{
  v24 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  v5 = HFLogForCategory(0x3BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
    v16 = 136315906;
    v17 = "[HFSimpleAggregatedCharacteristicValueSource readValuesForServiceStateRecipe:]";
    v18 = 2048;
    v19 = 90;
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = valueSource;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%s (Line: %ld) valueSource for %@ = %@", &v16, 0x2Au);
  }

  allServices = [(HFSimpleAggregatedCharacteristicValueSource *)self allServices];
  v8 = [recipeCopy matchResultForServices:allServices];

  valueSource2 = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  allCharacteristics = [v8 allCharacteristics];
  characteristics = [(HFSimpleAggregatedCharacteristicValueSource *)self characteristics];
  v12 = [allCharacteristics na_setByIntersectingWithSet:characteristics];
  v13 = [valueSource2 readValuesForCharacteristics:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)readValuesForCharacteristicTypes:(id)types
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HFSimpleAggregatedCharacteristicValueSource_readValuesForCharacteristicTypes___block_invoke;
  v8[3] = &unk_277DF2DD8;
  v8[4] = self;
  v4 = [types na_flatMap:v8];
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  v6 = [valueSource readValuesForCharacteristics:v4];

  return v6;
}

id __80__HFSimpleAggregatedCharacteristicValueSource_readValuesForCharacteristicTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristicsByType];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (id)writeValuesForCharacteristicRecipes:(id)recipes
{
  recipesCopy = recipes;
  v5 = objc_alloc_init(HFCharacteristicValueSet);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__HFSimpleAggregatedCharacteristicValueSource_writeValuesForCharacteristicRecipes___block_invoke;
  v13 = &unk_277DF2E00;
  selfCopy = self;
  v15 = v5;
  v6 = v5;
  [recipesCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v7 = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource:v10];
  v8 = [v7 writeValuesForCharacteristics:v6];

  return v8;
}

void __83__HFSimpleAggregatedCharacteristicValueSource_writeValuesForCharacteristicRecipes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) allServices];
  v8 = [v5 matchResultForServices:v7];

  v9 = [v8 allCharacteristics];
  v10 = [*(a1 + 32) characteristics];
  v11 = [v9 na_setByIntersectingWithSet:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 40) setValue:v6 forCharacteristic:{*(*(&v18 + 1) + 8 * v16++), v18}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)writeValuesForCharacteristicTypes:(id)types
{
  typesCopy = types;
  v5 = objc_alloc_init(HFCharacteristicValueSet);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __81__HFSimpleAggregatedCharacteristicValueSource_writeValuesForCharacteristicTypes___block_invoke;
  v13 = &unk_277DF2E28;
  selfCopy = self;
  v15 = v5;
  v6 = v5;
  [typesCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v7 = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource:v10];
  v8 = [v7 writeValuesForCharacteristics:v6];

  return v8;
}

void __81__HFSimpleAggregatedCharacteristicValueSource_writeValuesForCharacteristicTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [*(a1 + 32) characteristicsByType];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 40) setValue:v6 forCharacteristic:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)metadataForCharacteristicType:(id)type
{
  typeCopy = type;
  characteristicsByType = [(HFSimpleAggregatedCharacteristicValueSource *)self characteristicsByType];
  v6 = [characteristicsByType objectForKeyedSubscript:typeCopy];

  v7 = [HFCharacteristicBatchReadResponse aggregatedMetadataForCharacteristics:v6];

  return v7;
}

- (id)allCharacteristicsForCharacteristicType:(id)type
{
  typeCopy = type;
  characteristicsByType = [(HFSimpleAggregatedCharacteristicValueSource *)self characteristicsByType];
  v6 = [characteristicsByType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (void)beginTransactionWithReason:(id)reason readPolicy:(id)policy logger:(id)logger
{
  loggerCopy = logger;
  policyCopy = policy;
  reasonCopy = reason;
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  [valueSource beginTransactionWithReason:reasonCopy readPolicy:policyCopy logger:loggerCopy];
}

- (void)commitTransactionWithReason:(id)reason
{
  reasonCopy = reason;
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  [valueSource commitTransactionWithReason:reasonCopy];
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_208 != -1)
  {
    dispatch_once(&_MergedGlobals_208, &__block_literal_global_30);
  }

  v3 = qword_280E02A70;

  return v3;
}

void __58__HFSimpleAggregatedCharacteristicValueSource_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_37];
  v2 = [v0 appendCharacteristic:&__block_literal_global_39];
  v3 = [v0 build];

  v4 = qword_280E02A70;
  qword_280E02A70 = v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (NSSet)lightProfiles
{
  allServices = [(HFSimpleAggregatedCharacteristicValueSource *)self allServices];
  v3 = [allServices na_flatMap:&__block_literal_global_23];

  return v3;
}

- (BOOL)isNaturalLightingSupported
{
  lightProfiles = [(HFSimpleAggregatedCharacteristicValueSource *)self lightProfiles];
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  v5 = &unk_28253EC38;
  if ([valueSource conformsToProtocol:v5])
  {
    v6 = valueSource;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__isNaturalLightingSupported__block_invoke;
  v14[3] = &unk_277DF48A8;
  v8 = v7;
  v15 = v8;
  v9 = [lightProfiles na_all:v14];
  if (!+[HFUtilities isRunningInStoreDemoMode](HFUtilities, "isRunningInStoreDemoMode") && !+[HFUtilities isPressDemoModeEnabled])
  {
    allServices = [(HFSimpleAggregatedCharacteristicValueSource *)self allServices];
    anyObject = [allServices anyObject];

    home = [anyObject home];
    v9 &= [home hf_enabledResidentsSupportsNaturalLight];
  }

  return v9;
}

- (BOOL)isNaturalLightingEnabled
{
  lightProfiles = [(HFSimpleAggregatedCharacteristicValueSource *)self lightProfiles];
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  v5 = &unk_28253EC38;
  if ([valueSource conformsToProtocol:v5])
  {
    v6 = valueSource;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__isNaturalLightingEnabled__block_invoke;
  v11[3] = &unk_277DF48A8;
  v12 = v7;
  v8 = v7;
  v9 = [lightProfiles na_all:v11];

  return v9;
}

- (id)writeNaturalLightEnabledState:(BOOL)state
{
  lightProfiles = [(HFSimpleAggregatedCharacteristicValueSource *)self lightProfiles];
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  v7 = &unk_28253EC38;
  if ([valueSource conformsToProtocol:v7])
  {
    v8 = valueSource;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  allObjects = [lightProfiles allObjects];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __104__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState___block_invoke;
  v18 = &unk_277DF48F8;
  v19 = v9;
  stateCopy = state;
  v11 = v9;
  v12 = [allObjects na_map:&v15];

  v13 = [MEMORY[0x277D2C900] chainFutures:{v12, v15, v16, v17, v18}];

  return v13;
}

id __104__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState___block_invoke_2;
  v9[3] = &unk_277DF48D0;
  v5 = *(a1 + 32);
  v12 = *(a1 + 40);
  v10 = v5;
  v11 = v3;
  v6 = v3;
  v7 = [v4 futureWithBlock:v9];

  return v7;
}

void __104__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) writeNaturalLightEnabledState:*(a1 + 48) forProfile:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__HFSimpleAggregatedCharacteristicValueSource_HFLightProfileValueSource__writeNaturalLightEnabledState___block_invoke_3;
  v7[3] = &unk_277DF4700;
  v8 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v7];
}

- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)brightness completion:(id)completion
{
  completionCopy = completion;
  lightProfiles = [(HFSimpleAggregatedCharacteristicValueSource *)self lightProfiles];
  valueSource = [(HFSimpleAggregatedCharacteristicValueSource *)self valueSource];
  if ([valueSource conformsToProtocol:&unk_28253EC38])
  {
    v8 = valueSource;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  anyObject = [lightProfiles anyObject];
  [v9 fetchNaturalLightColorTemperatureForBrightness:brightness lightProfile:anyObject completion:completionCopy];
}

@end