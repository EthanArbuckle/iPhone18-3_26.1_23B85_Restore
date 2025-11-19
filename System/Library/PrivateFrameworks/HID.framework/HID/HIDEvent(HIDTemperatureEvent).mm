@interface HIDEvent(HIDTemperatureEvent)
+ (char)temperatureEvent:()HIDTemperatureEvent level:options:;
@end

@implementation HIDEvent(HIDTemperatureEvent)

+ (char)temperatureEvent:()HIDTemperatureEvent level:options:
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = _IOHIDEventCreate();
  *(*&v3[*MEMORY[0x277CD2870] + 88] + 16) = vcvtd_n_s64_f64(a1, 0x10uLL);

  return v3;
}

@end