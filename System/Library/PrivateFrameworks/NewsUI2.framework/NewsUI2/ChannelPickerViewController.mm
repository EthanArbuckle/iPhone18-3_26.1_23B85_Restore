@interface ChannelPickerViewController
- (_TtC7NewsUI227ChannelPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissVC;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation ChannelPickerViewController

- (_TtC7NewsUI227ChannelPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219124BF4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ChannelPickerViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2191251F4(appear);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ChannelPickerViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(ChannelPickerViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_219126C94();
}

- (void)dismissVC
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_postPurchaseOnboardingTransitionDelegate))
  {
    swift_getObjectType();
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_219BE4734();
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  sub_2196CAC68();
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  sub_219BF5414();
  barCopy = bar;
  selfCopy = self;
  sub_219126854(barCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_2191269F4(clickedCopy);
}

@end