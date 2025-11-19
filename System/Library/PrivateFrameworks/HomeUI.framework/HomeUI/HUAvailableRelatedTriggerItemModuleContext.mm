@interface HUAvailableRelatedTriggerItemModuleContext
- (HUAvailableRelatedTriggerItemModuleContext)init;
- (HUAvailableRelatedTriggerItemModuleContext)initWithContext:(id)a3;
@end

@implementation HUAvailableRelatedTriggerItemModuleContext

- (HUAvailableRelatedTriggerItemModuleContext)init
{
  v5.receiver = self;
  v5.super_class = HUAvailableRelatedTriggerItemModuleContext;
  v2 = [(HUAvailableRelatedTriggerItemModuleContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUAvailableRelatedTriggerItemModuleContext *)v2 setShowsIcons:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setHidesAddAutomationItem:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setCommitsAutomatically:1];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setItemsAreEditable:1];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setErrorHandlingStrategy:1];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setHidesCustomTriggers:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setAnalyticsPresentationContext:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setDefaultActiveValue:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setEngineOptions:83];
    [(HUAvailableRelatedTriggerItemModuleContext *)v3 setShowNaturalLightingItem:0];
  }

  return v3;
}

- (HUAvailableRelatedTriggerItemModuleContext)initWithContext:(id)a3
{
  v4 = a3;
  v5 = [(HUAvailableRelatedTriggerItemModuleContext *)self init];
  -[HUAvailableRelatedTriggerItemModuleContext setShowsIcons:](v5, "setShowsIcons:", [v4 showsIcons]);
  -[HUAvailableRelatedTriggerItemModuleContext setHidesAddAutomationItem:](v5, "setHidesAddAutomationItem:", [v4 hidesAddAutomationItem]);
  -[HUAvailableRelatedTriggerItemModuleContext setCommitsAutomatically:](v5, "setCommitsAutomatically:", [v4 commitsAutomatically]);
  -[HUAvailableRelatedTriggerItemModuleContext setItemsAreEditable:](v5, "setItemsAreEditable:", [v4 itemsAreEditable]);
  -[HUAvailableRelatedTriggerItemModuleContext setErrorHandlingStrategy:](v5, "setErrorHandlingStrategy:", [v4 errorHandlingStrategy]);
  -[HUAvailableRelatedTriggerItemModuleContext setHidesCustomTriggers:](v5, "setHidesCustomTriggers:", [v4 hidesCustomTriggers]);
  v6 = [v4 analyticsPresentationContext];
  [(HUAvailableRelatedTriggerItemModuleContext *)v5 setAnalyticsPresentationContext:v6];

  v7 = [v4 defaultActiveValue];
  [(HUAvailableRelatedTriggerItemModuleContext *)v5 setDefaultActiveValue:v7];

  -[HUAvailableRelatedTriggerItemModuleContext setEngineOptions:](v5, "setEngineOptions:", [v4 engineOptions]);
  v8 = [v4 showNaturalLightingItem];

  [(HUAvailableRelatedTriggerItemModuleContext *)v5 setShowNaturalLightingItem:v8];
  return v5;
}

@end