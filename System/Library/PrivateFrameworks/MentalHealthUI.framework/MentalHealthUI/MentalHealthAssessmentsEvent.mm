@interface MentalHealthAssessmentsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation MentalHealthAssessmentsEvent

- (NSString)eventName
{
  v2 = sub_258B02AD4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_258AD6068(MEMORY[0x277D84F90]);
  v4 = sub_258B029E4();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_258AC1FC8(v4);

  v5 = sub_258B029E4();

  return v5;
}

@end