@interface FMUWBAvailabilityHelper
- (_TtC11FMFindingUI23FMUWBAvailabilityHelper)init;
- (void)session:(id)session didFailWithError:(id)error;
- (void)systemConfigurator:(id)configurator didUpdateState:(id)state;
@end

@implementation FMUWBAvailabilityHelper

- (void)systemConfigurator:(id)configurator didUpdateState:(id)state
{
  configuratorCopy = configurator;
  stateCopy = state;
  selfCopy = self;
  sub_24A61B4A4(stateCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_24A61B564(errorCopy);
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