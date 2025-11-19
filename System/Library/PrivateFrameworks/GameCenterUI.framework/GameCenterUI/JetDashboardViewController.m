@interface JetDashboardViewController
- (PSRootController)_rootController;
- (PSSpecifier)_specifier;
- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter;
- (void)didSelectPlayerAvatarView:(id)a3;
- (void)donePressed:(id)a3;
- (void)loadMoreWithContinuationToken:(id)a3;
- (void)setDataPresenter:(id)a3;
- (void)set_rootController:(id)a3;
- (void)set_specifier:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation JetDashboardViewController

- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter
{
  v2 = sub_24E04D0AC();

  return v2;
}

- (void)setDataPresenter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E04D118(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  JetDashboardViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  JetDashboardViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  JetDashboardViewController.viewWillDisappear(_:)(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  JetDashboardViewController.willMove(toParent:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  JetDashboardViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  JetDashboardViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JetDashboardViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  JetDashboardViewController.viewDidDisappear(_:)(a3);
}

- (PSRootController)_rootController
{
  v2 = sub_24E051F7C();

  return v2;
}

- (void)set_rootController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E052008(a3);
}

- (PSSpecifier)_specifier
{
  v2 = sub_24E052048();

  return v2;
}

- (void)set_specifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0520D4(a3);
}

- (void)didSelectPlayerAvatarView:(id)a3
{
  v4 = a3;
  v5 = self;
  JetDashboardViewController.didSelectPlayerAvatarView(_:)(v5);
}

- (void)donePressed:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_24E0523DC();

  sub_24DF8C95C(v6, &qword_27F1E0370);
}

- (void)loadMoreWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E052630();
}

@end