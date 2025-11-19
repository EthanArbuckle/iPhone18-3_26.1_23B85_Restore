@interface UARPAccessoryHardwareB2PHID
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareB2PHID)init;
- (UARPAccessoryHardwareB2PHID)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
@end

@implementation UARPAccessoryHardwareB2PHID

- (UARPAccessoryHardwareB2PHID)init
{
  [(UARPAccessoryHardwareB2PHID *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareB2PHID)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHardwareB2PHID;
  result = [(UARPAccessoryHardwareID *)&v7 initWithTransport:9];
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
      if (v6 == [(UARPAccessoryHardwareID *)v5 transport]&& (vendorID = self->_vendorID, vendorID == [(UARPAccessoryHardwareB2PHID *)v5 vendorID]))
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