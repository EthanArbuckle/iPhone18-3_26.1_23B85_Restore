@interface MTConstraintTreatmentFilter
- (id)apply:(id)a3;
@end

@implementation MTConstraintTreatmentFilter

- (id)apply:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTObject *)self metricsKit];
  v6 = [v5 config];
  v7 = [v6 sources];

  if (v7)
  {
    v14[0] = v4;
    v14[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v9 = [MTPromise promiseWithAll:v8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__MTConstraintTreatmentFilter_apply___block_invoke;
    v13[3] = &unk_2798CD3E0;
    v13[4] = self;
    v10 = [v9 thenWithBlock:v13];
  }

  else
  {
    v10 = v4;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id __37__MTConstraintTreatmentFilter_apply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 system];
  v6 = [v5 queue];

  if (!v6)
  {
    v6 = dispatch_get_global_queue(0, 0);
  }

  v7 = objc_opt_new();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MTConstraintTreatmentFilter_apply___block_invoke_2;
  block[3] = &unk_2798CDA18;
  v8 = *(a1 + 32);
  v15 = v3;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v10 = v3;
  dispatch_async(v6, block);
  v11 = v17;
  v12 = v9;

  return v9;
}

void __37__MTConstraintTreatmentFilter_apply___block_invoke_2(id *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] objectAtIndexedSubscript:0];
  v3 = [a1[4] objectAtIndexedSubscript:1];
  v4 = [a1[5] metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"treatmentProfiles" sources:v3];

  v7 = [a1[5] metricsKit];
  v8 = [v7 config];
  v9 = [v8 configValueForKeyPath:@"defaultTreatmentProfiles" sources:v3];

  if (!v6 || !v9)
  {
    [a1[6] finishWithResult:v2];
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [a1[5] metricsKit];
      v20 = [v19 topic];
      *buf = 138412290;
      v55 = v20;
      _os_log_impl(&dword_258F4B000, v18, OS_LOG_TYPE_ERROR, "MetricsKit: Configuration for treatment profiles is not valid for topic %@", buf, 0xCu);
    }

    v10 = MTError(303, @"Configuration for treatment profiles is not valid", v21, v22, v23, v24, v25, v26, v48);
    [a1[6] finishWithError:v10];
    goto LABEL_19;
  }

  [v6 objectsForKeys:v9 notFoundMarker:MEMORY[0x277CBEC10]];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = v53 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v51;
  obj = v10;
  while (2)
  {
    v14 = 0;
    v15 = v2;
    do
    {
      if (*v51 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = [MTTreatmentProfile treatmentProfileWithConfigData:*(*(&v50 + 1) + 8 * v14)];
      v17 = v16;
      if (!v16)
      {
        v28 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [a1[5] metricsKit];
          v30 = [v29 topic];
          *buf = 138412290;
          v55 = v30;
          _os_log_impl(&dword_258F4B000, v28, OS_LOG_TYPE_ERROR, "MetricsKit: A treatment profile configuration is not valid for topic %@", buf, 0xCu);
        }

        v37 = MTError(303, @"A treatment profile configuration is not valid", v31, v32, v33, v34, v35, v36, v48);
        goto LABEL_27;
      }

      v2 = [v16 performTreatments:v15];

      if (!v2)
      {
        v38 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = [0 objectForKeyedSubscript:@"eventType"];
          v40 = [a1[5] metricsKit];
          v41 = [v40 topic];
          *buf = 138412546;
          v55 = v39;
          v56 = 2112;
          v57 = v41;
          _os_log_impl(&dword_258F4B000, v38, OS_LOG_TYPE_DEBUG, "MetricsKit: Event %@ in topic %@ has been denylisted by one of the configured treatments", buf, 0x16u);
        }

        v37 = MTError(304, @"The event has been denylisted by one of the configured treatments", v42, v43, v44, v45, v46, v47, v48);
        v15 = 0;
LABEL_27:
        v10 = obj;
        [a1[6] finishWithError:v37];

        v2 = v15;
        goto LABEL_19;
      }

      ++v14;
      v15 = v2;
    }

    while (v12 != v14);
    v10 = obj;
    v12 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_14:

  [a1[6] finishWithResult:v2];
LABEL_19:

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
}

@end