@interface HFCharacteristicEventBuilderItem
- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4;
- (NSSet)characteristics;
- (id)_characteristicEventBuilderForCharacteristic:(id)a3 triggerValue:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)setCharacteristics:(id)a3 triggerValue:(id)a4;
@end

@implementation HFCharacteristicEventBuilderItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HFCharacteristicEventBuilderItem;
  v4 = [(HFEventBuilderItem *)&v8 _subclass_updateWithOptions:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HFCharacteristicEventBuilderItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DF43A8;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __64__HFCharacteristicEventBuilderItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v3 results];

  v6 = [v5 mutableCopy];
  v7 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
  v8 = [*(a1 + 32) characteristics];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__HFCharacteristicEventBuilderItem__subclass_updateWithOptions___block_invoke_2;
  v18[3] = &unk_277DF6218;
  v19 = v7;
  v9 = v7;
  LODWORD(v7) = [v8 na_any:v18];

  v10 = HFImageIconIdentifierTriggerSensor;
  if (!v7)
  {
    v10 = HFImageIconIdentifierTriggerCharacteristic;
  }

  v11 = *v10;
  v12 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v11];
  [v6 setObject:v12 forKeyedSubscript:@"icon"];

  v13 = [v6 copy];
  [v4 setResults:v13];

  v14 = MEMORY[0x277D2C900];
  v15 = [v4 copy];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

uint64_t __64__HFCharacteristicEventBuilderItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (NSSet)characteristics
{
  v2 = [(HFEventBuilderItem *)self eventBuilders];
  v3 = [v2 na_map:&__block_literal_global_47_3];

  return v3;
}

- (id)setCharacteristics:(id)a3 triggerValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HFEventBuilderItem *)self eventBuilders];
  v9 = [v8 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_50_4];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__HFCharacteristicEventBuilderItem_setCharacteristics_triggerValue___block_invoke_2;
  v27[3] = &unk_277E00D88;
  v10 = v9;
  v28 = v10;
  v29 = self;
  v11 = v6;
  v30 = v11;
  v12 = [v7 na_map:v27];

  v13 = [(HFEventBuilderItem *)self eventBuilders];
  v14 = [(HFEventBuilderItem *)self representativeEventBuilder];
  v15 = [v13 containsObject:v14];

  v16 = [(HFEventBuilderItem *)self eventBuilders];
  v17 = [HFSetDiff diffFromSet:v16 toSet:v12];

  v18 = [v12 copy];
  [(HFEventBuilderItem *)self setEventBuilders:v18];

  v19 = [(HFEventBuilderItem *)self eventBuilders];
  v20 = [v19 count];

  if (v20 == 1)
  {
    v21 = [(HFEventBuilderItem *)self eventBuilders];
    v22 = [v21 anyObject];
    [(HFEventBuilderItem *)self setRepresentativeEventBuilder:v22];
  }

  else if (v15)
  {
    v23 = [(HFEventBuilderItem *)self eventBuilders];
    v24 = [(HFEventBuilderItem *)self representativeEventBuilder];
    v25 = [v23 containsObject:v24];

    if ((v25 & 1) == 0)
    {
      [(HFEventBuilderItem *)self setRepresentativeEventBuilder:0];
    }
  }

  return v17;
}

id __68__HFCharacteristicEventBuilderItem_setCharacteristics_triggerValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristic];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

void *__68__HFCharacteristicEventBuilderItem_setCharacteristics_triggerValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 objectForKeyedSubscript:v5];

  v7 = [*(a1 + 40) _characteristicEventBuilderForCharacteristic:v4 triggerValue:*(a1 + 48)];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__HFCharacteristicEventBuilderItem_setCharacteristics_triggerValue___block_invoke_3;
  v19[3] = &unk_277E00D60;
  v8 = v7;
  v20 = v8;
  v9 = [v6 na_firstObjectPassingTest:v19];
  if (!v9)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __68__HFCharacteristicEventBuilderItem_setCharacteristics_triggerValue___block_invoke_4;
    v17 = &unk_277E00D60;
    v10 = v8;
    v18 = v10;
    v9 = [v6 na_firstObjectPassingTest:&v14];
    [v9 copyValuesFromCharacteristicEventBuilder:{v10, v14, v15, v16, v17}];
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v11;
}

uint64_t __68__HFCharacteristicEventBuilderItem_setCharacteristics_triggerValue___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = objc_opt_class();

  return [v2 isEqual:v4];
}

- (BOOL)wouldFireForCharacteristic:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFEventBuilderItem *)self eventBuilders];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HFCharacteristicEventBuilderItem_wouldFireForCharacteristic_value___block_invoke;
  v12[3] = &unk_277E00DB0;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  LOBYTE(v7) = [v8 na_any:v12];

  return v7;
}

- (id)_characteristicEventBuilderForCharacteristic:(id)a3 triggerValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [[HFCharacteristicThresholdRangeEventBuilder alloc] initWithCharacteristic:v5 thresholdRange:v9];
  }

  else
  {
    if (v7)
    {
      v12 = [MEMORY[0x277CD19F8] hf_allTriggerValuesForCharacteristic:v5 similarToValue:v7];
      if ([v12 count] == 1)
      {
        v13 = [HFCharacteristicValueEventBuilder alloc];
        v14 = [v12 anyObject];
        v11 = [(HFCharacteristicValueEventBuilder *)v13 initWithCharacteristic:v5 triggerValue:v14];
      }

      else
      {
        v11 = [[HFCharacteristicMultiValueEventBuilder alloc] initWithCharacteristic:v5 values:v12];
      }

      goto LABEL_13;
    }

    v10 = [[HFCharacteristicValueEventBuilder alloc] initWithCharacteristic:v5 triggerValue:0];
  }

  v11 = v10;
LABEL_13:

  return v11;
}

@end