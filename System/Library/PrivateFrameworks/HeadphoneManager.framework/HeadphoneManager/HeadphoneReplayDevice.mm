@interface HeadphoneReplayDevice
- (BOOL)isServiceSupported:(unsigned int)supported;
- (CBProductInfo)productInfo;
- (NSString)name;
- (float)batteryLevelCase;
- (float)batteryLevelLeft;
- (float)batteryLevelMain;
- (float)batteryLevelRight;
- (unsigned)accessorySettingFeatureBitMask;
- (unsigned)deviceColor;
- (void)setAccessorySettingFeatureBitMask:(unsigned int)mask;
- (void)setBatteryLevelCase:(float)case;
- (void)setBatteryLevelLeft:(float)left;
- (void)setBatteryLevelMain:(float)main;
- (void)setBatteryLevelRight:(float)right;
- (void)setDeviceColor:(unsigned int)color;
- (void)setName:(id)name;
- (void)setProductInfo:(id)info;
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

- (void)setName:(id)name
{
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](self);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  HeadphoneReplayDevice.name.setter();
  MEMORY[0x1E69E5920](name);
  MEMORY[0x1E69E5920](self);
}

- (unsigned)accessorySettingFeatureBitMask
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.accessorySettingFeatureBitMask.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setAccessorySettingFeatureBitMask:(unsigned int)mask
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.accessorySettingFeatureBitMask.setter(mask);
  MEMORY[0x1E69E5920](self);
}

- (unsigned)deviceColor
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.deviceColor.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setDeviceColor:(unsigned int)color
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.deviceColor.setter(color);
  MEMORY[0x1E69E5920](self);
}

- (CBProductInfo)productInfo
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.productInfo.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setProductInfo:(id)info
{
  MEMORY[0x1E69E5928](info);
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.productInfo.setter(info);
  MEMORY[0x1E69E5920](self);
}

- (float)batteryLevelMain
{
  MEMORY[0x1E69E5928](self);
  v4 = HeadphoneReplayDevice.batteryLevelMain.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBatteryLevelMain:(float)main
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

- (void)setBatteryLevelCase:(float)case
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

- (void)setBatteryLevelLeft:(float)left
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

- (void)setBatteryLevelRight:(float)right
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.batteryLevelRight.setter();
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isServiceSupported:(unsigned int)supported
{
  MEMORY[0x1E69E5928](self);
  HeadphoneReplayDevice.isServiceSupported(_:)(supported);
  MEMORY[0x1E69E5920](self);
  return _convertBoolToObjCBool(_:)() & 1;
}

@end