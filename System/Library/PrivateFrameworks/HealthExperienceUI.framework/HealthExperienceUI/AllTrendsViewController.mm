@interface AllTrendsViewController
- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCollectionViewLayout:(id)layout;
- (void)restoreUserActivityState:(id)state;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation AllTrendsViewController

- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables) = MEMORY[0x1E69E7CD0];
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
  v9 = 13;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for AllTrendsViewController();
  v8.receiver = selfCopy;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:appearingCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA37FB78();
}

- (void)restoreUserActivityState:(id)state
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AllTrendsViewController();
  [(AllTrendsViewController *)&v4 restoreUserActivityState:state];
}

- (_TtC18HealthExperienceUI23AllTrendsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end