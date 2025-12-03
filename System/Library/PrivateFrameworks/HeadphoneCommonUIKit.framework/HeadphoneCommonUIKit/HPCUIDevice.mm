@interface HPCUIDevice
+ (id)bluetoothDeviceForAddress:(id)address;
- (BOOL)batteryStatus:(id *)status;
- (HPCUIDevice)initWithHeadphoneDevice:(id)device btsDevice:(id)btsDevice;
- (id)address;
- (int)accessorySettingFeatureBitMask;
- (int)getDeviceColor:(unsigned int *)color;
- (unsigned)productId;
@end

@implementation HPCUIDevice

- (HPCUIDevice)initWithHeadphoneDevice:(id)device btsDevice:(id)btsDevice
{
  deviceCopy = device;
  btsDeviceCopy = btsDevice;
  v12.receiver = self;
  v12.super_class = HPCUIDevice;
  v9 = [(HPCUIDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_btsDevice, btsDevice);
    objc_storeStrong(&v10->_headphoneDevice, device);
  }

  return v10;
}

- (id)address
{
  headphoneDevice = [(HPCUIDevice *)self headphoneDevice];
  btAddress = [headphoneDevice btAddress];
  v4 = [btAddress stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  return v4;
}

- (BOOL)batteryStatus:(id *)status
{
  headphoneDevice = [(HPCUIDevice *)self headphoneDevice];
  batteryStateCase = [headphoneDevice batteryStateCase];

  headphoneDevice2 = [(HPCUIDevice *)self headphoneDevice];
  LODWORD(headphoneDevice) = [headphoneDevice2 batteryStateLeft];

  headphoneDevice3 = [(HPCUIDevice *)self headphoneDevice];
  LODWORD(headphoneDevice2) = [headphoneDevice3 batteryStateRight];

  headphoneDevice4 = [(HPCUIDevice *)self headphoneDevice];
  LODWORD(headphoneDevice3) = [headphoneDevice4 batteryStateMain];

  headphoneDevice5 = [(HPCUIDevice *)self headphoneDevice];
  [headphoneDevice5 batteryLevelCase];
  status->var6 = (v11 * 100.0);

  headphoneDevice6 = [(HPCUIDevice *)self headphoneDevice];
  [headphoneDevice6 batteryLevelLeft];
  status->var4 = (v13 * 100.0);

  headphoneDevice7 = [(HPCUIDevice *)self headphoneDevice];
  [headphoneDevice7 batteryLevelRight];
  status->var2 = (v15 * 100.0);

  headphoneDevice8 = [(HPCUIDevice *)self headphoneDevice];
  [headphoneDevice8 batteryLevelMain];
  status->var0 = (v17 * 100.0);

  status->var7 = batteryStateCase == 1;
  status->var5 = headphoneDevice == 1;
  status->var3 = headphoneDevice2 == 1;
  status->var1 = headphoneDevice3 == 1;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", batteryStateCase == 1, headphoneDevice == 1, headphoneDevice2 == 1, headphoneDevice3 == 1, status->var6, status->var4, status->var2, status->var0];

  return 1;
}

- (unsigned)productId
{
  headphoneDevice = [(HPCUIDevice *)self headphoneDevice];
  productInfo = [headphoneDevice productInfo];
  productID = [productInfo productID];

  return productID;
}

- (int)getDeviceColor:(unsigned int *)color
{
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  address = [(HPCUIDevice *)self address];
  v7 = [mEMORY[0x1E698F468] deviceFromAddressString:address];

  LODWORD(color) = [v7 getDeviceColor:color];
  return color;
}

- (int)accessorySettingFeatureBitMask
{
  headphoneDevice = [(HPCUIDevice *)self headphoneDevice];
  productInfo = [headphoneDevice productInfo];
  flags = [productInfo flags];

  headphoneDevice2 = [(HPCUIDevice *)self headphoneDevice];
  v7 = [headphoneDevice2 supportsFeatureWithFeature:0];

  headphoneDevice3 = [(HPCUIDevice *)self headphoneDevice];
  v9 = [headphoneDevice3 supportsFeatureWithFeature:3];

  if (v9)
  {
    v10 = v7 | 2;
  }

  else
  {
    v10 = v7;
  }

  headphoneDevice4 = [(HPCUIDevice *)self headphoneDevice];
  cbDevice = [headphoneDevice4 cbDevice];
  doubleTapCapability = [cbDevice doubleTapCapability];

  if (doubleTapCapability == 2)
  {
    v14 = v10 | 4;
  }

  else
  {
    v14 = v10;
  }

  headphoneDevice5 = [(HPCUIDevice *)self headphoneDevice];
  v16 = [headphoneDevice5 supportsFeatureWithFeature:5];

  if ((*&v16 & ((flags & 8) >> 3)) != 0)
  {
    v14 |= 0x20u;
  }

  headphoneDevice6 = [(HPCUIDevice *)self headphoneDevice];
  v18 = [headphoneDevice6 supportsFeatureWithFeature:5];

  if (v18)
  {
    v19 = v14 | 8;
  }

  else
  {
    v19 = v14;
  }

  headphoneDevice7 = [(HPCUIDevice *)self headphoneDevice];
  v21 = [headphoneDevice7 supportsFeatureWithFeature:7];
  v22 = v19 | 0x10;
  if (!v21)
  {
    v22 = v19;
  }

  if ((flags & 8) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 | 0x400;
  }

  return v23;
}

+ (id)bluetoothDeviceForAddress:(id)address
{
  v3 = MEMORY[0x1E698F468];
  addressCopy = address;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance deviceFromAddressString:addressCopy];

  return v6;
}

@end