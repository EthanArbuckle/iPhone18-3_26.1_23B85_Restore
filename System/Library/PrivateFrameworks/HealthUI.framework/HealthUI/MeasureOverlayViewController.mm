@interface MeasureOverlayViewController
- (BOOL)supportsHealthFactors;
- (_TtC8HealthUI28MeasureOverlayViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (void)viewDidLoad;
@end

@implementation MeasureOverlayViewController

- (void)viewDidLoad
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3.receiver = self;
  v3.super_class = type metadata accessor for MeasureOverlayViewController();
  [(HKOverlayRoomViewController *)&v3 viewDidLoad];
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

  __swift_project_boxed_opaque_existential_0((&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI28MeasureOverlayViewController_measure), *(&self->super.super.super._view + OBJC_IVAR____TtC8HealthUI28MeasureOverlayViewController_measure));
  selfCopy = self;
  sub_1C3D1EAE4();

  v5 = sub_1C3D200C4();

  return v5;
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

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI28MeasureOverlayViewController_measureDisplayType);

  return v4;
}

- (id)createChartOverlayViewController
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = sub_1C3C8DC40();

  return v4;
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

  sub_1C3C27CB4(0, &qword_1EC085778);
  v5 = sub_1C3D202A4();

  return v5;
}

- (BOOL)supportsHealthFactors
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtC8HealthUI28MeasureOverlayViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
{
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
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

@end