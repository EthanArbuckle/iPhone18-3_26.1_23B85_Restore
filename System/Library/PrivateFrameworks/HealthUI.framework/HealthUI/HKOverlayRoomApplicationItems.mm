@interface HKOverlayRoomApplicationItems
+ (HKOverlayRoomApplicationItems)applicationItemsWithItems:(id)a3;
@end

@implementation HKOverlayRoomApplicationItems

+ (HKOverlayRoomApplicationItems)applicationItemsWithItems:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HKOverlayRoomApplicationItems);
  v5 = [v3 healthStore];
  [(HKOverlayRoomApplicationItems *)v4 setHealthStore:v5];

  v6 = [v3 timeScopeController];
  [(HKOverlayRoomApplicationItems *)v4 setTimeScopeController:v6];

  v7 = [v3 dateCache];
  [(HKOverlayRoomApplicationItems *)v4 setDateCache:v7];

  v8 = [v3 unitController];
  [(HKOverlayRoomApplicationItems *)v4 setUnitController:v8];

  v9 = [v3 chartDataCacheController];
  [(HKOverlayRoomApplicationItems *)v4 setChartDataCacheController:v9];

  v10 = [v3 sampleTypeUpdateController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleTypeUpdateController:v10];

  v11 = [v3 sampleDateRangeController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleDateRangeController:v11];

  v12 = [v3 displayTypeController];

  [(HKOverlayRoomApplicationItems *)v4 setDisplayTypeController:v12];

  return v4;
}

@end