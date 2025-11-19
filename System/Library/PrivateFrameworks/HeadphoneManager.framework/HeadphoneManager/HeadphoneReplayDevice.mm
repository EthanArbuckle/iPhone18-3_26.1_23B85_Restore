@interface HeadphoneReplayDevice
- (BOOL)isServiceSupported:(unsigned int)a3;
- (CBProductInfo)productInfo;
- (NSString)name;
- (float)batteryLevelCase;
- (float)batteryLevelLeft;
- (float)batteryLevelMain;
- (float)batteryLevelRight;
- (unsigned)accessorySettingFeatureBitMask;
- (unsigned)deviceColor;
- (void)setAccessorySettingFeatureBitMask:(unsigned int)a3;
- (void)setBatteryLevelCase:(float)a3;
- (void)setBatteryLevelLeft:(float)a3;
- (void)setBatteryLevelMain:(float)a3;
- (void)setBatteryLevelRight:(float)a3;
- (void)setDeviceColor:(unsigned int)a3;
- (void)setName:(id)a3;
- (void)setProductInfo:(id)a3;
@end

@implementation HeadphoneReplayDevice

- (NSString)name
{
  MEMORY[0x1E69E5928](self);
  v5 = HeadphoneReplayDevice.name.getter();
  v6 = v2;
  MEMORY[0x1E69E5920](self);
  v7 = MEMORY[0x1DA730940](v5, v6);

  return v7;
}

- (void)setName:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  HeadphoneReplayDevice.name.setter();
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (unsigned)accessorySettingFeatureBitMask
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.accessorySettingFeatureBitMask.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setAccessorySettingFeatureBitMask:(unsigned int)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.accessorySettingFeatureBitMask.setter(a3);
  MEMORY[0x1E69E5920](self);
}

- (unsigned)deviceColor
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.deviceColor.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setDeviceColor:(unsigned int)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.deviceColor.setter(a3);
  MEMORY[0x1E69E5920](self);
}

- (CBProductInfo)productInfo
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.productInfo.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setProductInfo:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.productInfo.setter(a3);
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelMain
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.batteryLevelMain.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelMain:(float)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.batteryLevelMain.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelCase
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.batteryLevelCase.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelCase:(float)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.batteryLevelCase.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelLeft
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.batteryLevelLeft.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelLeft:(float)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.batteryLevelLeft.setter();
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelRight
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.batteryLevelRight.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelRight:(float)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.batteryLevelRight.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isServiceSupported:(unsigned int)a3
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.isServiceSupported(_:)(a3);
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

@end