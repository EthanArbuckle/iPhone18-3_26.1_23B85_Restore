@interface CFXActionLogging
+ (NSNumber)remainingMemory;
+ (id)CFX_actionLogDictionaryWithEvent:(id)event atLocation:(id)location withEffectStack:(id)stack;
+ (id)actionLogAsJSONForEvent:(id)event atLocation:(id)location withEffectStack:(id)stack;
+ (id)actionLogAsStringForEvent:(id)event atLocation:(id)location withEffectStack:(id)stack;
@end

@implementation CFXActionLogging

+ (NSNumber)remainingMemory
{
  v2 = MEMORY[0x277CCABB0];
  v3 = MEMORY[0x245D22400](self, a2);

  return [v2 numberWithUnsignedInteger:v3];
}

+ (id)actionLogAsStringForEvent:(id)event atLocation:(id)location withEffectStack:(id)stack
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [self CFX_actionLogDictionaryWithEvent:event atLocation:location withEffectStack:stack];
  v7 = [v5 stringWithFormat:@"%@", v6];

  return v7;
}

+ (id)actionLogAsJSONForEvent:(id)event atLocation:(id)location withEffectStack:(id)stack
{
  v5 = MEMORY[0x277CCAAA0];
  v6 = [self CFX_actionLogDictionaryWithEvent:event atLocation:location withEffectStack:stack];
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

+ (id)CFX_actionLogDictionaryWithEvent:(id)event atLocation:(id)location withEffectStack:(id)stack
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  locationCopy = location;
  stackCopy = stack;
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = stackCopy;
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
        displayName = [v13 displayName];
        effectID = [v13 effectID];
        if ([v13 type] == 2)
        {
          v17 = v13;
          trackingProps = [v17 trackingProps];
          v19 = NSStringFromJFXTrackingType([trackingProps trackingType]);

          v36[0] = @"effectType";
          v36[1] = @"name";
          v37[0] = v14;
          v37[1] = displayName;
          v36[2] = @"ID";
          v36[3] = @"track-type";
          v37[2] = effectID;
          v37[3] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
          [array addObject:v20];
        }

        else
        {
          v34[0] = @"effectType";
          v34[1] = @"name";
          v35[0] = v14;
          v35[1] = displayName;
          v34[2] = @"ID";
          v35[2] = effectID;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
          [array addObject:v17];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  v33[0] = eventCopy;
  v32[0] = @"event";
  v32[1] = @"memoryRemaining";
  remainingMemory = [selfCopy remainingMemory];
  v33[1] = remainingMemory;
  v33[2] = locationCopy;
  v32[2] = @"view";
  v32[3] = @"effectsApplied";
  v33[3] = array;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

  return v22;
}

@end