@interface MedicationListOnboardingEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation MedicationListOnboardingEvent

- (NSString)eventName
{
  v2 = sub_1D166F9C4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_1D162B684(MEMORY[0x1E69E7CC0]);
  v4 = sub_1D166F934();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_1D16374BC(sourceCopy);

  v5 = sub_1D166F934();

  return v5;
}

@end