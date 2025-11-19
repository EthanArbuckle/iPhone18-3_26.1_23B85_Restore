@interface HIDEvent(HIDLEDEvent)
+ (char)lEDEvent:()HIDLEDEvent ledMask:number:state:options:;
@end

@implementation HIDEvent(HIDLEDEvent)

+ (char)lEDEvent:()HIDLEDEvent ledMask:number:state:options:
{
  v9 = *MEMORY[0x277CBECE8];
  v10 = _IOHIDEventCreate();
  v11 = *&v10[*MEMORY[0x277CD2870] + 88];
  *(v11 + 16) = a4;
  *(v11 + 20) = a5;
  *(v11 + 24) = a6;

  return v10;
}

@end