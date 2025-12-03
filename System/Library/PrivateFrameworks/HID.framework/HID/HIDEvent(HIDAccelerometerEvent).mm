@interface HIDEvent(HIDAccelerometerEvent)
+ (char)accelerometerEvent:()HIDAccelerometerEvent x:y:z:options:;
@end

@implementation HIDEvent(HIDAccelerometerEvent)

+ (char)accelerometerEvent:()HIDAccelerometerEvent x:y:z:options:
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = _IOHIDEventCreate();
  v8 = *&v7[*MEMORY[0x277CD2870] + 88];
  v8[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v8[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v8[6] = vcvtd_n_s64_f64(a3, 0x10uLL);

  return v7;
}

@end