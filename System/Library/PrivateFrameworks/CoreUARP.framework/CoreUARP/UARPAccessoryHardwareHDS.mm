@interface UARPAccessoryHardwareHDS
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryHardwareHDS)init;
- (UARPAccessoryHardwareHDS)initWithUUID:(id)d;
- (id)description;
@end

@implementation UARPAccessoryHardwareHDS

- (UARPAccessoryHardwareHDS)init
{
  [(UARPAccessoryHardwareHDS *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareHDS)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = UARPAccessoryHardwareHDS;
  v6 = [(UARPAccessoryHardwareID *)&v9 initWithTransport:7];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v12 = 1;
    }

    else
    {
      uuid = self->_uuid;
      v6 = equalCopy;
      uUIDString = [(NSUUID *)uuid UUIDString];
      uuid = [(UARPAccessoryHardwareHDS *)v6 uuid];
      uUIDString2 = [uuid UUIDString];

      LOBYTE(uuid) = [uUIDString isEqualToString:uUIDString2];
      transport = [(UARPAccessoryHardwareID *)self transport];
      transport2 = [(UARPAccessoryHardwareID *)v6 transport];

      v12 = (transport == transport2) & uuid;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v4 = [v2 stringWithFormat:@"HDS, UUID = %@", uUIDString];

  return v4;
}

@end