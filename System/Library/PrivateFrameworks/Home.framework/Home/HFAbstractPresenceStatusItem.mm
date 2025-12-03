@interface HFAbstractPresenceStatusItem
+ (NSSet)serviceTypes;
- (id)_subclass_updateWithOptions:(id)options;
- (id)descriptionStringForTriggeredServices:(id)services;
- (id)titleStringForTriggeredServices:(id)services;
@end

@implementation HFAbstractPresenceStatusItem

- (id)_subclass_updateWithOptions:(id)options
{
  v21[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  serviceTypes = [objc_opt_class() serviceTypes];
  anyObject = [serviceTypes anyObject];

  v7 = [objc_opt_class() characteristicTypesForServiceType:anyObject includingAssociatedTypes:1];
  v21[0] = anyObject;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  allObjects = [v7 allObjects];
  v10 = [(HFStatusItem *)self filteredServicesOfTypes:v8 containingCharacteristicTypes:allObjects];

  objc_initWeak(&location, self);
  valueSource = [(HFStatusItem *)self valueSource];
  v12 = [valueSource readValuesForCharacteristicTypes:v7 inServices:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HFAbstractPresenceStatusItem__subclass_updateWithOptions___block_invoke;
  v17[3] = &unk_277DF61A0;
  objc_copyWeak(&v19, &location);
  v13 = anyObject;
  v18 = v13;
  v14 = [v12 flatMap:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __60__HFAbstractPresenceStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
    v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKeyedSubscript:@"hidden"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = MEMORY[0x277D2C900];
      v11 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v10 futureWithResult:v11];
    }

    else
    {
      v16 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:*(a1 + 32)];
      v11 = [v3 servicesWithValuesPassingTest:&__block_literal_global_90 forCharacteristicType:v16];

      v17 = [MEMORY[0x277CD1D90] hf_roomsForServices:v11];
      [v7 setObject:v17 forKeyedSubscript:@"triggeredRooms"];
      v18 = [WeakRetained titleStringForTriggeredServices:v11];
      [v7 setObject:v18 forKeyedSubscript:@"title"];

      v19 = [WeakRetained descriptionStringForTriggeredServices:v11];
      [v7 setObject:v19 forKeyedSubscript:@"description"];

      v20 = [v7 objectForKeyedSubscript:@"title"];

      if (!v20)
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      }

      v21 = MEMORY[0x277D2C900];
      v22 = [HFItemUpdateOutcome outcomeWithResults:v7];
      v12 = [v21 futureWithResult:v22];
    }
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v25 = @"hidden";
    v26[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v15 = [HFItemUpdateOutcome outcomeWithResults:v14];
    v12 = [v13 futureWithResult:v15];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (NSSet)serviceTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPresenceStatusItem.m" lineNumber:73 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractPresenceStatusItem serviceTypes]", objc_opt_class()}];

  return 0;
}

- (id)titleStringForTriggeredServices:(id)services
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPresenceStatusItem.m" lineNumber:79 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPresenceStatusItem titleStringForTriggeredServices:]", objc_opt_class()}];

  return 0;
}

- (id)descriptionStringForTriggeredServices:(id)services
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPresenceStatusItem.m" lineNumber:85 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractPresenceStatusItem descriptionStringForTriggeredServices:]", objc_opt_class()}];

  return 0;
}

@end