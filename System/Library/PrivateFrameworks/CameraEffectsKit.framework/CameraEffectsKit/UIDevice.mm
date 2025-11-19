@interface UIDevice
@end

@implementation UIDevice

uint64_t __31__UIDevice_JFX__jfx_memorySize__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  *v2 = 0x1800000006;
  v1 = 8;
  return sysctl(v2, 2u, &jfx_memorySize_mem, &v1, 0, 0);
}

uint64_t __32__UIDevice_JFX__jfx_numberOfCPU__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  *v2 = 0x1900000006;
  v1 = 4;
  return sysctl(v2, 2u, &jfx_numberOfCPU_cpuCount, &v1, 0, 0);
}

void __42__UIDevice_JFX__jfx_hasDepthCapableCamera__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jfx_hasTrueDepthFrontCamera];
  if ([*(a1 + 32) jfx_hasDualBackCamera])
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"allowsDepthDualBackCamera"];
  }

  else
  {
    v4 = 0;
  }

  jfx_hasDepthCapableCamera_result = (v2 | v4) & 1;
}

void __44__UIDevice_JFX__jfx_hasTrueDepthFrontCamera__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) jfx_getCaptureDeviceForType:*MEMORY[0x277CE5868]];
  jfx_hasTrueDepthFrontCamera_result = v1 != 0;
}

void __60__UIDevice_JFX__jfx_hasTrueDepthFrontCameraCustomZoomFormat__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) jfx_hasTrueDepthFrontCamera])
  {
    v3 = [*(a1 + 32) jfx_getCaptureDeviceForType:*MEMORY[0x277CE5868]];
    v2 = [v3 formats];
    [v2 enumerateObjectsUsingBlock:&__block_literal_global_33_2];
  }
}

void __60__UIDevice_JFX__jfx_hasTrueDepthFrontCameraCustomZoomFormat__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (CMVideoFormatDescriptionGetDimensions([v7 formatDescription]) == 0x90C00000C10)
  {
    v5 = [v7 supportedColorSpaces];
    v6 = [v5 containsObject:&unk_28556D668];

    if (v6)
    {
      jfx_hasTrueDepthFrontCameraCustomZoomFormat_result = 1;
      *a4 = 1;
    }
  }
}

void __38__UIDevice_JFX__jfx_hasDualBackCamera__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) jfx_getCaptureDeviceForType:*MEMORY[0x277CE5840]];
  jfx_hasDualBackCamera_result = v1 != 0;
}

void __33__UIDevice_JFX__jfx_hasHDRCamera__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jfx_getCaptureDeviceForType:*MEMORY[0x277CE5868]];
  v1 = [v2 formats];
  [v1 enumerateObjectsUsingBlock:&__block_literal_global_36];
}

void __33__UIDevice_JFX__jfx_hasHDRCamera__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 supportedColorSpaces];
  if ([v5 containsObject:&unk_28556D680])
  {
    jfx_hasHDRCamera_hasHDRCamera = 1;
    *a4 = 1;
  }
}

uint64_t __38__UIDevice_JFX__jfx_displayColorSpace__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) jfx_supportsHDR])
  {
    v1 = [MEMORY[0x277D415E0] rec2100HLGColorSpace];
    v2 = jfx_displayColorSpace_s_displayColorSpace;
    jfx_displayColorSpace_s_displayColorSpace = v1;
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    v7 = [v3 traitCollection];

    if ([v7 displayGamut] == 1)
    {
      [MEMORY[0x277D415E0] p3d65GammaColorSpace];
    }

    else
    {
      [MEMORY[0x277D415E0] rec709GammaColorSpace];
    }
    v4 = ;
    v5 = jfx_displayColorSpace_s_displayColorSpace;
    jfx_displayColorSpace_s_displayColorSpace = v4;

    v2 = v7;
  }

  return MEMORY[0x2821F96F8](v1, v2);
}

void __38__UIDevice_JFX__jfx_supportsHDRExport__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 jfx_cpuFamily];

  if (v1 > 214503011)
  {
    if (v1 > 747742333)
    {
      v2 = v1 == 933271106;
      v3 = 747742334;
    }

    else
    {
      v2 = v1 == 214503012;
      v3 = 506291073;
    }
  }

  else if (v1 > -1471079479)
  {
    v2 = v1 == -1471079478;
    v3 = -1122301207;
  }

  else
  {
    v2 = v1 == -1829029944;
    v3 = -1777893647;
  }

  if (v2 || v1 == v3)
  {
    jfx_supportsHDRExport_isA10OrLater = 1;
  }
}

void __45__UIDevice_JFX__jfx_getCaptureDeviceForType___block_invoke()
{
  v8[7] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = jfx_getCaptureDeviceForType__captureDeviceLookup;
  jfx_getCaptureDeviceForType__captureDeviceLookup = v0;

  v2 = *MEMORY[0x277CE5860];
  v8[0] = *MEMORY[0x277CE5868];
  v8[1] = v2;
  v3 = *MEMORY[0x277CE5840];
  v8[2] = *MEMORY[0x277CE5848];
  v8[3] = v3;
  v4 = *MEMORY[0x277CE5878];
  v8[4] = *MEMORY[0x277CE5870];
  v8[5] = v4;
  v8[6] = *MEMORY[0x277CE5850];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  v6 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:v5 mediaType:*MEMORY[0x277CE5EA8] position:0];
  v7 = [v6 devices];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_50_0];
}

void __45__UIDevice_JFX__jfx_getCaptureDeviceForType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = jfx_getCaptureDeviceForType__captureDeviceLookup;
  v3 = a2;
  v4 = [v3 deviceType];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

@end