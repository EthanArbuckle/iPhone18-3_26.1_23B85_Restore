@interface FIPregnancyStateProvider
- (BOOL)isPregnant;
- (FIPregnancyStateProvider)init;
- (void)activate;
- (void)notifyObservers:(id)a3;
- (void)pregnancyModelDidChangeWithModel:(id)a3;
- (void)stopQuery;
@end

@implementation FIPregnancyStateProvider

- (void)pregnancyModelDidChangeWithModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24B3639A4(v4);
}

- (BOOL)isPregnant
{
  v2 = *(&self->super.isa + OBJC_IVAR___FIPregnancyStateProvider_pregnancyModel);
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
  sub_24B39CAA8(v4);
}

- (void)activate
{
  v2 = self;
  sub_24B39CC88();
}

- (void)stopQuery
{
  v2 = self;
  sub_24B39CF0C();
}

- (FIPregnancyStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end