@interface PuzzleGameCenterService
- (_TtC8NewsFeed23PuzzleGameCenterService)init;
- (void)networkReachabilityDidChange:(id)a3;
- (void)player:(GKPlayer *)a3 wantsToPlayGameActivity:(GKGameActivity *)a4 completionHandler:(id)a5;
@end

@implementation PuzzleGameCenterService

- (_TtC8NewsFeed23PuzzleGameCenterService)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)player:(GKPlayer *)a3 wantsToPlayGameActivity:(GKGameActivity *)a4 completionHandler:(id)a5
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1D726294C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D7356678;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D731C230;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_1D6DCF07C(0, 0, v12, &unk_1D731C238, v17);
}

- (void)networkReachabilityDidChange:(id)a3
{
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();

  if ([a3 isNetworkReachable])
  {
    v9 = sub_1D726294C();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = self;
    sub_1D6BD1334(0, 0, v8, &unk_1D7356668, v10);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

@end