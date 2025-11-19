@interface HFSignificantTimeEventBuilder
- (HFSignificantTimeEventBuilder)initWithEvent:(id)a3;
- (NSString)description;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)naturalLanguageNameOfType:(unint64_t)a3 withHome:(id)a4 recurrences:(id)a5;
- (id)naturalLanguageNameWithOptions:(id)a3 recurrences:(id)a4;
- (id)performValidation;
@end

@implementation HFSignificantTimeEventBuilder

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HFSignificantTimeEventBuilder;
  v5 = [(HFEventBuilder *)&v13 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [(HFSignificantTimeEventBuilder *)self significantEvent];
    v7 = [v4 significantEvent];
    v8 = [HFPropertyDifference compareObjectA:v6 toObjectB:v7 key:@"significantEvent" priority:3];
    [v5 add:v8];

    v9 = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
    v10 = [v4 significantEventOffset];
    v11 = [HFPropertyDifference compareObjectA:v9 toObjectB:v10 key:@"significantEventOffset" priority:2];
    [v5 add:v11];
  }

  return v5;
}

- (HFSignificantTimeEventBuilder)initWithEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFSignificantTimeEventBuilder;
  v5 = [(HFEventBuilder *)&v9 initWithEvent:v4];
  if (v5)
  {
    v6 = [v4 significantEvent];
    [(HFSignificantTimeEventBuilder *)v5 setSignificantEvent:v6];

    v7 = [v4 offset];
    [(HFSignificantTimeEventBuilder *)v5 setSignificantEventOffset:v7];
  }

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_alloc(MEMORY[0x277CD1E00]);
  v5 = [(HFSignificantTimeEventBuilder *)self significantEvent];
  v6 = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v7 = [v4 initWithSignificantEvent:v5 offset:v6];
  v8 = [v3 setWithObject:v7];

  return v8;
}

- (id)naturalLanguageNameOfType:(unint64_t)a3 withHome:(id)a4 recurrences:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:v9 nameType:a3];

  v11 = [(HFSignificantTimeEventBuilder *)self naturalLanguageNameWithOptions:v10 recurrences:v8];

  return v11;
}

- (id)naturalLanguageNameWithOptions:(id)a3 recurrences:(id)a4
{
  v6 = MEMORY[0x277CD1EB0];
  v7 = a4;
  v8 = a3;
  v9 = [(HFSignificantTimeEventBuilder *)self significantEvent];
  v10 = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v11 = [v6 hf_naturalLanguageNameWithOptions:v8 significantEvent:v9 offset:v10 recurrences:v7];

  return v11;
}

- (id)performValidation
{
  v2 = [(HFSignificantTimeEventBuilder *)self significantEvent];

  v3 = MEMORY[0x277D2C900];
  if (v2)
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v4 = [v3 futureWithError:v5];
  }

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFSignificantTimeEventBuilder *)self significantEvent];
  [v3 appendString:v4 withName:@"significantEvent"];

  v5 = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v6 = [v3 appendObject:v5 withName:@"offset"];

  v7 = [v3 build];

  return v7;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HFSignificantTimeEventBuilder;
  v4 = [(HFEventBuilder *)&v9 comparisonKey];
  v5 = [(HFSignificantTimeEventBuilder *)self significantEvent];
  v6 = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v7 = [v3 stringWithFormat:@"%@-%@:%@", v4, v5, v6];

  return v7;
}

@end