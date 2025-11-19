@interface AdvertisableFeatureInteractionAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation AdvertisableFeatureInteractionAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1D0FF53E8();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_1D0F7BE1C(v4);

  v5 = sub_1D0FF5328();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_1D0F7E21C(v4);

  v5 = sub_1D0FF5328();

  return v5;
}

@end