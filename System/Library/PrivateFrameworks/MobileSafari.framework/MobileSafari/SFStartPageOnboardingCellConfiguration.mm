@interface SFStartPageOnboardingCellConfiguration
- (SFStartPageOnboardingCellConfiguration)init;
- (int64_t)state;
- (void)setIsCompact:(BOOL)compact;
@end

@implementation SFStartPageOnboardingCellConfiguration

- (int64_t)state
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)setIsCompact:(BOOL)compact
{
  if (compact)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *(&self->super.isa + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType) = v3;
}

- (SFStartPageOnboardingCellConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end