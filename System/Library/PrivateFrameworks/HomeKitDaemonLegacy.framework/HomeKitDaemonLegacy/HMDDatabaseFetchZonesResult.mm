@interface HMDDatabaseFetchZonesResult
- (HMDDatabaseFetchZonesResult)initWithLocalZone:(id)zone cloudZone:(id)cloudZone;
@end

@implementation HMDDatabaseFetchZonesResult

- (HMDDatabaseFetchZonesResult)initWithLocalZone:(id)zone cloudZone:(id)cloudZone
{
  zoneCopy = zone;
  cloudZoneCopy = cloudZone;
  v12.receiver = self;
  v12.super_class = HMDDatabaseFetchZonesResult;
  v9 = [(HMDDatabaseFetchZonesResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localZone, zone);
    objc_storeStrong(&v10->_cloudZone, cloudZone);
  }

  return v10;
}

@end