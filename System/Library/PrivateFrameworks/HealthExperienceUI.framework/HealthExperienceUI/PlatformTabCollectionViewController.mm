@interface PlatformTabCollectionViewController
- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewDidLoad;
@end

@implementation PlatformTabCollectionViewController

- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  v3 = self;

  v4 = v2(v3);

  *(&v3->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) = v4;

  v5.receiver = v3;
  v5.super_class = type metadata accessor for PlatformTabCollectionViewController();
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidLoad];
}

- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end