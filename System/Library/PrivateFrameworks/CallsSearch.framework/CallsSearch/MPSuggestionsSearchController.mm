@interface MPSuggestionsSearchController
- (MPSearchResultsUpdatingProtocol)delegate;
- (MPSuggestedSearch)suggestionsDelegate;
- (MPSuggestionsSearchController)init;
- (MPSuggestionsSearchController)initWithTableViewController:(id)a3 callProviderManager:(id)a4;
- (NSString)sectionTitle;
- (UINavigationController)hostingNavigationController;
- (id)tableView:(id)a3 cellForRowAt:(id)a4;
- (int64_t)numberOfRowsInConsolidatedView;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)a3;
- (void)registerCellWith:(id)a3;
- (void)searchWith:(id)a3 searchTokens:(id)a4 completion:(id)a5;
- (void)setResultIDs:(id)a3;
- (void)setResults:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MPSuggestionsSearchController

- (MPSuggestedSearch)suggestionsDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)sectionTitle
{
  v2 = *(self + OBJC_IVAR___MPSuggestionsSearchController_sectionTitle);
  v3 = *(self + OBJC_IVAR___MPSuggestionsSearchController_sectionTitle + 8);

  v4 = sub_1CFB8FA80();

  return v4;
}

- (MPSearchResultsUpdatingProtocol)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UINavigationController)hostingNavigationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setResults:(id)a3
{
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPSuggestionsSearchController_results);
  *(self + OBJC_IVAR___MPSuggestionsSearchController_results) = v4;
  v6 = self;

  sub_1CFB6B864();
}

- (void)setResultIDs:(id)a3
{
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPSuggestionsSearchController_resultIDs);
  *(self + OBJC_IVAR___MPSuggestionsSearchController_resultIDs) = v4;
}

- (MPSuggestionsSearchController)initWithTableViewController:(id)a3 callProviderManager:(id)a4
{
  v7 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v8 = a3;
  v9 = a4;
  v10 = [v7 init];
  v11 = [(MPSuggestionsSearchController *)self initWithTableViewController:v8 feautureFlags:v10 callProviderManager:v9];

  return v11;
}

- (void)searchWith:(id)a3 searchTokens:(id)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(a5);
  if (a3)
  {
    a3 = sub_1CFB8FA90();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v15 = sub_1CFB8FB30();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = sub_1CFB8FBF0();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_1CFB8FBC0();
  v18 = self;

  v19 = sub_1CFB8FBB0();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = a3;
  v20[6] = v14;
  v20[7] = v15;
  v20[8] = sub_1CFB6DFBC;
  v20[9] = v16;
  sub_1CFB80934(0, 0, v11, &unk_1CFB920A8, v20);
}

- (void)cancelPreviousSearchRequests
{
  v2 = self;
  sub_1CFB6D780();
}

- (void)registerCellWith:(id)a3
{
  type metadata accessor for SuggestionsSearchViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = a3;
  v5 = sub_1CFB8FA80();
  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = *(self + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
  v12 = a3;
  v13 = self;
  v14 = sub_1CFB8F740();
  [v11 tableView:v12 didSelectRowAtIndexPath:v14];

  v15 = sub_1CFB8F740();
  [v12 deselectRowAtIndexPath:v15 animated:0];

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)a3 cellForRowAt:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = *(self + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
  v12 = a3;
  v13 = self;
  v14 = sub_1CFB8F740();
  v15 = [v11 tableView:v12 cellForRowAtIndexPath:v14];

  (*(v7 + 8))(v10, v6);

  return v15;
}

- (void)highlightMatchedTextIn:(id)a3
{
  type metadata accessor for SuggestionsSearchViewCell();
  if (swift_dynamicCastClass())
  {
    v5 = *(self + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
    v12 = a3;
    v6 = self;
    v7 = [v5 searchText];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1CFB8FA90();
      v11 = v10;

      sub_1CFB7EAD8(v9, v11);
    }

    else
    {
    }
  }
}

- (int64_t)numberOfRowsInConsolidatedView
{
  v2 = self;
  v3 = [(MPSuggestionsSearchController *)v2 results];
  v4 = sub_1CFB8FB30();

  v5 = *(v4 + 16);

  v6 = [(MPSuggestionsSearchController *)v2 maximumNumberOfRowsInSection];

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (MPSuggestionsSearchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end