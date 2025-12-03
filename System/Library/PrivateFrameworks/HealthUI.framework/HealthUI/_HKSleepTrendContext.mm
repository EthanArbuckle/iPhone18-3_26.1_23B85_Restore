@interface _HKSleepTrendContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepTrendContext)initWithBaseDisplayType:(id)type trendModel:(id)model overlayChartController:(id)controller applicationItems:(id)items overlayMode:(int64_t)mode contextChangeDelegate:(id)delegate;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
@end

@implementation _HKSleepTrendContext

- (_HKSleepTrendContext)initWithBaseDisplayType:(id)type trendModel:(id)model overlayChartController:(id)controller applicationItems:(id)items overlayMode:(int64_t)mode contextChangeDelegate:(id)delegate
{
  typeCopy = type;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = _HKSleepTrendContext;
  v17 = [(HKOverlayRoomTrendContext *)&v20 initWithBaseDisplayType:typeCopy trendModel:model overlayChartController:controller applicationItems:items overlayMode:mode];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_baseDisplayType, type);
    objc_storeWeak(&v18->_contextChangeDelegate, delegateCopy);
  }

  return v18;
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v6 = [(_HKSleepTrendContext *)self contextChangeDelegate:change];
  [v6 setDurationContextSelected:changeCopy];
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end