@interface ChannelPickerViewController
- (_TtC7NewsUI227ChannelPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissVC;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ChannelPickerViewController

- (_TtC7NewsUI227ChannelPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219124BF4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ChannelPickerViewController *)&v4 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2191251F4(a3);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(ChannelPickerViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_blueprintViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
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

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(ChannelPickerViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_219126C94();
}

- (void)dismissVC
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_postPurchaseOnboardingTransitionDelegate))
  {
    swift_getObjectType();
    v2 = self;
    swift_unknownObjectRetain();
    sub_219BE4734();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = self;
  }

  sub_2196CAC68();
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  sub_219BF5414();
  v6 = a3;
  v7 = self;
  sub_219126854(v6);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2191269F4(v4);
}

@end