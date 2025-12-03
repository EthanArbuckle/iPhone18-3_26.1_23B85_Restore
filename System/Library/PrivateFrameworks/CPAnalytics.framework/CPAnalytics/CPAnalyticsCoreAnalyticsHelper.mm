@interface CPAnalyticsCoreAnalyticsHelper
+ (BOOL)isValidCoreAnalyticsValueType:(id)type;
+ (id)buildCACompatiblePayload:(id)payload;
+ (id)caCompatiblePayloadKey:(id)key;
+ (void)sendCoreAnalyticsEvent:(id)event withPayload:(id)payload shouldSanitize:(BOOL)sanitize;
@end

@implementation CPAnalyticsCoreAnalyticsHelper

+ (id)buildCACompatiblePayload:(id)payload
{
  v4 = MEMORY[0x277CBEB38];
  payloadCopy = payload;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CPAnalyticsCoreAnalyticsHelper_buildCACompatiblePayload___block_invoke;
  v9[3] = &unk_278D61870;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [payloadCopy enumerateKeysAndObjectsUsingBlock:v9];

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

+ (BOOL)isValidCoreAnalyticsValueType:(id)type
{
  typeCopy = type;
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

+ (id)caCompatiblePayloadKey:(id)key
{
  v3 = MEMORY[0x277CCA900];
  keyCopy = key;
  alphanumericCharacterSet = [v3 alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];

  v7 = [keyCopy componentsSeparatedByCharactersInSet:invertedSet];

  v8 = [v7 componentsJoinedByString:@"_"];

  return v8;
}

+ (void)sendCoreAnalyticsEvent:(id)event withPayload:(id)payload shouldSanitize:(BOOL)sanitize
{
  payloadCopy = payload;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__CPAnalyticsCoreAnalyticsHelper_sendCoreAnalyticsEvent_withPayload_shouldSanitize___block_invoke;
  v10[3] = &unk_278D61848;
  sanitizeCopy = sanitize;
  v11 = payloadCopy;
  selfCopy = self;
  v9 = payloadCopy;
  [self analyticsSendEventLazy:event payload:v10];
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