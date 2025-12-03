@interface HFAnalyticsDiscoverTabContentViewedEvent
- (HFAnalyticsDiscoverTabContentViewedEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsDiscoverTabContentViewedEvent

- (HFAnalyticsDiscoverTabContentViewedEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"discoverTabContentViewedIDKey"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"discoverTabContentViewedLocaleKey"];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v14.receiver = self;
  v14.super_class = HFAnalyticsDiscoverTabContentViewedEvent;
  v11 = [(HFAnalyticsEvent *)&v14 initWithEventType:11];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentID, v6);
    objc_storeStrong(&v12->_locale, v9);
  }

  return v12;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsDiscoverTabContentViewedEvent;
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  contentID = [(HFAnalyticsDiscoverTabContentViewedEvent *)self contentID];
  [v4 na_safeSetObject:contentID forKey:@"id"];

  locale = [(HFAnalyticsDiscoverTabContentViewedEvent *)self locale];
  [v4 na_safeSetObject:locale forKey:@"locale"];

  return v4;
}

@end