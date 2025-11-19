@interface UARPAccessoryHardwareHDS
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareHDS)init;
- (UARPAccessoryHardwareHDS)initWithUUID:(id)a3;
- (id)description;
@end

@implementation UARPAccessoryHardwareHDS

- (UARPAccessoryHardwareHDS)init
{
  [(UARPAccessoryHardwareHDS *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareHDS)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UARPAccessoryHardwareHDS;
  v6 = [(UARPAccessoryHardwareID *)&v9 initWithTransport:7];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v12 = 1;
    }

    else
    {
      uuid = self->_uuid;
      v6 = v4;
      v7 = [(NSUUID *)uuid UUIDString];
      v8 = [(UARPAccessoryHardwareHDS *)v6 uuid];
      v9 = [v8 UUIDString];

      LOBYTE(v8) = [v7 isEqualToString:v9];
      v10 = [(UARPAccessoryHardwareID *)self transport];
      v11 = [(UARPAccessoryHardwareID *)v6 transport];

      v12 = (v10 == v11) & v8;
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
  v3 = [(NSUUID *)self->_uuid UUIDString];
  v4 = [v2 stringWithFormat:@"HDS, UUID = %@", v3];

  return v4;
}

@end