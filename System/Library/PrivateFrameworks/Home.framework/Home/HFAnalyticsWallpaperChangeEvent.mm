@interface HFAnalyticsWallpaperChangeEvent
- (HFAnalyticsWallpaperChangeEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsWallpaperChangeEvent

- (HFAnalyticsWallpaperChangeEvent)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HFAnalyticsWallpaperChangeEvent;
  v5 = [(HFAnalyticsEvent *)&v9 initWithEventType:32];
  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"NamedWallpaperCount"];

    if (!v6)
    {
      NSLog(&cfstr_MissingNamedWa.isa);
    }

    v7 = [dataCopy objectForKeyedSubscript:@"CustomWallpaperCount"];

    if (!v7)
    {
      NSLog(&cfstr_MissingCustomW.isa);
    }

    [(HFAnalyticsWallpaperChangeEvent *)v5 setPayloadDictionary:dataCopy];
  }

  return v5;
}

@end