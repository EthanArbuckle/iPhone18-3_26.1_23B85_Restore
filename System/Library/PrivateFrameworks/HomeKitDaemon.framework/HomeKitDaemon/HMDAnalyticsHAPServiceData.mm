@interface HMDAnalyticsHAPServiceData
- (HMDAnalyticsHAPServiceData)initWithServiceType:(id)type isPrimary:(BOOL)primary ownerUser:(BOOL)user;
@end

@implementation HMDAnalyticsHAPServiceData

- (HMDAnalyticsHAPServiceData)initWithServiceType:(id)type isPrimary:(BOOL)primary ownerUser:(BOOL)user
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = HMDAnalyticsHAPServiceData;
  v10 = [(HMDAnalyticsHAPServiceData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceType, type);
    v11->_isPrimary = primary;
    v11->_ownerUser = user;
  }

  return v11;
}

@end