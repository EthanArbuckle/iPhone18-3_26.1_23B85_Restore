@interface MTFinalValidationFilter
- (id)apply:(id)apply;
- (void)validateFields:(id)fields;
@end

@implementation MTFinalValidationFilter

- (void)validateFields:(id)fields
{
  v39 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  allKeys = [fieldsCopy allKeys];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = MTConfigurationError(108, @"The created metricsData contains a invalid field name %@", v10, v11, v12, v13, v14, v15, v9);
          [fieldsCopy removeObjectForKey:v9];
        }

        v17 = [fieldsCopy objectForKeyedSubscript:v9];
        if (([v17 conformsToProtocol:&unk_286A4D9F8] & 1) == 0)
        {
          v18 = objc_opt_class();
          v25 = MTConfigurationError(108, @"The created metricsData value type '%@' for field name '%@' does not conform to NSCoding protocol", v19, v20, v21, v22, v23, v24, v18);
          [fieldsCopy removeObjectForKey:v9];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if (([MEMORY[0x277CCAAA0] isValidJSONObject:v17] & 1) == 0)
          {
            v32 = MTConfigurationError(108, @"The created metricsData value for field name %@ can't be serialized", v26, v27, v28, v29, v30, v31, v9);
            [fieldsCopy removeObjectForKey:v9];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)apply:(id)apply
{
  v21[2] = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  sources = [config sources];

  if (applyCopy && sources)
  {
    v21[0] = sources;
    v21[1] = applyCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v15 = [MTPromise promiseWithAll:v14];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __33__MTFinalValidationFilter_apply___block_invoke;
    v20[3] = &unk_2798CD3E0;
    v20[4] = self;
    v16 = [v15 thenWithBlock:v20];
  }

  else
  {
    v17 = MTError(301, 0, v8, v9, v10, v11, v12, v13, v20[0]);
    v16 = [MTPromise promiseWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

id __33__MTFinalValidationFilter_apply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [v5 objectForKeyedSubscript:@"eventType"];
  v7 = [*(a1 + 32) metricsKit];
  v8 = [v7 config];
  v9 = [v8 metricsDisabledOrDenylistedEvent:v6 sources:v4];

  if (v9)
  {
    v16 = MTError(300, @"Metrics collection has been disabled or the event type %@ has been denylisted.", v10, v11, v12, v13, v14, v15, v6);
    v17 = [MTPromise promiseWithError:v16];
  }

  else
  {
    v16 = [v5 mutableCopy];
    v18 = [*(a1 + 32) metricsKit];
    v19 = [v18 config];
    [v19 removeDenylistedFields:v16 sources:v4];

    if ([*(a1 + 32) shouldApplyDeRes])
    {
      v20 = [*(a1 + 32) metricsKit];
      v21 = [v20 config];
      [v21 applyDeRes:v16 sources:v4];

      [v16 mt_removeNaNValues];
    }

    [*(a1 + 32) validateFields:v16];
    if ([v16 count])
    {
      v28 = [v16 copy];
      [MTPromise promiseWithResult:v28];
    }

    else
    {
      v28 = MTError(302, @"Event data is empty because all fields have been denylisted.", v22, v23, v24, v25, v26, v27, v30);
      [MTPromise promiseWithError:v28];
    }
    v17 = ;
  }

  return v17;
}

@end