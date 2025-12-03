@interface JFXGuidedUpscaler
- (BOOL)scaleImage:(__CVBuffer *)image guidanceImage:(__CVBuffer *)guidanceImage destinationImage:(__CVBuffer *)destinationImage;
- (JFXGuidedUpscaler)initWithDiameter:(int)diameter;
- (void)dealloc;
- (void)setSimilarityGaussianBlur:(float)blur;
@end

@implementation JFXGuidedUpscaler

- (JFXGuidedUpscaler)initWithDiameter:(int)diameter
{
  v3 = *&diameter;
  v22.receiver = self;
  v22.super_class = JFXGuidedUpscaler;
  v4 = [(JFXGuidedUpscaler *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4[64] = 0;
    *(v4 + 68) = 0x42C800003F000000;
    v6 = MTLCreateSystemDefaultDevice();
    v7 = [[JFXGuidedFilter alloc] initWithDiameter:v3];
    v8 = *(v5 + 7);
    *(v5 + 7) = v7;

    objc_storeStrong(v5 + 1, v6);
    if (v6)
    {
      newCommandQueue = [*(v5 + 1) newCommandQueue];
      v10 = *(v5 + 5);
      *(v5 + 5) = newCommandQueue;

      if (newCommandQueue)
      {
        v11 = objc_opt_new();
        v12 = *(v5 + 2);
        *(v5 + 2) = v11;

        if (v11)
        {
          v13 = [[JFXMetalHelpers alloc] initWithDevice:v6];
          v14 = *(v5 + 6);
          *(v5 + 6) = v13;

          if (v13)
          {
            v15 = CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, v6, 0, v5 + 4);
            if (v15)
            {
              v16 = JFXLog_matting();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [(JFXGuidedUpscaler *)v15 initWithDiameter:v16];
              }
            }

            goto LABEL_11;
          }

          v18 = JFXLog_matting();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            v19 = "Error: Could not initialize helpers";
            goto LABEL_20;
          }

LABEL_21:

          v17 = 0;
          goto LABEL_22;
        }

        v18 = JFXLog_matting();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *v21 = 0;
        v19 = "Error: Could not initialize scaler";
      }

      else
      {
        v18 = JFXLog_matting();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *v21 = 0;
        v19 = "Error: Failed to create a Metal command queue";
      }
    }

    else
    {
      v18 = JFXLog_matting();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *v21 = 0;
      v19 = "Error: Metal device must not be NULL";
    }

LABEL_20:
    _os_log_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEFAULT, v19, v21, 2u);
    goto LABEL_21;
  }

LABEL_11:
  v17 = v5;
LABEL_22:

  return v17;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  guidedFilter = self->_guidedFilter;
  self->_guidedFilter = 0;

  blur = self->_blur;
  self->_blur = 0;

  scaler = self->_scaler;
  self->_scaler = 0;

  helpers = self->_helpers;
  self->_helpers = 0;

  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;

  [(JFXGuidedUpscaler *)self setPipelineStateSimilarity:0];
  [(JFXGuidedUpscaler *)self setPipelineStateSmoothing:0];
  [(JFXGuidedUpscaler *)self setCurrentOutputTexture:0];
  [(JFXGuidedUpscaler *)self setPreviousOutputTexture:0];
  [(JFXGuidedUpscaler *)self setOldScaledGuidance:0];
  [(JFXGuidedUpscaler *)self setScaledGuidance:0];
  device = self->_device;
  self->_device = 0;

  v10.receiver = self;
  v10.super_class = JFXGuidedUpscaler;
  [(JFXGuidedUpscaler *)&v10 dealloc];
}

- (BOOL)scaleImage:(__CVBuffer *)image guidanceImage:(__CVBuffer *)guidanceImage destinationImage:(__CVBuffer *)destinationImage
{
  if (!self->_device)
  {
    v11 = JFXLog_matting();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v35 = "Error: Metal device must not be NULL";
LABEL_52:
    _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
    goto LABEL_53;
  }

  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    v11 = JFXLog_matting();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v35 = "Error: Metal command queue must not be NULL";
    goto LABEL_52;
  }

  if (!self->_textureCache)
  {
    v11 = JFXLog_matting();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v35 = "Error: texture cache must not be NULL";
    goto LABEL_52;
  }

  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  if (commandBuffer)
  {
    v11 = commandBuffer;
    v12 = [JFXMetalHelpers createCVTextureFromImage:image withTextureCache:self->_textureCache];
    v13 = [JFXMetalHelpers createCVTextureFromImage:guidanceImage withTextureCache:self->_textureCache];
    v14 = [JFXMetalHelpers createCVTextureFromImage:destinationImage withTextureCache:self->_textureCache];
    v15 = CVMetalTextureGetTexture(v12);
    v68 = CVMetalTextureGetTexture(v13);
    v67 = CVMetalTextureGetTexture(v14);
    if (v15 && v68 && v67)
    {
      if ([v15 width] && objc_msgSend(v15, "height") && objc_msgSend(v68, "width") && objc_msgSend(v68, "height") && objc_msgSend(v67, "width") && objc_msgSend(v67, "height"))
      {
        if (![(JFXGuidedUpscaler *)self initialized])
        {
          v27 = JFXLog_matting();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_60;
          }

          *buf = 0;
          v37 = "Error: Not yet initialized";
          goto LABEL_59;
        }

        scaledGuidance = [(JFXGuidedUpscaler *)self scaledGuidance];

        if (!scaledGuidance)
        {
          v17 = -[JFXMetalHelpers newTextureWithSameSizeAs:pixelFormat:](self->_helpers, "newTextureWithSameSizeAs:pixelFormat:", v15, [v68 pixelFormat]);
          [(JFXGuidedUpscaler *)self setScaledGuidance:v17];

          scaledGuidance2 = [(JFXGuidedUpscaler *)self scaledGuidance];

          if (!scaledGuidance2)
          {
            v27 = JFXLog_matting();
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_60;
            }

            *buf = 0;
            v37 = "Error: Could not setup scaledGuidance texture";
            goto LABEL_59;
          }
        }

        scaler = self->_scaler;
        scaledGuidance3 = [(JFXGuidedUpscaler *)self scaledGuidance];
        [(MPSImageBilinearScale *)scaler encodeToCommandBuffer:v11 sourceTexture:v68 destinationTexture:scaledGuidance3];

        currentOutputTexture = [(JFXGuidedUpscaler *)self currentOutputTexture];

        if (currentOutputTexture || (v21 = -[JFXMetalHelpers newTextureWithSameSizeAs:pixelFormat:](self->_helpers, "newTextureWithSameSizeAs:pixelFormat:", v67, [v67 pixelFormat]), -[JFXGuidedUpscaler setCurrentOutputTexture:](self, "setCurrentOutputTexture:", v21), v21, -[JFXGuidedUpscaler currentOutputTexture](self, "currentOutputTexture"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
        {
          [(JFXGuidedUpscaler *)self updateRate];
          if (v23 <= 0.0)
          {
            goto LABEL_35;
          }

          previousOutputTexture = [(JFXGuidedUpscaler *)self previousOutputTexture];

          if (!previousOutputTexture)
          {
            goto LABEL_35;
          }

          blur = self->_blur;
          if (blur)
          {
            [(MPSImageGaussianBlur *)blur encodeToCommandBuffer:v11 inPlaceTexture:&self->_oldScaledGuidance fallbackCopyAllocator:0];
            [(MPSImageGaussianBlur *)self->_blur encodeToCommandBuffer:v11 inPlaceTexture:&self->_scaledGuidance fallbackCopyAllocator:0];
          }

          computeCommandEncoder = [v11 computeCommandEncoder];
          v27 = computeCommandEncoder;
          if (computeCommandEncoder)
          {
            [computeCommandEncoder pushDebugGroup:@"JFXGuidedUpscalerSimilarity"];
            pipelineStateSimilarity = [(JFXGuidedUpscaler *)self pipelineStateSimilarity];

            if (!pipelineStateSimilarity)
            {
              v58 = [(JFXMetalHelpers *)self->_helpers newPipelineStateForFunctionWithName:@"JFXGuidedUpscalerSimilarity"];
              [(JFXGuidedUpscaler *)self setPipelineStateSimilarity:v58];
            }

            if (self->_pipelineStateSimilarity)
            {
              [v27 setComputePipelineState:?];
              oldScaledGuidance = [(JFXGuidedUpscaler *)self oldScaledGuidance];
              [v27 setTexture:oldScaledGuidance atIndex:3];

              scaledGuidance4 = [(JFXGuidedUpscaler *)self scaledGuidance];
              [v27 setTexture:scaledGuidance4 atIndex:2];

              similarity = [(JFXGuidedUpscaler *)self similarity];

              if (similarity || (v62 = self->_helpers, [(JFXGuidedUpscaler *)self scaledGuidance], v28 = objc_claimAutoreleasedReturnValue(), v29 = v62, v63 = v28, v55 = [(JFXMetalHelpers *)v29 newTextureWithSameSizeAs:v28 pixelFormat:10], [(JFXGuidedUpscaler *)self setSimilarity:v55], v55, v63, [(JFXGuidedUpscaler *)self similarity], v64 = objc_claimAutoreleasedReturnValue(), v64, v64))
              {
                similarity2 = [(JFXGuidedUpscaler *)self similarity];
                [v27 setTexture:similarity2 atIndex:4];

                [v27 setBytes:&self->_temporalSmoothing length:4 atIndex:0];
                if ([(JFXMetalHelpers *)self->_helpers runComputeEncoder:v27 pipelineState:self->_pipelineStateSimilarity referenceTexture:self->_similarity])
                {
                  [v27 popDebugGroup];
                  [v27 endEncoding];
                  v30 = self->_blur;
                  if (v30)
                  {
                    [(MPSImageGaussianBlur *)v30 encodeToCommandBuffer:v11 inPlaceTexture:&self->_similarity fallbackCopyAllocator:0];
                  }

                  if (self->_showSimilarity)
                  {
                    v31 = self->_scaler;
                    similarity3 = [(JFXGuidedUpscaler *)self similarity];
                    [(MPSImageBilinearScale *)v31 encodeToCommandBuffer:v11 sourceTexture:similarity3 destinationTexture:v67];
LABEL_34:

LABEL_35:
                    [v11 commit];
                    [(JFXGuidedUpscaler *)self updateRate];
                    if (v33 > 0.0)
                    {
                      std::swap[abi:ne200100]<objc_object  {objcproto10MTLTexture}* {__strong}>(&self->_previousOutputTexture, &self->_currentOutputTexture);
                      std::swap[abi:ne200100]<objc_object  {objcproto10MTLTexture}* {__strong}>(&self->_oldScaledGuidance, &self->_scaledGuidance);
                    }

                    if (v12)
                    {
                      CFRelease(v12);
                    }

                    if (v13)
                    {
                      CFRelease(v13);
                    }

                    if (v14)
                    {
                      CFRelease(v14);
                    }

                    v34 = 1;
                    goto LABEL_61;
                  }

                  [(JFXGuidedFilter *)self->_guidedFilter scaleImage:image guidanceImage:guidanceImage destinationImage:destinationImage];
                  currentOutputTexture2 = [(JFXGuidedUpscaler *)self currentOutputTexture];

                  if (currentOutputTexture2 || (v40 = [(JFXMetalHelpers *)self->_helpers newTextureWithSameSizeAs:v67 pixelFormat:10], [(JFXGuidedUpscaler *)self setCurrentOutputTexture:v40], v40, [(JFXGuidedUpscaler *)self currentOutputTexture], v41 = objc_claimAutoreleasedReturnValue(), v41, v41))
                  {
                    v42 = self->_scaler;
                    currentOutputTexture3 = [(JFXGuidedUpscaler *)self currentOutputTexture];
                    [(MPSImageBilinearScale *)v42 encodeToCommandBuffer:v11 sourceTexture:v67 destinationTexture:currentOutputTexture3];

                    computeCommandEncoder2 = [v11 computeCommandEncoder];
                    similarity3 = computeCommandEncoder2;
                    if (computeCommandEncoder2)
                    {
                      [computeCommandEncoder2 pushDebugGroup:@"JFXGuidedUpscalerSmoothing"];
                      pipelineStateSmoothing = [(JFXGuidedUpscaler *)self pipelineStateSmoothing];

                      if (!pipelineStateSmoothing)
                      {
                        v46 = [(JFXMetalHelpers *)self->_helpers newPipelineStateForFunctionWithName:@"JFXGuidedUpscalerSmoothing"];
                        [(JFXGuidedUpscaler *)self setPipelineStateSmoothing:v46];
                      }

                      pipelineStateSmoothing2 = [(JFXGuidedUpscaler *)self pipelineStateSmoothing];

                      if (pipelineStateSmoothing2)
                      {
                        [similarity3 setComputePipelineState:self->_pipelineStateSmoothing];
                        currentOutputTexture4 = [(JFXGuidedUpscaler *)self currentOutputTexture];
                        [similarity3 setTexture:currentOutputTexture4 atIndex:0];

                        previousOutputTexture2 = [(JFXGuidedUpscaler *)self previousOutputTexture];
                        [similarity3 setTexture:previousOutputTexture2 atIndex:1];

                        similarity4 = [(JFXGuidedUpscaler *)self similarity];
                        [similarity3 setTexture:similarity4 atIndex:4];

                        [similarity3 setBytes:&self->_updateRate length:4 atIndex:1];
                        helpers = self->_helpers;
                        pipelineStateSmoothing3 = [(JFXGuidedUpscaler *)self pipelineStateSmoothing];
                        previousOutputTexture3 = [(JFXGuidedUpscaler *)self previousOutputTexture];
                        LOBYTE(helpers) = [(JFXMetalHelpers *)helpers runComputeEncoder:similarity3 pipelineState:pipelineStateSmoothing3 referenceTexture:previousOutputTexture3];

                        if (helpers)
                        {
                          [similarity3 popDebugGroup];
                          [similarity3 endEncoding];
                          [(MPSImageBilinearScale *)self->_scaler encodeToCommandBuffer:v11 sourceTexture:self->_currentOutputTexture destinationTexture:v67];
                          goto LABEL_34;
                        }

                        v53 = JFXLog_matting();
                        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_93;
                        }

                        *buf = 0;
                        v54 = "Error: Could not run compute encoder";
                        goto LABEL_92;
                      }

                      v53 = JFXLog_matting();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        v54 = "Error: Could not get pipelineStateSmoothing";
                        goto LABEL_92;
                      }
                    }

                    else
                    {
                      v53 = JFXLog_matting();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        v54 = "Error: Could not create compute encoder";
LABEL_92:
                        _os_log_impl(&dword_242A3B000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 2u);
                      }
                    }

LABEL_93:

                    goto LABEL_85;
                  }

                  similarity3 = JFXLog_matting();
                  if (!os_log_type_enabled(similarity3, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_85;
                  }

                  *buf = 0;
                  v38 = "Error: Could not setup destination texture 2";
                  goto LABEL_84;
                }

                similarity3 = JFXLog_matting();
                if (os_log_type_enabled(similarity3, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v38 = "Error: Could not run compute encoder";
                  goto LABEL_84;
                }
              }

              else
              {
                similarity3 = JFXLog_matting();
                if (os_log_type_enabled(similarity3, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v38 = "Error: Could not setup similarity texture";
                  goto LABEL_84;
                }
              }

LABEL_85:

              goto LABEL_60;
            }

            similarity3 = JFXLog_matting();
            if (!os_log_type_enabled(similarity3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_85;
            }

            *buf = 0;
            v38 = "Error: Could not get pipelineStateSimilarity";
          }

          else
          {
            similarity3 = JFXLog_matting();
            if (!os_log_type_enabled(similarity3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_85;
            }

            *buf = 0;
            v38 = "Error: Could not create compute encoder";
          }

LABEL_84:
          _os_log_impl(&dword_242A3B000, similarity3, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
          goto LABEL_85;
        }

        v27 = JFXLog_matting();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v37 = "Error: Could not setup coefficients texture";
          goto LABEL_59;
        }

LABEL_60:

        v34 = 0;
LABEL_61:

        goto LABEL_54;
      }

      v27 = JFXLog_matting();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v37 = "Error: Textures must not be empty";
    }

    else
    {
      v27 = JFXLog_matting();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v37 = "Error:Inputs must not be nil";
    }

LABEL_59:
    _os_log_impl(&dword_242A3B000, v27, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
    goto LABEL_60;
  }

  v11 = JFXLog_matting();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v35 = "Error: failed to create a Metal command buffer";
    goto LABEL_52;
  }

LABEL_53:
  v34 = 0;
LABEL_54:

  return v34;
}

- (void)setSimilarityGaussianBlur:(float)blur
{
  if (![(JFXGuidedUpscaler *)self initialized])
  {
    v13 = JFXLog_matting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [JFXGuidedUpscaler setSimilarityGaussianBlur:v13];
    }

    goto LABEL_9;
  }

  blur = self->_blur;
  if (blur)
  {
    [(MPSImageGaussianBlur *)blur sigma];
    if (v6 == blur)
    {
      return;
    }
  }

  if (blur <= 0.0)
  {
    guidedFilter = self->_blur;
    self->_blur = 0;
    goto LABEL_12;
  }

  v7 = objc_alloc(MEMORY[0x277CD7520]);
  *&v8 = blur;
  v9 = [v7 initWithDevice:self->_device sigma:v8];
  v10 = self->_blur;
  self->_blur = v9;

  v11 = self->_blur;
  if (!v11)
  {
    v13 = JFXLog_matting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [JFXGuidedUpscaler setSimilarityGaussianBlur:v13];
    }

LABEL_9:

    return;
  }

  [(MPSImageGaussianBlur *)v11 setEdgeMode:1];
  guidedFilter = self->_guidedFilter;
  self->_guidedFilter = 0;
LABEL_12:
}

- (void)initWithDiameter:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to create a Metal texture cache CVReturn = %d", v2, 8u);
}

@end