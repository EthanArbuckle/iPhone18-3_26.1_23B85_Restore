@interface IMDaemonCoreHelloWorldClass
- (IMDaemonCoreHelloWorldClass)init;
@end

@implementation IMDaemonCoreHelloWorldClass

- (IMDaemonCoreHelloWorldClass)init
{
  v6.receiver = self;
  v6.super_class = IMDaemonCoreHelloWorldClass;
  v2 = [(IMDaemonCoreHelloWorldClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMDaemonCoreHelloWorldClass_Impl);
    swiftImpl = v2->_swiftImpl;
    v2->_swiftImpl = v3;
  }

  return v2;
}

@end