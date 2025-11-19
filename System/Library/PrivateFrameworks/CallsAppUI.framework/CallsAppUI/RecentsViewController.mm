@interface RecentsViewController
- (UINavigationItem)navigationItem;
- (void)applicationWillResignActive;
- (void)configurationChanged;
- (void)deleteAllRecents:(id)a3;
- (void)dismissCallFilteringOnboarding;
- (void)enableCallFiltering;
- (void)presentOnboardingViewController;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showClearAllActionSheet;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPresentSearchController:(id)a3;
@end

@implementation RecentsViewController

- (void)viewDidLoad
{
  v2 = self;
  RecentsViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  RecentsViewController.viewWillAppear(_:)(a3);
}

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  RecentsViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  RecentsViewController.viewWillDisappear(_:)(a3);
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
  v10 = self;
  sub_1CFC9C788();
  (*(v4 + 8))(v8, v3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(RecentsViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)deleteAllRecents:(id)a3
{
  v4 = sub_1CFC9BDC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9BDB8();
  v9 = self;
  sub_1CFC5D538();

  (*(v5 + 8))(v8, v4);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  RecentsViewController.setEditing(_:animated:)(a3, a4);
}

- (void)showClearAllActionSheet
{
  v2 = self;
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
  v8 = self;
  v9 = sub_1CFC9F958();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_1CFBDC030(0, 0, v6, &unk_1CFCA7BB8, v10);
}

- (void)dismissCallFilteringOnboarding
{
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController);
  v5 = self;
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
  v2 = self;
  RecentsViewController.configurationChanged()();
}

- (void)presentOnboardingViewController
{
  v2 = self;
  [(RecentsViewController *)v2 dismissViewControllerAnimated:1 completion:0];
  [*(&v2->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController) startOnboardingOrEditForMode:1 fromViewController:?];
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  _s10CallsAppUI21RecentsViewControllerC017willPresentSearchF0yySo08UISearchF0CF_0();
}

@end