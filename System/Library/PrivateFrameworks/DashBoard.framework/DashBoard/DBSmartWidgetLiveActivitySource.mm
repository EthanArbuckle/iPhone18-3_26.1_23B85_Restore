@interface DBSmartWidgetLiveActivitySource
+ (id)predictionClasses;
+ (void)load;
- (DBSmartWidgetLiveActivitySource)initWithDelegate:(id)delegate resourceProvider:(id)provider;
- (id)freshPredictions;
- (id)liveActivityBundleIdentifierWithDescriptor:(id)descriptor;
- (id)liveActivityIdentifierWithDescriptor:(id)descriptor;
- (id)liveActivityNameWithDescriptor:(id)descriptor;
- (void)dealloc;
- (void)didUpdateAlertingLiveActivityWithActivityDescriptor:(id)descriptor;
- (void)didUpdateLiveActivitiesWithActivityDescriptors:(id)descriptors;
- (void)disabledLiveActivities;
@end

@implementation DBSmartWidgetLiveActivitySource

- (id)freshPredictions
{
  if ([(NSArray *)self->_activityPredictions count])
  {
    v3 = self->_activityPredictions;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___DBSmartWidgetLiveActivitySource;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)predictionClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (DBSmartWidgetLiveActivitySource)initWithDelegate:(id)delegate resourceProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = DBSmartWidgetLiveActivitySource;
  v7 = [(DBSmartWidgetSource *)&v13 initWithDelegate:delegate resourceProvider:providerCopy];
  v8 = v7;
  if (v7)
  {
    activityPredictions = v7->_activityPredictions;
    v7->_activityPredictions = MEMORY[0x277CBEBF8];

    liveActivityMonitor = [providerCopy liveActivityMonitor];
    liveActivityMonitor = v8->_liveActivityMonitor;
    v8->_liveActivityMonitor = liveActivityMonitor;

    [(DBLiveActivityMonitor *)v8->_liveActivityMonitor addObserver:v8];
  }

  return v8;
}

- (void)dealloc
{
  [(DBLiveActivityMonitor *)self->_liveActivityMonitor removeObserver:self];
  v3.receiver = self;
  v3.super_class = DBSmartWidgetLiveActivitySource;
  [(DBSmartWidgetLiveActivitySource *)&v3 dealloc];
}

- (void)disabledLiveActivities
{
  activityPredictions = self->_activityPredictions;
  self->_activityPredictions = MEMORY[0x277CBEBF8];

  [(DBSmartWidgetSource *)self refreshPredictions];
}

- (void)didUpdateLiveActivitiesWithActivityDescriptors:(id)descriptors
{
  v20 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = descriptorsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [DBSmartWidgetLiveActivityPrediction alloc];
        v13 = [(DBSmartWidgetLiveActivityPrediction *)v12 initWithActivityDescriptor:v11 delegate:self, v15];
        [(NSArray *)v5 insertObject:v13 atIndex:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  activityPredictions = self->_activityPredictions;
  self->_activityPredictions = v5;

  [(DBSmartWidgetSource *)self refreshPredictions];
}

- (void)didUpdateAlertingLiveActivityWithActivityDescriptor:(id)descriptor
{
  v24 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_activityPredictions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

LABEL_13:
    v15 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DBSmartWidgetLiveActivitySource didUpdateAlertingLiveActivityWithActivityDescriptor:v15];
    }

    v16 = [(NSArray *)self->_activityPredictions mutableCopy];
    v17 = [[DBSmartWidgetLiveActivityPrediction alloc] initWithActivityDescriptor:descriptorCopy delegate:self];
    [(DBSmartWidgetLiveActivityPrediction *)v17 setAlertingWidget:1];
    [(NSArray *)v16 insertObject:v17 atIndex:0];
    activityPredictions = self->_activityPredictions;
    self->_activityPredictions = v16;

    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v20;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      activityDescriptor = [v11 activityDescriptor];
      v13 = activityDescriptor;
      if (activityDescriptor)
      {
        v14 = [activityDescriptor isEqualToData:descriptorCopy];
        v8 |= v14;
        [v11 setAlertingWidget:v14];
      }
    }

    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  [(DBSmartWidgetSource *)self refreshPredictions];
}

- (id)liveActivityNameWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  liveActivityMonitor = [(DBSmartWidgetLiveActivitySource *)self liveActivityMonitor];
  v6 = [liveActivityMonitor liveActivityNameWith:descriptorCopy];

  return v6;
}

- (id)liveActivityBundleIdentifierWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  liveActivityMonitor = [(DBSmartWidgetLiveActivitySource *)self liveActivityMonitor];
  v6 = [liveActivityMonitor liveActivityBundleIdentiferWith:descriptorCopy];

  return v6;
}

- (id)liveActivityIdentifierWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  liveActivityMonitor = [(DBSmartWidgetLiveActivitySource *)self liveActivityMonitor];
  v6 = [liveActivityMonitor liveActivityIdentifierWith:descriptorCopy];

  return v6;
}

@end