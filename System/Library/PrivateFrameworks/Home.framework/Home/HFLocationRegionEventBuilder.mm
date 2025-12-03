@interface HFLocationRegionEventBuilder
- (BOOL)isRegionAtHome:(id)home;
- (HFLocationRegionEventBuilder)initWithEvent:(id)event;
- (NSString)description;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)options;
- (unint64_t)locationEventType;
@end

@implementation HFLocationRegionEventBuilder

- (HFLocationRegionEventBuilder)initWithEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = HFLocationRegionEventBuilder;
  v5 = [(HFEventBuilder *)&v10 initWithEvent:eventCopy];
  if (v5)
  {
    region = [eventCopy region];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      region2 = [eventCopy region];
      [(HFLocationRegionEventBuilder *)v5 setRegion:region2];
    }
  }

  return v5;
}

- (unint64_t)locationEventType
{
  v2 = MEMORY[0x277CD1B38];
  region = [(HFLocationRegionEventBuilder *)self region];
  v4 = [v2 hf_locationEventTypeForRegion:region];

  return v4;
}

- (id)buildNewEventsFromCurrentState
{
  region = [(HFLocationRegionEventBuilder *)self region];

  if (region)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_alloc(MEMORY[0x277CD1B38]);
    region2 = [(HFLocationRegionEventBuilder *)self region];
    v7 = [v5 initWithRegion:region2];
    v8 = [v4 setWithObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isRegionAtHome:(id)home
{
  homeCopy = home;
  region = [(HFLocationRegionEventBuilder *)self region];
  if (region)
  {
    v6 = MEMORY[0x277CD1B38];
    region2 = [(HFLocationRegionEventBuilder *)self region];
    v8 = [v6 hf_isRegion:region2 atHome:homeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  region = [(HFLocationRegionEventBuilder *)self region];
  v5 = [v3 appendObject:region withName:@"region"];

  build = [v3 build];

  return build;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  v4 = MEMORY[0x277CD19F8];
  optionsCopy = options;
  region = [(HFLocationRegionEventBuilder *)self region];
  locationEventUser = [optionsCopy locationEventUser];
  v8 = [v4 hf_naturalLanguageNameWithOptions:optionsCopy region:region forUser:locationEventUser];

  return v8;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = HFLocationRegionEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v15 comparisonKey];
  region = [(HFLocationRegionEventBuilder *)self region];
  [region center];
  v7 = v6;
  region2 = [(HFLocationRegionEventBuilder *)self region];
  [region2 center];
  v10 = v9;
  region3 = [(HFLocationRegionEventBuilder *)self region];
  [region3 radius];
  v13 = [v3 stringWithFormat:@"%@-%f, %f:%f", comparisonKey, v7, v10, v12];

  return v13;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = HFLocationRegionEventBuilder;
  v5 = [(HFEventBuilder *)&v9 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__HFLocationRegionEventBuilder_Comparison__compareToObject___block_invoke;
    v7[3] = &unk_277DF6EF8;
    v7[4] = self;
    v8 = objectCopy;
  }

  return v5;
}

BOOL __60__HFLocationRegionEventBuilder_Comparison__compareToObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) region];
  [v2 center];
  v4 = v3;
  v5 = [*(a1 + 40) region];
  [v5 center];
  if (v4 == v6)
  {
    v7 = [*(a1 + 32) region];
    [v7 center];
    v9 = v8;
    v10 = [*(a1 + 40) region];
    [v10 center];
    if (v9 == v11)
    {
      v13 = [*(a1 + 32) region];
      [v13 radius];
      v15 = v14;
      v16 = [*(a1 + 40) region];
      [v16 radius];
      v12 = v15 != v17;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

@end