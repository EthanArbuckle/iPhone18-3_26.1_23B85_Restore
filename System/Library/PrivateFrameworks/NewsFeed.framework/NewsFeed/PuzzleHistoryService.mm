@interface PuzzleHistoryService
- (_TtC8NewsFeed20PuzzleHistoryService)init;
- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change;
- (void)puzzleHistory:(id)history didAddPuzzleItems:(id)items modifiedPuzzleItems:(id)puzzleItems removedPuzzleItems:(id)removedPuzzleItems;
@end

@implementation PuzzleHistoryService

- (_TtC8NewsFeed20PuzzleHistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)puzzleHistory:(id)history didAddPuzzleItems:(id)items modifiedPuzzleItems:(id)puzzleItems removedPuzzleItems:(id)removedPuzzleItems
{
  sub_1D5B5A498(0, &unk_1EC8980E0);
  v8 = sub_1D726267C();
  v9 = sub_1D726267C();
  v10 = sub_1D726267C();
  historyCopy = history;
  selfCopy = self;
  sub_1D6EF4104(v8, v9, v10);
}

- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  puzzlesConfig = [change puzzlesConfig];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory) setAllowLowerProgressOnCompletedPuzzles_];

  swift_unknownObjectRelease();
}

@end