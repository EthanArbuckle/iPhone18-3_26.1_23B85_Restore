@interface HMDNotificationRegistryCoreDataCharacteristicsRequest
- (BOOL)isEqual:(id)equal;
- (HMDNotificationRegistryCoreDataCharacteristicsRequest)initWithRequest:(id)request characteristicThresholds:(id)thresholds;
@end

@implementation HMDNotificationRegistryCoreDataCharacteristicsRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
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
      request = self->_request;
      request = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)v6 request];
      if ([(HMDNotificationRegistryCharacteristicsRequest *)request isEqual:request])
      {
        characteristicThresholds = self->_characteristicThresholds;
        characteristicThresholds = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)v7 characteristicThresholds];
        v12 = [(NSArray *)characteristicThresholds isEqual:characteristicThresholds];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HMDNotificationRegistryCoreDataCharacteristicsRequest)initWithRequest:(id)request characteristicThresholds:(id)thresholds
{
  requestCopy = request;
  thresholdsCopy = thresholds;
  v12.receiver = self;
  v12.super_class = HMDNotificationRegistryCoreDataCharacteristicsRequest;
  v9 = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_characteristicThresholds, thresholds);
  }

  return v10;
}

@end