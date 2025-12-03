@interface RecipeBoxViewController
- (_TtC7NewsUI223RecipeBoxViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelSearch;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation RecipeBoxViewController

- (_TtC7NewsUI223RecipeBoxViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21918A524();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_21918ADC4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_21918B060();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21918B498(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21918B5A0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(RecipeBoxViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 | 0x7000000000000006;
  sub_219BE7864();
  sub_218932F9C(v6);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21918B7CC(change);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_21918BB18();
}

- (void)cancelSearch
{
  selfCopy = self;
  sub_21918CF58();
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:?];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  sub_21918E6F4(barCopy);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21918E9F4();
}

- (void)willPresentSearchController:(id)controller
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_showCancelButton) = 1;
  selfCopy = self;
  sub_219189EBC();
}

- (void)willDismissSearchController:(id)controller
{
  selfCopy = self;
  v3 = sub_21918A07C();
  if (v5)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;

    sub_21918E334(v6, v7, v8);
  }

  else
  {
    *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_showCancelButton) = 0;
    sub_219189EBC();
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  v3 = sub_219BF65B4();
  searchController = [v3 searchController];

  if (searchController)
  {
    [searchController resignFirstResponder];
  }

  sub_219BE86D4();
}

@end