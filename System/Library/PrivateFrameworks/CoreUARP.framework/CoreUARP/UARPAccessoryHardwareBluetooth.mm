@interface UARPAccessoryHardwareBluetooth
- (BOOL)isEqual:(id)equal;
- (UARPAccessoryHardwareBluetooth)init;
- (UARPAccessoryHardwareBluetooth)initWithVendorIDSource:(int64_t)source vendorID:(unsigned __int16)d productID:(unsigned __int16)iD productVersion:(unsigned __int16)version;
@end

@implementation UARPAccessoryHardwareBluetooth

- (UARPAccessoryHardwareBluetooth)init
{
  [(UARPAccessoryHardwareBluetooth *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareBluetooth)initWithVendorIDSource:(int64_t)source vendorID:(unsigned __int16)d productID:(unsigned __int16)iD productVersion:(unsigned __int16)version
{
  v11.receiver = self;
  v11.super_class = UARPAccessoryHardwareBluetooth;
  result = [(UARPAccessoryHardwareID *)&v11 initWithTransport:3];
  if (result)
  {
    result->_vendorIDSource = source;
    result->_vendorID = d;
    result->_productID = iD;
    result->_productVersion = version;
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
      v11 = 1;
    }

    else
    {
      v5 = equalCopy;
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