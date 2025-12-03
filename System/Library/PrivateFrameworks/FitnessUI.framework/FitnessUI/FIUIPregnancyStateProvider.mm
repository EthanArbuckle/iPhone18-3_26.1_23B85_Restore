@interface FIUIPregnancyStateProvider
- (BOOL)isPregnant;
- (FIUIPregnancyStateProvider)init;
- (void)activate;
- (void)notifyObservers:(id)observers;
- (void)pregnancyModelDidChangeWithModel:(id)model;
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

- (void)notifyObservers:(id)observers
{
  observersCopy = observers;
  selfCopy = self;
  sub_1E5D6A450(observersCopy);
}

- (void)activate
{
  selfCopy = self;
  sub_1E5D6A630();
}

- (void)stopQuery
{
  selfCopy = self;
  sub_1E5D6A8B4();
}

- (void)pregnancyModelDidChangeWithModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1E5D6AA7C(modelCopy);
}

- (FIUIPregnancyStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end