@interface HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc
@end

@implementation HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc

void *__get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "_HKPrivateMetadataKeySleepAlarmUserSetBedtime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end