@interface HIDEvent(HIDMotionActivityEvent)
+ (char)motionActivityEvent:()HIDMotionActivityEvent activityType:confidence:options:;
@end

@implementation HIDEvent(HIDMotionActivityEvent)

+ (char)motionActivityEvent:()HIDMotionActivityEvent activityType:confidence:options:
{
  v7 = *MEMORY[0x277CBECE8];
  v8 = _IOHIDEventCreate();
  v9 = *&v8[*MEMORY[0x277CD2870] + 88];
  *(v9 + 16) = a5;
  *(v9 + 20) = vcvtd_n_s64_f64(a1, 0x10uLL);

  return v8;
}

@end