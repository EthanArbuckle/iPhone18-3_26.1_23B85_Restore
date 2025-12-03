@interface VCPImageMotionFlowAnalyzer
+ (id)analyzeWithLightweightOption:(BOOL)option aspectRatio:(id)ratio computationAccuracy:(unsigned int)accuracy forceCPU:(BOOL)u sharedModel:(BOOL)model flushModel:(BOOL)flushModel cancel:(id)cancel;
- (VCPImageMotionFlowAnalyzer)initWithLightweightOption:(BOOL)option aspectRatio:(id)ratio computationAccuracy:(unsigned int)accuracy forceCPU:(BOOL)u sharedModel:(BOOL)model flushModel:(BOOL)flushModel cancel:(id)cancel;
- (int)combineBufferTo:(__CVBuffer *)to flowX:(__CVBuffer *)x flowY:(__CVBuffer *)y;
- (int)guidedUpsampling:(__CVBuffer *)upsampling inBGRA:(__CVBuffer *)a;
- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5;
- (int)scaleFlowTo:(__CVBuffer *)to;
@end

@implementation VCPImageMotionFlowAnalyzer

+ (id)analyzeWithLightweightOption:(BOOL)option aspectRatio:(id)ratio computationAccuracy:(unsigned int)accuracy forceCPU:(BOOL)u sharedModel:(BOOL)model flushModel:(BOOL)flushModel cancel:(id)cancel
{
  flushModelCopy = flushModel;
  modelCopy = model;
  uCopy = u;
  v12 = *&accuracy;
  optionCopy = option;
  ratioCopy = ratio;
  cancelCopy = cancel;
  v16 = objc_opt_class();
  if (uCopy || (v17 = v16, (DeviceHasANE() & 1) == 0))
  {
    v17 = objc_opt_class();
  }

  v18 = [[v17 alloc] initWithLightweightOption:optionCopy aspectRatio:ratioCopy computationAccuracy:v12 forceCPU:uCopy sharedModel:modelCopy flushModel:flushModelCopy cancel:cancelCopy];

  return v18;
}

- (VCPImageMotionFlowAnalyzer)initWithLightweightOption:(BOOL)option aspectRatio:(id)ratio computationAccuracy:(unsigned int)accuracy forceCPU:(BOOL)u sharedModel:(BOOL)model flushModel:(BOOL)flushModel cancel:(id)cancel
{
  flushModelCopy = flushModel;
  modelCopy = model;
  uCopy = u;
  optionCopy = option;
  ratioCopy = ratio;
  cancelCopy = cancel;
  v34.receiver = self;
  v34.super_class = VCPImageMotionFlowAnalyzer;
  v17 = [(VCPImageMotionFlowAnalyzer *)&v34 init];
  if (!v17 || ((v18 = MTLCreateSystemDefaultDevice(), device = v17->_device, v17->_device = v18, device, v20 = -[MTLDeviceSPI newCommandQueue](v17->_device, "newCommandQueue"), commandQueue = v17->_commandQueue, v17->_commandQueue = v20, commandQueue, v17->_computationAccuracy = accuracy, uCopy) || (DeviceHasANE() & 1) == 0 ? (v22 = -[VCPImageMotionFlowAnalyzer prepareWithLightweightOption:aspectRatio:forceCPU:sharedModel:flushModel:](v17, "prepareWithLightweightOption:aspectRatio:forceCPU:sharedModel:flushModel:", optionCopy, ratioCopy, uCopy, modelCopy, flushModelCopy)) : (v22 = -[VCPImageMotionFlowAnalyzer prepareWithLightweightOption:aspectRatio:numLevels:startLevel:cancel:](v17, "prepareWithLightweightOption:aspectRatio:numLevels:startLevel:cancel:", optionCopy, ratioCopy, 7, 2, cancelCopy)), v22 || (v26 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:v17->_device], bilinearScale = v17->_bilinearScale, v17->_bilinearScale = v26, bilinearScale, !v17->_bilinearScale) || (LOBYTE(v33) = 1, LODWORD(v28) = 953267991, objc_msgSend(MEMORY[0x1E6974620], "filterDescriptorWithWidth:height:arrayLength:kernelSpatialDiameter:kernelTemporalDiameter:epsilon:sourceChannels:guideChannels:preallocateIntermediates:", v17->_cnnInputWidth, (v17->_cnnInputHeight + (v17->_cnnInputHeight < 0 ? 3 : 0)) >> 2, 1, 3, 1, 2, v28, 3, v33), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(objc_alloc(MEMORY[0x1E6974618]), "initWithDevice:filterDescriptor:", v17->_device, v29), guidedFilter = v17->_guidedFilter, v17->_guidedFilter = v30, guidedFilter, v32 = v17->_guidedFilter, v29, v23 = v17, !v32)))
  {
    v23 = 0;
  }

  v24 = v23;

  return v24;
}

- (int)scaleFlowTo:(__CVBuffer *)to
{
  Width = CVPixelBufferGetWidth(to);
  _S0 = CVPixelBufferGetHeight(to);
  __asm
  {
    FCVT            H0, S0
    FCVT            S0, H0
  }

  cnnOutputHeight = self->_cnnOutputHeight;
  _S0 = _S0 / cnnOutputHeight;
  __asm { FCVT            H8, S0 }

  _S0 = Width;
  __asm
  {
    FCVT            H0, S0
    FCVT            S0, H0
  }

  cnnOutputWidth = self->_cnnOutputWidth;
  _S0 = _S0 / cnnOutputWidth;
  __asm { FCVT            H9, S0 }

  PixelBuffer = VCPFlowCreatePixelBuffer(cnnOutputWidth, cnnOutputHeight, 0x32433068u, 32);
  __asm
  {
    FCVT            S0, H8
    FCVT            S1, H9
  }

  [(VCPImageMotionFlowAnalyzer *)self flowScalingTo:PixelBuffer scalerX:_D0 scalerY:_D1];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v23 = createTextureFromBuffer(PixelBuffer, self->_device, 1, 1uLL);
  v24 = createTextureFromBuffer(to, self->_device, 1, 1uLL);
  v25 = v24;
  v26 = -108;
  if (v23 && v24)
  {
    [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:commandBuffer sourceTexture:v23 destinationTexture:v24];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    if (needDeepCopy([v25 width], objc_msgSend(v25, "arrayLength")))
    {
      v26 = copyTextureToBuffer(v25, to);
    }

    else
    {
      v26 = 0;
    }
  }

  CF<__CVBuffer *>::~CF(&PixelBuffer);
  return v26;
}

- (int)combineBufferTo:(__CVBuffer *)to flowX:(__CVBuffer *)x flowY:(__CVBuffer *)y
{
  v35 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(to);
  Height = CVPixelBufferGetHeight(to);
  BytesPerRow = CVPixelBufferGetBytesPerRow(to);
  v11 = CVPixelBufferGetBytesPerRow(x);
  v12 = CVPixelBufferGetBytesPerRow(y);
  v24 = 0;
  pixelBuffer = x;
  unlockFlags = 1;
  if (x)
  {
    v13 = v12;
    v14 = CVPixelBufferLockBaseAddress(x, 1uLL);
    v24 = v14;
    if (!v14 || (v15 = v14, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, *v30 = x, *&v30[8] = 1024, *&v30[10] = v15, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v15 = v24) == 0))
    {
      *buf = 0;
      *&v30[4] = y;
      *&v30[12] = 1;
      if (y)
      {
        v15 = CVPixelBufferLockBaseAddress(y, 1uLL);
        *buf = v15;
        if (!v15 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v27 = 134218240, v28[0] = *&v30[4], LOWORD(v28[1]) = 1024, *(&v28[1] + 2) = v15, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v27, 0x12u), (v15 = *buf) == 0))
        {
          *v27 = 0;
          *(v28 + 4) = to;
          if (to)
          {
            v15 = CVPixelBufferLockBaseAddress(to, 0);
            *v27 = v15;
            if (!v15 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v31 = 134218240, v32 = *(v28 + 4), v33 = 1024, v34 = v15, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v31, 0x12u), (v15 = *v27) == 0))
            {
              BaseAddress = CVPixelBufferGetBaseAddress(x);
              v17 = CVPixelBufferGetBaseAddress(y);
              v18 = CVPixelBufferGetBaseAddress(to);
              if (Height >= 1)
              {
                for (i = 0; i != Height; ++i)
                {
                  if (Width >= 1)
                  {
                    v20 = 0;
                    v21 = 0;
                    v22 = Width & 0x7FFFFFFF;
                    do
                    {
                      *&v18[v20 >> 31] = *&BaseAddress[v21];
                      *&v18[2 * v21 + 2] = *&v17[v21];
                      v21 += 2;
                      v20 += 0x200000000;
                      --v22;
                    }

                    while (v22);
                  }

                  v18 += 2 * (BytesPerRow >> 1);
                  v17 += 2 * (v13 >> 1);
                  BaseAddress += 2 * (v11 >> 1);
                }
              }

              v15 = CVPixelBufferLock::Unlock(v27);
              if (!v15)
              {
                v15 = CVPixelBufferLock::Unlock(buf);
                if (!v15)
                {
                  v15 = CVPixelBufferLock::Unlock(&v24);
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

            v15 = -50;
            *v27 = -50;
          }

          if (*(v28 + 4) && !*v27 && CVPixelBufferUnlockBaseAddress(*(v28 + 4), *(&v28[1] + 4)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
          }

          if (*&v30[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&v30[4], *&v30[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }

        v15 = -50;
      }

      if (pixelBuffer && !v24 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
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

  return v15;
}

- (int)guidedUpsampling:(__CVBuffer *)upsampling inBGRA:(__CVBuffer *)a
{
  v40[2] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(upsampling);
  Height = CVPixelBufferGetHeight(upsampling);
  cnnOutputHeight = self->_cnnOutputHeight;
  cnnOutputWidth = self->_cnnOutputWidth;
  PixelBuffer = VCPFlowCreatePixelBuffer(cnnOutputWidth, cnnOutputHeight, 0x4C303068u, 32);
  v37 = VCPFlowCreatePixelBuffer(self->_cnnOutputWidth, self->_cnnOutputHeight, 0x4C303068u, 32);
  v36 = VCPFlowCreatePixelBuffer(Width, Height, 0x4C303068u, 32);
  v11 = VCPFlowCreatePixelBuffer(Width, Height, 0x4C303068u, 32);
  _S0 = Height;
  __asm
  {
    FCVT            H0, S0
    FCVT            S0, H0
  }

  _S0 = _S0 / cnnOutputHeight;
  _S1 = Width;
  __asm
  {
    FCVT            H0, S0
    FCVT            H1, S1
    FCVT            S1, H1
  }

  _S1 = _S1 / cnnOutputWidth;
  __asm { FCVT            H1, S1 }

  v35 = v11;
  __asm
  {
    FCVT            S0, H0
    FCVT            S1, H1
  }

  [(VCPImageMotionFlowAnalyzer *)self flowScalingTo:PixelBuffer flowBufferY:v37 scalerX:_D0 scalerY:_D1];
  v33 = createRGBA8TextureFromBuffer(a, self->_device);
  v24 = createTextureFromBuffer(PixelBuffer, self->_device, 0, 1uLL);
  v25 = createTextureFromBuffer(v37, self->_device, 0, 1uLL);
  v26 = createTextureFromBuffer(v36, self->_device, 0, 1uLL);
  v27 = createTextureFromBuffer(v35, self->_device, 0, 1uLL);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  guidedFilter = self->_guidedFilter;
  v40[0] = v24;
  v40[1] = v25;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v39[0] = v26;
  v39[1] = v27;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [(MPSImageSpatioTemporalGuidedFilter *)guidedFilter encodeToCommandBuffer:commandBuffer sourceTextureArray:v30 guidanceTexture:v33 constraintsTextureArray:0 numberOfIterations:1 destinationTextureArray:v31];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  if (needDeepCopy([v26 width], objc_msgSend(v26, "arrayLength")))
  {
    copyTextureToBuffer(v26, v36);
    copyTextureToBuffer(v27, v35);
  }

  [(VCPImageMotionFlowAnalyzer *)self combineBufferTo:upsampling flowX:v36 flowY:v35, v33];

  CF<__CVBuffer *>::~CF(&v35);
  CF<__CVBuffer *>::~CF(&v36);
  CF<__CVBuffer *>::~CF(&v37);
  CF<__CVBuffer *>::~CF(&PixelBuffer);
  return 0;
}

- (int)preferredInputFormat:(int *)format height:(int *)height format:(unsigned int *)a5
{
  result = -50;
  if (format && height)
  {
    if (a5)
    {
      result = 0;
      *format = self->_cnnInputWidth;
      *height = self->_cnnInputHeight;
      *a5 = 1111970369;
    }
  }

  return result;
}

@end