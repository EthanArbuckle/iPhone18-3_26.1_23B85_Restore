@interface HKHandwashingFactorAndTrendViewController
- (HKHandwashingFactorAndTrendViewController)initWithHandwashingDisplayType:(id)a3 applicationItems:(id)a4 trendModel:(id)a5 factorDisplayTypes:(id)a6 displayDate:(id)a7 mode:(int64_t)a8 options:(unint64_t)a9;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
@end

@implementation HKHandwashingFactorAndTrendViewController

- (HKHandwashingFactorAndTrendViewController)initWithHandwashingDisplayType:(id)a3 applicationItems:(id)a4 trendModel:(id)a5 factorDisplayTypes:(id)a6 displayDate:(id)a7 mode:(int64_t)a8 options:(unint64_t)a9
{
  v10.receiver = self;
  v10.super_class = HKHandwashingFactorAndTrendViewController;
  return [(HKOverlayRoomFactorAndTrendViewController *)&v10 initWithBaseChartDisplayType:a3 trendModel:a5 factorDisplayTypes:a6 displayDate:a7 applicationItems:a4 mode:a8 timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:a9];
}

- (id)createChartOverlayViewController
{
  v3 = [HKHandwashingInteractiveChartViewController alloc];
  v4 = [(HKOverlayRoomViewController *)self applicationItems];
  v5 = [(HKOverlayRoomViewController *)self displayDate];
  v6 = [(HKOverlayRoomViewController *)self restorationUserActivity];
  v7 = [(HKHandwashingInteractiveChartViewController *)v3 initWithApplicationItems:v4 displayDate:v5 restorationUserActivity:v6 additionalChartOptions:[(HKOverlayRoomViewController *)self additionalChartOptions]];

  return v7;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3];
  v11 = [HKHandwashingFactorAndTrendViewController alloc];
  v12 = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  v13 = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];
  v14 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKHandwashingFactorAndTrendViewController *)v11 initWithHandwashingDisplayType:v12 applicationItems:v8 trendModel:v13 factorDisplayTypes:v14 displayDate:v9 mode:a3 options:v10];

  return v15;
}

@end