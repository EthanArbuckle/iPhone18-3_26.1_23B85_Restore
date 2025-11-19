@interface UARPAccessoryHIDPersonality
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHIDPersonality)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
@end

@implementation UARPAccessoryHIDPersonality

- (UARPAccessoryHIDPersonality)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHIDPersonality;
  result = [(UARPAccessoryHIDPersonality *)&v7 init];
  if (result)
  {
    result->_vendorID = a3;
    result->_productID = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(UARPAccessoryHIDPersonality *)self vendorID];
      if (v6 == [(UARPAccessoryHIDPersonality *)v5 vendorID])
      {
        v7 = [(UARPAccessoryHIDPersonality *)self productID];
        v8 = v7 == [(UARPAccessoryHIDPersonality *)v5 productID];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end