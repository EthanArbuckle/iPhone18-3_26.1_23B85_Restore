@interface VCPModelR2D2
- (id).cxx_construct;
- (int)allocateCorreleationBuffer:(__CVBuffer *)buffer forLevel:(unsigned int)level;
- (int)allocateFeatures;
- (int)allocateInputAndOutputBuffers;
- (int)allocateStorages;
- (int)analyzeImages:(__CVBuffer *)images secondImage:(__CVBuffer *)image cancel:(id)cancel;
- (int)configForAspectRatio:(id)ratio;
- (int)copyImage:(__CVBuffer *)image toBuffer:(__CVBuffer *)buffer withChannels:(int)channels;
- (int)createInput:(__CVBuffer *)input withImage:(__CVBuffer *)image modelInputHeight:(int)height modelInputWidth:(int)width;
- (int)createModules:(id)modules;
- (int)estimateFlowForLevel:(int)level upperFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow;
- (int)estimateMotionFlow:(__CVBuffer *)flow;
- (int)extractFeatureFromImage:(__CVBuffer *)image toFeature:(id *)feature;
- (int)extractFeaturesFromFirst:(__CVBuffer *)first andSecond:(__CVBuffer *)second;
- (int)flowScalingTo:(__CVBuffer *)to flowBufferY:(__CVBuffer *)y scalerX:(float)x scalerY:(float)scalerY;
- (int)flowScalingTo:(__CVBuffer *)to scalerX:(float)x scalerY:(float)y;
- (int)getFlowToBuffer:(__CVBuffer *)buffer;
- (int)prepareWithLightweightOption:(BOOL)option aspectRatio:(id)ratio numLevels:(int)levels startLevel:(int)level cancel:(id)cancel;
- (int)releaseInputAndOutputBuffers;
- (int)updateModelForAspectRatio:(id)ratio computationAccuracy:(unsigned int)accuracy;
- (int)updateModulesWithConfig:(id)config;
- (void)dealloc;
- (void)releaseFeatureBuffers;
- (void)releaseMemory;
- (void)releaseStorages;
@end

@implementation VCPModelR2D2

- (int)prepareWithLightweightOption:(BOOL)option aspectRatio:(id)ratio numLevels:(int)levels startLevel:(int)level cancel:(id)cancel
{
  optionCopy = option;
  ratioCopy = ratio;
  cancelCopy = cancel;
  resConfig = self->_resConfig;
  self->_resConfig = @"landscape_1024x432";

  self->super._cnnInputWidth = 1024;
  self->super._cnnInputHeight = 432;
  if (optionCopy)
  {
    v15 = self->_resConfig;
    self->_resConfig = @"square_320x320";

    self->super._cnnInputWidth = 320;
    self->super._cnnInputHeight = 320;
  }

  else if (ratioCopy)
  {
    allocateInputAndOutputBuffers = [(VCPModelR2D2 *)self configForAspectRatio:ratioCopy];
    if (allocateInputAndOutputBuffers)
    {
      goto LABEL_7;
    }
  }

  self->_numLevels = levels;
  self->_startLevel = level;
  allocateInputAndOutputBuffers = [(VCPModelR2D2 *)self createModules:cancelCopy];
  if (!allocateInputAndOutputBuffers)
  {
    v17 = dispatch_semaphore_create(0);
    flowDecoderSemaphore = self->_flowDecoderSemaphore;
    self->_flowDecoderSemaphore = v17;

    allocateInputAndOutputBuffers = [(VCPModelR2D2 *)self allocateInputAndOutputBuffers];
  }

LABEL_7:

  return allocateInputAndOutputBuffers;
}

- (int)allocateInputAndOutputBuffers
{
  self->super._cnnOutputWidth = self->super._cnnInputWidth / 4;
  self->super._cnnOutputHeight = self->super._cnnInputHeight / 4;
  self->_firstBuffer = VCPFlowCreatePixelBuffer(self->super._cnnInputWidth, 3 * self->super._cnnInputHeight, 0x4C303068u, 32);
  self->_secondBuffer = VCPFlowCreatePixelBuffer(self->super._cnnInputWidth, 3 * self->super._cnnInputHeight, 0x4C303068u, 32);
  PixelBuffer = VCPFlowCreatePixelBuffer(self->super._cnnOutputWidth, 2 * self->super._cnnOutputHeight, 0x4C303068u, 32);
  self->_outputFlow = PixelBuffer;
  result = -108;
  if (self->_firstBuffer)
  {
    if (PixelBuffer)
    {
      v5 = self->_secondBuffer == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return -108;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int)releaseInputAndOutputBuffers
{
  firstBuffer = self->_firstBuffer;
  if (firstBuffer)
  {
    CFRelease(firstBuffer);
  }

  secondBuffer = self->_secondBuffer;
  if (secondBuffer)
  {
    CFRelease(secondBuffer);
  }

  outputFlow = self->_outputFlow;
  if (outputFlow)
  {
    CFRelease(outputFlow);
  }

  return 0;
}

- (int)configForAspectRatio:(id)ratio
{
  ratioCopy = ratio;
  v5 = ratioCopy;
  if (ratioCopy)
  {
    [ratioCopy floatValue];
    if (v6 <= 1.16)
    {
      [v5 floatValue];
      v13 = v12;
      computationAccuracy = self->super._computationAccuracy;
      v10 = off_1E834D9E0;
      if (v13 >= 0.86206899)
      {
        v10 = off_1E834DA00;
      }

      v9 = &unk_1C9F61050;
      v8 = &unk_1C9F61040;
      if (v13 >= 0.86206899)
      {
        v8 = &unk_1C9F61050;
      }

      if (computationAccuracy <= 3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      computationAccuracy = self->super._computationAccuracy;
      if (computationAccuracy < 4)
      {
        v8 = &unk_1C9F61050;
        v9 = &unk_1C9F61040;
        v10 = off_1E834D9C0;
LABEL_11:
        v14 = v9[computationAccuracy];
        v15 = v8[computationAccuracy];
        resConfig = self->_resConfig;
        self->_resConfig = &v10[computationAccuracy]->isa;

        v11 = 0;
        self->super._cnnInputWidth = v14;
        self->super._cnnInputHeight = v15;
        goto LABEL_13;
      }
    }

    v11 = -50;
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (int)createModules:(id)modules
{
  modulesCopy = modules;
  v5 = [[VCPFlowFeatureExtractor alloc] initModule:self->_numLevels config:self->_resConfig cancel:modulesCopy];
  featureExtractor = self->_featureExtractor;
  self->_featureExtractor = v5;

  if (!self->_featureExtractor)
  {
    goto LABEL_10;
  }

  startLevel = self->_startLevel;
  if (startLevel < self->_numLevels)
  {
    v8 = &self->super.super.super.isa + startLevel;
    do
    {
      v9 = [[VCPFlowDecoder alloc] initModule:startLevel config:self->_resConfig cancel:modulesCopy];
      v10 = v8[18];
      v8[18] = v9;

      if (!v8[18])
      {
        goto LABEL_10;
      }

      ++startLevel;
      ++v8;
    }

    while (startLevel < self->_numLevels);
  }

  v11 = [[VCPCorrelation alloc] initWithDevice:self->super._device];
  correlation = self->_correlation;
  self->_correlation = v11;

  if (!self->_correlation || (v13 = [[VCPBackwarp alloc] initWithDevice:self->super._device], backwarp = self->_backwarp, self->_backwarp = v13, backwarp, !self->_backwarp))
  {
LABEL_10:
    allocateFeatures = -108;
    goto LABEL_11;
  }

  allocateFeatures = [(VCPModelR2D2 *)self allocateFeatures];
  if (!allocateFeatures)
  {
    allocateFeatures = [(VCPModelR2D2 *)self allocateStorages];
  }

LABEL_11:

  return allocateFeatures;
}

- (int)updateModulesWithConfig:(id)config
{
  configCopy = config;
  featureExtractor = self->_featureExtractor;
  if (!featureExtractor)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v6 = [(VCPEspressoModel *)featureExtractor updateModelWithConfig:configCopy error:&v16];
  v7 = v16;
  v8 = v7;
  if (!v6)
  {
LABEL_9:
    allocateFeatures = -18;
    goto LABEL_16;
  }

  startLevel = self->_startLevel;
  if (startLevel < self->_numLevels)
  {
    while (1)
    {
      v10 = self->_flowDecoder[startLevel];
      if (!v10)
      {
        goto LABEL_9;
      }

      v15 = v8;
      v11 = [(VCPEspressoModel *)v10 updateModelWithConfig:configCopy error:&v15];
      v12 = v15;

      if (!v11)
      {
        allocateFeatures = -18;
        goto LABEL_15;
      }

      ++startLevel;
      v8 = v12;
      if (startLevel >= self->_numLevels)
      {
        goto LABEL_11;
      }
    }
  }

  v12 = v7;
LABEL_11:
  [(VCPModelR2D2 *)self releaseMemory];
  allocateFeatures = [(VCPModelR2D2 *)self allocateFeatures];
  if (!allocateFeatures)
  {
    allocateFeatures = [(VCPModelR2D2 *)self allocateStorages];
    if (!allocateFeatures)
    {
      allocateFeatures = [(VCPModelR2D2 *)self allocateInputAndOutputBuffers];
    }
  }

LABEL_15:
  v8 = v12;
LABEL_16:

  return allocateFeatures;
}

- (int)allocateStorages
{
  numLevels = self->_numLevels;
  if (numLevels)
  {
    upscaledFlows = self->_storage.upscaledFlows;
    v5 = self->_numLevels;
    do
    {
      *(upscaledFlows - 7) = 0;
      *upscaledFlows = 0;
      upscaledFlows[7] = 0;
      *(upscaledFlows - 14) = 0;
      ++upscaledFlows;
      --v5;
    }

    while (v5);
  }

  startLevel = self->_startLevel;
  if (startLevel >= numLevels)
  {
    return 0;
  }

  for (i = &self->_storage.upscaledFlows[startLevel]; ; ++i)
  {
    result = [(VCPFlowFeatureExtractor *)self->_featureExtractor setFeatureShape:&v15 height:self->super._cnnInputHeight width:self->super._cnnInputWidth level:startLevel];
    if (result)
    {
      break;
    }

    v10 = v16;
    v9 = v17;
    v11 = v15;
    v12 = 2 * v16;
    *(i - 7) = VCPFlowCreatePixelBuffer(v17, v12, 0x4C303068u, 0);
    *i = VCPFlowCreatePixelBuffer(v9, v12, 0x4C303068u, 0);
    PixelBuffer = VCPFlowCreatePixelBuffer(v9, v11 * v10, 0x4C303068u, 0);
    i[7] = PixelBuffer;
    if (!*(i - 7))
    {
      return -108;
    }

    v14 = PixelBuffer;
    result = -108;
    if (!*i || !v14)
    {
      return result;
    }

    if (++startLevel >= self->_numLevels)
    {
      return 0;
    }
  }

  return result;
}

- (void)releaseStorages
{
  startLevel = self->_startLevel;
  if (startLevel < self->_numLevels)
  {
    v4 = &self->_storage.upscaledFlows[startLevel];
    do
    {
      v5 = *(v4 - 7);
      if (v5)
      {
        CFRelease(v5);
        *(v4 - 7) = 0;
      }

      if (*v4)
      {
        CFRelease(*v4);
        *v4 = 0;
      }

      v6 = v4[7];
      if (v6)
      {
        CFRelease(v6);
        v4[7] = 0;
      }

      ++startLevel;
      ++v4;
    }

    while (startLevel < self->_numLevels);
  }
}

- (int)allocateCorreleationBuffer:(__CVBuffer *)buffer forLevel:(unsigned int)level
{
  PixelBuffer = VCPFlowCreatePixelBuffer(self->_imageFeature[0].featureShape[level].width, (81 * self->_imageFeature[0].featureShape[level].height), 0x4C303068u, 0);
  *buffer = PixelBuffer;
  if (PixelBuffer)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (int)allocateFeatures
{
  v3 = 0;
  LODWORD(numLevels) = self->_numLevels;
  v5 = &self->_imageFeature[0].feature[1];
  v6 = &self->_imageFeature[0].featureShape[1];
  v7 = 1;
  v8 = &OBJC_IVAR___VCPMADImageCaptionResource__queue;
  v17 = &self->_imageFeature[0].feature[1];
  while (1)
  {
    v9 = v7;
    if (numLevels >= 2)
    {
      break;
    }

LABEL_8:
    v7 = 0;
    v3 = 1;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v8[217];
  v11 = &v5[18 * v3];
  v12 = v6;
  v13 = &v6[12 * v3];
  v14 = 1;
  while (1)
  {
    result = [*(&self->super.super.super.isa + v10) setFeatureShape:v13 height:self->super._cnnInputHeight width:self->super._cnnInputWidth level:v14];
    if (result)
    {
      return result;
    }

    PixelBuffer = VCPFlowCreatePixelBuffer(v13->width, v13->channels * v13->height, 0x4C303068u, 0);
    *v11 = PixelBuffer;
    if (!PixelBuffer)
    {
      return -108;
    }

    ++v14;
    numLevels = self->_numLevels;
    ++v11;
    ++v13;
    if (v14 >= numLevels)
    {
      v5 = v17;
      v6 = v12;
      v8 = &OBJC_IVAR___VCPMADImageCaptionResource__queue;
      goto LABEL_8;
    }
  }
}

- (void)releaseFeatureBuffers
{
  v3 = 0;
  numLevels = self->_numLevels;
  v5 = &self->_imageFeature[0].feature[1];
  v6 = 1;
  do
  {
    v7 = v6;
    if (numLevels >= 2)
    {
      v8 = &v5[18 * v3];
      for (i = 1; i < numLevels; ++i)
      {
        if (*v8)
        {
          CFRelease(*v8);
          *v8 = 0;
          numLevels = self->_numLevels;
        }

        ++v8;
      }
    }

    v6 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
}

- (int)extractFeaturesFromFirst:(__CVBuffer *)first andSecond:(__CVBuffer *)second
{
  imageFeature = self->_imageFeature;
  result = [(VCPModelR2D2 *)self extractFeatureFromImage:first toFeature:self->_imageFeature];
  if (!result)
  {

    return [(VCPModelR2D2 *)self extractFeatureFromImage:second toFeature:&imageFeature[1]];
  }

  return result;
}

- (int)extractFeatureFromImage:(__CVBuffer *)image toFeature:(id *)feature
{
  v7 = dispatch_semaphore_create(0);
  featureExtractor = self->_featureExtractor;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__VCPModelR2D2_extractFeatureFromImage_toFeature___block_invoke;
  v11[3] = &unk_1E834BDC0;
  v12 = v7;
  v9 = v7;
  LODWORD(feature) = [(VCPFlowFeatureExtractor *)featureExtractor extractFeatureFromImage:image toFeature:feature callback:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  return feature;
}

- (int)estimateMotionFlow:(__CVBuffer *)flow
{
  numLevels = self->_numLevels;
  if (numLevels - 1 < self->_startLevel)
  {
    return 0;
  }

  p_storage = &self->_storage;
  flows = self->_storage.flows;
  while (1)
  {
    v8 = numLevels - 1;
    v9 = &p_storage->correlations[v8];
    result = [(VCPModelR2D2 *)self allocateCorreleationBuffer:v9 forLevel:v8];
    if (result)
    {
      break;
    }

    if (v8 + 1 == self->_numLevels)
    {
      v11 = 0;
    }

    else
    {
      v11 = flows[numLevels];
    }

    flowCopy = flow;
    if (v8 != self->_startLevel)
    {
      flowCopy = flows[v8];
    }

    result = [(VCPModelR2D2 *)self estimateFlowForLevel:v8 upperFlow:v11 outputFlow:flowCopy];
    if (result)
    {
      break;
    }

    if (*v9)
    {
      CFRelease(*v9);
      *v9 = 0;
    }

    numLevels = v8;
    if ((v8 - 1) < self->_startLevel)
    {
      return 0;
    }
  }

  return result;
}

- (int)estimateFlowForLevel:(int)level upperFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  imageFeature = self->_imageFeature;
  channels = self->_imageFeature[0].featureShape[level].channels;
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v38 = createTextureFromBuffer(imageFeature->feature[level], self->super._device, 0, channels);
  feature = imageFeature->feature;
  levelCopy = level;
  v12 = createTextureFromBuffer(imageFeature[1].feature[level], self->super._device, 0, channels);
  p_storage = &self->_storage;
  v13 = createTextureFromBuffer(self->_storage.correlations[level], self->super._device, 0, 0x51uLL);
  v14 = v13;
  if (v38)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v13 == 0;
  outputFlowCopy = outputFlow;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  if (self->_numLevels - 1 != level)
  {
    v19 = createTextureFromBuffer(flow, self->super._device, 0, 2uLL);
    v22 = &p_storage->correlations[level];
    v17 = createTextureFromBuffer(v22[14], self->super._device, 0, 2uLL);
    v23 = createTextureFromBuffer(v22[21], self->super._device, 0, channels);
    v18 = v23;
    if (v17)
    {
      v24 = v19 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24 && v23 != 0)
    {
      v21 = v17;
      v34 = v19;
      v35 = v23;
      [(VCPBackwarp *)self->_backwarp encodeToCommandBuffer:commandBuffer input:v12 output:v23 flow:v19 upscaledFlow:v17];
      [(VCPCorrelation *)self->_correlation encodeToCommandBuffer:commandBuffer firstInput:v38 secondInput:v18 correlation:v14, outputFlowCopy];
      goto LABEL_21;
    }

LABEL_10:
    v20 = -108;
    goto LABEL_27;
  }

  v34 = 0;
  v35 = v12;
  v21 = 0;
  [(VCPCorrelation *)self->_correlation encodeToCommandBuffer:commandBuffer firstInput:v38 secondInput:v35 correlation:v14, outputFlow];
LABEL_21:
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  if (needDeepCopy([v14 width], objc_msgSend(v14, "arrayLength")))
  {
    v20 = copyTextureToBuffer(v14, p_storage->correlations[levelCopy]);
  }

  else
  {
    v20 = 0;
  }

  if (needDeepCopy([v21 width], objc_msgSend(v21, "arrayLength")))
  {
    v20 = copyTextureToBuffer(v21, p_storage->upscaledFlows[levelCopy]);
  }

  v17 = v21;
  v19 = v34;
  v18 = v35;
LABEL_27:

  if (!v20)
  {
    v26 = self->_flowDecoder[levelCopy];
    v27 = feature[levelCopy];
    v28 = &p_storage->correlations[levelCopy];
    v29 = *v28;
    v30 = v28[14];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__VCPModelR2D2_estimateFlowForLevel_upperFlow_outputFlow___block_invoke;
    v39[3] = &unk_1E834BDC0;
    v39[4] = self;
    v20 = [(VCPFlowDecoder *)v26 estimateFlow:v27 correlation:v29 flow:v30 outputFlow:outputFlowCopy callback:v39];
    dispatch_semaphore_wait(self->_flowDecoderSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v20;
}

- (int)copyImage:(__CVBuffer *)image toBuffer:(__CVBuffer *)buffer withChannels:(int)channels
{
  v40 = *MEMORY[0x1E69E9840];
  if (channels != 3 || CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v31 = 0;
  imageCopy = image;
  v33 = 1;
  if (!image)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v9 = Height;
  v10 = CVPixelBufferLockBaseAddress(image, 1uLL);
  v31 = v10;
  if (!v10 || (v11 = v10, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, pixelBuffer[0] = image, LOWORD(pixelBuffer[1]) = 1024, *(&pixelBuffer[1] + 2) = v11, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v11 = v31) == 0))
  {
    *buf = 0;
    *(pixelBuffer + 4) = buffer;
    if (buffer)
    {
      v11 = CVPixelBufferLockBaseAddress(buffer, 0);
      *buf = v11;
      if (!v11 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v36 = 134218240, v37 = *(pixelBuffer + 4), v38 = 1024, v39 = v11, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v36, 0x12u), (v11 = *buf) == 0))
      {
        BaseAddress = CVPixelBufferGetBaseAddress(image);
        BytesPerRow = CVPixelBufferGetBytesPerRow(image);
        v14 = CVPixelBufferGetBytesPerRow(buffer);
        v15 = CVPixelBufferGetBaseAddress(buffer);
        if (v9 >= 1)
        {
          v17 = 0;
          v18 = v14 >> 1;
          v19 = &v15[4 * v9 * v18];
          v20 = 2 * v18;
          v21 = &v15[2 * v18 * v9];
          do
          {
            if (Width >= 1)
            {
              v22 = 0;
              v23 = 1;
              do
              {
                LOBYTE(_S0) = BaseAddress[v23 + 1];
                *&_S0 = LODWORD(_S0) / 255.0;
                __asm { FCVT            H0, S0 }

                *&v15[2 * v22] = _S0;
                LOBYTE(_S0) = BaseAddress[v23];
                *&_S0 = _S0 / 255.0;
                __asm { FCVT            H0, S0 }

                *&v21[2 * v22] = _S0;
                LOBYTE(_S0) = BaseAddress[v23 - 1];
                _S0 = _S0 / 255.0;
                __asm { FCVT            H0, S0 }

                *&v19[2 * v22++] = LOWORD(_S0);
                v23 += 4;
              }

              while ((Width & 0x7FFFFFFF) != v22);
            }

            BaseAddress += BytesPerRow;
            ++v17;
            v19 += v20;
            v21 += v20;
            v15 += v20;
          }

          while (v17 != v9);
        }

        v11 = CVPixelBufferLock::Unlock(buf);
        if (!v11)
        {
          v11 = CVPixelBufferLock::Unlock(&v31);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v11 = -50;
      *buf = -50;
    }

    if (*(pixelBuffer + 4) && !*buf && CVPixelBufferUnlockBaseAddress(*(pixelBuffer + 4), *(&pixelBuffer[1] + 4)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
    }

    if (imageCopy && !v31 && CVPixelBufferUnlockBaseAddress(imageCopy, v33) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
    }
  }

  return v11;
}

- (int)createInput:(__CVBuffer *)input withImage:(__CVBuffer *)image modelInputHeight:(int)height modelInputWidth:(int)width
{
  if (input)
  {
    v6 = *&width;
    v7 = *&height;
    cf = 0;
    Width = CVPixelBufferGetWidth(image);
    Height = CVPixelBufferGetHeight(image);
    if (CVPixelBufferGetPixelFormatType(image) == 1111970369 && Width == v6 && Height == v7)
    {
      v16 = 0;
      cf = CFRetain(image);
      CF<__CVBuffer *>::~CF(&v16);
    }

    else
    {
      Scaler::Scale(&self->_scaler, image, &cf, v6, v7, 1111970369);
      v13 = v14;
      if (v14)
      {
LABEL_9:
        CF<__CVBuffer *>::~CF(&cf);
        return v13;
      }
    }

    v13 = [(VCPModelR2D2 *)self copyImage:cf toBuffer:input withChannels:3];
    goto LABEL_9;
  }

  return -108;
}

- (int)analyzeImages:(__CVBuffer *)images secondImage:(__CVBuffer *)image cancel:(id)cancel
{
  result = [(VCPModelR2D2 *)self createInput:self->_firstBuffer withImage:images modelInputHeight:self->super._cnnInputHeight modelInputWidth:self->super._cnnInputWidth];
  if (!result)
  {
    result = [(VCPModelR2D2 *)self createInput:self->_secondBuffer withImage:image modelInputHeight:self->super._cnnInputHeight modelInputWidth:self->super._cnnInputWidth];
    if (!result)
    {
      result = [(VCPModelR2D2 *)self extractFeaturesFromFirst:self->_firstBuffer andSecond:self->_secondBuffer];
      if (!result)
      {
        outputFlow = self->_outputFlow;

        return [(VCPModelR2D2 *)self estimateMotionFlow:outputFlow];
      }
    }
  }

  return result;
}

- (int)getFlowToBuffer:(__CVBuffer *)buffer
{
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  [(VCPModelR2D2 *)self flowScalingTo:buffer scalerX:v3 scalerY:v4];
  return 0;
}

- (int)flowScalingTo:(__CVBuffer *)to scalerX:(float)x scalerY:(float)y
{
  v45 = *MEMORY[0x1E69E9840];
  BytesPerRow = CVPixelBufferGetBytesPerRow(self->_outputFlow);
  v10 = CVPixelBufferGetBytesPerRow(to);
  outputFlow = self->_outputFlow;
  v36 = 0;
  v37 = outputFlow;
  v38 = 1;
  if (outputFlow)
  {
    v12 = v10;
    v13 = CVPixelBufferLockBaseAddress(outputFlow, 1uLL);
    v36 = v13;
    if (!v13 || (v14 = v13, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, pixelBuffer[0] = outputFlow, LOWORD(pixelBuffer[1]) = 1024, *(&pixelBuffer[1] + 2) = v14, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v14 = v36) == 0))
    {
      *(pixelBuffer + 4) = to;
      if (to)
      {
        v14 = CVPixelBufferLockBaseAddress(to, 0);
        *buf = v14;
        if (!v14 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v41 = 134218240, v42 = *(pixelBuffer + 4), v43 = 1024, v44 = v14, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v41, 0x12u), (v14 = *buf) == 0))
        {
          BaseAddress = CVPixelBufferGetBaseAddress(self->_outputFlow);
          v16 = CVPixelBufferGetBaseAddress(to);
          cnnOutputHeight = self->super._cnnOutputHeight;
          if (cnnOutputHeight >= 1)
          {
            v18 = 0;
            v19 = BytesPerRow >> 1;
            cnnOutputWidth = self->super._cnnOutputWidth;
            v21 = v19;
            v22 = &BaseAddress[2 * cnnOutputHeight * v19];
            v23 = 2 * v21;
            do
            {
              if (cnnOutputWidth >= 1)
              {
                v24 = 0;
                v25 = 0;
                do
                {
                  _H0 = *&BaseAddress[v25];
                  __asm { FCVT            S0, H0 }

                  _S0 = _S0 * x;
                  __asm { FCVT            H0, S0 }

                  *&v16[v24 >> 31] = LOWORD(_S0);
                  LOWORD(_S0) = *&v22[v25];
                  __asm { FCVT            S0, H0 }

                  _S0 = _S0 * y;
                  __asm { FCVT            H0, S0 }

                  *&v16[2 * v25 + 2] = LOWORD(_S0);
                  v25 += 2;
                  v24 += 0x200000000;
                }

                while (2 * cnnOutputWidth != v25);
              }

              v16 += 2 * (v12 >> 1);
              ++v18;
              v22 += v23;
              BaseAddress += v23;
            }

            while (v18 != cnnOutputHeight);
          }

          v14 = CVPixelBufferLock::Unlock(buf);
          if (!v14)
          {
            v14 = CVPixelBufferLock::Unlock(&v36);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v14 = -50;
        *buf = -50;
      }

      if (*(pixelBuffer + 4) && !*buf && CVPixelBufferUnlockBaseAddress(*(pixelBuffer + 4), *(&pixelBuffer[1] + 4)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }

      if (v37 && !v36 && CVPixelBufferUnlockBaseAddress(v37, v38) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  return v14;
}

- (int)flowScalingTo:(__CVBuffer *)to flowBufferY:(__CVBuffer *)y scalerX:(float)x scalerY:(float)scalerY
{
  v50 = *MEMORY[0x1E69E9840];
  BytesPerRow = CVPixelBufferGetBytesPerRow(self->_outputFlow);
  v12 = CVPixelBufferGetBytesPerRow(to);
  v13 = CVPixelBufferGetBytesPerRow(y);
  outputFlow = self->_outputFlow;
  v39 = 0;
  pixelBuffer = outputFlow;
  unlockFlags = 1;
  if (outputFlow)
  {
    v15 = v13;
    v16 = CVPixelBufferLockBaseAddress(outputFlow, 1uLL);
    v39 = v16;
    if (!v16 || (v17 = v16, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v45[0] = outputFlow, LOWORD(v45[1]) = 1024, *(&v45[1] + 2) = v17, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v17 = v39) == 0))
    {
      *buf = 0;
      *(v45 + 4) = to;
      if (to)
      {
        v17 = CVPixelBufferLockBaseAddress(to, 0);
        *buf = v17;
        if (!v17 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v42 = 134218240, v43[0] = *(v45 + 4), LOWORD(v43[1]) = 1024, *(&v43[1] + 2) = v17, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v42, 0x12u), (v17 = *buf) == 0))
        {
          *v42 = 0;
          *(v43 + 4) = y;
          if (y)
          {
            v17 = CVPixelBufferLockBaseAddress(y, 0);
            *v42 = v17;
            if (!v17 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v46 = 134218240, v47 = *(v43 + 4), v48 = 1024, v49 = v17, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v46, 0x12u), (v17 = *v42) == 0))
            {
              BaseAddress = CVPixelBufferGetBaseAddress(self->_outputFlow);
              v19 = CVPixelBufferGetBaseAddress(to);
              v20 = CVPixelBufferGetBaseAddress(y);
              cnnOutputHeight = self->super._cnnOutputHeight;
              if (cnnOutputHeight >= 1)
              {
                v22 = 0;
                v23 = BytesPerRow >> 1;
                cnnOutputWidth = self->super._cnnOutputWidth;
                v25 = v23;
                v26 = &BaseAddress[2 * cnnOutputHeight * v23];
                v27 = 2 * v25;
                do
                {
                  if (cnnOutputWidth >= 1)
                  {
                    v28 = 0;
                    do
                    {
                      _H0 = *&BaseAddress[v28];
                      __asm { FCVT            S0, H0 }

                      _S0 = _S0 * x;
                      __asm { FCVT            H0, S0 }

                      *&v19[v28] = LOWORD(_S0);
                      LOWORD(_S0) = *&v26[v28];
                      __asm { FCVT            S0, H0 }

                      _S0 = _S0 * scalerY;
                      __asm { FCVT            H0, S0 }

                      *&v20[v28] = LOWORD(_S0);
                      v28 += 2;
                    }

                    while (2 * cnnOutputWidth != v28);
                  }

                  ++v22;
                  v26 += v27;
                  v20 += 2 * (v15 >> 1);
                  v19 += 2 * (v12 >> 1);
                  BaseAddress += v27;
                }

                while (v22 != cnnOutputHeight);
              }

              v17 = CVPixelBufferLock::Unlock(v42);
              if (!v17)
              {
                v17 = CVPixelBufferLock::Unlock(buf);
                if (!v17)
                {
                  v17 = CVPixelBufferLock::Unlock(&v39);
                }
              }
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
            }

            v17 = -50;
            *v42 = -50;
          }

          if (*(v43 + 4) && !*v42 && CVPixelBufferUnlockBaseAddress(*(v43 + 4), *(&v43[1] + 4)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
          }

          if (*(v45 + 4) && !*buf && CVPixelBufferUnlockBaseAddress(*(v45 + 4), *(&v45[1] + 4)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v17 = -50;
      }

      if (pixelBuffer && !v39 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  return v17;
}

- (int)updateModelForAspectRatio:(id)ratio computationAccuracy:(unsigned int)accuracy
{
  v7 = self->_resConfig;
  self->super._computationAccuracy = accuracy;
  v8 = [(VCPModelR2D2 *)self configForAspectRatio:ratio];
  if (!v8)
  {
    if (v7 == self->_resConfig)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(VCPModelR2D2 *)self updateModulesWithConfig:?];
    }
  }

  return v8;
}

- (void)releaseMemory
{
  [(VCPModelR2D2 *)self releaseInputAndOutputBuffers];
  [(VCPModelR2D2 *)self releaseFeatureBuffers];

  [(VCPModelR2D2 *)self releaseStorages];
}

- (void)dealloc
{
  [(VCPModelR2D2 *)self releaseMemory];
  v3.receiver = self;
  v3.super_class = VCPModelR2D2;
  [(VCPModelR2D2 *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 93) = 0;
  *(self + 188) = 0;
  return self;
}

@end