@interface HKBalanceOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4;
- (HKBalanceOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4;
@end

@implementation HKBalanceOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v15 = a10;
  v28 = a11;
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a6)
  {
    sub_1C3D1E1A4();
    v19 = sub_1C3D1E1E4();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_1C3D1E1E4();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (a10)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v15 = sub_1C3D202B4();
  }

  v21 = a4;
  v22 = a5;
  v23 = a8;
  v24 = a9;
  v25 = sub_1C3CCBD2C(v22, v18, a8, v15, v28);

  sub_1C3CCDA74(v18, &qword_1EC085770, MEMORY[0x1E6969530]);

  return v25;
}

- (HKBalanceOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6
{
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
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
    v13 = sub_1C3D1E1E4();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_1C3D1E1E4();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  if (a5)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v15 = sub_1C3D202B4();
  }

  else
  {
    v15 = 0;
  }

  v16 = a4;
  v17 = sub_1C3CCBF20(v12, v16, v15, a6);

  return v17;
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

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);
  v5 = self;
  v6 = [v4 localization];
  v7 = [v6 displayName];

  if (v7)
  {
  }

  else
  {
    sub_1C3D20104();
    v7 = sub_1C3D200C4();
  }

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

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);

  return v4;
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

  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1C3CCC7A8(a3, v9);

  sub_1C3C27CB4(0, &qword_1EC085778);
  v12 = sub_1C3D202A4();

  return v12;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
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
    v12 = sub_1C3D1E1E4();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1C3D1E1E4();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a5;
  v15 = self;
  v16 = sub_1C3CC93BC(a3, v11, v14);

  sub_1C3CCDA74(v11, &qword_1EC085770, MEMORY[0x1E6969530]);

  return v16;
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

  v3 = self;
  v4 = sub_1C3CC9A04();

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

  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1C3CCCA34();

  return v10;
}

- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4
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
  sub_1C3CCD168(a4);
}

@end