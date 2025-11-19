@interface BalanceInteractiveChartViewController
- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithHealthStore:(id)a3 primaryDisplayType:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12;
- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15;
- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithTimeScopeRanges:(id)a3 healthStore:(id)a4 primaryDisplayType:(id)a5 unitPreferenceController:(id)a6 dateCache:(id)a7 chartDataCacheController:(id)a8 selectedTimeScopeController:(id)a9 sampleTypeDateRangeController:(id)a10 initialXValue:(id)a11 currentCalendarOverride:(id)a12 options:(unint64_t)a13;
- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5;
- (void)updateSelectionAnnotationDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6;
@end

@implementation BalanceInteractiveChartViewController

- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5
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
  v8 = self;
  v9 = sub_1C3D202A4();
  v12.receiver = v8;
  v12.super_class = type metadata accessor for BalanceInteractiveChartViewController();
  [(HKInteractiveChartOverlayViewController *)&v12 configureDisplayTypes:v9 timeScope:a4 stackOffset:a5];

  v10 = [(HKInteractiveChartViewController *)v8 primaryGraphViewController];
  v11 = [(HKGraphViewController *)v10 graphView];

  [(HKGraphView *)v11 setScrollingOptions:1];
}

- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6
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
  v14 = self;
  v15 = sub_1C3C43684(a3, a4, v13, a5);

  (*(v11 + 8))(v13, v10);

  return v15;
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

  if (a4 == 6)
  {
    a4 = 5;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for BalanceInteractiveChartViewController();
  v7 = a3;
  v8 = self;
  v9 = [(HKInteractiveChartViewController *)&v13 stringForValueRange:v7 timeScope:a4];
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

- (void)updateSelectionAnnotationDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a3;
  v12 = a4;
  v16 = self;
  [(HKInteractiveChartViewController *)v16 annotationDataSource];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    if (a5 == 6)
    {
      a5 = 5;
    }

    v15 = [(HKInteractiveChartViewController *)v16 healthStore];
    [v14 updateWithSelectionContext:v11 displayType:v12 timeScope:a5 resolution:a6 healthStore:v15 viewController:v16];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithHealthStore:(id)a3 primaryDisplayType:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12
{
  v38 = a7;
  v39 = a8;
  v40 = self;
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

  if (a10)
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

  v36 = a12;
  if (a11)
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
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = v38;
  v31 = v39;
  v32 = a9;
  v33 = sub_1C3C44734(v26, v27, v28, v29, v30, v31, v32, v21, v18, v36);

  return v33;
}

- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithTimeScopeRanges:(id)a3 healthStore:(id)a4 primaryDisplayType:(id)a5 unitPreferenceController:(id)a6 dateCache:(id)a7 chartDataCacheController:(id)a8 selectedTimeScopeController:(id)a9 sampleTypeDateRangeController:(id)a10 initialXValue:(id)a11 currentCalendarOverride:(id)a12 options:(unint64_t)a13
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v40 = self;
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
  if (a11)
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

  if (a12)
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
  v24 = a4;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = a9;
  v30 = a10;
  v31 = sub_1C3C44A34(v34, v24, v25, v26, v27, v28, v29, v30, v19, v16, a13);

  return v31;
}

- (_TtC8HealthUI37BalanceInteractiveChartViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15
{
  v50 = a7;
  v51 = a8;
  v49 = self;
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
  if (a5)
  {
    sub_1C3C27CB4(0, &qword_1EC085BF8);
    v46 = sub_1C3D202B4();
  }

  else
  {
    v46 = 0;
  }

  if (a12)
  {
    v21 = a4;
    v22 = a6;
    v23 = v50;
    v24 = v51;
    v25 = a9;
    v26 = a10;
    v27 = a11;
    swift_unknownObjectRetain();
    v28 = a13;
    v29 = a15;
    sub_1C3D20774();
    swift_unknownObjectRelease();
    if (a13)
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
    v31 = a4;
    v32 = a6;
    v33 = v50;
    v34 = v51;
    v35 = a9;
    v36 = a10;
    v37 = a11;
    v38 = a13;
    v39 = a15;
    if (a13)
    {
      goto LABEL_8;
    }
  }

  v40 = sub_1C3D1E3C4();
  (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
LABEL_11:
  if (a15)
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

  v43 = v50;
  v42 = v51;
  v44 = sub_1C3C44D98(v47, a4, v46, a6, v50, v51, a9, a10, a11, v52, v20, a14, v41);

  return v44;
}

@end