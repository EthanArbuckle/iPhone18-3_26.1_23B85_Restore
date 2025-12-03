@interface AudioFeedDataManager
- (_TtC7NewsUI220AudioFeedDataManager)init;
- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
- (void)readingHistory:(id)history didRemoveArticlesWithIDs:(id)ds;
- (void)readingHistoryDidClear:(id)clear;
- (void)readingHistoryLikelyClearedRemotely:(id)remotely;
@end

@implementation AudioFeedDataManager

- (_TtC7NewsUI220AudioFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds
{
  sub_219BF5924();
  historyCopy = history;
  selfCopy = self;
  sub_2195231D0(historyCopy);
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  sub_2186C6148(0, &qword_280E8DA20);
  v6 = sub_219BF5214();
  historyCopy = history;
  selfCopy = self;
  sub_219524EA0(v6);
}

- (void)readingHistoryDidClear:(id)clear
{
  clearCopy = clear;
  selfCopy = self;
  sub_219524F58(&unk_282A27E38);
}

- (void)readingHistoryLikelyClearedRemotely:(id)remotely
{
  remotelyCopy = remotely;
  selfCopy = self;
  sub_219524F58(&unk_282A27E60);
}

- (void)readingHistory:(id)history didRemoveArticlesWithIDs:(id)ds
{
  historyCopy = history;
  selfCopy = self;
  sub_219524F58(&unk_282A27E88);
}

@end