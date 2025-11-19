@interface HMCameraSnapshot(HFAdditions)
+ (id)hf_localizedAgeForCaptureDate:()HFAdditions;
- (id)hf_localizedAge;
@end

@implementation HMCameraSnapshot(HFAdditions)

+ (id)hf_localizedAgeForCaptureDate:()HFAdditions
{
  [a3 timeIntervalSinceNow];
  if (v3 <= -1.0)
  {
    v5 = -v3;
    if (qword_280E03C68 != -1)
    {
      dispatch_once(&qword_280E03C68, &__block_literal_global_216);
    }

    v4 = [_MergedGlobals_315 stringFromTimeInterval:v5];
  }

  else
  {
    v4 = _HFLocalizedStringWithDefaultValue(@"HFCameraSnapshotAgeNow", @"HFCameraSnapshotAgeNow", 1);
  }

  return v4;
}

- (id)hf_localizedAge
{
  v2 = objc_opt_class();
  v3 = [a1 captureDate];
  v4 = [v2 hf_localizedAgeForCaptureDate:v3];

  return v4;
}

@end