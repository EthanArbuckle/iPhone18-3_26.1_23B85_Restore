@interface HIDEvent(HIDForceEvent)
+ (char)forceEvent:()HIDForceEvent behavior:progress:stage:stageProgress:options:;
@end

@implementation HIDEvent(HIDForceEvent)

+ (char)forceEvent:()HIDForceEvent behavior:progress:stage:stageProgress:options:
{
  v11 = *MEMORY[0x277CBECE8];
  v12 = _IOHIDEventCreate();
  v13 = *&v12[*MEMORY[0x277CD2870] + 88];
  v13[4] = a6;
  v13[5] = vcvtd_n_s64_f64(a1, 0x10uLL);
  v13[6] = a7;
  v13[7] = vcvtd_n_s64_f64(a2, 0x10uLL);

  return v12;
}

@end