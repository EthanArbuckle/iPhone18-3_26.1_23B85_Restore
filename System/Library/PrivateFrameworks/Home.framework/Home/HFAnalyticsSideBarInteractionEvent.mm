@interface HFAnalyticsSideBarInteractionEvent
- (HFAnalyticsSideBarInteractionEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsSideBarInteractionEvent

- (HFAnalyticsSideBarInteractionEvent)initWithData:(id)a3
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

  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticstil.isa);
  }

  v21.receiver = self;
  v21.super_class = HFAnalyticsSideBarInteractionEvent;
  v8 = [(HFAnalyticsEvent *)&v21 initWithEventType:37];
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
    v15 = [v4 objectForKeyedSubscript:@"orientation"];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v18 = HFStringForDeviceOrientationSimplified([v17 integerValue]);
      deviceOrientationStr = v8->_deviceOrientationStr;
      v8->_deviceOrientationStr = v18;
    }
  }

  return v8;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsSideBarInteractionEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsSideBarInteractionEvent *)self itemClassName];
  [v4 na_safeSetObject:v5 forKey:@"item"];

  v6 = [(HFAnalyticsSideBarInteractionEvent *)self deviceOrientationStr];
  [v4 na_safeSetObject:v6 forKey:@"orientation"];

  return v4;
}

@end