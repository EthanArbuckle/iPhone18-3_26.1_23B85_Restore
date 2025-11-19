@interface MPContactsSearchController
- (MPContactsSearchController)init;
- (MPContactsSearchController)initWithContactSearchType:(int64_t)a3 contactViewControllerProvider:(id)a4 searchResultsRanker:(id)a5 senderIdentityProvider:(id)a6 callProviderManagerProvider:(id)a7;
- (MPContactsSearchController)initWithContactSearchType:(int64_t)a3 searchManager:(id)a4 featureFlags:(id)a5 contactViewControllerProvider:(id)a6 senderIdentityProvider:(id)a7 callProviderManagerProvider:(id)a8;
- (MPSearchResultsUpdatingProtocol)delegate;
- (NSArray)searchTokens;
- (NSString)searchText;
- (NSString)sectionTitle;
- (UINavigationController)hostingNavigationController;
- (id)tableView:(id)a3 cellForRowAt:(id)a4;
- (id)viewForDetails;
- (int64_t)configureWith:(id)a3 presentationResultForIndex:(id)a4;
- (int64_t)numberOfRowsInConsolidatedView;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)a3;
- (void)registerCellWith:(id)a3;
- (void)searchWith:(id)a3 searchTokens:(id)a4 completion:(id)a5;
- (void)setHostingNavigationController:(id)a3;
- (void)setSearchText:(id)a3;
- (void)setSearchTokens:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation MPContactsSearchController

- (NSString)sectionTitle
{
  v2 = *(self + OBJC_IVAR___MPContactsSearchController_sectionTitle);
  v3 = *(self + OBJC_IVAR___MPContactsSearchController_sectionTitle + 8);

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
  v2 = self;
  v3 = [(MPContactsSearchController *)v2 contactsTableViewController];
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setHostingNavigationController:(id)a3
{
  v5 = a3;
  v4 = [(MPContactsSearchController *)self contactsTableViewController];
  swift_unknownObjectWeakAssign();
}

- (NSString)searchText
{
  if (*(self + OBJC_IVAR___MPContactsSearchController_searchText + 8))
  {
    v2 = *(self + OBJC_IVAR___MPContactsSearchController_searchText);
    v3 = *(self + OBJC_IVAR___MPContactsSearchController_searchText + 8);

    v4 = sub_1CFB8FA80();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchText:(id)a3
{
  if (a3)
  {
    v4 = sub_1CFB8FA90();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MPContactsSearchController_searchText);
  v7 = *(self + OBJC_IVAR___MPContactsSearchController_searchText + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSArray)searchTokens
{
  v2 = *(self + OBJC_IVAR___MPContactsSearchController_searchTokens);
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);

  v3 = sub_1CFB8FB20();

  return v3;
}

- (void)setSearchTokens:(id)a3
{
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPContactsSearchController_searchTokens);
  *(self + OBJC_IVAR___MPContactsSearchController_searchTokens) = v4;
}

- (MPContactsSearchController)initWithContactSearchType:(int64_t)a3 contactViewControllerProvider:(id)a4 searchResultsRanker:(id)a5 senderIdentityProvider:(id)a6 callProviderManagerProvider:(id)a7
{
  v11 = _Block_copy(a4);
  v12 = _Block_copy(a5);
  v13 = _Block_copy(a6);
  v14 = _Block_copy(a7);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  return sub_1CFB811F8(a3, sub_1CFB847F8, v15, sub_1CFB76F0C, v16, sub_1CFB847F8, v17, sub_1CFB84808, v18);
}

- (MPContactsSearchController)initWithContactSearchType:(int64_t)a3 searchManager:(id)a4 featureFlags:(id)a5 contactViewControllerProvider:(id)a6 senderIdentityProvider:(id)a7 callProviderManagerProvider:(id)a8
{
  v13 = _Block_copy(a6);
  v14 = _Block_copy(a7);
  v15 = _Block_copy(a8);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  return sub_1CFB81698(a3, a4, a5, sub_1CFB84760, v16, sub_1CFB84760, v17, sub_1CFB8479C, v18);
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
  v20[8] = sub_1CFB842A4;
  v20[9] = v16;
  sub_1CFB80934(0, 0, v11, &unk_1CFB92528, v20);
}

- (void)cancelPreviousSearchRequests
{
  v2 = self;
  sub_1CFB838AC();
}

- (void)registerCellWith:(id)a3
{
  type metadata accessor for ContactSearchViewCell();
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
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = [(MPContactsSearchController *)v12 contactsTableViewController];
  sub_1CFB7C780(v11, v10);

  v14 = sub_1CFB8F740();
  [v11 deselectRowAtIndexPath:v14 animated:0];

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)a3 cellForRowAt:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = [(MPContactsSearchController *)v12 contactsTableViewController];
  v14 = sub_1CFB7C12C(v11, v10);

  type metadata accessor for ContactSearchViewCell();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    (*(v7 + 8))(v10, v6);

    return v16;
  }

  else
  {

    result = sub_1CFB8FFA0();
    __break(1u);
  }

  return result;
}

- (int64_t)numberOfRowsInConsolidatedView
{
  v2 = self;
  v3 = [(MPContactsSearchController *)v2 results];
  v4 = sub_1CFB8FB30();

  v5 = *(v4 + 16);

  v6 = [(MPContactsSearchController *)v2 maximumNumberOfRowsInSection];

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (void)highlightMatchedTextIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CFB83E68(v4);
}

- (int64_t)configureWith:(id)a3 presentationResultForIndex:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = [(MPContactsSearchController *)v12 contactsTableViewController];
  v14 = sub_1CFB7D75C(v11);

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (id)viewForDetails
{
  v2 = [(MPContactsSearchController *)self contactsTableViewController];

  return v2;
}

- (MPContactsSearchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end