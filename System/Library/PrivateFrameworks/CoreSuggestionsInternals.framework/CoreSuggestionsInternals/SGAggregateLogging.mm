@interface SGAggregateLogging
+ (void)addValueForScalarKeyWithDomain:(id)domain subdomain:(id)subdomain suffix:(id)suffix action:(id)action value:(int64_t)value;
+ (void)incrementValuesInDomain:(id)domain subdomain:(id)subdomain type:(id)type action:(id)action withKeysAndIncrements:(id)increments extraSignature:(id)signature;
+ (void)pushValueForDistributionKeyWithDomain:(id)domain subdomain:(id)subdomain suffix:(id)suffix action:(id)action value:(int64_t)value;
+ (void)setValueForScalarKeyWithDomain:(id)domain subdomain:(id)subdomain suffix:(id)suffix action:(id)action value:(int64_t)value;
@end

@implementation SGAggregateLogging

+ (void)incrementValuesInDomain:(id)domain subdomain:(id)subdomain type:(id)type action:(id)action withKeysAndIncrements:(id)increments extraSignature:(id)signature
{
  domainCopy = domain;
  subdomainCopy = subdomain;
  typeCopy = type;
  actionCopy = action;
  signatureCopy = signature;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __110__SGAggregateLogging_PET__incrementValuesInDomain_subdomain_type_action_withKeysAndIncrements_extraSignature___block_invoke;
  v23[3] = &unk_278954A80;
  v18 = domainCopy;
  v24 = v18;
  v19 = subdomainCopy;
  v25 = v19;
  v20 = typeCopy;
  v26 = v20;
  v21 = actionCopy;
  v27 = v21;
  [increments enumerateKeysAndObjectsUsingBlock:v23];
  if (signatureCopy)
  {
    v22 = aggdKeyForComponents(v18, v19, v20, signatureCopy, v21);
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

+ (void)pushValueForDistributionKeyWithDomain:(id)domain subdomain:(id)subdomain suffix:(id)suffix action:(id)action value:(int64_t)value
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = aggdKeyForComponents(domain, subdomain, 0, suffix, action);
  v9 = objc_opt_new();
  [v9 setKey:v8];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] trackDistributionForMessage:v9 value:value];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithFormat:@"%@.%@", *MEMORY[0x277D02470], v8];
  v16 = @"count";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:value];
  v17[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  AnalyticsSendEvent();
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)setValueForScalarKeyWithDomain:(id)domain subdomain:(id)subdomain suffix:(id)suffix action:(id)action value:(int64_t)value
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = aggdKeyForComponents(domain, subdomain, 0, suffix, action);
  v9 = objc_opt_new();
  [v9 setKey:v8];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] trackScalarForMessage:v9 updateCount:value];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithFormat:@"%@.%@", *MEMORY[0x277D02470], v8];
  v16 = @"count";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:value];
  v17[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  AnalyticsSendEvent();
  v15 = *MEMORY[0x277D85DE8];
}

+ (void)addValueForScalarKeyWithDomain:(id)domain subdomain:(id)subdomain suffix:(id)suffix action:(id)action value:(int64_t)value
{
  v8 = aggdKeyForComponents(domain, subdomain, 0, suffix, action);
  SGPETAddValueForScalarKey(v8, value);
}

@end