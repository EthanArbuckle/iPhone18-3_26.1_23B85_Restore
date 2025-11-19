@interface FMFindingWatchMetrics
- (_TtC11FMFindingUI21FMFindingWatchMetrics)init;
@end

@implementation FMFindingWatchMetrics

- (_TtC11FMFindingUI21FMFindingWatchMetrics)init
{
  sub_24A62E204();
  *(&self->super.isa + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_pingCount) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_floorAlertCount) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_movingPhoneAlertCount) = 0;
  sub_24A62E184();
  *(&self->super.isa + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_finishReason) = 0;
  v3 = self + OBJC_IVAR____TtC11FMFindingUI21FMFindingWatchMetrics_firstDistanceRangeSeen;
  *v3 = 0;
  v3[8] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMFindingWatchMetrics();
  return [(FMFindingWatchMetrics *)&v5 init];
}

@end