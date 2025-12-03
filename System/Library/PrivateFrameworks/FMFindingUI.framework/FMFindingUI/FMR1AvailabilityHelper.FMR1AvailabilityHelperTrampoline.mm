@interface FMR1AvailabilityHelper.FMR1AvailabilityHelperTrampoline
- (_TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline)init;
- (void)didFailWithError:(id)error;
- (void)itemLocalizerChangedState:(unint64_t)state;
@end

@implementation FMR1AvailabilityHelper.FMR1AvailabilityHelperTrampoline

- (void)itemLocalizerChangedState:(unint64_t)state
{
  v3 = (self + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  if (v4)
  {
    v5 = v3[1];
    v6 = state == 2;
    selfCopy = self;
    sub_24A5173CC(v4);
    v4(v6, 0);
    sub_24A50D354(v4);
    v8 = *v3;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v10 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_24A50D354(v8);
}

- (void)didFailWithError:(id)error
{
  v3 = (self + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  if (v4)
  {
    v6 = v3[1];
    selfCopy = self;
    errorCopy = error;
    sub_24A5173CC(v4);
    v4(error, 1);

    sub_24A50D354(v4);
    v9 = *v3;
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  v11 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_24A50D354(v9);
}

- (_TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end