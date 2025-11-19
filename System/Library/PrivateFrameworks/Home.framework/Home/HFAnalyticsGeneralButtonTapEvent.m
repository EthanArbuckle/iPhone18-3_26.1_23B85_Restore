@interface HFAnalyticsGeneralButtonTapEvent
- (HFAnalyticsGeneralButtonTapEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsGeneralButtonTapEvent

- (HFAnalyticsGeneralButtonTapEvent)initWithData:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HFAnalyticsGeneralButtonTapEvent;
  v5 = [(HFAnalyticsEvent *)&v17 initWithEventType:43];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"item"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_buttonTitle, v7);

    v8 = [MEMORY[0x277CCAC38] processInfo];
    v9 = [v8 processName];
    processName = v5->_processName;
    v5->_processName = v9;

    objc_opt_class();
    v11 = [v4 objectForKeyedSubscript:@"sourceViewController"];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
    }

    else
    {
      v15 = @"nil";
    }

    objc_storeStrong(&v5->_sourceViewControllerClassName, v15);
    if (v13)
    {
    }
  }

  return v5;
}

- (id)payload
{
  v9.receiver = self;
  v9.super_class = HFAnalyticsGeneralButtonTapEvent;
  v3 = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsGeneralButtonTapEvent *)self buttonTitle];
  [v4 na_safeSetObject:v5 forKey:@"item"];

  v6 = [(HFAnalyticsGeneralButtonTapEvent *)self processName];
  [v4 na_safeSetObject:v6 forKey:@"processName"];

  v7 = [(HFAnalyticsGeneralButtonTapEvent *)self sourceViewControllerClassName];
  [v4 na_safeSetObject:v7 forKey:@"sourceViewController"];

  [v4 na_safeSetObject:&unk_2825249A8 forKey:@"homeAppEventCount"];

  return v4;
}

@end