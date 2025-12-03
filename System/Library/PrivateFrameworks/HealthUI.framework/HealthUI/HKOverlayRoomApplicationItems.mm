@interface HKOverlayRoomApplicationItems
+ (HKOverlayRoomApplicationItems)applicationItemsWithItems:(id)items;
@end

@implementation HKOverlayRoomApplicationItems

+ (HKOverlayRoomApplicationItems)applicationItemsWithItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(HKOverlayRoomApplicationItems);
  healthStore = [itemsCopy healthStore];
  [(HKOverlayRoomApplicationItems *)v4 setHealthStore:healthStore];

  timeScopeController = [itemsCopy timeScopeController];
  [(HKOverlayRoomApplicationItems *)v4 setTimeScopeController:timeScopeController];

  dateCache = [itemsCopy dateCache];
  [(HKOverlayRoomApplicationItems *)v4 setDateCache:dateCache];

  unitController = [itemsCopy unitController];
  [(HKOverlayRoomApplicationItems *)v4 setUnitController:unitController];

  chartDataCacheController = [itemsCopy chartDataCacheController];
  [(HKOverlayRoomApplicationItems *)v4 setChartDataCacheController:chartDataCacheController];

  sampleTypeUpdateController = [itemsCopy sampleTypeUpdateController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleTypeUpdateController:sampleTypeUpdateController];

  sampleDateRangeController = [itemsCopy sampleDateRangeController];
  [(HKOverlayRoomApplicationItems *)v4 setSampleDateRangeController:sampleDateRangeController];

  displayTypeController = [itemsCopy displayTypeController];

  [(HKOverlayRoomApplicationItems *)v4 setDisplayTypeController:displayTypeController];

  return v4;
}

@end