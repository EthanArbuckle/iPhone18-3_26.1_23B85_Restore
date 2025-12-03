@interface CCUIControlIntentPersistenceAssertion
- (CCUIControlIntentPersistenceAssertion)init;
- (void)invalidate;
@end

@implementation CCUIControlIntentPersistenceAssertion

- (void)invalidate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(&self->super.isa + OBJC_IVAR___CCUIControlIntentPersistenceAssertion_bundleIdentifier);
    v6 = *&self->bundleIdentifier[OBJC_IVAR___CCUIControlIntentPersistenceAssertion_bundleIdentifier];
    v7 = *(&self->super.isa + OBJC_IVAR___CCUIControlIntentPersistenceAssertion_dataSourceIdentifier);
    v8 = *&self->bundleIdentifier[OBJC_IVAR___CCUIControlIntentPersistenceAssertion_dataSourceIdentifier];
    selfCopy = self;
    sub_21EA61F80(selfCopy, v5, v6, v7, v8);
  }
}

- (CCUIControlIntentPersistenceAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end