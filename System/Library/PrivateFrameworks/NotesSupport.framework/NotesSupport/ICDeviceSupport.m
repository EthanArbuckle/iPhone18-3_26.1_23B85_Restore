@interface ICDeviceSupport
+ (BOOL)deviceSupportsFirstGenPencil;
+ (BOOL)deviceSupportsPencil;
+ (BOOL)deviceSupportsSystemPaper;
+ (BOOL)isRunningDuoTests;
+ (BOOL)isRunningInApp;
+ (BOOL)isRunningUnitTests;
+ (BOOL)processIsSiri;
+ (CGSize)notesDeviceDrawingSize;
+ (NSString)deviceName;
+ (NSString)productBuildVersion;
+ (NSString)productName;
+ (NSString)productVersion;
+ (id)notesProductType;
@end

@implementation ICDeviceSupport

+ (BOOL)isRunningUnitTests
{
  if (isRunningUnitTests_onceToken != -1)
  {
    +[ICDeviceSupport isRunningUnitTests];
  }

  return isRunningUnitTests_isRunningUnitTests;
}

void __37__ICDeviceSupport_isRunningUnitTests__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 environment];
  v1 = [v0 objectForKeyedSubscript:@"IC_TEST_PLAN"];
  isRunningUnitTests_isRunningUnitTests = [v1 length] != 0;
}

+ (BOOL)processIsSiri
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4FD7248];
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];
  v5 = [v2 containsObject:v4];

  return v5;
}

void __41__ICDeviceSupport_notesDeviceDrawingSize__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 ic_isAppExtension];

  if (v1)
  {
    v2 = 1.0;
    v3 = 1024.0;
    v4 = 768.0;
  }

  else
  {
    v5 = MGGetSInt32Answer();
    v6 = MGGetSInt32Answer();
    MGGetFloat32Answer();
    v3 = v5;
    v4 = v6;
    v2 = v7;
  }

  if (v4 <= v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  if (v4 > v3)
  {
    v3 = v4;
  }

  if (v3 <= 2048.0 || v8 <= 1536.0)
  {
    v10 = 2.0;
    if (v2 <= 2.0)
    {
      v10 = v2;
    }

    v11 = v10 * *&notesDeviceDrawingSize_drawingSize_0;
    v8 = v10 * *&notesDeviceDrawingSize_drawingSize_1;
  }

  else
  {
    v11 = round(v8 * 1.33333333);
  }

  notesDeviceDrawingSize_drawingSize_1 = *&v8;
  notesDeviceDrawingSize_drawingSize_0 = *&v11;
}

+ (CGSize)notesDeviceDrawingSize
{
  if (notesDeviceDrawingSize_onceToken != -1)
  {
    +[ICDeviceSupport notesDeviceDrawingSize];
  }

  v2 = *&notesDeviceDrawingSize_drawingSize_0;
  v3 = *&notesDeviceDrawingSize_drawingSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)deviceSupportsPencil
{
  if (deviceSupportsPencil_onceToken != -1)
  {
    +[ICDeviceSupport deviceSupportsPencil];
  }

  return deviceSupportsPencil_supportsPencil;
}

uint64_t __39__ICDeviceSupport_deviceSupportsPencil__block_invoke()
{
  result = MGGetBoolAnswer();
  deviceSupportsPencil_supportsPencil = result;
  return result;
}

+ (id)notesProductType
{
  if (notesProductType_onceToken != -1)
  {
    +[ICDeviceSupport notesProductType];
  }

  v3 = notesProductType_productType;

  return v3;
}

uint64_t __35__ICDeviceSupport_notesProductType__block_invoke()
{
  notesProductType_productType = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)deviceSupportsFirstGenPencil
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ICDeviceSupport_deviceSupportsFirstGenPencil__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (deviceSupportsFirstGenPencil_onceToken != -1)
  {
    dispatch_once(&deviceSupportsFirstGenPencil_onceToken, block);
  }

  return deviceSupportsFirstGenPencil_supportsFirstGenPencil;
}

uint64_t __47__ICDeviceSupport_deviceSupportsFirstGenPencil__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) deviceSupportsPencil];
  if (result)
  {
    result = MGIsDeviceOneOfType();
    deviceSupportsFirstGenPencil_supportsFirstGenPencil = result;
  }

  return result;
}

+ (BOOL)deviceSupportsSystemPaper
{
  if (deviceSupportsSystemPaper_onceToken != -1)
  {
    +[ICDeviceSupport deviceSupportsSystemPaper];
  }

  return deviceSupportsSystemPaper_supportsSystemPaper;
}

uint64_t __44__ICDeviceSupport_deviceSupportsSystemPaper__block_invoke()
{
  result = MGIsDeviceOneOfType();
  deviceSupportsSystemPaper_supportsSystemPaper = result ^ 1;
  return result;
}

+ (BOOL)isRunningDuoTests
{
  if (isRunningDuoTests_onceToken != -1)
  {
    +[ICDeviceSupport isRunningDuoTests];
  }

  return isRunningDuoTests_isRunningDuoTests;
}

void __36__ICDeviceSupport_isRunningDuoTests__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 environment];
  v1 = [v0 objectForKeyedSubscript:@"XCTestBundlePath"];
  isRunningDuoTests_isRunningDuoTests = [v1 containsString:@"DuoTests.xctest"];
}

+ (BOOL)isRunningInApp
{
  if (isRunningInApp_onceToken != -1)
  {
    +[ICDeviceSupport isRunningInApp];
  }

  return isRunningInApp_isRunningInApp;
}

void __33__ICDeviceSupport_isRunningInApp__block_invoke()
{
  v2 = ICNotesAppBundleIdentifier();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  isRunningInApp_isRunningInApp = [v2 isEqualToString:v1];
}

+ (NSString)deviceName
{
  if (deviceName_onceToken != -1)
  {
    +[ICDeviceSupport deviceName];
  }

  v3 = deviceName_deviceName;

  return v3;
}

uint64_t __29__ICDeviceSupport_deviceName__block_invoke()
{
  deviceName_deviceName = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (NSString)productName
{
  v2 = [MEMORY[0x1E69A60B8] sharedInstance];
  v3 = [v2 productName];

  return v3;
}

+ (NSString)productVersion
{
  v2 = [MEMORY[0x1E69A60B8] sharedInstance];
  v3 = [v2 productVersion];

  return v3;
}

+ (NSString)productBuildVersion
{
  v2 = [MEMORY[0x1E69A60B8] sharedInstance];
  v3 = [v2 productBuildVersion];

  return v3;
}

@end