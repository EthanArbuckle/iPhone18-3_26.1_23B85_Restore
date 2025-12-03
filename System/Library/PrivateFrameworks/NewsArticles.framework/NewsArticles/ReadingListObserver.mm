@interface ReadingListObserver
- (_TtC12NewsArticles19ReadingListObserver)init;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
@end

@implementation ReadingListObserver

- (_TtC12NewsArticles19ReadingListObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  v8 = sub_1D7D3063C();
  listCopy = list;
  selfCopy = self;
  sub_1D7A1AC64(v8);
}

@end