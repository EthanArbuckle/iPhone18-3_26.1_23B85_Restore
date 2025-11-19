@interface UARPAccessoryHardwareUSB
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareUSB)init;
- (UARPAccessoryHardwareUSB)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
@end

@implementation UARPAccessoryHardwareUSB

- (UARPAccessoryHardwareUSB)init
{
  [(UARPAccessoryHardwareUSB *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareUSB)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHardwareUSB;
  result = [(UARPAccessoryHardwareID *)&v7 initWithTransport:2];
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
      v9 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(UARPAccessoryHardwareID *)self transport];
      if (v6 == [(UARPAccessoryHardwareID *)v5 transport]&& (vendorID = self->_vendorID, vendorID == [(UARPAccessoryHardwareUSB *)v5 vendorID]))
      {
        productID = self->_productID;
        v9 = productID == [(UARPAccessoryHardwareUSB *)v5 productID];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end