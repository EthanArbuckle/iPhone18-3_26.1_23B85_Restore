@interface HMDNotificationRegistryCoreDataCharacteristicsRequestResult
- (BOOL)isEqual:(id)equal;
- (HMDNotificationRegistryCoreDataCharacteristicsRequestResult)initWithCoreDataRequest:(id)request didSucceed:(BOOL)succeed didModify:(BOOL)modify didModifyThresholdOnly:(BOOL)only modifiedCharacteristics:(id)characteristics;
@end

@implementation HMDNotificationRegistryCoreDataCharacteristicsRequestResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
    coreDataRequest = [v6 coreDataRequest];
    v10 = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)coreDataRequest isEqual:coreDataRequest];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDNotificationRegistryCoreDataCharacteristicsRequestResult)initWithCoreDataRequest:(id)request didSucceed:(BOOL)succeed didModify:(BOOL)modify didModifyThresholdOnly:(BOOL)only modifiedCharacteristics:(id)characteristics
{
  requestCopy = request;
  characteristicsCopy = characteristics;
  v18.receiver = self;
  v18.super_class = HMDNotificationRegistryCoreDataCharacteristicsRequestResult;
  v15 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_coreDataRequest, request);
    v16->_didSucceed = succeed;
    v16->_didModify = modify;
    objc_storeStrong(&v16->_modifiedCharacteristics, characteristics);
    v16->_didModifyThresholdOnly = only;
  }

  return v16;
}

@end