@interface HKBalanceOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store;
- (HKBalanceOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index;
@end

@implementation HKBalanceOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  optionsCopy = options;
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

  if (date)
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

  if (types)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    typesCopy = sub_1C3D202B4();
  }

  factoryCopy = factory;
  itemsCopy = items;
  activityCopy = activity;
  modelCopy = model;
  v25 = sub_1C3CCBD2C(itemsCopy, v18, activity, typesCopy, optionsCopy);

  sub_1C3CCDA74(v18, &qword_1EC085770, MEMORY[0x1E6969530]);

  return v25;
}

- (HKBalanceOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
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

  if (date)
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

  if (types)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v15 = sub_1C3D202B4();
  }

  else
  {
    v15 = 0;
  }

  itemsCopy = items;
  v17 = sub_1C3CCBF20(v12, itemsCopy, v15, mode);

  return v17;
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

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);
  selfCopy = self;
  localization = [v4 localization];
  displayName = [localization displayName];

  if (displayName)
  {
  }

  else
  {
    sub_1C3D20104();
    displayName = sub_1C3D200C4();
  }

  return displayName;
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

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);

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

  itemsCopy = items;
  controllerCopy = controller;
  selfCopy = self;
  sub_1C3CCC7A8(mode, itemsCopy);

  sub_1C3C27CB4(0, &qword_1EC085778);
  v12 = sub_1C3D202A4();

  return v12;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
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

  if (date)
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

  itemsCopy = items;
  selfCopy = self;
  v16 = sub_1C3CC93BC(mode, v11, itemsCopy);

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

  selfCopy = self;
  v4 = sub_1C3CC9A04();

  return v4;
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

  typeCopy = type;
  storeCopy = store;
  selfCopy = self;
  v10 = sub_1C3CCCA34();

  return v10;
}

- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  sub_1C3CCD168(index);
}

@end