@interface MitigationANE
- (MitigationANE)initWithMetalContext:(id)context commandQueue:(id)queue imageDimensions:(id)dimensions netSize:(int)size metalToolBox:(id)box;
- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (int)_compileShaders;
- (int)prewarm;
- (int)purgeResources;
- (int64_t)_copyImageTileFromPixelBuffer:(__CVBuffer *)buffer mergeWithMask:(id)mask outputTilePixelBuffer:(__CVBuffer *)pixelBuffer commandBuffer:(id)commandBuffer;
- (int64_t)_copyImageTileFromPixelBuffer:(__CVBuffer *)buffer outputImageTileTexture:(id)texture commandBuffer:(id)commandBuffer;
- (int64_t)_pasteRepairedTile:(__CVBuffer *)tile inputTileTexture:(id)texture blendingMask:(id)mask outputPixelBuffer:(__CVBuffer *)buffer commandBuffer:(id)commandBuffer;
- (int64_t)_repair:(__CVBuffer *)_repair outputBuf:(__CVBuffer *)buf ghostROI:(CGRect)i inputROI:(__CVBuffer *)oI repairMask:(__CVBuffer *)mask blendMask:;
- (int64_t)process:(__CVBuffer *)process outputBuf:(__CVBuffer *)buf roi:(CGRect)roi repairMask:(__CVBuffer *)mask blendMask:(__CVBuffer *)blendMask wRepairedY:(float)y wRepairedUV:(float)v;
- (int64_t)setup;
- (void)_clampGhostROI:(CGRect *)i;
- (void)dealloc;
- (void)setup;
@end

@implementation MitigationANE

- (int64_t)setup
{
  v45[3] = *MEMORY[0x277D85DE8];
  v3 = *(&self->_netSize + 1);
  v4 = *MEMORY[0x277CC4DE0];
  v44[0] = *MEMORY[0x277CC4E08];
  v44[1] = v4;
  v45[0] = MEMORY[0x277CBEC38];
  v45[1] = MEMORY[0x277CBEC38];
  v44[2] = *MEMORY[0x277CC4DE8];
  v45[2] = MEMORY[0x277CBEC10];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.espresso.net", "video_deghosting-v2"];
  v7 = [VEMobileAsset getLocalMobileAssetURLWithAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.GGM" forClientName:@"VideoDeghosting"];
  v41 = v7;
  if (v7 && (v8 = v7, [MEMORY[0x277CCAA00] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "absoluteString"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringByAppendingPathComponent:", v6), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "fileExistsAtPath:", v11), v11, v10, v9, v12))
  {
    absoluteString = [v41 absoluteString];
    v14 = [absoluteString stringByAppendingPathComponent:v6];

    v40 = 0;
    v6 = v14;
  }

  else
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    if (!v15)
    {
      v28 = 0;
      plan = 0;
      goto LABEL_30;
    }

    v17 = [v15 pathForResource:v6 ofType:0 inDirectory:@"NetworksOrig"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [defaultManager fileExistsAtPath:v17];

    if ((v19 & 1) == 0)
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v39 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [(MitigationANE *)v17 setup];
        }
      }

      v28 = 0;
      plan = 0;
      v6 = v17;
      goto LABEL_30;
    }

    v40 = v16;
    v6 = v17;
  }

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = v20;
  if (!v20 || (([v20 pathForResource:@"videoDeghostingMetalLib.metallib" ofType:0], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v22), device = self->super._device, !v22) ? (v25 = -[MTLDevice newDefaultLibrary](device, "newDefaultLibrary")) : (v25 = -[MTLDevice newLibraryWithURL:error:](device, "newLibraryWithURL:error:", v23, 0)), mtlLibrary = self->super._mtlLibrary, self->super._mtlLibrary = v25, mtlLibrary, v27 = self->super._mtlLibrary, v23, v22, !v27))
  {

    goto LABEL_27;
  }

  if ([(MitigationANE *)self _compileShaders])
  {
LABEL_27:
    v28 = 0;
    goto LABEL_28;
  }

  v42 = *MEMORY[0x277CC4D40];
  v43 = &unk_285B428F8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v29 = *MEMORY[0x277CBECE8];
  if (CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v28, self->super._device, 0, &self->_cvMetalTextureCacheRef))
  {
    goto LABEL_28;
  }

  self->_espressoEngine = 10006;
  context = espresso_create_context();
  self->_espressoContext = context;
  if (!context)
  {
    goto LABEL_28;
  }

  plan = espresso_create_plan();
  self->_espressoPlan = plan;
  if (!plan)
  {
LABEL_29:
    v16 = v40;
LABEL_30:
    [(MitigationANE *)self purgeResources];
    v37 = 6;
    goto LABEL_25;
  }

  [v6 UTF8String];
  if (espresso_plan_add_network() || espresso_network_select_configuration() || espresso_plan_build())
  {
LABEL_28:
    plan = 0;
    goto LABEL_29;
  }

  v32 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v3 == 0), 0x1FuLL)), 0x110000001E0, 0x20000000200);
  p_blendingParams = &self->_blendingParams;
  HIWORD(self->_blendingParams.wRepairedY) = v32.i16[2];
  LOWORD(self->_blendingParams.wRepairedY) = v32.i16[0];
  *&self->_maxRoiHeight = v32;
  v34 = objc_opt_new();
  plan = v34;
  if (!v34)
  {
    goto LABEL_29;
  }

  [v34 setCompressionMode:2];
  [plan setCompressionFootprint:0];
  [plan setUsage:3];
  [plan setPixelFormat:25];
  [plan setWidth:LOWORD(p_blendingParams->wRepairedY)];
  [plan setHeight:3 * HIWORD(self->_blendingParams.wRepairedY)];
  v35 = [(MTLDevice *)self->super._device newTextureWithDescriptor:plan];
  tileInputImageTexture = self->_tileInputImageTexture;
  self->_tileInputImageTexture = v35;

  if (!self->_tileInputImageTexture)
  {
    goto LABEL_29;
  }

  v16 = v40;
  if (CVPixelBufferCreate(v29, LOWORD(p_blendingParams->wRepairedY), 4 * HIWORD(self->_blendingParams.wRepairedY), 0x4C303068u, v5, &self->_tileInputPixelBuffer) || CVPixelBufferCreate(v29, LOWORD(p_blendingParams->wRepairedY), 3 * HIWORD(self->_blendingParams.wRepairedY), 0x4C303068u, v5, &self->_tileOutputPixelBufferLr) || CVPixelBufferCreate(v29, LOWORD(p_blendingParams->wRepairedY), 3 * HIWORD(self->_blendingParams.wRepairedY), 0x4C303068u, v5, &self->_tileOutputPixelBuffer))
  {
    goto LABEL_30;
  }

  v37 = 0;
LABEL_25:

  return v37;
}

- (void)dealloc
{
  [(MitigationANE *)self finishProcessing];
  [(MitigationANE *)self purgeResources];
  v3.receiver = self;
  v3.super_class = MitigationANE;
  [(MitigationANE *)&v3 dealloc];
}

- (int)prewarm
{
  if ((global_logLevel & 4) != 0)
  {
    v3 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_24874B000, v3, OS_LOG_TYPE_INFO, "Called", v5, 2u);
    }
  }

  [(MitigationANE *)self prepareToProcess:0];
  return 0;
}

- (void)_clampGhostROI:(CGRect *)i
{
  width = i->size.width;
  maxRoiHeight = self->_maxRoiHeight;
  if (width > maxRoiHeight)
  {
    if (global_logLevel)
    {
      NSLog(&cfstr_ClampingGhostW.isa, a2, *&width, self->_maxRoiHeight);
      width = i->size.width;
    }

    i->origin.x = i->origin.x + (width - maxRoiHeight) * 0.5;
    i->size.width = maxRoiHeight;
  }

  height = i->size.height;
  netSize = self->_netSize;
  if (height > netSize)
  {
    if (global_logLevel)
    {
      NSLog(&cfstr_ClampingGhostH.isa, a2, *&height, self->_netSize);
      height = i->size.height;
    }

    i->origin.y = i->origin.y + (height - netSize) * 0.5;
    i->size.height = netSize;
  }
}

- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  v42[1] = *MEMORY[0x277D85DE8];
  image = 0;
  if (!buffer)
  {
    [MitigationANE _cachedTexturesFromPixelBuffer:&v38 usage:?];
    goto LABEL_99;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  if (!v6)
  {
    [MitigationANE _cachedTexturesFromPixelBuffer:&v38 usage:?];
    goto LABEL_99;
  }

  v7 = v6;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v9 = 1;
  v10 = MTLPixelFormatR8Unorm;
  if (PixelFormatType > 796423727)
  {
    if (PixelFormatType > 1751527983)
    {
      if (PixelFormatType > 2084075055)
      {
        if (PixelFormatType == 2084075056)
        {
          goto LABEL_41;
        }

        if (PixelFormatType == 2088265264)
        {
          goto LABEL_40;
        }

        v11 = 2088269360;
        goto LABEL_29;
      }

      if (PixelFormatType == 1751527984 || PixelFormatType == 2016686640)
      {
        v10 = MTLPixelFormatR16Unorm;
        goto LABEL_41;
      }

      v12 = 2084070960;
      goto LABEL_35;
    }

    if (PixelFormatType > 875704437)
    {
      if (PixelFormatType != 875704438)
      {
        if (PixelFormatType == 1278226534)
        {
          v9 = 0;
          v10 = MTLPixelFormatR32Float;
        }

        else
        {
          if (PixelFormatType != 1278226536)
          {
            goto LABEL_36;
          }

          v9 = 0;
          v10 = MTLPixelFormatR16Float;
        }
      }

      goto LABEL_41;
    }

    if (PixelFormatType != 796423728)
    {
      v12 = 875704422;
LABEL_35:
      if (PixelFormatType != v12)
      {
        goto LABEL_36;
      }

      goto LABEL_41;
    }

LABEL_40:
    v10 = 588;
    goto LABEL_41;
  }

  if (PixelFormatType <= 758674991)
  {
    if (PixelFormatType <= 645424687)
    {
      if (PixelFormatType == 641230384)
      {
        goto LABEL_41;
      }

      v12 = 641234480;
      goto LABEL_35;
    }

    if (PixelFormatType != 645424688 && PixelFormatType != 645428784)
    {
      v12 = 758670896;
      goto LABEL_35;
    }

    goto LABEL_40;
  }

  if (PixelFormatType <= 792225327)
  {
    if (PixelFormatType == 758674992)
    {
      goto LABEL_41;
    }

    if (PixelFormatType == 762865200)
    {
      goto LABEL_40;
    }

    v11 = 762869296;
    goto LABEL_29;
  }

  if (PixelFormatType != 792225328 && PixelFormatType != 792229424)
  {
    v11 = 796419632;
LABEL_29:
    if (PixelFormatType != v11)
    {
LABEL_36:
      if ((global_logLevel & 0x10) != 0)
      {
        v13 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [MitigationANE _cachedTexturesFromPixelBuffer:v13 usage:buffer];
        }
      }

      v14 = 0;
      goto LABEL_82;
    }

    goto LABEL_40;
  }

LABEL_41:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v17 = *MEMORY[0x277CC4D50];
  v41 = *MEMORY[0x277CC4D50];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:usage];
  v42[0] = v18;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];

  v34 = *MEMORY[0x277CBECE8];
  if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], self->_cvMetalTextureCacheRef, buffer, v14, v10, WidthOfPlane, HeightOfPlane, 0, &image))
  {
    [MitigationANE _cachedTexturesFromPixelBuffer:usage:];
    goto LABEL_99;
  }

  v19 = CVMetalTextureGetTexture(image);
  [v7 setObject:v19 atIndexedSubscript:0];

  v20 = [v7 objectAtIndexedSubscript:0];

  if (!v20)
  {
    [MitigationANE _cachedTexturesFromPixelBuffer:usage:];
    goto LABEL_99;
  }

  if (image)
  {
    CFRelease(image);
    image = 0;
  }

  if (!v9)
  {
    v24 = v14;
LABEL_88:
    v7 = v7;
    v14 = v24;
    v27 = v7;
    goto LABEL_89;
  }

  v21 = CVPixelBufferGetPixelFormatType(buffer);
  v22 = MTLPixelFormatRG8Unorm;
  if (v21 <= 796419631)
  {
    if (v21 <= 758674991)
    {
      if (v21 <= 645424687)
      {
        if (v21 == 641230384)
        {
          goto LABEL_84;
        }

        v23 = 641234480;
        goto LABEL_78;
      }

      if (v21 != 645424688 && v21 != 645428784)
      {
        v23 = 758670896;
        goto LABEL_78;
      }

LABEL_75:
      v22 = MTLPixelFormatRGBA8Uint|0x204;
      goto LABEL_84;
    }

    if (v21 > 762869295)
    {
      if (v21 != 762869296)
      {
        if (v21 == 792225328)
        {
          goto LABEL_84;
        }

        v23 = 792229424;
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    if (v21 == 758674992)
    {
      goto LABEL_84;
    }

    v25 = 762865200;
LABEL_74:
    if (v21 != v25)
    {
LABEL_79:
      if ((global_logLevel & 0x10) != 0)
      {
        v26 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [MitigationANE _cachedTexturesFromPixelBuffer:v26 usage:buffer];
        }
      }

      goto LABEL_82;
    }

    goto LABEL_75;
  }

  if (v21 <= 2016686639)
  {
    if (v21 <= 875704421)
    {
      if (v21 == 796419632)
      {
        goto LABEL_75;
      }

      v25 = 796423728;
      goto LABEL_74;
    }

    if (v21 == 875704422 || v21 == 875704438)
    {
      goto LABEL_84;
    }

    if (v21 != 1751527984)
    {
      goto LABEL_79;
    }

LABEL_83:
    v22 = MTLPixelFormatRG16Unorm;
    goto LABEL_84;
  }

  if (v21 > 2084075055)
  {
    if (v21 == 2084075056)
    {
      goto LABEL_84;
    }

    if (v21 == 2088265264)
    {
      goto LABEL_75;
    }

    v25 = 2088269360;
    goto LABEL_74;
  }

  if (v21 == 2016686640)
  {
    goto LABEL_83;
  }

  v23 = 2084070960;
LABEL_78:
  if (v21 != v23)
  {
    goto LABEL_79;
  }

LABEL_84:
  v28 = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
  v29 = CVPixelBufferGetHeightOfPlane(buffer, 1uLL);
  v39 = v17;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:usage];
  v40 = v30;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

  if (CVMetalTextureCacheCreateTextureFromImage(v34, self->_cvMetalTextureCacheRef, buffer, v24, v22, v28, v29, 1uLL, &image))
  {
    [MitigationANE _cachedTexturesFromPixelBuffer:usage:];
  }

  else
  {
    v31 = CVMetalTextureGetTexture(image);
    [v7 setObject:v31 atIndexedSubscript:1];

    v32 = [v7 objectAtIndexedSubscript:1];

    if (v32)
    {
      if (image)
      {
        CFRelease(image);
        image = 0;
      }

      goto LABEL_88;
    }

    [MitigationANE _cachedTexturesFromPixelBuffer:usage:];
  }

LABEL_99:
  v14 = v37;
  v7 = v38;
  if (!image)
  {
LABEL_82:
    v27 = 0;
    goto LABEL_89;
  }

  CFRelease(image);
  v27 = 0;
  image = 0;
LABEL_89:

  return v27;
}

- (MitigationANE)initWithMetalContext:(id)context commandQueue:(id)queue imageDimensions:(id)dimensions netSize:(int)size metalToolBox:(id)box
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  boxCopy = box;
  selfCopy = 0;
  if (contextCopy && queueCopy)
  {
    v22.receiver = self;
    v22.super_class = MitigationANE;
    v16 = [(VEMetalBase *)&v22 init];
    self = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_metalToolbox, box);
      self->_imageDimensions = dimensions;
      *(&self->_netSize + 1) = size;
      OUTLINED_FUNCTION_3_9();
      if ((v17 & 4) != 0)
      {
        v18 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          width = self->_imageDimensions.width;
          height = self->_imageDimensions.height;
          *buf = 67109376;
          v24 = width;
          v25 = 1024;
          v26 = height;
          _os_log_impl(&dword_24874B000, v18, OS_LOG_TYPE_INFO, "Configuration: input dimensions:            %d x %d", buf, 0xEu);
        }
      }

      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (int)purgeResources
{
  tileInputPixelBuffer = self->_tileInputPixelBuffer;
  if (tileInputPixelBuffer)
  {
    CFRelease(tileInputPixelBuffer);
    self->_tileInputPixelBuffer = 0;
  }

  tileOutputPixelBufferLr = self->_tileOutputPixelBufferLr;
  if (tileOutputPixelBufferLr)
  {
    CFRelease(tileOutputPixelBufferLr);
    self->_tileOutputPixelBufferLr = 0;
  }

  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  if (tileOutputPixelBuffer)
  {
    CFRelease(tileOutputPixelBuffer);
    self->_tileOutputPixelBuffer = 0;
  }

  tileInputImageTexture = self->_tileInputImageTexture;
  self->_tileInputImageTexture = 0;

  if (self->_espressoInputImageBuffer.data && espresso_network_unbind_buffer() || self->_espressoOutputBuffer.data && espresso_network_unbind_buffer())
  {
    goto LABEL_20;
  }

  if (self->_espressoPlan)
  {
    if (espresso_plan_destroy())
    {
      goto LABEL_20;
    }

    self->_espressoPlan = 0;
  }

  if (!self->_espressoContext)
  {
    goto LABEL_17;
  }

  if (espresso_context_destroy())
  {
LABEL_20:
    LODWORD(cvMetalTextureCacheRef) = 2;
    return cvMetalTextureCacheRef;
  }

  self->_espressoContext = 0;
LABEL_17:
  CVMetalTextureCacheFlush(self->_cvMetalTextureCacheRef, 0);
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CFRelease(cvMetalTextureCacheRef);
    LODWORD(cvMetalTextureCacheRef) = 0;
    self->_cvMetalTextureCacheRef = 0;
  }

  return cvMetalTextureCacheRef;
}

- (int64_t)process:(__CVBuffer *)process outputBuf:(__CVBuffer *)buf roi:(CGRect)roi repairMask:(__CVBuffer *)mask blendMask:(__CVBuffer *)blendMask wRepairedY:(float)y wRepairedUV:(float)v
{
  v22.f64[0] = roi.origin.x;
  v22.f64[1] = roi.origin.y;
  v23.f64[0] = roi.size.width;
  v23.f64[1] = roi.size.height;
  if (!process)
  {
    return 5;
  }

  self->_blendingParams.wRepairedUV = y;
  *&self->_maxRoiWidth = v;
  [(MitigationANE *)self _clampGhostROI:&v22];
  v14.i32[0] = LOWORD(self->_blendingParams.wRepairedY);
  v14.i32[1] = HIWORD(self->_blendingParams.wRepairedY);
  __asm { FMOV            V3.2D, #0.5 }

  v20.i64[0] = LOWORD(self->_blendingParams.wRepairedY);
  v20.i64[1] = HIWORD(self->_blendingParams.wRepairedY);
  *&_Q3.f64[0] = vmax_s32(vmovn_s64(vcvtq_s64_f64(vsubq_f64(vaddq_f64(v22, vmulq_f64(v23, _Q3)), vmulq_f64(vcvtq_f64_u64(v20), _Q3)))), 0);
  return [(MitigationANE *)self _repair:process outputBuf:buf ghostROI:mask inputROI:blendMask repairMask:*&v22 blendMask:*&v23, COERCE_DOUBLE(vuzp1_s16(vbsl_s8(vcgt_s32(vadd_s32(*&_Q3.f64[0], v14), self->_imageDimensions), vsub_s32(self->_imageDimensions, v14), *&_Q3.f64[0]), v14))];
}

- (int64_t)_repair:(__CVBuffer *)_repair outputBuf:(__CVBuffer *)buf ghostROI:(CGRect)i inputROI:(__CVBuffer *)oI repairMask:(__CVBuffer *)mask blendMask:
{
  if (!_repair)
  {
    goto LABEL_15;
  }

  commandBuffer = 0;
  v10 = 5;
  if (!LOWORD(self->_blendingParams.wRepairedY))
  {
    goto LABEL_18;
  }

  v11 = 0;
  v12 = 0;
  if (!HIWORD(self->_blendingParams.wRepairedY))
  {
    goto LABEL_14;
  }

  commandBuffer = 0;
  v10 = 5;
  if (!v7.i16[2])
  {
LABEL_18:
    v11 = 0;
    v12 = 0;
    goto LABEL_14;
  }

  v13 = v7.u16[3];
  v11 = 0;
  v12 = 0;
  if (!v7.i16[3])
  {
    goto LABEL_14;
  }

  v21 = v7;
  if (CVPixelBufferGetWidth(_repair) < v7.u16[0] + v7.u16[2] || CVPixelBufferGetHeight(_repair) < v21.u16[1] + v13)
  {
LABEL_15:
    commandBuffer = 0;
    v11 = 0;
    v12 = 0;
    v10 = 5;
    goto LABEL_14;
  }

  *self->_inputROI = vand_s8(v21, -65538);
  v11 = createTextureFromCVPixelBuffer(oI, self->super._device, 0);
  v12 = createTextureFromCVPixelBuffer(mask, self->super._device, 0);
  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v18 = [(MitigationANE *)self _copyImageTileFromPixelBuffer:_repair outputImageTileTexture:self->_tileInputImageTexture commandBuffer:commandBuffer];
  if (v18 || (v18 = [(MitigationANE *)self _copyImageTileFromPixelBuffer:_repair mergeWithMask:v11 outputTilePixelBuffer:self->_tileInputPixelBuffer commandBuffer:commandBuffer]) != 0)
  {
    v10 = v18;
  }

  else
  {
    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      v10 = 6;
    }

    else if (espresso_network_bind_direct_cvpixelbuffer() || espresso_plan_execute_sync())
    {
      v10 = 3;
    }

    else
    {
      commandBuffer2 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];

      v10 = [(MitigationANE *)self _pasteRepairedTile:self->_tileOutputPixelBuffer inputTileTexture:self->_tileInputImageTexture blendingMask:v12 outputPixelBuffer:buf commandBuffer:commandBuffer2];
      [commandBuffer2 commit];
      [commandBuffer2 waitUntilScheduled];
      commandBuffer = commandBuffer2;
    }
  }

LABEL_14:

  return v10;
}

- (int64_t)_copyImageTileFromPixelBuffer:(__CVBuffer *)buffer outputImageTileTexture:(id)texture commandBuffer:(id)commandBuffer
{
  textureCopy = texture;
  commandBufferCopy = commandBuffer;
  v10 = commandBufferCopy;
  v11 = 0;
  v25 = 0;
  v12 = 5;
  if (buffer && textureCopy && commandBufferCopy)
  {
    v11 = [(MitigationANE *)self _cachedTexturesFromPixelBuffer:buffer usage:1];
    if ([v11 count] == 2)
    {
      computeCommandEncoder = [OUTLINED_FUNCTION_4_10() computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:self->_pipelineStates[1]];
      v14 = [v11 objectAtIndexedSubscript:0];
      [computeCommandEncoder setTexture:v14 atIndex:0];

      v15 = [v11 objectAtIndexedSubscript:1];
      [computeCommandEncoder setTexture:v15 atIndex:1];

      [computeCommandEncoder setTexture:textureCopy atIndex:2];
      [computeCommandEncoder setBytes:&v25 length:4 atIndex:0];
      threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[1] threadExecutionWidth];
      maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_pipelineStates[1] maxTotalThreadsPerThreadgroup];
      wRepairedY_high = HIWORD(self->_blendingParams.wRepairedY);
      v24[0] = LOWORD(self->_blendingParams.wRepairedY);
      v24[1] = wRepairedY_high;
      v24[2] = 1;
      v23[0] = threadExecutionWidth;
      v23[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
      v23[2] = 1;
      [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:v23];
      [computeCommandEncoder endEncoding];

      v12 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_3_9();
      if ((v20 & 0x10) != 0)
      {
        v21 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24[0]) = 0;
          OUTLINED_FUNCTION_5_9(&dword_24874B000, v21, v22, "Unable to bind source pixel buffer textures", v24);
        }
      }

      v12 = 5;
    }
  }

  return v12;
}

- (int64_t)_copyImageTileFromPixelBuffer:(__CVBuffer *)buffer mergeWithMask:(id)mask outputTilePixelBuffer:(__CVBuffer *)pixelBuffer commandBuffer:(id)commandBuffer
{
  maskCopy = mask;
  commandBufferCopy = commandBuffer;
  v12 = 0;
  v28 = 0;
  v13 = 5;
  if (!buffer || !maskCopy)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  if (pixelBuffer)
  {
    v14 = [(MitigationANE *)self _cachedTexturesFromPixelBuffer:buffer usage:1];
    if ([v14 count] == 2)
    {
      v12 = [(MitigationANE *)self _cachedTexturesFromPixelBuffer:pixelBuffer usage:2];
      if ([v12 count] == 1)
      {
        computeCommandEncoder = [OUTLINED_FUNCTION_4_10() computeCommandEncoder];
        [computeCommandEncoder setComputePipelineState:self->_pipelineStates[6]];
        [v14 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_5() setTexture:? atIndex:?];

        [v14 objectAtIndexedSubscript:1];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_5() setTexture:? atIndex:?];

        [computeCommandEncoder setTexture:maskCopy atIndex:2];
        [v12 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_5() setTexture:? atIndex:?];

        [computeCommandEncoder setBytes:&v28 length:4 atIndex:0];
        threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[6] threadExecutionWidth];
        maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_pipelineStates[6] maxTotalThreadsPerThreadgroup];
        wRepairedY_high = HIWORD(self->_blendingParams.wRepairedY);
        v27[0] = LOWORD(self->_blendingParams.wRepairedY);
        v27[1] = wRepairedY_high;
        v27[2] = 1;
        v26[0] = threadExecutionWidth;
        v26[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
        v26[2] = 1;
        [computeCommandEncoder dispatchThreads:v27 threadsPerThreadgroup:v26];
        [computeCommandEncoder endEncoding];

        v13 = 0;
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_3_9();
      if ((v23 & 0x10) != 0)
      {
        v24 = global_logger;
        if (OUTLINED_FUNCTION_8_7())
        {
          LOWORD(v27[0]) = 0;
          OUTLINED_FUNCTION_5_9(&dword_24874B000, v24, v25, "Unable to bind destination tile pixel buffer textures", v27);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_9();
      if ((v20 & 0x10) != 0)
      {
        v21 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27[0]) = 0;
          OUTLINED_FUNCTION_5_9(&dword_24874B000, v21, v22, "Unable to bind source pixel buffer textures", v27);
        }
      }

      v12 = 0;
    }

    v13 = 6;
  }

LABEL_7:

  return v13;
}

- (int64_t)_pasteRepairedTile:(__CVBuffer *)tile inputTileTexture:(id)texture blendingMask:(id)mask outputPixelBuffer:(__CVBuffer *)buffer commandBuffer:(id)commandBuffer
{
  textureCopy = texture;
  maskCopy = mask;
  commandBufferCopy = commandBuffer;
  v15 = 0;
  memset(v33, 0, 12);
  v16 = 5;
  if (!tile || !maskCopy)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  if (buffer)
  {
    v19 = vmovl_u16(*self->_inputROI);
    WORD1(v33[0]) = v19.i16[2];
    LOWORD(v33[0]) = v19.i16[0];
    *(v33 + 4) = *&self->_blendingParams.wRepairedUV;
    v17 = [(MitigationANE *)self _cachedTexturesFromPixelBuffer:tile usage:1];
    if ([v17 count] == 1)
    {
      v15 = [(MitigationANE *)self _cachedTexturesFromPixelBuffer:buffer usage:3];
      if ([v15 count] == 2)
      {
        computeCommandEncoder = [commandBufferCopy computeCommandEncoder];
        v18 = computeCommandEncoder;
        if (computeCommandEncoder)
        {
          [computeCommandEncoder setComputePipelineState:self->_pipelineStates[7]];
          [v17 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_7_7() setTexture:? atIndex:?];

          [v18 setTexture:textureCopy atIndex:1];
          [v18 setTexture:maskCopy atIndex:2];
          [v15 objectAtIndexedSubscript:0];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_7_7() setTexture:? atIndex:?];

          [v15 objectAtIndexedSubscript:1];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_7_7() setTexture:? atIndex:?];

          [v18 setBytes:v33 length:12 atIndex:0];
          threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[7] threadExecutionWidth];
          maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_pipelineStates[7] maxTotalThreadsPerThreadgroup];
          v23 = HIWORD(self->_blendingParams.wRepairedY) >> 1;
          v32[0] = LOWORD(self->_blendingParams.wRepairedY) >> 1;
          v32[1] = v23;
          v32[2] = 1;
          v31[0] = threadExecutionWidth;
          v31[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
          v31[2] = 1;
          [v18 dispatchThreads:v32 threadsPerThreadgroup:v31];
          [v18 endEncoding];
          v16 = 0;
          goto LABEL_8;
        }

LABEL_18:
        v16 = 6;
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_3_9();
      if ((v28 & 0x10) != 0)
      {
        v29 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v32[0]) = 0;
          OUTLINED_FUNCTION_5_9(&dword_24874B000, v29, v30, "Unable to bind destination pixel buffer textures", v32);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_9();
      if ((v25 & 0x10) != 0)
      {
        v26 = global_logger;
        if (OUTLINED_FUNCTION_8_7())
        {
          LOWORD(v32[0]) = 0;
          OUTLINED_FUNCTION_5_9(&dword_24874B000, v26, v27, "Unable to bind repair tile pixel buffer textures", v32);
        }
      }

      v15 = 0;
    }

    v18 = 0;
    goto LABEL_18;
  }

LABEL_8:

  return v16;
}

- (int)_compileShaders
{
  v3 = [(VEMetalBase *)self createKernel:@"dlRepair::extractImageTile" constantValues:0];
  v4 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v3;

  if (self->_pipelineStates[1])
  {
    v5 = [(VEMetalBase *)self createKernel:@"dlRepair::extractImageTileAndMergeMask" constantValues:0];
    v6 = self->_pipelineStates[6];
    self->_pipelineStates[6] = v5;

    if (self->_pipelineStates[6])
    {
      v7 = [(VEMetalBase *)self createKernel:@"dlRepair::pasteTileAndBlendWithMaskKernel" constantValues:0];
      v8 = self->_pipelineStates[7];
      self->_pipelineStates[7] = v7;
    }
  }

  return 0;
}

- (void)setup
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "Repair network (%@) is not on the filesystem", &v2, 0xCu);
}

- (void)_cachedTexturesFromPixelBuffer:usage:.cold.1()
{
  OUTLINED_FUNCTION_0_28();
  if ((v0 & 0x10) != 0 && OUTLINED_FUNCTION_8_7())
  {
    OUTLINED_FUNCTION_3_16(&dword_24874B000, v1, v2, "Unable to cache pixel luma or main buffer texture", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_9_6();
}

- (void)_cachedTexturesFromPixelBuffer:usage:.cold.2()
{
  OUTLINED_FUNCTION_0_28();
  if ((v0 & 0x10) != 0 && OUTLINED_FUNCTION_8_7())
  {
    OUTLINED_FUNCTION_3_16(&dword_24874B000, v1, v2, "Unable to cache pixel buffer chroma texture", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_9_6();
}

- (void)_cachedTexturesFromPixelBuffer:usage:.cold.3()
{
  OUTLINED_FUNCTION_0_28();
  if ((v0 & 0x10) != 0 && OUTLINED_FUNCTION_8_7())
  {
    OUTLINED_FUNCTION_3_16(&dword_24874B000, v1, v2, "Unable to get chroma texture address", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_9_6();
}

- (void)_cachedTexturesFromPixelBuffer:(void *)a1 usage:(__CVBuffer *)a2 .cold.4(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  CVPixelBufferGetPixelFormatType(a2);
  CVPixelBufferGetPixelFormatType(a2);
  CVPixelBufferGetPixelFormatType(a2);
  CVPixelBufferGetPixelFormatType(a2);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4(&dword_24874B000, v4, v5, "Pixel buffer %c%c%c%c format not supported", v6, v7, v8, v9, v10);
}

- (void)_cachedTexturesFromPixelBuffer:usage:.cold.5()
{
  OUTLINED_FUNCTION_0_28();
  if ((v0 & 0x10) != 0 && OUTLINED_FUNCTION_8_7())
  {
    OUTLINED_FUNCTION_3_16(&dword_24874B000, v1, v2, "Unable to get metal luma/main texture address", v3, v4, v5, v6, 0);
  }

  OUTLINED_FUNCTION_9_6();
}

- (void)_cachedTexturesFromPixelBuffer:(void *)a1 usage:(void *)a2 .cold.7(void *a1, void *a2)
{
  OUTLINED_FUNCTION_3_9();
  if ((v4 & 0x10) != 0)
  {
    v5 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      OUTLINED_FUNCTION_5_9(&dword_24874B000, v5, v6, "textures is nil", v7);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)_cachedTexturesFromPixelBuffer:(void *)a1 usage:(void *)a2 .cold.8(void *a1, void *a2)
{
  OUTLINED_FUNCTION_3_9();
  if ((v4 & 0x10) != 0)
  {
    v5 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      OUTLINED_FUNCTION_5_9(&dword_24874B000, v5, v6, "pixelBuffer is NULL", v7);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

@end