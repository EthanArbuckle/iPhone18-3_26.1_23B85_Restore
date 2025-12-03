@interface SearchViewController
- (_TtC7NewsUI220SearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (void)dealloc;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(SearchViewController *)&v5 dealloc];
}

- (_TtC7NewsUI220SearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218DA3108();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_218DA352C();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(SearchViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218DA62C8();
}

- (id)contentScrollView
{
  selfCopy = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  sub_218DA6504();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  selfCopy = self;
  MEMORY[0x21CEC15C0]();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    [Strong resignFirstResponder];
  }

  sub_219BE86D4();
}

@end