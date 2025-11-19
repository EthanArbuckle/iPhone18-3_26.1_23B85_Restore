@interface HFAnalyticsWallpaperChangeEvent
- (HFAnalyticsWallpaperChangeEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsWallpaperChangeEvent

- (HFAnalyticsWallpaperChangeEvent)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFAnalyticsWallpaperChangeEvent;
  v5 = [(HFAnalyticsEvent *)&v9 initWithEventType:32];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"NamedWallpaperCount"];

    if (!v6)
    {
      NSLog(&cfstr_MissingNamedWa.isa);
    }

    v7 = [v4 objectForKeyedSubscript:@"CustomWallpaperCount"];

    if (!v7)
    {
      NSLog(&cfstr_MissingCustomW.isa);
    }

    [(HFAnalyticsWallpaperChangeEvent *)v5 setPayloadDictionary:v4];
  }

  return v5;
}

@end