@interface AudioRecentlyPlayedStore
- (_TtC7NewsUI224AudioRecentlyPlayedStore)init;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
- (void)readingHistoryDidClear:(id)clear;
@end

@implementation AudioRecentlyPlayedStore

- (_TtC7NewsUI224AudioRecentlyPlayedStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistoryDidClear:(id)clear
{
  selfCopy = self;

  sub_219BE20C4();
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  sub_2186C6148(0, &qword_280E8DA20);
  v6 = sub_219BF5214();
  historyCopy = history;
  selfCopy = self;
  sub_219959A30(v6);
}

@end