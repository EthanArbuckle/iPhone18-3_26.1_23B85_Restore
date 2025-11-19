@interface HPCUIDevice
+ (id)bluetoothDeviceForAddress:(id)a3;
- (BOOL)batteryStatus:(id *)a3;
- (HPCUIDevice)initWithHeadphoneDevice:(id)a3 btsDevice:(id)a4;
- (id)address;
- (int)accessorySettingFeatureBitMask;
- (int)getDeviceColor:(unsigned int *)a3;
- (unsigned)productId;
@end

@implementation HPCUIDevice

- (HPCUIDevice)initWithHeadphoneDevice:(id)a3 btsDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HPCUIDevice;
  v9 = [(HPCUIDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_btsDevice, a4);
    objc_storeStrong(&v10->_headphoneDevice, a3);
  }

  return v10;
}

- (id)address
{
  v2 = [(HPCUIDevice *)self headphoneDevice];
  v3 = [v2 btAddress];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  return v4;
}

- (BOOL)batteryStatus:(id *)a3
{
  v5 = [(HPCUIDevice *)self headphoneDevice];
  v6 = [v5 batteryStateCase];

  v7 = [(HPCUIDevice *)self headphoneDevice];
  LODWORD(v5) = [v7 batteryStateLeft];

  v8 = [(HPCUIDevice *)self headphoneDevice];
  LODWORD(v7) = [v8 batteryStateRight];

  v9 = [(HPCUIDevice *)self headphoneDevice];
  LODWORD(v8) = [v9 batteryStateMain];

  v10 = [(HPCUIDevice *)self headphoneDevice];
  [v10 batteryLevelCase];
  a3->var6 = (v11 * 100.0);

  v12 = [(HPCUIDevice *)self headphoneDevice];
  [v12 batteryLevelLeft];
  a3->var4 = (v13 * 100.0);

  v14 = [(HPCUIDevice *)self headphoneDevice];
  [v14 batteryLevelRight];
  a3->var2 = (v15 * 100.0);

  v16 = [(HPCUIDevice *)self headphoneDevice];
  [v16 batteryLevelMain];
  a3->var0 = (v17 * 100.0);

  a3->var7 = v6 == 1;
  a3->var5 = v5 == 1;
  a3->var3 = v7 == 1;
  a3->var1 = v8 == 1;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", v6 == 1, v5 == 1, v7 == 1, v8 == 1, a3->var6, a3->var4, a3->var2, a3->var0];

  return 1;
}

- (unsigned)productId
{
  v2 = [(HPCUIDevice *)self headphoneDevice];
  v3 = [v2 productInfo];
  v4 = [v3 productID];

  return v4;
}

- (int)getDeviceColor:(unsigned int *)a3
{
  v5 = [MEMORY[0x1E698F468] sharedInstance];
  v6 = [(HPCUIDevice *)self address];
  v7 = [v5 deviceFromAddressString:v6];

  LODWORD(a3) = [v7 getDeviceColor:a3];
  return a3;
}

- (int)accessorySettingFeatureBitMask
{
  v3 = [(HPCUIDevice *)self headphoneDevice];
  v4 = [v3 productInfo];
  v5 = [v4 flags];

  v6 = [(HPCUIDevice *)self headphoneDevice];
  v7 = [v6 supportsFeatureWithFeature:0];

  v8 = [(HPCUIDevice *)self headphoneDevice];
  v9 = [v8 supportsFeatureWithFeature:3];

  if (v9)
  {
    v10 = v7 | 2;
  }

  else
  {
    v10 = v7;
  }

  v11 = [(HPCUIDevice *)self headphoneDevice];
  v12 = [v11 cbDevice];
  v13 = [v12 doubleTapCapability];

  if (v13 == 2)
  {
    v14 = v10 | 4;
  }

  else
  {
    v14 = v10;
  }

  v15 = [(HPCUIDevice *)self headphoneDevice];
  v16 = [v15 supportsFeatureWithFeature:5];

  if ((*&v16 & ((v5 & 8) >> 3)) != 0)
  {
    v14 |= 0x20u;
  }

  v17 = [(HPCUIDevice *)self headphoneDevice];
  v18 = [v17 supportsFeatureWithFeature:5];

  if (v18)
  {
    v19 = v14 | 8;
  }

  else
  {
    v19 = v14;
  }

  v20 = [(HPCUIDevice *)self headphoneDevice];
  v21 = [v20 supportsFeatureWithFeature:7];
  v22 = v19 | 0x10;
  if (!v21)
  {
    v22 = v19;
  }

  if ((v5 & 8) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 | 0x400;
  }

  return v23;
}

+ (id)bluetoothDeviceForAddress:(id)a3
{
  v3 = MEMORY[0x1E698F468];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 deviceFromAddressString:v4];

  return v6;
}

@end