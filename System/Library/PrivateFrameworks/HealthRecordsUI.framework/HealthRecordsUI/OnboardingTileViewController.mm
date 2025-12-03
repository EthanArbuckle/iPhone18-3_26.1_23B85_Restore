@interface OnboardingTileViewController
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithStyle:(int64_t)style;
- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithUsingInsetStyling:(BOOL)styling;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tapToRadar:(id)radar;
- (void)viewDidLoad;
@end

@implementation OnboardingTileViewController

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithCoder:(id)coder
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D11FD438();
}

- (void)tapToRadar:(id)radar
{
  if (radar)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(self);

  sub_1D1096BE0(v6);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D11FDE60();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    selfCopy = self;
    cellCopy = cell;
    sub_1D138E05C();
  }

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    cellCopy = cell;
    sub_1D138E05C();
  }

  (*(v7 + 8))(v9, v6);
}

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI28OnboardingTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end