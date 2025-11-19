@interface SearchViewController
- (_TtC7NewsUI220SearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (void)dealloc;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(SearchViewController *)&v5 dealloc];
}

- (_TtC7NewsUI220SearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218DA3108();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_218DA352C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(SearchViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218DA62C8();
}

- (id)contentScrollView
{
  v2 = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_218DA6504();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v3 = self;
  MEMORY[0x21CEC15C0]();
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = self;
  if (Strong)
  {
    [Strong resignFirstResponder];
  }

  sub_219BE86D4();
}

@end