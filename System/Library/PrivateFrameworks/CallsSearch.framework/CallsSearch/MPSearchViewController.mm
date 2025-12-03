@interface MPSearchViewController
- (BOOL)needsReindexing;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (MPSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MPSearchViewControllerDelegate)delegate;
- (NSArray)searchControllers;
- (NSArray)searchTokens;
- (NSString)compositeSearchText;
- (NSString)searchText;
- (UINavigationController)hostingNavigationController;
- (_TtC11CallsSearch16SearchFooterCell)footerView;
- (_TtC11CallsSearch27ContactAvatarCardController)contactAvatarCardController;
- (double)heightForFooterInTableView:(id)view;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)searchControllerProvider;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)viewForFooterInTableView:(id)view;
- (int64_t)configureWithCardController:(id)controller presentationResultForIndex:(id)index;
- (int64_t)contentInsetAdjustmentBehavior;
- (void)didCompleteSearch;
- (void)didSelectSuggestedSearchWithToken:(id)token;
- (void)loadConstraints;
- (void)performSearch:(id)search :(id)a4;
- (void)presentSeeAllViewControllerFor:(id)for;
- (void)prewarmSearchControllersAfterSeconds:(double)seconds;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setContactAvatarCardController:(id)controller;
- (void)setContentInsetAdjustmentBehavior:(int64_t)behavior;
- (void)setFooterView:(id)view;
- (void)setHostingNavigationController:(id)controller;
- (void)setSearchControllerProvider:(id)provider;
- (void)setSearchControllers:(id)controllers;
- (void)setSearchText:(id)text;
- (void)setSearchTokens:(id)tokens;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateTableViewSeperatorInset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MPSearchViewController

- (MPSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1CFB8FA90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MPSearchViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)setHostingNavigationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1CFB66098();
}

- (NSArray)searchControllers
{
  selfCopy = self;
  v3 = sub_1CFB5E0B0();

  v4 = *&v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v5 = sub_1CFB8FB20();

  return v5;
}

- (void)setSearchControllerProvider:(id)provider
{
  v4 = _Block_copy(provider);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1CFB66BD4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___MPSearchViewController_searchControllerProvider);
  v8 = *(self + OBJC_IVAR___MPSearchViewController_searchControllerProvider);
  v9 = *(self + OBJC_IVAR___MPSearchViewController_searchControllerProvider + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1CFB5F258(v8);
}

- (MPSearchViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11CallsSearch16SearchFooterCell)footerView
{
  selfCopy = self;
  v3 = sub_1CFB60498();

  return v3;
}

- (void)setFooterView:(id)view
{
  v4 = *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___footerView);
  *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___footerView) = view;
  viewCopy = view;
}

- (UINavigationController)hostingNavigationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11CallsSearch27ContactAvatarCardController)contactAvatarCardController
{
  selfCopy = self;
  v3 = sub_1CFB60600();

  return v3;
}

- (void)setContactAvatarCardController:(id)controller
{
  v4 = *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController);
  *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController) = controller;
  controllerCopy = controller;
}

- (NSString)searchText
{
  if (*(self + OBJC_IVAR___MPSearchViewController_searchText + 8))
  {
    v2 = *(self + OBJC_IVAR___MPSearchViewController_searchText);
    v3 = *(self + OBJC_IVAR___MPSearchViewController_searchText + 8);

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

  v6 = (self + OBJC_IVAR___MPSearchViewController_searchText);
  v7 = *(self + OBJC_IVAR___MPSearchViewController_searchText + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSArray)searchTokens
{
  v2 = *(self + OBJC_IVAR___MPSearchViewController_searchTokens);
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);

  v3 = sub_1CFB8FB20();

  return v3;
}

- (void)setSearchTokens:(id)tokens
{
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v4 = sub_1CFB8FB30();
  v5 = *(self + OBJC_IVAR___MPSearchViewController_searchTokens);
  *(self + OBJC_IVAR___MPSearchViewController_searchTokens) = v4;
}

- (id)searchControllerProvider
{
  if (*(self + OBJC_IVAR___MPSearchViewController_searchControllerProvider))
  {
    v2 = *(self + OBJC_IVAR___MPSearchViewController_searchControllerProvider + 8);
    v5[4] = *(self + OBJC_IVAR___MPSearchViewController_searchControllerProvider);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1CFB60958;
    v5[3] = &block_descriptor_28;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchControllers:(id)controllers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v4 = sub_1CFB8FB30();
  selfCopy = self;
  sub_1CFB60AB0(v4);
}

- (int64_t)contentInsetAdjustmentBehavior
{
  selfCopy = self;
  tableView = [(MPSearchViewController *)selfCopy tableView];
  contentInsetAdjustmentBehavior = [(UITableView *)tableView contentInsetAdjustmentBehavior];

  return contentInsetAdjustmentBehavior;
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)behavior
{
  selfCopy = self;
  tableView = [(MPSearchViewController *)selfCopy tableView];
  [(UITableView *)tableView setContentInsetAdjustmentBehavior:behavior];
}

- (void)viewDidLoad
{
  selfCopy = self;
  MPSearchViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  contactAvatarCardController = [(MPSearchViewController *)selfCopy contactAvatarCardController];
  v4 = ContactAvatarCardController.cardController.getter();

  view = [(MPSearchViewController *)selfCopy view];
  [v4 setSourceView_];
}

- (void)loadConstraints
{
  selfCopy = self;
  sub_1CFB614A0();
}

- (void)updateTableViewSeperatorInset
{
  selfCopy = self;
  sub_1CFB6181C();
}

- (void)prewarmSearchControllersAfterSeconds:(double)seconds
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_1CFB8FBF0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFB8FBC0();
  selfCopy = self;

  v12 = sub_1CFB8FBB0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = seconds;
  *(v13 + 40) = v10;

  sub_1CFB80934(0, 0, v8, &unk_1CFB91F20, v13);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  searchBar = [controllerCopy searchBar];
  MPSearchViewController.updateSearchResults(for:)(searchBar);
}

- (void)didSelectSuggestedSearchWithToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_1CFB62410(tokenCopy);
}

- (void)performSearch:(id)search :(id)a4
{
  if (search)
  {
    v5 = sub_1CFB8FA90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v8 = sub_1CFB8FB30();
  selfCopy = self;
  sub_1CFB62770(v5, v7, v8);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_1CFB8F780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1CFB62AB4(viewCopy, cellCopy);

  (*(v9 + 8))(v12, v8);
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1CFB62F14(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(section) = sub_1CFB662D0(section);

  return section & 1;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1CFB63494(viewCopy, section);

  return v8;
}

- (void)presentSeeAllViewControllerFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFB63C10(for);
  swift_unknownObjectRelease();
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1CFB66534(section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1CFB66654(section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1CFB667B8(section);

  return v8;
}

- (id)viewForFooterInTableView:(id)view
{
  selfCopy = self;
  if ([(MPSearchViewController *)selfCopy needsReindexing])
  {
    footerView = [(MPSearchViewController *)selfCopy footerView];
  }

  else
  {
    footerView = 0;
  }

  return footerView;
}

- (double)heightForFooterInTableView:(id)view
{
  selfCopy = self;
  v4 = 0.0;
  if ([(MPSearchViewController *)selfCopy needsReindexing])
  {
    footerView = [(MPSearchViewController *)selfCopy footerView];

    v4 = *(&footerView->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerHeight);
    selfCopy = footerView;
  }

  return v4;
}

- (BOOL)needsReindexing
{
  selfCopy = self;
  sub_1CFB64460();
  v4 = v3;

  return v4 & 1;
}

- (void)didCompleteSearch
{
  selfCopy = self;
  sub_1CFB645B8();
}

- (NSString)compositeSearchText
{
  selfCopy = self;
  sub_1CFB64B88();

  v3 = sub_1CFB8FA80();

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  delegate = [(MPSearchViewController *)selfCopy delegate];
  if (delegate)
  {
    [(MPSearchViewControllerDelegate *)delegate searchControllerBeginDragging];
    swift_unknownObjectRelease();
  }
}

- (int64_t)configureWithCardController:(id)controller presentationResultForIndex:(id)index
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  controllerCopy = controller;
  selfCopy = self;
  v13 = sub_1CFB64F98(controllerCopy);

  (*(v7 + 8))(v10, v6);
  return v13;
}

@end