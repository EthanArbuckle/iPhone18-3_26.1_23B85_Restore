@interface IMDaemonCoreHelloWorldClass_Impl
- (IMDaemonCoreHelloWorldClass_Impl)init;
- (void)printGreeting;
@end

@implementation IMDaemonCoreHelloWorldClass_Impl

- (void)printGreeting
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld);
  selfCopy = self;
  sub_22B7DABF8();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_persistenceHelloWorld);
  sub_22B7DABA8();
}

- (IMDaemonCoreHelloWorldClass_Impl)init
{
  v3 = OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_22B7DAC08()) init];
  v4 = OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_persistenceHelloWorld;
  *(&self->super.isa + v4) = [objc_allocWithZone(sub_22B7DABB8()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for DaemonCoreHelloWorldClass();
  return [(IMDaemonCoreHelloWorldClass_Impl *)&v6 init];
}

@end