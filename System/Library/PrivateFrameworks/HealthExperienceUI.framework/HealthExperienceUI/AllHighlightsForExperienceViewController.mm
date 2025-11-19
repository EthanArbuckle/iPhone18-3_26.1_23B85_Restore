@interface AllHighlightsForExperienceViewController
- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation AllHighlightsForExperienceViewController

- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AllHighlightsForExperienceViewController();
  v2 = v7.receiver;
  [(CompoundDataSourceCollectionViewController *)&v7 viewDidLoad];
  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BA4A6AE8();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x138);
  v7 = self;
  v6(&v12);
  v8 = v12;
  sub_1BA4A71E8();
  v11 = v8;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v9 = type metadata accessor for AllHighlightsForExperienceViewController();
  v10.receiver = v7;
  v10.super_class = v9;
  [(CompoundDataSourceCollectionViewController *)&v10 viewIsAppearing:v3];
}

- (_TtC18HealthExperienceUI40AllHighlightsForExperienceViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end