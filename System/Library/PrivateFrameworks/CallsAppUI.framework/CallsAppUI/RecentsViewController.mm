@interface RecentsViewController
- (UINavigationItem)navigationItem;
- (void)applicationWillResignActive;
- (void)configurationChanged;
- (void)deleteAllRecents:(id)recents;
- (void)dismissCallFilteringOnboarding;
- (void)enableCallFiltering;
- (void)presentOnboardingViewController;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showClearAllActionSheet;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPresentSearchController:(id)controller;
@end

@implementation RecentsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  RecentsViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  RecentsViewController.viewWillAppear(_:)(appear);
}

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  RecentsViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  RecentsViewController.viewWillDisappear(_:)(disappear);
}

- (void)applicationWillResignActive
{
  v3 = sub_1CFC9CF08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
  (*(v4 + 104))(v8, *MEMORY[0x1E6995A70], v3, v6);
  selfCopy = self;
  sub_1CFC9C788();
  (*(v4 + 8))(v8, v3);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(RecentsViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_1CFC6C1E0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CFC5D3A0;
  v11[3] = &block_descriptor_152_0;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)deleteAllRecents:(id)recents
{
  v4 = sub_1CFC9BDC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9BDB8();
  selfCopy = self;
  sub_1CFC5D538();

  (*(v5 + 8))(v8, v4);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  RecentsViewController.setEditing(_:animated:)(editing, animated);
}

- (void)showClearAllActionSheet
{
  selfCopy = self;
  sub_1CFC5F350();
}

- (void)enableCallFiltering
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1CFC9F968();
  selfCopy = self;
  v9 = sub_1CFC9F958();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = selfCopy;
  sub_1CFBDC030(0, 0, v6, &unk_1CFCA7BB8, v10);
}

- (void)dismissCallFilteringOnboarding
{
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController);
  selfCopy = self;
  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
    v6 = *(&self->super.super.super.super.super.isa + v3);
  }

  else
  {
    v6 = 0;
  }

  *(&self->super.super.super.super.super.isa + v3) = 0;
}

- (void)configurationChanged
{
  selfCopy = self;
  RecentsViewController.configurationChanged()();
}

- (void)presentOnboardingViewController
{
  selfCopy = self;
  [(RecentsViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController) startOnboardingOrEditForMode:1 fromViewController:?];
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  _s10CallsAppUI21RecentsViewControllerC017willPresentSearchF0yySo08UISearchF0CF_0();
}

@end