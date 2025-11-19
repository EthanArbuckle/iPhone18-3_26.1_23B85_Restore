@interface UARPAccessoryHardwareBluetooth
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareBluetooth)init;
- (UARPAccessoryHardwareBluetooth)initWithVendorIDSource:(int64_t)a3 vendorID:(unsigned __int16)a4 productID:(unsigned __int16)a5 productVersion:(unsigned __int16)a6;
@end

@implementation UARPAccessoryHardwareBluetooth

- (UARPAccessoryHardwareBluetooth)init
{
  [(UARPAccessoryHardwareBluetooth *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareBluetooth)initWithVendorIDSource:(int64_t)a3 vendorID:(unsigned __int16)a4 productID:(unsigned __int16)a5 productVersion:(unsigned __int16)a6
{
  v11.receiver = self;
  v11.super_class = UARPAccessoryHardwareBluetooth;
  result = [(UARPAccessoryHardwareID *)&v11 initWithTransport:3];
  if (result)
  {
    result->_vendorIDSource = a3;
    result->_vendorID = a4;
    result->_productID = a5;
    result->_productVersion = a6;
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
      v11 = 1;
    }

    else
    {
      v5 = v4;
      vendorIDSource = self->_vendorIDSource;
      if (vendorIDSource == [(UARPAccessoryHardwareBluetooth *)v5 vendorIDSource]&& (v7 = [(UARPAccessoryHardwareID *)self transport], v7 == [(UARPAccessoryHardwareID *)v5 transport]) && (vendorID = self->_vendorID, vendorID == [(UARPAccessoryHardwareBluetooth *)v5 vendorID]) && (productID = self->_productID, productID == [(UARPAccessoryHardwareBluetooth *)v5 productID]))
      {
        productVersion = self->_productVersion;
        v11 = productVersion == [(UARPAccessoryHardwareBluetooth *)v5 productVersion];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end