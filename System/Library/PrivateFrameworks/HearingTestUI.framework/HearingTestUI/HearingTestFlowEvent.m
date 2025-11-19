@interface HearingTestFlowEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HearingTestFlowEvent

- (NSString)eventName
{
  v2 = sub_20CE13914();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  HearingTestFlowEvent.makeUnrestrictedEventPayload(with:)(v4);

  v5 = sub_20CE13874();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  HearingTestFlowEvent.makeIHAGatedEventPayload(with:)(v4);

  v5 = sub_20CE13874();

  return v5;
}

@end