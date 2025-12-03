@interface UIDevice(JFX)
- (BOOL)jfx_supportsHDRExport;
- (id)jfx_deviceCharacteristicsDict;
- (id)jfx_displayColorSpace;
- (id)jfx_getCaptureDeviceForType:()JFX;
- (id)jfx_recommendedDisplayColorSpaceForColorSpace:()JFX;
- (uint64_t)jfx_cpuFamily;
- (uint64_t)jfx_hasDepthCapableCamera;
- (uint64_t)jfx_hasDualBackCamera;
- (uint64_t)jfx_hasHDRCamera;
- (uint64_t)jfx_hasTrueDepthFrontCamera;
- (uint64_t)jfx_hasTrueDepthFrontCameraCustomZoomFormat;
- (uint64_t)jfx_memorySize;
- (uint64_t)jfx_numberOfCPU;
- (uint64_t)jfx_supportsHDR;
@end

@implementation UIDevice(JFX)

- (uint64_t)jfx_memorySize
{
  if (jfx_memorySize_onceToken != -1)
  {
    [UIDevice(JFX) jfx_memorySize];
  }

  return jfx_memorySize_mem;
}

- (uint64_t)jfx_numberOfCPU
{
  if (jfx_numberOfCPU_onceToken != -1)
  {
    [UIDevice(JFX) jfx_numberOfCPU];
  }

  return jfx_numberOfCPU_cpuCount;
}

- (uint64_t)jfx_cpuFamily
{
  if (jfx_cpuFamily_onceToken != -1)
  {
    [UIDevice(JFX) jfx_cpuFamily];
  }

  return jfx_cpuFamily_cpuFamily;
}

- (id)jfx_deviceCharacteristicsDict
{
  v20 = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  memset(&v19, 0, 512);
  if (uname(&v19) < 0)
  {
    model = [currentDevice model];
  }

  else
  {
    model = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v19.machine];
  }

  v16 = model;
  systemVersion = [currentDevice systemVersion];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(currentDevice, "jfx_numberOfCPU")}];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentDevice, "jfx_memorySize")}];
  [mainScreen bounds];
  NSStringFromCGRect(v22);
  v7 = v6 = mainScreen;
  v8 = MEMORY[0x277CCABB0];
  [v6 scale];
  *&v9 = v9;
  v10 = [v8 numberWithFloat:v9];
  v11 = MEMORY[0x277CCABB0];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v11 numberWithInteger:{objc_msgSend(currentDevice2, "userInterfaceIdiom")}];

  v17[0] = @"cores";
  v17[1] = @"memory";
  v18[0] = v4;
  v18[1] = v5;
  v17[2] = @"model";
  v17[3] = @"screenBounds";
  v18[2] = v16;
  v18[3] = v7;
  v17[4] = @"screenScale";
  v17[5] = @"systemVersion";
  v18[4] = v10;
  v18[5] = systemVersion;
  v17[6] = @"uiIdiom";
  v18[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v14;
}

- (uint64_t)jfx_hasDepthCapableCamera
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__UIDevice_JFX__jfx_hasDepthCapableCamera__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (jfx_hasDepthCapableCamera_onceToken != -1)
  {
    dispatch_once(&jfx_hasDepthCapableCamera_onceToken, block);
  }

  return jfx_hasDepthCapableCamera_result;
}

- (uint64_t)jfx_hasTrueDepthFrontCamera
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__UIDevice_JFX__jfx_hasTrueDepthFrontCamera__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (jfx_hasTrueDepthFrontCamera_onceToken != -1)
  {
    dispatch_once(&jfx_hasTrueDepthFrontCamera_onceToken, block);
  }

  return jfx_hasTrueDepthFrontCamera_result;
}

- (uint64_t)jfx_hasTrueDepthFrontCameraCustomZoomFormat
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__UIDevice_JFX__jfx_hasTrueDepthFrontCameraCustomZoomFormat__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (jfx_hasTrueDepthFrontCameraCustomZoomFormat_onceToken != -1)
  {
    dispatch_once(&jfx_hasTrueDepthFrontCameraCustomZoomFormat_onceToken, block);
  }

  return jfx_hasTrueDepthFrontCameraCustomZoomFormat_result;
}

- (uint64_t)jfx_hasDualBackCamera
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__UIDevice_JFX__jfx_hasDualBackCamera__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (jfx_hasDualBackCamera_onceToken != -1)
  {
    dispatch_once(&jfx_hasDualBackCamera_onceToken, block);
  }

  return jfx_hasDualBackCamera_result;
}

- (uint64_t)jfx_hasHDRCamera
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__UIDevice_JFX__jfx_hasHDRCamera__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (jfx_hasHDRCamera_onceToken != -1)
  {
    dispatch_once(&jfx_hasHDRCamera_onceToken, block);
  }

  return jfx_hasHDRCamera_hasHDRCamera;
}

- (id)jfx_displayColorSpace
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__UIDevice_JFX__jfx_displayColorSpace__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (jfx_displayColorSpace_onceToken != -1)
  {
    dispatch_once(&jfx_displayColorSpace_onceToken, block);
  }

  return jfx_displayColorSpace_s_displayColorSpace;
}

- (id)jfx_recommendedDisplayColorSpaceForColorSpace:()JFX
{
  v4 = a3;
  jfx_displayColorSpace = [self jfx_displayColorSpace];
  if ([jfx_displayColorSpace isHDRSpace])
  {
    if ([v4 isHDRSpace])
    {
      p3d65GammaColorSpace = jfx_displayColorSpace;
      goto LABEL_9;
    }
  }

  else
  {
    if (![jfx_displayColorSpace isWideGamutSpace])
    {
      goto LABEL_8;
    }

    if ([v4 isHDRSpace])
    {
LABEL_7:
      p3d65GammaColorSpace = [MEMORY[0x277D415E0] p3d65GammaColorSpace];
      goto LABEL_9;
    }
  }

  if ([v4 isWideGamutSpace])
  {
    goto LABEL_7;
  }

LABEL_8:
  p3d65GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
LABEL_9:
  v7 = p3d65GammaColorSpace;

  return v7;
}

- (BOOL)jfx_supportsHDRExport
{
  if (jfx_supportsHDRExport_onceToken != -1)
  {
    [UIDevice(JFX) jfx_supportsHDRExport];
  }

  return (jfx_supportsHDRExport_isA10OrLater & 1) == 0;
}

- (uint64_t)jfx_supportsHDR
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];

  displayGamut = [traitCollection displayGamut];
  v5 = [MEMORY[0x277CE6598] availableHDRModes] & 6;
  jfx_memorySize = [self jfx_memorySize];
  if (displayGamut != 1 || v5 == 0 || jfx_memorySize < 2684354561)
  {
    jfx_supportsHDRExport = 0;
  }

  else
  {
    jfx_supportsHDRExport = [self jfx_supportsHDRExport];
  }

  return jfx_supportsHDRExport;
}

- (id)jfx_getCaptureDeviceForType:()JFX
{
  v3 = jfx_getCaptureDeviceForType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [UIDevice(JFX) jfx_getCaptureDeviceForType:];
  }

  v5 = [jfx_getCaptureDeviceForType__captureDeviceLookup objectForKeyedSubscript:v4];

  return v5;
}

@end