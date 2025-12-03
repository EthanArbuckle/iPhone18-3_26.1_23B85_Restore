@interface HFAnalyticsServiceCountEvent
- (HFAnalyticsServiceCountEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsServiceCountEvent

- (HFAnalyticsServiceCountEvent)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = HFAnalyticsServiceCountEvent;
  v5 = [(HFAnalyticsEvent *)&v11 initWithEventType:31];
  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"numFavoriteServices_v2"];

    if (!v6)
    {
      NSLog(&cfstr_MissingFavorit.isa);
    }

    v7 = [dataCopy objectForKeyedSubscript:@"numShowInHomeCameras"];

    if (!v7)
    {
      NSLog(&cfstr_MissingShowinh.isa);
    }

    v8 = [dataCopy objectForKeyedSubscript:@"numSupportedServices"];

    if (!v8)
    {
      NSLog(&cfstr_MissingSupport.isa);
    }

    v9 = [dataCopy objectForKeyedSubscript:@"numUnsupportedServices"];

    if (!v9)
    {
      NSLog(&cfstr_MissingUnsuppo.isa);
    }

    [(HFAnalyticsServiceCountEvent *)v5 setPayloadDictionary:dataCopy];
  }

  return v5;
}

@end