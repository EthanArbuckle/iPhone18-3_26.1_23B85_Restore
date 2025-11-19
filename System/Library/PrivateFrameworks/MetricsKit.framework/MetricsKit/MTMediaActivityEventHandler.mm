@interface MTMediaActivityEventHandler
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)metricsDataForStartActionWithPosition:(unint64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7;
- (id)metricsDataForStopActionWithPosition:(unint64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 startMetricsData:(id)a7 eventData:(id)a8;
- (void)didCreateMetricsData:(id)a3;
@end

@implementation MTMediaActivityEventHandler

- (void)didCreateMetricsData:(id)a3
{
  v4 = a3;
  [v4 addPostProcessingBlock:&__block_literal_global_4];
  v5.receiver = self;
  v5.super_class = MTMediaActivityEventHandler;
  [(MTEventHandler *)&v5 didCreateMetricsData:v4];
}

void __52__MTMediaActivityEventHandler_didCreateMetricsData___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (_block_invoke_onceToken != -1)
  {
    __52__MTMediaActivityEventHandler_didCreateMetricsData___block_invoke_cold_1();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = _block_invoke_mediaTimeFieldNames;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:{v8, v13}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "unsignedLongLongValue")}];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v10 = [_block_invoke_numberFormatter numberFromString:v9];
        }

        v11 = v10;
        [v2 setObject:v10 forKeyedSubscript:v8];

LABEL_13:
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__MTMediaActivityEventHandler_didCreateMetricsData___block_invoke_2()
{
  v5[8] = *MEMORY[0x277D85DE8];
  v5[0] = @"startTime";
  v5[1] = @"length";
  v5[4] = @"startPosition";
  v5[5] = @"startOverallPosition";
  v5[2] = @"position";
  v5[3] = @"overallPosition";
  v5[6] = @"duration";
  v5[7] = @"overallPosition";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v1 = _block_invoke_mediaTimeFieldNames;
  _block_invoke_mediaTimeFieldNames = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v3 = _block_invoke_numberFormatter;
  _block_invoke_numberFormatter = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)metricsDataForStartActionWithPosition:(unint64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v26[4] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v25[0] = @"position";
  v14 = MEMORY[0x277CCABB0];
  v15 = a7;
  v16 = [v14 numberWithLongLong:a3];
  v26[0] = v16;
  v25[1] = @"overallPosition";
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v26[1] = v17;
  v25[2] = @"startType";
  v18 = v12;
  if (!v12)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v26[2] = v18;
  v25[3] = @"startReason";
  v19 = v13;
  if (!v13)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v26[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v24.receiver = self;
  v24.super_class = MTMediaActivityEventHandler;
  v21 = [(MTEventHandler *)&v24 metricsDataWithFields:v20, v15, 0];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)metricsDataForStopActionWithPosition:(unint64_t)a3 overallPosition:(unint64_t)a4 type:(id)a5 reason:(id)a6 startMetricsData:(id)a7 eventData:(id)a8
{
  v31[4] = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v30[0] = @"position";
  v16 = MEMORY[0x277CCABB0];
  v17 = a8;
  v18 = a7;
  v19 = [v16 numberWithLongLong:a3];
  v31[0] = v19;
  v30[1] = @"overallPosition";
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v31[1] = v20;
  v30[2] = @"stopType";
  v21 = v14;
  if (!v14)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v31[2] = v21;
  v30[3] = @"stopReason";
  v22 = v15;
  if (!v15)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v31[3] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  if (v15)
  {
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v24 = [v18 toDictionary];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __123__MTMediaActivityEventHandler_metricsDataForStopActionWithPosition_overallPosition_type_reason_startMetricsData_eventData___block_invoke;
  v29[3] = &unk_2798CD570;
  v29[4] = self;
  v25 = [v24 thenWithBlock:v29];

  v26 = [(MTEventHandler *)self metricsDataWithFields:v25, v23, v17, 0];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __123__MTMediaActivityEventHandler_metricsDataForStopActionWithPosition_overallPosition_type_reason_startMetricsData_eventData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 objectForKeyedSubscript:@"startType"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"startType"];
    [v4 setObject:v6 forKeyedSubscript:@"startType"];
  }

  v7 = [v3 objectForKeyedSubscript:@"startReason"];

  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"startReason"];
    [v4 setObject:v8 forKeyedSubscript:@"startReason"];
  }

  v9 = [v3 objectForKeyedSubscript:@"startReasonType"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"startReasonType"];
    [v4 setObject:v10 forKeyedSubscript:@"startReasonType"];
  }

  v11 = [v3 objectForKeyedSubscript:@"eventTime"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"eventTime"];
    [v4 setObject:v12 forKeyedSubscript:@"startTime"];
  }

  v13 = [v3 objectForKeyedSubscript:@"position"];

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"position"];
    [v4 setObject:v14 forKeyedSubscript:@"startPosition"];
  }

  v15 = [v3 objectForKeyedSubscript:@"overallPosition"];

  if (v15)
  {
    v16 = [v3 objectForKeyedSubscript:@"overallPosition"];
    [v4 setObject:v16 forKeyedSubscript:@"startOverallPosition"];
  }

  v17 = [v3 objectForKeyedSubscript:@"assetId"];
  if (v17)
  {
    v18 = v17;
    v19 = [*(a1 + 32) registeredName];
    v20 = [v19 isEqualToString:@"seekStop"];

    if (v20)
    {
      v21 = [v3 objectForKeyedSubscript:@"assetId"];
      [v4 setObject:v21 forKeyedSubscript:@"startAssetId"];
    }
  }

  v22 = [v3 objectForKeyedSubscript:@"dsId"];

  if (v22)
  {
    v23 = [v3 objectForKeyedSubscript:@"dsId"];
    [v4 setObject:v23 forKeyedSubscript:@"dsId"];
  }

  v24 = [v4 copy];
  v25 = [MTPromise promiseWithResult:v24];

  return v25;
}

- (id)knownFields
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTMediaActivityEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"actionType";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTMediaActivityEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C290;
  }

  v6 = v5;

  return v5;
}

@end