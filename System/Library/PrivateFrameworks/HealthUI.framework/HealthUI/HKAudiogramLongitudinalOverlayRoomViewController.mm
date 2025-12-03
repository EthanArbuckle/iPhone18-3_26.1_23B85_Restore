@interface HKAudiogramLongitudinalOverlayRoomViewController
- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store;
- (HKAudiogramLongitudinalOverlayRoomViewController)initWithApplicationItems:(id)items factorDisplayTypes:(id)types;
- (HKAudiogramLongitudinalOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (void)viewDidLoad;
@end

@implementation HKAudiogramLongitudinalOverlayRoomViewController

- (HKAudiogramLongitudinalOverlayRoomViewController)initWithApplicationItems:(id)items factorDisplayTypes:(id)types
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for AudiogramLongitudinalOverlayRoomViewController();
  v7 = [(HKOverlayRoomViewController *)&v9 initWithDisplayDate:0 applicationItems:items factorDisplayTypes:types mode:3];

  return v7;
}

- (void)viewDidLoad
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AudiogramLongitudinalOverlayRoomViewController();
  selfCopy = self;
  [(HKOverlayRoomViewController *)&v6 viewDidLoad];
  v4 = [(HKOverlayRoomViewController *)selfCopy chartController:v6.receiver];
  if (v4)
  {
    v5 = v4;
    [(HKInteractiveChartViewController *)v4 setCurrentValueViewDataSourceDelegate:selfCopy];
  }

  sub_1C3C26594();
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  itemsCopy = items;
  selfCopy = self;
  sub_1C3C27704(itemsCopy);

  v7 = sub_1C3D200C4();

  return v7;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  itemsCopy = items;
  sub_1C3C5F470(itemsCopy);
  v6 = v5;

  return v6;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  itemsCopy = items;
  controllerCopy = controller;
  selfCopy = self;
  sub_1C3C277F0();

  sub_1C3C27CB4(0, &qword_1EC085778);
  v11 = sub_1C3D202A4();

  return v11;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  sub_1C3C27AE0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (date)
  {
    sub_1C3D1E1A4();
    v9 = sub_1C3D1E1E4();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C3D1E1E4();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  sub_1C3C27B38(v8);

  return 0;
}

- (HKAudiogramLongitudinalOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
{
  sub_1C3C27AE0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (date)
  {
    sub_1C3D1E1A4();
    v10 = sub_1C3D1E1E4();
    v12 = 0;
    v11 = (*(v10 - 8) + 56);
  }

  else
  {
    v10 = sub_1C3D1E1E4();
    v11 = (*(v10 - 8) + 56);
    v12 = 1;
  }

  (*v11)(v9, v12, 1, v10);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  hearingLossInfographicViewController = [objc_opt_self() hearingLossInfographicViewController];

  return hearingLossInfographicViewController;
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  rangeCopy = range;
  selfCopy = self;
  chartController = [(HKOverlayRoomViewController *)selfCopy chartController];
  if (chartController && (v10 = chartController, v11 = [(HKInteractiveChartViewController *)chartController stringForValueRange:rangeCopy timeScope:scope], v10, v11))
  {
    sub_1C3D20104();

    v12 = sub_1C3D200C4();

    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

@end