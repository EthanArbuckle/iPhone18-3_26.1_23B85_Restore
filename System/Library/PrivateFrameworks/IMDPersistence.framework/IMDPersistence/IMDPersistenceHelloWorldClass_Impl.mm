@interface IMDPersistenceHelloWorldClass_Impl
- (IMDPersistenceHelloWorldClass_Impl)init;
- (void)printGreeting;
@end

@implementation IMDPersistenceHelloWorldClass_Impl

- (IMDPersistenceHelloWorldClass_Impl)init
{
  v3 = OBJC_IVAR___IMDPersistenceHelloWorldClass_Impl_inner;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_1B7CFE250()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for IMDPersistenceHelloWorldClass();
  return [(IMDPersistenceHelloWorldClass_Impl *)&v5 init];
}

- (void)printGreeting
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDPersistenceHelloWorldClass_Impl_inner);
  selfCopy = self;
  sub_1B7CFE240();
}

@end