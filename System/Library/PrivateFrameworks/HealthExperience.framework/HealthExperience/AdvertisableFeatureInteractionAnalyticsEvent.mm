@interface AdvertisableFeatureInteractionAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation AdvertisableFeatureInteractionAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_1D0FF53E8();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_1D0F7BE1C(sourceCopy);

  v5 = sub_1D0FF5328();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_1D0F7E21C(sourceCopy);

  v5 = sub_1D0FF5328();

  return v5;
}

@end