@interface HFAnalyticsContextMenuEvent
- (HFAnalyticsContextMenuEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsContextMenuEvent

- (HFAnalyticsContextMenuEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"contextMenuTitle"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsdat_1.isa);
  }

  v35.receiver = self;
  v35.super_class = HFAnalyticsContextMenuEvent;
  v7 = [(HFAnalyticsEvent *)&v35 initWithEventType:36];
  if (v7)
  {
    objc_opt_class();
    v8 = [v4 objectForKeyedSubscript:@"overrideItemClassName"];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if ([v10 length])
    {
      v11 = v10;
      itemClassName = v7->_itemClassName;
      v7->_itemClassName = v11;
    }

    else
    {
      objc_opt_class();
      v13 = [v4 objectForKeyedSubscript:@"item"];
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      itemClassName = v7->_itemClassName;
      v7->_itemClassName = v17;
    }

    v18 = [MEMORY[0x277CCAC38] processInfo];
    v19 = [v18 processName];
    processName = v7->_processName;
    v7->_processName = v19;

    objc_opt_class();
    v21 = [v4 objectForKeyedSubscript:@"sourceViewController"];
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

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
      sourceViewControllerClassName = v7->_sourceViewControllerClassName;
      v7->_sourceViewControllerClassName = v27;
    }

    else
    {
      if (v23)
      {
        v29 = objc_opt_class();
        sourceViewControllerClassName = NSStringFromClass(v29);
      }

      else
      {
        sourceViewControllerClassName = @"nil";
      }

      objc_storeStrong(&v7->_sourceViewControllerClassName, sourceViewControllerClassName);
      if (!v23)
      {
        goto LABEL_29;
      }
    }

LABEL_29:
    objc_opt_class();
    v30 = [v4 objectForKeyedSubscript:@"dashboardContextType"];
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    objc_storeStrong(&v7->_contextType, v31);

    objc_opt_class();
    v32 = [v4 objectForKeyedSubscript:@"contextMenuTitle"];
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    objc_storeStrong(&v7->_contextMenuTitle, v33);
  }

  return v7;
}

- (id)payload
{
  v11.receiver = self;
  v11.super_class = HFAnalyticsContextMenuEvent;
  v3 = [(HFAnalyticsEvent *)&v11 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsContextMenuEvent *)self itemClassName];
  [v4 na_safeSetObject:v5 forKey:@"item"];

  v6 = [(HFAnalyticsContextMenuEvent *)self processName];
  [v4 na_safeSetObject:v6 forKey:@"processName"];

  v7 = [(HFAnalyticsContextMenuEvent *)self sourceViewControllerClassName];
  [v4 na_safeSetObject:v7 forKey:@"sourceViewController"];

  v8 = [(HFAnalyticsContextMenuEvent *)self contextType];
  [v4 na_safeSetObject:v8 forKey:@"dashboardContext"];

  v9 = [(HFAnalyticsContextMenuEvent *)self contextMenuTitle];
  [v4 na_safeSetObject:v9 forKey:@"contextMenuTitle"];

  [v4 na_safeSetObject:&unk_282524000 forKey:@"homeAppEventCount"];

  return v4;
}

@end