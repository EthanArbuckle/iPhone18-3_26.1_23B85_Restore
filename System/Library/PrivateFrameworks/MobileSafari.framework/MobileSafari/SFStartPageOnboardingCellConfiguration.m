@interface SFStartPageOnboardingCellConfiguration
- (SFStartPageOnboardingCellConfiguration)init;
- (int64_t)state;
- (void)setIsCompact:(BOOL)a3;
@end

@implementation SFStartPageOnboardingCellConfiguration

- (int64_t)state
{
  v2 = *(&self->super.isa + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider);
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)setIsCompact:(BOOL)a3
{
  if (a3)
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