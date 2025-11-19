@interface OBAnalyticsEvent
+ (id)eventWithName:(id)a3 withPayload:(id)a4;
- (id)description;
@end

@implementation OBAnalyticsEvent

+ (id)eventWithName:(id)a3 withPayload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(OBAnalyticsEvent);
  [(OBAnalyticsEvent *)v7 setName:v6];

  [(OBAnalyticsEvent *)v7 setPayload:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(OBAnalyticsEvent *)self name];
  v5 = [(OBAnalyticsEvent *)self payload];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end