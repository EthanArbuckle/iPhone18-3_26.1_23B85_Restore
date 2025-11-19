@interface HFDurationEventBuilder
- (HFDurationEventBuilder)initWithEvent:(id)a3;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)description;
@end

@implementation HFDurationEventBuilder

- (HFDurationEventBuilder)initWithEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFDurationEventBuilder;
  v5 = [(HFEventBuilder *)&v8 initWithEvent:v4];
  if (v5)
  {
    [v4 duration];
    v5->_duration = v6;
  }

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_alloc(MEMORY[0x277CD19D0]);
  [(HFDurationEventBuilder *)self duration];
  v5 = [v4 initWithDuration:?];
  v6 = [v3 setWithObject:v5];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  [(HFDurationEventBuilder *)self duration];
  v4 = [v3 appendDouble:@"duration" withName:1 decimalPrecision:?];
  v5 = [v3 build];

  return v5;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HFDurationEventBuilder;
  v4 = [(HFEventBuilder *)&v8 comparisonKey];
  [(HFDurationEventBuilder *)self duration];
  v6 = [v3 stringWithFormat:@"%@-%f", v4, v5];

  return v6;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HFDurationEventBuilder;
  v5 = [(HFEventBuilder *)&v12 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = MEMORY[0x277CCABB0];
    [(HFDurationEventBuilder *)self duration];
    v7 = [v6 numberWithDouble:?];
    v8 = MEMORY[0x277CCABB0];
    [v4 duration];
    v9 = [v8 numberWithDouble:?];
    v10 = [HFPropertyDifference compareObjectA:v7 toObjectB:v9 key:@"duration" priority:3];
    [v5 add:v10];
  }

  return v5;
}

@end