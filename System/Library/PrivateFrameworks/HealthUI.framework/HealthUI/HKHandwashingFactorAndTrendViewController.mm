@interface HKHandwashingFactorAndTrendViewController
- (HKHandwashingFactorAndTrendViewController)initWithHandwashingDisplayType:(id)type applicationItems:(id)items trendModel:(id)model factorDisplayTypes:(id)types displayDate:(id)date mode:(int64_t)mode options:(unint64_t)options;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
@end

@implementation HKHandwashingFactorAndTrendViewController

- (HKHandwashingFactorAndTrendViewController)initWithHandwashingDisplayType:(id)type applicationItems:(id)items trendModel:(id)model factorDisplayTypes:(id)types displayDate:(id)date mode:(int64_t)mode options:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = HKHandwashingFactorAndTrendViewController;
  return [(HKOverlayRoomFactorAndTrendViewController *)&v10 initWithBaseChartDisplayType:type trendModel:model factorDisplayTypes:types displayDate:date applicationItems:items mode:mode timeScopeRanges:0 initialTimeScope:8 wrappedOverlay:0 overrideFirstWeekday:-1 overrideCalendar:0 additionalChartOptions:options];
}

- (id)createChartOverlayViewController
{
  v3 = [HKHandwashingInteractiveChartViewController alloc];
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  displayDate = [(HKOverlayRoomViewController *)self displayDate];
  restorationUserActivity = [(HKOverlayRoomViewController *)self restorationUserActivity];
  v7 = [(HKHandwashingInteractiveChartViewController *)v3 initWithApplicationItems:applicationItems displayDate:displayDate restorationUserActivity:restorationUserActivity additionalChartOptions:[(HKOverlayRoomViewController *)self additionalChartOptions]];

  return v7;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode];
  v11 = [HKHandwashingFactorAndTrendViewController alloc];
  baseChartDisplayType = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  trendModel = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKHandwashingFactorAndTrendViewController *)v11 initWithHandwashingDisplayType:baseChartDisplayType applicationItems:itemsCopy trendModel:trendModel factorDisplayTypes:factorDisplayTypes displayDate:dateCopy mode:mode options:v10];

  return v15;
}

@end