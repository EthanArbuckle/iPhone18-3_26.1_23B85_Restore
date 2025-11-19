@interface IPFeatureManager
+ (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4;
@end

@implementation IPFeatureManager

void __77__IPFeatureManager_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  v4 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging();
    v4 = _IPLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [IPFeatureScanner descriptionForScanResultType:a3];
    v8[0] = 67109378;
    v8[1] = a3;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_2485E4000, v5, OS_LOG_TYPE_INFO, "Result Type: %d   [%{public}@] #FeatureManager", v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)featuresForTextString:(id)a3 inMessageUnit:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(IPFeatureMailScanner);
  v8 = [(IPFeatureMailScanner *)v7 featuresForTextString:v6 inMessageUnit:v5];

  return v8;
}

@end