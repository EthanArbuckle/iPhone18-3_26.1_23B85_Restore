@interface AllHealthDataViewController
- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation AllHealthDataViewController

- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation) = 1;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA47C4F4();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation;
  swift_beginAccess();
  v7 = *(&self->super.super.super.super.super.isa + v6);
  v8 = self;
  sub_1BA4A71E8();
  v11 = v7;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v9 = type metadata accessor for AllHealthDataViewController();
  v10.receiver = v8;
  v10.super_class = v9;
  [(CompoundDataSourceCollectionViewController *)&v10 viewIsAppearing:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllHealthDataViewController();
  v4 = v7.receiver;
  [(CompoundDataSourceCollectionViewController *)&v7 viewDidAppear:v3];
  v5 = [v4 userActivity];
  if (v5)
  {
    v6 = v5;
    [v4 submitUserActivityForRestoration_];
  }
}

- (_TtC18HealthExperienceUI27AllHealthDataViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end