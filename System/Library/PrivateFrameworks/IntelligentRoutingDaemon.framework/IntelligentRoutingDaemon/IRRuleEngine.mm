@interface IRRuleEngine
+ (id)executeRules:(id)rules withCandiatesContainer:(id)container systemStatus:(id)status historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer date:(id)date;
@end

@implementation IRRuleEngine

+ (id)executeRules:(id)rules withCandiatesContainer:(id)container systemStatus:(id)status historyEventsContainer:(id)eventsContainer miloPrediction:(id)prediction nearbyDeviceContainer:(id)deviceContainer date:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  containerCopy = container;
  statusCopy = status;
  eventsContainerCopy = eventsContainer;
  predictionCopy = prediction;
  deviceContainerCopy = deviceContainer;
  dateCopy = date;
  v29 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = rulesCopy;
  obj = [rulesCopy allKeys];
  v19 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        v24 = [v18 objectForKey:v23];
        v25 = [v24 executeRuleWithCandiatesContainer:containerCopy systemStatus:statusCopy historyContainer:eventsContainerCopy miloPrediction:predictionCopy nearbyDeviceContainer:deviceContainerCopy date:dateCopy];
        [v29 setObject:v25 forKey:v23];
      }

      v20 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v20);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v29;
}

@end