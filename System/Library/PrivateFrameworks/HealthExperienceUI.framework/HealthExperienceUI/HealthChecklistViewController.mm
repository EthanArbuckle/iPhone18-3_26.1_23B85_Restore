@interface HealthChecklistViewController
- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCollectionViewLayout:(id)a3;
- (void)dismissProfile:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation HealthChecklistViewController

- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_1BA0B4888();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = self;
  sub_1BA4A71E8();
  v9 = 6;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for HealthChecklistViewController();
  v8.receiver = v6;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BA0B4AEC(a3);
}

- (void)dismissProfile:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v5 = [(HealthChecklistViewController *)v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [(HealthChecklistViewController *)v5 dismissViewControllerAnimated:1 completion:0];

    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v7);
}

- (_TtC18HealthExperienceUI29HealthChecklistViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end