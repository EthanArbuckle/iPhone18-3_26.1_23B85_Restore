@interface RecipeBoxViewController
- (_TtC7NewsUI223RecipeBoxViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelSearch;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation RecipeBoxViewController

- (_TtC7NewsUI223RecipeBoxViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21918A524();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_21918ADC4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_21918B060();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21918B498(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_21918B5A0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(RecipeBoxViewController *)&v7 viewDidDisappear:v3];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 | 0x7000000000000006;
  sub_219BE7864();
  sub_218932F9C(v6);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21918B7CC(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_21918BB18();
}

- (void)cancelSearch
{
  v2 = self;
  sub_21918CF58();
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:?];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_21918E6F4(v5);
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21918E9F4();
}

- (void)willPresentSearchController:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_showCancelButton) = 1;
  v3 = self;
  sub_219189EBC();
}

- (void)willDismissSearchController:(id)a3
{
  v9 = self;
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
    *(&v9->super.super.super.isa + OBJC_IVAR____TtC7NewsUI223RecipeBoxViewController_showCancelButton) = 0;
    sub_219189EBC();
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = self;
  v3 = sub_219BF65B4();
  v4 = [v3 searchController];

  if (v4)
  {
    [v4 resignFirstResponder];
  }

  sub_219BE86D4();
}

@end