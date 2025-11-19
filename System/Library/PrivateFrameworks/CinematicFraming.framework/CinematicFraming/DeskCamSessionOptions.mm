@interface DeskCamSessionOptions
- (DeskCamSessionOptions)initWithDeviceType:(int)a3;
- (DeskCamSessionOptions)initWithPlist:(id)a3 deviceType:(int)a4;
- (DeskCamSessionOptions)initWithPlistPath:(id)a3 deviceType:(int)a4;
- (id)asDictionary;
@end

@implementation DeskCamSessionOptions

- (DeskCamSessionOptions)initWithDeviceType:(int)a3
{
  v18.receiver = self;
  v18.super_class = DeskCamSessionOptions;
  v4 = [(DeskCamSessionOptions *)&v18 init];
  v5 = v4;
  if (v4 && (v6 = a3 - 1, (a3 - 1) <= 3))
  {
    v7 = dword_2434F7790[v6];
    v8 = dword_2434F77A0[v6];
    v9 = dword_2434F77B0[v6];
    v10 = dword_2434F77C0[v6];
    v11 = dword_2434F77D0[v6];
    v12 = *&aFfFffFffFff[4 * v6];
    v13 = *&aFfFffFffFff[4 * v6 + 16];
    v14 = dword_2434F7800[v6];
    v15 = dword_2434F7810[v6];
    *(v4 + 3) = dword_2434F7780[v6];
    *(v4 + 4) = 1059481190;
    *(v4 + 5) = v7;
    *(v4 + 6) = v8;
    *(v4 + 7) = v9;
    *(v4 + 10) = v10;
    *(v4 + 11) = v11;
    *(v4 + 4) = 0xC2DC0000C0000000;
    *(v4 + 12) = v12;
    *(v4 + 13) = v14;
    *(v4 + 14) = v15;
    v4[8] = 1;
    *(v4 + 60) = 0x40C0000000000007;
    *(v4 + 9) = 257;
    *(v4 + 68) = 0x40A0000000000005;
    *(v4 + 19) = v13;
    *(v4 + 10) = 0x3F8CCCCD3FE66666;
    v16 = v4;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (DeskCamSessionOptions)initWithPlistPath:(id)a3 deviceType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DeskCamSessionOptions;
  v7 = [(DeskCamSessionOptions *)&v12 init];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v10 = [(DeskCamSessionOptions *)v8 initWithPlist:v9 deviceType:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (DeskCamSessionOptions)initWithPlist:(id)a3 deviceType:(int)a4
{
  v6 = a3;
  v82.receiver = self;
  v82.super_class = DeskCamSessionOptions;
  v7 = [(DeskCamSessionOptions *)&v82 init];
  if (v7 && (v8 = a4 - 1, (a4 - 1) <= 3))
  {
    v9 = *&dword_2434F7780[v8];
    v10 = *&dword_2434F7790[v8];
    v11 = *&dword_2434F77A0[v8];
    v12 = *&dword_2434F77B0[v8];
    v13 = *&dword_2434F77C0[v8];
    v14 = *&dword_2434F77D0[v8];
    v15 = *&aFfFffFffFff[4 * v8];
    v16 = *&dword_2434F7800[v8];
    v80 = *&dword_2434F7810[v8];
    v81 = *&aFfFffFffFff[4 * v8 + 16];
    v17 = [v6 objectForKeyedSubscript:@"viewportScaleMultiplierLandscape"];
    if (v17)
    {
      v18 = [v6 objectForKeyedSubscript:@"viewportScaleMultiplierLandscape"];
      [v18 floatValue];
      v7->_viewportScaleMultiplierLandscape = v19;
    }

    else
    {
      v7->_viewportScaleMultiplierLandscape = v9;
    }

    v21 = [v6 objectForKeyedSubscript:@"viewportScaleMultiplierPortrait"];
    if (v21)
    {
      v22 = [v6 objectForKeyedSubscript:@"viewportScaleMultiplierPortrait"];
      [v22 floatValue];
      v7->_viewportScaleMultiplierPortrait = v23;
    }

    else
    {
      v7->_viewportScaleMultiplierPortrait = 0.65;
    }

    v24 = [v6 objectForKeyedSubscript:@"viewportScaleMultiplierMin"];
    if (v24)
    {
      v25 = [v6 objectForKeyedSubscript:@"viewportScaleMultiplierMin"];
      [v25 floatValue];
      v7->_viewportScaleMultiplierMin = v26;
    }

    else
    {
      v7->_viewportScaleMultiplierMin = v10;
    }

    v27 = [v6 objectForKeyedSubscript:@"framingSpaceScalingFactor"];
    if (v27)
    {
      v28 = [v6 objectForKeyedSubscript:@"framingSpaceScalingFactor"];
      [v28 floatValue];
      v7->_framingSpaceScalingFactor = v29;
    }

    else
    {
      v7->_framingSpaceScalingFactor = v11;
    }

    v30 = [v6 objectForKeyedSubscript:@"framingSpaceExtendPercentage"];
    if (v30)
    {
      v31 = [v6 objectForKeyedSubscript:@"framingSpaceExtendPercentage"];
      [v31 floatValue];
      v7->_framingSpaceExtendPercentage = v32;
    }

    else
    {
      v7->_framingSpaceExtendPercentage = v12;
    }

    v33 = [v6 objectForKeyedSubscript:@"pitchDefaultAngleValue"];
    if (v33)
    {
      v34 = [v6 objectForKeyedSubscript:@"pitchDefaultAngleValue"];
      [v34 floatValue];
      v7->_pitchDefaultAngleValue = v35;
    }

    else
    {
      v7->_pitchDefaultAngleValue = v13;
    }

    v36 = [v6 objectForKeyedSubscript:@"pitchRefinementValue"];
    if (v36)
    {
      v37 = [v6 objectForKeyedSubscript:@"pitchRefinementValue"];
      [v37 floatValue];
      v7->_pitchRefinementValue = v38;
    }

    else
    {
      v7->_pitchRefinementValue = v14;
    }

    v39 = [v6 objectForKeyedSubscript:@"gravityVectorSmoothingAlpha"];
    if (v39)
    {
      v40 = [v6 objectForKeyedSubscript:@"gravityVectorSmoothingAlpha"];
      [v40 floatValue];
      v7->_gravityVectorSmoothingAlpha = v41;
    }

    else
    {
      v7->_gravityVectorSmoothingAlpha = v15;
    }

    v42 = [v6 objectForKeyedSubscript:@"pitchValueUpperThreshold"];
    if (v42)
    {
      v43 = [v6 objectForKeyedSubscript:@"pitchValueUpperThreshold"];
      [v43 floatValue];
      v7->_pitchValueUpperThreshold = v44;
    }

    else
    {
      v7->_pitchValueUpperThreshold = -2.0;
    }

    v45 = [v6 objectForKeyedSubscript:@"pitchValueLowerThreshold"];
    if (v45)
    {
      v46 = [v6 objectForKeyedSubscript:@"pitchValueLowerThreshold"];
      [v46 floatValue];
      v7->_pitchValueLowerThreshold = v47;
    }

    else
    {
      v7->_pitchValueLowerThreshold = -110.0;
    }

    v48 = [v6 objectForKeyedSubscript:@"imageBlendingRadiusUpscaler"];
    if (v48)
    {
      v49 = [v6 objectForKeyedSubscript:@"imageBlendingRadiusUpscaler"];
      [v49 floatValue];
      v7->_imageBlendingRadiusUpscaler = v50;
    }

    else
    {
      v7->_imageBlendingRadiusUpscaler = v16;
    }

    v51 = [v6 objectForKeyedSubscript:@"imageBlendingPercentage"];
    if (v51)
    {
      v52 = [v6 objectForKeyedSubscript:@"imageBlendingPercentage"];
      [v52 floatValue];
      v7->_imageBlendingPercentage = v53;
    }

    else
    {
      v7->_imageBlendingPercentage = v80;
    }

    v54 = [v6 objectForKeyedSubscript:@"imageBlurringEnabled"];
    if (v54)
    {
      v55 = [v6 objectForKeyedSubscript:@"imageBlurringEnabled"];
      v7->_imageBlurringEnabled = [v55 BOOLValue];
    }

    else
    {
      v7->_imageBlurringEnabled = 1;
    }

    v56 = [v6 objectForKeyedSubscript:@"imageBlurringKernelSize"];
    if (v56)
    {
      v57 = [v6 objectForKeyedSubscript:@"imageBlurringKernelSize"];
      v7->_imageBlurringKernelSize = [v57 intValue];
    }

    else
    {
      v7->_imageBlurringKernelSize = 7;
    }

    v58 = [v6 objectForKeyedSubscript:@"imageBlurringSigma"];
    if (v58)
    {
      v59 = [v6 objectForKeyedSubscript:@"imageBlurringSigma"];
      [v59 floatValue];
      v7->_imageBlurringSigma = v60;
    }

    else
    {
      v7->_imageBlurringSigma = 6.0;
    }

    v61 = [v6 objectForKeyedSubscript:@"imageSharpeningEnabled"];
    if (v61)
    {
      v62 = [v6 objectForKeyedSubscript:@"imageSharpeningEnabled"];
      v7->_imageSharpeningEnabled = [v62 BOOLValue];
    }

    else
    {
      v7->_imageSharpeningEnabled = 1;
    }

    v63 = [v6 objectForKeyedSubscript:@"imageSharpeningKernelSize"];
    if (v63)
    {
      v64 = [v6 objectForKeyedSubscript:@"imageSharpeningKernelSize"];
      v7->_imageSharpeningKernelSize = [v64 intValue];
    }

    else
    {
      v7->_imageSharpeningKernelSize = 5;
    }

    v65 = [v6 objectForKeyedSubscript:@"imageSharpeningSigma"];
    if (v65)
    {
      v66 = [v6 objectForKeyedSubscript:@"imageSharpeningSigma"];
      [v66 floatValue];
      v7->_imageSharpeningSigma = v67;
    }

    else
    {
      v7->_imageSharpeningSigma = 5.0;
    }

    v68 = [v6 objectForKeyedSubscript:@"imageSharpeningAmount"];
    if (v68)
    {
      v69 = [v6 objectForKeyedSubscript:@"imageSharpeningAmount"];
      [v69 floatValue];
      v7->_imageSharpeningAmount = v70;
    }

    else
    {
      v7->_imageSharpeningAmount = v81;
    }

    v71 = [v6 objectForKeyedSubscript:@"imageToneMappingEnabled"];
    if (v71)
    {
      v72 = [v6 objectForKeyedSubscript:@"imageToneMappingEnabled"];
      v7->_imageToneMappingEnabled = [v72 BOOLValue];
    }

    else
    {
      v7->_imageToneMappingEnabled = 1;
    }

    v73 = [v6 objectForKeyedSubscript:@"imageToneMappingExponent"];
    if (v73)
    {
      v74 = [v6 objectForKeyedSubscript:@"imageToneMappingExponent"];
      [v74 floatValue];
      v7->_imageToneMappingExponent = v75;
    }

    else
    {
      v7->_imageToneMappingExponent = 1.8;
    }

    v76 = [v6 objectForKeyedSubscript:@"imageToneMappingScaler"];
    if (v76)
    {
      v77 = [v6 objectForKeyedSubscript:@"imageToneMappingScaler"];
      [v77 floatValue];
      v7->_imageToneMappingScaler = v78;
    }

    else
    {
      v7->_imageToneMappingScaler = 1.1;
    }

    v20 = v7;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)asDictionary
{
  v44[0] = @"viewportScaleMultiplierLandscape";
  *&v2 = self->_viewportScaleMultiplierLandscape;
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v45[0] = v43;
  v44[1] = @"viewportScaleMultiplierPortrait";
  *&v4 = self->_viewportScaleMultiplierPortrait;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v45[1] = v42;
  v44[2] = @"viewportScaleMultiplierMin";
  *&v5 = self->_viewportScaleMultiplierMin;
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v45[2] = v41;
  v44[3] = @"framingSpaceScalingFactor";
  *&v6 = self->_framingSpaceScalingFactor;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v45[3] = v40;
  v44[4] = @"framingSpaceExtendPercentage";
  *&v7 = self->_framingSpaceExtendPercentage;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v45[4] = v39;
  v44[5] = @"pitchDefaultAngleValue";
  *&v8 = self->_pitchDefaultAngleValue;
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v45[5] = v38;
  v44[6] = @"pitchRefinementValue";
  *&v9 = self->_pitchRefinementValue;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v45[6] = v37;
  v44[7] = @"gravityVectorSmoothingAlpha";
  *&v10 = self->_gravityVectorSmoothingAlpha;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v45[7] = v36;
  v44[8] = @"pitchValueUpperThreshold";
  *&v11 = self->_pitchValueUpperThreshold;
  v35 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v45[8] = v35;
  v44[9] = @"pitchValueLowerThreshold";
  *&v12 = self->_pitchValueLowerThreshold;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v45[9] = v34;
  v44[10] = @"imageBlendingRadiusUpscaler";
  *&v13 = self->_imageBlendingRadiusUpscaler;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v45[10] = v33;
  v44[11] = @"imageBlendingPercentage";
  *&v14 = self->_imageBlendingPercentage;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v45[11] = v32;
  v44[12] = @"imageBlurringEnabled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_imageBlurringEnabled];
  v45[12] = v31;
  v44[13] = @"imageBlurringKernelSize";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_imageBlurringKernelSize];
  v45[13] = v15;
  v44[14] = @"imageBlurringSigma";
  *&v16 = self->_imageBlurringSigma;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v45[14] = v17;
  v44[15] = @"imageSharpeningEnabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_imageSharpeningEnabled];
  v45[15] = v18;
  v44[16] = @"imageSharpeningKernelSize";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_imageSharpeningKernelSize];
  v45[16] = v19;
  v44[17] = @"imageSharpeningSigma";
  *&v20 = self->_imageSharpeningSigma;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v45[17] = v21;
  v44[18] = @"imageSharpeningAmount";
  *&v22 = self->_imageSharpeningAmount;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v45[18] = v23;
  v44[19] = @"imageToneMappingEnabled";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_imageToneMappingEnabled];
  v45[19] = v24;
  v44[20] = @"imageToneMappingExponent";
  *&v25 = self->_imageToneMappingExponent;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v45[20] = v26;
  v44[21] = @"imageToneMappingScaler";
  *&v27 = self->_imageToneMappingScaler;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v45[21] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:22];

  return v29;
}

@end