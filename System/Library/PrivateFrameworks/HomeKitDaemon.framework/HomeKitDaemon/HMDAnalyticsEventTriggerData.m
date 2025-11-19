@interface HMDAnalyticsEventTriggerData
- (HMDAnalyticsEventTriggerData)initWithEventTrigger:(id)a3 isAdding:(BOOL)a4;
@end

@implementation HMDAnalyticsEventTriggerData

- (HMDAnalyticsEventTriggerData)initWithEventTrigger:(id)a3 isAdding:(BOOL)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31.receiver = self;
  v31.super_class = HMDAnalyticsEventTriggerData;
  v7 = [(HMDAnalyticsEventTriggerData *)&v31 init];
  if (v7)
  {
    v7->_executeOnce = [v6 executeOnce];
    v8 = MEMORY[0x277CBEB18];
    v9 = [v6 events];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v6 events];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v27 + 1) + 8 * v15) analyticsTriggerEventData];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
    events = v7->_events;
    v7->_events = v17;

    v7->_containsRecurrences = [v6 containsRecurrences];
    v19 = [v6 evaluationCondition];

    if (v19)
    {
      v20 = [v6 predicateUtilities];
      v21 = [v6 evaluationCondition];
      v22 = [v20 generateAnalyticsData:v21];
      predicate = v7->_predicate;
      v7->_predicate = v22;
    }

    if (!a4)
    {
      v7->_activationType = [v6 activationType];
      v7->_activationState = [v6 activationState];
    }

    v24 = v7;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

@end