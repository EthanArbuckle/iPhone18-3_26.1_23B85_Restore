@interface HMDNotificationRegistryCoreDataCharacteristicsRequest
- (BOOL)isEqual:(id)a3;
- (HMDNotificationRegistryCoreDataCharacteristicsRequest)initWithRequest:(id)a3 characteristicThresholds:(id)a4;
@end

@implementation HMDNotificationRegistryCoreDataCharacteristicsRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
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
      request = self->_request;
      v9 = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)v6 request];
      if ([(HMDNotificationRegistryCharacteristicsRequest *)request isEqual:v9])
      {
        characteristicThresholds = self->_characteristicThresholds;
        v11 = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)v7 characteristicThresholds];
        v12 = [(NSArray *)characteristicThresholds isEqual:v11];
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

- (HMDNotificationRegistryCoreDataCharacteristicsRequest)initWithRequest:(id)a3 characteristicThresholds:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDNotificationRegistryCoreDataCharacteristicsRequest;
  v9 = [(HMDNotificationRegistryCoreDataCharacteristicsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_characteristicThresholds, a4);
  }

  return v10;
}

@end