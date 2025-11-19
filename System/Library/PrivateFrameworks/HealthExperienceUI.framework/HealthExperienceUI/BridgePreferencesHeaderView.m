@interface BridgePreferencesHeaderView
- (_TtC18HealthExperienceUI27BridgePreferencesHeaderView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI27BridgePreferencesHeaderView)initWithFrame:(CGRect)a3;
- (double)preferredHeightForWidth:(double)a3;
@end

@implementation BridgePreferencesHeaderView

- (_TtC18HealthExperienceUI27BridgePreferencesHeaderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BridgePreferencesHeaderView();
  v4 = a3;
  v5 = [(BridgePreferencesHeaderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC18HealthExperienceUI27BridgePreferencesHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)preferredHeightForWidth:(double)a3
{
  v4 = self;
  [(BridgePreferencesHeaderView *)v4 directionalLayoutMargins];
  v6 = a3 - v5;
  [(BridgePreferencesHeaderView *)v4 directionalLayoutMargins];
  v8 = v6 - v7;
  LODWORD(v9) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(BridgePreferencesHeaderView *)v4 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:0.0 verticalFittingPriority:v9, v7];
  v11 = v10;

  return v11;
}

@end