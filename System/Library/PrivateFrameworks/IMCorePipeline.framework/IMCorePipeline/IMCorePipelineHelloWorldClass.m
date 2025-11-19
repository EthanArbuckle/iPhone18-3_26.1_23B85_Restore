@interface IMCorePipelineHelloWorldClass
- (IMCorePipelineHelloWorldClass)init;
@end

@implementation IMCorePipelineHelloWorldClass

- (IMCorePipelineHelloWorldClass)init
{
  v6.receiver = self;
  v6.super_class = IMCorePipelineHelloWorldClass;
  v2 = [(IMCorePipelineHelloWorldClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMCorePipelineHelloWorldClass_Impl);
    swiftImpl = v2->_swiftImpl;
    v2->_swiftImpl = v3;
  }

  return v2;
}

@end