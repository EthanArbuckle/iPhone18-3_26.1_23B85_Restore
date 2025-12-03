@interface HPSProductUtils
+ (BOOL)isAppleHeadphone:(id)headphone;
+ (BOOL)isBeatsNonWx:(id)wx;
+ (BOOL)isRealityDevice;
@end

@implementation HPSProductUtils

+ (BOOL)isAppleHeadphone:(id)headphone
{
  headphoneCopy = headphone;
  v4 = headphoneCopy;
  if (headphoneCopy)
  {
    v5 = ([headphoneCopy isAppleAudioDevice] & 1) != 0 || objc_msgSend(v4, "productId") == 8209;
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

+ (BOOL)isBeatsNonWx:(id)wx
{
  wxCopy = wx;
  v4 = wxCopy;
  if (wxCopy)
  {
    productId = [wxCopy productId];
    productId2 = [v4 productId];
    productId3 = [v4 productId];
    v10 = productId == 8209 || productId2 == 8214 || productId3 == 8230;
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