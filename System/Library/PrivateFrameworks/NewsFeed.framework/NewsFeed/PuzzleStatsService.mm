@interface PuzzleStatsService
- (_TtC8NewsFeed18PuzzleStatsService)init;
- (void)userInfoDidChangeDatePuzzleStatsStart:(id)start fromCloud:(BOOL)cloud;
@end

@implementation PuzzleStatsService

- (_TtC8NewsFeed18PuzzleStatsService)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userInfoDidChangeDatePuzzleStatsStart:(id)start fromCloud:(BOOL)cloud
{
  startCopy = start;

  sub_1D60417E0(startCopy, cloud);
}

@end