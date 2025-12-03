@interface HFBlindsServiceItem
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFBlindsServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v12.receiver = self;
  v12.super_class = HFBlindsServiceItem;
  v4 = [(HFDoorServiceItem *)&v12 createControlItemsWithOptions:options];
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = [HFSimpleIncrementalControlItem alloc];
  v7 = [(HFSimpleIncrementalControlItem *)v6 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:*MEMORY[0x277CCFB28] displayResults:0];
  v8 = [HFSimpleIncrementalControlItem alloc];
  v9 = [(HFSimpleIncrementalControlItem *)v8 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:*MEMORY[0x277CCFB78] displayResults:0];
  v10 = [v4 mutableCopy];
  [v10 addObject:v7];
  [v10 addObject:v9];

  return v10;
}

@end