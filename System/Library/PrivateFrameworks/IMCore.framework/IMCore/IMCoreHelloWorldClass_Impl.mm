@interface IMCoreHelloWorldClass_Impl
- (IMCoreHelloWorldClass_Impl)init;
- (void)printGreeting;
@end

@implementation IMCoreHelloWorldClass_Impl

- (IMCoreHelloWorldClass_Impl)init
{
  v3 = OBJC_IVAR___IMCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_1A84E58FC()) init];
  v4 = OBJC_IVAR___IMCoreHelloWorldClass_Impl_persistenceHelloWorld;
  *(&self->super.isa + v4) = [objc_allocWithZone(sub_1A84E57CC()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for IMCoreHelloWorldClass();
  return [(IMCoreHelloWorldClass_Impl *)&v6 init];
}

- (void)printGreeting
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld);
  selfCopy = self;
  sub_1A84E58EC();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR___IMCoreHelloWorldClass_Impl_persistenceHelloWorld);
  sub_1A84E57BC();
}

@end