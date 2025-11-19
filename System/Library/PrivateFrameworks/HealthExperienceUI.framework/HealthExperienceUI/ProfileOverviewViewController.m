@interface ProfileOverviewViewController
- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCollectionViewLayout:(id)a3;
- (void)backButtonTapped:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ProfileOverviewViewController

- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA17D618();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA17E070(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ProfileOverviewViewController();
  v4 = v8.receiver;
  [(ProfileOverviewViewController *)&v8 viewWillDisappear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 _setBackgroundOpacity_];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProfileOverviewViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 scrollViewDidScroll:v4];
  sub_1BA17FD14();
}

- (void)backButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v5 = [(ProfileOverviewViewController *)v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [(ProfileOverviewViewController *)v5 popViewControllerAnimated:1];

    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v8);
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA17E894(v4);
}

- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end