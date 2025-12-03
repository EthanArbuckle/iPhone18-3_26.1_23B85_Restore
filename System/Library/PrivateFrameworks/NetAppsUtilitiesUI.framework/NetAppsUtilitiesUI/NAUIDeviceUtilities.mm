@interface NAUIDeviceUtilities
+ (BOOL)hasOrbCapability;
+ (BOOL)naui_isPad;
+ (BOOL)naui_isUsingLandscapeOrientation;
+ (BOOL)naui_shouldUseLargeiPadLayout;
+ (BOOL)naui_shouldUseLargeiPadLayoutForSize:(CGSize)size;
+ (NSString)localizedProductName;
+ (NSString)operatingSystemName;
+ (NSString)productClass;
+ (NSString)productHardwareModel;
+ (NSString)productHardwareModelName;
+ (NSString)productType;
+ (NSString)uniqueDeviceIdentifier;
+ (double)mainScreenScale;
+ (id)productBuildVersion;
+ (id)productVersion;
+ (int)deviceClass;
@end

@implementation NAUIDeviceUtilities

+ (BOOL)naui_isPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

+ (BOOL)naui_shouldUseLargeiPadLayout
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  [keyWindow frame];
  v6 = v5;
  v8 = v7;

  return [self naui_shouldUseLargeiPadLayoutForSize:{v6, v8}];
}

+ (BOOL)naui_shouldUseLargeiPadLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  result = [self naui_isPad];
  if (width >= height)
  {
    v6 = height;
  }

  else
  {
    v6 = width;
  }

  if (v6 <= 768.0)
  {
    return 0;
  }

  return result;
}

+ (BOOL)naui_isUsingLandscapeOrientation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = ([mEMORY[0x277D75128] statusBarOrientation] - 3) < 2;

  return v3;
}

+ (id)productVersion
{
  if (productVersion___once != -1)
  {
    +[NAUIDeviceUtilities productVersion];
  }

  v2 = [productVersion___value copy];

  return v2;
}

uint64_t __37__NAUIDeviceUtilities_productVersion__block_invoke()
{
  productVersion___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)productBuildVersion
{
  if (productBuildVersion___once != -1)
  {
    +[NAUIDeviceUtilities productBuildVersion];
  }

  v2 = [productBuildVersion___value copy];

  return v2;
}

uint64_t __42__NAUIDeviceUtilities_productBuildVersion__block_invoke()
{
  productBuildVersion___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)productType
{
  if (productType___once != -1)
  {
    +[NAUIDeviceUtilities productType];
  }

  v2 = [productType___value copy];

  return v2;
}

uint64_t __34__NAUIDeviceUtilities_productType__block_invoke()
{
  productType___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)productHardwareModel
{
  if (productHardwareModel___once != -1)
  {
    +[NAUIDeviceUtilities productHardwareModel];
  }

  v2 = [productHardwareModel___value copy];

  return v2;
}

uint64_t __43__NAUIDeviceUtilities_productHardwareModel__block_invoke()
{
  productHardwareModel___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)productHardwareModelName
{
  if (productHardwareModelName___once != -1)
  {
    +[NAUIDeviceUtilities productHardwareModelName];
  }

  v2 = [productHardwareModelName___value copy];

  return v2;
}

uint64_t __47__NAUIDeviceUtilities_productHardwareModelName__block_invoke()
{
  productHardwareModelName___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)productClass
{
  if (productClass___once != -1)
  {
    +[NAUIDeviceUtilities productClass];
  }

  v2 = [productClass___value copy];

  return v2;
}

uint64_t __35__NAUIDeviceUtilities_productClass__block_invoke()
{
  productClass___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (int)deviceClass
{
  if (deviceClass___once != -1)
  {
    +[NAUIDeviceUtilities deviceClass];
  }

  return deviceClass___value;
}

void __34__NAUIDeviceUtilities_deviceClass__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if ((v1 - 1) > 5)
  {
    v2 = -1;
  }

  else
  {
    v2 = dword_25B847698[v1 - 1];
  }

  deviceClass___value = v2;
}

+ (NSString)localizedProductName
{
  if (localizedProductName___once != -1)
  {
    +[NAUIDeviceUtilities localizedProductName];
  }

  v2 = [localizedProductName___value copy];

  return v2;
}

uint64_t __43__NAUIDeviceUtilities_localizedProductName__block_invoke()
{
  localizedProductName___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)operatingSystemName
{
  if (operatingSystemName___once != -1)
  {
    +[NAUIDeviceUtilities operatingSystemName];
  }

  v2 = [operatingSystemName___value copy];

  return v2;
}

uint64_t __42__NAUIDeviceUtilities_operatingSystemName__block_invoke()
{
  operatingSystemName___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (NSString)uniqueDeviceIdentifier
{
  if (uniqueDeviceIdentifier___once != -1)
  {
    +[NAUIDeviceUtilities uniqueDeviceIdentifier];
  }

  v2 = [uniqueDeviceIdentifier___value copy];

  return v2;
}

uint64_t __45__NAUIDeviceUtilities_uniqueDeviceIdentifier__block_invoke()
{
  uniqueDeviceIdentifier___value = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)hasOrbCapability
{
  if (hasOrbCapability___once != -1)
  {
    +[NAUIDeviceUtilities hasOrbCapability];
  }

  return hasOrbCapability___value;
}

uint64_t __39__NAUIDeviceUtilities_hasOrbCapability__block_invoke()
{
  result = MGGetBoolAnswer();
  hasOrbCapability___value = result;
  return result;
}

+ (double)mainScreenScale
{
  if (mainScreenScale___once != -1)
  {
    +[NAUIDeviceUtilities mainScreenScale];
  }

  return *&mainScreenScale_mainScreenScale;
}

void __38__NAUIDeviceUtilities_mainScreenScale__block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  mainScreenScale_mainScreenScale = v0;
}

@end