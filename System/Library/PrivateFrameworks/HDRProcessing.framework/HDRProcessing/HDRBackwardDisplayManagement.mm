@interface HDRBackwardDisplayManagement
- (BOOL)inputIsSDRVideoFormat:(__IOSurface *)a3;
- (BOOL)updateConfigFromMetadata:(id *)a3 uiScaleFactor:(float)a4 width:(int)a5 background:(id *)a6 hdrVideoOnly:(BOOL)a7 hdr10TV:(BOOL)a8 sdrOnly:(BOOL)a9;
- (HDRBackwardDisplayManagement)initWithDevice:(id)a3;
- (HDRBackwardDisplayManagement)initWithDevice:(id)a3 displayProperties:(id)a4;
- (float)adjustUiScaleForDoViToHDR10Conversion:(float)a3;
- (id)createRenderCommandEncoderWithCommandBuffer:(id)a3 texture:(id)a4 widthScale:(unsigned int)a5 loadAction:(unint64_t)a6;
- (id)getRenderPipelineStateForShader:(id)a3;
- (int)adjustMetaData:(id *)a3 HDRUIBlending:(BOOL)a4 hasLetterbox:(BOOL)a5;
- (int)getTVIndex:(BOOL)a3;
- (int)pixelNumPerThreadFullScreen:(BOOL)a3 videoInput:(__IOSurface *)a4 UI:(__IOSurface *)a5 Output:(__IOSurface *)a6 widthScaling:(BOOL)a7;
- (int64_t)EncodeToCommandBuffer:(id)a3 inputSurface:(__IOSurface *)a4 uiSurface:(__IOSurface *)a5 outputSurface:(__IOSurface *)a6 frameProperties:(id)a7;
- (int64_t)encodeToCommandBuffer:(id)a3 video:(__IOSurface *)a4 videoSrcRegion:(id)a5 videoDstRegion:(id)a6 ui:(__IOSurface *)a7 uiSrcRegion:(id)a8 uiDstRegion:(id)a9 backgroundColor:(id *)a10 output:(__IOSurface *)a11 frameProperties:(id)a12;
- (int64_t)encodeToCommandBuffer:(id)a3 video:(__IOSurface *)a4 videoSrcRegion:(id)a5 videoDstRegion:(id)a6 ui:(__IOSurface *)buffer output:(__IOSurface *)a8 frameProperties:(id)a9;
- (int64_t)setAccessibilityMatrix:(id *)a3;
- (unint64_t)getPixelFormatFromSurface:(__IOSurface *)a3 DeGamma:(BOOL)a4 forceUseOnePlane:(BOOL)a5 default:(unint64_t)a6;
- (unsigned)getPackagingColorFormatFromDictionary:(id)a3 withDefaultValue:(unsigned int)a4;
- (void)attatchInfoFrame:(id *)a3 toOutputSurface:(__IOSurface *)a4;
- (void)createBuffers;
- (void)createInverseScalingFactorTable;
- (void)createKernels;
- (void)createL2PQTable;
- (void)createMetadataTexture;
- (void)createMetadataVertexBuffer;
- (void)createPQ2LTable;
- (void)createSDRScalingFactorTable;
- (void)createSamplers;
- (void)createYUVScalingFactorTable;
- (void)drawMetaWithEncoder:(id)a3 widthScale:(int)a4 dmPayLoadLength:(int)a5;
- (void)fillInverseScalingFactorTableFromDMConfig:(id *)a3;
- (void)fillScalingTable_SDR2HDR:(id *)a3 target_White:(float)a4 target_Black:(float)a5;
- (void)fillScalingTable_YUVTM:(id *)a3 targetwhite:(float)a4 targetblack:(float)a5 satBoost:(float)a6 scalingFactor:(BOOL)a7 sdrOnly:(BOOL)a8;
- (void)generateMetaAndConfig:(id)a3 inputSurface:(__IOSurface *)a4 outputSurface:(__IOSurface *)a5 payLoad:(id *)a6 dmCfg:(id *)a7;
- (void)initDisplayAttributes:(id)a3;
- (void)packetizeMetadata:(id *)a3 length:(int)a4 into:(int)a5 onSurface:(__IOSurface *)a6;
- (void)setupMetadataTextureWithOutput:(__IOSurface *)a3;
- (void)setupMetal;
- (void)updateUniformUIScaleForVideo:(BOOL)a3 forTV:(BOOL)a4 videoPeakBrightnessInNits:(int)a5 uiHWDegamma:(BOOL)a6 dovi50toHDR10TVMode:(unsigned int)a7;
- (void)updateVertices:(id)a3 videoInput:(__IOSurface *)a4 videoDstRegion:(id)a5 videoSrcRegion:(id)a6 uiInput:(__IOSurface *)a7 uiDstRegion:(id)a8 uiSrcRegion:(id)a9 dstWidth:(int)a10 dstHeight:(int)a11 videoSrcWidth:(int)a12 videoSrcHeight:(int)a13 index:(int)a14 scale:(int)a15;
@end

@implementation HDRBackwardDisplayManagement

- (HDRBackwardDisplayManagement)initWithDevice:(id)a3 displayProperties:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDRBackwardDisplayManagement;
  v8 = [(HDRBackwardDisplayManagement *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(HDRBackwardDisplayManagement *)v8 initDisplayAttributes:v7];
    [(HDRBackwardDisplayManagement *)v9 initWithDevice:v6];
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v10 = logInstanceID;
    }

    else
    {
      v10 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v16 = WORD1(v10);
      v17 = 2080;
      v18 = "[HDRBackwardDisplayManagement initWithDevice:displayProperties:]";
      v19 = 2048;
      v20 = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : error, self = %p \n", buf, 0x20u);
    }

    prevLogInstanceID = v10;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315394;
    v16 = "[HDRBackwardDisplayManagement initWithDevice:displayProperties:]";
    v17 = 2048;
    v18 = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : error, self = %p \n", buf, 0x16u);
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v11 = logInstanceID;
    }

    else
    {
      v11 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v16 = WORD1(v11);
      v17 = 2080;
      v18 = "[HDRBackwardDisplayManagement initWithDevice:displayProperties:]";
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx    %s : instance=%p", buf, 0x20u);
    }

    prevLogInstanceID = v11;
    goto LABEL_21;
  }

LABEL_19:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[HDRBackwardDisplayManagement initWithDevice:displayProperties:]";
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]    %s : instance=%p", buf, 0x16u);
  }

LABEL_21:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HDRBackwardDisplayManagement)initWithDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && !self->_device)
  {
    objc_storeStrong(&self->_device, a3);
    [(HDRBackwardDisplayManagement *)self setupMetal];
    [(HDRBackwardDisplayManagement *)self createKernels];
    [(HDRBackwardDisplayManagement *)self createSamplers];
    [(HDRBackwardDisplayManagement *)self createPQ2LTable];
    [(HDRBackwardDisplayManagement *)self createL2PQTable];
    [(HDRBackwardDisplayManagement *)self createInverseScalingFactorTable];
    [(HDRBackwardDisplayManagement *)self createSDRScalingFactorTable];
    [(HDRBackwardDisplayManagement *)self createYUVScalingFactorTable];
    [(HDRBackwardDisplayManagement *)self createBuffers];
    [(HDRBackwardDisplayManagement *)self createMetadataTexture];
    self->_useAccessibilityMatrix = 0;
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v6 = logInstanceID;
    }

    else
    {
      v6 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      device = self->_device;
      v11 = 134218754;
      v12 = WORD1(v6);
      v13 = 2080;
      v14 = "[HDRBackwardDisplayManagement initWithDevice:]";
      v15 = 2048;
      v16 = v5;
      v17 = 2048;
      v18 = device;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : error, device = %p, _device=%p\n", &v11, 0x2Au);
    }

    prevLogInstanceID = v6;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_device;
    v11 = 136315650;
    v12 = "[HDRBackwardDisplayManagement initWithDevice:]";
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : error, device = %p, _device=%p\n", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)initDisplayAttributes:(id)a3
{
  v44 = a3;
  v4 = [v44 valueForKey:@"ApiInterfaceVersionKey"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  self->_callerApiVersion = v6;
  v7 = [v44 valueForKey:@"HDRProcessingDestinationDisplayTypeKey"];
  v8 = v7;
  if (v6 <= 0 && v7)
  {
    if (([v7 isEqualToString:@"HDRProcessingDestinationDisplayTypeDolbyVisionTV"] & 1) == 0)
    {
      if (([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV"] & 1) == 0)
      {
        if (([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeHDR10TV"] & 1) == 0)
        {
          if (([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanel"] & 1) == 0)
          {
            if ([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanelLCD"])
            {
LABEL_11:
              v9 = 4;
              goto LABEL_22;
            }

            if ([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanelMac"])
            {
              v9 = 5;
              goto LABEL_22;
            }

            if ([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeSDRTV"])
            {
              v9 = 6;
              goto LABEL_22;
            }

            v42 = [v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeReferenceDisplay"] == 0;
            v43 = 7;
            goto LABEL_71;
          }

          goto LABEL_21;
        }

        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v9 = 0;
  if (v6 >= 1 && v7)
  {
    if (([v7 isEqualToString:@"HDRProcessingDestinationDisplayTypeDolbyVisionTV"] & 1) == 0)
    {
      if (([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV"] & 1) == 0)
      {
        if (([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeHDR10TV"] & 1) == 0)
        {
          if (([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanelOLED"] & 1) == 0)
          {
            if ([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanel2DBL"])
            {
              v9 = 7;
              goto LABEL_22;
            }

            if ([v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeInternalPanel0DBL"])
            {
              goto LABEL_11;
            }

            v42 = [v8 isEqualToString:@"HDRProcessingDestinationDisplayTypeSDRTV"] == 0;
            v43 = 6;
LABEL_71:
            if (v42)
            {
              v9 = 0;
            }

            else
            {
              v9 = v43;
            }

            goto LABEL_22;
          }

LABEL_21:
          v9 = 3;
          goto LABEL_22;
        }

LABEL_19:
        v9 = 2;
        goto LABEL_22;
      }

LABEL_17:
      v9 = 1;
      goto LABEL_22;
    }

LABEL_15:
    v9 = 0;
  }

LABEL_22:

  self->_displayType = v9;
  v10 = [v44 valueForKey:@"MaximumDisplayBrightnessKey"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 intValue];
    self->_displayMaxBrightnessInNits = v12;
    if (v12 >= 0xFA)
    {
      v13 = 250;
    }

    else
    {
      v13 = v12;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 250;
    self->_displayMaxBrightnessInNits = 250;
  }

  self->_displayMaxBrightnessInNitsForSDR = v13;
  self->_hasDisplayBrightnessFromEDID = v14;
  v15 = [v44 valueForKey:@"MinimumDisplayBrightnessKey"];
  v16 = v15;
  if (v15)
  {
    [v15 floatValue];
    if (v17 < 0.05)
    {
      v17 = 0.05;
    }

    if (v17 > 16.0)
    {
      v17 = 16.0;
    }

    self->_displayMinBrightnessInNits = v17;
  }

  else
  {
    self->_displayMinBrightnessInNits = 0.05;
  }

  v18 = [v44 valueForKey:@"DisplayChromaticityRx"];
  v19 = v18;
  if (v18)
  {
    [v18 floatValue];
    v21 = v20;
    v22 = [v44 valueForKey:@"DisplayChromaticityRy"];

    if (v22)
    {
      [v22 floatValue];
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = [v44 valueForKey:@"DisplayChromaticityGx"];

    if (v25)
    {
      [v25 floatValue];
      v27 = v26;
    }

    else
    {
      v27 = 0.0;
    }

    v28 = [v44 valueForKey:@"DisplayChromaticityGy"];

    if (v28)
    {
      [v28 floatValue];
      v30 = v29;
    }

    else
    {
      v30 = 0.0;
    }

    v31 = [v44 valueForKey:@"DisplayChromaticityBx"];

    if (v31)
    {
      [v31 floatValue];
      v33 = v32;
    }

    else
    {
      v33 = 0.0;
    }

    v34 = [v44 valueForKey:@"DisplayChromaticityBy"];

    if (v34)
    {
      [v34 floatValue];
      v36 = v35;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = [v44 valueForKey:@"DisplayChromaticityWx"];

    if (v37)
    {
      [v37 floatValue];
      v39 = v38;
    }

    else
    {
      v39 = 0.0;
    }

    v19 = [v44 valueForKey:@"DisplayChromaticityWy"];

    if (v19)
    {
      [v19 floatValue];
      v41 = v40;
    }

    else
    {
      v41 = 0.0;
    }

    createRGB2RGB3x3Matrix(self->_709toPanelPrimaryMatrix, v21, v24, v27, v30, v33, v36, v39, v41, 0.64, 0.33, 0.3, 0.6, 0.15, 0.06, 0.3127, 0.329);
  }

  else
  {
    *self->_709toPanelPrimaryMatrix = xmmword_2508CE5D0;
    *&self->_709toPanelPrimaryMatrix[4] = xmmword_2508CE5E0;
    self->_709toPanelPrimaryMatrix[8] = 0.9105;
  }

  self->_outputPackingColorFormat = [(HDRBackwardDisplayManagement *)self getPackagingColorFormatFromDictionary:v44 withDefaultValue:0];
  self->_inputScaleFactor = 600.0;
}

- (unsigned)getPackagingColorFormatFromDictionary:(id)a3 withDefaultValue:(unsigned int)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a3 valueForKey:@"HDRProcessingDisplayColorFormatKey"];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToString:@"HDRProcessingDisplayColorFormat_YUV422_12BITS_NATIVE"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HDRProcessingDisplayColorFormat_YUV422_12BITS_DP"))
    {
      a4 = 1;
    }

    else if ([v6 isEqualToString:@"HDRProcessingDisplayColorFormat_YUV422_12BITS_HDMI"])
    {
      a4 = 2;
    }

    else if ([v6 isEqualToString:@"HDRProcessingDisplayColorFormat_YUV422_12BITS_DOLBYVISION"])
    {
      a4 = 3;
    }

    else if ([v6 isEqualToString:@"HDRProcessingDisplayColorFormat_IPT422_12BITS"])
    {
      a4 = 0;
    }

    else if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v9 = logInstanceID;
      }

      else
      {
        v9 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = WORD1(v9);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 860\n", &v10, 0xCu);
      }

      prevLogInstanceID = v9;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 860\n", &v10, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return a4;
}

- (void)setupMetal
{
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HDRProcessing"];
  v3 = [v7 pathForResource:@"default.metallib" ofType:0];
  device = self->_device;
  if (v3)
  {
    v5 = [(MTLDeviceSPI *)device newLibraryWithFile:v3 error:0];
  }

  else
  {
    v5 = [(MTLDeviceSPI *)device newDefaultLibrary];
  }

  defaultLibrary = self->_defaultLibrary;
  self->_defaultLibrary = v5;
}

- (id)getRenderPipelineStateForShader:(id)a3
{
  v3 = [a3 getRenderPipelineStateForDevice:self->_device Library:self->_defaultLibrary];

  return v3;
}

- (void)createKernels
{
  v3 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ARGB_Linear_Full" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  BKDM_ARGB_Linear = self->_BKDM_ARGB_Linear;
  self->_BKDM_ARGB_Linear = v3;

  v5 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Dolby_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v6 = self->_BKDM_3Plane_2Pixel_PTV[0];
  self->_BKDM_3Plane_2Pixel_PTV[0] = v5;

  v7 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_HDR10_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v8 = self->_BKDM_3Plane_2Pixel_PTV[2];
  self->_BKDM_3Plane_2Pixel_PTV[2] = v7;

  v9 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Dolby_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v10 = self->_BKDM_3Plane_2Pixel_PTV[6];
  self->_BKDM_3Plane_2Pixel_PTV[6] = v9;

  v11 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_HDR10_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v12 = self->_BKDM_3Plane_2Pixel_PTV[8];
  self->_BKDM_3Plane_2Pixel_PTV[8] = v11;

  v13 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Dolby_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v14 = self->_BKDM_3Plane_1Pixel_PTV[0];
  self->_BKDM_3Plane_1Pixel_PTV[0] = v13;

  v15 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_HDR10_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v16 = self->_BKDM_3Plane_1Pixel_PTV[2];
  self->_BKDM_3Plane_1Pixel_PTV[2] = v15;

  v17 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Dolby_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v18 = self->_BKDM_3Plane_1Pixel_PTV[6];
  self->_BKDM_3Plane_1Pixel_PTV[6] = v17;

  v19 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_HDR10_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v20 = self->_BKDM_3Plane_1Pixel_PTV[8];
  self->_BKDM_3Plane_1Pixel_PTV[8] = v19;

  v21 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_UIBlending_Dolby_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v22 = self->_BKDM_3Plane_2Pixel_UIBlending_PTV[0];
  self->_BKDM_3Plane_2Pixel_UIBlending_PTV[0] = v21;

  v23 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_UIBlending_HDR10_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v24 = self->_BKDM_3Plane_2Pixel_UIBlending_PTV[2];
  self->_BKDM_3Plane_2Pixel_UIBlending_PTV[2] = v23;

  v25 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_UIBlending_Dolby_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v26 = self->_BKDM_3Plane_2Pixel_UIBlending_PTV[6];
  self->_BKDM_3Plane_2Pixel_UIBlending_PTV[6] = v25;

  v27 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_UIBlending_HDR10_PTV" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v28 = self->_BKDM_3Plane_2Pixel_UIBlending_PTV[8];
  self->_BKDM_3Plane_2Pixel_UIBlending_PTV[8] = v27;

  v29 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_UIBlending_Dolby_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v30 = self->_BKDM_3Plane_1Pixel_UIBlending_PTV[0];
  self->_BKDM_3Plane_1Pixel_UIBlending_PTV[0] = v29;

  v31 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_UIBlending_HDR10_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v32 = self->_BKDM_3Plane_1Pixel_UIBlending_PTV[2];
  self->_BKDM_3Plane_1Pixel_UIBlending_PTV[2] = v31;

  v33 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_UIBlending_Dolby_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v34 = self->_BKDM_3Plane_1Pixel_UIBlending_PTV[6];
  self->_BKDM_3Plane_1Pixel_UIBlending_PTV[6] = v33;

  v35 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_UIBlending_HDR10_PTV" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v36 = self->_BKDM_3Plane_1Pixel_UIBlending_PTV[8];
  self->_BKDM_3Plane_1Pixel_UIBlending_PTV[8] = v35;

  v37 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_Full" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v38 = self->_BKDM_3Plane_2Pixel_Linear[0];
  self->_BKDM_3Plane_2Pixel_Linear[0] = v37;

  v39 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_Full" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v40 = self->_BKDM_3Plane_2Pixel_Linear[1];
  self->_BKDM_3Plane_2Pixel_Linear[1] = v39;

  v41 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_HDR10" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v42 = self->_BKDM_3Plane_2Pixel_Linear[2];
  self->_BKDM_3Plane_2Pixel_Linear[2] = v41;

  v43 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_HDR10" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v44 = self->_BKDM_3Plane_2Pixel_Linear[3];
  self->_BKDM_3Plane_2Pixel_Linear[3] = v43;

  v45 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v46 = self->_BKDM_3Plane_2Pixel_Linear[4];
  self->_BKDM_3Plane_2Pixel_Linear[4] = v45;

  v47 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v48 = self->_BKDM_3Plane_2Pixel_Linear[5];
  self->_BKDM_3Plane_2Pixel_Linear[5] = v47;

  v49 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_Full" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v50 = self->_BKDM_3Plane_2Pixel_Linear[6];
  self->_BKDM_3Plane_2Pixel_Linear[6] = v49;

  v51 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_Full" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v52 = self->_BKDM_3Plane_2Pixel_Linear[7];
  self->_BKDM_3Plane_2Pixel_Linear[7] = v51;

  v53 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_HDR10" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v54 = self->_BKDM_3Plane_2Pixel_Linear[8];
  self->_BKDM_3Plane_2Pixel_Linear[8] = v53;

  v55 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_HDR10" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v56 = self->_BKDM_3Plane_2Pixel_Linear[9];
  self->_BKDM_3Plane_2Pixel_Linear[9] = v55;

  v57 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v58 = self->_BKDM_3Plane_2Pixel_Linear[10];
  self->_BKDM_3Plane_2Pixel_Linear[10] = v57;

  v59 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Linear_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v60 = self->_BKDM_3Plane_2Pixel_Linear[11];
  self->_BKDM_3Plane_2Pixel_Linear[11] = v59;

  v61 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_Full" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v62 = self->_BKDM_3Plane_1Pixel_Linear[0];
  self->_BKDM_3Plane_1Pixel_Linear[0] = v61;

  v63 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_Full" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v64 = self->_BKDM_3Plane_1Pixel_Linear[1];
  self->_BKDM_3Plane_1Pixel_Linear[1] = v63;

  v65 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v66 = self->_BKDM_3Plane_1Pixel_Linear[2];
  self->_BKDM_3Plane_1Pixel_Linear[2] = v65;

  v67 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v68 = self->_BKDM_3Plane_1Pixel_Linear[3];
  self->_BKDM_3Plane_1Pixel_Linear[3] = v67;

  v69 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v70 = self->_BKDM_3Plane_1Pixel_Linear[4];
  self->_BKDM_3Plane_1Pixel_Linear[4] = v69;

  v71 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v72 = self->_BKDM_3Plane_1Pixel_Linear[5];
  self->_BKDM_3Plane_1Pixel_Linear[5] = v71;

  v73 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_Full" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v74 = self->_BKDM_3Plane_1Pixel_Linear[6];
  self->_BKDM_3Plane_1Pixel_Linear[6] = v73;

  v75 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_Full" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v76 = self->_BKDM_3Plane_1Pixel_Linear[7];
  self->_BKDM_3Plane_1Pixel_Linear[7] = v75;

  v77 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v78 = self->_BKDM_3Plane_1Pixel_Linear[8];
  self->_BKDM_3Plane_1Pixel_Linear[8] = v77;

  v79 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v80 = self->_BKDM_3Plane_1Pixel_Linear[9];
  self->_BKDM_3Plane_1Pixel_Linear[9] = v79;

  v81 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v82 = self->_BKDM_3Plane_1Pixel_Linear[10];
  self->_BKDM_3Plane_1Pixel_Linear[10] = v81;

  v83 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Linear_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v84 = self->_BKDM_3Plane_1Pixel_Linear[11];
  self->_BKDM_3Plane_1Pixel_Linear[11] = v83;

  v85 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_Full" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v86 = self->_BKDM_3Plane_1Pixel_Gamma[0];
  self->_BKDM_3Plane_1Pixel_Gamma[0] = v85;

  v87 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_Full" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v88 = self->_BKDM_3Plane_1Pixel_Gamma[1];
  self->_BKDM_3Plane_1Pixel_Gamma[1] = v87;

  v89 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v90 = self->_BKDM_3Plane_1Pixel_Gamma[2];
  self->_BKDM_3Plane_1Pixel_Gamma[2] = v89;

  v91 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v92 = self->_BKDM_3Plane_1Pixel_Gamma[3];
  self->_BKDM_3Plane_1Pixel_Gamma[3] = v91;

  v93 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v94 = self->_BKDM_3Plane_1Pixel_Gamma[4];
  self->_BKDM_3Plane_1Pixel_Gamma[4] = v93;

  v95 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v96 = self->_BKDM_3Plane_1Pixel_Gamma[5];
  self->_BKDM_3Plane_1Pixel_Gamma[5] = v95;

  v97 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_Full" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v98 = self->_BKDM_3Plane_1Pixel_Gamma[6];
  self->_BKDM_3Plane_1Pixel_Gamma[6] = v97;

  v99 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_Full" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v100 = self->_BKDM_3Plane_1Pixel_Gamma[7];
  self->_BKDM_3Plane_1Pixel_Gamma[7] = v99;

  v101 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v102 = self->_BKDM_3Plane_1Pixel_Gamma[8];
  self->_BKDM_3Plane_1Pixel_Gamma[8] = v101;

  v103 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v104 = self->_BKDM_3Plane_1Pixel_Gamma[9];
  self->_BKDM_3Plane_1Pixel_Gamma[9] = v103;

  v105 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v106 = self->_BKDM_3Plane_1Pixel_Gamma[10];
  self->_BKDM_3Plane_1Pixel_Gamma[10] = v105;

  v107 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_Pixel_Gamma_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v108 = self->_BKDM_3Plane_1Pixel_Gamma[11];
  self->_BKDM_3Plane_1Pixel_Gamma[11] = v107;

  v109 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10_Inverse_HLGOOTF" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v110 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_HLGOOTF[0];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_HLGOOTF[0] = v109;

  v111 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10_Inverse_HLGOOTF" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v112 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_HLGOOTF[1];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_HLGOOTF[1] = v111;

  v113 = 0x1FFFFFFFFFFFFFF6;
  do
  {
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[v113], self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_HLGOOTF[0]);
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[v113 + 1], self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_HLGOOTF[1]);
    v113 += 2;
  }

  while (v113 * 8);
  v114 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10_Inverse_YScale" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v115 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[0];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[0] = v114;

  v116 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10_Inverse_YScale" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v117 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[1];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[1] = v116;

  v118 = 0x1FFFFFFFFFFFFFF6;
  do
  {
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Video_Scaled[v118], self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[0]);
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Video_Scaled[v118 + 1], self->_BKDM_3Plane_1Pixel_Gamma_Scaled_Inverse_YScale[1]);
    v118 += 2;
  }

  while (v118 * 8);
  v119 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v120 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[0];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[0] = v119;

  v121 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v122 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[1];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[1] = v121;

  v123 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v124 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[2];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[2] = v123;

  v125 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v126 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[3];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[3] = v125;

  v127 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v128 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[4];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[4] = v127;

  v129 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v130 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[5];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[5] = v129;

  v131 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v132 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[6];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[6] = v131;

  v133 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v134 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[7];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[7] = v133;

  v135 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v136 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[8];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[8] = v135;

  v137 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v138 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[9];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[9] = v137;

  v139 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v140 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[10];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[10] = v139;

  v141 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Gamma_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v142 = self->_BKDM_3Plane_1Pixel_Gamma_Scaled[11];
  self->_BKDM_3Plane_1Pixel_Gamma_Scaled[11] = v141;

  v143 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10_Inverse_HLGOOTF" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v144 = self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[0];
  self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[0] = v143;

  v145 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10_Inverse_HLGOOTF" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v146 = self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[1];
  self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[1] = v145;

  v147 = 0x1FFFFFFFFFFFFFF6;
  do
  {
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[v147], self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[0]);
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[v147 + 1], self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[1]);
    v147 += 2;
  }

  while (v147 * 8);
  v148 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10_Inverse_YScale" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v149 = self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[0];
  self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[0] = v148;

  v150 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10_Inverse_YScale" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v151 = self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[1];
  self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[1] = v150;

  v152 = 0x1FFFFFFFFFFFFFF6;
  do
  {
    objc_storeStrong(&self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[v152 + 12], self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[0]);
    objc_storeStrong((&self->_BKDM_3Plane_2Pixel_Video_HDR10 + v152 * 8), self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[1]);
    v152 += 2;
  }

  while (v152 * 8);
  v153 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_HDR10_Ref" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  BKDM_3Plane_1Pixel_Video_HDR10 = self->_BKDM_3Plane_1Pixel_Video_HDR10;
  self->_BKDM_3Plane_1Pixel_Video_HDR10 = v153;

  v155 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_HDR10_Ref" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  BKDM_3Plane_2Pixel_Video_HDR10 = self->_BKDM_3Plane_2Pixel_Video_HDR10;
  self->_BKDM_3Plane_2Pixel_Video_HDR10 = v155;

  v157 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v158 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[0];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[0] = v157;

  v159 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v160 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[1];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[1] = v159;

  v161 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_HDR10" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v162 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[2];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[2] = v161;

  v163 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_HDR10" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v164 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[3];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[3] = v163;

  v165 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v166 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[4];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[4] = v165;

  v167 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v168 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[5];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[5] = v167;

  v169 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v170 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[6];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[6] = v169;

  v171 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v172 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[7];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[7] = v171;

  v173 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_HDR10" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v174 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[8];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[8] = v173;

  v175 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_HDR10" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v176 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[9];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[9] = v175;

  v177 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v178 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[10];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[10] = v177;

  v179 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Gamma_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v180 = self->_BKDM_3Plane_2Pixel_Gamma_Scaled[11];
  self->_BKDM_3Plane_2Pixel_Gamma_Scaled[11] = v179;

  v181 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v182 = self->_BKDM_3Plane_1Pixel_Video_Scaled[0];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[0] = v181;

  v183 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v184 = self->_BKDM_3Plane_1Pixel_Video_Scaled[1];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[1] = v183;

  v185 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v186 = self->_BKDM_3Plane_1Pixel_Video_Scaled[2];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[2] = v185;

  v187 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v188 = self->_BKDM_3Plane_1Pixel_Video_Scaled[3];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[3] = v187;

  v189 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v190 = self->_BKDM_3Plane_1Pixel_Video_Scaled[4];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[4] = v189;

  v191 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v192 = self->_BKDM_3Plane_1Pixel_Video_Scaled[5];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[5] = v191;

  v193 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v194 = self->_BKDM_3Plane_1Pixel_Video_Scaled[6];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[6] = v193;

  v195 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v196 = self->_BKDM_3Plane_1Pixel_Video_Scaled[7];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[7] = v195;

  v197 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v198 = self->_BKDM_3Plane_1Pixel_Video_Scaled[8];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[8] = v197;

  v199 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v200 = self->_BKDM_3Plane_1Pixel_Video_Scaled[9];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[9] = v199;

  v201 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v202 = self->_BKDM_3Plane_1Pixel_Video_Scaled[10];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[10] = v201;

  v203 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_1Pixel_Video_Scaled_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v204 = self->_BKDM_3Plane_1Pixel_Video_Scaled[11];
  self->_BKDM_3Plane_1Pixel_Video_Scaled[11] = v203;

  v205 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v206 = self->_BKDM_3Plane_2Pixel_Video_Scaled[0];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[0] = v205;

  v207 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v208 = self->_BKDM_3Plane_2Pixel_Video_Scaled[1];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[1] = v207;

  v209 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_HDR10" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v210 = self->_BKDM_3Plane_2Pixel_Video_Scaled[2];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[2] = v209;

  v211 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_HDR10" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v212 = self->_BKDM_3Plane_2Pixel_Video_Scaled[3];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[3] = v211;

  v213 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v214 = self->_BKDM_3Plane_2Pixel_Video_Scaled[4];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[4] = v213;

  v215 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v216 = self->_BKDM_3Plane_2Pixel_Video_Scaled[5];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[5] = v215;

  v217 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v218 = self->_BKDM_3Plane_2Pixel_Video_Scaled[6];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[6] = v217;

  v219 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v220 = self->_BKDM_3Plane_2Pixel_Video_Scaled[7];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[7] = v219;

  v221 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_HDR10" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v222 = self->_BKDM_3Plane_2Pixel_Video_Scaled[8];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[8] = v221;

  v223 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_HDR10" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v224 = self->_BKDM_3Plane_2Pixel_Video_Scaled[9];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[9] = v223;

  v225 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v226 = self->_BKDM_3Plane_2Pixel_Video_Scaled[10];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[10] = v225;

  v227 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_3Plane_2Pixel_Video_Scaled_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v228 = self->_BKDM_3Plane_2Pixel_Video_Scaled[11];
  self->_BKDM_3Plane_2Pixel_Video_Scaled[11] = v227;

  v229 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_hdmi" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v230 = self->_colorfill1[0];
  self->_colorfill1[0] = v229;

  v231 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_hdmi" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v232 = self->_colorfill1[1];
  self->_colorfill1[1] = v231;

  v233 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v234 = self->_colorfill1[2];
  self->_colorfill1[2] = v233;

  v235 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v236 = self->_colorfill1[3];
  self->_colorfill1[3] = v235;

  v237 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v238 = self->_colorfill1[4];
  self->_colorfill1[4] = v237;

  v239 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v240 = self->_colorfill1[5];
  self->_colorfill1[5] = v239;

  v241 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_hdmi" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v242 = self->_colorfill1[6];
  self->_colorfill1[6] = v241;

  v243 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_hdmi" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v244 = self->_colorfill1[7];
  self->_colorfill1[7] = v243;

  v245 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v246 = self->_colorfill1[8];
  self->_colorfill1[8] = v245;

  v247 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v248 = self->_colorfill1[9];
  self->_colorfill1[9] = v247;

  v249 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v250 = self->_colorfill1[10];
  self->_colorfill1[10] = v249;

  v251 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill1_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v252 = self->_colorfill1[11];
  self->_colorfill1[11] = v251;

  v253 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_hdmi" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v254 = self->_colorfill2[0];
  self->_colorfill2[0] = v253;

  v255 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_hdmi" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v256 = self->_colorfill2[1];
  self->_colorfill2[1] = v255;

  v257 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_dp" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v258 = self->_colorfill2[2];
  self->_colorfill2[2] = v257;

  v259 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_dp" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v260 = self->_colorfill2[3];
  self->_colorfill2[3] = v259;

  v261 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v262 = self->_colorfill2[4];
  self->_colorfill2[4] = v261;

  v263 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v264 = self->_colorfill2[5];
  self->_colorfill2[5] = v263;

  v265 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_hdmi" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v266 = self->_colorfill2[6];
  self->_colorfill2[6] = v265;

  v267 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_hdmi" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v268 = self->_colorfill2[7];
  self->_colorfill2[7] = v267;

  v269 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_dp" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v270 = self->_colorfill2[8];
  self->_colorfill2[8] = v269;

  v271 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_dp" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v272 = self->_colorfill2[9];
  self->_colorfill2[9] = v271;

  v273 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v274 = self->_colorfill2[10];
  self->_colorfill2[10] = v273;

  v275 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_colorfill2_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v276 = self->_colorfill2[11];
  self->_colorfill2[11] = v275;

  v277 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_hdmi" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v278 = self->_fillUI1ForHDR[0];
  self->_fillUI1ForHDR[0] = v277;

  v279 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_hdmi" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v280 = self->_fillUI1ForHDR[1];
  self->_fillUI1ForHDR[1] = v279;

  v281 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v282 = self->_fillUI1ForHDR[2];
  self->_fillUI1ForHDR[2] = v281;

  v283 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v284 = self->_fillUI1ForHDR[3];
  self->_fillUI1ForHDR[3] = v283;

  v285 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v286 = self->_fillUI1ForHDR[4];
  self->_fillUI1ForHDR[4] = v285;

  v287 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v288 = self->_fillUI1ForHDR[5];
  self->_fillUI1ForHDR[5] = v287;

  v289 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_hdmi" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v290 = self->_fillUI1ForHDR[6];
  self->_fillUI1ForHDR[6] = v289;

  v291 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_hdmi" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v292 = self->_fillUI1ForHDR[7];
  self->_fillUI1ForHDR[7] = v291;

  v293 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v294 = self->_fillUI1ForHDR[8];
  self->_fillUI1ForHDR[8] = v293;

  v295 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v296 = self->_fillUI1ForHDR[9];
  self->_fillUI1ForHDR[9] = v295;

  v297 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v298 = self->_fillUI1ForHDR[10];
  self->_fillUI1ForHDR[10] = v297;

  v299 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v300 = self->_fillUI1ForHDR[11];
  self->_fillUI1ForHDR[11] = v299;

  for (i = 0; i != 12; ++i)
  {
    objc_storeStrong(&self->_fillUI1ForHDR_Inverse_YScale[i], self->_fillUI1ForHDR[i]);
  }

  v302 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_Inverse_YScale_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v303 = self->_fillUI1ForHDR_Inverse_YScale[2];
  self->_fillUI1ForHDR_Inverse_YScale[2] = v302;

  v304 = 1;
  v305 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_HDR_Inverse_YScale_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v306 = self->_fillUI1ForHDR_Inverse_YScale[3];
  self->_fillUI1ForHDR_Inverse_YScale[3] = v305;

  v307 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_hdmi" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v308 = self->_fillUI1SDR24[0];
  self->_fillUI1SDR24[0] = v307;

  v309 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_hdmi" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v310 = self->_fillUI1SDR24[1];
  self->_fillUI1SDR24[1] = v309;

  v311 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v312 = self->_fillUI1SDR24[2];
  self->_fillUI1SDR24[2] = v311;

  v313 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v314 = self->_fillUI1SDR24[3];
  self->_fillUI1SDR24[3] = v313;

  v315 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v316 = self->_fillUI1SDR24[4];
  self->_fillUI1SDR24[4] = v315;

  v317 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v318 = self->_fillUI1SDR24[5];
  self->_fillUI1SDR24[5] = v317;

  v319 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_hdmi" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v320 = self->_fillUI1SDR24[6];
  self->_fillUI1SDR24[6] = v319;

  v321 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_hdmi" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v322 = self->_fillUI1SDR24[7];
  self->_fillUI1SDR24[7] = v321;

  v323 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_dp" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v324 = self->_fillUI1SDR24[8];
  self->_fillUI1SDR24[8] = v323;

  v325 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_dp" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v326 = self->_fillUI1SDR24[9];
  self->_fillUI1SDR24[9] = v325;

  v327 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v328 = self->_fillUI1SDR24[10];
  self->_fillUI1SDR24[10] = v327;

  v329 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI1_sRGB_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v330 = self->_fillUI1SDR24[11];
  self->_fillUI1SDR24[11] = v329;

  v331 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_hdmi" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v332 = self->_fillUI2ForHDR[0];
  self->_fillUI2ForHDR[0] = v331;

  v333 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_hdmi" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v334 = self->_fillUI2ForHDR[1];
  self->_fillUI2ForHDR[1] = v333;

  v335 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_dp" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  v336 = self->_fillUI2ForHDR[2];
  self->_fillUI2ForHDR[2] = v335;

  v337 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_dp" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
  v338 = self->_fillUI2ForHDR[3];
  self->_fillUI2ForHDR[3] = v337;

  v339 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
  v340 = self->_fillUI2ForHDR[4];
  self->_fillUI2ForHDR[4] = v339;

  v341 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
  v342 = self->_fillUI2ForHDR[5];
  self->_fillUI2ForHDR[5] = v341;

  v343 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_hdmi" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v344 = self->_fillUI2ForHDR[6];
  self->_fillUI2ForHDR[6] = v343;

  v345 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_hdmi" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v346 = self->_fillUI2ForHDR[7];
  self->_fillUI2ForHDR[7] = v345;

  v347 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_dp" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:1];
  v348 = self->_fillUI2ForHDR[8];
  self->_fillUI2ForHDR[8] = v347;

  v349 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_dp" colorFormat:103 useCustomMatrix:1 p3CSC:0 applyYGamma:1];
  v350 = self->_fillUI2ForHDR[9];
  self->_fillUI2ForHDR[9] = v349;

  v351 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_LinearStretch" colorFormat:103 useCustomMatrix:0 p3CSC:1 applyYGamma:1];
  v352 = self->_fillUI2ForHDR[10];
  self->_fillUI2ForHDR[10] = v351;

  v353 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_fillUI2_HDR_LinearStretch" colorFormat:103 useCustomMatrix:1 p3CSC:1 applyYGamma:1];
  v354 = self->_fillUI2ForHDR[11];
  self->_fillUI2ForHDR[11] = v353;

  v355 = 0;
  do
  {
    v356 = v304;
    v357 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_ShaderDEGAMMA" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v358 = &self->_BKDM_SDRUIOnly_ShaderDegamma[v355];
    v359 = *v358;
    *v358 = v357;

    v360 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_ShaderDEGAMMA" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v361 = v358[1];
    v358[1] = v360;

    v362 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_ShaderDEGAMMA_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v363 = v358[2];
    v358[2] = v362;

    v364 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_ShaderDEGAMMA_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v365 = v358[3];
    v358[3] = v364;

    v366 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_ShaderDEGAMMA_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
    v367 = v358[4];
    v358[4] = v366;

    v368 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_ShaderDEGAMMA_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
    v369 = v358[5];
    v358[5] = v368;

    v304 = 0;
    v355 = 6;
  }

  while ((v356 & 1) != 0);
  v370 = 0;
  v371 = 1;
  do
  {
    v372 = v371;
    v373 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v374 = &self->_BKDM_SDRUIOnly[v370];
    v375 = *v374;
    *v374 = v373;

    v376 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v377 = v374[1];
    v374[1] = v376;

    v378 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v379 = v374[2];
    v374[2] = v378;

    v380 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v381 = v374[3];
    v374[3] = v380;

    v382 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
    v383 = v374[4];
    v374[4] = v382;

    v384 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_UI_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
    v385 = v374[5];
    v374[5] = v384;

    v371 = 0;
    v370 = 6;
  }

  while ((v372 & 1) != 0);
  v386 = 0;
  v387 = 1;
  do
  {
    v388 = v387;
    v389 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_Video" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v390 = &self->_BKDM_SDRVideoOnly[v386];
    v391 = *v390;
    *v390 = v389;

    v392 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_Video" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v393 = v390[1];
    v390[1] = v392;

    v394 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_Video_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v395 = v390[2];
    v390[2] = v394;

    v396 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_Video_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v397 = v390[3];
    v390[3] = v396;

    v398 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_Video_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
    v399 = v390[4];
    v390[4] = v398;

    v400 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_SDR_Video_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
    v401 = v390[5];
    v390[5] = v400;

    v387 = 0;
    v386 = 6;
  }

  while ((v388 & 1) != 0);
  v402 = 0;
  v403 = 1;
  do
  {
    v404 = v403;
    v405 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_video_ui_blending" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v406 = &self->_BKDM_SDRVideoUIBlending[v402];
    v407 = *v406;
    *v406 = v405;

    v408 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_video_ui_blending" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v409 = v406[1];
    v406[1] = v408;

    v410 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_video_ui_blending_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v411 = v406[2];
    v406[2] = v410;

    v412 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_video_ui_blending_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v413 = v406[3];
    v406[3] = v412;

    v414 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_video_ui_blending_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
    v415 = v406[4];
    v406[4] = v414;

    v416 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_video_ui_blending_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
    v417 = v406[5];
    v406[5] = v416;

    v403 = 0;
    v402 = 6;
  }

  while ((v404 & 1) != 0);
  v418 = 0;
  v419 = 1;
  do
  {
    v420 = v419;
    v421 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ui_blending" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v422 = &self->_BKDM_SDRUIBlending[v418];
    v423 = *v422;
    *v422 = v421;

    v424 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ui_blending" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v425 = v422[1];
    v422[1] = v424;

    v426 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ui_blending_HDR10" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
    v427 = v422[2];
    v422[2] = v426;

    v428 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ui_blending_HDR10" colorFormat:53 useCustomMatrix:1 p3CSC:0 applyYGamma:0];
    v429 = v422[3];
    v422[3] = v428;

    v430 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ui_blending_LinearStretch" colorFormat:53 useCustomMatrix:0 p3CSC:1 applyYGamma:0];
    v431 = v422[4];
    v422[4] = v430;

    v432 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"rdm_vert" fragmentName:@"frag_bkwrd_ui_blending_LinearStretch" colorFormat:53 useCustomMatrix:1 p3CSC:1 applyYGamma:0];
    v433 = v422[5];
    v422[5] = v432;

    v419 = 0;
    v418 = 6;
  }

  while ((v420 & 1) != 0);
  v434 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"frag_compdm_bkwrd_cif10_metadata_vert" fragmentName:@"frag_compdm_bkwrd_cif10_metadata_frag" colorFormat:53 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  metadataKernel = self->_metadataKernel;
  self->_metadataKernel = v434;

  v436 = [(HDRBackwardDisplayManagement *)self createShaderWithVertexName:@"frag_compdm_bkwrd_cif10_metadata_vert" fragmentName:@"frag_compdm_bkwrd_cif10_metadata_frag_2" colorFormat:103 useCustomMatrix:0 p3CSC:0 applyYGamma:0];
  metadataKernel2Pixel = self->_metadataKernel2Pixel;
  self->_metadataKernel2Pixel = v436;
}

- (void)createSamplers
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setSAddressMode:4];
  [v3 setTAddressMode:4];
  [v3 setMagFilter:1];
  [v3 setMinFilter:1];
  v4 = [(MTLDeviceSPI *)self->_device newSamplerStateWithDescriptor:v3];
  inputSampler = self->_inputSampler;
  self->_inputSampler = v4;

  if (!self->_inputSampler)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134218242;
        v9 = WORD1(v6);
        v10 = 2080;
        v11 = "[HDRBackwardDisplayManagement createSamplers]";
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : Failed to create sampler for composer", &v8, 0x16u);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[HDRBackwardDisplayManagement createSamplers]";
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : Failed to create sampler for composer", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createPQ2LTable
{
  v3 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  setPQ2LBuffer(v3, 0x400uLL);
  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:0];
  [v4 setHeight:1];
  [v4 setWidth:1024];
  [v4 setDepth:1];
  [v4 setPixelFormat:55];
  [v4 setArrayLength:1];
  [v4 setMipmapLevelCount:1];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v4];
  pq2LTable = self->_pq2LTable;
  self->_pq2LTable = v5;

  v7 = self->_pq2LTable;
  memset(v8, 0, sizeof(v8));
  v9 = xmmword_2508CE5F0;
  v10 = 1;
  [(MTLTexture *)v7 replaceRegion:v8 mipmapLevel:0 slice:0 withBytes:v3 bytesPerRow:4096 bytesPerImage:0];
  free(v3);
}

- (void)createL2PQTable
{
  v3 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  setL2PQBuffer(v3, 0x800uLL, 16.0, 4000.0);
  v4 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v4 setTextureType:0];
  [v4 setHeight:1];
  [v4 setWidth:2048];
  [v4 setDepth:1];
  [v4 setPixelFormat:55];
  [v4 setArrayLength:1];
  [v4 setMipmapLevelCount:1];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v4];
  l2PQTable = self->_l2PQTable;
  self->_l2PQTable = v5;

  v7 = self->_l2PQTable;
  memset(v8, 0, sizeof(v8));
  v9 = xmmword_2508CE600;
  v10 = 1;
  [(MTLTexture *)v7 replaceRegion:v8 mipmapLevel:0 slice:0 withBytes:v3 bytesPerRow:0x2000 bytesPerImage:0];
  free(v3);
}

- (void)createInverseScalingFactorTable
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:4096];
  inverseScalingTable = self->_inverseScalingTable;
  self->_inverseScalingTable = v3;

  v9 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v9 setTextureType:0];
  [v9 setHeight:1];
  [v9 setWidth:1024];
  [v9 setDepth:1];
  [v9 setPixelFormat:55];
  [v9 setArrayLength:1];
  [v9 setMipmapLevelCount:1];
  v5 = 0;
  inverseScalingFactorTableTextures = self->_inverseScalingFactorTableTextures;
  do
  {
    v7 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v9];
    v8 = inverseScalingFactorTableTextures[v5];
    inverseScalingFactorTableTextures[v5] = v7;

    ++v5;
  }

  while (v5 != 3);
}

- (void)createSDRScalingFactorTable
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:2048];
  sdrScalingTable = self->_sdrScalingTable;
  self->_sdrScalingTable = v3;

  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v7 setTextureType:0];
  [v7 setHeight:1];
  [v7 setWidth:256];
  [v7 setDepth:1];
  [v7 setPixelFormat:105];
  [v7 setArrayLength:1];
  [v7 setMipmapLevelCount:1];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7];
  sdrScalingFactorTableTexture = self->_sdrScalingFactorTableTexture;
  self->_sdrScalingFactorTableTexture = v5;
}

- (void)createYUVScalingFactorTable
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:0x2000];
  yuvScalingTable = self->_yuvScalingTable;
  self->_yuvScalingTable = v3;

  v5 = 0;
  yuvScalingFactorTableTextures = self->_yuvScalingFactorTableTextures;
  do
  {
    v7 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v7 setTextureType:0];
    [v7 setHeight:1];
    [v7 setWidth:1024];
    [v7 setDepth:1];
    [v7 setPixelFormat:105];
    [v7 setArrayLength:1];
    [v7 setMipmapLevelCount:1];
    v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7];
    v9 = yuvScalingFactorTableTextures[v5];
    yuvScalingFactorTableTextures[v5] = v8;

    ++v5;
  }

  while (v5 != 3);
}

- (void)fillInverseScalingFactorTableFromDMConfig:(id *)a3
{
  v5 = [(NSMutableData *)self->_inverseScalingTable length];
  v6 = [(NSMutableData *)self->_inverseScalingTable mutableBytes];
  v7 = v6;
  if (self->_prev_SlopeScaled != a3->var0 || self->_prev_c1 != a3->var1 || self->_prev_c2 != a3->var2 || self->_prev_c3 != a3->var3)
  {
    setInverseScalingFactorTable(v6, 0x400uLL, &a3->var0);
    ++self->_inverseScalingTableIndex;
    self->_prev_SlopeScaled = a3->var0;
    self->_prev_c1 = a3->var1;
    self->_prev_c2 = a3->var2;
    self->_prev_c3 = a3->var3;
  }

  inverseScalingFactorTableTexture = self->_inverseScalingFactorTableTexture;
  memset(v9, 0, sizeof(v9));
  v10 = xmmword_2508CE5F0;
  v11 = 1;
  [(MTLTexture *)inverseScalingFactorTableTexture replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:v7 bytesPerRow:v5 bytesPerImage:0];
}

- (void)fillScalingTable_SDR2HDR:(id *)a3 target_White:(float)a4 target_Black:(float)a5
{
  v8 = [(NSMutableData *)self->_sdrScalingTable length];
  v9 = [(NSMutableData *)self->_sdrScalingTable mutableBytes];
  v10 = v9;
  if (vabds_f32(self->_cached_target_white, a4) > 0.0000001 || vabds_f32(self->_cached_target_black, a5) > 0.0000001)
  {
    self->_cached_target_white = a4;
    self->_cached_target_black = a5;
    GetToneMap_SDR_DOLBY(v9, 0x100uLL, a4, a5, 100.0, 0.005, 1.0);
    sdrScalingFactorTableTexture = self->_sdrScalingFactorTableTexture;
    memset(v12, 0, sizeof(v12));
    v13 = xmmword_2508CE610;
    v14 = 1;
    [(MTLTexture *)sdrScalingFactorTableTexture replaceRegion:v12 mipmapLevel:0 slice:0 withBytes:v10 bytesPerRow:v8 bytesPerImage:0];
  }
}

- (void)fillScalingTable_YUVTM:(id *)a3 targetwhite:(float)a4 targetblack:(float)a5 satBoost:(float)a6 scalingFactor:(BOOL)a7 sdrOnly:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = [(NSMutableData *)self->_yuvScalingTable length];
  v15 = [(NSMutableData *)self->_yuvScalingTable mutableBytes];
  v16 = v15;
  v17 = a3->var20 != 1 && v9;
  if (vabds_f32(self->_cached_target_white, a4) > 0.0000001 || vabds_f32(self->_cached_target_black, a5) > 0.0000001 || vabds_f32(self->_cached_source_white, a3->var16) > 0.0000001 || vabds_f32(self->_cached_source_black, a3->var17) > 0.0000001 || self->_cached_scaling_factor != v17)
  {
    self->_cached_target_white = a4;
    self->_cached_target_black = a5;
    self->_cached_scaling_factor = v17;
    GetToneMap_YUV_TM(v15, 0x400uLL, v17, v8, a4, a5, a3->var16, a3->var17, 1.0);
    v18 = (self->_indexOfyuvScalingFactorTableTexture + 1) % 3;
    self->_indexOfyuvScalingFactorTableTexture = v18;
    objc_storeStrong(&self->_yuvScalingFactorTableTexture, self->_yuvScalingFactorTableTextures[v18]);
    yuvScalingFactorTableTexture = self->_yuvScalingFactorTableTexture;
    memset(v20, 0, sizeof(v20));
    v21 = xmmword_2508CE5F0;
    v22 = 1;
    [(MTLTexture *)yuvScalingFactorTableTexture replaceRegion:v20 mipmapLevel:0 slice:0 withBytes:v16 bytesPerRow:v14 bytesPerImage:0];
    self->_cached_source_white = a3->var16;
    self->_cached_source_black = a3->var17;
  }
}

- (void)createBuffers
{
  v16 = *MEMORY[0x277D85DE8];
  uniformBuffers = self->_uniformBuffers;
  v4 = 3;
  v13 = xmmword_2508CE620;
  do
  {
    v5 = [(MTLDeviceSPI *)self->_device newBufferWithLength:320 options:0, v13];
    v6 = *uniformBuffers;
    *uniformBuffers = v5;

    *([(MTLBuffer *)*uniformBuffers contents]+ 272) = v13;
    v7 = [(MTLDeviceSPI *)self->_device newBufferWithLength:1024 options:0];
    v8 = uniformBuffers[5];
    uniformBuffers[5] = v7;

    ++uniformBuffers;
    --v4;
  }

  while (v4);
  v9 = [(MTLDeviceSPI *)self->_device newBufferWithBytes:&vertices length:64 options:0];
  vertsBuffer = self->_vertsBuffer;
  self->_vertsBuffer = v9;

  if (!self->_vertsBuffer)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v11 = logInstanceID;
      }

      else
      {
        v11 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = WORD1(v11);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _vertsBuffer warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 2476\n", buf, 0xCu);
      }

      prevLogInstanceID = v11;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _vertsBuffer warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 2476\n", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createMetadataTexture
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:128 height:1 mipmapped:0];
  v4 = 0;
  metadataTextures = self->_metadataTextures;
  v6 = MEMORY[0x277D86220];
  *&v7 = 136315906;
  v13 = v7;
  do
  {
    for (i = 0; i != 5; ++i)
    {
      v9 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v3, v13];
      v10 = (*metadataTextures)[i];
      (*metadataTextures)[i] = v9;

      if (!(*metadataTextures)[i])
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v11 = logInstanceID;
          }

          else
          {
            v11 = prevLogInstanceID;
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134219010;
            v15 = WORD1(v11);
            v16 = 2080;
            *v17 = "[HDRBackwardDisplayManagement createMetadataTexture]";
            *&v17[8] = 1024;
            *v18 = v4;
            *&v18[4] = 1024;
            *&v18[6] = i;
            v19 = 2048;
            v20 = 0;
            _os_log_impl(&dword_250836000, v6, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : HDR error: Failed to create MTLTexture For _metadataTextures[%d][%d]=%p\n", buf, 0x2Cu);
          }

          prevLogInstanceID = v11;
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v15 = "[HDRBackwardDisplayManagement createMetadataTexture]";
          v16 = 1024;
          *v17 = v4;
          *&v17[4] = 1024;
          *&v17[6] = i;
          *v18 = 2048;
          *&v18[2] = 0;
          _os_log_impl(&dword_250836000, v6, OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : HDR error: Failed to create MTLTexture For _metadataTextures[%d][%d]=%p\n", buf, 0x22u);
        }
      }
    }

    ++v4;
    ++metadataTextures;
  }

  while (v4 != 3);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createMetadataVertexBuffer
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = floor(3072.0 / self->_targetWidth);
  v4 = [(MTLDeviceSPI *)self->_device newBufferWithLength:vcvtd_n_s64_f64((v3 + 2.0) * 5.0 + (v3 + 2.0) * 5.0 options:4uLL), 0];
  metadataVertexBuffer = self->_metadataVertexBuffer;
  self->_metadataVertexBuffer = v4;

  if (!self->_metadataVertexBuffer)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134217984;
        v26 = WORD1(v6);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _metadataVertexBuffer warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 2515\n", &v25, 0xCu);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _metadataVertexBuffer warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 2515\n", &v25, 2u);
    }
  }

  v7 = [(MTLBuffer *)self->_metadataVertexBuffer contents];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = 0;
    v12 = 0;
    targetWidth = self->_targetWidth;
    v14 = targetWidth;
    targetHeight = self->_targetHeight;
    v16 = (v8 + 0.5) / 5.0;
    do
    {
      v17 = targetWidth - v10;
      if (targetWidth - v10 >= 3072 - v11)
      {
        v17 = 3072 - v11;
      }

      v18 = (v10 + 0.5) / v14;
      v19 = (v11 + 0.5) * 0.0009765625;
      v7[2] = v19;
      v7[3] = v16;
      v10 += v17;
      v20 = (v9 + 0.5) / targetHeight;
      *v7 = v18;
      v7[1] = v20;
      v11 += v17;
      v21 = (v10 + 0.5) / v14;
      v22 = (v11 + 0.5) * 0.0009765625;
      v23 = v7 + 8;
      ++v12;
      v7[4] = v21;
      v7[5] = v20;
      v7[6] = v22;
      v7[7] = v16;
      if (v10 == targetWidth)
      {
        v10 = 0;
        ++v9;
      }

      v7 += 8;
    }

    while (v11 < 3072);
    self->_metadataSpanCount[v8++] = v12;
    v7 = v23;
  }

  while (v8 != 5);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateVertices:(id)a3 videoInput:(__IOSurface *)a4 videoDstRegion:(id)a5 videoSrcRegion:(id)a6 uiInput:(__IOSurface *)a7 uiDstRegion:(id)a8 uiSrcRegion:(id)a9 dstWidth:(int)a10 dstHeight:(int)a11 videoSrcWidth:(int)a12 videoSrcHeight:(int)a13 index:(int)a14 scale:(int)a15
{
  var1 = a5.var1.var1;
  v60.origin = a3.var0;
  v60.size.height = a3.var1.var1;
  DWORD1(v59) = a5.var0.var1;
  HIDWORD(v59) = a5.var1.var1;
  DWORD1(v58) = a6.var0.var1;
  HIDWORD(v58) = a6.var1.var1;
  DWORD1(v57) = a8.var0.var1;
  HIDWORD(v57) = a8.var1.var1;
  DWORD1(v56) = a9.var0.var1;
  HIDWORD(v56) = a9.var1.var1;
  v49 = a5.var0.var1;
  v60.size.width = a3.var1.var0 / a15;
  v17 = a5.var0.var0 / a15;
  LODWORD(v59) = a5.var0.var0 / a15;
  v51 = a5.var1.var0 / a15;
  DWORD2(v59) = a5.var1.var0 / a15;
  LODWORD(v58) = a6.var0.var0 / a15;
  DWORD2(v58) = a6.var1.var0 / a15;
  LODWORD(v57) = a8.var0.var0 / a15;
  DWORD2(v57) = a8.var1.var0 / a15;
  LODWORD(v56) = a9.var0.var0 / a15;
  DWORD2(v56) = a9.var1.var0 / a15;
  if (a4)
  {
    PixelFormat = IOSurfaceGetPixelFormat(a4);
  }

  else
  {
    PixelFormat = 0;
  }

  v47 = PixelFormat;
  if (a7)
  {
    v46 = IOSurfaceGetPixelFormat(a7);
  }

  else
  {
    v46 = 0;
  }

  if (*&v60.origin == *&self->_cachedFullRegion.origin && *&v60.size == *&self->_cachedFullRegion.size)
  {
    v22 = self + 16 * a14;
    v21 = a14;
    v23 = *(v22 + 359);
    v24 = *(v22 + 360);
    if (v59 == v23 && *(&v59 + 1) == v24)
    {
      v26 = &self->super.isa + 2 * a14;
      if (v58 == v26[365] && *(&v58 + 1) == v26[366] && v57 == v26[371] && *(&v57 + 1) == v26[372])
      {
        v29 = v26[377];
        v30 = v26[378];
        v31 = v56 == v29 && *(&v56 + 1) == v30;
        if (v31 && self->_cached_videoInputFormat == v47 && self->_cached_uiInputFormat == v46)
        {
          return;
        }
      }
    }
  }

  else
  {
    v21 = a14;
  }

  v18 = a6.var0.var0 / a15;
  v50 = a10 / a15;
  v32 = var1 / a6.var1.var1;
  v48 = a12 / a15;
  shape_alloc_bounds();
  shape_alloc_bounds();
  shape_alloc_bounds();
  shape_intersect();
  shape_difference();
  shape_difference();
  shape_union();
  shape_difference();
  shape_free();
  shape_free();
  shape_free();
  shape_free();
  self->_num_Blend_Rects[v21] = 0;
  self->_num_Video_Rects[v21] = 0;
  self->_num_UI_Rects[v21] = 0;
  self->_num_ColorFill_Rects[v21] = 0;
  self->_cachedFullRegion = v60;
  v33 = self + 16 * v21;
  *(v33 + 2872) = v59;
  *(v33 + 2920) = v58;
  *(v33 + 2968) = v57;
  *(v33 + 3016) = v56;
  self->_cached_videoInputFormat = v47;
  self->_cached_uiInputFormat = v46;
  v54 = 0;
  v55 = 0;
  v34 = [(MTLBuffer *)self->_vertsBuf contents];
  shape_enum_alloc();
  for (; shape_enum_next(); v34 += 16)
  {
    v53.i16[0] = WORD2(v55);
    v53.i16[1] = WORD2(v54);
    v53.i16[2] = v55;
    v53.i16[3] = v54;
    v52 = 0;
    *&v35 = v51 / (a6.var1.var0 / a15);
    deriveSrcRect(&v52, &v53, v17, v49, v18, a6.var0.var1, v35, v32, v36, v37, v38);
    createVerticesFromRect(v34, &v53, v50, a11, &v52, v48, a13);
    ++self->_num_Blend_Rects[v21];
  }

  shape_enum_free();
  shape_enum_alloc();
  for (; shape_enum_next(); v34 += 16)
  {
    v53.i16[0] = WORD2(v55);
    v53.i16[1] = WORD2(v54);
    v53.i16[2] = v55;
    v53.i16[3] = v54;
    v52 = 0;
    *&v39 = v51 / (a6.var1.var0 / a15);
    deriveSrcRect(&v52, &v53, v17, v49, v18, a6.var0.var1, v39, v32, v40, v41, v42);
    createVerticesFromRect(v34, &v53, v50, a11, &v52, v48, a13);
    ++self->_num_Video_Rects[v21];
  }

  shape_enum_free();
  shape_enum_alloc();
  if (shape_enum_next())
  {
    num_ColorFill_Rects = self->_num_ColorFill_Rects;
    v45 = a10 / a15;
    v44 = a11;
    do
    {
      v53.i16[0] = WORD2(v55);
      v53.i16[1] = WORD2(v54);
      v53.i16[2] = v55;
      v53.i16[3] = v54;
      createVerticesFromRect(v34, &v53, v50, a11, &v53, v50, a11);
      ++self->_num_UI_Rects[v21];
      v34 += 16;
    }

    while (shape_enum_next());
  }

  else
  {
    num_ColorFill_Rects = self->_num_ColorFill_Rects;
    v45 = a10 / a15;
    v44 = a11;
  }

  shape_enum_free();
  shape_enum_alloc();
  while (shape_enum_next())
  {
    v53.i16[0] = WORD2(v55);
    v53.i16[1] = WORD2(v54);
    v53.i16[2] = v55;
    v53.i16[3] = v54;
    createVerticesFromRect(v34, &v53, v45, v44, &v53, v45, v44);
    ++num_ColorFill_Rects[v21];
    v34 += 16;
  }

  shape_enum_free();
  shape_free();
  shape_free();
  shape_free();
  shape_free();
}

- (float)adjustUiScaleForDoViToHDR10Conversion:(float)a3
{
  uiEDRFactor = self->_uiEDRFactor;
  if (!GetConfig())
  {
    v6 = 0;
    goto LABEL_5;
  }

  Config = GetConfig();
  v6 = *HDRConfig::GetConfigEntryValue(Config, 0x70u, 0);
  if (v6 != -1)
  {
LABEL_5:
    v7 = v6 / 10000.0;
    return v7 * a3;
  }

  v7 = flt_2508CE530[uiEDRFactor < 1.0];
  return v7 * a3;
}

- (void)updateUniformUIScaleForVideo:(BOOL)a3 forTV:(BOOL)a4 videoPeakBrightnessInNits:(int)a5 uiHWDegamma:(BOOL)a6 dovi50toHDR10TVMode:(unsigned int)a7
{
  v10 = a4;
  v13 = [(MTLBuffer *)self->_uniformBuffer contents];
  v15 = 1.0;
  if (a3)
  {
    goto LABEL_9;
  }

  if (a5 >= 151 && v10)
  {
    v14 = a5 * -0.0001438 + 0.6709;
    *&v14 = v14;
    v16 = 0.4;
    if (*&v14 >= 0.4)
    {
      v16 = *&v14;
    }

    if (*&v14 <= 0.75)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0.75;
    }

LABEL_9:
    if (a6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v15 = 0.65057;
  }

  else
  {
    v15 = 0.73379;
  }

  if (a6)
  {
    goto LABEL_11;
  }

LABEL_10:
  v15 = v15 / powf(self->_uiEDRFactor, 0.45045);
LABEL_11:
  if (a7 == 1)
  {
    *&v14 = v15;
    [(HDRBackwardDisplayManagement *)self adjustUiScaleForDoViToHDR10Conversion:v14];
    v15 = v17;
  }

  *(v13 + 224) = v15;
}

- (BOOL)updateConfigFromMetadata:(id *)a3 uiScaleFactor:(float)a4 width:(int)a5 background:(id *)a6 hdrVideoOnly:(BOOL)a7 hdr10TV:(BOOL)a8 sdrOnly:(BOOL)a9
{
  v10 = a8;
  v11 = a7;
  v120 = *MEMORY[0x277D85DE8];
  self->_inputScaleFactor = a3->var11;
  v17 = [(MTLBuffer *)self->_uniformBuffer contents];
  v18 = v17;
  v17[56] = a4;
  var1 = a3->var1;
  v17[59] = var1;
  v17[58] = 1.0 / a3->var0;
  var3 = a3->var3;
  if (var3 == 0.0)
  {
    a3->var3 = 0.00001;
    var3 = 0.00001;
  }

  v17[60] = 1.0 / var3;
  v21 = a3->var2 / var3;
  v17[61] = v21;
  v17[62] = (v21 - var1) / var3;
  v22 = powf(v21, 0.33333);
  v23 = 0;
  v18[63] = fminf(v22, 1.0);
  *(v18 + 72) = 1;
  *(v18 + 16) = xmmword_2508CE630;
  v24 = *(v18 + 12);
  do
  {
    v25 = a3->var9[v23];
    v117 = v24;
    *(&v117 & 0xFFFFFFFFFFFFFFF3 | (4 * (v23 & 3))) = v25;
    v24 = v117;
    v18[50] = *(&v117 + 2);
    *(v18 + 24) = v24;
    ++v23;
  }

  while (v23 != 3);
  v26 = 0;
  v102 = *(v18 + 12);
  v18[57] = a3->var16;
  var4 = &[HDRBackwardDisplayManagement updateConfigFromMetadata:uiScaleFactor:width:background:hdrVideoOnly:hdr10TV:sdrOnly:]::bt2020_to_lms_host;
  v28 = *(v18 + 3);
  if (v11)
  {
    var4 = a3->var4;
  }

  v29 = &[HDRBackwardDisplayManagement updateConfigFromMetadata:uiScaleFactor:width:background:hdrVideoOnly:hdr10TV:sdrOnly:]::BT709toBT2020_host;
  v31 = *(v18 + 4);
  v30 = *(v18 + 5);
  if (!v10)
  {
    v29 = var4;
  }

  var8 = a3->var8;
  v33 = *(v18 + 6);
  v34 = *(v18 + 7);
  v35 = *(v18 + 8);
  v36 = *(v18 + 9);
  v37 = *(v18 + 10);
  v38 = *(v18 + 11);
  v39 = *v18;
  v40 = *(v18 + 1);
  v41 = v29 + 3;
  v42 = &self->_709toPanelPrimaryMatrix[6];
  v43 = *(v18 + 2);
  do
  {
    v44 = *(v41 - 3) * self->_inputScaleFactor;
    v105 = v28;
    *(&v105 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v44;
    v28 = v105;
    v18[14] = *(&v105 + 2);
    *(v18 + 6) = v28;
    v45 = *v41 * self->_inputScaleFactor;
    v106 = v31;
    *(&v106 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v45;
    v31 = v106;
    v18[18] = *(&v106 + 2);
    *(v18 + 8) = v31;
    v46 = v41[3] * self->_inputScaleFactor;
    v107 = v30;
    *(&v107 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v46;
    v30 = v107;
    v18[22] = *(&v107 + 2);
    *(v18 + 10) = v30;
    v47 = *(var8 - 27);
    v108 = v33;
    *(&v108 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v47;
    v33 = v108;
    v18[26] = *(&v108 + 2);
    *(v18 + 12) = v33;
    v48 = *(var8 - 24);
    v109 = v34;
    *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v48;
    v34 = v109;
    v18[30] = *(&v109 + 2);
    *(v18 + 14) = v34;
    v49 = *(var8 - 21);
    v110 = v35;
    *(&v110 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v49;
    v35 = v110;
    v18[34] = *(&v110 + 2);
    *(v18 + 16) = v35;
    v50 = *var8;
    v111 = v36;
    *(&v111 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v50;
    v36 = v111;
    v18[38] = *(&v111 + 2);
    *(v18 + 18) = v36;
    v51 = *(var8 + 3);
    v112 = v37;
    *(&v112 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v51;
    v37 = v112;
    v18[42] = *(&v112 + 2);
    *(v18 + 20) = v37;
    v52 = *(var8 + 6);
    v113 = v38;
    *(&v113 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v52;
    v38 = v113;
    v18[46] = *(&v113 + 2);
    *(v18 + 22) = v38;
    v53 = *(v42 - 6);
    v114 = v39;
    *(&v114 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v53;
    v39 = v114;
    v18[2] = *(&v114 + 2);
    *v18 = v39;
    v54 = *(v42 - 3);
    v115 = v40;
    *(&v115 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v54;
    v40 = v115;
    v18[6] = *(&v115 + 2);
    *(v18 + 2) = v40;
    v55 = *v42++;
    v116 = v43;
    *(&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3))) = v55;
    v43 = v116;
    v18[10] = *(&v116 + 2);
    ++v26;
    *(v18 + 4) = v43;
    ++v41;
    ++var8;
  }

  while (v26 != 3);
  if (self->_useAccessibilityMatrix)
  {
    for (i = 0; i != 3; ++i)
    {
      v57 = &v18[4 * i + 12];
      v58 = *v57;
      LODWORD(v59) = HIDWORD(*v57);
      LODWORD(v60) = *(v57 + 8);
      v61 = 0uLL;
      v62 = -3;
      v63 = self->_cachedHDRMatrix.parameter[2];
      do
      {
        v64 = (v59 * *(v63 - 3)) + (*&v58 * *(v63 - 6));
        v65 = *v63++;
        v104 = v61;
        *(&v104 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v62 - 1) & 3))) = v64 + (v60 * v65);
        v66 = v104;
        v67 = v104;
        HIDWORD(v67) = HIDWORD(v61);
        v61 = v67;
      }

      while (!__CFADD__(v62++, 1));
      *(v57 + 8) = DWORD2(v104);
      *v57 = v66;
    }
  }

  v69 = powf(a3->var16 * 0.0001, 0.1593);
  v70 = powf(((v69 * 18.852) + 0.83594) / ((v69 * 18.688) + 1.0), 78.844);
  if (!v10 || a9)
  {
    v71 = 1.0 / v70;
  }

  else
  {
    v71 = 1.0 / (v70 * 0.85546875);
  }

  v18[73] = v71;
  v72 = 1.0 / a5;
  v18[74] = v72;
  if (a6)
  {
    v73 = vdupq_n_s64(0x406F400000000000uLL);
    v74 = vmulq_f64(*&a6->var0, v73);
    v75 = vcgtq_f64(v73, v74);
    v76 = vcgtzq_f64(v74);
    v77 = vbsl_s8(vmovn_s64(vornq_s8(vmvnq_s8(v75), v76)), vand_s8(vdup_n_s32(0x437A0000u), vmovn_s64(vornq_s8(v76, v75))), vcvt_f32_f64(v74));
    v78 = a6->var2 * 250.0;
    v79 = v78 >= 250.0;
    v80 = v78 > 0.0 || v78 >= 250.0;
    if (v78 <= 0.0)
    {
      v79 = 1;
    }

    v81 = 250.0;
    if (!v80)
    {
      v81 = 0.0;
    }

    v82 = v78;
    if (v79)
    {
      v82 = v81;
    }
  }

  else
  {
    v77 = 0;
    v82 = 0.0;
  }

  v83 = 0;
  *(v18 + 75) = v77;
  v18[77] = v82;
  v84 = *(v18 + 13);
  do
  {
    v85 = a3->var10[v83];
    v103 = v84;
    *(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = v85;
    v84 = v103;
    v18[54] = *(&v103 + 2);
    *(v18 + 26) = v84;
    ++v83;
  }

  while (v83 != 3);
  displayType = self->_displayType;
  if (displayType)
  {
    if (displayType == 1)
    {
      v18[78] = 0.0;
      v18[79] = self->_displayMaxBrightnessInNits;
    }

    else
    {
      if (displayType == 6)
      {
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v87 = logInstanceID;
          }

          else
          {
            v87 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v119 = WORD1(v87);
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: _displayType != kHDRDestinationSDRTV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 2921\n", buf, 0xCu);
          }

          prevLogInstanceID = v87;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: _displayType != kHDRDestinationSDRTV warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 2921\n", buf, 2u);
        }
      }

      var14 = a3->var14;
      v95 = var14;
      v18[79] = var14;
      if (a3->var20 == 2)
      {
        var14 = a3->var16;
        v95 = var14;
      }

      v96 = (v95 / 1000.0);
      if (var14 - 401 > 0x63E)
      {
        v98 = log2(v96);
        v97 = pow(1.11099994, v98) * 1.20000005 + -1.0;
      }

      else
      {
        v97 = log10(v96) * 0.419999987 + 1.20000005 + -1.0;
      }

      v99 = v97;
      v18[78] = v99;
    }
  }

  else
  {
    displayMaxBrightnessInNits = self->_displayMaxBrightnessInNits;
    v89 = displayMaxBrightnessInNits;
    v90 = (displayMaxBrightnessInNits / 1000.0);
    if (displayMaxBrightnessInNits - 401 > 0x63E)
    {
      v92 = log2(v90);
      v91 = pow(1.11099994, v92) * 1.20000005 + -1.0;
    }

    else
    {
      v91 = log10(v90) * 0.419999987 + 1.20000005 + -1.0;
    }

    v93 = v91;
    v18[78] = v93;
    v18[79] = v89;
  }

  result = *&v102 <= 1.0;
  v101 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)generateMetaAndConfig:(id)a3 inputSurface:(__IOSurface *)a4 outputSurface:(__IOSurface *)a5 payLoad:(id *)a6 dmCfg:(id *)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = [a3 valueForKey:@"BackwardDMHDRDictionary"];
  v13 = [v12 valueForKey:@"DolbyVisionBackwardDMParameter"];
  v14 = [v13 bytes];
  v47 = a7;
  v15 = [v12 valueForKey:@"DolbyVisionHDMIData"];
  v44 = a6;
  v46 = a5;
  v16 = [v15 bytes];
  v17 = v16;
  if (v13)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v15)
  {
    v20 = v16 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20;
  v48 = v21;
  PlaneCount = IOSurfaceGetPlaneCount(a4);
  ID = IOSurfaceGetID(a4);
  if (!a4 || PlaneCount != 3)
  {
    goto LABEL_20;
  }

  v24 = ID;
  if (v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v54.columns[2].i32[0] = 67109120;
    v54.columns[2].i32[1] = v24;
    _os_log_error_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Current rg3h video input surface (IOSurface ID: %x) does not have config data\n", &v54.columns[2], 8u);
  }

  if (!v48 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
LABEL_20:
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_29:
    memcpy(&dmMetaCfgData, v14, 0x120uLL);
    v41 = v46;
    goto LABEL_30;
  }

  v54.columns[2].i32[0] = 67109120;
  v54.columns[2].i32[1] = v24;
  _os_log_error_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Current rg3h video input surface (IOSurface ID: %x) does not have meta data\n", &v54.columns[2], 8u);
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_21:
  xmmword_27F3DDED8 = 0u;
  unk_27F3DDEE8 = 0u;
  xmmword_27F3DDEB8 = 0u;
  xmmword_27F3DDEC8 = 0u;
  xmmword_27F3DDE98 = 0u;
  unk_27F3DDEA8 = 0u;
  xmmword_27F3DDE78 = 0u;
  unk_27F3DDE88 = 0u;
  displayMaxBrightnessInNitsForSDR = self->_displayMaxBrightnessInNitsForSDR;
  displayMinBrightnessInNits = self->_displayMinBrightnessInNits;
  *(&v54.columns[1] + 4) = 0uLL;
  getStaticToneCurves(0.01514, 0.82735, 0.01514, 0.75189, 0.65275, 0.01514, 0.75189, 42.0, v54.columns[2].f32, &v54.columns[1].i32[3], &v54.columns[1].f32[2], &v54.columns[1].f32[1]);
  v27 = 0uLL;
  dmMetaCfgData = v54.columns[2].i32[0];
  *algn_27F3DDDDC = v54.columns[1].i32[3];
  dword_27F3DDE14 = 1043183977;
  unk_27F3DDE0C = 0xC0948E8E40AF20C2;
  dword_27F3DDE20 = -1104418156;
  qword_27F3DDE18 = 0x4012C144BF900536;
  dword_27F3DDE2C = 1066723388;
  unk_27F3DDE24 = 0xBE45C4443CF41305;
  dword_27F3DDDF0 = 1027506446;
  qword_27F3DDDE8 = 0x3F23B89E3EA0BEA2;
  dword_27F3DDDFC = 1035050131;
  unk_27F3DDDF4 = 0x3F42074C3E1F1486;
  dword_27F3DDE08 = 1063219193;
  qword_27F3DDE00 = 0x3DE026133C916888;
  dword_27F3DDE38 = 1045220557;
  qword_27F3DDE30 = 0x3ECCCCCD3ECCCCCDLL;
  dword_27F3DDE44 = 1053474947;
  unk_27F3DDE3C = 0xC09B3B64408E8F5CLL;
  dword_27F3DDE50 = -1080764767;
  qword_27F3DDE48 = 0x3EB6E2EB3F4E3BCDLL;
  dword_27F3DDE5C = 1045571297;
  unk_27F3DDE54 = 0x3DC7D2383F800000;
  dword_27F3DDE68 = 1040738836;
  qword_27F3DDE60 = 0xBDE938133F800000;
  dword_27F3DDE74 = -1087551366;
  unk_27F3DDE6C = 0x3D05976C3F800000;
  v28 = -3;
  v29 = &dword_2508CE808;
  v30 = 0uLL;
  dword_27F3DDDE0 = v54.columns[1].i32[2];
  unk_27F3DDDE4 = v54.columns[1].i32[1];
  v31 = 0uLL;
  do
  {
    v32 = *(v29 - 3);
    v33 = v28 - 1;
    v54.columns[0] = v31;
    *(&v54 & 0xFFFFFFFFFFFFFFF3 | (4 * (v33 & 3))) = v32;
    v36.columns[0] = v54.columns[0];
    v34 = v54.columns[0];
    v34.i32[3] = v31.i32[3];
    v36.columns[1].i32[0] = *v29;
    v53 = v30;
    *(&v53 & 0xFFFFFFFFFFFFFFF3 | (4 * (v33 & 3))) = v36.columns[1].i32[0];
    v36.columns[1] = v53;
    v35 = v53;
    v35.i32[3] = v30.i32[3];
    v36.columns[2].i32[0] = v29[3];
    v52 = v27;
    *(&v52 & 0xFFFFFFFFFFFFFFF3 | (4 * (v33 & 3))) = v36.columns[2].i32[0];
    v36.columns[2] = v52;
    v37 = v52;
    ++v29;
    v37.i32[3] = v27.i32[3];
    v27 = v37;
    v30 = v35;
    v31 = v34;
    v38 = __CFADD__(v28++, 1);
  }

  while (!v38);
  v56 = __invert_f3(v36);
  v39 = -3;
  v40 = &dword_27F3DDE90;
  v41 = v46;
  do
  {
    v51 = v56.columns[0];
    *(v40 - 6) = *(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v39 - 1) & 3)));
    v50 = v56.columns[1];
    *(v40 - 3) = *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v39 - 1) & 3)));
    v49 = v56.columns[2];
    *v40++ = *(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v39 - 1) & 3)));
    v38 = __CFADD__(v39++, 1);
  }

  while (!v38);
  HIDWORD(xmmword_27F3DDE98) = 1157627904;
  *(&xmmword_27F3DDE98 + 4) = 0x4500000043800000;
  dword_27F3DDEB4 = 1065353216;
  DWORD2(xmmword_27F3DDEB8) = displayMaxBrightnessInNitsForSDR;
  *(&xmmword_27F3DDEB8 + 3) = displayMinBrightnessInNits;
  *&xmmword_27F3DDEC8 = 0x3BA3D70A00000064;
  byte_27F3DDEF0 &= ~1u;
LABEL_30:
  [(HDRBackwardDisplayManagement *)self attatchInfoFrame:&dmMetaCfgData toOutputSurface:v41, v44];
  v42 = &SDRMetaData;
  if (!v48)
  {
    v42 = v17;
  }

  *v47 = &dmMetaCfgData;
  *v45 = v42;

  v43 = *MEMORY[0x277D85DE8];
}

- (void)drawMetaWithEncoder:(id)a3 widthScale:(int)a4 dmPayLoadLength:(int)a5
{
  v15 = a3;
  v8 = 2560;
  if (a4 == 1)
  {
    v8 = 2552;
  }

  v9 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*(&self->super.isa + v8)];
  [v15 setRenderPipelineState:v9];
  [v15 setFragmentTexture:self->_metadataTexture[0] atIndex:0];
  [v15 setVertexBuffer:self->_metadataVertexBuffer offset:0 atIndex:0];
  [v15 drawPrimitives:1 vertexStart:0 vertexCount:2 * self->_metadataSpanCount[0]];
  if (a5 >= 120)
  {
    LODWORD(v10) = 0;
    v11 = &self->_metadataSpanCount[1];
    v12 = &self->_metadataTexture[1];
    v13 = a5 + 2;
    do
    {
      v14 = *(v11 - 1);
      [v15 setFragmentTexture:*v12 atIndex:0];
      v10 = (v10 + 2 * v14);
      [v15 drawPrimitives:1 vertexStart:v10 vertexCount:2 * *v11++];
      ++v12;
      v13 -= 121;
    }

    while (v13 > 121);
  }
}

- (int)getTVIndex:(BOOL)a3
{
  if (self->_outputPackingColorFormat == 1)
  {
    displayType = self->_displayType;
    if (displayType == 6 || displayType == 1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v5 += 6;
  }

  return v5 | self->_useAccessibilityMatrix;
}

- (int)adjustMetaData:(id *)a3 HDRUIBlending:(BOOL)a4 hasLetterbox:(BOOL)a5
{
  v5 = a5;
  adjustL1MetaData(a3, a4);

  return adjustL2MetaData(&a3->var0, v5);
}

- (void)packetizeMetadata:(id *)a3 length:(int)a4 into:(int)a5 onSurface:(__IOSurface *)a6
{
  v9 = 0;
  v21 = *MEMORY[0x277D85DE8];
  metadataTexture = self->_metadataTexture;
  v11 = self->_metadataTextures[a5];
  do
  {
    objc_storeStrong(&metadataTexture[v9], v11[v9]);
    ++v9;
  }

  while (v9 != 5);
  v12 = malloc_type_calloc(0x280uLL, 1uLL, 0x100004077774924uLL);
  *bytes = v12;
  if (v12)
  {
    PacketizeMetadata(a3, a4, metadataTexture, v12);
    v13 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
    IOSurfaceSetValue(a6, @"HDMIMetaData", v13);
    CFRelease(v13);
    free(*bytes);
  }

  else if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v14 = logInstanceID;
    }

    else
    {
      v14 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v18 = WORD1(v14);
      v19 = 2080;
      v20 = "[HDRBackwardDisplayManagement packetizeMetadata:length:into:onSurface:]";
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s: calloc failed!\n", buf, 0x16u);
    }

    prevLogInstanceID = v14;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[HDRBackwardDisplayManagement packetizeMetadata:length:into:onSurface:]";
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s: calloc failed!\n", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)EncodeToCommandBuffer:(id)a3 inputSurface:(__IOSurface *)a4 uiSurface:(__IOSurface *)a5 outputSurface:(__IOSurface *)a6 frameProperties:(id)a7
{
  v89 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v80 = a7;
  v81 = 0;
  v82 = 0;
  v79 = v12;
  if (!v12 || !a6 || !(a4 | a5))
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v13 = logInstanceID;
      }

      else
      {
        v13 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219008;
        *v84 = WORD1(v13);
        *&v84[8] = 2048;
        *v85 = v12;
        *&v85[8] = 2048;
        *&v85[10] = a6;
        *v86 = 2048;
        *&v86[2] = a4;
        v87 = 2048;
        v88 = a5;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx commanBuffer=%p, output=%p, input=%p, ui=%p", buf, 0x34u);
      }

      v14 = 0;
      v15 = 0;
      prevLogInstanceID = v13;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *v84 = v12;
        *&v84[8] = 2048;
        *v85 = a6;
        *&v85[8] = 2048;
        *&v85[10] = a4;
        *v86 = 2048;
        *&v86[2] = a5;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] commanBuffer=%p, output=%p, input=%p, ui=%p", buf, 0x2Au);
      }

      v14 = 0;
      v15 = 0;
    }

    v16 = -17006;
    goto LABEL_153;
  }

  if (a4)
  {
    self->_width = IOSurfaceGetWidth(a4);
    Height = IOSurfaceGetHeight(a4);
  }

  else
  {
    self->_width = IOSurfaceGetWidth(a5);
    Height = IOSurfaceGetHeight(a5);
  }

  self->_height = Height;
  if (a5)
  {
    edrfactor = iosurface_get_edrfactor(a5);
  }

  else
  {
    edrfactor = 1.0;
  }

  self->_uiEDRFactor = edrfactor;
  self->_targetWidth = IOSurfaceGetWidth(a6);
  v19 = IOSurfaceGetHeight(a6);
  v20 = v19;
  self->_targetHeight = v19;
  if (!a4)
  {
    width = self->_width;
    targetWidth = self->_targetWidth;
    if (width != targetWidth || self->_height != v19)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v27 = logInstanceID;
        }

        else
        {
          v27 = prevLogInstanceID;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v28 = self->_height;
          *buf = 134219008;
          *v84 = WORD1(v27);
          *&v84[8] = 1024;
          *v85 = width;
          *&v85[4] = 1024;
          *&v85[6] = targetWidth;
          *&v85[10] = 1024;
          *&v85[12] = v28;
          *&v85[16] = 1024;
          *v86 = v20;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx _width=%d, _targetWidth=%d, _height=%d, _targetHeight=%d", buf, 0x24u);
        }

        v14 = 0;
        v15 = 0;
        prevLogInstanceID = v27;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v54 = self->_height;
          *buf = 67109888;
          *v84 = width;
          *&v84[4] = 1024;
          *&v84[6] = targetWidth;
          *v85 = 1024;
          *&v85[2] = v54;
          *&v85[6] = 1024;
          *&v85[8] = v20;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] _width=%d, _targetWidth=%d, _height=%d, _targetHeight=%d", buf, 0x1Au);
        }

        v14 = 0;
        v15 = 0;
      }

      goto LABEL_152;
    }
  }

  if (!self->_metadataVertexBuffer)
  {
    [(HDRBackwardDisplayManagement *)self createMetadataVertexBuffer];
  }

  [(HDRBackwardDisplayManagement *)self generateMetaAndConfig:v80 inputSurface:a4 outputSurface:a6 payLoad:&v82 dmCfg:&v81];
  if (v81)
  {
    v23 = *(v81 + 224);
    v24 = v23 == 2;
    v72 = v23 == 3;
  }

  else
  {
    v24 = 0;
    v72 = 0;
  }

  outputPackingColorFormat = self->_outputPackingColorFormat;
  if (bswap32(*(v82 + 78)) >> 16 == 0xFFFF)
  {
    v29 = __rev16(*(v82 + 76));
    v30 = v29 == 0xFFFF;
    if (!a4 || v29 == 0xFFFF)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (a4)
  {
LABEL_41:
    v30 = IOSurfaceGetPixelFormat(a4) == 1999843442 || IOSurfaceGetPixelFormat(a4) == 1647534392;
    goto LABEL_45;
  }

  v30 = 0;
LABEL_45:
  v73 = bswap32(*(v82 + 78)) >> 16 == 65534 && bswap32(*(v82 + 76)) >> 16 == 65534;
  v31 = 0;
  v71 = *(v81 + 280);
  if (v30)
  {
    a5 = a4;
    v32 = 0;
  }

  else
  {
    v32 = a4;
  }

  if (a5)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  v78 = v34;
  if (v32 && !a5)
  {
    v31 = IOSurfaceGetPlaneCount(v32) == 3;
  }

  displayMaxBrightnessInNitsForSDR = self->_displayMaxBrightnessInNitsForSDR;
  if (v73)
  {
    v36 = v81;
LABEL_62:
    displayMaxBrightnessInNits = *(v36 + 232);
    goto LABEL_63;
  }

  if ((((v24 || v72) | v78) & 1) == 0 || outputPackingColorFormat)
  {
    goto LABEL_65;
  }

  v36 = v81;
  if (v24)
  {
    goto LABEL_62;
  }

  displayMaxBrightnessInNits = self->_displayMaxBrightnessInNits;
  if (!v72)
  {
    displayMinBrightnessInNits = self->_displayMinBrightnessInNits;
    LODWORD(v21) = 1128792064;
    LODWORD(v22) = 5.0;
    [(HDRBackwardDisplayManagement *)self fillScalingTable_SDR2HDR:v81 target_White:v21 target_Black:v22];
    v39 = displayMaxBrightnessInNitsForSDR;
    goto LABEL_64;
  }

LABEL_63:
  displayMinBrightnessInNits = *(v36 + 236);
  v39 = displayMaxBrightnessInNits;
LABEL_64:
  *&v21 = displayMaxBrightnessInNits;
  setTargitBrightnessInMetaData(v82, v21, displayMinBrightnessInNits, v39, displayMinBrightnessInNits);
LABEL_65:
  v74 = v31;
  v76 = a5;
  objc_storeStrong(&self->_uniformBuffer, self->_uniformBuffers[self->_frameIndex % 3]);
  objc_storeStrong(&self->_inverseScalingFactorTableTexture, self->_inverseScalingFactorTableTextures[self->_frameIndex % 3]);
  if (v78)
  {
    v40 = 100.0;
  }

  else
  {
    v40 = 1.0;
  }

  v15 = [v80 valueForKey:@"UILayerScaleFactor"];
  v41 = [v80 valueForKey:@"SDRMaxBrightnessInNits"];
  v14 = v41;
  if (v41)
  {
    if (v15)
    {
LABEL_152:
      v16 = -17000;
      goto LABEL_153;
    }

    [v41 floatValue];
    hasDisplayBrightnessFromEDID = self->_hasDisplayBrightnessFromEDID;
    if (*&v42 > displayMaxBrightnessInNitsForSDR)
    {
      ++_MergedGlobals_4;
      *&v42 = displayMaxBrightnessInNitsForSDR;
    }

    if (*&v42 == 0.0 && hasDisplayBrightnessFromEDID)
    {
      *&v42 = displayMaxBrightnessInNitsForSDR;
    }

    if (*&v42 <= 99)
    {
      ++qword_280C71958;
      *&v42 = displayMaxBrightnessInNitsForSDR;
    }

    v40 = *&v42 / displayMaxBrightnessInNitsForSDR;
  }

  else if (v15)
  {
    [v15 floatValue];
    v40 = *&v42 / 3.0;
  }

  v70 = outputPackingColorFormat - 1;
  *&v42 = v40;
  [(HDRBackwardDisplayManagement *)self updateConfigFromMetadata:v81 uiScaleFactor:self->_targetWidth width:0 background:v74 hdrVideoOnly:outputPackingColorFormat - 1 < 2 hdr10TV:v78 sdrOnly:v42];
  if (outputPackingColorFormat - 1 <= 1)
  {
    if (v78)
    {
      LODWORD(v45) = 5.0;
      LODWORD(v44) = 1128792064;
    }

    else
    {
      LODWORD(v45) = *(v81 + 236);
      *&v44 = *(v81 + 232);
    }

    LODWORD(v46) = 1.0;
    [(HDRBackwardDisplayManagement *)self fillScalingTable_YUVTM:v81 targetwhite:1 targetblack:v78 satBoost:v44 scalingFactor:v45 sdrOnly:v46];
    goto LABEL_97;
  }

  [(HDRBackwardDisplayManagement *)self fillInverseScalingFactorTableFromDMConfig:v81];
  if (outputPackingColorFormat)
  {
LABEL_97:
    v69 = 0;
    goto LABEL_98;
  }

  if (a5)
  {
    v47 = v32 == 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = !v47;
  v69 = [(HDRBackwardDisplayManagement *)self adjustMetaData:v82 HDRUIBlending:v48 hasLetterbox:0];
  [(HDRBackwardDisplayManagement *)self packetizeMetadata:v82 length:v69 into:self->_frameIndex % 3 onSurface:a6];
LABEL_98:
  v75 = [(HDRBackwardDisplayManagement *)self pixelNumPerThreadFullScreen:1 videoInput:v32 UI:a5 Output:a6 widthScaling:0];
  LOBYTE(v68) = v71 & 1;
  [(HDRBackwardDisplayManagement *)self setupTexturesWithInput:v32 VideoSRGB:v78 UI:a5 UISRGB:v78 Output:a6 PixelPerThread:v75 ptvMode:v68];
  v49 = [(HDRBackwardDisplayManagement *)self createRenderCommandEncoderWithCommandBuffer:v79 texture:self->_outputTexture widthScale:v75 loadAction:0];
  if (v49)
  {
    v50 = v49;
    v51 = [(HDRBackwardDisplayManagement *)self getTVIndex:v72];
    if (v32)
    {
      [v50 setFragmentTexture:self->_inputTexture[0] atIndex:0];
      v52 = 1;
    }

    else
    {
      v52 = 0;
    }

    PlaneCount = IOSurfaceGetPlaneCount(a4);
    if (!v32 || PlaneCount != 3)
    {
      if (v32)
      {
        if (v71)
        {
          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v57 = logInstanceID;
            }

            else
            {
              v57 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v84 = WORD1(v57);
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: !ptvMode warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 3613\n", buf, 0xCu);
            }

            prevLogInstanceID = v57;
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: !ptvMode warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 3613\n", buf, 2u);
          }
        }

        v60 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:self->_BKDM_ARGB_Linear];
      }

      else
      {
        v58 = [(HDRBackwardDisplayManagement *)self inputIsSDRVideoFormat:0];
        [(HDRBackwardDisplayManagement *)self updateUniformUIScaleForVideo:v58 forTV:v70 < 2 videoPeakBrightnessInNits:*(v81 + 240) uiHWDegamma:v78 dovi50toHDR10TVMode:*(v81 + 276)];
        v59 = 1592;
        if (v58)
        {
          v59 = 1688;
        }

        v60 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*(&self->super.isa + 8 * v51 + v59)];
      }

      v62 = v60;
      goto LABEL_145;
    }

    if (v76)
    {
      p_BKDM_3Plane_2Pixel_Video_HDR10 = &self->_BKDM_3Plane_1Pixel_Gamma[v51];
    }

    else
    {
      if (!v73)
      {
        if (self->_width != self->_targetWidth || self->_height != self->_targetHeight)
        {
          v61 = &self->super.isa + v51;
          if (v71)
          {
            p_BKDM_3Plane_2Pixel_Video_HDR10 = (v61 + 17);
          }

          else
          {
            p_BKDM_3Plane_2Pixel_Video_HDR10 = (v61 + 65);
          }

          goto LABEL_144;
        }

        if (v71)
        {
          p_BKDM_3Plane_2Pixel_Video_HDR10 = &self->_BKDM_3Plane_2Pixel_PTV[v51];
          goto LABEL_144;
        }

        if (*(v81 + 281) == 1)
        {
          p_BKDM_3Plane_2Pixel_Video_HDR10 = &self->_BKDM_3Plane_2Pixel_Video_HDR10;
          goto LABEL_144;
        }
      }

      p_BKDM_3Plane_2Pixel_Video_HDR10 = &self->_BKDM_3Plane_2Pixel_Linear[v51];
    }

LABEL_144:
    v63 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*p_BKDM_3Plane_2Pixel_Video_HDR10];
    [v50 setFragmentTexture:self->_inputTexture[1] atIndex:v52];
    [v50 setFragmentTexture:self->_inputTexture[2] atIndex:v52 + 1];
    v52 |= 2u;
    v62 = v63;
LABEL_145:
    [v50 setRenderPipelineState:v62];
    [v50 setFragmentTexture:self->_pq2LTable atIndex:v52];
    v64 = 2592;
    if (v70 < 2)
    {
      v64 = 2640;
    }

    v65 = 2632;
    if ((v78 & (outputPackingColorFormat == 0)) == 0)
    {
      v65 = v64;
    }

    [v50 setFragmentTexture:*(&self->super.isa + v65) atIndex:v52 + 1];
    [v50 setFragmentTexture:self->_l2PQTable atIndex:v52 + 2];
    if (v76)
    {
      [v50 setFragmentTexture:self->_uiTexture atIndex:v52 + 3];
    }

    [v50 setFragmentBuffer:self->_uniformBuffer offset:0 atIndex:0];
    [v50 setFragmentSamplerState:self->_inputSampler atIndex:0];
    [v50 setVertexBuffer:self->_vertsBuffer offset:0 atIndex:0];
    [v50 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [(HDRBackwardDisplayManagement *)self handleMetaInsertion:outputPackingColorFormat == 0 encoder:v50 widthScale:v75 payloadLength:v69];
    [v50 endEncoding];

    ++self->_frameIndex;
    goto LABEL_152;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v53 = logInstanceID;
    }

    else
    {
      v53 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *v84 = WORD1(v53);
      *&v84[8] = 2080;
      *v85 = "[HDRBackwardDisplayManagement EncodeToCommandBuffer:inputSurface:uiSurface:outputSurface:frameProperties:]";
      *&v85[8] = 2048;
      *&v85[10] = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : encoder=%p, out of encoder resource", buf, 0x20u);
    }

    prevLogInstanceID = v53;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v84 = "[HDRBackwardDisplayManagement EncodeToCommandBuffer:inputSurface:uiSurface:outputSurface:frameProperties:]";
    *&v84[8] = 2048;
    *v85 = 0;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : encoder=%p, out of encoder resource", buf, 0x16u);
  }

  v16 = -17004;
LABEL_153:

  v66 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int64_t)encodeToCommandBuffer:(id)a3 video:(__IOSurface *)a4 videoSrcRegion:(id)a5 videoDstRegion:(id)a6 ui:(__IOSurface *)buffer output:(__IOSurface *)a8 frameProperties:(id)a9
{
  var1 = a5.var1;
  var0 = a5.var0;
  v13 = a3;
  v14 = a9;
  Width = IOSurfaceGetWidth(a8);
  v16 = Width | (IOSurfaceGetHeight(a8) << 32);
  v17 = v16;
  if (buffer)
  {
    v18 = IOSurfaceGetWidth(buffer);
    v17 = v18 | (IOSurfaceGetHeight(buffer) << 32);
  }

  v19 = [(HDRBackwardDisplayManagement *)self encodeToCommandBuffer:v13 video:a4 videoSrcRegion:var0 videoDstRegion:var1 ui:*&a6.var0 uiSrcRegion:*&a6.var1 uiDstRegion:buffer backgroundColor:0 output:v17 frameProperties:0, v16, 0, a8, v14];

  return v19;
}

- (int64_t)setAccessibilityMatrix:(id *)a3
{
  if (a3 && (fabsf(a3->var0[0][0] + -1.0) >= 0.0000001 || fabsf(a3->var0[1][1] + -1.0) >= 0.0000001 || fabsf(a3->var0[2][2] + -1.0) >= 0.0000001 || fabsf(a3->var0[0][1]) >= 0.0000001 || fabsf(a3->var0[0][2]) >= 0.0000001 || fabsf(a3->var0[1][0]) >= 0.0000001 || fabsf(a3->var0[1][2]) >= 0.0000001 || fabsf(a3->var0[2][0]) >= 0.0000001 || fabsf(a3->var0[2][1]) >= 0.0000001))
  {
    self->_useAccessibilityMatrix = 1;
    v3 = *&a3->var0[0][0];
    v4 = *&a3->var0[1][1];
    self->_cachedHDRMatrix.parameter[2][2] = a3->var0[2][2];
    *&self->_cachedHDRMatrix.parameter[0][0] = v3;
    *&self->_cachedHDRMatrix.parameter[1][1] = v4;
  }

  else
  {
    self->_useAccessibilityMatrix = 0;
  }

  return -17000;
}

- (int64_t)encodeToCommandBuffer:(id)a3 video:(__IOSurface *)a4 videoSrcRegion:(id)a5 videoDstRegion:(id)a6 ui:(__IOSurface *)a7 uiSrcRegion:(id)a8 uiDstRegion:(id)a9 backgroundColor:(id *)a10 output:(__IOSurface *)a11 frameProperties:(id)a12
{
  var1 = a6.var1;
  var0 = a6.var0;
  v14 = a5.var1;
  v15 = a5.var0;
  v145 = *MEMORY[0x277D85DE8];
  v138 = a6;
  v18 = a3;
  v19 = a12;
  v20 = v19;
  v137 = 0;
  v136 = 0;
  v134 = v18;
  if (v18 && a11 && a4 | a7)
  {
    v126 = v19;
    Width = IOSurfaceGetWidth(a11);
    Height = IOSurfaceGetHeight(a11);
    v135 = __PAIR64__(Height, Width);
    if (!a4)
    {
      v117 = 0;
      v124 = 0;
      v129 = 0;
      goto LABEL_24;
    }

    v129 = IOSurfaceGetWidth(a4);
    v124 = IOSurfaceGetHeight(a4);
    v23 = HIDWORD(*&v15);
    if (v15.var0 >= v129 && v15.var1 >= v124)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v24 = logInstanceID;
        }

        else
        {
          v24 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        *buf = 134219008;
        *v140 = WORD1(v24);
        *&v140[8] = 1024;
        *v141 = v15.var0;
        *&v141[4] = 1024;
        *&v141[6] = v129;
        *&v141[10] = 1024;
        *&v141[12] = v15.var1;
        *&v141[16] = 1024;
        *v142 = v124;
        v25 = MEMORY[0x277D86220];
        v26 = " [1.450.54] #%04llx   region.origin.x=%d >= texWidth=%d && region.origin.y=%d >= texHeight=%d";
        v27 = 36;
LABEL_41:
        _os_log_impl(&dword_250836000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
LABEL_42:
        prevLogInstanceID = v24;
        goto LABEL_201;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_292;
      }

      *buf = 67109888;
      *v140 = v15.var0;
      *&v140[4] = 1024;
      *&v140[6] = v129;
      *v141 = 1024;
      *&v141[2] = v15.var1;
      *&v141[6] = 1024;
      v54 = v124;
      goto LABEL_92;
    }

    if (v15.var0)
    {
      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v24 = logInstanceID;
        }

        else
        {
          v24 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        *buf = 134218240;
        *v140 = WORD1(v24);
        *&v140[8] = 1024;
        *v141 = v15.var0;
        v25 = MEMORY[0x277D86220];
        v26 = " [1.450.54] #%04llx   !isMultipleOf2(region.origin.x=%d)";
        v27 = 18;
        goto LABEL_41;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_292;
      }

      *buf = 67109120;
      *v140 = v15.var0;
    }

    else
    {
      if (var0.var0 >= Width && var0.var1 >= Height)
      {
        if (!enableLogInstance)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_292;
          }

          *buf = 67109888;
          *v140 = var0.var0;
          *&v140[4] = 1024;
          *&v140[6] = Width;
          *v141 = 1024;
          *&v141[2] = var0.var1;
          *&v141[6] = 1024;
          v54 = Height;
LABEL_92:
          *&v141[8] = v54;
          v55 = MEMORY[0x277D86220];
          v56 = " [1.450.54]   region.origin.x=%d >= texWidth=%d && region.origin.y=%d >= texHeight=%d";
          v57 = 26;
LABEL_107:
          _os_log_impl(&dword_250836000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, v57);
          goto LABEL_201;
        }

        if (logInstanceID)
        {
          v31 = logInstanceID;
        }

        else
        {
          v31 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_200;
        }

        *buf = 134219008;
        *v140 = WORD1(v31);
        *&v140[8] = 1024;
        *v141 = var0.var0;
        *&v141[4] = 1024;
        *&v141[6] = Width;
        *&v141[10] = 1024;
        *&v141[12] = var0.var1;
        *&v141[16] = 1024;
        *v142 = Height;
        v32 = MEMORY[0x277D86220];
        v33 = " [1.450.54] #%04llx   region.origin.x=%d >= texWidth=%d && region.origin.y=%d >= texHeight=%d";
        v34 = 36;
        goto LABEL_199;
      }

      if ((var0.var0 & 1) == 0)
      {
        if (v15.var0 + v14.var0 <= v129 && v15.var1 + v14.var1 <= v124)
        {
          if (v14.var0)
          {
            if (!enableLogInstance)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_292;
              }

              *buf = 67109120;
              *v140 = v14.var0;
LABEL_273:
              v55 = MEMORY[0x277D86220];
              v56 = " [1.450.54]   !isMultipleOf2(region.size.width=%d)";
              goto LABEL_106;
            }

            if (logInstanceID)
            {
              v85 = logInstanceID;
            }

            else
            {
              v85 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *v140 = WORD1(v85);
              *&v140[8] = 1024;
              *v141 = v14.var0;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx   !isMultipleOf2(region.size.width=%d)", buf, 0x12u);
            }

            prevLogInstanceID = v85;
            goto LABEL_201;
          }

          if (var1.var0 + var0.var0 <= Width && var1.var1 + var0.var1 <= Height)
          {
            if ((var1.var0 & 1) == 0)
            {
              v117 = [(HDRBackwardDisplayManagement *)self inputIsSDRVideoFormat:a4];
LABEL_24:
              if (a7)
              {
                v28 = IOSurfaceGetWidth(a7);
                v29 = IOSurfaceGetHeight(a7);
                edrfactor = iosurface_get_edrfactor(a7);
              }

              else
              {
                v29 = 0;
                v28 = 0;
                edrfactor = 1.0;
              }

              self->_uiEDRFactor = edrfactor;
              self->_width = v129;
              self->_height = v124;
              if (a4)
              {
                v116 = [(HDRBackwardDisplayManagement *)self inputIsSDRVideoFormat:a4];
              }

              else
              {
                v116 = 0;
                self->_width = v28;
                self->_height = v29;
              }

              self->_targetWidth = Width;
              self->_targetHeight = Height;
              PlaneCount = IOSurfaceGetPlaneCount(a4);
              if (a4)
              {
                v36 = var1.var0 == v14.var0;
              }

              else
              {
                v36 = 1;
              }

              v38 = !v36 && PlaneCount == 3;
              v128 = [(HDRBackwardDisplayManagement *)self pixelNumPerThreadFullScreen:0 videoInput:a4 UI:a7 Output:a11 widthScaling:v38];
              if (a4)
              {
                v39 = a7;
              }

              else
              {
                v39 = 0;
              }

              if (a4)
              {
                v40 = a4;
              }

              else
              {
                v40 = a7;
              }

              v121 = v39;
              v122 = v40;
              if (v40)
              {
                v132 = IOSurfaceGetPlaneCount(v40) == 3;
              }

              else
              {
                v132 = 0;
              }

              if (!self->_metadataVertexBuffer)
              {
                [(HDRBackwardDisplayManagement *)self createMetadataVertexBuffer];
              }

              [(HDRBackwardDisplayManagement *)self generateMetaAndConfig:v126 inputSurface:v122 outputSurface:a11 payLoad:&v137 dmCfg:&v136];
              if (v136)
              {
                v41 = *(v136 + 224);
                v42 = v41 == 2;
                v120 = v41 == 3;
              }

              else
              {
                v42 = 0;
                v120 = 0;
              }

              outputPackingColorFormat = self->_outputPackingColorFormat;
              v119 = *(v136 + 280);
              v43 = self->_frameIndex % 3;
              v44 = (&self->super.isa + v43);
              objc_storeStrong(&self->_uniformBuffer, v44[343]);
              objc_storeStrong(&self->_vertsBuf, v44[348]);
              objc_storeStrong(&self->_inverseScalingFactorTableTexture, v44[325]);
              displayMaxBrightnessInNitsForSDR = self->_displayMaxBrightnessInNitsForSDR;
              v46 = [v126 valueForKey:@"SDRMaxBrightnessInNits"];
              LODWORD(v47) = 1120403456;
              if (v132)
              {
                *&v47 = 1.0;
              }

              v133 = v46;
              if (v46)
              {
                [v46 floatValue];
                hasDisplayBrightnessFromEDID = self->_hasDisplayBrightnessFromEDID;
                if (*&v47 > displayMaxBrightnessInNitsForSDR)
                {
                  ++_MergedGlobals_4;
                  *&v47 = displayMaxBrightnessInNitsForSDR;
                }

                if (*&v47 == 0.0 && hasDisplayBrightnessFromEDID)
                {
                  *&v47 = displayMaxBrightnessInNitsForSDR;
                }

                if (*&v47 <= 99)
                {
                  ++qword_280C71958;
                  *&v47 = displayMaxBrightnessInNitsForSDR;
                }

                *&v47 = *&v47 / displayMaxBrightnessInNitsForSDR;
              }

              v118 = outputPackingColorFormat - 1;
              *&v47 = *&v47 / self->_uiEDRFactor;
              [(HDRBackwardDisplayManagement *)self updateConfigFromMetadata:v136 uiScaleFactor:self->_targetWidth width:a10 background:v132 hdrVideoOnly:outputPackingColorFormat - 1 < 2 hdr10TV:!v132 sdrOnly:v47];
              [(HDRBackwardDisplayManagement *)self updateVertices:0 videoInput:v135 videoDstRegion:v122 videoSrcRegion:var0 uiInput:var1 uiDstRegion:v15 uiSrcRegion:v14 dstWidth:v121 dstHeight:*&a9.var0 videoSrcWidth:*&a9.var1 videoSrcHeight:*&a8.var0 index:*&a8.var1 scale:*&self->_targetWidth, __PAIR64__(v124, v129), __PAIR64__(v128, v43)];
              if (outputPackingColorFormat)
              {
                v52 = 1;
              }

              else
              {
                v52 = v132;
              }

              if (!v42 && !v120 || outputPackingColorFormat != 0) && (v52)
              {
                if (v118 <= 1)
                {
                  if (v132)
                  {
                    LODWORD(v50) = *(v136 + 236);
                    *&v49 = *(v136 + 232);
                  }

                  else
                  {
                    LODWORD(v50) = 5.0;
                    LODWORD(v49) = 1128792064;
                  }

                  LODWORD(v51) = 1.0;
                  [(HDRBackwardDisplayManagement *)self fillScalingTable_YUVTM:v136 targetwhite:1 targetblack:!v132 satBoost:v49 scalingFactor:v50 sdrOnly:v51];
                  v125 = 0;
                  v61 = v121 != 0;
                  v63 = 1;
                  goto LABEL_126;
                }

LABEL_110:
                [(HDRBackwardDisplayManagement *)self fillInverseScalingFactorTableFromDMConfig:v136, v49];
                v61 = v121 != 0;
                if (v121)
                {
                  v62 = v132;
                }

                else
                {
                  v62 = 0;
                }

                if (outputPackingColorFormat)
                {
                  v63 = 0;
                  v125 = 0;
                }

                else
                {
                  if (v132)
                  {
                    if (v138.var0)
                    {
                      v64 = 0;
                    }

                    else
                    {
                      v64 = v135 == *&v138.var1;
                    }

                    v65 = !v64;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  v66 = [(HDRBackwardDisplayManagement *)self adjustMetaData:v137 HDRUIBlending:v62 hasLetterbox:v65];
                  [(HDRBackwardDisplayManagement *)self packetizeMetadata:v137 length:v66 into:self->_frameIndex % 3 onSurface:a11];
                  v125 = v66;
                  v63 = 0;
                }

LABEL_126:
                v130 = [(HDRBackwardDisplayManagement *)self getTVIndex:v120, v62];
                if (v132)
                {
                  LOBYTE(v115) = v119 & 1;
                  [(HDRBackwardDisplayManagement *)self setupTexturesWithInput:v122 VideoSRGB:0 UI:v121 UISRGB:0 Output:a11 PixelPerThread:v128 ptvMode:v115];
                  v67 = [(HDRBackwardDisplayManagement *)self createRenderCommandEncoderWithCommandBuffer:v134 texture:self->_outputTexture widthScale:v128 loadAction:0];
                  v68 = v67;
                  if (v67)
                  {
                    [v67 setFragmentTexture:self->_inputTexture[0] atIndex:0];
                    [v68 setFragmentTexture:self->_inputTexture[1] atIndex:1];
                    [v68 setFragmentTexture:self->_inputTexture[2] atIndex:2];
                    v69 = 0;
                    v70 = 3;
                    v71 = v68;
LABEL_131:
                    [v71 setFragmentTexture:self->_pq2LTable atIndex:v70];
                    v73 = 2592;
                    if (v63)
                    {
                      v73 = 2640;
                    }

                    if (!v52)
                    {
                      v73 = 2632;
                    }

                    [v71 setFragmentTexture:*(&self->super.isa + v73) atIndex:v70 + 1];
                    [v71 setFragmentTexture:self->_l2PQTable atIndex:v70 + 2];
                    v74 = v70 + 3;
                    if (!v132)
                    {
                      [v71 setFragmentTexture:self->_inputTexture[0] atIndex:v74];
                      LODWORD(v74) = v70 | 4;
                    }

                    if (v61)
                    {
                      [v71 setFragmentTexture:self->_uiTexture atIndex:v74];
                    }

                    [v71 setFragmentBuffer:self->_uniformBuffer offset:0 atIndex:0];
                    [v71 setFragmentSamplerState:self->_inputSampler atIndex:0];
                    [v71 setVertexBuffer:self->_vertsBuf offset:0 atIndex:0];
                    num_Blend_Rects = self->_num_Blend_Rects;
                    if (self->_num_Blend_Rects[v43])
                    {
                      if (v132)
                      {
                        [(HDRBackwardDisplayManagement *)self updateUniformUIScaleForVideo:v116 forTV:v118 < 2 videoPeakBrightnessInNits:*(v136 + 240) uiHWDegamma:v69 dovi50toHDR10TVMode:*(v136 + 276)];
                        v76 = v130;
                        if (v128 == 1)
                        {
                          if (v119)
                          {
                            v77 = &self->_BKDM_3Plane_1Pixel_UIBlending_PTV[v130];
                          }

                          else
                          {
                            v83 = *(v136 + 276);
                            v84 = (&self->super.isa + v130);
                            if (v83 == 2)
                            {
                              v77 = v84 + 101;
                            }

                            else if (v83 == 1)
                            {
                              v77 = v84 + 113;
                            }

                            else
                            {
                              v77 = v84 + 89;
                            }
                          }
                        }

                        else
                        {
                          v81 = &self->super.isa + v130;
                          if (v119)
                          {
                            v77 = (v81 + 29);
                          }

                          else
                          {
                            v77 = (v81 + 163);
                          }
                        }
                      }

                      else
                      {
                        v76 = v130;
                        v80 = &self->super.isa + v130;
                        if (v117)
                        {
                          v77 = (v80 + 223);
                        }

                        else
                        {
                          v77 = (v80 + 235);
                        }
                      }

                      v89 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*v77];
                      [v71 setRenderPipelineState:v89];
                      if (num_Blend_Rects[v43] < 1)
                      {
                        LODWORD(v79) = 0;
                      }

                      else
                      {
                        v79 = 0;
                        v90 = 0;
                        do
                        {
                          [v71 drawPrimitives:4 vertexStart:v79 vertexCount:4];
                          v79 += 4;
                          ++v90;
                        }

                        while (v90 < num_Blend_Rects[v43]);
                      }
                    }

                    else
                    {
                      LODWORD(v79) = 0;
                      v76 = v130;
                    }

                    num_Video_Rects = self->_num_Video_Rects;
                    if (self->_num_Video_Rects[v43])
                    {
                      if (v132)
                      {
                        if (v128 == 1)
                        {
                          if (v119)
                          {
                            p_BKDM_3Plane_1Pixel_Video_HDR10 = &self->_BKDM_3Plane_1Pixel_PTV[v76];
                          }

                          else
                          {
                            v111 = *(v136 + 276);
                            if (v111 == 2)
                            {
                              p_BKDM_3Plane_1Pixel_Video_HDR10 = &self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_HLGOOTF[v76];
                            }

                            else if (v111 == 1)
                            {
                              p_BKDM_3Plane_1Pixel_Video_HDR10 = &self->_BKDM_3Plane_1Pixel_Video_Scaled_Inverse_YScale[v76];
                            }

                            else
                            {
                              p_BKDM_3Plane_1Pixel_Video_HDR10 = &self->_BKDM_3Plane_1Pixel_Video_Scaled[v76];
                              if (*(v136 + 281) == 1)
                              {
                                p_BKDM_3Plane_1Pixel_Video_HDR10 = &self->_BKDM_3Plane_1Pixel_Video_HDR10;
                              }
                            }
                          }
                        }

                        else
                        {
                          v95 = &self->super.isa + v76;
                          v96 = (v95 + 175);
                          p_BKDM_3Plane_1Pixel_Video_HDR10 = (v95 + 5);
                          if ((v119 & 1) == 0)
                          {
                            p_BKDM_3Plane_1Pixel_Video_HDR10 = v96;
                          }
                        }
                      }

                      else
                      {
                        v93 = &self->super.isa + v76;
                        v94 = (v93 + 187);
                        p_BKDM_3Plane_1Pixel_Video_HDR10 = (v93 + 199);
                        if (!v69)
                        {
                          p_BKDM_3Plane_1Pixel_Video_HDR10 = v94;
                        }

                        if (v117)
                        {
                          p_BKDM_3Plane_1Pixel_Video_HDR10 = &self->_BKDM_SDRVideoOnly[v76];
                        }
                      }

                      v97 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*p_BKDM_3Plane_1Pixel_Video_HDR10];
                      [v71 setRenderPipelineState:v97];
                      if (num_Video_Rects[v43] >= 1)
                      {
                        v98 = 0;
                        v79 = v79;
                        do
                        {
                          [v71 drawPrimitives:4 vertexStart:v79 vertexCount:4];
                          v79 += 4;
                          ++v98;
                        }

                        while (v98 < num_Video_Rects[v43]);
                      }
                    }

                    num_UI_Rects = self->_num_UI_Rects;
                    if (self->_num_UI_Rects[v43])
                    {
                      if (v132)
                      {
                        if (v128 == 1)
                        {
                          v100 = &self->super.isa + v76;
                          v101 = (v100 + 271);
                          v102 = (v100 + 283);
                          if (*(v136 + 276) != 1)
                          {
                            v102 = v101;
                          }
                        }

                        else
                        {
                          v102 = &self->_fillUI2ForHDR[v76];
                        }
                      }

                      else
                      {
                        v103 = &self->super.isa + v76;
                        if (a4 && a7)
                        {
                          v102 = (v103 + 295);
                        }

                        else
                        {
                          v102 = (v103 + 199);
                        }
                      }

                      v104 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*v102];
                      [v71 setRenderPipelineState:v104];
                      if (num_UI_Rects[v43] >= 1)
                      {
                        v105 = 0;
                        v79 = v79;
                        do
                        {
                          [v71 drawPrimitives:4 vertexStart:v79 vertexCount:4];
                          v79 += 4;
                          ++v105;
                        }

                        while (v105 < num_UI_Rects[v43]);
                      }
                    }

                    num_ColorFill_Rects = self->_num_ColorFill_Rects;
                    if (self->_num_ColorFill_Rects[v43])
                    {
                      v107 = 2072;
                      if (v128 == 1)
                      {
                        v107 = 1976;
                      }

                      v108 = [(HDRBackwardDisplayManagement *)self getRenderPipelineStateForShader:*(&self->super.isa + 8 * v76 + v107)];
                      [v71 setRenderPipelineState:v108];
                      if (num_ColorFill_Rects[v43] >= 1)
                      {
                        v109 = 0;
                        v110 = v79;
                        do
                        {
                          [v71 drawPrimitives:4 vertexStart:v110 vertexCount:4];
                          v110 += 4;
                          ++v109;
                        }

                        while (v109 < num_ColorFill_Rects[v43]);
                      }
                    }

                    [(HDRBackwardDisplayManagement *)self handleMetaInsertion:outputPackingColorFormat == 0 encoder:v71 widthScale:v128 payloadLength:v125];
                    [v71 endEncoding];

                    ++self->_frameIndex;
                    v22 = -17000;
                    goto LABEL_295;
                  }
                }

                else
                {
                  v69 = v121 == 0;
                  LOBYTE(v115) = 0;
                  [HDRBackwardDisplayManagement setupTexturesWithInput:"setupTexturesWithInput:VideoSRGB:UI:UISRGB:Output:PixelPerThread:ptvMode:" VideoSRGB:v122 UI:v69 UISRGB:v115 Output:? PixelPerThread:? ptvMode:?];
                  v72 = [(HDRBackwardDisplayManagement *)self createRenderCommandEncoderWithCommandBuffer:v134 texture:self->_outputTexture widthScale:v128 loadAction:0];
                  if (v72)
                  {
                    v70 = 0;
                    v71 = v72;
                    goto LABEL_131;
                  }
                }

                if (enableLogInstance)
                {
                  if (logInstanceID)
                  {
                    v78 = logInstanceID;
                  }

                  else
                  {
                    v78 = prevLogInstanceID;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218498;
                    *v140 = WORD1(v78);
                    *&v140[8] = 2080;
                    *v141 = "[HDRBackwardDisplayManagement encodeToCommandBuffer:video:videoSrcRegion:videoDstRegion:ui:uiSrcRegion:uiDstRegion:backgroundColor:output:frameProperties:]";
                    *&v141[8] = 2048;
                    *&v141[10] = 0;
                    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : encoder=%p, out of encoder resource", buf, 0x20u);
                  }

                  prevLogInstanceID = v78;
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *v140 = "[HDRBackwardDisplayManagement encodeToCommandBuffer:video:videoSrcRegion:videoDstRegion:ui:uiSrcRegion:uiDstRegion:backgroundColor:output:frameProperties:]";
                    *&v140[8] = 2048;
                    *v141 = 0;
                    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : encoder=%p, out of encoder resource", buf, 0x16u);
                  }
                }

                v22 = -17004;
                goto LABEL_295;
              }

              if (v42)
              {
                displayMaxBrightnessInNits = *(v136 + 232);
              }

              else
              {
                displayMaxBrightnessInNits = self->_displayMaxBrightnessInNits;
                if (!v120)
                {
                  displayMinBrightnessInNits = self->_displayMinBrightnessInNits;
                  v60 = self->_displayMaxBrightnessInNitsForSDR;
                  LODWORD(v49) = 1128792064;
                  LODWORD(v50) = 5.0;
                  [(HDRBackwardDisplayManagement *)self fillScalingTable_SDR2HDR:v136 target_White:v49 target_Black:v50];
                  v59 = v60;
                  goto LABEL_109;
                }
              }

              displayMinBrightnessInNits = *(v136 + 236);
              v59 = displayMaxBrightnessInNits;
LABEL_109:
              *&v49 = displayMaxBrightnessInNits;
              v49 = setTargitBrightnessInMetaData(v137, v49, displayMinBrightnessInNits, v59, displayMinBrightnessInNits);
              goto LABEL_110;
            }

            if (enableLogInstance)
            {
              if (logInstanceID)
              {
                v31 = logInstanceID;
              }

              else
              {
                v31 = prevLogInstanceID;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_200;
              }

              *buf = 134218240;
              *v140 = WORD1(v31);
              *&v140[8] = 1024;
              *v141 = var1.var0;
              v32 = MEMORY[0x277D86220];
              v33 = " [1.450.54] #%04llx   !isMultipleOf2(region.size.width=%d)";
              goto LABEL_164;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_292;
            }

            *buf = 67109120;
            *v140 = var1.var0;
            goto LABEL_273;
          }

          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v112 = logInstanceID;
            }

            else
            {
              v112 = prevLogInstanceID;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              *v140 = WORD1(v112);
              *&v140[8] = 1024;
              *v141 = var0.var0;
              *&v141[4] = 1024;
              *&v141[6] = var1.var0;
              *&v141[10] = 1024;
              *&v141[12] = Width;
              _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx   region.origin.x=%d + region.size.width=%d > texWidth=%d", buf, 0x1Eu);
            }

            prevLogInstanceID = v112;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_288;
            }

            *buf = 67109632;
            *v140 = var0.var0;
            *&v140[4] = 1024;
            *&v140[6] = var1.var0;
            *v141 = 1024;
            *&v141[2] = Width;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]   region.origin.x=%d + region.size.width=%d > texWidth=%d", buf, 0x14u);
          }

          if (enableLogInstance)
          {
            if (logInstanceID)
            {
              v31 = logInstanceID;
            }

            else
            {
              v31 = prevLogInstanceID;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_200;
            }

            *buf = 134218752;
            *v140 = WORD1(v31);
            *&v140[8] = 1024;
            *v141 = var0.var1;
            *&v141[4] = 1024;
            *&v141[6] = var1.var1;
            *&v141[10] = 1024;
            v86 = Height;
            goto LABEL_198;
          }

LABEL_288:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v140 = var0.var1;
            *&v140[4] = 1024;
            *&v140[6] = var1.var1;
            *v141 = 1024;
            v88 = Height;
            goto LABEL_210;
          }

          goto LABEL_201;
        }

        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v82 = logInstanceID;
          }

          else
          {
            v82 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            *v140 = WORD1(v82);
            *&v140[8] = 1024;
            *v141 = v15.var0;
            *&v141[4] = 1024;
            *&v141[6] = v14.var0;
            *&v141[10] = 1024;
            *&v141[12] = v129;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx   region.origin.x=%d + region.size.width=%d > texWidth=%d", buf, 0x1Eu);
          }

          prevLogInstanceID = v82;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_208;
          }

          *buf = 67109632;
          *v140 = v15.var0;
          *&v140[4] = 1024;
          *&v140[6] = v14.var0;
          *v141 = 1024;
          *&v141[2] = v129;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]   region.origin.x=%d + region.size.width=%d > texWidth=%d", buf, 0x14u);
        }

        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v31 = logInstanceID;
          }

          else
          {
            v31 = prevLogInstanceID;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_200;
          }

          *buf = 134218752;
          *v140 = WORD1(v31);
          *&v140[8] = 1024;
          *v141 = v23;
          *&v141[4] = 1024;
          *&v141[6] = v14.var1;
          *&v141[10] = 1024;
          v86 = v124;
LABEL_198:
          *&v141[12] = v86;
          v32 = MEMORY[0x277D86220];
          v33 = " [1.450.54] #%04llx   region.origin.y=%d + region.size.height=%d > texHeight=%d";
          v34 = 30;
          goto LABEL_199;
        }

LABEL_208:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v140 = v15.var1;
          *&v140[4] = 1024;
          *&v140[6] = v14.var1;
          *v141 = 1024;
          v88 = v124;
LABEL_210:
          *&v141[2] = v88;
          v55 = MEMORY[0x277D86220];
          v56 = " [1.450.54]   region.origin.y=%d + region.size.height=%d > texHeight=%d";
          v57 = 20;
          goto LABEL_107;
        }

LABEL_201:
        if (enableLogInstance)
        {
          if (logInstanceID)
          {
            v87 = logInstanceID;
          }

          else
          {
            v87 = prevLogInstanceID;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134219008;
            *v140 = WORD1(v87);
            *&v140[8] = 1024;
            *v141 = v129;
            *&v141[4] = 1024;
            *&v141[6] = v124;
            *&v141[10] = 1024;
            *&v141[12] = Width;
            *&v141[16] = 1024;
            *v142 = Height;
            _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx   videoSrcWidth=%d, videoSrcHeight=%d, dstWidth=%d, dstHeight=%d", buf, 0x24u);
          }

          prevLogInstanceID = v87;
LABEL_294:
          v22 = -17006;
LABEL_295:
          v20 = v126;
          goto LABEL_296;
        }

LABEL_292:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *v140 = v129;
          *&v140[4] = 1024;
          *&v140[6] = v124;
          *v141 = 1024;
          *&v141[2] = Width;
          *&v141[6] = 1024;
          *&v141[8] = Height;
          _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]   videoSrcWidth=%d, videoSrcHeight=%d, dstWidth=%d, dstHeight=%d", buf, 0x1Au);
        }

        goto LABEL_294;
      }

      if (enableLogInstance)
      {
        if (logInstanceID)
        {
          v31 = logInstanceID;
        }

        else
        {
          v31 = prevLogInstanceID;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_200;
        }

        *buf = 134218240;
        *v140 = WORD1(v31);
        *&v140[8] = 1024;
        *v141 = var0.var0;
        v32 = MEMORY[0x277D86220];
        v33 = " [1.450.54] #%04llx   !isMultipleOf2(region.origin.x=%d)";
LABEL_164:
        v34 = 18;
LABEL_199:
        _os_log_impl(&dword_250836000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
LABEL_200:
        prevLogInstanceID = v31;
        goto LABEL_201;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_292;
      }

      *buf = 67109120;
      *v140 = var0.var0;
    }

    v55 = MEMORY[0x277D86220];
    v56 = " [1.450.54]   !isMultipleOf2(region.origin.x=%d)";
LABEL_106:
    v57 = 8;
    goto LABEL_107;
  }

  if (enableLogInstance)
  {
    if (logInstanceID)
    {
      v21 = logInstanceID;
    }

    else
    {
      v21 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      *v140 = WORD1(v21);
      *&v140[8] = 2048;
      *v141 = v18;
      *&v141[8] = 2048;
      *&v141[10] = a11;
      *v142 = 2048;
      *&v142[2] = a4;
      v143 = 2048;
      v144 = a7;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx   commanBuffer=%p, output=%p, input=%p ui=%p", buf, 0x34u);
    }

    prevLogInstanceID = v21;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *v140 = v18;
    *&v140[8] = 2048;
    *v141 = a11;
    *&v141[8] = 2048;
    *&v141[10] = a4;
    *v142 = 2048;
    *&v142[2] = a7;
    _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54]   commanBuffer=%p, output=%p, input=%p ui=%p", buf, 0x2Au);
  }

  v22 = -17006;
LABEL_296:

  v113 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int)pixelNumPerThreadFullScreen:(BOOL)a3 videoInput:(__IOSurface *)a4 UI:(__IOSurface *)a5 Output:(__IOSurface *)a6 widthScaling:(BOOL)a7
{
  if (!a3)
  {
    return 1;
  }

  v9 = 1;
  if (self->_width == self->_targetWidth)
  {
    if (self->_height == self->_targetHeight)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  PlaneCount = IOSurfaceGetPlaneCount(a4);
  if (a4)
  {
    v11 = a5 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && PlaneCount == 3)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

- (BOOL)inputIsSDRVideoFormat:(__IOSurface *)a3
{
  PixelFormat = IOSurfaceGetPixelFormat(a3);
  v4 = vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(PixelFormat), xmmword_2508CE640))) | ((PixelFormat & 0xFFFFFFFD) == 1882468912);
  v6 = (PixelFormat & 0xFFFFFFFD) == 0x70663230 || (PixelFormat & 0xFFFFFDEF) == 875704422;
  return (v4 | v6) & 1;
}

- (unint64_t)getPixelFormatFromSurface:(__IOSurface *)a3 DeGamma:(BOOL)a4 forceUseOnePlane:(BOOL)a5 default:(unint64_t)a6
{
  v7 = a5;
  PixelFormat = IOSurfaceGetPixelFormat(a3);
  if (a4)
  {
    if (PixelFormat > 1882468913)
    {
      if (PixelFormat <= 2016686639)
      {
        if (PixelFormat > 1885745713)
        {
          if (PixelFormat != 1885745714)
          {
            if (PixelFormat == 1999843442)
            {
              return 555;
            }

            return a6;
          }

          return 509;
        }

        goto LABEL_11;
      }

LABEL_13:
      if (PixelFormat > 2019963439)
      {
        if (PixelFormat != 2019963440)
        {
          v11 = 2019963442;
LABEL_32:
          if (PixelFormat == v11)
          {
            return 506;
          }

          return a6;
        }
      }

      else if (PixelFormat != 2016686640)
      {
        v11 = 2016686642;
        goto LABEL_32;
      }

      return 505;
    }

    if (PixelFormat > 875704949)
    {
      if (PixelFormat <= 1647534391)
      {
        if (PixelFormat != 875704950)
        {
          if (PixelFormat == 1111970369)
          {
            return 81;
          }

          return a6;
        }

        return 502;
      }

      if (PixelFormat == 1647534392)
      {
        v12 = !v7;
        v13 = 551;
        v14 = 555;
        goto LABEL_47;
      }

      goto LABEL_39;
    }

LABEL_26:
    if (PixelFormat == 875704422 || PixelFormat == 875704438)
    {
      return 500;
    }

    if (PixelFormat == 875704934)
    {
      return 502;
    }

    return a6;
  }

  if (PixelFormat > 1882468913)
  {
    if (PixelFormat > 2016686639)
    {
      goto LABEL_13;
    }

    if (PixelFormat <= 1885745713)
    {
LABEL_11:
      if (PixelFormat == 1882468914)
      {
        return 509;
      }

      v10 = 1885745712;
      goto LABEL_40;
    }

    if (PixelFormat == 1885745714)
    {
      return 509;
    }

    if (PixelFormat == 1999843442)
    {
      return 554;
    }

    return a6;
  }

  if (PixelFormat <= 875704949)
  {
    goto LABEL_26;
  }

  if (PixelFormat > 1647534391)
  {
    if (PixelFormat == 1647534392)
    {
      v12 = !v7;
      v13 = 550;
      v14 = 554;
LABEL_47:
      if (v12)
      {
        return v13;
      }

      else
      {
        return v14;
      }
    }

LABEL_39:
    v10 = 1882468912;
LABEL_40:
    if (PixelFormat == v10)
    {
      return 508;
    }

    return a6;
  }

  if (PixelFormat == 875704950)
  {
    return 502;
  }

  if (PixelFormat == 1111970369)
  {
    return 80;
  }

  return a6;
}

- (void)setupMetadataTextureWithOutput:(__IOSurface *)a3
{
  v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:53 width:self->_targetWidth height:self->_targetHeight mipmapped:0];
  [v7 setUsage:4];
  v5 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v7 iosurface:a3 plane:0];
  outputTextureMetadata = self->_outputTextureMetadata;
  self->_outputTextureMetadata = v5;
}

- (id)createRenderCommandEncoderWithCommandBuffer:(id)a3 texture:(id)a4 widthScale:(unsigned int)a5 loadAction:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v13 = [v12 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript:0];
  [v14 setTexture:v11];

  v15 = [v12 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript:0];
  [v16 setLoadAction:a6];

  v17 = [v12 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 setStoreAction:1];

  v19 = [v10 renderCommandEncoderWithDescriptor:v12];
  v20 = v19;
  if (v19)
  {
    v23 = 0;
    v21 = self->_targetWidth / a5;
    targetHeight = self->_targetHeight;
    v25 = v21;
    v26 = -targetHeight;
    v27 = xmmword_2508CE650;
    [v19 setViewport:&v23];
  }

  return v20;
}

- (void)attatchInfoFrame:(id *)a3 toOutputSurface:(__IOSurface *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v9.var8 = unk_2508CE738;
  if (a3->var18.var2 && a3->var19.var0)
  {
    v9 = a3->var18;
LABEL_7:
    var19 = a3->var19;
    goto LABEL_10;
  }

  if (a3->var18.var9 && a3->var19.var0)
  {
    *&v9.var8 = *&a3->var18.var8;
    goto LABEL_7;
  }

  var14 = a3->var14;
  if (var14 >= 0x3E8)
  {
    v9.var8 = 10000 * var14;
    v9.var9 = (a3->var15 * 10000.0);
  }

LABEL_10:
  if (a3->var20 && v9.var8 >= 10000 * a3->var14)
  {
    v6 = 10000 * a3->var14;
  }

  if (IOSurfaceSetBulkAttachments2())
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v7 = logInstanceID;
      }

      else
      {
        v7 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = WORD1(v7);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: retVal == 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 4500\n", buf, 0xCu);
      }

      prevLogInstanceID = v7;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: retVal == 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 4500\n", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end