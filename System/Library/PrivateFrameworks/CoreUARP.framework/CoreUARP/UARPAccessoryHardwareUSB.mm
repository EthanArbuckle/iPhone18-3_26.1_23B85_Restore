@interface UARPAccessoryHardwareUSB
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryHardwareUSB)init;
- (UARPAccessoryHardwareUSB)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD;
@end

@implementation UARPAccessoryHardwareUSB

- (UARPAccessoryHardwareUSB)init
{
  [(UARPAccessoryHardwareUSB *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareUSB)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHardwareUSB;
  result = [(UARPAccessoryHardwareID *)&v7 initWithTransport:2];
  if (result)
  {
    result->_vendorID = d;
    result->_productID = iD;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v9 = 1;
    }

    else
    {
      v5 = equalCopy;
      transport = [(UARPAccessoryHardwareID *)self transport];
      if (transport == [(UARPAccessoryHardwareID *)v5 transport]&& (vendorID = self->_vendorID, vendorID == [(UARPAccessoryHardwareUSB *)v5 vendorID]))
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