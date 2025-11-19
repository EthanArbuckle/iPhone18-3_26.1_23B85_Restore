@interface HMDNotificationRegistryCoreDataCharacteristicsRequestResult
- (BOOL)isEqual:(id)a3;
- (HMDNotificationRegistryCoreDataCharacteristicsRequestResult)initWithCoreDataRequest:(id)a3 didSucceed:(BOOL)a4 didModify:(BOOL)a5 didModifyThresholdOnly:(BOOL)a6 modifiedCharacteristics:(id)a7;
@end

@implementation HMDNotificationRegistryCoreDataCharacteristicsRequestResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    coreDataRequest = self->_coreDataRequest;
    v9 = [v6 coreDataRequest];
    v10 = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)coreDataRequest isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDNotificationRegistryCoreDataCharacteristicsRequestResult)initWithCoreDataRequest:(id)a3 didSucceed:(BOOL)a4 didModify:(BOOL)a5 didModifyThresholdOnly:(BOOL)a6 modifiedCharacteristics:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = HMDNotificationRegistryCoreDataCharacteristicsRequestResult;
  v15 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_coreDataRequest, a3);
    v16->_didSucceed = a4;
    v16->_didModify = a5;
    objc_storeStrong(&v16->_modifiedCharacteristics, a7);
    v16->_didModifyThresholdOnly = a6;
  }

  return v16;
}

@end