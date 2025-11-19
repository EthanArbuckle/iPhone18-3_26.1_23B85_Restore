@interface FMR1AvailabilityHelper.FMR1AvailabilityHelperTrampoline
- (_TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline)init;
- (void)didFailWithError:(id)a3;
- (void)itemLocalizerChangedState:(unint64_t)a3;
@end

@implementation FMR1AvailabilityHelper.FMR1AvailabilityHelperTrampoline

- (void)itemLocalizerChangedState:(unint64_t)a3
{
  v3 = (self + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  if (v4)
  {
    v5 = v3[1];
    v6 = a3 == 2;
    v7 = self;
    sub_24A5173CC(v4);
    v4(v6, 0);
    sub_24A50D354(v4);
    v8 = *v3;
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v10 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_24A50D354(v8);
}

- (void)didFailWithError:(id)a3
{
  v3 = (self + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC11FMFindingUI22FMR1AvailabilityHelper32FMR1AvailabilityHelperTrampoline_handler);
  if (v4)
  {
    v6 = v3[1];
    v7 = self;
    v8 = a3;
    sub_24A5173CC(v4);
    v4(a3, 1);

    sub_24A50D354(v4);
    v9 = *v3;
  }

  else
  {
    v10 = self;
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