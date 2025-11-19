@interface OnDeviceSearchHistoryManager
- (_TtC12GameStoreKit28OnDeviceSearchHistoryManager)init;
- (id)fetchRecentsWithLimit:(int64_t)a3;
- (void)clearRecents;
- (void)removeRecentSearchTerm:(id)a3;
- (void)saveRecentSearchWithLimit:(id)a3 :(int64_t)a4;
@end

@implementation OnDeviceSearchHistoryManager

- (id)fetchRecentsWithLimit:(int64_t)a3
{
  sub_24E9B9C28();
  v4 = self;
  v5 = sub_24F92C448();
  v6 = sub_24F92C458();

  return v6;
}

- (void)saveRecentSearchWithLimit:(id)a3 :(int64_t)a4
{
  sub_24E9B9C28();
  v6 = a3;
  v7 = self;
  v8 = sub_24F92C448();
}

- (void)removeRecentSearchTerm:(id)a3
{
  sub_24F92B0D8();
  sub_24E9B9C28();
  v4 = self;
  v5 = sub_24F92C448();
}

- (void)clearRecents
{
  sub_24E9B9C28();
  v3 = self;
  v4 = sub_24F92C448();
}

- (_TtC12GameStoreKit28OnDeviceSearchHistoryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end