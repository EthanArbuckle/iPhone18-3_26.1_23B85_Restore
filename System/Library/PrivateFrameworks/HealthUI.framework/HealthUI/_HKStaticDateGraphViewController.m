@interface _HKStaticDateGraphViewController
- (_HKStaticDateGraphViewController)initWithFixedRange:(id)a3 currentCalendar:(id)a4;
- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5;
- (int64_t)stackCountForGraphView:(id)a3;
- (void)graphView:(id)a3 didUpdateSeries:(id)a4 newDataArrived:(BOOL)a5 changeContext:(int64_t)a6;
- (void)viewDidLoad;
@end

@implementation _HKStaticDateGraphViewController

- (_HKStaticDateGraphViewController)initWithFixedRange:(id)a3 currentCalendar:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _HKStaticDateGraphViewController;
  v8 = [(HKDateGraphViewController *)&v12 initWithDateZoom:5 previousDateZoom:5 previousXAxisSpace:a4 currentCalendar:0.0];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allStackedSeries = v8->_allStackedSeries;
    v8->_allStackedSeries = v9;

    objc_storeStrong(&v8->_fixedRange, a3);
  }

  return v8;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _HKStaticDateGraphViewController;
  [(HKDateGraphViewController *)&v5 viewDidLoad];
  v3 = [(HKGraphViewController *)self graphView];
  [v3 setDisableSelection:1];
  v4 = [(_HKStaticDateGraphViewController *)self fixedRange];
  [v3 setEffectiveAxisRange:v4 effectiveVisibleRangeCadence:v4 effectiveVisibleRangeActive:v4];
}

- (int64_t)stackCountForGraphView:(id)a3
{
  v3 = [(_HKStaticDateGraphViewController *)self allStackedSeries];
  v4 = [v3 count];

  return v4;
}

- (void)graphView:(id)a3 didUpdateSeries:(id)a4 newDataArrived:(BOOL)a5 changeContext:(int64_t)a6
{
  v6 = [(HKGraphViewController *)self graphView:a3];
  [v6 autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5
{
  v6 = [(_HKStaticDateGraphViewController *)self allStackedSeries:a3];
  v7 = [v6 objectAtIndexedSubscript:a5];

  return v7;
}

@end