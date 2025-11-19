@interface AudioFeedDataManager
- (_TtC7NewsUI220AudioFeedDataManager)init;
- (void)readingHistory:(id)a3 didAddArticlesWithIDs:(id)a4;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
- (void)readingHistory:(id)a3 didRemoveArticlesWithIDs:(id)a4;
- (void)readingHistoryDidClear:(id)a3;
- (void)readingHistoryLikelyClearedRemotely:(id)a3;
@end

@implementation AudioFeedDataManager

- (_TtC7NewsUI220AudioFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistory:(id)a3 didAddArticlesWithIDs:(id)a4
{
  sub_219BF5924();
  v6 = a3;
  v7 = self;
  sub_2195231D0(v6);
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  sub_2186C6148(0, &qword_280E8DA20);
  v6 = sub_219BF5214();
  v7 = a3;
  v8 = self;
  sub_219524EA0(v6);
}

- (void)readingHistoryDidClear:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219524F58(&unk_282A27E38);
}

- (void)readingHistoryLikelyClearedRemotely:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_219524F58(&unk_282A27E60);
}

- (void)readingHistory:(id)a3 didRemoveArticlesWithIDs:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_219524F58(&unk_282A27E88);
}

@end