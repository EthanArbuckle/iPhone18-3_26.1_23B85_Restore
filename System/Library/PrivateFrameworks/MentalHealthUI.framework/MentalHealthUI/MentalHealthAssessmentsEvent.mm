@interface MentalHealthAssessmentsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation MentalHealthAssessmentsEvent

- (NSString)eventName
{
  v2 = sub_258B02AD4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_258AD6068(MEMORY[0x277D84F90]);
  v4 = sub_258B029E4();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_258AC1FC8(sourceCopy);

  v5 = sub_258B029E4();

  return v5;
}

@end