@interface CFXActionLogging
+ (NSNumber)remainingMemory;
+ (id)CFX_actionLogDictionaryWithEvent:(id)a3 atLocation:(id)a4 withEffectStack:(id)a5;
+ (id)actionLogAsJSONForEvent:(id)a3 atLocation:(id)a4 withEffectStack:(id)a5;
+ (id)actionLogAsStringForEvent:(id)a3 atLocation:(id)a4 withEffectStack:(id)a5;
@end

@implementation CFXActionLogging

+ (NSNumber)remainingMemory
{
  v2 = MEMORY[0x277CCABB0];
  v3 = MEMORY[0x245D22400](a1, a2);

  return [v2 numberWithUnsignedInteger:v3];
}

+ (id)actionLogAsStringForEvent:(id)a3 atLocation:(id)a4 withEffectStack:(id)a5
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 CFX_actionLogDictionaryWithEvent:a3 atLocation:a4 withEffectStack:a5];
  v7 = [v5 stringWithFormat:@"%@", v6];

  return v7;
}

+ (id)actionLogAsJSONForEvent:(id)a3 atLocation:(id)a4 withEffectStack:(id)a5
{
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 CFX_actionLogDictionaryWithEvent:a3 atLocation:a4 withEffectStack:a5];
  v10 = 0;
  v7 = [v5 dataWithJSONObject:v6 options:1 error:&v10];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)CFX_actionLogDictionaryWithEvent:(id)a3 atLocation:(id)a4 withEffectStack:(id)a5
{
  v24 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v25 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = NSStringFromJFXEffectType([v13 type]);
        v15 = [v13 displayName];
        v16 = [v13 effectID];
        if ([v13 type] == 2)
        {
          v17 = v13;
          v18 = [v17 trackingProps];
          v19 = NSStringFromJFXTrackingType([v18 trackingType]);

          v36[0] = @"effectType";
          v36[1] = @"name";
          v37[0] = v14;
          v37[1] = v15;
          v36[2] = @"ID";
          v36[3] = @"track-type";
          v37[2] = v16;
          v37[3] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
          [v8 addObject:v20];
        }

        else
        {
          v34[0] = @"effectType";
          v34[1] = @"name";
          v35[0] = v14;
          v35[1] = v15;
          v34[2] = @"ID";
          v35[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
          [v8 addObject:v17];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  v33[0] = v26;
  v32[0] = @"event";
  v32[1] = @"memoryRemaining";
  v21 = [v24 remainingMemory];
  v33[1] = v21;
  v33[2] = v25;
  v32[2] = @"view";
  v32[3] = @"effectsApplied";
  v33[3] = v8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

  return v22;
}

@end