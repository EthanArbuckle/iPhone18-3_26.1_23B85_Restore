@interface HKPrivateMetadataKeyAudioExposureLimitSymbolLoc
@end

@implementation HKPrivateMetadataKeyAudioExposureLimitSymbolLoc

void *__get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "_HKPrivateMetadataKeyAudioExposureLimit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_HKPrivateMetadataKeyAudioExposureLimitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end