@interface HIDEvent(HIDOrientationEvent)
+ (char)polarOrientationEvent:()HIDOrientationEvent radius:azimuth:altitude:options:;
+ (char)quaternionOrientationEvent:()HIDOrientationEvent w:x:y:z:options:;
+ (char)tiltOrientationEvent:()HIDOrientationEvent x:y:z:options:;
@end

@implementation HIDEvent(HIDOrientationEvent)

+ (char)polarOrientationEvent:()HIDOrientationEvent radius:azimuth:altitude:options:
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = _IOHIDEventCreate();
  v8 = *&v7[*MEMORY[0x277CD2870] + 88];
  v8[8] = 0;
  v8[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v8[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v8[6] = vcvtd_n_s64_f64(a3, 0x10uLL);

  return v7;
}

+ (char)quaternionOrientationEvent:()HIDOrientationEvent w:x:y:z:options:
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = _IOHIDEventCreate();
  v10 = *&v9[*MEMORY[0x277CD2870] + 88];
  v10[8] = 3;
  v10[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v10[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v10[6] = vcvtd_n_s64_f64(a3, 0x10uLL);
  v10[7] = vcvtd_n_s64_f64(a4, 0x10uLL);

  return v9;
}

+ (char)tiltOrientationEvent:()HIDOrientationEvent x:y:z:options:
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = _IOHIDEventCreate();
  v8 = *&v7[*MEMORY[0x277CD2870] + 88];
  v8[8] = 2;
  v8[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v8[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v8[6] = vcvtd_n_s64_f64(a3, 0x10uLL);

  return v7;
}

@end