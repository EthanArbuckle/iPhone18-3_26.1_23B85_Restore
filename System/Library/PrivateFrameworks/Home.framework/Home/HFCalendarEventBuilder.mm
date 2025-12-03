@interface HFCalendarEventBuilder
- (HFCalendarEventBuilder)initWithEvent:(id)event;
- (NSDate)effectiveFireDate;
- (NSString)description;
- (id)_fireDateForTimeComponents:(id)components;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)effectiveCalendar;
- (id)effectiveFireTimeComponents;
- (id)naturalLanguageNameOfType:(unint64_t)type withHome:(id)home recurrences:(id)recurrences;
- (id)naturalLanguageNameWithOptions:(id)options recurrences:(id)recurrences;
- (id)performValidation;
- (void)updateBaseFireDateForTrigger;
@end

@implementation HFCalendarEventBuilder

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = HFCalendarEventBuilder;
  v5 = [(HFEventBuilder *)&v13 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    fireDate = [(HFCalendarEventBuilder *)self fireDate];
    fireDate2 = [objectCopy fireDate];
    v8 = [HFPropertyDifference compareObjectA:fireDate toObjectB:fireDate2 key:@"fireDate" priority:3];
    [v5 add:v8];

    fireTimeComponents = [(HFCalendarEventBuilder *)self fireTimeComponents];
    fireTimeComponents2 = [objectCopy fireTimeComponents];
    v11 = [HFPropertyDifference compareObjectA:fireTimeComponents toObjectB:fireTimeComponents2 key:@"fireTimeComponents" priority:3];
    [v5 add:v11];
  }

  return v5;
}

- (HFCalendarEventBuilder)initWithEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = HFCalendarEventBuilder;
  v5 = [(HFEventBuilder *)&v8 initWithEvent:eventCopy];
  if (v5)
  {
    fireDateComponents = [eventCopy fireDateComponents];
    [(HFCalendarEventBuilder *)v5 setFireTimeComponents:fireDateComponents];

    [(HFCalendarEventBuilder *)v5 setTest_overrideNowDate:0];
    [(HFCalendarEventBuilder *)v5 setTest_overrideCalendar:0];
  }

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  effectiveFireTimeComponents = [(HFCalendarEventBuilder *)self effectiveFireTimeComponents];
  if (!effectiveFireTimeComponents)
  {
    NSLog(&cfstr_AttemptingToCr.isa, self);
  }

  v4 = [objc_alloc(MEMORY[0x277CD18A8]) initWithFireDateComponents:effectiveFireTimeComponents];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v4];

  return v5;
}

- (id)naturalLanguageNameOfType:(unint64_t)type withHome:(id)home recurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  homeCopy = home;
  v10 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:homeCopy nameType:type];

  v11 = [(HFCalendarEventBuilder *)self naturalLanguageNameWithOptions:v10 recurrences:recurrencesCopy];

  return v11;
}

- (id)naturalLanguageNameWithOptions:(id)options recurrences:(id)recurrences
{
  v6 = MEMORY[0x277CD1EB0];
  recurrencesCopy = recurrences;
  optionsCopy = options;
  effectiveFireDate = [(HFCalendarEventBuilder *)self effectiveFireDate];
  v10 = [v6 hf_naturalLanguageNameWithOptions:optionsCopy fireDate:effectiveFireDate recurrences:recurrencesCopy];

  return v10;
}

- (id)performValidation
{
  effectiveFireDate = [(HFCalendarEventBuilder *)self effectiveFireDate];

  v3 = MEMORY[0x277D2C900];
  if (effectiveFireDate)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    futureWithNoResult = [v3 futureWithError:v5];
  }

  return futureWithNoResult;
}

- (void)updateBaseFireDateForTrigger
{
  fireTimeComponents = [(HFCalendarEventBuilder *)self fireTimeComponents];
  if (fireTimeComponents)
  {
  }

  else
  {
    fireDate = [(HFCalendarEventBuilder *)self fireDate];

    if (fireDate)
    {
      effectiveFireTimeComponents = [(HFCalendarEventBuilder *)self effectiveFireTimeComponents];
      [(HFCalendarEventBuilder *)self setFireTimeComponents:effectiveFireTimeComponents];

      [(HFCalendarEventBuilder *)self setFireDate:0];
    }
  }
}

- (id)effectiveCalendar
{
  test_overrideCalendar = [(HFCalendarEventBuilder *)self test_overrideCalendar];
  v3 = test_overrideCalendar;
  if (test_overrideCalendar)
  {
    currentCalendar = test_overrideCalendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v5 = currentCalendar;

  return v5;
}

- (id)effectiveFireTimeComponents
{
  fireTimeComponents = [(HFCalendarEventBuilder *)self fireTimeComponents];

  if (fireTimeComponents)
  {
    fireTimeComponents2 = [(HFCalendarEventBuilder *)self fireTimeComponents];
  }

  else
  {
    fireDate = [(HFCalendarEventBuilder *)self fireDate];

    if (fireDate)
    {
      effectiveCalendar = [(HFCalendarEventBuilder *)self effectiveCalendar];
      fireDate2 = [(HFCalendarEventBuilder *)self fireDate];
      fireTimeComponents2 = [effectiveCalendar components:96 fromDate:fireDate2];
    }

    else
    {
      fireTimeComponents2 = 0;
    }
  }

  return fireTimeComponents2;
}

- (NSDate)effectiveFireDate
{
  fireDate = [(HFCalendarEventBuilder *)self fireDate];
  fireTimeComponents = [(HFCalendarEventBuilder *)self fireTimeComponents];

  if (fireTimeComponents)
  {
    fireTimeComponents2 = [(HFCalendarEventBuilder *)self fireTimeComponents];
    v6 = [(HFCalendarEventBuilder *)self _fireDateForTimeComponents:fireTimeComponents2];

    fireDate = v6;
  }

  return fireDate;
}

- (id)_fireDateForTimeComponents:(id)components
{
  if (components)
  {
    componentsCopy = components;
    effectiveCalendar = [(HFCalendarEventBuilder *)self effectiveCalendar];
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setMonth:{objc_msgSend(componentsCopy, "month")}];
    [v6 setDay:{objc_msgSend(componentsCopy, "day")}];
    [v6 setHour:{objc_msgSend(componentsCopy, "hour")}];
    minute = [componentsCopy minute];

    [v6 setMinute:minute];
    [v6 setSecond:0];
    [v6 setNanosecond:0];
    test_overrideNowDate = [(HFCalendarEventBuilder *)self test_overrideNowDate];
    v9 = test_overrideNowDate;
    if (test_overrideNowDate)
    {
      date = test_overrideNowDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v12 = date;

    v13 = [effectiveCalendar nextDateAfterDate:v12 matchingComponents:v6 options:0];
    if ([v6 day] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [v12 dateByAddingTimeInterval:60.0];
      v15 = [v14 earlierDate:v13];

      if (v15 == v13)
      {
        v16 = [effectiveCalendar dateByAddingUnit:16 value:1 toDate:v13 options:0];

        v13 = v16;
      }
    }

    v17 = [effectiveCalendar dateBySettingUnit:128 value:0 ofDate:v13 options:0];

    v11 = [effectiveCalendar dateBySettingUnit:0x8000 value:0 ofDate:v17 options:0];
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
  fireDate = [(HFCalendarEventBuilder *)self fireDate];
  v5 = [v3 appendObject:fireDate withName:@"fireDate"];

  fireTimeComponents = [(HFCalendarEventBuilder *)self fireTimeComponents];
  v7 = [v3 appendObject:fireTimeComponents withName:@"fireTimeComponents"];

  build = [v3 build];

  return build;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HFCalendarEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v9 comparisonKey];
  effectiveFireDate = [(HFCalendarEventBuilder *)self effectiveFireDate];
  fireTimeComponents = [(HFCalendarEventBuilder *)self fireTimeComponents];
  v7 = [v3 stringWithFormat:@"%@-%@:%@", comparisonKey, effectiveFireDate, fireTimeComponents];

  return v7;
}

@end