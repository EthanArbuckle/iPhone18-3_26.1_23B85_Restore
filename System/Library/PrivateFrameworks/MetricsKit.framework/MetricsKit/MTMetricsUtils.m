@interface MTMetricsUtils
- (id)metricsBuyParamsStringWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 callerSuppliedBuyParams:(id)a6;
@end

@implementation MTMetricsUtils

- (id)metricsBuyParamsStringWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 callerSuppliedBuyParams:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MTObject *)self metricsKit];
  v15 = [v14 config];
  v16 = [v15 sources];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__MTMetricsUtils_metricsBuyParamsStringWithPageId_pageType_pageContext_callerSuppliedBuyParams___block_invoke;
  v23[3] = &unk_2798CE888;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = self;
  v28 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = [v16 thenWithBlock:v23];

  return v21;
}

id __96__MTMetricsUtils_metricsBuyParamsStringWithPageId_pageType_pageContext_callerSuppliedBuyParams___block_invoke(id *a1)
{
  v2 = [[MTCallerSuppliedFields alloc] initWithPageId:a1[4] pageType:a1[5] pageContext:a1[6] eventData:0];
  v3 = [a1[7] metricsKit];
  v4 = [v3 eventHandlers];
  v5 = [v4 page];

  v6 = [v5 pageHistory:v2];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [MTPromise promiseWithResult:v9];
  }

  v11 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__MTMetricsUtils_metricsBuyParamsStringWithPageId_pageType_pageContext_callerSuppliedBuyParams___block_invoke_2;
  v15[3] = &unk_2798CE860;
  v15[4] = a1[7];
  v16 = v2;
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[8];
  v12 = v2;
  v13 = [v11 thenWithBlock:v15];

  return v13;
}

id __96__MTMetricsUtils_metricsBuyParamsStringWithPageId_pageType_pageContext_callerSuppliedBuyParams___block_invoke_2(uint64_t a1, void *a2)
{
  v67[16] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v63 = v3;
  if (v4 <= 1)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [v3 objectAtIndexedSubscript:v4 - 2];
  }
  v64 = ;
  v5 = [*(a1 + 32) metricsKit];
  v6 = [v5 eventHandlers];
  v7 = [v6 base];

  v66[0] = @"mtApp";
  v8 = [v7 app:*(a1 + 40)];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v51 = v8;
  v67[0] = v8;
  v66[1] = @"mtEventTime";
  v60 = [MEMORY[0x277CBEAA8] mt_millisecondsSince1970];
  v67[1] = v60;
  v66[2] = @"mtHardwareFamily";
  v10 = [v7 hardwareFamily:*(a1 + 40)];
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v50 = v10;
  v67[2] = v10;
  v66[3] = @"mtHardwareModel";
  v12 = [v7 hardwareModel:*(a1 + 40)];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v49 = v12;
  v67[3] = v12;
  v66[4] = @"mtHostApp";
  v14 = [v7 hostApp:*(a1 + 40)];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v48 = v14;
  v67[4] = v14;
  v66[5] = @"mtHostAppVersion";
  v16 = [v7 hostAppVersion:*(a1 + 40)];
  v56 = v16;
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v47 = v16;
  v67[5] = v16;
  v66[6] = @"mtOs";
  v17 = [v7 os:*(a1 + 40)];
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v58 = v13;
  v46 = v17;
  v67[6] = v17;
  v66[7] = @"mtOsBuildNumber";
  v19 = [v7 osBuildNumber:*(a1 + 40)];
  v54 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v45 = v19;
  v67[7] = v19;
  v66[8] = @"mtOsVersion";
  v20 = [v7 osVersion:*(a1 + 40)];
  v21 = v20;
  if (!v20)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v57 = v15;
  v44 = v20;
  v67[8] = v20;
  v66[9] = @"mtPageId";
  v22 = *(a1 + 48);
  v52 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v43 = v22;
  v67[9] = v22;
  v66[10] = @"mtPageType";
  v23 = *(a1 + 56);
  v24 = v23;
  if (!v23)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v55 = v18;
  v59 = v11;
  v61 = v9;
  v42 = v24;
  v67[10] = v24;
  v66[11] = @"mtPageContext";
  v25 = *(a1 + 64);
  v26 = v25;
  if (!v25)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v41 = v26;
  v67[11] = v26;
  v66[12] = @"mtTopic";
  v27 = [*(a1 + 32) metricsKit];
  v28 = [v27 topic];
  v29 = v28;
  v30 = @"xp_its_main";
  if (v28)
  {
    v30 = v28;
  }

  v67[12] = v30;
  v66[13] = @"mtRequestId";
  v31 = [MEMORY[0x277CCAD78] UUID];
  v32 = [v31 UUIDString];
  v67[13] = v32;
  v66[14] = @"mtClientId";
  v62 = v7;
  v33 = [v7 clientId:*(a1 + 40)];
  v34 = v33;
  if (!v33)
  {
    v34 = [MEMORY[0x277CBEB68] null];
  }

  v66[15] = @"mtPrevPage";
  v67[14] = v34;
  v67[15] = v64;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:16];
  if (!v33)
  {
  }

  if (!v25)
  {
  }

  if (!v23)
  {
  }

  if (!v52)
  {
  }

  if (!v21)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (!v59)
  {
  }

  if (!v61)
  {
  }

  v65 = v53;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v36 = [v35 arrayByAddingObjectsFromArray:*(a1 + 72)];
  v37 = [MTPromise promiseWithComposition:v36];
  v38 = [v37 thenWithBlock:&__block_literal_global_16];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

id __96__MTMetricsUtils_metricsBuyParamsStringWithPageId_pageType_pageContext_callerSuppliedBuyParams___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [MTReflectUtil mergeAndCleanDictionaries:a2];
  v3 = [MEMORY[0x277CCACE0] mt_queryParameterStringForDictionary:v2];
  v4 = [MTPromise promiseWithResult:v3];

  return v4;
}

@end