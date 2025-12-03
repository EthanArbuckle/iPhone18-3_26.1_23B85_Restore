@interface HearingTestFlowEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HearingTestFlowEvent

- (NSString)eventName
{
  v2 = sub_20CE13914();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  HearingTestFlowEvent.makeUnrestrictedEventPayload(with:)(sourceCopy);

  v5 = sub_20CE13874();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  HearingTestFlowEvent.makeIHAGatedEventPayload(with:)(sourceCopy);

  v5 = sub_20CE13874();

  return v5;
}

@end