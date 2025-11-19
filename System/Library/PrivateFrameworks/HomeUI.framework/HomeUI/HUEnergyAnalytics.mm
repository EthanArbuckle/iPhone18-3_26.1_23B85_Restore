@interface HUEnergyAnalytics
+ (unint64_t)getUTFAnalyticsEventTypeFrom:(unint64_t)a3;
+ (void)saveTapEvent:(unint64_t)a3 withInteractionType:(unint64_t)a4;
+ (void)saveViewAccessedFromURLEvent:(unint64_t)a3 deepLinkFrom:(id)a4;
+ (void)saveViewDurationEvent:(unint64_t)a3 withDuration:(id)a4;
+ (void)saveViewDurationEvent:(unint64_t)a3 withDuration:(id)a4 withUserHasAccessories:(BOOL)a5;
+ (void)saveViewVisitEvent:(unint64_t)a3;
+ (void)saveViewVisitEvent:(unint64_t)a3 withData:(id)a4;
+ (void)saveViewVisitEvent:(unint64_t)a3 withState:(unint64_t)a4;
+ (void)saveWidgetSettingsEvent:(unint64_t)a3 withLocation:(unint64_t)a4;
+ (void)sendEnergyWindowsToUTFFromData:(id)a3;
+ (void)sendToUTFWithData:(id)a3 withSubsystem:(id)a4 withCategory:(id)a5;
@end

@implementation HUEnergyAnalytics

+ (unint64_t)getUTFAnalyticsEventTypeFrom:(unint64_t)a3
{
  if (a3 - 44 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_20D5CA9A0[a3 - 44];
  }
}

+ (void)sendToUTFWithData:(id)a3 withSubsystem:(id)a4 withCategory:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HUEnergyAnalytics_sendToUTFWithData_withSubsystem_withCategory___block_invoke;
  block[3] = &unk_277DB8810;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

void __66__HUEnergyAnalytics_sendToUTFWithData_withSubsystem_withCategory___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HUEnergyAnalytics_sendToUTFWithData_withSubsystem_withCategory___block_invoke_2;
  block[3] = &unk_277DB8488;
  v3 = *(a1 + 32);
  if (qword_281121F30 != -1)
  {
    dispatch_once(&qword_281121F30, block);
  }

  if (([*(a1 + 40) isEqualToString:@"HomeAppUIInteractions"] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToString:", @"CleanEnergyForecast"))
  {
    PPSSendTelemetry();
  }
}

uint64_t __66__HUEnergyAnalytics_sendToUTFWithData_withSubsystem_withCategory___block_invoke_2()
{
  _MergedGlobals_621 = PPSCreateTelemetryIdentifier();
  result = PPSCreateTelemetryIdentifier();
  qword_281121F28 = result;
  return result;
}

+ (void)saveViewVisitEvent:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D143D8] sendEvent:?];
  v7[0] = @"eventType";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", a3)}];
  v7[1] = @"state";
  v8[0] = v5;
  v8[1] = &unk_282491490;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  [a1 sendToUTFWithData:v6 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];
}

+ (void)saveViewVisitEvent:(unint64_t)a3 withState:(unint64_t)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D135D8]];

  [MEMORY[0x277D143D8] sendEvent:a3 withData:v7];
  v12[0] = @"eventType";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", a3)}];
  v12[1] = @"state";
  v13[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [a1 sendToUTFWithData:v11 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];
}

+ (void)saveViewVisitEvent:(unint64_t)a3 withData:(id)a4
{
  v33[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"gridID"];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v6 objectForKeyedSubscript:@"gridID"];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13608]];

    if (a3 == 44)
    {
      v13 = [v6 objectForKeyedSubscript:@"status"];

      if (!v13)
      {
LABEL_17:

        goto LABEL_18;
      }

      v14 = [v6 objectForKeyedSubscript:@"status"];
      v15 = *MEMORY[0x277D13600];
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13600]];

      v16 = [v6 objectForKeyedSubscript:@"HEUIEnergyDashboardDoublePaneEnabled"];
      [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x277D135F8]];

      v30[0] = @"eventType";
      v17 = MEMORY[0x277CCABB0];
      v18 = [v6 objectForKeyedSubscript:@"HEUIEnergyDashboardDoublePaneEnabled"];
      if (v18)
      {
        v19 = 10;
      }

      else
      {
        v19 = 9;
      }

      v20 = [v17 numberWithUnsignedInteger:v19];
      v30[1] = @"state";
      v31[0] = v20;
      v31[1] = &unk_282491490;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

      v21 = [v8 objectForKeyedSubscript:v15];
      v22 = [v21 isEqualToNumber:&unk_2824914A8];

      if (!v22)
      {
        v23 = [v8 objectForKeyedSubscript:v15];
        if (([v23 isEqualToNumber:&unk_2824914C0] & 1) != 0 || objc_msgSend(v23, "isEqualToNumber:", &unk_2824914D8))
        {

          v23 = &unk_2824914F0;
        }

        v29[0] = v23;
        v28[0] = @"state";
        v28[1] = @"gridID";
        v24 = [v6 objectForKeyedSubscript:@"gridID"];
        v29[1] = v24;
        v28[2] = @"windowStart";
        v25 = [MEMORY[0x277CBEB68] null];
        v29[2] = v25;
        v28[3] = @"windowEnd";
        v26 = [MEMORY[0x277CBEB68] null];
        v29[3] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

        [a1 sendToUTFWithData:v27 withSubsystem:@"HomeEnergy" withCategory:@"CleanEnergyForecast"];
        goto LABEL_16;
      }
    }

    else
    {
      if (a3 != 51)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v10 = [v6 objectForKeyedSubscript:@"adviceText"];
      [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13610]];

      v32[0] = @"eventType";
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", 51)}];
      v32[1] = @"state";
      v33[0] = v11;
      v33[1] = &unk_282491490;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    }

    [a1 sendEnergyWindowsToUTFFromData:v6];
LABEL_16:
    [MEMORY[0x277D143D8] sendEvent:a3 withData:v8];
    [a1 sendToUTFWithData:v12 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];

    goto LABEL_17;
  }

LABEL_18:
}

+ (void)saveTapEvent:(unint64_t)a3 withInteractionType:(unint64_t)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13528]];

  [MEMORY[0x277D143D8] sendEvent:a3 withData:v7];
  v11[0] = @"eventType";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", a3)}];
  v11[1] = @"state";
  v12[0] = v9;
  v12[1] = &unk_282491508;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [a1 sendToUTFWithData:v10 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];
}

+ (void)saveViewDurationEvent:(unint64_t)a3 withDuration:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 dictionary];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13618]];

  [MEMORY[0x277D143D8] sendEvent:a3 withData:v8];
  v11[0] = @"eventType";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", a3)}];
  v11[1] = @"state";
  v12[0] = v9;
  v12[1] = &unk_282491508;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [a1 sendToUTFWithData:v10 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];
}

+ (void)saveViewDurationEvent:(unint64_t)a3 withDuration:(id)a4 withUserHasAccessories:(BOOL)a5
{
  v5 = a5;
  v15[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = [v8 dictionary];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277D135E8]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277D135F0]];

  [MEMORY[0x277D143D8] sendEvent:a3 withData:v10];
  v14[0] = @"eventType";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", a3)}];
  v14[1] = @"state";
  v15[0] = v12;
  v15[1] = &unk_282491508;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [a1 sendToUTFWithData:v13 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];
}

+ (void)saveViewAccessedFromURLEvent:(unint64_t)a3 deepLinkFrom:(id)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (![(__CFString *)v6 length])
  {

    v6 = @"unspecified";
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D135E0]];
  [MEMORY[0x277D143D8] sendEvent:a3 withData:v7];
  v10[0] = @"eventType";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "getUTFAnalyticsEventTypeFrom:", a3)}];
  v10[1] = @"state";
  v11[0] = v8;
  v11[1] = &unk_282491520;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [a1 sendToUTFWithData:v9 withSubsystem:@"HomeEnergy" withCategory:@"HomeAppUIInteractions"];
}

+ (void)saveWidgetSettingsEvent:(unint64_t)a3 withLocation:(unint64_t)a4
{
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13620]];

  [MEMORY[0x277D143D8] sendEvent:a3 withData:v7];
}

+ (void)sendEnergyWindowsToUTFFromData:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"energyWindows"];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndex:v6];
      if ([v7 count] == 2)
      {
        v13[0] = &unk_2824914A8;
        v12[0] = @"state";
        v12[1] = @"gridID";
        v8 = [v4 objectForKeyedSubscript:@"gridID"];
        v13[1] = v8;
        v12[2] = @"windowStart";
        v9 = [v7 objectForKey:@"HEUIGridForecastEnergyWindowStartTime"];
        v13[2] = v9;
        v12[3] = @"windowEnd";
        v10 = [v7 objectForKey:@"HEUIGridForecastEnergyWindowEndTime"];
        v13[3] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

        [a1 sendToUTFWithData:v11 withSubsystem:@"HomeEnergy" withCategory:@"CleanEnergyForecast"];
      }

      ++v6;
    }

    while (v6 < [v5 count]);
  }
}

@end