@interface JetDashboardViewController
- (PSRootController)_rootController;
- (PSSpecifier)_specifier;
- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter;
- (void)didSelectPlayerAvatarView:(id)view;
- (void)donePressed:(id)pressed;
- (void)loadMoreWithContinuationToken:(id)token;
- (void)setDataPresenter:(id)presenter;
- (void)set_rootController:(id)controller;
- (void)set_specifier:(id)set_specifier;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation JetDashboardViewController

- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter
{
  v2 = sub_24E04D0AC();

  return v2;
}

- (void)setDataPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24E04D118(presenterCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  JetDashboardViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  JetDashboardViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  JetDashboardViewController.viewWillDisappear(_:)(disappear);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  JetDashboardViewController.willMove(toParent:)(controller);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  JetDashboardViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  JetDashboardViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  JetDashboardViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  JetDashboardViewController.viewDidDisappear(_:)(disappear);
}

- (PSRootController)_rootController
{
  v2 = sub_24E051F7C();

  return v2;
}

- (void)set_rootController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_24E052008(controller);
}

- (PSSpecifier)_specifier
{
  v2 = sub_24E052048();

  return v2;
}

- (void)set_specifier:(id)set_specifier
{
  set_specifierCopy = set_specifier;
  selfCopy = self;
  sub_24E0520D4(set_specifier);
}

- (void)didSelectPlayerAvatarView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  JetDashboardViewController.didSelectPlayerAvatarView(_:)(selfCopy);
}

- (void)donePressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24E0523DC();

  sub_24DF8C95C(v6, &qword_27F1E0370);
}

- (void)loadMoreWithContinuationToken:(id)token
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24E052630();
}

@end