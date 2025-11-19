@interface HFAnalyticsServiceCountEvent
- (HFAnalyticsServiceCountEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsServiceCountEvent

- (HFAnalyticsServiceCountEvent)initWithData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HFAnalyticsServiceCountEvent;
  v5 = [(HFAnalyticsEvent *)&v11 initWithEventType:31];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numFavoriteServices_v2"];

    if (!v6)
    {
      NSLog(&cfstr_MissingFavorit.isa);
    }

    v7 = [v4 objectForKeyedSubscript:@"numShowInHomeCameras"];

    if (!v7)
    {
      NSLog(&cfstr_MissingShowinh.isa);
    }

    v8 = [v4 objectForKeyedSubscript:@"numSupportedServices"];

    if (!v8)
    {
      NSLog(&cfstr_MissingSupport.isa);
    }

    v9 = [v4 objectForKeyedSubscript:@"numUnsupportedServices"];

    if (!v9)
    {
      NSLog(&cfstr_MissingUnsuppo.isa);
    }

    [(HFAnalyticsServiceCountEvent *)v5 setPayloadDictionary:v4];
  }

  return v5;
}

@end