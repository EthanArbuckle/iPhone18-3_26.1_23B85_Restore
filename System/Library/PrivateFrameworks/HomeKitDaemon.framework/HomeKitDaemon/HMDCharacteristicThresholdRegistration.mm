@interface HMDCharacteristicThresholdRegistration
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicThresholdRegistration)initWithClientID:(id)d updateThreshold:(id)threshold;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicThresholdRegistration

- (unint64_t)hash
{
  clientID = [(HMDCharacteristicThresholdRegistration *)self clientID];
  v3 = [clientID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
    if (v6)
    {
      clientID = [(HMDCharacteristicThresholdRegistration *)self clientID];
      clientID2 = [(HMDCharacteristicThresholdRegistration *)v6 clientID];
      v9 = [clientID isEqualToString:clientID2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMDCharacteristicThresholdRegistration)initWithClientID:(id)d updateThreshold:(id)threshold
{
  dCopy = d;
  thresholdCopy = threshold;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicThresholdRegistration;
  v8 = [(HMDCharacteristicThresholdRegistration *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    clientID = v8->_clientID;
    v8->_clientID = v9;

    v11 = [thresholdCopy copy];
    updateThreshold = v8->_updateThreshold;
    v8->_updateThreshold = v11;
  }

  return v8;
}

@end