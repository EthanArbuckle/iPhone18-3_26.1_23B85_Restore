@interface HIDEvent(HIDKeyboardEvent)
+ (char)keyboardEvent:()HIDKeyboardEvent usagePage:usage:down:options:;
@end

@implementation HIDEvent(HIDKeyboardEvent)

+ (char)keyboardEvent:()HIDKeyboardEvent usagePage:usage:down:options:
{
  v9 = *MEMORY[0x277CBECE8];
  v10 = _IOHIDEventCreate();
  v11 = *&v10[*MEMORY[0x277CD2870] + 88];
  *(v11 + 16) = a4;
  *(v11 + 18) = a5;
  *(v11 + 20) = a6;

  return v10;
}

@end