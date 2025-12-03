@interface PlatformTabCollectionViewController
- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (void)viewDidLoad;
@end

@implementation PlatformTabCollectionViewController

- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  selfCopy = self;

  v4 = v2(selfCopy);

  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) = v4;

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for PlatformTabCollectionViewController();
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidLoad];
}

- (_TtC18HealthExperienceUI35PlatformTabCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end