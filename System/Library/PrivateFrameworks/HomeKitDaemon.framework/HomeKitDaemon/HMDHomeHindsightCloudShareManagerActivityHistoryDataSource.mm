@interface HMDHomeHindsightCloudShareManagerActivityHistoryDataSource
- (id)zoneUUIDForHome:(id)home;
- (void)cloudShareManagerDidCreateZone:(id)zone;
@end

@implementation HMDHomeHindsightCloudShareManagerActivityHistoryDataSource

- (void)cloudShareManagerDidCreateZone:(id)zone
{
  home = [zone home];
  if (home)
  {
    v4 = home;
    [home prepareNewCloudKitZone];
    home = v4;
  }
}

- (id)zoneUUIDForHome:(id)home
{
  spiClientIdentifier = [home spiClientIdentifier];
  v4 = HMVConfigurationZoneUUIDForHomeIdentifier();

  return v4;
}

@end