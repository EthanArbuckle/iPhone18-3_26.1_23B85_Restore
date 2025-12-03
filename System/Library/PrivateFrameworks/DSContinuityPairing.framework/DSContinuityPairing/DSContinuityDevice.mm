@interface DSContinuityDevice
- (BOOL)isEqual:(id)equal;
- (DSContinuityDevice)initWithName:(id)name deviceID:(id)d relationshipID:(id)iD initialDiscoveryDate:(id)date;
@end

@implementation DSContinuityDevice

- (DSContinuityDevice)initWithName:(id)name deviceID:(id)d relationshipID:(id)iD initialDiscoveryDate:(id)date
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = DSContinuityDevice;
  v14 = [(DSContinuityDevice *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(DSContinuityDevice *)v14 setName:nameCopy];
    [(DSContinuityDevice *)v15 setDeviceID:dCopy];
    [(DSContinuityDevice *)v15 setRelationshipID:iDCopy];
    [(DSContinuityDevice *)v15 setInitialDiscoveryDate:dateCopy];
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pushToken = [(DSContinuityDevice *)equalCopy pushToken];
      pushToken2 = [(DSContinuityDevice *)self pushToken];
      if (pushToken == pushToken2)
      {
        v9 = 1;
      }

      else
      {
        deviceID = [(DSContinuityDevice *)equalCopy deviceID];
        deviceID2 = [(DSContinuityDevice *)self deviceID];
        v9 = deviceID == deviceID2;
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