@interface UARPAccessoryHardwareCHIP
- (UARPAccessoryHardwareCHIP)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4 hardwareID:(unsigned __int16)a5 metadata:(id)a6;
@end

@implementation UARPAccessoryHardwareCHIP

- (UARPAccessoryHardwareCHIP)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4 hardwareID:(unsigned __int16)a5 metadata:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = UARPAccessoryHardwareCHIP;
  v12 = [(UARPAccessoryHardwareID *)&v15 initWithTransport:6];
  v13 = v12;
  if (v12)
  {
    v12->_vendorID = a3;
    v12->_productID = a4;
    v12->_hwID = a5;
    objc_storeStrong(&v12->_metadata, a6);
  }

  return v13;
}

@end