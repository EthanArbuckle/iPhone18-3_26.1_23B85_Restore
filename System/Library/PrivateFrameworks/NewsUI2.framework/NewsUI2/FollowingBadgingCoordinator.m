@interface FollowingBadgingCoordinator
- (_TtC7NewsUI227FollowingBadgingCoordinator)init;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6;
- (void)userInfoDidChangeDateLastViewedSaved:(id)a3 fromCloud:(BOOL)a4;
- (void)userInfoDidChangeDateLastViewedSharedWithYou:(id)a3 fromCloud:(BOOL)a4;
@end

@implementation FollowingBadgingCoordinator

- (_TtC7NewsUI227FollowingBadgingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)a3 didAddArticles:(id)a4 removeArticles:(id)a5 eventInitiationLevel:(int64_t)a6
{
  v9 = sub_219BF5924();
  v10 = a3;
  v11 = self;
  sub_21980A2DC(v9, a6);
}

- (void)userInfoDidChangeDateLastViewedSaved:(id)a3 fromCloud:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_21980A3BC();
}

- (void)userInfoDidChangeDateLastViewedSharedWithYou:(id)a3 fromCloud:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_21980A184();
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  sub_21870AD58();
  v6 = sub_219BF5214();
  v7 = a3;
  v8 = self;
  sub_21980A48C(v6);
}

@end