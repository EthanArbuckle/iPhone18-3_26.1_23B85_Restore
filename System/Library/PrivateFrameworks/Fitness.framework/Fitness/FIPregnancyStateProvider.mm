@interface FIPregnancyStateProvider
- (BOOL)isPregnant;
- (FIPregnancyStateProvider)init;
- (void)activate;
- (void)notifyObservers:(id)observers;
- (void)pregnancyModelDidChangeWithModel:(id)model;
- (void)stopQuery;
@end

@implementation FIPregnancyStateProvider

- (void)pregnancyModelDidChangeWithModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_24B3639A4(modelCopy);
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

- (void)notifyObservers:(id)observers
{
  observersCopy = observers;
  selfCopy = self;
  sub_24B39CAA8(observersCopy);
}

- (void)activate
{
  selfCopy = self;
  sub_24B39CC88();
}

- (void)stopQuery
{
  selfCopy = self;
  sub_24B39CF0C();
}

- (FIPregnancyStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end