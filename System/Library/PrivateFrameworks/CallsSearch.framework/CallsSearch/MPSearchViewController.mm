@interface MPSearchViewController
- (BOOL)needsReindexing;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (MPSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MPSearchViewControllerDelegate)delegate;
- (NSArray)searchControllers;
- (NSArray)searchTokens;
- (NSString)compositeSearchText;
- (NSString)searchText;
- (UINavigationController)hostingNavigationController;
- (_TtC11CallsSearch16SearchFooterCell)footerView;
- (_TtC11CallsSearch27ContactAvatarCardController)contactAvatarCardController;
- (double)heightForFooterInTableView:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)searchControllerProvider;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)viewForFooterInTableView:(id)a3;
- (int64_t)configureWithCardController:(id)a3 presentationResultForIndex:(id)a4;
- (int64_t)contentInsetAdjustmentBehavior;
- (void)didCompleteSearch;
- (void)didSelectSuggestedSearchWithToken:(id)a3;
- (void)loadConstraints;
- (void)performSearch:(id)a3 :(id)a4;
- (void)presentSeeAllViewControllerFor:(id)a3;
- (void)prewarmSearchControllersAfterSeconds:(double)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setContactAvatarCardController:(id)a3;
- (void)setContentInsetAdjustmentBehavior:(int64_t)a3;
- (void)setFooterView:(id)a3;
- (void)setHostingNavigationController:(id)a3;
- (void)setSearchControllerProvider:(id)a3;
- (void)setSearchControllers:(id)a3;
- (void)setSearchText:(id)a3;
- (void)setSearchTokens:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateTableViewSeperatorInset;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MPSearchViewController

- (MPSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1CFB8FA90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MPSearchViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)setHostingNavigationController:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1CFB66098();
}

- (NSArray)searchControllers
{
  v2 = self;
  v3 = sub_1CFB5E0B0();

  v4 = *&v3[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v5 = sub_1CFB8FB20();

  return v5;
}

- (void)setSearchControllerProvider:(id)a3
{
  v4 = _Block_copy(a3);
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
  v10 = self;
  sub_1CFB5F258(v8);
}

- (MPSearchViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11CallsSearch16SearchFooterCell)footerView
{
  v2 = self;
  v3 = sub_1CFB60498();

  return v3;
}

- (void)setFooterView:(id)a3
{
  v4 = *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___footerView);
  *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___footerView) = a3;
  v3 = a3;
}

- (UINavigationController)hostingNavigationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11CallsSearch27ContactAvatarCardController)contactAvatarCardController
{
  v2 = self;
  v3 = sub_1CFB60600();

  return v3;
}

- (void)setContactAvatarCardController:(id)a3
{
  v4 = *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController);
  *(self + OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController) = a3;
  v3 = a3;
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

- (void)setSearchTokens:(id)a3
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

- (void)setSearchControllers:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v4 = sub_1CFB8FB30();
  v5 = self;
  sub_1CFB60AB0(v4);
}

- (int64_t)contentInsetAdjustmentBehavior
{
  v2 = self;
  v3 = [(MPSearchViewController *)v2 tableView];
  v4 = [(UITableView *)v3 contentInsetAdjustmentBehavior];

  return v4;
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)a3
{
  v5 = self;
  v4 = [(MPSearchViewController *)v5 tableView];
  [(UITableView *)v4 setContentInsetAdjustmentBehavior:a3];
}

- (void)viewDidLoad
{
  v2 = self;
  MPSearchViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v3 = [(MPSearchViewController *)v6 contactAvatarCardController];
  v4 = ContactAvatarCardController.cardController.getter();

  v5 = [(MPSearchViewController *)v6 view];
  [v4 setSourceView_];
}

- (void)loadConstraints
{
  v2 = self;
  sub_1CFB614A0();
}

- (void)updateTableViewSeperatorInset
{
  v2 = self;
  sub_1CFB6181C();
}

- (void)prewarmSearchControllersAfterSeconds:(double)a3
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
  v11 = self;

  v12 = sub_1CFB8FBB0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = a3;
  *(v13 + 40) = v10;

  sub_1CFB80934(0, 0, v8, &unk_1CFB91F20, v13);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 searchBar];
  MPSearchViewController.updateSearchResults(for:)(v5);
}

- (void)didSelectSuggestedSearchWithToken:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CFB62410(v4);
}

- (void)performSearch:(id)a3 :(id)a4
{
  if (a3)
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
  v9 = self;
  sub_1CFB62770(v5, v7, v8);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_1CFB8F780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_1CFB62AB4(v13, v14);

  (*(v9 + 8))(v12, v8);
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = sub_1CFB62F14(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  LOBYTE(a4) = sub_1CFB662D0(a4);

  return a4 & 1;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1CFB63494(v6, a4);

  return v8;
}

- (void)presentSeeAllViewControllerFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1CFB63C10(a3);
  swift_unknownObjectRelease();
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1CFB66534(a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1CFB66654(a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1CFB667B8(a4);

  return v8;
}

- (id)viewForFooterInTableView:(id)a3
{
  v3 = self;
  if ([(MPSearchViewController *)v3 needsReindexing])
  {
    v4 = [(MPSearchViewController *)v3 footerView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)heightForFooterInTableView:(id)a3
{
  v3 = self;
  v4 = 0.0;
  if ([(MPSearchViewController *)v3 needsReindexing])
  {
    v5 = [(MPSearchViewController *)v3 footerView];

    v4 = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerHeight);
    v3 = v5;
  }

  return v4;
}

- (BOOL)needsReindexing
{
  v2 = self;
  sub_1CFB64460();
  v4 = v3;

  return v4 & 1;
}

- (void)didCompleteSearch
{
  v2 = self;
  sub_1CFB645B8();
}

- (NSString)compositeSearchText
{
  v2 = self;
  sub_1CFB64B88();

  v3 = sub_1CFB8FA80();

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = self;
  v3 = [(MPSearchViewController *)v4 delegate];
  if (v3)
  {
    [(MPSearchViewControllerDelegate *)v3 searchControllerBeginDragging];
    swift_unknownObjectRelease();
  }
}

- (int64_t)configureWithCardController:(id)a3 presentationResultForIndex:(id)a4
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v11 = a3;
  v12 = self;
  v13 = sub_1CFB64F98(v11);

  (*(v7 + 8))(v10, v6);
  return v13;
}

@end