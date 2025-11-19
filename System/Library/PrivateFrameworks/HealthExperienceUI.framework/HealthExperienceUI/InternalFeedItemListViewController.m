@interface InternalFeedItemListViewController
- (_TtC18HealthExperienceUI34InternalFeedItemListViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI34InternalFeedItemListViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation InternalFeedItemListViewController

- (_TtC18HealthExperienceUI34InternalFeedItemListViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds) = MEMORY[0x1E69E7CC0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for InternalFeedItemListViewController();
  v4 = a3;
  v5 = [(CompoundDataSourceCollectionViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = self;
  sub_1BA4A71E8();
  v9 = 11;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for InternalFeedItemListViewController();
  v8.receiver = v6;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA1BEB54();
}

- (_TtC18HealthExperienceUI34InternalFeedItemListViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end