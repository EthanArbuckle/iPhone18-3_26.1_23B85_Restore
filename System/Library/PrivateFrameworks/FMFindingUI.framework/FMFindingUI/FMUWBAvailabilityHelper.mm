@interface FMUWBAvailabilityHelper
- (_TtC11FMFindingUI23FMUWBAvailabilityHelper)init;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)systemConfigurator:(id)a3 didUpdateState:(id)a4;
@end

@implementation FMUWBAvailabilityHelper

- (void)systemConfigurator:(id)a3 didUpdateState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24A61B4A4(v7);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24A61B564(v8);
}

- (_TtC11FMFindingUI23FMUWBAvailabilityHelper)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_handler);
  *v2 = 0;
  v2[1] = 0;
  v3 = self + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_result;
  *v3 = 0;
  v3[8] = -1;
  *(&self->super.isa + OBJC_IVAR____TtC11FMFindingUI23FMUWBAvailabilityHelper_niSession) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUWBAvailabilityHelper();
  return [(FMUWBAvailabilityHelper *)&v5 init];
}

@end