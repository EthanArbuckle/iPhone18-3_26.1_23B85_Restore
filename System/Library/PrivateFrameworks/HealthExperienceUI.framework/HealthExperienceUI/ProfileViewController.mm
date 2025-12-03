@interface ProfileViewController
- (_TtC18HealthExperienceUI21ProfileViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI21ProfileViewController)initWithCollectionViewLayout:(id)layout;
- (void)dismissProfile:(id)profile;
- (void)restoreUserActivityState:(id)state;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation ProfileViewController

- (_TtC18HealthExperienceUI21ProfileViewController)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  selfCopy = self;
  sub_1BA4A71E8();
  v9 = 7;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for ProfileViewController();
  v8.receiver = selfCopy;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:appearingCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA3888C0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ProfileViewController();
  v4 = v14.receiver;
  [(CompoundDataSourceCollectionViewController *)&v14 viewDidAppear:appearCopy];
  v5 = &v4[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v6 = v4[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad + 16];
  if (v6 != 255)
  {
    v8 = *v5;
    v7 = *(v5 + 1);
    v12[0] = v8;
    v12[1] = v7;
    v13 = v6;
    sub_1BA38A23C(v8, v7, v6);
    ProfileViewController.handleRestoration(restorationType:)(v12);
    sub_1BA38A254(v8, v7, v6);
    v9 = *v5;
    v10 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v11 = v5[16];
    v5[16] = -1;
    sub_1BA38A254(v9, v10, v11);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA388F08(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1BA3891A8(scrollCopy);
}

- (void)dismissProfile:(id)profile
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  navigationController = [(ProfileViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [(ProfileViewController *)navigationController dismissViewControllerAnimated:1 completion:0];

    selfCopy = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC18HealthExperienceUI21ProfileViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  ProfileViewController.restoreUserActivityState(_:)(stateCopy);
}

@end