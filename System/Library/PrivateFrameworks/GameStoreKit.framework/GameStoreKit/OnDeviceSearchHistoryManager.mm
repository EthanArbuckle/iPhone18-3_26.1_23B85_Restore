@interface OnDeviceSearchHistoryManager
- (_TtC12GameStoreKit28OnDeviceSearchHistoryManager)init;
- (id)fetchRecentsWithLimit:(int64_t)limit;
- (void)clearRecents;
- (void)removeRecentSearchTerm:(id)term;
- (void)saveRecentSearchWithLimit:(id)limit :(int64_t)a4;
@end

@implementation OnDeviceSearchHistoryManager

- (id)fetchRecentsWithLimit:(int64_t)limit
{
  sub_24E9B9C28();
  selfCopy = self;
  v5 = sub_24F92C448();
  v6 = sub_24F92C458();

  return v6;
}

- (void)saveRecentSearchWithLimit:(id)limit :(int64_t)a4
{
  sub_24E9B9C28();
  limitCopy = limit;
  selfCopy = self;
  v8 = sub_24F92C448();
}

- (void)removeRecentSearchTerm:(id)term
{
  sub_24F92B0D8();
  sub_24E9B9C28();
  selfCopy = self;
  v5 = sub_24F92C448();
}

- (void)clearRecents
{
  sub_24E9B9C28();
  selfCopy = self;
  v4 = sub_24F92C448();
}

- (_TtC12GameStoreKit28OnDeviceSearchHistoryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end