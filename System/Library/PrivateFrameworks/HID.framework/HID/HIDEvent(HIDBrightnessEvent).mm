@interface HIDEvent(HIDBrightnessEvent)
+ (char)brightnessEvent:()HIDBrightnessEvent currentBrightness:targetBrightness:transitionTime:options:;
@end

@implementation HIDEvent(HIDBrightnessEvent)

+ (char)brightnessEvent:()HIDBrightnessEvent currentBrightness:targetBrightness:transitionTime:options:
{
  v9 = *MEMORY[0x277CBECE8];
  v10 = _IOHIDEventCreate();
  v11 = *&v10[*MEMORY[0x277CD2870] + 88];
  *(v11 + 16) = vcvtd_n_s64_f64(self, 0x10uLL);
  *(v11 + 20) = vcvtd_n_s64_f64(a2, 0x10uLL);
  *(v11 + 24) = a6;

  return v10;
}

@end