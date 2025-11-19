@interface UARPAccessoryHardwareIPv6
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareIPv6)initWithAppleModelNumber:(id)a3;
- (id)description;
@end

@implementation UARPAccessoryHardwareIPv6

- (UARPAccessoryHardwareIPv6)initWithAppleModelNumber:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UARPAccessoryHardwareIPv6;
  v5 = [(UARPAccessoryHardwareID *)&v9 initWithTransport:4];
  if (v5)
  {
    v6 = [v4 copy];
    appleModelNumber = v5->_appleModelNumber;
    v5->_appleModelNumber = v6;
  }

  return v5;
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
      v6 = [(UARPAccessoryHardwareID *)self transport];
      if (v6 == [(UARPAccessoryHardwareID *)v5 transport])
      {
        v7 = [(UARPAccessoryHardwareIPv6 *)self appleModelNumber];
        v8 = [(UARPAccessoryHardwareIPv6 *)v5 appleModelNumber];
        v9 = [v7 isEqualToString:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(UARPAccessoryHardwareIPv6 *)self appleModelNumber];
  [v3 appendFormat:@"IPv6, <AMN = %@>", v4];

  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v5;
}

@end