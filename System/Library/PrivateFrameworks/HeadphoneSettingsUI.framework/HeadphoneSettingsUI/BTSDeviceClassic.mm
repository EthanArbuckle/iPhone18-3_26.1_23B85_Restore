@interface BTSDeviceClassic
+ (id)deviceWithDevice:(id)device;
- (BOOL)cloudPaired;
- (BOOL)connect;
- (BOOL)connected;
- (BOOL)isCarPlayDevice;
- (BOOL)isHIDDevice;
- (BOOL)isLimitedConnectivityDevice;
- (BOOL)isMyDevice;
- (BOOL)isPSVR2Controller;
- (BOOL)isTemporaryPairedDevice;
- (BOOL)magicPaired;
- (BOOL)paired;
- (BOOL)setUserName:(id)name;
- (BTSDeviceClassic)initWithDevice:(id)device;
- (BluetoothDevice)device;
- (id)classicDevice;
- (id)description;
- (id)identifier;
- (id)name;
- (id)productName;
- (void)disconnect;
- (void)unpair;
@end

@implementation BTSDeviceClassic

- (BTSDeviceClassic)initWithDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = BTSDeviceClassic;
  v5 = [(BTSDeviceClassic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, deviceCopy);
  }

  return v6;
}

+ (id)deviceWithDevice:(id)device
{
  deviceCopy = device;
  v4 = [[BTSDeviceClassic alloc] initWithDevice:deviceCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(BTSDeviceClassic *)self isMyDevice])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if ([(BTSDeviceClassic *)self isHealthDevice])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  WeakRetained = objc_loadWeakRetained(&self->_device);
  if ([(BTSDeviceClassic *)self isTemporaryPairedDevice])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, myDevice = %s, healthDevice = %s, classicDevice = %@>, guest = %s", v4, self, v5, v6, WeakRetained, v8];

  return v9;
}

- (id)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  address = [WeakRetained address];

  return address;
}

- (id)name
{
  accessorySetupKitDisplayName = self->accessorySetupKitDisplayName;
  if (accessorySetupKitDisplayName)
  {
    name = accessorySetupKitDisplayName;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_device);
    name = [WeakRetained name];
  }

  return name;
}

- (id)productName
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  productName = [WeakRetained productName];

  return productName;
}

- (BOOL)connected
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  connected = [WeakRetained connected];

  return connected;
}

- (BOOL)paired
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  paired = [WeakRetained paired];

  return paired;
}

- (BOOL)cloudPaired
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  cloudPaired = [WeakRetained cloudPaired];

  return cloudPaired;
}

- (BOOL)magicPaired
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  magicPaired = [WeakRetained magicPaired];

  return magicPaired;
}

- (BOOL)isTemporaryPairedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  isTemporaryPaired = [WeakRetained isTemporaryPaired];

  return isTemporaryPaired;
}

- (id)classicDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (BOOL)isPSVR2Controller
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  vendorIdSrc = [WeakRetained vendorIdSrc];
  if (vendorIdSrc == 2 && (v2 = objc_loadWeakRetained(&self->_device), [v2 vendorId] == 1356))
  {
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_device);
    if ([v6 vendorIdSrc] != 1)
    {

      v10 = 0;
      v9 = 0;
      if (vendorIdSrc != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v7 = objc_loadWeakRetained(&self->_device);
    vendorId = [v7 vendorId];

    if (vendorIdSrc == 2)
    {
    }

    if (vendorId != 301)
    {
      return 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_device);
  if ([WeakRetained productId] != 3653)
  {
    v2 = objc_loadWeakRetained(&self->_device);
    v10 = [v2 productId] == 3654;
LABEL_13:

    v9 = v10;
    goto LABEL_14;
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (BOOL)isMyDevice
{
  paired = [(BTSDeviceClassic *)self paired];
  if (paired)
  {
    LOBYTE(paired) = ![(BTSDeviceClassic *)self isTemporaryPairedDevice];
  }

  return paired;
}

- (BOOL)setUserName:(id)name
{
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v6 = [WeakRetained setUserName:nameCopy];

  return v6;
}

- (BOOL)connect
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  [WeakRetained connect];

  return 1;
}

- (void)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  [WeakRetained disconnect];
}

- (void)unpair
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  [WeakRetained unpair];
}

- (BOOL)isLimitedConnectivityDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained getBehaviorForHIDDevice] != 0;

  return v3;
}

- (BOOL)isHIDDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained isServiceSupported:32];

  return v3;
}

- (BOOL)isCarPlayDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained isServiceSupported:0x40000];

  return v3;
}

- (BluetoothDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end