@interface UNNotificationContent
@end

@implementation UNNotificationContent

void __74__UNNotificationContent_BLTBackwardCompatible__blt_swizzleEncodeWithCoder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel_encodeWithCoder_);
  v4 = class_getInstanceMethod(v2, sel_blt_encodeWithCoder_);

  method_exchangeImplementations(InstanceMethod, v4);
}

@end