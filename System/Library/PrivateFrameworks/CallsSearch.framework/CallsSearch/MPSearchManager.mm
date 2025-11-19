@interface MPSearchManager
- (CSSearchQueryContext)queryContext;
- (MPSearchManager)init;
- (NSDictionary)subscriptionsLabelIDByLabel;
- (NSString)logPrefix;
- (id)fetchSubscriptionsInUseMap;
- (id)queryStringForSimSearchWithSearchText:(id)a3;
- (id)userQueryContextFor:(id)a3;
- (void)fetchResultsForSimSearchWithSearchText:(NSString *)a3 completionHandler:(id)a4;
- (void)providersChangedForProviderManager:(id)a3;
- (void)searchSuggestionsWithText:(NSString *)a3 completion:(id)a4;
- (void)searchWithQueryString:(NSString *)a3 completion:(id)a4;
- (void)searchWithText:(NSString *)a3 searchTokens:(NSArray *)a4 completion:(id)a5;
- (void)setSubscriptionsLabelIDByLabel:(id)a3;
- (void)setSuggestion:(id)a3;
- (void)setUserQueryContext:(id)a3;
@end

@implementation MPSearchManager

- (CSSearchQueryContext)queryContext
{
  v2 = self;
  v3 = sub_1CFB85014();

  return v3;
}

- (void)setUserQueryContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___MPSearchManager_userQueryContext);
  *(self + OBJC_IVAR___MPSearchManager_userQueryContext) = a3;
  v3 = a3;
}

- (NSDictionary)subscriptionsLabelIDByLabel
{
  v2 = *(self + OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel);

  v3 = sub_1CFB8FA30();

  return v3;
}

- (void)setSubscriptionsLabelIDByLabel:(id)a3
{
  v4 = sub_1CFB8FA40();
  v5 = *(self + OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel);
  *(self + OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel) = v4;
}

- (void)setSuggestion:(id)a3
{
  v4 = *(self + OBJC_IVAR___MPSearchManager_suggestion);
  *(self + OBJC_IVAR___MPSearchManager_suggestion) = a3;
  v3 = a3;
}

- (void)searchWithQueryString:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1CFB8FBF0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFB92628;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1CFB92630;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1CFB8C0EC(0, 0, v10, &unk_1CFB92638, v15);
}

- (void)searchWithText:(NSString *)a3 searchTokens:(NSArray *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1CFB8FBF0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1CFB925F0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1CFB925F8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1CFB8C0EC(0, 0, v12, &unk_1CFB92600, v17);
}

- (void)searchSuggestionsWithText:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1CFB8FBF0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFB925B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1CFB925C0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1CFB8C0EC(0, 0, v10, &unk_1CFB925C8, v15);
}

- (id)userQueryContextFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1CFB8A604(v4);

  return v6;
}

- (id)fetchSubscriptionsInUseMap
{
  v2 = self;
  sub_1CFB8A830();

  v3 = sub_1CFB8FA30();

  return v3;
}

- (void)fetchResultsForSimSearchWithSearchText:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1CFB8FBF0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFB92570;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1CFB922C0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1CFB8C0EC(0, 0, v10, &unk_1CFB922C8, v15);
}

- (id)queryStringForSimSearchWithSearchText:(id)a3
{
  v4 = sub_1CFB8FA90();
  v6 = v5;
  v7 = self;
  sub_1CFB8B848(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1CFB8FA80();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CFB8E74C();
}

- (NSString)logPrefix
{
  v2 = self;
  sub_1CFB8BCB4();

  v3 = sub_1CFB8FA80();

  return v3;
}

- (MPSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end