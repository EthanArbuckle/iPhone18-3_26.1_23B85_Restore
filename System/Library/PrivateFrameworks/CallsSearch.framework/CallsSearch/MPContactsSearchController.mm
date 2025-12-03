@interface MPContactsSearchController
- (MPContactsSearchController)init;
- (MPContactsSearchController)initWithContactSearchType:(int64_t)type contactViewControllerProvider:(id)provider searchResultsRanker:(id)ranker senderIdentityProvider:(id)identityProvider callProviderManagerProvider:(id)managerProvider;
- (MPContactsSearchController)initWithContactSearchType:(int64_t)type searchManager:(id)manager featureFlags:(id)flags contactViewControllerProvider:(id)provider senderIdentityProvider:(id)identityProvider callProviderManagerProvider:(id)managerProvider;
- (MPSearchResultsUpdatingProtocol)delegate;
- (NSArray)searchTokens;
- (NSString)searchText;
- (NSString)sectionTitle;
- (UINavigationController)hostingNavigationController;
- (id)tableView:(id)view cellForRowAt:(id)at;
- (id)viewForDetails;
- (int64_t)configureWith:(id)with presentationResultForIndex:(id)index;
- (int64_t)numberOfRowsInConsolidatedView;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)in;
- (void)registerCellWith:(id)with;
- (void)searchWith:(id)with searchTokens:(id)tokens completion:(id)completion;
- (void)setHostingNavigationController:(id)controller;
- (void)setSearchText:(id)text;
- (void)setSearchTokens:(id)tokens;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  selfCopy = self;
  contactsTableViewController = [(MPContactsSearchController *)selfCopy contactsTableViewController];
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setHostingNavigationController:(id)controller
{
  controllerCopy = controller;
  contactsTableViewController = [(MPContactsSearchController *)self contactsTableViewController];
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

- (void)setSearchText:(id)text
{
  if (text)
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

- (void)setSearchTokens:(id)tokens
{
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPContactsSearchController_searchTokens);
  *(self + OBJC_IVAR___MPContactsSearchController_searchTokens) = v4;
}

- (MPContactsSearchController)initWithContactSearchType:(int64_t)type contactViewControllerProvider:(id)provider searchResultsRanker:(id)ranker senderIdentityProvider:(id)identityProvider callProviderManagerProvider:(id)managerProvider
{
  v11 = _Block_copy(provider);
  v12 = _Block_copy(ranker);
  v13 = _Block_copy(identityProvider);
  v14 = _Block_copy(managerProvider);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  return sub_1CFB811F8(type, sub_1CFB847F8, v15, sub_1CFB76F0C, v16, sub_1CFB847F8, v17, sub_1CFB84808, v18);
}

- (MPContactsSearchController)initWithContactSearchType:(int64_t)type searchManager:(id)manager featureFlags:(id)flags contactViewControllerProvider:(id)provider senderIdentityProvider:(id)identityProvider callProviderManagerProvider:(id)managerProvider
{
  v13 = _Block_copy(provider);
  v14 = _Block_copy(identityProvider);
  v15 = _Block_copy(managerProvider);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  return sub_1CFB81698(type, manager, flags, sub_1CFB84760, v16, sub_1CFB84760, v17, sub_1CFB8479C, v18);
}

- (void)searchWith:(id)with searchTokens:(id)tokens completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(completion);
  if (with)
  {
    with = sub_1CFB8FA90();
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
  selfCopy = self;

  v19 = sub_1CFB8FBB0();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = selfCopy;
  v20[5] = with;
  v20[6] = v14;
  v20[7] = v15;
  v20[8] = sub_1CFB842A4;
  v20[9] = v16;
  sub_1CFB80934(0, 0, v11, &unk_1CFB92528, v20);
}

- (void)cancelPreviousSearchRequests
{
  selfCopy = self;
  sub_1CFB838AC();
}

- (void)registerCellWith:(id)with
{
  type metadata accessor for ContactSearchViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  withCopy = with;
  v5 = sub_1CFB8FA80();
  [withCopy registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  viewCopy = view;
  selfCopy = self;
  contactsTableViewController = [(MPContactsSearchController *)selfCopy contactsTableViewController];
  sub_1CFB7C780(viewCopy, v10);

  v14 = sub_1CFB8F740();
  [viewCopy deselectRowAtIndexPath:v14 animated:0];

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)view cellForRowAt:(id)at
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  viewCopy = view;
  selfCopy = self;
  contactsTableViewController = [(MPContactsSearchController *)selfCopy contactsTableViewController];
  v14 = sub_1CFB7C12C(viewCopy, v10);

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
  selfCopy = self;
  results = [(MPContactsSearchController *)selfCopy results];
  v4 = sub_1CFB8FB30();

  v5 = *(v4 + 16);

  maximumNumberOfRowsInSection = [(MPContactsSearchController *)selfCopy maximumNumberOfRowsInSection];

  if (maximumNumberOfRowsInSection >= v5)
  {
    return v5;
  }

  else
  {
    return maximumNumberOfRowsInSection;
  }
}

- (void)highlightMatchedTextIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_1CFB83E68(inCopy);
}

- (int64_t)configureWith:(id)with presentationResultForIndex:(id)index
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  withCopy = with;
  selfCopy = self;
  contactsTableViewController = [(MPContactsSearchController *)selfCopy contactsTableViewController];
  v14 = sub_1CFB7D75C(withCopy);

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (id)viewForDetails
{
  contactsTableViewController = [(MPContactsSearchController *)self contactsTableViewController];

  return contactsTableViewController;
}

- (MPContactsSearchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end