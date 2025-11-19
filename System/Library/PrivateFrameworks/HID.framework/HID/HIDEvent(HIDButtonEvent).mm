@interface HIDEvent(HIDButtonEvent)
+ (char)buttonEvent:()HIDButtonEvent buttonMask:options:;
@end

@implementation HIDEvent(HIDButtonEvent)

+ (char)buttonEvent:()HIDButtonEvent buttonMask:options:
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = _IOHIDEventCreate();
  *(*&v6[*MEMORY[0x277CD2870] + 88] + 16) = a4;

  return v6;
}

@end