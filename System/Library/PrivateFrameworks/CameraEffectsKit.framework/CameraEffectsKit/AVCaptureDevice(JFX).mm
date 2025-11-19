@interface AVCaptureDevice(JFX)
- (uint64_t)jfx_highestQualityColorSpace;
- (uint64_t)jfx_supportsDepth;
- (uint64_t)jfx_trueDepthCamera;
@end

@implementation AVCaptureDevice(JFX)

- (uint64_t)jfx_trueDepthCamera
{
  v1 = [a1 deviceType];
  v2 = [v1 isEqualToString:*MEMORY[0x277CE5868]];

  return v2;
}

- (uint64_t)jfx_supportsDepth
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [a1 formats];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v8 + 1) + 8 * i) supportedDepthDataFormats];
        v6 = [v5 count];

        if (v6)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)jfx_highestQualityColorSpace
{
  if (jfx_highestQualityColorSpace_onceToken != -1)
  {
    [AVCaptureDevice(JFX) jfx_highestQualityColorSpace];
  }

  v2 = [a1 deviceType];
  v3 = jfx_highestQualityColorSpace_s_colorSpaceLookup;
  objc_sync_enter(v3);
  v4 = [jfx_highestQualityColorSpace_s_colorSpaceLookup objectForKeyedSubscript:v2];

  if (!v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = [a1 formats];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__AVCaptureDevice_JFX__jfx_highestQualityColorSpace__block_invoke_2;
    v10[3] = &unk_278D7BDA0;
    v10[4] = &v11;
    [v5 enumerateObjectsUsingBlock:v10];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v12[3]];
    [jfx_highestQualityColorSpace_s_colorSpaceLookup setObject:v6 forKeyedSubscript:v2];

    _Block_object_dispose(&v11, 8);
  }

  objc_sync_exit(v3);

  v7 = [jfx_highestQualityColorSpace_s_colorSpaceLookup objectForKeyedSubscript:v2];
  v8 = [v7 integerValue];

  return v8;
}

@end