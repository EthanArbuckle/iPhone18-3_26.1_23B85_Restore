@interface MPContactSearchManager
- (BOOL)isMatchInfoValidWithMatchInfo:(id)a3;
- (MPContactSearchManager)init;
- (MPContactSearchManager)initWithType:(int64_t)a3 contactStore:(id)a4 searchResultsRanker:(id)a5;
- (NSArray)_contactSearchResults;
- (NSArray)contacts;
- (NSString)_searchString;
- (id)ranker;
- (void)cancelPreviousSearch;
- (void)searchFor:(NSString *)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5;
- (void)set_contactSearchResults:(id)a3;
- (void)set_searchString:(id)a3;
@end

@implementation MPContactSearchManager

- (id)ranker
{
  v2 = *(self + OBJC_IVAR___MPContactSearchManager_ranker + 8);
  v5[4] = *(self + OBJC_IVAR___MPContactSearchManager_ranker);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1CFB72F7C;
  v5[3] = &block_descriptor_116;
  v3 = _Block_copy(v5);

  return v3;
}

- (NSString)_searchString
{
  v2 = *(self + OBJC_IVAR___MPContactSearchManager__searchString);
  v3 = *(self + OBJC_IVAR___MPContactSearchManager__searchString + 8);

  v4 = sub_1CFB8FA80();

  return v4;
}

- (void)set_searchString:(id)a3
{
  v4 = sub_1CFB8FA90();
  v5 = (self + OBJC_IVAR___MPContactSearchManager__searchString);
  v6 = *(self + OBJC_IVAR___MPContactSearchManager__searchString + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSArray)_contactSearchResults
{
  v2 = *(self + OBJC_IVAR___MPContactSearchManager__contactSearchResults);
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);

  v3 = sub_1CFB8FB20();

  return v3;
}

- (void)set_contactSearchResults:(id)a3
{
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPContactSearchManager__contactSearchResults);
  *(self + OBJC_IVAR___MPContactSearchManager__contactSearchResults) = v4;
}

- (MPContactSearchManager)initWithType:(int64_t)a3 contactStore:(id)a4 searchResultsRanker:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a4;
  v10 = sub_1CFB76F14(a3, a4, sub_1CFB76F0C, v8);

  return v10;
}

- (NSArray)contacts
{
  v2 = self;
  sub_1CFB73C50();

  sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);
  v3 = sub_1CFB8FB20();

  return v3;
}

- (void)searchFor:(NSString *)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_1CFB8FBF0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1CFB922B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1CFB922C0;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_1CFB8C0EC(0, 0, v12, &unk_1CFB922C8, v17);
}

- (void)cancelPreviousSearch
{
  v2 = self;
  sub_1CFB75E58();
}

- (BOOL)isMatchInfoValidWithMatchInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1CFB76000(v4);

  return self & 1;
}

- (MPContactSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end