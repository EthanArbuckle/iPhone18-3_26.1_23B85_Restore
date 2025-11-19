@interface IMSharedUtilitiesHelloWorldClass
- (IMSharedUtilitiesHelloWorldClass)init;
@end

@implementation IMSharedUtilitiesHelloWorldClass

- (IMSharedUtilitiesHelloWorldClass)init
{
  v6.receiver = self;
  v6.super_class = IMSharedUtilitiesHelloWorldClass;
  v2 = [(IMSharedUtilitiesHelloWorldClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMSharedUtilitiesHelloWorldClass_Impl);
    swiftImpl = v2->_swiftImpl;
    v2->_swiftImpl = v3;
  }

  return v2;
}

@end