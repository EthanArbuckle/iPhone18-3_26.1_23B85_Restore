@interface HealthChecklistViewController
- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCollectionViewLayout:(id)layout;
- (void)dismissProfile:(id)profile;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation HealthChecklistViewController

- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA0B4888();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  selfCopy = self;
  sub_1BA4A71E8();
  v9 = 6;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for HealthChecklistViewController();
  v8.receiver = selfCopy;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:appearingCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BA0B4AEC(appear);
}

- (void)dismissProfile:(id)profile
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  navigationController = [(HealthChecklistViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [(HealthChecklistViewController *)navigationController dismissViewControllerAnimated:1 completion:0];

    selfCopy = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end