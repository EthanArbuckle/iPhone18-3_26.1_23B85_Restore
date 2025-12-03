@interface JEImpressionDurationFilteringTreatmentAction
- (JEImpressionDurationFilteringTreatmentAction)initWithField:(id)field configuration:(id)configuration;
- (id)filteredDurationArray:(id)array;
- (id)filteredViewedInfoDetailed:(id)detailed;
- (id)performAction:(id)action context:(id)context;
- (id)updatedImpression:(id)impression;
@end

@implementation JEImpressionDurationFilteringTreatmentAction

- (JEImpressionDurationFilteringTreatmentAction)initWithField:(id)field configuration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = JEImpressionDurationFilteringTreatmentAction;
  v7 = [(JETreatmentAction *)&v15 initWithField:field configuration:configurationCopy];
  if (!v7)
  {
LABEL_12:
    v9 = v7;
    goto LABEL_13;
  }

  v8 = [configurationCopy objectForKeyedSubscript:@"threshold"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v7->_durationThreshold = [(JEImpressionDurationFilteringTreatmentAction *)v9 longValue];
    v10 = [configurationCopy objectForKeyedSubscript:@"filters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v11];
      filters = v7->_filters;
      v7->_filters = v12;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v9;
}

- (id)performAction:(id)action context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = JEImpressionDurationFilteringTreatmentAction;
  v5 = [(JETreatmentAction *)&v21 performAction:action context:context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          filters = self->_filters;
          if (filters && ![(NSPredicate *)filters evaluateWithObject:*(*(&v17 + 1) + 8 * i), v17])
          {
            [v7 addObject:v13];
          }

          else
          {
            v15 = [(JEImpressionDurationFilteringTreatmentAction *)self updatedImpression:v13, v17];
            if (v15)
            {
              [v7 addObject:v15];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)updatedImpression:(id)impression
{
  impressionCopy = impression;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:impressionCopy];
  v6 = [impressionCopy objectForKeyedSubscript:@"viewedInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(JEImpressionDurationFilteringTreatmentAction *)self filteredDurationArray:v6];
    [v5 setObject:v7 forKeyedSubscript:@"viewedInfo"];
  }

  v8 = [impressionCopy objectForKeyedSubscript:@"viewedInfoDetailed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(JEImpressionDurationFilteringTreatmentAction *)self filteredViewedInfoDetailed:v8];
    [v5 setObject:v9 forKeyedSubscript:@"viewedInfoDetailed"];
  }

  v10 = [v5 objectForKeyedSubscript:@"viewedInfo"];
  if ([v10 count])
  {

LABEL_8:
    v14 = v5;
    goto LABEL_9;
  }

  v11 = [v5 objectForKeyedSubscript:@"viewedInfoDetailed"];
  allKeys = [v11 allKeys];
  v13 = [allKeys count];

  if (v13)
  {
    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)filteredViewedInfoDetailed:(id)detailed
{
  v20 = *MEMORY[0x1E69E9840];
  detailedCopy = detailed;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:detailedCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [detailedCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [detailedCopy objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(JEImpressionDurationFilteringTreatmentAction *)self filteredDurationArray:v11];
          if ([v12 count])
          {
            [v4 setObject:v12 forKeyedSubscript:v10];
          }

          else
          {
            [v4 removeObjectForKey:v10];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)filteredDurationArray:(id)array
{
  v3 = MEMORY[0x1E696AE18];
  durationThreshold = self->_durationThreshold;
  arrayCopy = array;
  durationThreshold = [v3 predicateWithFormat:@"d >= %ld", durationThreshold];
  v7 = [arrayCopy filteredArrayUsingPredicate:durationThreshold];

  return v7;
}

@end