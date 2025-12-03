@interface HUAvailableRelatedTriggerItemModuleContext
- (HUAvailableRelatedTriggerItemModuleContext)init;
- (HUAvailableRelatedTriggerItemModuleContext)initWithContext:(id)context;
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

- (HUAvailableRelatedTriggerItemModuleContext)initWithContext:(id)context
{
  contextCopy = context;
  v5 = [(HUAvailableRelatedTriggerItemModuleContext *)self init];
  -[HUAvailableRelatedTriggerItemModuleContext setShowsIcons:](v5, "setShowsIcons:", [contextCopy showsIcons]);
  -[HUAvailableRelatedTriggerItemModuleContext setHidesAddAutomationItem:](v5, "setHidesAddAutomationItem:", [contextCopy hidesAddAutomationItem]);
  -[HUAvailableRelatedTriggerItemModuleContext setCommitsAutomatically:](v5, "setCommitsAutomatically:", [contextCopy commitsAutomatically]);
  -[HUAvailableRelatedTriggerItemModuleContext setItemsAreEditable:](v5, "setItemsAreEditable:", [contextCopy itemsAreEditable]);
  -[HUAvailableRelatedTriggerItemModuleContext setErrorHandlingStrategy:](v5, "setErrorHandlingStrategy:", [contextCopy errorHandlingStrategy]);
  -[HUAvailableRelatedTriggerItemModuleContext setHidesCustomTriggers:](v5, "setHidesCustomTriggers:", [contextCopy hidesCustomTriggers]);
  analyticsPresentationContext = [contextCopy analyticsPresentationContext];
  [(HUAvailableRelatedTriggerItemModuleContext *)v5 setAnalyticsPresentationContext:analyticsPresentationContext];

  defaultActiveValue = [contextCopy defaultActiveValue];
  [(HUAvailableRelatedTriggerItemModuleContext *)v5 setDefaultActiveValue:defaultActiveValue];

  -[HUAvailableRelatedTriggerItemModuleContext setEngineOptions:](v5, "setEngineOptions:", [contextCopy engineOptions]);
  showNaturalLightingItem = [contextCopy showNaturalLightingItem];

  [(HUAvailableRelatedTriggerItemModuleContext *)v5 setShowNaturalLightingItem:showNaturalLightingItem];
  return v5;
}

@end