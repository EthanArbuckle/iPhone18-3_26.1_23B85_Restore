@interface HFCalendarEventBuilder
- (HFCalendarEventBuilder)initWithEvent:(id)a3;
- (NSDate)effectiveFireDate;
- (NSString)description;
- (id)_fireDateForTimeComponents:(id)a3;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)effectiveCalendar;
- (id)effectiveFireTimeComponents;
- (id)naturalLanguageNameOfType:(unint64_t)a3 withHome:(id)a4 recurrences:(id)a5;
- (id)naturalLanguageNameWithOptions:(id)a3 recurrences:(id)a4;
- (id)performValidation;
- (void)updateBaseFireDateForTrigger;
@end

@implementation HFCalendarEventBuilder

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HFCalendarEventBuilder;
  v5 = [(HFEventBuilder *)&v13 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [(HFCalendarEventBuilder *)self fireDate];
    v7 = [v4 fireDate];
    v8 = [HFPropertyDifference compareObjectA:v6 toObjectB:v7 key:@"fireDate" priority:3];
    [v5 add:v8];

    v9 = [(HFCalendarEventBuilder *)self fireTimeComponents];
    v10 = [v4 fireTimeComponents];
    v11 = [HFPropertyDifference compareObjectA:v9 toObjectB:v10 key:@"fireTimeComponents" priority:3];
    [v5 add:v11];
  }

  return v5;
}

- (HFCalendarEventBuilder)initWithEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFCalendarEventBuilder;
  v5 = [(HFEventBuilder *)&v8 initWithEvent:v4];
  if (v5)
  {
    v6 = [v4 fireDateComponents];
    [(HFCalendarEventBuilder *)v5 setFireTimeComponents:v6];

    [(HFCalendarEventBuilder *)v5 setTest_overrideNowDate:0];
    [(HFCalendarEventBuilder *)v5 setTest_overrideCalendar:0];
  }

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  v3 = [(HFCalendarEventBuilder *)self effectiveFireTimeComponents];
  if (!v3)
  {
    NSLog(&cfstr_AttemptingToCr.isa, self);
  }

  v4 = [objc_alloc(MEMORY[0x277CD18A8]) initWithFireDateComponents:v3];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v4];

  return v5;
}

- (id)naturalLanguageNameOfType:(unint64_t)a3 withHome:(id)a4 recurrences:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:v9 nameType:a3];

  v11 = [(HFCalendarEventBuilder *)self naturalLanguageNameWithOptions:v10 recurrences:v8];

  return v11;
}

- (id)naturalLanguageNameWithOptions:(id)a3 recurrences:(id)a4
{
  v6 = MEMORY[0x277CD1EB0];
  v7 = a4;
  v8 = a3;
  v9 = [(HFCalendarEventBuilder *)self effectiveFireDate];
  v10 = [v6 hf_naturalLanguageNameWithOptions:v8 fireDate:v9 recurrences:v7];

  return v10;
}

- (id)performValidation
{
  v2 = [(HFCalendarEventBuilder *)self effectiveFireDate];

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

- (void)updateBaseFireDateForTrigger
{
  v3 = [(HFCalendarEventBuilder *)self fireTimeComponents];
  if (v3)
  {
  }

  else
  {
    v4 = [(HFCalendarEventBuilder *)self fireDate];

    if (v4)
    {
      v5 = [(HFCalendarEventBuilder *)self effectiveFireTimeComponents];
      [(HFCalendarEventBuilder *)self setFireTimeComponents:v5];

      [(HFCalendarEventBuilder *)self setFireDate:0];
    }
  }
}

- (id)effectiveCalendar
{
  v2 = [(HFCalendarEventBuilder *)self test_overrideCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v5 = v4;

  return v5;
}

- (id)effectiveFireTimeComponents
{
  v3 = [(HFCalendarEventBuilder *)self fireTimeComponents];

  if (v3)
  {
    v4 = [(HFCalendarEventBuilder *)self fireTimeComponents];
  }

  else
  {
    v5 = [(HFCalendarEventBuilder *)self fireDate];

    if (v5)
    {
      v6 = [(HFCalendarEventBuilder *)self effectiveCalendar];
      v7 = [(HFCalendarEventBuilder *)self fireDate];
      v4 = [v6 components:96 fromDate:v7];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSDate)effectiveFireDate
{
  v3 = [(HFCalendarEventBuilder *)self fireDate];
  v4 = [(HFCalendarEventBuilder *)self fireTimeComponents];

  if (v4)
  {
    v5 = [(HFCalendarEventBuilder *)self fireTimeComponents];
    v6 = [(HFCalendarEventBuilder *)self _fireDateForTimeComponents:v5];

    v3 = v6;
  }

  return v3;
}

- (id)_fireDateForTimeComponents:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HFCalendarEventBuilder *)self effectiveCalendar];
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setMonth:{objc_msgSend(v4, "month")}];
    [v6 setDay:{objc_msgSend(v4, "day")}];
    [v6 setHour:{objc_msgSend(v4, "hour")}];
    v7 = [v4 minute];

    [v6 setMinute:v7];
    [v6 setSecond:0];
    [v6 setNanosecond:0];
    v8 = [(HFCalendarEventBuilder *)self test_overrideNowDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA8] date];
    }

    v12 = v10;

    v13 = [v5 nextDateAfterDate:v12 matchingComponents:v6 options:0];
    if ([v6 day] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [v12 dateByAddingTimeInterval:60.0];
      v15 = [v14 earlierDate:v13];

      if (v15 == v13)
      {
        v16 = [v5 dateByAddingUnit:16 value:1 toDate:v13 options:0];

        v13 = v16;
      }
    }

    v17 = [v5 dateBySettingUnit:128 value:0 ofDate:v13 options:0];

    v11 = [v5 dateBySettingUnit:0x8000 value:0 ofDate:v17 options:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCalendarEventBuilder *)self fireDate];
  v5 = [v3 appendObject:v4 withName:@"fireDate"];

  v6 = [(HFCalendarEventBuilder *)self fireTimeComponents];
  v7 = [v3 appendObject:v6 withName:@"fireTimeComponents"];

  v8 = [v3 build];

  return v8;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HFCalendarEventBuilder;
  v4 = [(HFEventBuilder *)&v9 comparisonKey];
  v5 = [(HFCalendarEventBuilder *)self effectiveFireDate];
  v6 = [(HFCalendarEventBuilder *)self fireTimeComponents];
  v7 = [v3 stringWithFormat:@"%@-%@:%@", v4, v5, v6];

  return v7;
}

@end