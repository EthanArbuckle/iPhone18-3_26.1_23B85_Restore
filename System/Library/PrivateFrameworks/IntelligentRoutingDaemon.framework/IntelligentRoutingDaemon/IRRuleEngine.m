@interface IRRuleEngine
+ (id)executeRules:(id)a3 withCandiatesContainer:(id)a4 systemStatus:(id)a5 historyEventsContainer:(id)a6 miloPrediction:(id)a7 nearbyDeviceContainer:(id)a8 date:(id)a9;
@end

@implementation IRRuleEngine

+ (id)executeRules:(id)a3 withCandiatesContainer:(id)a4 systemStatus:(id)a5 historyEventsContainer:(id)a6 miloPrediction:(id)a7 nearbyDeviceContainer:(id)a8 date:(id)a9
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v29 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v14;
  obj = [v14 allKeys];
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
        v25 = [v24 executeRuleWithCandiatesContainer:v32 systemStatus:v31 historyContainer:v30 miloPrediction:v15 nearbyDeviceContainer:v16 date:v17];
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