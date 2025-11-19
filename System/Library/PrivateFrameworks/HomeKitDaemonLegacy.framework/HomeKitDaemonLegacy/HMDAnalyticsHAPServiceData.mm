@interface HMDAnalyticsHAPServiceData
- (HMDAnalyticsHAPServiceData)initWithServiceType:(id)a3 isPrimary:(BOOL)a4 ownerUser:(BOOL)a5;
@end

@implementation HMDAnalyticsHAPServiceData

- (HMDAnalyticsHAPServiceData)initWithServiceType:(id)a3 isPrimary:(BOOL)a4 ownerUser:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMDAnalyticsHAPServiceData;
  v10 = [(HMDAnalyticsHAPServiceData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceType, a3);
    v11->_isPrimary = a4;
    v11->_ownerUser = a5;
  }

  return v11;
}

@end