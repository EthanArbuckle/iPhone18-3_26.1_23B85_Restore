@interface MedicationListOnboardingEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation MedicationListOnboardingEvent

- (NSString)eventName
{
  v2 = sub_1D166F9C4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_1D162B684(MEMORY[0x1E69E7CC0]);
  v4 = sub_1D166F934();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_1D16374BC(v4);

  v5 = sub_1D166F934();

  return v5;
}

@end