@interface ProfileViewController
- (_TtC18HealthExperienceUI21ProfileViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI21ProfileViewController)initWithCollectionViewLayout:(id)a3;
- (void)dismissProfile:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation ProfileViewController

- (_TtC18HealthExperienceUI21ProfileViewController)initWithCoder:(id)a3
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

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = self;
  sub_1BA4A71E8();
  v9 = 7;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for ProfileViewController();
  v8.receiver = v6;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA3888C0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ProfileViewController();
  v4 = v14.receiver;
  [(CompoundDataSourceCollectionViewController *)&v14 viewDidAppear:v3];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA388F08(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA3891A8(v4);
}

- (void)dismissProfile:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v5 = [(ProfileViewController *)v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [(ProfileViewController *)v5 dismissViewControllerAnimated:1 completion:0];

    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC18HealthExperienceUI21ProfileViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  ProfileViewController.restoreUserActivityState(_:)(v4);
}

@end