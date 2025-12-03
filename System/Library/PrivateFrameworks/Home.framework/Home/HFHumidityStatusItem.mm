@interface HFHumidityStatusItem
+ (id)titleStringForState:(int64_t)state;
+ (unint64_t)abstractCurrentModeInResponse:(id)response;
+ (unint64_t)abstractTargetModeInResponse:(id)response;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFHumidityStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"humidity.fill"];

  return v3;
}

uint64_t __46__HFHumidityStatusItem_displayValueComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__HFHumidityStatusItem_displayValueComparator__block_invoke_2;
  v12[3] = &unk_277DF72E0;
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v8 = v7;
  v14 = v7;
  if (v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7 != 0;
  }

  v10 = v7;
  if (v6 && v7)
  {
    v9 = __46__HFHumidityStatusItem_displayValueComparator__block_invoke_2(v12);
    v10 = v14;
  }

  return v9;
}

uint64_t __46__HFHumidityStatusItem_displayValueComparator__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "integerValue")}];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "integerValue")}];
  v4 = [v2 compare:v3];

  return v4;
}

+ (id)titleStringForState:(int64_t)state
{
  if (state > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = _HFLocalizedStringWithDefaultValue(off_277DFDE58[state], off_277DFDE58[state], 1);
  }

  return v4;
}

+ (unint64_t)abstractTargetModeInResponse:(id)response
{
  v3 = *MEMORY[0x277CCF748];
  responseCopy = response;
  v5 = [responseCopy responseForCharacteristicType:v3];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB30]];

  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  if ([v6 BOOLValue])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = +[HFTargetRangeUtilities rangeModeForTargetHumidifierDehumidifierState:](HFTargetRangeUtilities, "rangeModeForTargetHumidifierDehumidifierState:", [v8 integerValue]);
  }

  return v10;
}

+ (unint64_t)abstractCurrentModeInResponse:(id)response
{
  v3 = *MEMORY[0x277CCF828];
  responseCopy = response;
  v5 = [responseCopy responseForCharacteristicType:v3];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748]];

  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  if ([v8 BOOLValue])
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    integerValue = [v6 integerValue];
    if (integerValue == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = integerValue == 2;
    }
  }

  return v10;
}

@end