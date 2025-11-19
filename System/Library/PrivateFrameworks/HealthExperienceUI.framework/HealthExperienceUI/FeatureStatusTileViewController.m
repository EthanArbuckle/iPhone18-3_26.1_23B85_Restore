@interface FeatureStatusTileViewController
- (_TtC18HealthExperienceUI31FeatureStatusTileViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI31FeatureStatusTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didSelectCell:(id)a3 in:(id)a4;
- (void)viewDidLoad;
@end

@implementation FeatureStatusTileViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA42A240();
}

- (void)didSelectCell:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BA42A144();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v10 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  sub_1BA0C1E78();
}

- (_TtC18HealthExperienceUI31FeatureStatusTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = self + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = 0;
    v7 = a4;
    v8 = sub_1BA4A6758();
  }

  else
  {
    v9 = self + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 4) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = 0;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for FeatureStatusTileViewController();
  v11 = [(FeatureStatusTileViewController *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (_TtC18HealthExperienceUI31FeatureStatusTileViewController)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FeatureStatusTileViewController();
  v5 = a3;
  v6 = [(FeatureStatusTileViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end