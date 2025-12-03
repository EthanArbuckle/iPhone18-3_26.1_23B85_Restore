@interface HFAnalyticsHiddenBannerEvent
- (HFAnalyticsHiddenBannerEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsHiddenBannerEvent

- (HFAnalyticsHiddenBannerEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"item"];
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
  v8 = [dataCopy objectForKeyedSubscript:@"tappedBannerItem"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v29.receiver = self;
  v29.super_class = HFAnalyticsHiddenBannerEvent;
  v11 = [(HFAnalyticsEvent *)&v29 initWithEventType:42];
  if (v11)
  {
    objc_opt_class();
    v12 = [dataCopy objectForKeyedSubscript:@"overrideItemClassName"];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if ([v14 length])
    {
      v15 = v14;
    }

    else
    {
      v17 = objc_opt_class();
      v15 = NSStringFromClass(v17);
    }

    hiddenBannerItemClassName = v11->_hiddenBannerItemClassName;
    v11->_hiddenBannerItemClassName = v15;

    objc_opt_class();
    v18 = [dataCopy objectForKeyedSubscript:@"tappedBannerOverrideItemClassName"];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if ([v20 length])
    {
      v21 = v20;
    }

    else
    {
      v23 = objc_opt_class();
      v21 = NSStringFromClass(v23);
    }

    tappedBannerItemClassName = v11->_tappedBannerItemClassName;
    v11->_tappedBannerItemClassName = v21;

    objc_opt_class();
    v24 = [dataCopy objectForKeyedSubscript:@"hiddenBannerCount"];
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    hiddenBannerCount = v11->_hiddenBannerCount;
    v11->_hiddenBannerCount = v26;
  }

  return v11;
}

- (id)payload
{
  v9.receiver = self;
  v9.super_class = HFAnalyticsHiddenBannerEvent;
  payload = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [payload mutableCopy];

  hiddenBannerItemClassName = [(HFAnalyticsHiddenBannerEvent *)self hiddenBannerItemClassName];
  [v4 na_safeSetObject:hiddenBannerItemClassName forKey:@"item"];

  hiddenBannerCount = [(HFAnalyticsHiddenBannerEvent *)self hiddenBannerCount];
  [v4 na_safeSetObject:hiddenBannerCount forKey:@"hiddenBannerCount"];

  tappedBannerItemClassName = [(HFAnalyticsHiddenBannerEvent *)self tappedBannerItemClassName];
  [v4 na_safeSetObject:tappedBannerItemClassName forKey:@"tappedBannerItem"];

  [v4 na_safeSetObject:&unk_2825237D8 forKey:@"homeAppEventCount"];

  return v4;
}

@end