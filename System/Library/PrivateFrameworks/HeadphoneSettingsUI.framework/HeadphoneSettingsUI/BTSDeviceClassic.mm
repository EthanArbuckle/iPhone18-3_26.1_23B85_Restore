@interface BTSDeviceClassic
+ (id)deviceWithDevice:(id)a3;
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
- (BOOL)setUserName:(id)a3;
- (BTSDeviceClassic)initWithDevice:(id)a3;
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

- (BTSDeviceClassic)initWithDevice:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BTSDeviceClassic;
  v5 = [(BTSDeviceClassic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, v4);
  }

  return v6;
}

+ (id)deviceWithDevice:(id)a3
{
  v3 = a3;
  v4 = [[BTSDeviceClassic alloc] initWithDevice:v3];

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
  v3 = [WeakRetained address];

  return v3;
}

- (id)name
{
  accessorySetupKitDisplayName = self->accessorySetupKitDisplayName;
  if (accessorySetupKitDisplayName)
  {
    v3 = accessorySetupKitDisplayName;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_device);
    v3 = [WeakRetained name];
  }

  return v3;
}

- (id)productName
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained productName];

  return v3;
}

- (BOOL)connected
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained connected];

  return v3;
}

- (BOOL)paired
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained paired];

  return v3;
}

- (BOOL)cloudPaired
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained cloudPaired];

  return v3;
}

- (BOOL)magicPaired
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained magicPaired];

  return v3;
}

- (BOOL)isTemporaryPairedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained isTemporaryPaired];

  return v3;
}

- (id)classicDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (BOOL)isPSVR2Controller
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v5 = [WeakRetained vendorIdSrc];
  if (v5 == 2 && (v2 = objc_loadWeakRetained(&self->_device), [v2 vendorId] == 1356))
  {
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_device);
    if ([v6 vendorIdSrc] != 1)
    {

      v10 = 0;
      v9 = 0;
      if (v5 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v7 = objc_loadWeakRetained(&self->_device);
    v8 = [v7 vendorId];

    if (v5 == 2)
    {
    }

    if (v8 != 301)
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
  v3 = [(BTSDeviceClassic *)self paired];
  if (v3)
  {
    LOBYTE(v3) = ![(BTSDeviceClassic *)self isTemporaryPairedDevice];
  }

  return v3;
}

- (BOOL)setUserName:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v6 = [WeakRetained setUserName:v4];

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