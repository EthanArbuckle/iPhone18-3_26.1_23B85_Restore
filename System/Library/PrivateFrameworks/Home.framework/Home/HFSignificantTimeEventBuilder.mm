@interface HFSignificantTimeEventBuilder
- (HFSignificantTimeEventBuilder)initWithEvent:(id)event;
- (NSString)description;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameOfType:(unint64_t)type withHome:(id)home recurrences:(id)recurrences;
- (id)naturalLanguageNameWithOptions:(id)options recurrences:(id)recurrences;
- (id)performValidation;
@end

@implementation HFSignificantTimeEventBuilder

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = HFSignificantTimeEventBuilder;
  v5 = [(HFEventBuilder *)&v13 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    significantEvent = [(HFSignificantTimeEventBuilder *)self significantEvent];
    significantEvent2 = [objectCopy significantEvent];
    v8 = [HFPropertyDifference compareObjectA:significantEvent toObjectB:significantEvent2 key:@"significantEvent" priority:3];
    [v5 add:v8];

    significantEventOffset = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
    significantEventOffset2 = [objectCopy significantEventOffset];
    v11 = [HFPropertyDifference compareObjectA:significantEventOffset toObjectB:significantEventOffset2 key:@"significantEventOffset" priority:2];
    [v5 add:v11];
  }

  return v5;
}

- (HFSignificantTimeEventBuilder)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = HFSignificantTimeEventBuilder;
  v5 = [(HFEventBuilder *)&v9 initWithEvent:eventCopy];
  if (v5)
  {
    significantEvent = [eventCopy significantEvent];
    [(HFSignificantTimeEventBuilder *)v5 setSignificantEvent:significantEvent];

    offset = [eventCopy offset];
    [(HFSignificantTimeEventBuilder *)v5 setSignificantEventOffset:offset];
  }

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_alloc(MEMORY[0x277CD1E00]);
  significantEvent = [(HFSignificantTimeEventBuilder *)self significantEvent];
  significantEventOffset = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v7 = [v4 initWithSignificantEvent:significantEvent offset:significantEventOffset];
  v8 = [v3 setWithObject:v7];

  return v8;
}

- (id)naturalLanguageNameOfType:(unint64_t)type withHome:(id)home recurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  homeCopy = home;
  v10 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:homeCopy nameType:type];

  v11 = [(HFSignificantTimeEventBuilder *)self naturalLanguageNameWithOptions:v10 recurrences:recurrencesCopy];

  return v11;
}

- (id)naturalLanguageNameWithOptions:(id)options recurrences:(id)recurrences
{
  v6 = MEMORY[0x277CD1EB0];
  recurrencesCopy = recurrences;
  optionsCopy = options;
  significantEvent = [(HFSignificantTimeEventBuilder *)self significantEvent];
  significantEventOffset = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v11 = [v6 hf_naturalLanguageNameWithOptions:optionsCopy significantEvent:significantEvent offset:significantEventOffset recurrences:recurrencesCopy];

  return v11;
}

- (id)performValidation
{
  significantEvent = [(HFSignificantTimeEventBuilder *)self significantEvent];

  v3 = MEMORY[0x277D2C900];
  if (significantEvent)
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

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  significantEvent = [(HFSignificantTimeEventBuilder *)self significantEvent];
  [v3 appendString:significantEvent withName:@"significantEvent"];

  significantEventOffset = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v6 = [v3 appendObject:significantEventOffset withName:@"offset"];

  build = [v3 build];

  return build;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HFSignificantTimeEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v9 comparisonKey];
  significantEvent = [(HFSignificantTimeEventBuilder *)self significantEvent];
  significantEventOffset = [(HFSignificantTimeEventBuilder *)self significantEventOffset];
  v7 = [v3 stringWithFormat:@"%@-%@:%@", comparisonKey, significantEvent, significantEventOffset];

  return v7;
}

@end