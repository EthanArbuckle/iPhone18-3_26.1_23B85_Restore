@interface HFContactSensorStatusItem
- (id)_subclass_updateWithOptions:(id)a3;
- (id)defaultTitleForRepresentedHomeKitObjects:(id)a3;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFContactSensorStatusItem

- (id)defaultTitleForRepresentedHomeKitObjects:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleContactSensor_One", @"HFStatusTitleContactSensor_One", 1);
LABEL_5:
    v12 = v4;
    goto LABEL_7;
  }

  if ([v3 count] >= 2)
  {
    v5 = [v3 count];
    v4 = HFLocalizedStringWithFormat(@"HFStatusTitleContactSensor_Multiple", @"%lu", v6, v7, v8, v9, v10, v11, v5);
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"contact.sensor.fill"];

  return v3;
}

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
  v17[2] = __57__HFContactSensorStatusItem__subclass_updateWithOptions___block_invoke;
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

id __57__HFContactSensorStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D2C900];
    v39 = @"hidden";
    v40[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"hidden"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    v9 = MEMORY[0x277D2C900];
LABEL_5:
    v10 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v11 = [v9 futureWithResult:v10];

    goto LABEL_20;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = [v3 allServices];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __57__HFContactSensorStatusItem__subclass_updateWithOptions___block_invoke_2;
  v35[3] = &unk_277DFD888;
  v36 = v3;
  v15 = v12;
  v37 = v15;
  v16 = v13;
  v38 = v16;
  [v14 enumerateObjectsUsingBlock:v35];

  if ([v15 count])
  {
    v17 = @"HFStatusDescriptionContactSensor_Open";
    v18 = v15;
LABEL_10:
    if ([v18 count] == 1)
    {
      v19 = @"HFStatusTitleContactSensor_One";
    }

    else
    {
      v19 = @"HFStatusTitleContactSensor_Multiple";
    }

    v20 = _HFLocalizedStringWithDefaultValue(v19, v19, 1);
    v21 = [v18 count];
    v28 = HFLocalizedStringWithFormat(v17, @"%lu", v22, v23, v24, v25, v26, v27, v21);
    v29 = v18;
    goto LABEL_14;
  }

  if ([v16 count])
  {
    v17 = @"HFStatusDescriptionContactSensor_Closed";
    v18 = v16;
    goto LABEL_10;
  }

  v20 = 0;
  v29 = 0;
  v28 = 0;
LABEL_14:
  [v7 setObject:v15 forKeyedSubscript:@"openServices"];
  [v7 setObject:v16 forKeyedSubscript:@"closedServices"];
  if (v20)
  {
    if ([v29 count] == 1)
    {
      [v7 setObject:v20 forKeyedSubscript:@"title"];
    }

    else
    {
      v30 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v20 validFormatSpecifiers:@"%lu" error:0, objc_msgSend(v29, "count")];
      [v7 setObject:v30 forKeyedSubscript:@"title"];
    }

    [v7 setObject:v28 forKeyedSubscript:@"description"];
  }

  v31 = MEMORY[0x277D2C900];
  v32 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v11 = [v31 futureWithResult:v32];

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];

  return v11;
}

void __57__HFContactSensorStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) batchResponseForService:v6];
  v4 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v6 characteristicReadResponse:v3];

  if ([v4 primaryState] == 2)
  {
    v5 = 40;
  }

  else
  {
    if ([v4 primaryState] != 1)
    {
      goto LABEL_6;
    }

    v5 = 48;
  }

  [*(a1 + v5) addObject:v6];
LABEL_6:
}

@end