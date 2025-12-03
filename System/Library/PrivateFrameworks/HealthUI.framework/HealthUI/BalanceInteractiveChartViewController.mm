@interface BalanceInteractiveChartViewController
- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2;
- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5;
- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3;
- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution;
@end

@implementation BalanceInteractiveChartViewController

- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C27CB4(0, &unk_1EC085700);
  sub_1C3D202B4();
  selfCopy = self;
  v9 = sub_1C3D202A4();
  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for BalanceInteractiveChartViewController();
  [(HKInteractiveChartOverlayViewController *)&v12 configureDisplayTypes:v9 timeScope:scope stackOffset:offset];

  primaryGraphViewController = [(HKInteractiveChartViewController *)selfCopy primaryGraphViewController];
  graphView = [(HKGraphViewController *)primaryGraphViewController graphView];

  [(HKGraphView *)graphView setScrollingOptions:1];
}

- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar
{
  v10 = sub_1C3D1E3C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1E384();
  selfCopy = self;
  v15 = sub_1C3C43684(zoom, dateZoom, v13, space);

  (*(v11 + 8))(v13, v10);

  return v15;
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

  if (scope == 6)
  {
    scope = 5;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for BalanceInteractiveChartViewController();
  rangeCopy = range;
  selfCopy = self;
  v9 = [(HKInteractiveChartViewController *)&v13 stringForValueRange:rangeCopy timeScope:scope];
  if (v9)
  {
    v10 = v9;
    sub_1C3D20104();

    v11 = sub_1C3D200C4();
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  contextCopy = context;
  typeCopy = type;
  selfCopy = self;
  [(HKInteractiveChartViewController *)selfCopy annotationDataSource];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    if (scope == 6)
    {
      scope = 5;
    }

    healthStore = [(HKInteractiveChartViewController *)selfCopy healthStore];
    [v14 updateWithSelectionContext:contextCopy displayType:typeCopy timeScope:scope resolution:resolution healthStore:healthStore viewController:selfCopy];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2
{
  cacheControllerCopy = cacheController;
  scopeControllerCopy = scopeController;
  selfCopy = self;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v35 - v17;
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v35 - v20;
  sub_1C3D20374();
  v37 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (value)
  {
    sub_1C3D1E1A4();
    v22 = sub_1C3D1E1E4();
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v23 = sub_1C3D1E1E4();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  optionsCopy = options;
  if (override)
  {
    sub_1C3D1E384();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1C3D1E3C4();
  (*(*(v25 - 8) + 56))(v18, v24, 1, v25);
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  cacheCopy = cache;
  v30 = cacheControllerCopy;
  v31 = scopeControllerCopy;
  rangeControllerCopy = rangeController;
  v33 = sub_1C3C44734(storeCopy, typeCopy, controllerCopy, cacheCopy, v30, v31, rangeControllerCopy, v21, v18, optionsCopy);

  return v33;
}

- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3
{
  cacheCopy = cache;
  cacheControllerCopy = cacheController;
  typeCopy = type;
  controllerCopy = controller;
  selfCopy = self;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  sub_1C3C4515C(0, &qword_1EC085770, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  sub_1C3D20374();
  v35 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C27CB4(0, &qword_1EC0855F0);
  sub_1C3C27CB4(0, &qword_1EC085BF0);
  sub_1C3C381FC();
  v34 = sub_1C3D1FEF4();
  if (value)
  {
    sub_1C3D1E1A4();
    v20 = sub_1C3D1E1E4();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v21 = sub_1C3D1E1E4();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  if (override)
  {
    sub_1C3D1E384();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1C3D1E3C4();
  (*(*(v23 - 8) + 56))(v16, v22, 1, v23);
  storeCopy = store;
  v25 = typeCopy;
  v26 = controllerCopy;
  v27 = cacheCopy;
  v28 = cacheControllerCopy;
  scopeControllerCopy = scopeController;
  rangeControllerCopy = rangeController;
  v31 = sub_1C3C44A34(v34, storeCopy, v25, v26, v27, v28, scopeControllerCopy, rangeControllerCopy, v19, v16, options);

  return v31;
}

- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5
{
  controllerCopy = controller;
  cacheCopy = cache;
  selfCopy = self;
  sub_1C3C4515C(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v46 - v19;
  sub_1C3D20374();
  v48 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C446CC();
  v47 = sub_1C3D202B4();
  if (heights)
  {
    sub_1C3C27CB4(0, &qword_1EC085BF8);
    v46 = sub_1C3D202B4();
  }

  else
  {
    v46 = 0;
  }

  if (value)
  {
    indexCopy = index;
    storeCopy = store;
    v23 = controllerCopy;
    v24 = cacheCopy;
    cacheControllerCopy = cacheController;
    scopeControllerCopy = scopeController;
    rangeControllerCopy = rangeController;
    swift_unknownObjectRetain();
    overrideCopy = override;
    rangesCopy = ranges;
    sub_1C3D20774();
    swift_unknownObjectRelease();
    if (override)
    {
LABEL_8:
      sub_1C3D1E384();

      v30 = sub_1C3D1E3C4();
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      goto LABEL_11;
    }
  }

  else
  {
    memset(v52, 0, sizeof(v52));
    indexCopy2 = index;
    storeCopy2 = store;
    v33 = controllerCopy;
    v34 = cacheCopy;
    cacheControllerCopy2 = cacheController;
    scopeControllerCopy2 = scopeController;
    rangeControllerCopy2 = rangeController;
    overrideCopy2 = override;
    rangesCopy2 = ranges;
    if (override)
    {
      goto LABEL_8;
    }
  }

  v40 = sub_1C3D1E3C4();
  (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
LABEL_11:
  if (ranges)
  {
    sub_1C3C27CB4(0, &qword_1EC0855F0);
    sub_1C3C27CB4(0, &qword_1EC085BF0);
    sub_1C3C381FC();
    v41 = sub_1C3D1FEF4();
  }

  else
  {
    v41 = 0;
  }

  v43 = controllerCopy;
  v42 = cacheCopy;
  v44 = sub_1C3C44D98(v47, index, v46, store, controllerCopy, cacheCopy, cacheController, scopeController, rangeController, v52, v20, options, v41);

  return v44;
}

@end