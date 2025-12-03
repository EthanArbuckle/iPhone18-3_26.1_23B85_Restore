@interface HFAnalyticsGeneralButtonTapEvent
- (HFAnalyticsGeneralButtonTapEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsGeneralButtonTapEvent

- (HFAnalyticsGeneralButtonTapEvent)initWithData:(id)data
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = HFAnalyticsGeneralButtonTapEvent;
  v5 = [(HFAnalyticsEvent *)&v17 initWithEventType:43];
  if (v5)
  {
    objc_opt_class();
    v6 = [dataCopy objectForKeyedSubscript:@"item"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_buttonTitle, v7);

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v5->_processName;
    v5->_processName = processName;

    objc_opt_class();
    v11 = [dataCopy objectForKeyedSubscript:@"sourceViewController"];
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
  payload = [(HFAnalyticsEvent *)&v9 payload];
  v4 = [payload mutableCopy];

  buttonTitle = [(HFAnalyticsGeneralButtonTapEvent *)self buttonTitle];
  [v4 na_safeSetObject:buttonTitle forKey:@"item"];

  processName = [(HFAnalyticsGeneralButtonTapEvent *)self processName];
  [v4 na_safeSetObject:processName forKey:@"processName"];

  sourceViewControllerClassName = [(HFAnalyticsGeneralButtonTapEvent *)self sourceViewControllerClassName];
  [v4 na_safeSetObject:sourceViewControllerClassName forKey:@"sourceViewController"];

  [v4 na_safeSetObject:&unk_2825249A8 forKey:@"homeAppEventCount"];

  return v4;
}

@end