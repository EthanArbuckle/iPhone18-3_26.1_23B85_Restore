@interface HFAbstractAlarmStatusItem
+ (NSSet)serviceTypes;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)statusDescriptionAllNormal;
- (id)statusDescriptionMultipleTriggered:(unint64_t)a3;
- (id)statusDescriptionOneTriggered;
@end

@implementation HFAbstractAlarmStatusItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() serviceTypes];
  v6 = [v5 anyObject];

  v7 = [objc_opt_class() characteristicTypesForServiceType:v6 includingAssociatedTypes:1];
  v21[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v9 = [v7 allObjects];
  v10 = [(HFStatusItem *)self filteredServicesOfTypes:v8 containingCharacteristicTypes:v9];

  objc_initWeak(&location, self);
  v11 = [(HFStatusItem *)self valueSource];
  v12 = [v11 readValuesForCharacteristicTypes:v7 inServices:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HFAbstractAlarmStatusItem__subclass_updateWithOptions___block_invoke;
  v17[3] = &unk_277DF61A0;
  objc_copyWeak(&v19, &location);
  v13 = v6;
  v18 = v13;
  v14 = [v12 flatMap:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __57__HFAbstractAlarmStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v12 = MEMORY[0x277D2C900];
    v25 = @"hidden";
    v26[0] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [HFItemUpdateOutcome outcomeWithResults:v13];
    v11 = [v12 futureWithResult:v14];

    goto LABEL_18;
  }

  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"hidden"];
  LODWORD(v6) = [v8 BOOLValue];

  if (!v6)
  {
    v15 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:*(a1 + 32)];
    v10 = [v3 servicesWithValuesPassingTest:&__block_literal_global_168 forCharacteristicType:v15];

    v16 = [WeakRetained iconDescription];
    [v7 setObject:v16 forKeyedSubscript:@"description"];

    if ([v10 count])
    {
      [v7 setObject:&unk_282524900 forKeyedSubscript:@"badge"];
      [v7 setObject:&unk_282524918 forKeyedSubscript:@"statusItemCategory"];
      [v7 setObject:v10 forKeyedSubscript:@"statusRepresentedHomeKitObjects"];
      v17 = [MEMORY[0x277CD1D90] hf_roomsForServices:v10];
      if ([v17 count] == 1)
      {
        v18 = [WeakRetained room];
        if (v18)
        {
          v19 = [WeakRetained statusDescriptionOneTriggered];
        }

        else
        {
          v20 = [v17 anyObject];
          v19 = [v20 name];
        }
      }

      else
      {
        v19 = [WeakRetained statusDescriptionMultipleTriggered:{objc_msgSend(v17, "count")}];
      }

      [v7 setObject:v19 forKeyedSubscript:@"description"];
    }

    else
    {
      if ([v10 count])
      {
LABEL_16:
        v21 = MEMORY[0x277D2C900];
        v22 = [HFItemUpdateOutcome outcomeWithResults:v7];
        v11 = [v21 futureWithResult:v22];

        goto LABEL_17;
      }

      v17 = [WeakRetained statusDescriptionAllNormal];
      [v7 setObject:v17 forKeyedSubscript:@"description"];
    }

    goto LABEL_16;
  }

  v9 = MEMORY[0x277D2C900];
  v10 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v11 = [v9 futureWithResult:v10];
LABEL_17:

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (NSSet)serviceTypes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HFAlarmStatusItem.m" lineNumber:80 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAbstractAlarmStatusItem serviceTypes]", objc_opt_class()}];

  return 0;
}

- (id)statusDescriptionAllNormal
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAlarmStatusItem.m" lineNumber:91 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractAlarmStatusItem statusDescriptionAllNormal]", objc_opt_class()}];

  return 0;
}

- (id)statusDescriptionOneTriggered
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFAlarmStatusItem.m" lineNumber:97 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractAlarmStatusItem statusDescriptionOneTriggered]", objc_opt_class()}];

  return 0;
}

- (id)statusDescriptionMultipleTriggered:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFAlarmStatusItem.m" lineNumber:103 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAbstractAlarmStatusItem statusDescriptionMultipleTriggered:]", objc_opt_class()}];

  return 0;
}

@end