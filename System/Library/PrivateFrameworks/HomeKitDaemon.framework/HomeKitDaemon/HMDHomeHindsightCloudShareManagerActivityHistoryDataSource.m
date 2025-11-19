@interface HMDHomeHindsightCloudShareManagerActivityHistoryDataSource
- (id)zoneUUIDForHome:(id)a3;
- (void)cloudShareManagerDidCreateZone:(id)a3;
@end

@implementation HMDHomeHindsightCloudShareManagerActivityHistoryDataSource

- (void)cloudShareManagerDidCreateZone:(id)a3
{
  v3 = [a3 home];
  if (v3)
  {
    v4 = v3;
    [v3 prepareNewCloudKitZone];
    v3 = v4;
  }
}

- (id)zoneUUIDForHome:(id)a3
{
  v3 = [a3 spiClientIdentifier];
  v4 = HMVConfigurationZoneUUIDForHomeIdentifier();

  return v4;
}

@end