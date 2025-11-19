@interface CPAnalyticsCoreAnalyticsHelper
+ (BOOL)isValidCoreAnalyticsValueType:(id)a3;
+ (id)buildCACompatiblePayload:(id)a3;
+ (id)caCompatiblePayloadKey:(id)a3;
+ (void)sendCoreAnalyticsEvent:(id)a3 withPayload:(id)a4 shouldSanitize:(BOOL)a5;
@end

@implementation CPAnalyticsCoreAnalyticsHelper

+ (id)buildCACompatiblePayload:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CPAnalyticsCoreAnalyticsHelper_buildCACompatiblePayload___block_invoke;
  v9[3] = &unk_278D61870;
  v11 = a1;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __59__CPAnalyticsCoreAnalyticsHelper_buildCACompatiblePayload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 40) isValidCoreAnalyticsValueType:v6])
  {
    v7 = [CPAnalyticsCoreAnalyticsHelper caCompatiblePayloadKey:v5];
    [*(a1 + 32) setObject:v6 forKey:v7];
  }

  else
  {
    v8 = CPAnalyticsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_24260A000, v8, OS_LOG_TYPE_INFO, "[CPAnalyticsCoreAnalyticsHelper] Dropping payload with unsupported value class:%{public}@, key:%{public}@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isValidCoreAnalyticsValueType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)caCompatiblePayloadKey:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 alphanumericCharacterSet];
  v6 = [v5 invertedSet];

  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:@"_"];

  return v8;
}

+ (void)sendCoreAnalyticsEvent:(id)a3 withPayload:(id)a4 shouldSanitize:(BOOL)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__CPAnalyticsCoreAnalyticsHelper_sendCoreAnalyticsEvent_withPayload_shouldSanitize___block_invoke;
  v10[3] = &unk_278D61848;
  v13 = a5;
  v11 = v8;
  v12 = a1;
  v9 = v8;
  [a1 analyticsSendEventLazy:a3 payload:v10];
}

id __84__CPAnalyticsCoreAnalyticsHelper_sendCoreAnalyticsEvent_withPayload_shouldSanitize___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = [*(a1 + 40) buildCACompatiblePayload:*(a1 + 32)];
  }

  else
  {
    v1 = *(a1 + 32);
  }

  return v1;
}

@end