@interface DockKitAccessoryManager
- (void)systemEventDataWithInfo:(id)a3 data:(id)a4;
- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4;
@end

@implementation DockKitAccessoryManager

- (void)systemEventDataWithInfo:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;

  DockKitAccessoryManager.systemEventData(info:data:)(v7, v6);
}

- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;

  DockKitAccessoryManager.trackingSummaryData(info:data:)(v5);
}

@end