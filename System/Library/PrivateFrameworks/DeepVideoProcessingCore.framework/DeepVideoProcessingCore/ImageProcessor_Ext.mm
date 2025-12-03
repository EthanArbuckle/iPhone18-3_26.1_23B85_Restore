@interface ImageProcessor_Ext
- (BOOL)allocateNormalizedBuffers;
- (BOOL)shouldScaleBuffer:(__CVBuffer *)buffer;
- (ImageProcessor_Ext)initWithUsage:(int64_t)usage device:(id)device commandQueue:(id)queue opticalFlowModeOnly:(BOOL)only;
- (int64_t)allocateRGBABuffersForBuffer:(__CVBuffer *)buffer;
- (int64_t)getPixelAttributesForBuffer:(__CVBuffer *)buffer;
- (int64_t)mapInternalBufferWithTexture;
- (int64_t)preProcessFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput waitForCompletion:(BOOL)completion;
- (int64_t)preserveCMAttachmentFirstFrame:(id)frame secondFrame:(id)secondFrame;
- (int64_t)restoreCMAttachmentToFirstFrame:(id)frame secondFrame:(id)secondFrame synthesizedFrame:(__CVBuffer *)synthesizedFrame;
- (void)dealloc;
@end

@implementation ImageProcessor_Ext

- (void)dealloc
{
  if (self->_rgbaBuffersAllocated)
  {
    CVPixelBufferRelease(self->_rgbaFirst);
    CVPixelBufferRelease(self->_rgbaSecond);
    self->_rgbaBuffersAllocated = 0;
  }

  if (!self->_opticalFlowOnlyMode || self->_useHomography)
  {
    normalization = self->_normalization;
    self->_normalization = 0;

    CVPixelBufferRelease(self->_unifiedRGB);
    if (self->_pseudoDepth || self->_useHomography)
    {
      CVPixelBufferRelease(self->_rgbaDownscaleFirst);
      CVPixelBufferRelease(self->_rgbaDownscaleSecond);
      CVPixelBufferRelease(self->_packedDownscaledFirstRGB);
      CVPixelBufferRelease(self->_packedDownscaledSecondRGB);
    }

    unifiedRGBTexture = self->_unifiedRGBTexture;
    self->_unifiedRGBTexture = 0;

    packedDownscaledFirstRGBTexture = self->_packedDownscaledFirstRGBTexture;
    self->_packedDownscaledFirstRGBTexture = 0;

    packedDownscaledSecondRGBTexture = self->_packedDownscaledSecondRGBTexture;
    self->_packedDownscaledSecondRGBTexture = 0;

    rgbaDownscaleFirstTexture = self->_rgbaDownscaleFirstTexture;
    self->_rgbaDownscaleFirstTexture = 0;

    rgbaDownscaleSecondTexture = self->_rgbaDownscaleSecondTexture;
    self->_rgbaDownscaleSecondTexture = 0;

    rgbaFirstTexture = self->_rgbaFirstTexture;
    self->_rgbaFirstTexture = 0;

    rgbaSecondTexture = self->_rgbaSecondTexture;
    self->_rgbaSecondTexture = 0;
  }

  v11.receiver = self;
  v11.super_class = ImageProcessor_Ext;
  [(ImageProcessor_Ext *)&v11 dealloc];
}

- (BOOL)allocateNormalizedBuffers
{
  v4 = 0;
  v5 = 0;
  getAlignedInputFrameSizeForUsage(self->_usage, &v5, &v4);
  self->_unifiedRGB = CreatePixelBuffer(v5, v4, 1380411457);
  return 1;
}

- (BOOL)shouldScaleBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  v9 = Width;
  Height = CVPixelBufferGetHeight(buffer);
  v8 = Height;
  if (CVPixelBufferGetPixelFormatType(buffer) == 1278226536)
  {
    Height /= 3uLL;
    v8 = Height;
  }

  if (Width < Height)
  {
    swapWidthAndHeight(&v9, &v8);
    Width = v9;
  }

  return self->_width < Width || self->_height < v8;
}

- (ImageProcessor_Ext)initWithUsage:(int64_t)usage device:(id)device commandQueue:(id)queue opticalFlowModeOnly:(BOOL)only
{
  deviceCopy = device;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = ImageProcessor_Ext;
  v13 = [(ImageProcessor_Ext *)&v25 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  if (deviceCopy && queueCopy)
  {
    objc_storeStrong(&v13->_device, device);
    newCommandQueue = queueCopy;
  }

  else
  {
    v16 = MTLCreateSystemDefaultDevice();
    device = v14->_device;
    v14->_device = v16;

    newCommandQueue = [(MTLDevice *)v14->_device newCommandQueue];
  }

  commandQueue = v14->_commandQueue;
  v14->_commandQueue = newCommandQueue;

  if (!v14->_device)
  {
    goto LABEL_15;
  }

  if (!v14->_commandQueue)
  {
    goto LABEL_15;
  }

  v14->_usage = usage;
  v14->_opticalFlowOnlyMode = only;
  v14->_firstRotation = 0;
  v14->_secondRotation = 0;
  v14->_RGBAFormat = 1111970369;
  getInputFrameSizeForUsage(usage, &v14->_width, &v14->_height);
  v19 = objc_alloc_init(VEScaler);
  scaler = v14->_scaler;
  v14->_scaler = v19;

  if (!v14->_scaler)
  {
    goto LABEL_15;
  }

  v21 = objc_alloc_init(Normalization_Ext);
  normalization = v14->_normalization;
  v14->_normalization = v21;

  if (!v14->_normalization)
  {
    goto LABEL_15;
  }

  if (!v14->_opticalFlowOnlyMode)
  {
    if ([(ImageProcessor_Ext *)v14 allocateNormalizedBuffers])
    {
      v14->_metalTextureMapped = 0;
      goto LABEL_13;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v23 = v14;
LABEL_14:

  return v23;
}

- (int64_t)getPixelAttributesForBuffer:(__CVBuffer *)buffer
{
  if (!buffer)
  {
    return 9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v6 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  if (v6)
  {
    v7 = *MEMORY[0x277CC4EF8];
    v8 = v6;
    v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:v7];
    self->_isFullRange = [v9 isEqualToString:*MEMORY[0x277CC4F00]];
    v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
    self->_bitDepth = [v10 intValue];

    v11 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
    self->_isYUV = [v11 BOOLValue];

    v12 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
    bOOLValue = [v12 BOOLValue];

    CFRelease(v8);
    if (self->_isYUV)
    {
      if (self->_bitDepth == 10)
      {
        v14 = 1999843442;
      }

      else
      {
        v14 = 1111970369;
      }
    }

    else
    {
      if (!bOOLValue)
      {
LABEL_10:

        return 0;
      }

      v14 = CVPixelBufferGetPixelFormatType(buffer);
    }

    self->_RGBAFormat = v14;
    goto LABEL_10;
  }

  return 9;
}

- (int64_t)preserveCMAttachmentFirstFrame:(id)frame secondFrame:(id)secondFrame
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  v8 = secondFrameCopy;
  v9 = 12;
  if (frameCopy && secondFrameCopy)
  {
    v10 = CMCopyDictionaryOfAttachments(0, [frameCopy buffer], 1u);
    self->_anchorFrameCMAttachment = v10;
    if (v10)
    {
      if (self->_isFullRange)
      {
        CMRemoveAllAttachments([frameCopy buffer]);
        CMRemoveAllAttachments([v8 buffer]);
      }

      v9 = 0;
    }

    else
    {
      v9 = 9;
    }
  }

  return v9;
}

- (int64_t)restoreCMAttachmentToFirstFrame:(id)frame secondFrame:(id)secondFrame synthesizedFrame:(__CVBuffer *)synthesizedFrame
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  v10 = secondFrameCopy;
  v11 = 12;
  if (frameCopy && secondFrameCopy)
  {
    if (self->_isFullRange)
    {
      CMSetAttachments([frameCopy buffer], self->_anchorFrameCMAttachment, 1u);
      CMSetAttachments([v10 buffer], self->_anchorFrameCMAttachment, 1u);
      if (synthesizedFrame)
      {
        CMSetAttachments(synthesizedFrame, self->_anchorFrameCMAttachment, 1u);
      }
    }

    CFRelease(self->_anchorFrameCMAttachment);
    v11 = 0;
  }

  return v11;
}

- (int64_t)allocateRGBABuffersForBuffer:(__CVBuffer *)buffer
{
  if (!buffer)
  {
    return 9;
  }

  Width = CVPixelBufferGetWidth(buffer);
  v30 = Width;
  Height = CVPixelBufferGetHeight(buffer);
  v29 = Height;
  if (self->_inputScaling)
  {
    Width >>= 1;
    Height >>= 1;
    v29 = Height;
    v30 = Width;
  }

  if ((Width & 3) != 0)
  {
    Width = (Width & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v30 = Width;
  }

  if ((Height & 3) != 0)
  {
    Height = (Height & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v29 = Height;
  }

  if (Width < Height)
  {
    Height = swapWidthAndHeight(&v30, &v29);
  }

  if (!self->_rgbaFirst)
  {
    Height = CreatePixelBuffer(v30, v29, self->_RGBAFormat);
    self->_rgbaFirst = Height;
    if (!Height)
    {
      return 9;
    }
  }

  if (!self->_rgbaSecond)
  {
    Height = CreatePixelBuffer(v30, v29, self->_RGBAFormat);
    self->_rgbaSecond = Height;
    if (!Height)
    {
      return 9;
    }
  }

  self->_rgbaBuffersAllocated = 1;
  if (self->_opticalFlowOnlyMode)
  {
    OUTLINED_FUNCTION_2_1();
    if (!v14)
    {
      return 0;
    }
  }

  if (!self->_pseudoDepth)
  {
    OUTLINED_FUNCTION_2_1();
    if (!v14)
    {
      return 0;
    }
  }

  v15 = OUTLINED_FUNCTION_1_5(Height, v7, v8, v9, v10, v11, v12, v13, v27, v28, v29, v30);
  self->_rgbaDownscaleFirst = v15;
  if (!v15)
  {
    return 9;
  }

  v23 = OUTLINED_FUNCTION_1_5(v15, v16, v17, v18, v19, v20, v21, v22, v27, v28, v29, v30);
  self->_rgbaDownscaleSecond = v23;
  if (!v23)
  {
    return 9;
  }

  v27 = 0;
  v28 = 0;
  getAlignedInputFrameSizeForUsage(self->_usage, &v28, &v27);
  v24 = OUTLINED_FUNCTION_0_4(v28 >> 2, v27);
  self->_packedDownscaledFirstRGB = v24;
  if (!v24)
  {
    return 9;
  }

  v25 = OUTLINED_FUNCTION_0_4(v28 >> 2, v27);
  self->_packedDownscaledSecondRGB = v25;
  if (v25)
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (int64_t)mapInternalBufferWithTexture
{
  v3 = checkTextureBoundBuffer(self->_rgbaFirstTexture, self->_rgbaFirst);
  v4 = !self->_metalTextureMapped || !v3;
  if (v4)
  {
    self->_metalTextureMapped = 0;
  }

  else
  {
    rgbaInternalGenerated = self->_rgbaInternalGenerated;
    self->_metalTextureMapped = rgbaInternalGenerated;
    if (rgbaInternalGenerated)
    {
      goto LABEL_14;
    }
  }

  v6 = isPackedRGBA(self->_rgbaFirst);
  rgbaFirstTexture = self->_rgbaFirstTexture;
  self->_rgbaFirstTexture = 0;

  rgbaSecondTexture = self->_rgbaSecondTexture;
  self->_rgbaSecondTexture = 0;

  if (v6)
  {
    v9 = createRGBATextureFromCVPixelBuffer(self->_rgbaFirst, self->_device);
    v10 = self->_rgbaFirstTexture;
    self->_rgbaFirstTexture = v9;

    if (!self->_rgbaFirstTexture)
    {
      return 9;
    }

    v11 = createRGBATextureFromCVPixelBuffer(self->_rgbaSecond, self->_device);
  }

  else
  {
    OUTLINED_FUNCTION_3_1();
    v16 = createTexturesFromCVPixelBuffer(v12, v13, v14, v15);
    v17 = self->_rgbaFirstTexture;
    self->_rgbaFirstTexture = v16;

    if (!self->_rgbaFirstTexture)
    {
      return 9;
    }

    OUTLINED_FUNCTION_3_1();
    v11 = createTexturesFromCVPixelBuffer(v18, v19, v20, v21);
  }

  v22 = self->_rgbaSecondTexture;
  self->_rgbaSecondTexture = v11;

  if (!self->_rgbaSecondTexture)
  {
    return 9;
  }

LABEL_14:
  if (!self->_pseudoDepth)
  {
    OUTLINED_FUNCTION_2_1();
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v23 = createTexturesFromCVPixelBuffer(self->_packedDownscaledFirstRGB, self->_device, 4, 1uLL);
  packedDownscaledFirstRGBTexture = self->_packedDownscaledFirstRGBTexture;
  self->_packedDownscaledFirstRGBTexture = v23;

  if (self->_packedDownscaledFirstRGBTexture)
  {
    v25 = createTexturesFromCVPixelBuffer(self->_packedDownscaledSecondRGB, self->_device, 4, 1uLL);
    packedDownscaledSecondRGBTexture = self->_packedDownscaledSecondRGBTexture;
    self->_packedDownscaledSecondRGBTexture = v25;

    if (self->_packedDownscaledSecondRGBTexture)
    {
      if (isPackedRGBA(self->_rgbaDownscaleFirst))
      {
        v27 = createRGBATextureFromCVPixelBuffer(self->_rgbaDownscaleFirst, self->_device);
        rgbaDownscaleFirstTexture = self->_rgbaDownscaleFirstTexture;
        self->_rgbaDownscaleFirstTexture = v27;

        if (!self->_rgbaDownscaleFirstTexture)
        {
          return 9;
        }

        v29 = createRGBATextureFromCVPixelBuffer(self->_rgbaDownscaleSecond, self->_device);
      }

      else
      {
        OUTLINED_FUNCTION_3_1();
        v34 = createTexturesFromCVPixelBuffer(v30, v31, v32, v33);
        v35 = self->_rgbaDownscaleFirstTexture;
        self->_rgbaDownscaleFirstTexture = v34;

        if (!self->_rgbaDownscaleSecondTexture)
        {
          return 9;
        }

        OUTLINED_FUNCTION_3_1();
        v29 = createTexturesFromCVPixelBuffer(v36, v37, v38, v39);
      }

      rgbaDownscaleSecondTexture = self->_rgbaDownscaleSecondTexture;
      self->_rgbaDownscaleSecondTexture = v29;

      if (self->_rgbaDownscaleSecondTexture)
      {
LABEL_25:
        v41 = createTexturesFromCVPixelBuffer(self->_unifiedRGB, self->_device, 4, 1uLL);
        unifiedRGBTexture = self->_unifiedRGBTexture;
        self->_unifiedRGBTexture = v41;

        result = 0;
        self->_metalTextureMapped = 1;
        return result;
      }
    }
  }

  return 9;
}

- (int64_t)preProcessFirstInput:(__CVBuffer *)input secondInput:(__CVBuffer *)secondInput waitForCompletion:(BOOL)completion
{
  v5 = 12;
  if (!input || !secondInput)
  {
    return v5;
  }

  completionCopy = completion;
  self->_isYUV = isBufferYUV(input);
  v10 = [(ImageProcessor_Ext *)self shouldScaleBuffer:input];
  self->_inputScaling = v10;
  if (self->_isYUV || self->_firstRotation || self->_secondRotation != 0 || v10)
  {
    if (!self->_rgbaBuffersAllocated)
    {
      mapInternalBufferWithTexture = [(ImageProcessor_Ext *)self allocateRGBABuffersForBuffer:input];
      if (mapInternalBufferWithTexture)
      {
        return mapInternalBufferWithTexture;
      }
    }

    [(VEScaler *)self->_scaler downScaleFrameSource:input destination:self->_rgbaFirst rotate:self->_firstRotation waitForCompletion:completionCopy];
    [(VEScaler *)self->_scaler downScaleFrameSource:secondInput destination:self->_rgbaSecond rotate:self->_secondRotation waitForCompletion:completionCopy];
    v12 = 1;
  }

  else
  {
    v12 = 0;
    self->_rgbaFirst = input;
    self->_rgbaSecond = secondInput;
  }

  self->_rgbaInternalGenerated = v12;
  if (self->_opticalFlowOnlyMode)
  {
    OUTLINED_FUNCTION_2_1();
    if (!v13)
    {
      return 0;
    }
  }

  if (self->_pseudoDepth || (OUTLINED_FUNCTION_2_1(), v13))
  {
    rgbaDownscaleFirst = self->_rgbaDownscaleFirst;
    if (!rgbaDownscaleFirst || !self->_rgbaDownscaleSecond)
    {
      v15 = (CVPixelBufferGetWidth(self->_rgbaFirst) + 3) >> 2;
      v16 = (CVPixelBufferGetHeight(self->_rgbaFirst) + 3) >> 2;
      PixelBuffer = CreatePixelBuffer(v15, v16, self->_RGBAFormat);
      self->_rgbaDownscaleFirst = PixelBuffer;
      if (!PixelBuffer)
      {
        return 9;
      }

      v18 = CreatePixelBuffer(v15, v16, self->_RGBAFormat);
      self->_rgbaDownscaleSecond = v18;
      if (!v18)
      {
        return 9;
      }

      v25[0] = 0;
      v26 = 0;
      getAlignedInputFrameSizeForUsage(self->_usage, v25, &v26);
      v19 = OUTLINED_FUNCTION_0_4(v25[0] >> 2, v26);
      self->_packedDownscaledFirstRGB = v19;
      if (!v19)
      {
        return 9;
      }

      v20 = OUTLINED_FUNCTION_0_4(v25[0] >> 2, v26);
      self->_packedDownscaledSecondRGB = v20;
      if (!v20)
      {
        return 9;
      }

      rgbaDownscaleFirst = self->_rgbaDownscaleFirst;
    }

    [(VEScaler *)self->_scaler downScaleFrameSource:input destination:rgbaDownscaleFirst rotate:self->_firstRotation waitForCompletion:completionCopy];
    [(VEScaler *)self->_scaler downScaleFrameSource:secondInput destination:self->_rgbaDownscaleSecond rotate:self->_secondRotation waitForCompletion:completionCopy];
  }

  mapInternalBufferWithTexture = [(ImageProcessor_Ext *)self mapInternalBufferWithTexture];
  if (mapInternalBufferWithTexture)
  {
    return mapInternalBufferWithTexture;
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (self->_opticalFlowOnlyMode)
  {
    goto LABEL_30;
  }

  v22 = 144;
  if (self->_pseudoDepth)
  {
    v22 = 136;
  }

  v23 = [(Normalization_Ext *)self->_normalization rescaleFrameRangeToCommandBuffer:commandBuffer input:*(&self->super.isa + v22) output:self->_unifiedRGBTexture];
  if (v23)
  {
    v5 = v23;
  }

  else
  {
LABEL_30:
    if (self->_pseudoDepth || (OUTLINED_FUNCTION_2_1(), v13))
    {
      [(Normalization_Ext *)self->_normalization normalizeFramesFirstInput:self->_rgbaDownscaleFirstTexture secondInput:self->_rgbaDownscaleSecondTexture packedFirst:self->_packedDownscaledFirstRGBTexture packedSecond:self->_packedDownscaledSecondRGBTexture commandBuffer:commandBuffer];
    }

    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
    v5 = 0;
  }

  return v5;
}

@end