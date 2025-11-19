@interface HMCameraClip
@end

@implementation HMCameraClip

void __71__HMCameraClip_HUAdditions__hu_accessibilityStringForSignificantEvents__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 32) hu_accessibilityStringForSignificantEvent:a2 inReferenceDate:*(a1 + 40)];
  v3 = [v2 stringByAppendingString:v4];
}

@end