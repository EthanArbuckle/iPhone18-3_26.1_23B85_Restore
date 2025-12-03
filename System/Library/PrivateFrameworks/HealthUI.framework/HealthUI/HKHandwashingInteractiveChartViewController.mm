@interface HKHandwashingInteractiveChartViewController
+ (id)_generateHandwashingGoalDataSource;
+ (id)_generateHandwashingGoalDisplayTypeWithDisplayType:(id)type unitPreferencesController:(id)controller selectedTimeScopeController:(id)scopeController;
+ (id)_generateHandwashingGoalLineSeriesWithDisplayType:(id)type unitPreferenceController:(id)controller color:(id)color;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (HKHandwashingInteractiveChartViewController)initWithApplicationItems:(id)items displayDate:(id)date restorationUserActivity:(id)activity additionalChartOptions:(unint64_t)options;
- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (void)viewDidLoad;
@end

@implementation HKHandwashingInteractiveChartViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  itemsCopy = items;
  dateCopy = date;
  modelCopy = model;
  typesCopy = types;
  activityCopy = activity;
  v18 = [[HKHandwashingInteractiveChartViewController alloc] initWithApplicationItems:itemsCopy displayDate:dateCopy restorationUserActivity:activityCopy additionalChartOptions:options];

  handwashingDisplayType = [(HKHandwashingInteractiveChartViewController *)v18 handwashingDisplayType];
  if (typesCopy && [typesCopy count])
  {
    v20 = [[HKHandwashingFactorAndTrendViewController alloc] initWithHandwashingDisplayType:handwashingDisplayType applicationItems:itemsCopy trendModel:modelCopy factorDisplayTypes:typesCopy displayDate:dateCopy mode:1 options:[(HKInteractiveChartViewController *)v18 options]];
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;

  return v21;
}

- (HKHandwashingInteractiveChartViewController)initWithApplicationItems:(id)items displayDate:(id)date restorationUserActivity:(id)activity additionalChartOptions:(unint64_t)options
{
  v32[2] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  dateCopy = date;
  itemsCopy = items;
  displayTypeController = [itemsCopy displayTypeController];
  unitController = [itemsCopy unitController];
  timeScopeController = [itemsCopy timeScopeController];
  v29 = displayTypeController;
  v13 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384378];
  v25 = [objc_opt_class() _generateHandwashingGoalDisplayTypeWithDisplayType:v13 unitPreferencesController:unitController selectedTimeScopeController:timeScopeController];
  v14 = [v13 hk_interactiveChartOptions] | options;
  v32[0] = v13;
  v32[1] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v31 = v27;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  healthStore = [itemsCopy healthStore];
  dateCache = [itemsCopy dateCache];
  chartDataCacheController = [itemsCopy chartDataCacheController];
  sampleDateRangeController = [itemsCopy sampleDateRangeController];

  v30.receiver = self;
  v30.super_class = HKHandwashingInteractiveChartViewController;
  v23 = v14;
  v20 = timeScopeController;
  v21 = [(HKInteractiveChartOverlayViewController *)&v30 initWithStackedDisplayTypes:v15 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:healthStore unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController sampleTypeDateRangeController:sampleDateRangeController initialXValue:dateCopy currentCalendarOverride:0 options:v23 timeScopeRanges:0];

  if (v21)
  {
    [(HKInteractiveChartViewController *)v21 addChartViewObserver:v21];
    objc_storeStrong(&v21->_handwashingDisplayType, v13);
    objc_storeStrong(&v21->_goalDisplayType, v25);
    [(HKInteractiveChartViewController *)v21 setRestorationUserActivity:activityCopy];
  }

  return v21;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKHandwashingInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v2 viewDidLoad];
}

- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  handwashingDisplayType = [(HKHandwashingInteractiveChartViewController *)self handwashingDisplayType];
  v13 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:handwashingDisplayType timeScope:scope stackOffset:offset];

  [v13 setAllowsSelection:1];
  goalDisplayType = [(HKHandwashingInteractiveChartViewController *)self goalDisplayType];
  v10 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:goalDisplayType timeScope:scope stackOffset:offset];

  [v10 setAllowsSelection:0];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  [graphView setMoveSelectedSeriesToFront:0];
}

+ (id)_generateHandwashingGoalDataSource
{
  v2 = [HKHandwashingDateRangeDataSourceDelegate alloc];
  +[HKHandwashingEventDataSource durationForCompleteSample];
  v3 = [(HKHandwashingDateRangeDataSourceDelegate *)v2 initWithGoal:?];
  v4 = [[HKDateRangeDataSource alloc] initWithSourceDelegate:v3];

  return v4;
}

+ (id)_generateHandwashingGoalLineSeriesWithDisplayType:(id)type unitPreferenceController:(id)controller color:(id)color
{
  v35[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  controllerCopy = controller;
  typeCopy = type;
  v10 = objc_alloc_init(HKLineSeries);
  v11 = [HKGradientFillStyle alloc];
  v12 = [colorCopy colorWithAlphaComponent:0.3];
  v13 = [colorCopy colorWithAlphaComponent:0.0];
  v32 = [(HKGradientFillStyle *)v11 initWithFirstColor:v12 secondColor:v13];

  v14 = [HKGradientFillStyle alloc];
  v15 = [colorCopy colorWithAlphaComponent:0.3];
  v16 = [colorCopy colorWithAlphaComponent:0.0];
  v30 = [(HKGradientFillStyle *)v14 initWithFirstColor:v15 secondColor:v16];

  v17 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:1.0];
  [v17 setDashStyle:1];
  v18 = objc_alloc_init(HKAxisLabelStyle);
  [(HKAxisLabelStyle *)v18 setTextColor:colorCopy];
  v19 = [[HKHandwashingGoalFormatter alloc] initWithDisplayType:typeCopy unitPreferenceController:controllerCopy];

  [(HKAxisLabelStyle *)v18 setNumberFormatter:v19];
  v20 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v31 = v17;
  [(HKLineSeriesPresentationStyle *)v20 setStrokeStyle:v17];
  [(HKLineSeriesPresentationStyle *)v20 setWaveForm:0];
  [(HKLineSeriesPresentationStyle *)v20 setAxisAnnotationStyle:v18];
  v21 = objc_alloc_init(HKLineSeriesPresentationStyle);
  [(HKLineSeriesPresentationStyle *)v21 setStrokeStyle:v17];
  [(HKLineSeriesPresentationStyle *)v21 setFillStyle:v32];
  [(HKLineSeriesPresentationStyle *)v21 setWaveForm:0];
  v22 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v23 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:1.0];
  [v23 setDashStyle:2];
  [(HKLineSeriesPresentationStyle *)v22 setStrokeStyle:v23];
  v24 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:0 style:3.0];
  [(HKLineSeriesPresentationStyle *)v22 setPointMarkerStyle:v24];
  [(HKLineSeriesPresentationStyle *)v22 setFillStyle:v30];
  [(HKLineSeriesPresentationStyle *)v22 setWaveForm:0];
  v35[0] = v20;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [(HKLineSeries *)v10 setUnhighlightedPresentationStyles:v25];

  v34 = v21;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  [(HKLineSeries *)v10 setHighlightedPresentationStyles:v26];

  v33 = v22;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  [(HKLineSeries *)v10 setSelectedPresentationStyles:v27];

  v28 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:0 style:5.0];
  [(HKLineSeries *)v10 setSelectedPointMarkerStyle:v28];
  [(HKLineSeries *)v10 setInactivePresentationStyle:v20];
  [(HKLineSeries *)v10 setExtendLastValue:1];
  [(HKLineSeries *)v10 setFlatLastValue:1];
  [(HKGraphSeries *)v10 setAllowsSelection:0];

  return v10;
}

+ (id)_generateHandwashingGoalDisplayTypeWithDisplayType:(id)type unitPreferencesController:(id)controller selectedTimeScopeController:(id)scopeController
{
  typeCopy = type;
  controllerCopy = controller;
  v9 = [controllerCopy unitForDisplayType:typeCopy];
  v10 = v9;
  if (v9)
  {
    secondUnit = v9;
  }

  else
  {
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
  }

  v12 = secondUnit;

  hk_otherKeyColor = [MEMORY[0x1E69DC888] hk_otherKeyColor];
  v14 = [self _generateHandwashingGoalLineSeriesWithDisplayType:typeCopy unitPreferenceController:controllerCopy color:hk_otherKeyColor];

  _generateHandwashingGoalDataSource = [self _generateHandwashingGoalDataSource];
  [v14 setDataSource:_generateHandwashingGoalDataSource];

  chartingRules = [typeCopy chartingRules];
  axisScalingRule = [chartingRules axisScalingRule];

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [axisScalingRule setUnit:v12];
  }

  [v14 setAxisScalingRule:axisScalingRule];
  v18 = [HKInteractiveChartDisplayType alloc];
  localization = [typeCopy localization];
  displayName = [localization displayName];
  unitString = [v12 unitString];
  v22 = [(HKInteractiveChartDisplayType *)v18 initWithGraphSeries:v14 displayName:displayName unitName:unitString valueFormatter:0 dataTypeCode:237];

  return v22;
}

@end