@interface HMDDatabaseFetchZonesResult
- (HMDDatabaseFetchZonesResult)initWithLocalZone:(id)a3 cloudZone:(id)a4;
@end

@implementation HMDDatabaseFetchZonesResult

- (HMDDatabaseFetchZonesResult)initWithLocalZone:(id)a3 cloudZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDDatabaseFetchZonesResult;
  v9 = [(HMDDatabaseFetchZonesResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localZone, a3);
    objc_storeStrong(&v10->_cloudZone, a4);
  }

  return v10;
}

@end