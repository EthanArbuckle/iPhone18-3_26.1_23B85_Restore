@interface HFAnalyticsTileInteractionEvent
+ (unint64_t)_numberOfRepresentedHomeKitObjectsForItem:(id)item;
- (HFAnalyticsTileInteractionEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsTileInteractionEvent

- (HFAnalyticsTileInteractionEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"interactionType"];
  integerValue = [v5 integerValue];

  if (!integerValue)
  {
    NSLog(&cfstr_Hfanalyticstil_0.isa);
  }

  objc_opt_class();
  v7 = [dataCopy objectForKeyedSubscript:@"item"];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    NSLog(&cfstr_Hfanalyticstil.isa);
  }

  objc_opt_class();
  v10 = [dataCopy objectForKeyedSubscript:@"tileInteractionArea"];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  objc_opt_class();
  v13 = [dataCopy objectForKeyedSubscript:@"sourceViewController"];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v37.receiver = self;
  v37.super_class = HFAnalyticsTileInteractionEvent;
  v16 = [(HFAnalyticsEvent *)&v37 initWithEventType:13];
  v17 = v16;
  if (v16)
  {
    v16->_interactionType = integerValue;
    v18 = [dataCopy objectForKeyedSubscript:@"room"];
    v17->_isRoomDashboard = v18 != 0;

    objc_opt_class();
    v17->_isActionSetItem = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    v17->_isCameraItem = objc_opt_isKindOfClass() & 1;
    v17->_isServiceLikeItem = [v9 conformsToProtocol:&unk_28252AE98];
    objc_opt_class();
    v17->_isStatusItem = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    v19 = [dataCopy objectForKeyedSubscript:@"overrideItemClassName"];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if ([v21 length])
    {
      v22 = v21;
    }

    else
    {
      v24 = objc_opt_class();
      v22 = NSStringFromClass(v24);
    }

    itemClassName = v17->_itemClassName;
    v17->_itemClassName = v22;

    latestResults = [v9 latestResults];
    v26 = [latestResults objectForKeyedSubscript:@"state"];
    v17->_itemPrimaryState = [v26 integerValue];

    latestResults2 = [v9 latestResults];
    v28 = [latestResults2 objectForKeyedSubscript:@"priority"];
    v17->_itemPriority = [v28 integerValue];

    v17->_numberOfRepresentedHomeKitObjects = [objc_opt_class() _numberOfRepresentedHomeKitObjectsForItem:v9];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v17->_processName;
    v17->_processName = processName;

    if (v15)
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
    }

    else
    {
      v33 = @"nil";
    }

    objc_storeStrong(&v17->_sourceViewControllerClassName, v33);
    if (v15)
    {
    }

    objc_storeStrong(&v17->_tileInteractionArea, v11);
    objc_opt_class();
    v34 = [dataCopy objectForKeyedSubscript:@"dashboardContextType"];
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    objc_storeStrong(&v17->_contextType, v35);
  }

  return v17;
}

- (id)payload
{
  v21.receiver = self;
  v21.super_class = HFAnalyticsTileInteractionEvent;
  payload = [(HFAnalyticsEvent *)&v21 payload];
  v4 = [payload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsTileInteractionEvent interactionType](self, "interactionType")}];
  [v4 setObject:v5 forKeyedSubscript:@"interactionType"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsTileInteractionEvent isRoomDashboard](self, "isRoomDashboard")}];
  [v4 setObject:v6 forKeyedSubscript:@"isRoomDashboard"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsTileInteractionEvent isActionSetItem](self, "isActionSetItem")}];
  [v4 setObject:v7 forKeyedSubscript:@"isActionSetItem"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsTileInteractionEvent isCameraItem](self, "isCameraItem")}];
  [v4 setObject:v8 forKeyedSubscript:@"isCameraItem"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsTileInteractionEvent isServiceLikeItem](self, "isServiceLikeItem")}];
  [v4 setObject:v9 forKeyedSubscript:@"isServiceLikeItem"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsTileInteractionEvent isStatusItem](self, "isStatusItem")}];
  [v4 setObject:v10 forKeyedSubscript:@"isStatusItem"];

  itemClassName = [(HFAnalyticsTileInteractionEvent *)self itemClassName];
  [v4 setObject:itemClassName forKeyedSubscript:@"item"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsTileInteractionEvent numberOfRepresentedHomeKitObjects](self, "numberOfRepresentedHomeKitObjects")}];
  [v4 setObject:v12 forKeyedSubscript:@"numberOfRepresentedHomeKitObjects"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFAnalyticsTileInteractionEvent itemPrimaryState](self, "itemPrimaryState")}];
  [v4 setObject:v13 forKeyedSubscript:@"primaryState"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFAnalyticsTileInteractionEvent itemPriority](self, "itemPriority")}];
  [v4 setObject:v14 forKeyedSubscript:@"priority"];

  processName = [(HFAnalyticsTileInteractionEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  sourceViewControllerClassName = [(HFAnalyticsTileInteractionEvent *)self sourceViewControllerClassName];
  [v4 setObject:sourceViewControllerClassName forKeyedSubscript:@"sourceViewController"];

  tileIsEditing = [(HFAnalyticsTileInteractionEvent *)self tileIsEditing];
  [v4 setObject:tileIsEditing forKeyedSubscript:@"tileIsEditing"];

  tileInteractionArea = [(HFAnalyticsTileInteractionEvent *)self tileInteractionArea];
  [v4 setObject:tileInteractionArea forKeyedSubscript:@"tileInteractionArea"];

  contextType = [(HFAnalyticsTileInteractionEvent *)self contextType];
  [v4 setObject:contextType forKeyedSubscript:@"dashboardContext"];

  [v4 setObject:&unk_2825248E8 forKeyedSubscript:@"homeAppEventCount"];

  return v4;
}

+ (unint64_t)_numberOfRepresentedHomeKitObjectsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResults = [itemCopy latestResults];

    v5 = [latestResults objectForKeyedSubscript:@"representedHomeKitObjects"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] set];
    }

    v10 = v7;

    v11 = [v10 count];
    return v11;
  }

  else
  {
    v8 = [itemCopy conformsToProtocol:&unk_28252A8F8];

    return v8;
  }
}

@end