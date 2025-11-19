@interface IMCoreHelloWorldClass
- (IMCoreHelloWorldClass)init;
@end

@implementation IMCoreHelloWorldClass

- (IMCoreHelloWorldClass)init
{
  v6.receiver = self;
  v6.super_class = IMCoreHelloWorldClass;
  v2 = [(IMCoreHelloWorldClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMCoreHelloWorldClass_Impl);
    swiftImpl = v2->_swiftImpl;
    v2->_swiftImpl = v3;
  }

  return v2;
}

@end