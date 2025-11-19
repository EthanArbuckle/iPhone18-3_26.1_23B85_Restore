@interface HMSymptom(HFAdditions)
- (id)hf_shortDescription;
- (uint64_t)hf_generatedByHomeAppForDebuggingPurposes;
- (void)hf_setGeneratedByHomeAppForDebuggingPurposes:()HFAdditions;
@end

@implementation HMSymptom(HFAdditions)

- (uint64_t)hf_generatedByHomeAppForDebuggingPurposes
{
  v1 = objc_getAssociatedObject(a1, @"kHMSymptomhf_generatedByHomeAppForDebuggingPurposesKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)hf_setGeneratedByHomeAppForDebuggingPurposes:()HFAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"kHMSymptomhf_generatedByHomeAppForDebuggingPurposesKey", v2, 0x301);
}

- (id)hf_shortDescription
{
  v1 = [a1 type];
  switch(v1)
  {
    case 1:
    case 2:
    case 20:
      v3 = @"HFSymptomDescriptionProblemAccount";
      goto LABEL_18;
    case 3:
    case 7:
      v3 = @"HFSymptomDescriptionNeedsService";
      goto LABEL_18;
    case 4:
    case 11:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      v2 = HFLocalizedWiFiString(@"HFSymptomDescriptionProblemWiFiNetwork");
      goto LABEL_19;
    case 5:
      v3 = @"HFSymptomDescriptionProblemWifiPerformanceFix";
      goto LABEL_18;
    case 6:
      v3 = @"HFSymptomDescriptionProblemInternet";
      goto LABEL_18;
    case 8:
      v3 = @"HFSymptomDescriptionStereoVersionMismatch";
      goto LABEL_18;
    case 9:
      v3 = @"HFSymptomDescriptionStereoNotFound";
      goto LABEL_18;
    case 10:
      v3 = @"HFSymptomDescriptionStereoError";
      goto LABEL_18;
    case 12:
      v3 = @"HFSymptomDescriptionTargetControlMissing";
      goto LABEL_18;
    case 13:
      v3 = @"HFSymptomDescriptionVPNProfileExpired";
      goto LABEL_18;
    default:
      if ((v1 - 100) <= 0xF && ((1 << (v1 - 100)) & 0xF00F) != 0)
      {
        v3 = @"HFSymptomDescriptionProblemNetworkIssue";
      }

      else
      {
        if (v1 != 999)
        {
          v2 = 0;
          goto LABEL_19;
        }

        v3 = @"HMSymptomDescriptionSharedUserErrorNotification";
      }

LABEL_18:
      v2 = _HFLocalizedStringWithDefaultValue(v3, v3, 1);
LABEL_19:

      return v2;
  }
}

@end