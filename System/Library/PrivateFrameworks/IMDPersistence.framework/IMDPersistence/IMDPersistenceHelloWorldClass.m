@interface IMDPersistenceHelloWorldClass
- (IMDPersistenceHelloWorldClass)init;
@end

@implementation IMDPersistenceHelloWorldClass

- (IMDPersistenceHelloWorldClass)init
{
  v6.receiver = self;
  v6.super_class = IMDPersistenceHelloWorldClass;
  v2 = [(IMDPersistenceHelloWorldClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMDPersistenceHelloWorldClass_Impl);
    swiftImpl = v2->_swiftImpl;
    v2->_swiftImpl = v3;
  }

  return v2;
}

@end