@interface UARPAccessoryHardwareUSBPD
- (BOOL)isEqual:(id)a3;
- (UARPAccessoryHardwareUSBPD)init;
- (UARPAccessoryHardwareUSBPD)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4;
- (id)description;
@end

@implementation UARPAccessoryHardwareUSBPD

- (UARPAccessoryHardwareUSBPD)init
{
  [(UARPAccessoryHardwareUSBPD *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPAccessoryHardwareUSBPD)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = UARPAccessoryHardwareUSBPD;
  result = [(UARPAccessoryHardwareID *)&v7 initWithTransport:8];
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
      if (v6 == [(UARPAccessoryHardwareID *)v5 transport]&& (vendorID = self->_vendorID, vendorID == [(UARPAccessoryHardwareUSBPD *)v5 vendorID]))
      {
        productID = self->_productID;
        v9 = productID == [(UARPAccessoryHardwareUSBPD *)v5 productID];
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  vendorID = self->_vendorID;
  productID = self->_productID;
  v6 = UARPUSBPDDeviceClassToString(self->_usbpdClass);
  v7 = UARPAccessoryUSBPDLocationTypeToString(self->_location);
  if (self->_supportsAccMode7)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  return [v3 stringWithFormat:@"USB-PD, VID/PID = 0x%04x/0x%04x, Class = %s, Location = %s, Supports AccMode7 = %s", vendorID, productID, v6, v7, v8];
}

@end