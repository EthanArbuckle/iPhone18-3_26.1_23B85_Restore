@interface DSContinuityDevice
- (BOOL)isEqual:(id)a3;
- (DSContinuityDevice)initWithName:(id)a3 deviceID:(id)a4 relationshipID:(id)a5 initialDiscoveryDate:(id)a6;
@end

@implementation DSContinuityDevice

- (DSContinuityDevice)initWithName:(id)a3 deviceID:(id)a4 relationshipID:(id)a5 initialDiscoveryDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DSContinuityDevice;
  v14 = [(DSContinuityDevice *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(DSContinuityDevice *)v14 setName:v10];
    [(DSContinuityDevice *)v15 setDeviceID:v11];
    [(DSContinuityDevice *)v15 setRelationshipID:v12];
    [(DSContinuityDevice *)v15 setInitialDiscoveryDate:v13];
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DSContinuityDevice *)v4 pushToken];
      v6 = [(DSContinuityDevice *)self pushToken];
      if (v5 == v6)
      {
        v9 = 1;
      }

      else
      {
        v7 = [(DSContinuityDevice *)v4 deviceID];
        v8 = [(DSContinuityDevice *)self deviceID];
        v9 = v7 == v8;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end