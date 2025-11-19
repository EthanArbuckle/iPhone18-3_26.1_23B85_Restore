@interface CSSiriBTDeviceGetDeviceInfo
@end

@implementation CSSiriBTDeviceGetDeviceInfo

void ___CSSiriBTDeviceGetDeviceInfo_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAddress:v3];
  [v4 setVendorID:*(a1 + 40)];
  [v4 setProductID:*(a1 + 44)];
  [v4 setIsAdvancedAppleAudioDevice:*(a1 + 48) == -1];
  [v4 setSupportsInEarDetection:*(a1 + 52) == -1];
  [v4 setSupportsVoiceTrigger:*(a1 + 56) == -1];
  [v4 setSupportsSpokenNotification:*(a1 + 60) == -1];
  [v4 setSupportsListeningModeANC:*(a1 + 64) == -1];
  [v4 setSupportsListeningModeTransparency:*(a1 + 68) == -1];
  [v4 setSupportsAnnounceCall:*(a1 + 72) == -1];
}

@end