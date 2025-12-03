@interface JFXGuidedFilter
- (JFXGuidedFilter)initWithDiameter:(int)diameter;
- (void)dealloc;
- (void)scaleImage:(__CVBuffer *)image guidanceImage:(__CVBuffer *)guidanceImage destinationImage:(__CVBuffer *)destinationImage;
@end

@implementation JFXGuidedFilter

- (JFXGuidedFilter)initWithDiameter:(int)diameter
{
  v21.receiver = self;
  v21.super_class = JFXGuidedFilter;
  v4 = [(JFXGuidedFilter *)&v21 init];
  if (v4)
  {
    v5 = MTLCreateSystemDefaultDevice();
    device = v4->_device;
    v4->_device = v5;

    v7 = v4->_device;
    if (v7)
    {
      CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, v7, 0, &v4->_textureCache);
      if (!v4->_textureCache)
      {
        v8 = JFXLog_matting();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "Error: Failed to create a Metal texture cache", v20, 2u);
        }
      }

      newCommandQueue = [(MTLDevice *)v4->_device newCommandQueue];
      commandQueue = v4->_commandQueue;
      v4->_commandQueue = newCommandQueue;

      if (!v4->_commandQueue)
      {
        v11 = JFXLog_matting();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, "Error: Failed to create a Metal command queue", v20, 2u);
        }
      }

      if (!v4->_osGuidedFilter)
      {
        v12 = objc_alloc(MEMORY[0x277CD7528]);
        v13 = (diameter + (diameter >> 31)) | 1;
        if (diameter < 2)
        {
          v13 = 3;
        }

        v14 = [v12 initWithDevice:v4->_device kernelDiameter:v13];
        osGuidedFilter = v4->_osGuidedFilter;
        v4->_osGuidedFilter = v14;

        LODWORD(v16) = 981668463;
        [(MPSImageGuidedFilter *)v4->_osGuidedFilter setEpsilon:v16];
        LODWORD(v17) = 1068708659;
        [(MPSImageGuidedFilter *)v4->_osGuidedFilter setReconstructScale:v17];
        LODWORD(v18) = -1102263091;
        [(MPSImageGuidedFilter *)v4->_osGuidedFilter setReconstructOffset:v18];
        [(MPSImageGuidedFilter *)v4->_osGuidedFilter setLabel:@"Guided Filter for edge refinement"];
      }
    }
  }

  return v4;
}

- (void)scaleImage:(__CVBuffer *)image guidanceImage:(__CVBuffer *)guidanceImage destinationImage:(__CVBuffer *)destinationImage
{
  if (self->_device && (commandQueue = self->_commandQueue) != 0 && self->_textureCache)
  {
    commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
    if (commandBuffer)
    {
      v11 = commandBuffer;
      if (!self->_osGuidedFilter)
      {
        v15 = JFXLog_matting();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(pixelBufferOut[0]) = 0;
          _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "Error: guided filter is NULL in filterImage", pixelBufferOut, 2u);
        }

        goto LABEL_43;
      }

      pixelBufferOut[0] = 0;
      v12 = [JFXMetalHelpers createCVTextureFromImage:image withTextureCache:self->_textureCache];
      v13 = [JFXMetalHelpers createCVTextureFromImage:guidanceImage withTextureCache:self->_textureCache];
      v14 = [JFXMetalHelpers createCVTextureFromImage:destinationImage withTextureCache:self->_textureCache];
      v15 = CVMetalTextureGetTexture(v12);
      v16 = CVMetalTextureGetTexture(v13);
      v17 = CVMetalTextureGetTexture(v14);
      v29 = v17;
      if (v15)
      {
        if (v16)
        {
          if (v17)
          {
            coeffPool = self->_coeffPool;
            if (!coeffPool)
            {
              if (([(MPSImageGuidedFilter *)self->_osGuidedFilter options]& 2) != 0)
              {
                v22 = 1380411457;
              }

              else
              {
                v22 = 1380410945;
              }

              v28 = v22;
              self->_guideImageWidth = CVPixelBufferGetWidth(guidanceImage);
              Height = CVPixelBufferGetHeight(guidanceImage);
              self->_guideImageHeight = Height;
              if (JFXCreatePixelBufferPool(self->_guideImageWidth, Height, v28, &self->_coeffPool))
              {
                v19 = JFXLog_matting();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v20 = "Error: CreatePixelBufferPool for _coeffPool failed";
                  goto LABEL_32;
                }

                goto LABEL_33;
              }

              coeffPool = self->_coeffPool;
            }

            if (!CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], coeffPool, pixelBufferOut))
            {
              v25 = [JFXMetalHelpers createCVTextureFromImage:pixelBufferOut[0] withTextureCache:self->_textureCache];
              v26 = CVMetalTextureGetTexture(v25);
              if (v26)
              {
                v24 = v26;
                [(MPSImageGuidedFilter *)self->_osGuidedFilter encodeRegressionToCommandBuffer:v11 sourceTexture:v15 guidanceTexture:v16 weightsTexture:0 destinationCoefficientsTexture:v26];
                [(MPSImageGuidedFilter *)self->_osGuidedFilter encodeReconstructionToCommandBuffer:v11 guidanceTexture:v16 coefficientsTexture:v24 destinationTexture:v29];
                [v11 commit];
              }

              else
              {
                v27 = JFXLog_matting();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_242A3B000, v27, OS_LOG_TYPE_DEFAULT, "Error: coeffTexture is NULL", buf, 2u);
                }

                v24 = 0;
              }

              goto LABEL_34;
            }

            v19 = JFXLog_matting();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v20 = "Error: CVPixelBufferPoolCreatePixelBuffer for coeffImage failed";
LABEL_32:
              _os_log_impl(&dword_242A3B000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
            }
          }

          else
          {
            v19 = JFXLog_matting();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v20 = "Error: destination texture is NULL";
              goto LABEL_32;
            }
          }
        }

        else
        {
          v19 = JFXLog_matting();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v20 = "Error: guidance texture is NULL";
            goto LABEL_32;
          }
        }
      }

      else
      {
        v19 = JFXLog_matting();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = "Error: source texture is NULL";
          goto LABEL_32;
        }
      }

LABEL_33:

      v24 = 0;
      v25 = 0;
LABEL_34:
      if (v12)
      {
        CFRelease(v12);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      CVPixelBufferRelease(pixelBufferOut[0]);

LABEL_43:
      goto LABEL_44;
    }

    v11 = JFXLog_matting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      v21 = "Error: failed to create a Metal command buffer";
      goto LABEL_15;
    }
  }

  else
  {
    v11 = JFXLog_matting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(pixelBufferOut[0]) = 0;
      v21 = "Error: Metal compute not available.";
LABEL_15:
      _os_log_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEFAULT, v21, pixelBufferOut, 2u);
    }
  }

LABEL_44:
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  CVPixelBufferPoolRelease(self->_coeffPool);
  osGuidedFilter = self->_osGuidedFilter;
  self->_osGuidedFilter = 0;

  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;

  v6.receiver = self;
  v6.super_class = JFXGuidedFilter;
  [(JFXGuidedFilter *)&v6 dealloc];
}

@end