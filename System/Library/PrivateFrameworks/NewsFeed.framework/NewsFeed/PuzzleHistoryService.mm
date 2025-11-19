@interface PuzzleHistoryService
- (_TtC8NewsFeed20PuzzleHistoryService)init;
- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4;
- (void)puzzleHistory:(id)a3 didAddPuzzleItems:(id)a4 modifiedPuzzleItems:(id)a5 removedPuzzleItems:(id)a6;
@end

@implementation PuzzleHistoryService

- (_TtC8NewsFeed20PuzzleHistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)puzzleHistory:(id)a3 didAddPuzzleItems:(id)a4 modifiedPuzzleItems:(id)a5 removedPuzzleItems:(id)a6
{
  sub_1D5B5A498(0, &unk_1EC8980E0);
  v8 = sub_1D726267C();
  v9 = sub_1D726267C();
  v10 = sub_1D726267C();
  v11 = a3;
  v12 = self;
  sub_1D6EF4104(v8, v9, v10);
}

- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = [a4 puzzlesConfig];
  [*(&v6->super.isa + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory) setAllowLowerProgressOnCompletedPuzzles_];

  swift_unknownObjectRelease();
}

@end