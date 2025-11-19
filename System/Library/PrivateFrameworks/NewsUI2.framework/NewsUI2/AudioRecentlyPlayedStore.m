@interface AudioRecentlyPlayedStore
- (_TtC7NewsUI224AudioRecentlyPlayedStore)init;
- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4;
- (void)readingHistoryDidClear:(id)a3;
@end

@implementation AudioRecentlyPlayedStore

- (_TtC7NewsUI224AudioRecentlyPlayedStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingHistoryDidClear:(id)a3
{
  v3 = self;

  sub_219BE20C4();
}

- (void)readingHistory:(id)a3 didChangeFeaturesForArticles:(id)a4
{
  sub_2186C6148(0, &qword_280E8DA20);
  v6 = sub_219BF5214();
  v7 = a3;
  v8 = self;
  sub_219959A30(v6);
}

@end