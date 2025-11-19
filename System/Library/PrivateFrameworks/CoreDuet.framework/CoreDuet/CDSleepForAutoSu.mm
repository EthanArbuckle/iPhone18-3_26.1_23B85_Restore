@interface CDSleepForAutoSu
@end

@implementation CDSleepForAutoSu

void __37___CDSleepForAutoSu_tuningDictionary__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) readConfigurationFromDefaults];
  v2 = [*(a1 + 32) sanitizeTuningConfiguration:v4];
  v3 = tuningDictionary_tuningDict;
  tuningDictionary_tuningDict = v2;
}

@end