@interface HideMyEmailSignupViewController
- (_TtC16NewsSubscription31HideMyEmailSignupViewController)initWithCoder:(id)coder;
- (_TtC16NewsSubscription31HideMyEmailSignupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HideMyEmailSignupViewController

- (_TtC16NewsSubscription31HideMyEmailSignupViewController)initWithCoder:(id)coder
{
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (_TtC16NewsSubscription31HideMyEmailSignupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D78B1074();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(HideMyEmailSignupViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_blueprintViewController] view];
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
  [(HideMyEmailSignupViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_1D78B266C();
}

@end