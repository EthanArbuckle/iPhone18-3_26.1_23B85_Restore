@interface FLTelemetryAnalyticsController
- (void)_captureItem:(id)a3 event:(id)a4 source:(id)a5;
- (void)captureActionForItem:(id)a3 withEvent:(unint64_t)a4 source:(unint64_t)a5;
- (void)captureCurrentState:(id)a3;
@end

@implementation FLTelemetryAnalyticsController

- (void)captureActionForItem:(id)a3 withEvent:(unint64_t)a4 source:(unint64_t)a5
{
  v13 = a3;
  v8 = [v13 clientIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.followup.tests"];

  if ((v9 & 1) == 0)
  {
    v10 = @"other";
    v11 = @"other";
    if (a5 - 1 <= 3)
    {
      v11 = off_278852C70[a5 - 1];
    }

    if (a4 == 2)
    {
      v10 = @"userActivate";
    }

    if (a4 == 1)
    {
      v12 = @"userClear";
    }

    else
    {
      v12 = v10;
    }

    [(FLTelemetryAnalyticsController *)self _captureItem:v13 event:v12 source:v11];
  }
}

- (void)captureCurrentState:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCA940]);
  v5 = [v3 fl_map:&__block_literal_global_6];
  v6 = [v4 initWithArray:v5];

  v28 = @"all";
  v20 = v3;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  v29[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v9 = [v8 mutableCopy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "countForObject:", v15)}];
        [v9 setObject:v17 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__FLTelemetryAnalyticsController_captureCurrentState___block_invoke_2;
  v21[3] = &unk_278852C28;
  v22 = v9;
  v18 = v9;
  [FLTelemetryAnalyticsSender sendAnalyticsForEvent:@"com.apple.followup.groupCounts" builder:v21];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_captureItem:(id)a3 event:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__FLTelemetryAnalyticsController__captureItem_event_source___block_invoke;
  v13[3] = &unk_278852C50;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [FLTelemetryAnalyticsSender sendAnalyticsForEvent:@"com.apple.followup.items" builder:v13];
}

id __60__FLTelemetryAnalyticsController__captureItem_event_source___block_invoke(uint64_t a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"identifier";
  v2 = [*(a1 + 32) uniqueIdentifier];
  v15[0] = v2;
  v14[1] = @"client";
  v3 = [*(a1 + 32) clientIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"none";
  }

  v15[1] = v5;
  v14[2] = @"group";
  v6 = [*(a1 + 32) groupIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"none";
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v15[2] = v8;
  v15[3] = v9;
  v14[3] = @"type";
  v14[4] = @"source";
  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end