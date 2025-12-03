@interface UARPAccessoryHardwareCHIP
- (UARPAccessoryHardwareCHIP)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD hardwareID:(unsigned __int16)hardwareID metadata:(id)metadata;
@end

@implementation UARPAccessoryHardwareCHIP

- (UARPAccessoryHardwareCHIP)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD hardwareID:(unsigned __int16)hardwareID metadata:(id)metadata
{
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = UARPAccessoryHardwareCHIP;
  v12 = [(UARPAccessoryHardwareID *)&v15 initWithTransport:6];
  v13 = v12;
  if (v12)
  {
    v12->_vendorID = d;
    v12->_productID = iD;
    v12->_hwID = hardwareID;
    objc_storeStrong(&v12->_metadata, metadata);
  }

  return v13;
}

@end