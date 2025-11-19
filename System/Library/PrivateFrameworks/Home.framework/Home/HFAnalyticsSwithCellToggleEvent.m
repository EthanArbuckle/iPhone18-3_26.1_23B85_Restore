@interface HFAnalyticsSwithCellToggleEvent
- (HFAnalyticsSwithCellToggleEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsSwithCellToggleEvent

- (HFAnalyticsSwithCellToggleEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"switchCellIsOn"];
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
    NSLog(&cfstr_Hfanalyticsdat_2.isa);
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"sourceViewController"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v34.receiver = self;
  v34.super_class = HFAnalyticsSwithCellToggleEvent;
  v11 = [(HFAnalyticsEvent *)&v34 initWithEventType:40];
  if (v11)
  {
    objc_opt_class();
    v12 = [v4 objectForKeyedSubscript:@"overrideItemClassName"];
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
      itemClassName = v11->_itemClassName;
      v11->_itemClassName = v15;
    }

    else
    {
      objc_opt_class();
      v17 = [v4 objectForKeyedSubscript:@"item"];
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      itemClassName = v11->_itemClassName;
      v11->_itemClassName = v21;
    }

    v22 = [v4 objectForKeyedSubscript:@"switchCellToggleTitle"];
    toggleTitle = v11->_toggleTitle;
    v11->_toggleTitle = v22;

    objc_opt_class();
    v24 = [v4 objectForKeyedSubscript:@"sourceViewControllerOverrideClassName"];
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if ([v26 length])
    {
      v27 = v26;
      sourceViewControllerClassName = v11->_sourceViewControllerClassName;
      v11->_sourceViewControllerClassName = v27;
    }

    else
    {
      if (v10)
      {
        v29 = objc_opt_class();
        sourceViewControllerClassName = NSStringFromClass(v29);
      }

      else
      {
        sourceViewControllerClassName = @"nil";
      }

      objc_storeStrong(&v11->_sourceViewControllerClassName, sourceViewControllerClassName);
      if (!v10)
      {
        goto LABEL_29;
      }
    }

LABEL_29:
    objc_storeStrong(&v11->_isOn, v6);
    v30 = [MEMORY[0x277CCAC38] processInfo];
    v31 = [v30 processName];
    processName = v11->_processName;
    v11->_processName = v31;
  }

  return v11;
}

- (id)payload
{
  v11.receiver = self;
  v11.super_class = HFAnalyticsSwithCellToggleEvent;
  v3 = [(HFAnalyticsEvent *)&v11 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsSwithCellToggleEvent *)self itemClassName];
  [v4 na_safeSetObject:v5 forKey:@"item"];

  v6 = [(HFAnalyticsSwithCellToggleEvent *)self toggleTitle];
  [v4 na_safeSetObject:v6 forKey:@"switchCellToggleTitle"];

  v7 = [(HFAnalyticsSwithCellToggleEvent *)self sourceViewControllerClassName];
  [v4 na_safeSetObject:v7 forKey:@"sourceViewController"];

  v8 = [(HFAnalyticsSwithCellToggleEvent *)self isOn];
  [v4 na_safeSetObject:v8 forKey:@"switchCellIsOn"];

  v9 = [(HFAnalyticsSwithCellToggleEvent *)self processName];
  [v4 na_safeSetObject:v9 forKey:@"processName"];

  [v4 na_safeSetObject:&unk_282524198 forKey:@"homeAppEventCount"];

  return v4;
}

@end