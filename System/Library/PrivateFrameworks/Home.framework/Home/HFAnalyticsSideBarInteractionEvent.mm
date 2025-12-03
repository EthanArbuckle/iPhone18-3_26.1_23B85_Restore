@interface HFAnalyticsSideBarInteractionEvent
- (HFAnalyticsSideBarInteractionEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsSideBarInteractionEvent

- (HFAnalyticsSideBarInteractionEvent)initWithData:(id)data
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
    v9 = [dataCopy objectForKeyedSubscript:@"overrideItemClassName"];
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
    v15 = [dataCopy objectForKeyedSubscript:@"orientation"];
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
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  itemClassName = [(HFAnalyticsSideBarInteractionEvent *)self itemClassName];
  [v4 na_safeSetObject:itemClassName forKey:@"item"];

  deviceOrientationStr = [(HFAnalyticsSideBarInteractionEvent *)self deviceOrientationStr];
  [v4 na_safeSetObject:deviceOrientationStr forKey:@"orientation"];

  return v4;
}

@end