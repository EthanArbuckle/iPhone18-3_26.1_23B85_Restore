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
    if ([self _isEmulatedDeviceViaGestalt])
    {
      LOBYTE(has_internal_diagnostics) = 1;
    }

    else
    {

      LOBYTE(has_internal_diagnostics) = [self _isEmulatedDeviceViaDefaults];
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
  block[4] = self;
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
  if (![self isEmulatedDevice])
  {
    return 0;
  }

  _sharedDefaults = [self _sharedDefaults];
  scalingStyle = [_sharedDefaults scalingStyle];

  return scalingStyle;
}

+ (double)customScaleFactorX
{
  if (![self isEmulatedDevice])
  {
    return 0.0;
  }

  _sharedDefaults = [self _sharedDefaults];
  [_sharedDefaults customScaleFactorX];
  v5 = v4;

  return v5;
}

+ (double)customScaleFactorY
{
  if (![self isEmulatedDevice])
  {
    return 0.0;
  }

  _sharedDefaults = [self _sharedDefaults];
  [_sharedDefaults customScaleFactorY];
  v5 = v4;

  return v5;
}

+ (double)customTranslationOffsetX
{
  if (![self isEmulatedDevice])
  {
    return 0.0;
  }

  _sharedDefaults = [self _sharedDefaults];
  [_sharedDefaults customTranslationOffsetX];
  v5 = v4;

  return v5;
}

+ (double)customTranslationOffsetY
{
  if (![self isEmulatedDevice])
  {
    return 0.0;
  }

  _sharedDefaults = [self _sharedDefaults];
  [_sharedDefaults customTranslationOffsetY];
  v5 = v4;

  return v5;
}

+ (CGRect)emulatedDeviceBounds
{
  isEmulatedDevice = [self isEmulatedDevice];
  v5 = 0.0;
  v6 = 0.0;
  if (isEmulatedDevice)
  {
    _sharedDefaults = [self _sharedDefaults];
    [_sharedDefaults emulatedDisplayWidth];
    v6 = v7;
  }

  if ([self isEmulatedDevice])
  {
    _sharedDefaults2 = [self _sharedDefaults];
    [_sharedDefaults2 emulatedDisplayHeight];
    v5 = v9;
  }

  if (isEmulatedDevice)
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
  if (![self isEmulatedDevice])
  {
    return -1.0;
  }

  _sharedDefaults = [self _sharedDefaults];
  [_sharedDefaults emulatedDisplayCornerRadius];
  v5 = v4;

  return v5;
}

+ (NSString)emulatedDeviceBezelImageName
{
  if ([self isEmulatedDevice])
  {
    _sharedDefaults = [self _sharedDefaults];
    bezelImageName = [_sharedDefaults bezelImageName];
  }

  else
  {
    bezelImageName = 0;
  }

  return bezelImageName;
}

+ (NSString)emulatedDeviceMaskImageName
{
  if ([self isEmulatedDevice])
  {
    _sharedDefaults = [self _sharedDefaults];
    maskImageName = [_sharedDefaults maskImageName];
  }

  else
  {
    maskImageName = 0;
  }

  return maskImageName;
}

+ (NSBundle)emulatedDeviceImageContainingBundle
{
  if ([self isEmulatedDevice] && (objc_msgSend(self, "_sharedDefaults"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "imageContainingBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    v5 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v4];
    v6 = MEMORY[0x1E696AAE8];
    bundleURL = [v5 bundleURL];
    mainBundle = [v6 bundleWithURL:bundleURL];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  }

  return mainBundle;
}

+ (NSString)rootLayerBackgroundColorString
{
  if ([self isEmulatedDevice])
  {
    _sharedDefaults = [self _sharedDefaults];
    rootLayerBackgroundColorString = [_sharedDefaults rootLayerBackgroundColorString];
  }

  else
  {
    rootLayerBackgroundColorString = 0;
  }

  return rootLayerBackgroundColorString;
}

+ (int64_t)emulatedHomeButtonType
{
  if (![self isEmulatedDevice])
  {
    return -1;
  }

  _sharedDefaults = [self _sharedDefaults];
  emulatedHomeButtonType = [_sharedDefaults emulatedHomeButtonType];

  return emulatedHomeButtonType;
}

+ (int)emulatedDeviceClass
{
  if (![self isEmulatedDevice])
  {
    return -1;
  }

  _sharedDefaults = [self _sharedDefaults];
  emulatedDeviceClass = [_sharedDefaults emulatedDeviceClass];

  return emulatedDeviceClass;
}

+ (int64_t)emulatedArtworkSubtype
{
  if (![self isEmulatedDevice])
  {
    return -1;
  }

  _sharedDefaults = [self _sharedDefaults];
  emulatedArtworkSubtype = [_sharedDefaults emulatedArtworkSubtype];

  return emulatedArtworkSubtype;
}

+ (BOOL)_forceIsD22ChecksToPass
{
  isEmulatedDevice = [self isEmulatedDevice];
  if (isEmulatedDevice)
  {
    _sharedDefaults = [self _sharedDefaults];
    forceIsD22ChecksToPass = [_sharedDefaults forceIsD22ChecksToPass];

    LOBYTE(isEmulatedDevice) = forceIsD22ChecksToPass;
  }

  return isEmulatedDevice;
}

@end