@interface OnboardingTileViewController
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithStyle:(int64_t)a3;
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithUsingInsetStyling:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tapToRadar:(id)a3;
- (void)viewDidLoad;
@end

@implementation OnboardingTileViewController

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithCoder:(id)a3
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D11FD438();
}

- (void)tapToRadar:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(self);

  sub_1D1096BE0(v6);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  v12 = sub_1D11FDE60();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    v11 = self;
    v12 = a4;
    sub_1D138E05C();
  }

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    v10 = a4;
    sub_1D138E05C();
  }

  (*(v7 + 8))(v9, v6);
}

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithUsingInsetStyling:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end