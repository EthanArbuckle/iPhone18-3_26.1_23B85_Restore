@interface UARPAccessoryHardwareIPv4
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryHardwareIPv4)initWithAppleModelNumber:(id)number;
- (id)description;
@end

@implementation UARPAccessoryHardwareIPv4

- (UARPAccessoryHardwareIPv4)initWithAppleModelNumber:(id)number
{
  numberCopy = number;
  v9.receiver = self;
  v9.super_class = UARPAccessoryHardwareIPv4;
  v5 = [(UARPAccessoryHardwareID *)&v9 initWithTransport:4];
  if (v5)
  {
    v6 = [numberCopy copy];
    appleModelNumber = v5->_appleModelNumber;
    v5->_appleModelNumber = v6;
  }

  return v5;
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
      transport = [(UARPAccessoryHardwareID *)self transport];
      if (transport == [(UARPAccessoryHardwareID *)v5 transport])
      {
        appleModelNumber = [(UARPAccessoryHardwareIPv4 *)self appleModelNumber];
        appleModelNumber2 = [(UARPAccessoryHardwareIPv4 *)v5 appleModelNumber];
        v9 = [appleModelNumber isEqualToString:appleModelNumber2];
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
  appleModelNumber = [(UARPAccessoryHardwareIPv4 *)self appleModelNumber];
  [v3 appendFormat:@"IPv4, <AMN = %@>", appleModelNumber];

  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v5;
}

@end