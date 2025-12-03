@interface _HKStaticDateGraphViewController
- (_HKStaticDateGraphViewController)initWithFixedRange:(id)range currentCalendar:(id)calendar;
- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset;
- (int64_t)stackCountForGraphView:(id)view;
- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context;
- (void)viewDidLoad;
@end

@implementation _HKStaticDateGraphViewController

- (_HKStaticDateGraphViewController)initWithFixedRange:(id)range currentCalendar:(id)calendar
{
  rangeCopy = range;
  v12.receiver = self;
  v12.super_class = _HKStaticDateGraphViewController;
  v8 = [(HKDateGraphViewController *)&v12 initWithDateZoom:5 previousDateZoom:5 previousXAxisSpace:calendar currentCalendar:0.0];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allStackedSeries = v8->_allStackedSeries;
    v8->_allStackedSeries = v9;

    objc_storeStrong(&v8->_fixedRange, range);
  }

  return v8;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _HKStaticDateGraphViewController;
  [(HKDateGraphViewController *)&v5 viewDidLoad];
  graphView = [(HKGraphViewController *)self graphView];
  [graphView setDisableSelection:1];
  fixedRange = [(_HKStaticDateGraphViewController *)self fixedRange];
  [graphView setEffectiveAxisRange:fixedRange effectiveVisibleRangeCadence:fixedRange effectiveVisibleRangeActive:fixedRange];
}

- (int64_t)stackCountForGraphView:(id)view
{
  allStackedSeries = [(_HKStaticDateGraphViewController *)self allStackedSeries];
  v4 = [allStackedSeries count];

  return v4;
}

- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context
{
  v6 = [(HKGraphViewController *)self graphView:view];
  [v6 autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset
{
  v6 = [(_HKStaticDateGraphViewController *)self allStackedSeries:view];
  v7 = [v6 objectAtIndexedSubscript:offset];

  return v7;
}

@end