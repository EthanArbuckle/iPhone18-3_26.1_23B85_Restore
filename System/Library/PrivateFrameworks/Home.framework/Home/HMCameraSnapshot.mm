@interface HMCameraSnapshot
@end

@implementation HMCameraSnapshot

uint64_t __63__HMCameraSnapshot_HFAdditions__hf_localizedAgeForCaptureDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = _MergedGlobals_315;
  _MergedGlobals_315 = v0;

  [_MergedGlobals_315 setMaximumUnitCount:1];
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = [v2 languageCode];
  v4 = [v3 hasPrefix:@"ja"];

  if (v4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 1;
  }

  v6 = _MergedGlobals_315;

  return [v6 setUnitsStyle:v5];
}

@end