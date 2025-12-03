@interface UARPAccessoryHardwareB2PHID
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryHardwareB2PHID)init;
- (UARPAccessoryHardwareB2PHID)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD;
@end

@implementation UARPAccessoryHardwareB2PHID

- (UARPAccessoryHardwareB2PHID)init
{
  [(UARPAccessoryHardwareB2PHID *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareB2PHID)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHardwareB2PHID;
  result = [(UARPAccessoryHardwareID *)&v7 initWithTransport:9];
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
      if (transport == [(UARPAccessoryHardwareID *)v5 transport]&& (vendorID = self->_vendorID, vendorID == [(UARPAccessoryHardwareB2PHID *)v5 vendorID]))
      {
        productID = self->_productID;
        v9 = productID == [(UARPAccessoryHardwareB2PHID *)v5 productID];
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