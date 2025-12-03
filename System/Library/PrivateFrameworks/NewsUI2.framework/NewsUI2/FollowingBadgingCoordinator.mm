@interface FollowingBadgingCoordinator
- (_TtC7NewsUI227FollowingBadgingCoordinator)init;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
- (void)userInfoDidChangeDateLastViewedSaved:(id)saved fromCloud:(BOOL)cloud;
- (void)userInfoDidChangeDateLastViewedSharedWithYou:(id)you fromCloud:(BOOL)cloud;
@end

@implementation FollowingBadgingCoordinator

- (_TtC7NewsUI227FollowingBadgingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  v9 = sub_219BF5924();
  listCopy = list;
  selfCopy = self;
  sub_21980A2DC(v9, level);
}

- (void)userInfoDidChangeDateLastViewedSaved:(id)saved fromCloud:(BOOL)cloud
{
  savedCopy = saved;
  selfCopy = self;
  sub_21980A3BC();
}

- (void)userInfoDidChangeDateLastViewedSharedWithYou:(id)you fromCloud:(BOOL)cloud
{
  youCopy = you;
  selfCopy = self;
  sub_21980A184();
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  sub_21870AD58();
  v6 = sub_219BF5214();
  historyCopy = history;
  selfCopy = self;
  sub_21980A48C(v6);
}

@end