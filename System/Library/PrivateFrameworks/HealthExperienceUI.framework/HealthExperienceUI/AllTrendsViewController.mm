@interface AllTrendsViewController
- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCollectionViewLayout:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation AllTrendsViewController

- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables) = MEMORY[0x1E69E7CD0];
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
  v9 = 13;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for AllTrendsViewController();
  v8.receiver = v6;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA37FB78();
}

- (void)restoreUserActivityState:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AllTrendsViewController();
  [(AllTrendsViewController *)&v4 restoreUserActivityState:a3];
}

- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end