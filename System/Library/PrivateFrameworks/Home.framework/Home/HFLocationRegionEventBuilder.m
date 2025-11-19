@interface HFLocationRegionEventBuilder
- (BOOL)isRegionAtHome:(id)a3;
- (HFLocationRegionEventBuilder)initWithEvent:(id)a3;
- (NSString)description;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (unint64_t)locationEventType;
@end

@implementation HFLocationRegionEventBuilder

- (HFLocationRegionEventBuilder)initWithEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HFLocationRegionEventBuilder;
  v5 = [(HFEventBuilder *)&v10 initWithEvent:v4];
  if (v5)
  {
    v6 = [v4 region];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v4 region];
      [(HFLocationRegionEventBuilder *)v5 setRegion:v8];
    }
  }

  return v5;
}

- (unint64_t)locationEventType
{
  v2 = MEMORY[0x277CD1B38];
  v3 = [(HFLocationRegionEventBuilder *)self region];
  v4 = [v2 hf_locationEventTypeForRegion:v3];

  return v4;
}

- (id)buildNewEventsFromCurrentState
{
  v3 = [(HFLocationRegionEventBuilder *)self region];

  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_alloc(MEMORY[0x277CD1B38]);
    v6 = [(HFLocationRegionEventBuilder *)self region];
    v7 = [v5 initWithRegion:v6];
    v8 = [v4 setWithObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isRegionAtHome:(id)a3
{
  v4 = a3;
  v5 = [(HFLocationRegionEventBuilder *)self region];
  if (v5)
  {
    v6 = MEMORY[0x277CD1B38];
    v7 = [(HFLocationRegionEventBuilder *)self region];
    v8 = [v6 hf_isRegion:v7 atHome:v4];
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
  v4 = [(HFLocationRegionEventBuilder *)self region];
  v5 = [v3 appendObject:v4 withName:@"region"];

  v6 = [v3 build];

  return v6;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = MEMORY[0x277CD19F8];
  v5 = a3;
  v6 = [(HFLocationRegionEventBuilder *)self region];
  v7 = [v5 locationEventUser];
  v8 = [v4 hf_naturalLanguageNameWithOptions:v5 region:v6 forUser:v7];

  return v8;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = HFLocationRegionEventBuilder;
  v4 = [(HFEventBuilder *)&v15 comparisonKey];
  v5 = [(HFLocationRegionEventBuilder *)self region];
  [v5 center];
  v7 = v6;
  v8 = [(HFLocationRegionEventBuilder *)self region];
  [v8 center];
  v10 = v9;
  v11 = [(HFLocationRegionEventBuilder *)self region];
  [v11 radius];
  v13 = [v3 stringWithFormat:@"%@-%f, %f:%f", v4, v7, v10, v12];

  return v13;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFLocationRegionEventBuilder;
  v5 = [(HFEventBuilder *)&v9 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__HFLocationRegionEventBuilder_Comparison__compareToObject___block_invoke;
    v7[3] = &unk_277DF6EF8;
    v7[4] = self;
    v8 = v4;
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