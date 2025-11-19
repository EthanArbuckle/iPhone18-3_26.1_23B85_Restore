@interface SGAggregateLogging
+ (void)addValueForScalarKeyWithDomain:(id)a3 subdomain:(id)a4 suffix:(id)a5 action:(id)a6 value:(int64_t)a7;
+ (void)incrementValuesInDomain:(id)a3 subdomain:(id)a4 type:(id)a5 action:(id)a6 withKeysAndIncrements:(id)a7 extraSignature:(id)a8;
+ (void)pushValueForDistributionKeyWithDomain:(id)a3 subdomain:(id)a4 suffix:(id)a5 action:(id)a6 value:(int64_t)a7;
+ (void)setValueForScalarKeyWithDomain:(id)a3 subdomain:(id)a4 suffix:(id)a5 action:(id)a6 value:(int64_t)a7;
@end

@implementation SGAggregateLogging

+ (void)incrementValuesInDomain:(id)a3 subdomain:(id)a4 type:(id)a5 action:(id)a6 withKeysAndIncrements:(id)a7 extraSignature:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __110__SGAggregateLogging_PET__incrementValuesInDomain_subdomain_type_action_withKeysAndIncrements_extraSignature___block_invoke;
  v23[3] = &unk_278954A80;
  v18 = v13;
  v24 = v18;
  v19 = v14;
  v25 = v19;
  v20 = v15;
  v26 = v20;
  v21 = v16;
  v27 = v21;
  [a7 enumerateKeysAndObjectsUsingBlock:v23];
  if (v17)
  {
    v22 = aggdKeyForComponents(v18, v19, v20, v17, v21);
    SGPETAddValueForScalarKey(v22, 1);
  }
}

void __110__SGAggregateLogging_PET__incrementValuesInDomain_subdomain_type_action_withKeysAndIncrements_extraSignature___block_invoke(void **a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = a2;
  if ([v9 isEqualToString:&stru_284703F00])
  {
    v6 = 0;
  }

  else
  {
    v6 = v9;
  }

  v7 = aggdKeyForComponents(a1[4], a1[5], a1[6], v6, a1[7]);
  v8 = [v5 intValue];

  SGPETAddValueForScalarKey(v7, v8);
}

+ (void)pushValueForDistributionKeyWithDomain:(id)a3 subdomain:(id)a4 suffix:(id)a5 action:(id)a6 value:(int64_t)a7
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = aggdKeyForComponents(a3, a4, 0, a5, a6);
  v9 = objc_opt_new();
  [v9 setKey:v8];
  v10 = [MEMORY[0x277D41DA8] sharedInstance];
  [v10 trackDistributionForMessage:v9 value:a7];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithFormat:@"%@.%@", *MEMORY[0x277D02470], v8];
  v16 = @"count";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:a7];
  v17[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  AnalyticsSendEvent();
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)setValueForScalarKeyWithDomain:(id)a3 subdomain:(id)a4 suffix:(id)a5 action:(id)a6 value:(int64_t)a7
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = aggdKeyForComponents(a3, a4, 0, a5, a6);
  v9 = objc_opt_new();
  [v9 setKey:v8];
  v10 = [MEMORY[0x277D41DA8] sharedInstance];
  [v10 trackScalarForMessage:v9 updateCount:a7];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithFormat:@"%@.%@", *MEMORY[0x277D02470], v8];
  v16 = @"count";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:a7];
  v17[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  AnalyticsSendEvent();
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)addValueForScalarKeyWithDomain:(id)a3 subdomain:(id)a4 suffix:(id)a5 action:(id)a6 value:(int64_t)a7
{
  v8 = aggdKeyForComponents(a3, a4, 0, a5, a6);
  SGPETAddValueForScalarKey(v8, a7);
}

@end