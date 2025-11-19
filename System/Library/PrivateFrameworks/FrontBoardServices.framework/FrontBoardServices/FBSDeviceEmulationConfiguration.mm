@interface FBSDeviceEmulationConfiguration
+ (BOOL)_forceIsD22ChecksToPass;
+ (BOOL)_isEmulatedDeviceViaDefaults;
+ (BOOL)_isEmulatedDeviceViaGestalt;
+ (BOOL)isEmulatedDevice;
+ (CGRect)emulatedDeviceBounds;
+ (NSBundle)emulatedDeviceImageContainingBundle;
+ (NSString)emulatedDeviceBezelImageName;
+ (NSString)emulatedDeviceMaskImageName;
+ (NSString)rootLayerBackgroundColorString;
+ (double)customScaleFactorX;
+ (double)customScaleFactorY;
+ (double)customTranslationOffsetX;
+ (double)customTranslationOffsetY;
+ (double)emulatedDisplayCornerRadius;
+ (id)_sharedDefaults;
+ (int)emulatedDeviceClass;
+ (int64_t)emulatedArtworkSubtype;
+ (int64_t)emulatedHomeButtonType;
+ (int64_t)scalingStyle;
@end

@implementation FBSDeviceEmulationConfiguration

+ (BOOL)isEmulatedDevice
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    if ([a1 _isEmulatedDeviceViaGestalt])
    {
      LOBYTE(has_internal_diagnostics) = 1;
    }

    else
    {

      LOBYTE(has_internal_diagnostics) = [a1 _isEmulatedDeviceViaDefaults];
    }
  }

  return has_internal_diagnostics;
}

+ (BOOL)_isEmulatedDeviceViaGestalt
{
  if (_isEmulatedDeviceViaGestalt_onceToken != -1)
  {
    +[FBSDeviceEmulationConfiguration _isEmulatedDeviceViaGestalt];
  }

  return _isEmulatedDeviceViaGestalt_sIsEmulatedDevice;
}

+ (BOOL)_isEmulatedDeviceViaDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__FBSDeviceEmulationConfiguration__isEmulatedDeviceViaDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_isEmulatedDeviceViaDefaults_onceToken != -1)
  {
    dispatch_once(&_isEmulatedDeviceViaDefaults_onceToken, block);
  }

  return _isEmulatedDeviceViaDefaults_isEmulatedViaDefaults;
}

uint64_t __62__FBSDeviceEmulationConfiguration__isEmulatedDeviceViaGestalt__block_invoke()
{
  result = MGGetBoolAnswer();
  _isEmulatedDeviceViaGestalt_sIsEmulatedDevice = result;
  return result;
}

void __63__FBSDeviceEmulationConfiguration__isEmulatedDeviceViaDefaults__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _sharedDefaults];
  _isEmulatedDeviceViaDefaults_isEmulatedViaDefaults = [v1 enableEmulation];
}

+ (id)_sharedDefaults
{
  if (_sharedDefaults_onceToken != -1)
  {
    +[FBSDeviceEmulationConfiguration _sharedDefaults];
  }

  v3 = _sharedDefaults_sEmulationDefaults;

  return v3;
}

uint64_t __50__FBSDeviceEmulationConfiguration__sharedDefaults__block_invoke()
{
  _sharedDefaults_sEmulationDefaults = [(BSAbstractDefaultDomain *)[FBSDeviceEmulationDefaults alloc] _initWithDomain:@"com.apple.frontboardservices.device_emulation"];

  return MEMORY[0x1EEE66BB8]();
}

+ (int64_t)scalingStyle
{
  if (![a1 isEmulatedDevice])
  {
    return 0;
  }

  v3 = [a1 _sharedDefaults];
  v4 = [v3 scalingStyle];

  return v4;
}

+ (double)customScaleFactorX
{
  if (![a1 isEmulatedDevice])
  {
    return 0.0;
  }

  v3 = [a1 _sharedDefaults];
  [v3 customScaleFactorX];
  v5 = v4;

  return v5;
}

+ (double)customScaleFactorY
{
  if (![a1 isEmulatedDevice])
  {
    return 0.0;
  }

  v3 = [a1 _sharedDefaults];
  [v3 customScaleFactorY];
  v5 = v4;

  return v5;
}

+ (double)customTranslationOffsetX
{
  if (![a1 isEmulatedDevice])
  {
    return 0.0;
  }

  v3 = [a1 _sharedDefaults];
  [v3 customTranslationOffsetX];
  v5 = v4;

  return v5;
}

+ (double)customTranslationOffsetY
{
  if (![a1 isEmulatedDevice])
  {
    return 0.0;
  }

  v3 = [a1 _sharedDefaults];
  [v3 customTranslationOffsetY];
  v5 = v4;

  return v5;
}

+ (CGRect)emulatedDeviceBounds
{
  v4 = [a1 isEmulatedDevice];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v2 = [a1 _sharedDefaults];
    [v2 emulatedDisplayWidth];
    v6 = v7;
  }

  if ([a1 isEmulatedDevice])
  {
    v8 = [a1 _sharedDefaults];
    [v8 emulatedDisplayHeight];
    v5 = v9;
  }

  if (v4)
  {
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = v6;
  v13 = v5;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (double)emulatedDisplayCornerRadius
{
  if (![a1 isEmulatedDevice])
  {
    return -1.0;
  }

  v3 = [a1 _sharedDefaults];
  [v3 emulatedDisplayCornerRadius];
  v5 = v4;

  return v5;
}

+ (NSString)emulatedDeviceBezelImageName
{
  if ([a1 isEmulatedDevice])
  {
    v3 = [a1 _sharedDefaults];
    v4 = [v3 bezelImageName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSString)emulatedDeviceMaskImageName
{
  if ([a1 isEmulatedDevice])
  {
    v3 = [a1 _sharedDefaults];
    v4 = [v3 maskImageName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSBundle)emulatedDeviceImageContainingBundle
{
  if ([a1 isEmulatedDevice] && (objc_msgSend(a1, "_sharedDefaults"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "imageContainingBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    v5 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v4];
    v6 = MEMORY[0x1E696AAE8];
    v7 = [v5 bundleURL];
    v8 = [v6 bundleWithURL:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  return v8;
}

+ (NSString)rootLayerBackgroundColorString
{
  if ([a1 isEmulatedDevice])
  {
    v3 = [a1 _sharedDefaults];
    v4 = [v3 rootLayerBackgroundColorString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)emulatedHomeButtonType
{
  if (![a1 isEmulatedDevice])
  {
    return -1;
  }

  v3 = [a1 _sharedDefaults];
  v4 = [v3 emulatedHomeButtonType];

  return v4;
}

+ (int)emulatedDeviceClass
{
  if (![a1 isEmulatedDevice])
  {
    return -1;
  }

  v3 = [a1 _sharedDefaults];
  v4 = [v3 emulatedDeviceClass];

  return v4;
}

+ (int64_t)emulatedArtworkSubtype
{
  if (![a1 isEmulatedDevice])
  {
    return -1;
  }

  v3 = [a1 _sharedDefaults];
  v4 = [v3 emulatedArtworkSubtype];

  return v4;
}

+ (BOOL)_forceIsD22ChecksToPass
{
  v3 = [a1 isEmulatedDevice];
  if (v3)
  {
    v4 = [a1 _sharedDefaults];
    v5 = [v4 forceIsD22ChecksToPass];

    LOBYTE(v3) = v5;
  }

  return v3;
}

@end