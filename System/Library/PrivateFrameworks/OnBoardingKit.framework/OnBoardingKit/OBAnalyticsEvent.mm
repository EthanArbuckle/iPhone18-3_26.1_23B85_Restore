@interface OBAnalyticsEvent
+ (id)eventWithName:(id)name withPayload:(id)payload;
- (id)description;
@end

@implementation OBAnalyticsEvent

+ (id)eventWithName:(id)name withPayload:(id)payload
{
  payloadCopy = payload;
  nameCopy = name;
  v7 = objc_alloc_init(OBAnalyticsEvent);
  [(OBAnalyticsEvent *)v7 setName:nameCopy];

  [(OBAnalyticsEvent *)v7 setPayload:payloadCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(OBAnalyticsEvent *)self name];
  payload = [(OBAnalyticsEvent *)self payload];
  v6 = [v3 stringWithFormat:@"%@ %@", name, payload];

  return v6;
}

@end