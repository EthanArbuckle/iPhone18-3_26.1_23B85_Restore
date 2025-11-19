@interface HIDEvent(HIDVendorDefinedEvent)
+ (char)vendorDefinedEvent:()HIDVendorDefinedEvent usagePage:usage:version:data:length:options:;
@end

@implementation HIDEvent(HIDVendorDefinedEvent)

+ (char)vendorDefinedEvent:()HIDVendorDefinedEvent usagePage:usage:version:data:length:options:
{
  v13 = a8;
  v14 = *MEMORY[0x277CBECE8];
  v15 = _IOHIDEventCreate();
  v16 = *&v15[*MEMORY[0x277CD2870] + 88];
  *(v16 + 16) = a4;
  *(v16 + 18) = a5;
  *(v16 + 20) = a6;
  memmove((v16 + 28), a7, v13);
  *(v16 + 24) = a8;

  return v15;
}

@end