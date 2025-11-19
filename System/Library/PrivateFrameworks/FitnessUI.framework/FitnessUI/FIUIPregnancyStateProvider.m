@interface FIUIPregnancyStateProvider
- (BOOL)isPregnant;
- (FIUIPregnancyStateProvider)init;
- (void)activate;
- (void)notifyObservers:(id)a3;
- (void)pregnancyModelDidChangeWithModel:(id)a3;
- (void)stopQuery;
@end

@implementation FIUIPregnancyStateProvider

- (BOOL)isPregnant
{
  v2 = *(&self->super.isa + OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel);
  if (v2)
  {
    LOBYTE(v2) = [v2 state] == 1;
  }

  return v2;
}

- (void)notifyObservers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E5D6A450(v4);
}

- (void)activate
{
  v2 = self;
  sub_1E5D6A630();
}

- (void)stopQuery
{
  v2 = self;
  sub_1E5D6A8B4();
}

- (void)pregnancyModelDidChangeWithModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E5D6AA7C(v4);
}

- (FIUIPregnancyStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end