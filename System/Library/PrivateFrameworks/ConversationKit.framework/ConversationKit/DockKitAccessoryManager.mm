@interface DockKitAccessoryManager
- (void)systemEventDataWithInfo:(id)info data:(id)data;
- (void)trackingSummaryDataWithInfo:(id)info data:(id)data;
@end

@implementation DockKitAccessoryManager

- (void)systemEventDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;

  DockKitAccessoryManager.systemEventData(info:data:)(v7, dataCopy);
}

- (void)trackingSummaryDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;

  DockKitAccessoryManager.trackingSummaryData(info:data:)(infoCopy);
}

@end