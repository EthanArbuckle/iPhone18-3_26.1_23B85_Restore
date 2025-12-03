@interface AudioHistoryFeedDataManager
- (_TtC7NewsUI227AudioHistoryFeedDataManager)init;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
@end

@implementation AudioHistoryFeedDataManager

- (_TtC7NewsUI227AudioHistoryFeedDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  sub_2186C6148(0, &qword_280E8DA20);
  v6 = sub_219BF5214();
  historyCopy = history;
  selfCopy = self;
  sub_218CEBA08(historyCopy, v6);
}

@end