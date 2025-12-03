@interface HIDEvent(HIDPointerEvent)
+ (char)pointerEvent:()HIDPointerEvent x:y:z:buttonMask:options:;
@end

@implementation HIDEvent(HIDPointerEvent)

+ (char)pointerEvent:()HIDPointerEvent x:y:z:buttonMask:options:
{
  v11 = *MEMORY[0x277CBECE8];
  v12 = _IOHIDEventCreate();
  v13 = *&v12[*MEMORY[0x277CD2870] + 88];
  *(v13 + 16) = self;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a7;

  return v12;
}

@end