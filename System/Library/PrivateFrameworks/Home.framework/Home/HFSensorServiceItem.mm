@interface HFSensorServiceItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFSensorServiceItem

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CD1D90];
  optionsCopy = options;
  service = [(HFServiceItem *)self service];
  serviceType = [service serviceType];
  v8 = [v4 hf_sensorCharacteristicTypeForServiceType:serviceType];

  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v10 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v9 options:optionsCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HFSensorServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF5578;
  v15 = v8;
  selfCopy = self;
  v11 = v8;
  v12 = [v10 flatMap:v14];

  return v12;
}

id __51__HFSensorServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*(a1 + 32)];

  v6 = [v3 standardResults];
  v7 = [v6 mutableCopy];

  v8 = [v5 value];

  if (v8)
  {
    v9 = [v3 displayMetadata];
    v10 = [v9 primaryState];

    if (v10 == 2)
    {
      v11 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAbnormalSensor", @"HFServiceDescriptionAbnormalSensor", 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = *MEMORY[0x277CCF7E8];
    v29[0] = *MEMORY[0x277CCF770];
    v29[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v14 = [v13 containsObject:*(a1 + 32)];

    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [v5 characteristic];
      v17 = [v5 value];
      v18 = [v15 descriptionForCharacteristic:v16 withValue:v17];

      v11 = v18;
    }

    if (v11)
    {
      v19 = [v7 objectForKeyedSubscript:@"description"];

      if (!v19)
      {
        [v7 setObject:v11 forKeyedSubscript:@"description"];
      }
    }

    v20 = *(a1 + 40);
    v21 = [v5 characteristic];
    v22 = [v5 value];
    v23 = [v20 controlDescriptionForCharacteristic:v21 withValue:v22];

    [v7 na_safeSetObject:v23 forKey:@"controlDescription"];
  }

  [*(a1 + 40) applyInflectionToDescriptions:v7];
  v24 = MEMORY[0x277D2C900];
  v25 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v26 = [v24 futureWithResult:v25];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end