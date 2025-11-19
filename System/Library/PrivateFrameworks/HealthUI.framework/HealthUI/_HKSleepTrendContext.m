@interface _HKSleepTrendContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepTrendContext)initWithBaseDisplayType:(id)a3 trendModel:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 overlayMode:(int64_t)a7 contextChangeDelegate:(id)a8;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
@end

@implementation _HKSleepTrendContext

- (_HKSleepTrendContext)initWithBaseDisplayType:(id)a3 trendModel:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 overlayMode:(int64_t)a7 contextChangeDelegate:(id)a8
{
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = _HKSleepTrendContext;
  v17 = [(HKOverlayRoomTrendContext *)&v20 initWithBaseDisplayType:v15 trendModel:a4 overlayChartController:a5 applicationItems:a6 overlayMode:a7];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_baseDisplayType, a3);
    objc_storeWeak(&v18->_contextChangeDelegate, v16);
  }

  return v18;
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v6 = [(_HKSleepTrendContext *)self contextChangeDelegate:a3];
  [v6 setDurationContextSelected:v5];
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end