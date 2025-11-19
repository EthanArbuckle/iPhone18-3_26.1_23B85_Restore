@interface HMDCharacteristicThresholdRegistration
- (BOOL)isEqual:(id)a3;
- (HMDCharacteristicThresholdRegistration)initWithClientID:(id)a3 updateThreshold:(id)a4;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicThresholdRegistration

- (unint64_t)hash
{
  v2 = [(HMDCharacteristicThresholdRegistration *)self clientID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
    if (v6)
    {
      v7 = [(HMDCharacteristicThresholdRegistration *)self clientID];
      v8 = [(HMDCharacteristicThresholdRegistration *)v6 clientID];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMDCharacteristicThresholdRegistration)initWithClientID:(id)a3 updateThreshold:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicThresholdRegistration;
  v8 = [(HMDCharacteristicThresholdRegistration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    clientID = v8->_clientID;
    v8->_clientID = v9;

    v11 = [v7 copy];
    updateThreshold = v8->_updateThreshold;
    v8->_updateThreshold = v11;
  }

  return v8;
}

@end