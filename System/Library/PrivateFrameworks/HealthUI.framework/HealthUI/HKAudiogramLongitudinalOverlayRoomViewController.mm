@interface HKAudiogramLongitudinalOverlayRoomViewController
- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4;
- (HKAudiogramLongitudinalOverlayRoomViewController)initWithApplicationItems:(id)a3 factorDisplayTypes:(id)a4;
- (HKAudiogramLongitudinalOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HKAudiogramLongitudinalOverlayRoomViewController

- (HKAudiogramLongitudinalOverlayRoomViewController)initWithApplicationItems:(id)a3 factorDisplayTypes:(id)a4
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
  v7 = [(HKOverlayRoomViewController *)&v9 initWithDisplayDate:0 applicationItems:a3 factorDisplayTypes:a4 mode:3];

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
  v3 = self;
  [(HKOverlayRoomViewController *)&v6 viewDidLoad];
  v4 = [(HKOverlayRoomViewController *)v3 chartController:v6.receiver];
  if (v4)
  {
    v5 = v4;
    [(HKInteractiveChartViewController *)v4 setCurrentValueViewDataSourceDelegate:v3];
  }

  sub_1C3C26594();
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1C3C27704(v5);

  v7 = sub_1C3D200C4();

  return v7;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_1C3C5F470(v4);
  v6 = v5;

  return v6;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a4;
  v9 = a5;
  v10 = self;
  sub_1C3C277F0();

  sub_1C3C27CB4(0, &qword_1EC085778);
  v11 = sub_1C3D202A4();

  return v11;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
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

  if (a4)
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

- (HKAudiogramLongitudinalOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6
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

  if (a3)
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

- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4
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

- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() hearingLossInfographicViewController];

  return v4;
}

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = [(HKOverlayRoomViewController *)v8 chartController];
  if (v9 && (v10 = v9, v11 = [(HKInteractiveChartViewController *)v9 stringForValueRange:v7 timeScope:a4], v10, v11))
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