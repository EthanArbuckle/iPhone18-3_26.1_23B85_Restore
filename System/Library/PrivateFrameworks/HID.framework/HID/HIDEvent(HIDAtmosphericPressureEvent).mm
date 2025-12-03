@interface HIDEvent(HIDAtmosphericPressureEvent)
+ (char)atmosphericPressureEvent:()HIDAtmosphericPressureEvent level:sequence:options:;
@end

@implementation HIDEvent(HIDAtmosphericPressureEvent)

+ (char)atmosphericPressureEvent:()HIDAtmosphericPressureEvent level:sequence:options:
{
  v7 = *MEMORY[0x277CBECE8];
  v8 = _IOHIDEventCreate();
  v9 = *&v8[*MEMORY[0x277CD2870] + 88];
  *(v9 + 16) = vcvtd_n_s64_f64(self, 0x10uLL);
  *(v9 + 20) = a5;

  return v8;
}

@end