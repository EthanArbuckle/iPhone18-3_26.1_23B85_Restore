@interface HMDCoreDataTransformerHMDTriggerRecurrences
+ (id)allowedTopLevelClasses;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation HMDCoreDataTransformerHMDTriggerRecurrences

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    v6 = valueCopy;
    objc_opt_class();
    v7 = objc_opt_isKindOfClass() & 1;
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v7)
    {
      v13 = _HMFPreconditionFailure();
      return [(HMDCoreDataTransformerHMDTriggerRecurrences *)v13 transformedValue:v14, v15];
    }

    if ([v6 unsignedIntegerValue])
    {
      v10 = HMDaysOfTheWeekToDateComponents();
      v16.receiver = self;
      v16.super_class = HMDCoreDataTransformerHMDTriggerRecurrences;
      v11 = [(NSSecureUnarchiveFromDataTransformer *)&v16 reverseTransformedValue:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = _HMFPreconditionFailure();
      return +[(HMDCoreDataTransformerHMDTriggerRecurrences *)v8];
    }

    v10.receiver = self;
    v10.super_class = HMDCoreDataTransformerHMDTriggerRecurrences;
    v5 = [(HMDSecureUnarchiveFromDataTransformer *)&v10 transformedValue:valueCopy];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)allowedTopLevelClasses
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end