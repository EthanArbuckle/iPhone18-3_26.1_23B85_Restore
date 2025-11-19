@interface HPSProductUtils
+ (BOOL)isAppleHeadphone:(id)a3;
+ (BOOL)isBeatsNonWx:(id)a3;
+ (BOOL)isRealityDevice;
@end

@implementation HPSProductUtils

+ (BOOL)isAppleHeadphone:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = ([v3 isAppleAudioDevice] & 1) != 0 || objc_msgSend(v4, "productId") == 8209;
    if ([v4 productId] == 8214)
    {
      v5 = 1;
    }
  }

  else
  {
    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HPSProductUtils isAppleHeadphone:v6];
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)isBeatsNonWx:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 productId];
    v6 = [v4 productId];
    v7 = [v4 productId];
    v10 = v5 == 8209 || v6 == 8214 || v7 == 8230;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HPSProductUtils isBeatsNonWx:v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)isRealityDevice
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"RealityDevice"];

  return v3;
}

@end