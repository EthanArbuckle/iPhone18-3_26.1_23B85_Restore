@interface HFAnalyticsBannerInteractionEvent
- (HFAnalyticsBannerInteractionEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsBannerInteractionEvent

- (HFAnalyticsBannerInteractionEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"item"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v18.receiver = self;
  v18.super_class = HFAnalyticsBannerInteractionEvent;
  v8 = [(HFAnalyticsEvent *)&v18 initWithEventType:41];
  if (v8)
  {
    objc_opt_class();
    v9 = [v4 objectForKeyedSubscript:@"overrideItemClassName"];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if ([v11 length])
    {
      v12 = v11;
    }

    else
    {
      v14 = objc_opt_class();
      v12 = NSStringFromClass(v14);
    }

    itemClassName = v8->_itemClassName;
    v8->_itemClassName = v12;

    objc_opt_class();
    v15 = [v4 objectForKeyedSubscript:@"hiddenBannerCount"];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v8->_hiddenBannerCount, v16);
  }

  return v8;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsBannerInteractionEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsBannerInteractionEvent *)self itemClassName];
  [v4 na_safeSetObject:v5 forKey:@"item"];

  v6 = [(HFAnalyticsBannerInteractionEvent *)self hiddenBannerCount];
  [v4 na_safeSetObject:v6 forKey:@"hiddenBannerCount"];

  [v4 na_safeSetObject:&unk_2825244B0 forKey:@"homeAppEventCount"];

  return v4;
}

@end