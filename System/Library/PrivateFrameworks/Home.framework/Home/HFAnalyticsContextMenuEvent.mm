@interface HFAnalyticsContextMenuEvent
- (HFAnalyticsContextMenuEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsContextMenuEvent

- (HFAnalyticsContextMenuEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"contextMenuTitle"];
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
    v8 = [dataCopy objectForKeyedSubscript:@"overrideItemClassName"];
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
      v13 = [dataCopy objectForKeyedSubscript:@"item"];
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

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v7->_processName;
    v7->_processName = processName;

    objc_opt_class();
    v21 = [dataCopy objectForKeyedSubscript:@"sourceViewController"];
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
    v24 = [dataCopy objectForKeyedSubscript:@"sourceViewControllerOverrideClassName"];
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
    v30 = [dataCopy objectForKeyedSubscript:@"dashboardContextType"];
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
    v32 = [dataCopy objectForKeyedSubscript:@"contextMenuTitle"];
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
  payload = [(HFAnalyticsEvent *)&v11 payload];
  v4 = [payload mutableCopy];

  itemClassName = [(HFAnalyticsContextMenuEvent *)self itemClassName];
  [v4 na_safeSetObject:itemClassName forKey:@"item"];

  processName = [(HFAnalyticsContextMenuEvent *)self processName];
  [v4 na_safeSetObject:processName forKey:@"processName"];

  sourceViewControllerClassName = [(HFAnalyticsContextMenuEvent *)self sourceViewControllerClassName];
  [v4 na_safeSetObject:sourceViewControllerClassName forKey:@"sourceViewController"];

  contextType = [(HFAnalyticsContextMenuEvent *)self contextType];
  [v4 na_safeSetObject:contextType forKey:@"dashboardContext"];

  contextMenuTitle = [(HFAnalyticsContextMenuEvent *)self contextMenuTitle];
  [v4 na_safeSetObject:contextMenuTitle forKey:@"contextMenuTitle"];

  [v4 na_safeSetObject:&unk_282524000 forKey:@"homeAppEventCount"];

  return v4;
}

@end