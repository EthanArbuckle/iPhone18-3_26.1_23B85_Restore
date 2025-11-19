@interface VideoSpillMapMetalSession
+ (unint64_t)metalPixelFormatForPixelFormat:(unsigned int)a3 withTransferFunction:(unsigned __int8)a4;
- (VideoSpillMapMetalSession)init;
- (id)loadTexture:(__CVBuffer *)a3 withAttributes:(id)a4 forPlane:(unsigned int)a5 withCache:(__CVMetalTextureCache *)a6 withFormat:(unint64_t)a7;
- (int)calculateDrmSpillmapMetal:(__CVBuffer *)a3 emitSpillmap:(__CVBuffer *)a4 setLayout:(int)a5 withAllocator:(void *)a6;
- (int)configureGPU;
- (int)configureIntermediateTextureProcessing:(int)a3 setHeight:(int)a4 setSigma:(float)a5;
- (int)configureSession:(__IOSurface *)a3 setWidth:(int)a4 setHeight:(int)a5;
- (void)dealloc;
- (void)setTaskIDToken:(unsigned int)a3;
@end

@implementation VideoSpillMapMetalSession

+ (unint64_t)metalPixelFormatForPixelFormat:(unsigned int)a3 withTransferFunction:(unsigned __int8)a4
{
  v4 = a4;
  v5 = re::CoreVideoUtils::uncompressedPixelFormat(*&a3);
  result = 0;
  if (v5 > 1111970368)
  {
    if (v5 <= 1982882103)
    {
      if (v5 == 1111970369)
      {
        return 80;
      }

      if (v5 == 1882468912)
      {
LABEL_11:
        v8 = 528;
        if (v4 == 16)
        {
          v8 = 567;
        }

        v9 = v4 == 8;
        v10 = 508;
        goto LABEL_28;
      }

      v7 = 1885745712;
LABEL_10:
      if (v5 != v7)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v5 == 1982882104)
    {
LABEL_27:
      v9 = v4 == 8;
      v8 = 520;
      v10 = 500;
LABEL_28:
      if (v9)
      {
        return v10;
      }

      else
      {
        return v8;
      }
    }

    if (v5 == 2016686640 || v5 == 2019963440)
    {
      v8 = 525;
      if (v4 == 16)
      {
        v8 = 564;
      }

      v9 = v4 == 8;
      v10 = 505;
      goto LABEL_28;
    }
  }

  else
  {
    if (v5 <= 875704421)
    {
      if (v5 != 641230384 && v5 != 641234480)
      {
        v7 = 645428784;
        goto LABEL_10;
      }

      goto LABEL_27;
    }

    if (v5 == 875704422 || v5 == 875704438)
    {
      goto LABEL_27;
    }

    v11 = 523;
    if (v4 == 8)
    {
      v11 = 503;
    }

    if (v5 == 875836518)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (VideoSpillMapMetalSession)init
{
  v6.receiver = self;
  v6.super_class = VideoSpillMapMetalSession;
  v2 = [(VideoSpillMapMetalSession *)&v6 init];
  v3 = v2;
  if (v2 && ![(VideoSpillMapMetalSession *)v2 configureGPU])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  spillBufferPoolUnprotected = self->_spillBufferPoolUnprotected;
  if (spillBufferPoolUnprotected)
  {
    CFRelease(spillBufferPoolUnprotected);
  }

  spillBufferPoolScreenScrapingProtected = self->_spillBufferPoolScreenScrapingProtected;
  if (spillBufferPoolScreenScrapingProtected)
  {
    CFRelease(spillBufferPoolScreenScrapingProtected);
  }

  spillBufferPoolHDCPType0 = self->_spillBufferPoolHDCPType0;
  if (spillBufferPoolHDCPType0)
  {
    CFRelease(spillBufferPoolHDCPType0);
  }

  spillBufferPoolHDCPType1 = self->_spillBufferPoolHDCPType1;
  if (spillBufferPoolHDCPType1)
  {
    CFRelease(spillBufferPoolHDCPType1);
  }

  spillmapBufferProperties = self->_spillmapBufferProperties;
  if (spillmapBufferProperties)
  {
    CFRelease(spillmapBufferProperties);
  }

  textureCacheBGRA = self->_textureCacheBGRA;
  if (textureCacheBGRA)
  {
    CFRelease(textureCacheBGRA);
  }

  textureCacheAlpha = self->_textureCacheAlpha;
  if (textureCacheAlpha)
  {
    CFRelease(textureCacheAlpha);
  }

  textureCacheSpillmap = self->_textureCacheSpillmap;
  if (textureCacheSpillmap)
  {
    CFRelease(textureCacheSpillmap);
  }

  textureCacheBGR = self->_textureCacheBGR;
  if (textureCacheBGR)
  {
    CFRelease(textureCacheBGR);
  }

  v12.receiver = self;
  v12.super_class = VideoSpillMapMetalSession;
  [(VideoSpillMapMetalSession *)&v12 dealloc];
}

- (void)setTaskIDToken:(unsigned int)a3
{
  if (self->_taskIDToken != a3)
  {
    self->_taskIDToken = a3;
    re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolUnprotected, *&a3);
    re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolScreenScrapingProtected, self->_taskIDToken);
    re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolHDCPType0, self->_taskIDToken);
    taskIDToken = self->_taskIDToken;

    re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolHDCPType1, taskIDToken);
  }
}

- (int)configureGPU
{
  v50[1] = *MEMORY[0x1E69E9840];
  v3 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v3;

  v5 = self->_device;
  if (!v5)
  {
    v16 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 11;
    }

    *buf = 0;
    v17 = "[VideoLightSpillGenerator] [configureGPU] Unable to get metal device";
LABEL_13:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    return 11;
  }

  v6 = [(MTLDevice *)v5 newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v6;

  if (!self->_commandQueue)
  {
    v16 = *re::videoLogObjects(v8);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 11;
    }

    *buf = 0;
    v17 = "[VideoLightSpillGenerator] [configureGPU] Unable to get command queue";
    goto LABEL_13;
  }

  v9 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:self->_device];
  bilinearScale = self->_bilinearScale;
  self->_bilinearScale = v9;

  if (!self->_bilinearScale)
  {
    v16 = *re::videoLogObjects(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "[VideoLightSpillGenerator] [configureGPU] Unable to initialize bilinear scaling filter";
      goto LABEL_13;
    }

    return 11;
  }

  v12 = CVMetalTextureCacheCreate(0, 0, self->_device, 0, &self->_textureCacheBGRA);
  if (v12)
  {
    v13 = v12;
    v14 = *re::videoLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v44) = v13;
      v15 = "[VideoLightSpillGenerator] [configureGPU] Error creating texture cache BGRA: %d";
LABEL_22:
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v15, buf, 8u);
    }
  }

  else
  {
    v19 = CVMetalTextureCacheCreate(0, 0, self->_device, 0, &self->_textureCacheAlpha);
    if (v19)
    {
      v13 = v19;
      v14 = *re::videoLogObjects(v19);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v44) = v13;
        v15 = "[VideoLightSpillGenerator] [configureGPU] Error creating texture cache alpha: %d";
        goto LABEL_22;
      }
    }

    else
    {
      v20 = CVMetalTextureCacheCreate(0, 0, self->_device, 0, &self->_textureCacheSpillmap);
      if (v20)
      {
        v13 = v20;
        v14 = *re::videoLogObjects(v20);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v44) = v13;
          v15 = "[VideoLightSpillGenerator] [configureGPU] Error creating texture cache spill map: %d";
          goto LABEL_22;
        }
      }

      else
      {
        if (!self->_readAttributes)
        {
          v49 = *MEMORY[0x1E6966010];
          v50[0] = &unk_1F5D42A50;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
          readAttributes = self->_readAttributes;
          self->_readAttributes = v21;
        }

        if (!self->_readWriteAttributes)
        {
          v47 = *MEMORY[0x1E6966010];
          v48 = &unk_1F5D42A68;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          readWriteAttributes = self->_readWriteAttributes;
          self->_readWriteAttributes = v23;
        }

        v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v26 = self->_device;
        v42 = 0;
        v27 = [(MTLDevice *)v26 newDefaultLibraryWithBundle:v25 error:&v42];
        v28 = v42;
        v29 = v28;
        if (v27)
        {
          v30 = CVMetalTextureCacheCreate(0, 0, self->_device, 0, &self->_textureCacheBGR);
          if (v30)
          {
            v13 = v30;
            v31 = *re::videoLogObjects(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v44) = v13;
              _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [configureGPU] Error creating texture cache BGR: %d", buf, 8u);
            }
          }

          else
          {
            v33 = [v27 newFunctionWithName:@"bilinearScaleWithAlpha"];
            if (v33)
            {
              v34 = self->_device;
              v41 = v29;
              v35 = [(MTLDevice *)v34 newComputePipelineStateWithFunction:v33 error:&v41];
              v36 = v41;

              bilinearScaleWithAlpha = self->_bilinearScaleWithAlpha;
              self->_bilinearScaleWithAlpha = v35;

              if (self->_bilinearScaleWithAlpha)
              {
                v13 = 0;
              }

              else
              {
                v40 = *re::videoLogObjects(v38);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [configureGPU] Unable to configure compute pipeline", buf, 2u);
                }

                v13 = 11;
              }
            }

            else
            {
              v39 = *re::videoLogObjects(0);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [configureGPU] Unable to find bilinear with scale alpha kernel", buf, 2u);
              }

              v13 = 11;
              v36 = v29;
            }

            v29 = v36;
          }
        }

        else
        {
          v32 = *re::videoLogObjects(v28);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = v25;
            v45 = 2112;
            v46 = v29;
            _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "[VideoLightSpillGenerator] [configureGPU] Unable to get metal library for bundle %@ error: %@", buf, 0x16u);
          }

          v13 = 11;
        }
      }
    }
  }

  return v13;
}

- (int)configureSession:(__IOSurface *)a3 setWidth:(int)a4 setHeight:(int)a5
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable && (v9 = Mutable, CFDictionarySetInt32(Mutable, *MEMORY[0x1E696D130], a4), CFDictionarySetInt32(v9, *MEMORY[0x1E696CF58], a5), CFDictionarySetInt32(v9, *MEMORY[0x1E696CFC0], 1111970369), CFDictionarySetInt32(v9, *MEMORY[0x1E696CE58], 4 * a4), CFDictionarySetInt32(v9, *MEMORY[0x1E696CE50], 4), v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (self->_spillmapBufferProperties = v10) != 0))
    {
      CFDictionarySetInt32(v10, *MEMORY[0x1E6966208], a4);
      CFDictionarySetInt32(self->_spillmapBufferProperties, *MEMORY[0x1E69660B8], a5);
      CFDictionarySetInt32(self->_spillmapBufferProperties, *MEMORY[0x1E6966130], 1111970369);
      CFDictionarySetValue(self->_spillmapBufferProperties, *MEMORY[0x1E69660E8], *MEMORY[0x1E695E4D0]);
      v11 = *MEMORY[0x1E696D0F0];
      CFDictionarySetInt32(v9, *MEMORY[0x1E696D0F0], 0);
      v12 = *MEMORY[0x1E69660D8];
      CFDictionarySetValue(self->_spillmapBufferProperties, *MEMORY[0x1E69660D8], v9);
      v13 = CVPixelBufferPoolCreate(0, 0, self->_spillmapBufferProperties, &self->_spillBufferPoolUnprotected);
      if (v13)
      {
        v14 = v13;
        v15 = *re::videoLogObjects(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v22 = 67109120;
          v23 = v14;
          v16 = "[VideoLightSpillGenerator] [configureSession] Error creating unprotected spill map buffer pool: %d";
LABEL_21:
          _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, &v22, 8u);
        }
      }

      else
      {
        CFDictionarySetInt32(v9, v11, 1);
        CFDictionarySetValue(self->_spillmapBufferProperties, v12, v9);
        v19 = CVPixelBufferPoolCreate(0, 0, self->_spillmapBufferProperties, &self->_spillBufferPoolScreenScrapingProtected);
        if (v19)
        {
          v14 = v19;
          v15 = *re::videoLogObjects(v19);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v22 = 67109120;
            v23 = v14;
            v16 = "[VideoLightSpillGenerator] [configureSession] Error creating screen scraping protected spill map buffer pool: %d";
            goto LABEL_21;
          }
        }

        else
        {
          CFDictionarySetInt32(v9, v11, 3);
          CFDictionarySetValue(self->_spillmapBufferProperties, v12, v9);
          v20 = CVPixelBufferPoolCreate(0, 0, self->_spillmapBufferProperties, &self->_spillBufferPoolHDCPType0);
          if (v20)
          {
            v14 = v20;
            v15 = *re::videoLogObjects(v20);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v22 = 67109120;
              v23 = v14;
              v16 = "[VideoLightSpillGenerator] [configureSession] Error creating HDCPType0 spill map buffer pool: %d";
              goto LABEL_21;
            }
          }

          else
          {
            CFDictionarySetInt32(v9, v11, 7);
            CFDictionarySetValue(self->_spillmapBufferProperties, v12, v9);
            v21 = CVPixelBufferPoolCreate(0, 0, self->_spillmapBufferProperties, &self->_spillBufferPoolHDCPType1);
            v14 = v21;
            if (!v21)
            {
              re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolUnprotected, self->_taskIDToken);
              re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolScreenScrapingProtected, self->_taskIDToken);
              re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolHDCPType0, self->_taskIDToken);
              re::memoryAttributionCVPixelBufferPool(&self->_spillBufferPoolHDCPType1, self->_taskIDToken);
              CFRelease(v9);
              return v14;
            }

            v15 = *re::videoLogObjects(v21);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v22 = 67109120;
              v23 = v14;
              v16 = "[VideoLightSpillGenerator] [configureSession] Error creating HDCPType1 spill map buffer pool: %d";
              goto LABEL_21;
            }
          }
        }
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v17 = *re::videoLogObjects(self);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [configureSession] Source iosurface is unavailable", &v22, 2u);
    }

    return 11;
  }

  return v14;
}

- (int)configureIntermediateTextureProcessing:(int)a3 setHeight:(int)a4 setSigma:(float)a5
{
  v7 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:81 width:a3 height:a4 mipmapped:0];
  intermediateImageDescriptor = self->_intermediateImageDescriptor;
  self->_intermediateImageDescriptor = v7;

  [(MTLTextureDescriptor *)self->_intermediateImageDescriptor setStorageMode:2];
  [(MTLTextureDescriptor *)self->_intermediateImageDescriptor setUsage:3];
  if (!self->_intermediateImageDescriptor)
  {
    return 7;
  }

  v9 = objc_alloc(MEMORY[0x1E69745C0]);
  *&v10 = a5;
  v11 = [v9 initWithDevice:self->_device sigma:v10];
  gaussianBlur = self->_gaussianBlur;
  self->_gaussianBlur = v11;

  v13 = self->_gaussianBlur;
  if (v13)
  {
    [(MPSImageGaussianBlur *)v13 setEdgeMode:1];
    return 0;
  }

  else
  {
    v15 = *re::videoLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [configureIntermediateTextureProcessing] Unable to initialize gaussian filter", v16, 2u);
    }

    return 11;
  }
}

- (id)loadTexture:(__CVBuffer *)a3 withAttributes:(id)a4 forPlane:(unsigned int)a5 withCache:(__CVMetalTextureCache *)a6 withFormat:(unint64_t)a7
{
  v26 = *MEMORY[0x1E69E9840];
  image = 0;
  v10 = a5;
  v11 = a4;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, v10);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, v10);
  v14 = CVMetalTextureCacheCreateTextureFromImage(0, a6, a3, v11, a7, WidthOfPlane, HeightOfPlane, v10, &image);

  v15 = image;
  if (v14)
  {
    if (image)
    {
      CFRelease(image);
    }

    v16 = *re::videoLogObjects(v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 67109120;
    v25 = v14;
    v20 = "[VideoLightSpillGenerator] [VideoSpillMapMetalSession->loadTexture] Failed to create texture from pixel buffer with error %d.";
    v21 = v16;
    v22 = 8;
    goto LABEL_14;
  }

  if (!image)
  {
    v19 = *re::videoLogObjects(0);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      v17 = 0;
      goto LABEL_8;
    }

    *buf = 0;
    v20 = "[VideoLightSpillGenerator] [VideoSpillMapMetalSession->loadTexture] Texture created is a nullptr.";
    v21 = v19;
    v22 = 2;
LABEL_14:
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_5;
  }

  v17 = CVMetalTextureGetTexture(image);
  CFRelease(image);
LABEL_8:

  return v17;
}

- (int)calculateDrmSpillmapMetal:(__CVBuffer *)a3 emitSpillmap:(__CVBuffer *)a4 setLayout:(int)a5 withAllocator:(void *)a6
{
  v11 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  CVPixelBufferGetIOSurface(a3);
  ProtectionOptions = IOSurfaceGetProtectionOptions();
  v13 = [v11 setProtectionOptions:ProtectionOptions];
  if (ProtectionOptions < 8 && ((0x8Bu >> ProtectionOptions) & 1) != 0)
  {
    PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, *(&self->super.isa + *&asc_1E310B348[8 * ProtectionOptions]), a4);
    v15 = re::memoryAttributionCVPixelBuffer(a4, self->_taskIDToken);
    if (PixelBuffer)
    {
      v16 = *re::videoLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unable to create spillmap pixel buffer from pool", buf, 2u);
      }

      v17 = 11;
      goto LABEL_10;
    }

    v20 = [(VideoSpillMapMetalSession *)self loadTexture:*a4 withAttributes:self->_readWriteAttributes forPlane:0 withCache:self->_textureCacheSpillmap withFormat:81];
    v21 = v20;
    if (!v20)
    {
      v29 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unable to create spillmap texture from cache", buf, 2u);
      }

      v17 = 11;
      goto LABEL_80;
    }

    v113 = v20;
    v136 = 0;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    *buf = 0u;
    v129 = 0u;
    IOSurface = CVPixelBufferGetIOSurface(a3);
    re::_IOSurfaceGetBulkAttachments(IOSurface, buf);
    v24 = v23;
    v25 = BYTE12(v131);
    v26 = CVPixelBufferGetIOSurface(*a4);
    v127 = 13;
    v27 = re::_IOSurfaceSetBulkAttachments2();
    if (v27)
    {
      v17 = v27;
      v28 = *re::videoLogObjects(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v121 = 0;
        _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unable to set surface properties", v121, 2u);
      }

LABEL_15:
      v21 = v113;
LABEL_80:

      goto LABEL_10;
    }

    buffer = v26;
    if (v24)
    {
      v30 = 2;
    }

    else
    {
      v30 = v25;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v32 = [VideoSpillMapMetalSession metalPixelFormatForPixelFormat:PixelFormatType withTransferFunction:v30];
    if (!v32)
    {
      v40 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *v121 = 0;
        _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unsupported pixel format", v121, 2u);
      }

      v17 = 10;
      goto LABEL_15;
    }

    v33 = v32;
    v112 = [(VideoSpillMapMetalSession *)self loadTexture:a3 withAttributes:self->_readAttributes forPlane:0 withCache:self->_textureCacheBGRA withFormat:v32];
    if (!v112)
    {
      v41 = *re::videoLogObjects(0);
      v21 = v113;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *v121 = 0;
        _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unable to create BGRA texture from cache", v121, 2u);
      }

      v17 = 11;
      goto LABEL_79;
    }

    v34 = [(VideoSpillMapMetalSession *)self loadTexture:a3 withAttributes:self->_readAttributes forPlane:0 withCache:self->_textureCacheBGR withFormat:v33];
    if (!v34)
    {
      v42 = *re::videoLogObjects(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v121 = 0;
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unable to create BGR texture from cache", v121, 2u);
      }

      v17 = 11;
      v21 = v113;
      goto LABEL_78;
    }

    IsTriPlanar = re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType);
    v110 = v34;
    if (IsTriPlanar)
    {
      v36 = [(VideoSpillMapMetalSession *)self loadTexture:a3 withAttributes:self->_readAttributes forPlane:2 withCache:self->_textureCacheAlpha withFormat:10];
      if (v36)
      {
        goto LABEL_41;
      }

      v37 = re::VideoDefaults::logEnabled(0);
      if (!v37 || (v38 = *re::videoLogObjects(v37), !os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT)))
      {
LABEL_40:
        v36 = 0;
LABEL_41:
        v109 = v36;
        if (!*(a6 + 6))
        {
          v44 = self->_device;
          v120 = v44;
          if (!*(a6 + 6))
          {
            re::ObjCObject::operator=(a6 + 6, &v120);
          }
        }

        v45 = [(MTLTextureDescriptor *)self->_intermediateImageDescriptor width];
        v46 = [(MTLTextureDescriptor *)self->_intermediateImageDescriptor height];
        CleanRect = CVImageBufferGetCleanRect(a3);
        x = CleanRect.origin.x;
        y = CleanRect.origin.y;
        width = CleanRect.size.width;
        height = CleanRect.size.height;
        v51 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965DF8], 0);
        if (v51)
        {
          v53 = v51;
          v59 = v46;
          *&v100 = *&CVImageBufferGetDisplaySize(a3);
          v61 = CVImageBufferGetDisplaySize(a3).height;
          v62.f32[0] = Int32;
          v62.f32[1] = v104;
          v63.f32[0] = v103;
          v63.f32[1] = v102;
          v64.f32[0] = v101;
          v65 = v60;
          v46 = v59;
          v64.f32[1] = v65;
          v66.f64[0] = v100;
          v66.f64[1] = v61;
          v67 = vcvt_f32_f64(v66);
          v68 = vdiv_f32(v67, v62);
          v69 = vmul_f32(v63, v68);
          v70 = vmul_f32(v64, v68);
          v71 = vadd_f32(v70, v69);
          v72 = vbsl_s8(vcgt_f32(v71, v67), v67, v71);
          v73 = vbsl_s8(vcgt_f32(v70, v67), v67, v70);
          v74 = vbic_s8(v73, vcltz_f32(v73));
          v107 = vsub_f32(vbic_s8(v72, vcltz_f32(v72)), v74);
          CFRelease(v53);
          v75 = v45 / v107.f32[0];
          v76 = vcvtq_f64_f32(v74);
          v77 = v59 / v107.f32[1];
        }

        else
        {
          v75 = v45 / width;
          v77 = v46 / height;
          v76 = 0uLL;
        }

        v78 = x + v76.f64[0];
        v79 = y + v76.f64[1];
        if (v78 == 0.0)
        {
          v80 = 0.0;
        }

        else
        {
          v80 = 0.0 - (v78 * v75);
        }

        if (v79 == 0.0)
        {
          v81 = 0.0;
        }

        else
        {
          v81 = 0.0 - (v79 * v77);
        }

        v82 = v75 + v75;
        v83 = v80 + v80;
        if (a5 != 1)
        {
          v83 = v80;
          v82 = v75;
        }

        if (a5 == 2)
        {
          v81 = v81 + v81;
        }

        else
        {
          v80 = v83;
        }

        if (a5 == 2)
        {
          v77 = v77 + v77;
        }

        else
        {
          v75 = v82;
        }

        v116 = v75;
        v117 = v77;
        v118 = v80;
        v119 = v81;
        [(MPSImageBilinearScale *)self->_bilinearScale setScaleTransform:&v116];
        *v121 = 0;
        v122 = 0;
        bilinearScale = self->_bilinearScale;
        v123 = 0;
        v124 = v45;
        v125 = v46;
        v126 = 1;
        [(MPSImageBilinearScale *)bilinearScale setClipRect:v121];
        re::VideoTextureAllocator::createTextureInternal(a6, v45, v46, 0x51u, 2u, 3, 0, 0, v121, v85, ProtectionOptions);
        v86 = *v121;
        v88 = v86;
        v34 = v110;
        if (v86)
        {
        }

        re::VideoTextureAllocator::createTextureInternal(a6, v45, v46, 0x51u, 2u, 3, 0, 0, v121, v87, ProtectionOptions);
        v89 = *v121;
        v90 = v89;
        if (v89)
        {

          if (v88)
          {
            v105 = v46;
            v108 = v45;
            if (v109)
            {
              v91 = CVPixelBufferGetWidth(a3);
              v92 = CVPixelBufferGetHeight(a3);
              v93 = [v11 computeCommandEncoder];
              [v93 setComputePipelineState:self->_bilinearScaleWithAlpha];
              [v93 setTexture:v110 atIndex:0];
              [v93 setTexture:v109 atIndex:1];
              [v93 setTexture:v88 atIndex:2];
              *v121 = v91;
              v122 = v92;
              v123 = 1;
              v114 = vdupq_n_s64(0x20uLL);
              v115 = 1;
              [v93 dispatchThreads:v121 threadsPerThreadgroup:&v114];
              [v93 endEncoding];
            }

            else
            {
              [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v11 sourceTexture:v112 destinationTexture:v88];
            }

            [(MPSImageGaussianBlur *)self->_gaussianBlur encodeToCommandBuffer:v11 sourceTexture:v88 destinationTexture:v90];
            v96 = IOSurfaceGetWidth(buffer);
            v97 = IOSurfaceGetHeight(buffer);
            v98 = v97;
            v116 = (v96 / v108);
            v117 = (v97 / v105);
            v118 = 0.0;
            v119 = 0.0;
            [(MPSImageBilinearScale *)self->_bilinearScale setScaleTransform:&v116];
            *v121 = 0;
            v122 = 0;
            v99 = self->_bilinearScale;
            v123 = 0;
            v124 = v96;
            v125 = v98;
            v126 = 1;
            [(MPSImageBilinearScale *)v99 setClipRect:v121];
            v21 = v113;
            [(MPSImageBilinearScale *)self->_bilinearScale encodeToCommandBuffer:v11 sourceTexture:v90 destinationTexture:v113];
            if (([v11 commitAndWaitUntilSubmitted] & 1) == 0)
            {
              [v11 waitUntilScheduled];
            }

            v17 = 0;
            v34 = v110;
            goto LABEL_77;
          }
        }

        else if (v88)
        {
          v94 = *re::videoLogObjects(0);
          if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
LABEL_72:
            v17 = 7;
            v21 = v113;
LABEL_77:

LABEL_78:
LABEL_79:

            goto LABEL_80;
          }

          *v121 = 0;
          v95 = "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Failed to generate imgIntermediateBlurTexture";
LABEL_82:
          _os_log_error_impl(&dword_1E1C61000, v94, OS_LOG_TYPE_ERROR, v95, v121, 2u);
          goto LABEL_72;
        }

        v94 = *re::videoLogObjects(v89);
        if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *v121 = 0;
        v95 = "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Failed to generate imgIntermediateTexture";
        goto LABEL_82;
      }

      *v121 = 0;
      v39 = "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unable to create an alpha texture from cache";
    }

    else
    {
      v43 = re::VideoDefaults::logEnabled(IsTriPlanar);
      if (!v43)
      {
        goto LABEL_40;
      }

      v38 = *re::videoLogObjects(v43);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *v121 = 0;
      v39 = "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Alpha texture doesn't exist";
    }

    _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v39, v121, 2u);
    goto LABEL_40;
  }

  v18 = *re::videoLogObjects(v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[VideoLightSpillGenerator] [calculateDrmSpillmapMetal] Unsupported frame protection option", buf, 2u);
  }

  v17 = 10;
LABEL_10:

  return v17;
}

@end