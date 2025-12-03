@interface WDQuantityListDataProvider
- (WDQuantityListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDQuantityListDataProvider

- (WDQuantityListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = WDQuantityListDataProvider;
  v7 = [(WDSampleListDataProvider *)&v10 initWithDisplayType:typeCopy profile:profile];
  if (v7)
  {
    sampleType = [typeCopy sampleType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to create a quantity list provider with a non-quantity data group"];
    }
  }

  return v7;
}

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v7[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)textForObject:(id)object
{
  objectCopy = object;
  displayType = [(WDSampleListDataProvider *)self displayType];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v7 = [unitController unitForDisplayType:displayType];

  quantity = [objectCopy quantity];

  [quantity doubleValueForUnit:v7];
  v10 = v9;

  presentation = [displayType presentation];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [presentation adjustedValueForDaemonValue:v12];

  unitController2 = [(WDSampleListDataProvider *)self unitController];
  v15 = HKFormattedStringFromValueForContext();

  return v15;
}

- (id)titleForSection:(unint64_t)section
{
  displayType = [(WDSampleListDataProvider *)self displayType];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v7 = HKFormatterIncludesUnitForDisplayTypeInContext();

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WDQuantityListDataProvider;
    v8 = [(WDSampleListDataProvider *)&v10 titleForSection:section];
  }

  return v8;
}

@end