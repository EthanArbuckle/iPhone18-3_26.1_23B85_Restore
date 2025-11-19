@interface CMPhotoTiledLayer
- (BOOL)_visibleTileRegionHasChanged:(CGRect)a3 level:(int)a4;
- (CGSize)imageSize;
- (CMPhotoTiledLayer)initWithContainer:(id)a3 containerImageIndex:(int64_t)a4 backgroundImageSize:(CGSize)a5 screenSize:(CGSize)a6;
- (CMPhotoTiledLayer)initWithContainerData:(id)a3 containerImageIndex:(int64_t)a4 backgroundImageSize:(CGSize)a5 screenSize:(CGSize)a6;
- (double)_zoomStartScaleForImage:(CGSize)a3 placeholderImageSize:(CGSize)a4;
- (void)_decodeImageRectangle:(CGRect)a3 forLevel:(int)a4 zoomScale:(double)a5 requestId:(unsigned int)a6 completionHandler:(id)a7;
- (void)_removeAllTiles;
- (void)_runMetalConversionOnSurface:(__IOSurface *)a3 cropRect:(CGRect)a4 completionHandler:(id)a5;
- (void)_runVImageConversionOnSurface:(__IOSurface *)a3 cropRect:(CGRect)a4 completionHandler:(id)a5;
- (void)_setHDROptions:(id)a3;
- (void)_setupConverterForSourceColorSpace:(CGColorSpace *)a3 destinationColorSpace:(CGColorSpace *)a4;
- (void)_updateSubLayers:(id)a3 zoomScale:(double)a4;
- (void)dealloc;
- (void)flushCache;
- (void)prepareForDecode;
- (void)setDecodeToHDROutputMode:(int)a3;
- (void)setFlexGTCColorSpace:(CGColorSpace *)a3;
- (void)setVisibleRectangle:(CGRect)a3 zoomScale:(double)a4 completionHandler:(id)a5;
- (void)sizeToFit;
@end

@implementation CMPhotoTiledLayer

- (double)_zoomStartScaleForImage:(CGSize)a3 placeholderImageSize:(CGSize)a4
{
  width = a3.width;
  v5 = *(MEMORY[0x1E695F060] + 8);
  result = 0.0;
  if ((width != *MEMORY[0x1E695F060] || a3.height != v5) && (a4.width != *MEMORY[0x1E695F060] || a4.height != v5))
  {
    v9 = a4.width / width;
    v10 = a4.height / a3.height;
    if (a4.width / width <= v10)
    {
      v9 = v10;
    }

    v11 = 1.0;
    do
    {
      v12 = v11;
      v11 = v11 * 0.5;
    }

    while (v11 > v9);
    v13 = 0.0;
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    return fmin(v13, 1.0);
  }

  return result;
}

- (void)_setupConverterForSourceColorSpace:(CGColorSpace *)a3 destinationColorSpace:(CGColorSpace *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = MTLCreateSystemDefaultDevice();
  self->_metalDevice = v8;
  if (!v8)
  {
LABEL_12:
    *&srcFormat.bitsPerComponent = 0x2000000008;
    srcFormat.colorSpace = a3;
    srcFormat.bitmapInfo = 8198;
    memset(&srcFormat.version, 0, 20);
    *&destFormat.bitsPerComponent = 0x2000000008;
    destFormat.colorSpace = a4;
    destFormat.bitmapInfo = 8198;
    memset(&destFormat.version, 0, 20);
    v15 = CGColorSpaceCopyICCData(a3);
    v16 = CGColorSpaceCopyICCData(a4);
    v17 = v15;
    v18 = v16;
    if (v15)
    {
      if (v16)
      {
        v19 = ColorSyncProfileCreate(v15, 0);
        v20 = ColorSyncProfileCreate(v16, 0);
        v21 = v19;
        v22 = v20;
        if (v19)
        {
          if (v20)
          {
            v23 = MEMORY[0x1E695BBD0];
            v24 = MEMORY[0x1E695BBD8];
            v25 = *MEMORY[0x1E695BBD8];
            v41[0] = *MEMORY[0x1E695BBD0];
            v41[1] = v25;
            v26 = MEMORY[0x1E695BBE0];
            v27 = *MEMORY[0x1E695BBE0];
            v42[0] = v19;
            v42[1] = v27;
            v28 = MEMORY[0x1E695BC18];
            v41[2] = *MEMORY[0x1E695BC18];
            v42[2] = *MEMORY[0x1E695BC00];
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
            v30 = *v24;
            v39[0] = *v23;
            v39[1] = v30;
            v31 = *v26;
            v40[0] = v20;
            v40[1] = v31;
            v39[2] = *v28;
            v40[2] = *MEMORY[0x1E695BC10];
            v38[0] = v29;
            v38[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
            v32 = ColorSyncTransformCreate([MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2], 0);
            v33 = v32;
            if (v32)
            {
              v34 = MEMORY[0x1AC5514C0](v32, *MEMORY[0x1E695BC08], 0);
              v35 = v34;
              if (v34)
              {
                self->_vimageConverter = vImageConverter_CreateWithColorSyncCodeFragment(v34, &srcFormat, &destFormat, 0, 0, 0);
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

  v43 = *MEMORY[0x1E695F1D8];
  v44[0] = MEMORY[0x1E695E118];
  v9 = CGColorConversionInfoCreateFromList([MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1], a3, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a4, 1, 0, 0);
  if (v9)
  {
    v10 = v9;
    self->_metalConverter = [objc_alloc(MEMORY[0x1E6974590]) initWithDevice:self->_metalDevice srcAlpha:1 destAlpha:1 backgroundColor:0 conversionInfo:v9];
    self->_metalCmdQueue = [(MTLDevice *)self->_metalDevice newCommandQueue];
    v11 = dispatch_queue_create("com.apple.coremedia.tiledlayer.metalconversion", 0);
    self->_metalQueue = v11;
    if (v11)
    {
      dispatch_queue_set_specific(v11, kMetalQueueID, kMetalQueueID, 0);
    }

    v12 = v10;
  }

  metalDevice = self->_metalDevice;
  if (!metalDevice || !self->_metalConverter || !self->_metalCmdQueue || !self->_metalQueue)
  {

    self->_metalDevice = 0;
    self->_metalCmdQueue = 0;

    self->_metalConverter = 0;
    metalQueue = self->_metalQueue;
    if (metalQueue)
    {
      dispatch_release(metalQueue);
      self->_metalQueue = 0;
    }

    goto LABEL_12;
  }

LABEL_19:
  objc_autoreleasePoolPop(v7);
}

- (void)_setHDROptions:(id)a3
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((self->_decodeToHDROutputMode - 1) <= 4)
    {
      v8[0] = @"DecodeToHDROutputMode";
      v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
      if (self->_decodeToHDROutputModePreferMeteor)
      {
        v6 = MEMORY[0x1E695E118];
      }

      else
      {
        v6 = MEMORY[0x1E695E110];
      }

      v9[0] = v5;
      v9[1] = v6;
      v8[1] = @"DecodeToHDROutputModePreferMeteor";
      v8[2] = @"DecodeToHDROutputModeUseBaselayerOrientation";
      v8[3] = @"DecodeToHDRAddFlexGTC";
      v9[2] = MEMORY[0x1E695E118];
      v9[3] = MEMORY[0x1E695E110];
      [a3 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v9, v8, 4), @"DecodeToHDROutput"}];
    }

    colorSpaceFlexGTC = self->_colorSpaceFlexGTC;
    if (colorSpaceFlexGTC)
    {
      [a3 setObject:colorSpaceFlexGTC forKeyedSubscript:@"UseProvidedColorSpace"];
    }
  }
}

- (void)prepareForDecode
{
  updateQueue = self->_updateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CMPhotoTiledLayer_prepareForDecode__block_invoke;
  v3[3] = &unk_1E77A2620;
  v3[4] = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMPhotoDispatchAsync_block_invoke;
  block[3] = &unk_1E77A2D78;
  block[4] = v3;
  dispatch_async(updateQueue, block);
}

- (CMPhotoTiledLayer)initWithContainerData:(id)a3 containerImageIndex:(int64_t)a4 backgroundImageSize:(CGSize)a5 screenSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v8 = a5.height;
  v9 = a5.width;
  v12 = 0;
  if (!FigCreateBlockBufferWithCFDataNoCopy())
  {
    return [(CMPhotoTiledLayer *)self initWithContainer:0 containerImageIndex:a4 backgroundImageSize:v9 screenSize:v8, width, height];
  }

  return v12;
}

- (void)dealloc
{
  updateQueue = self->_updateQueue;
  schedulingQueue = self->_schedulingQueue;
  metalQueue = self->_metalQueue;
  metalDevice = self->_metalDevice;
  metalCmdQueue = self->_metalCmdQueue;
  metalConverter = self->_metalConverter;
  vimageConverter = self->_vimageConverter;
  visibleTileKeys = self->_visibleTileKeys;
  subLayers = self->_subLayers;
  surfacePool = self->_surfacePool;
  container = self->_container;
  decodeSession = self->_decodeSession;
  tileCache = self->_tileCache;
  placeholderImage = self->_placeholderImage;
  if (_getDeferredDeallocQueue_onceToken != -1)
  {
    v21 = self->_schedulingQueue;
    v22 = self->_updateQueue;
    v19 = self->_metalDevice;
    v20 = self->_metalQueue;
    v18 = self->_metalCmdQueue;
    [CMPhotoTiledLayer dealloc];
    metalCmdQueue = v18;
    metalDevice = v19;
    metalQueue = v20;
    schedulingQueue = v21;
    updateQueue = v22;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CMPhotoTiledLayer_dealloc__block_invoke;
  block[3] = &unk_1E77A2BD0;
  block[4] = updateQueue;
  block[5] = schedulingQueue;
  block[6] = metalQueue;
  block[7] = metalDevice;
  block[8] = metalCmdQueue;
  block[9] = metalConverter;
  block[10] = visibleTileKeys;
  block[11] = subLayers;
  block[12] = vimageConverter;
  block[13] = surfacePool;
  block[14] = container;
  block[15] = decodeSession;
  block[16] = tileCache;
  block[17] = placeholderImage;
  dispatch_async(_gDeferredDeallocQueue, block);
  colorSpaceFlexGTC = self->_colorSpaceFlexGTC;
  if (colorSpaceFlexGTC)
  {
    CFRelease(colorSpaceFlexGTC);
  }

  v23.receiver = self;
  v23.super_class = CMPhotoTiledLayer;
  [(CMPhotoTiledLayer *)&v23 dealloc:v18];
}

void __28__CMPhotoTiledLayer_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = kUpdateQueueID;
    if (dispatch_queue_get_specific(*(a1 + 32), kUpdateQueueID) == v3 || (block = MEMORY[0x1E69E9820], v13 = 3221225472, v14 = __CMPhotoDispatchSync_block_invoke, v15 = &unk_1E77A2D78, v16 = &__block_literal_global_15, dispatch_sync(v2, &block), (v2 = *(a1 + 32)) != 0))
    {
      dispatch_release(v2);
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = kMetalQueueID;
    if (dispatch_queue_get_specific(*(a1 + 48), kMetalQueueID) == v6 || (block = MEMORY[0x1E69E9820], v13 = 3221225472, v14 = __CMPhotoDispatchSync_block_invoke, v15 = &unk_1E77A2D78, v16 = &__block_literal_global_63, dispatch_sync(v5, &block), (v5 = *(a1 + 48)) != 0))
    {
      dispatch_release(v5);
    }
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    CFRelease(v11);
  }

  CGImageRelease(*(a1 + 136));
}

- (void)flushCache
{
  CMPhotoCacheRemoveAllItems(self->_tileCache);
  CMPhotoDecompressionSessionFlushCachedBuffers(self->_decodeSession, 0, 0);
  surfacePool = self->_surfacePool;

  CMPhotoSurfacePoolFlushCaches(surfacePool, 0);
}

- (void)_updateSubLayers:(id)a3 zoomScale:(double)a4
{
  v23 = *MEMORY[0x1E69E9840];
  space = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v7 = CGColorCreate(space, _updateSubLayers_zoomScale__black);
  [MEMORY[0x1E6979520] begin];
  [MEMORY[0x1E6979520] setDisableActions:1];
  [MEMORY[0x1E6979520] setAnimationDuration:0.0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 visible])
        {
          v13 = [MEMORY[0x1E6979398] layer];
          if (self->_showTileBorders)
          {
            v14 = CGColorCreate(space, _updateSubLayers_zoomScale__orange);
            [v13 setBorderColor:v14];
            CGColorRelease(v14);
            [v13 setBorderWidth:4.0];
          }

          [v12 imageRect];
          [v13 setFrame:?];
          [v13 setContents:{objc_msgSend(v12, "decodedSurface")}];
          [v12 contentsRect];
          [v13 setContentsRect:?];
          [v13 setBackgroundColor:v7];
          [v13 setOpaque:1];
          v15 = self->_isHDROutput && self->_shouldDisplayHDR;
          [v13 setWantsExtendedDynamicRangeContent:v15];
          [(CMPhotoTiledLayer *)self addSublayer:v13];
          -[NSMutableDictionary setObject:forKey:](self->_subLayers, "setObject:forKey:", v13, [v12 key]);
        }

        else
        {
          v16 = -[NSMutableDictionary objectForKey:](self->_subLayers, "objectForKey:", [v12 key]);
          [v16 removeFromSuperlayer];
          [v16 setContents:0];
          -[NSMutableDictionary removeObjectForKey:](self->_subLayers, "removeObjectForKey:", [v12 key]);
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (a4 > 1.0 && _getRasterizeWhenZoomedPreferences_onceToken != -1)
  {
    [CMPhotoTiledLayer _updateSubLayers:zoomScale:];
  }

  [(CMPhotoTiledLayer *)self setShouldRasterize:a4 > 1.0];
  [MEMORY[0x1E6979520] commit];
  CGColorRelease(v7);
  CGColorSpaceRelease(space);
}

- (void)_runMetalConversionOnSurface:(__IOSurface *)a3 cropRect:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = objc_autoreleasePoolPush();
  v24 = 0;
  CMPhotoSurfacePoolCreateImageSurface(self->_surfacePool, self->_conversionPixelFormat, width, height, 1, 0x10uLL, 0x10uLL, 1, 0, 1u, 0, &v24, 0);
  if (v24)
  {
    v13 = [(MTLCommandQueue *)self->_metalCmdQueue commandBuffer];
    if (self->_hasExtendedColorDisplay)
    {
      v14 = 554;
    }

    else
    {
      v14 = 80;
    }

    v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:width height:height mipmapped:0];
    v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:width height:height mipmapped:0];
    [v16 setUsage:6];
    v17 = [(MTLDevice *)self->_metalDevice newTextureWithDescriptor:v15 iosurface:a3 plane:0];
    v18 = [(MTLDevice *)self->_metalDevice newTextureWithDescriptor:v16 iosurface:v24 plane:0];
    [(MPSImageConversion *)self->_metalConverter encodeToCommandBuffer:v13 sourceTexture:v17 destinationTexture:v18];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__CMPhotoTiledLayer__runMetalConversionOnSurface_cropRect_completionHandler___block_invoke;
    v23[3] = &unk_1E77A2BF8;
    v23[4] = a5;
    v23[5] = v24;
    v23[6] = 0;
    v23[7] = 0;
    *&v23[8] = width;
    *&v23[9] = height;
    [v13 addScheduledHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__CMPhotoTiledLayer__runMetalConversionOnSurface_cropRect_completionHandler___block_invoke_2;
    v22[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v22[4] = a3;
    [v13 addCompletedHandler:v22];
    [v13 commit];
    v19 = v13;
    metalQueue = self->_metalQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__CMPhotoTiledLayer__runMetalConversionOnSurface_cropRect_completionHandler___block_invoke_3;
    v21[3] = &unk_1E77A2620;
    v21[4] = v13;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CMPhotoDispatchAsync_block_invoke;
    block[3] = &unk_1E77A2D78;
    block[4] = v21;
    dispatch_async(metalQueue, block);
  }

  else
  {
    (*(a5 + 2))(a5, a3, x, y, width, height);
  }

  objc_autoreleasePoolPop(v12);
}

void __77__CMPhotoTiledLayer__runMetalConversionOnSurface_cropRect_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __77__CMPhotoTiledLayer__runMetalConversionOnSurface_cropRect_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    IOSurfaceDecrementUseCount(v1);
  }
}

void __77__CMPhotoTiledLayer__runMetalConversionOnSurface_cropRect_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) waitUntilScheduled];
  v2 = *(a1 + 32);
}

- (void)_runVImageConversionOnSurface:(__IOSurface *)a3 cropRect:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a4.size.width;
  v13 = a4.size.height;
  v21 = 0;
  CMPhotoSurfacePoolCreateImageSurface(self->_surfacePool, self->_conversionPixelFormat, a4.size.width, a4.size.height, 1, 0x10uLL, 0x10uLL, 1, 0, 1u, 0, &v21, 0);
  if (v21)
  {
    IOSurfaceLock(a3, 0, 0);
    IOSurfaceLock(v21, 0, 0);
    srcs.data = IOSurfaceGetBaseAddress(a3);
    srcs.height = v13;
    srcs.width = v12;
    srcs.rowBytes = IOSurfaceGetBytesPerRow(a3);
    dests.data = IOSurfaceGetBaseAddress(v21);
    dests.height = v13;
    dests.width = v12;
    dests.rowBytes = IOSurfaceGetBytesPerRow(v21);
    v14 = vImageConvert_AnyToAny(self->_vimageConverter, &srcs, &dests, 0, 0x10u);
    IOSurfaceUnlock(a3, 0, 0);
    IOSurfaceUnlock(v21, 0, 0);
    if (v14)
    {
      if (v21)
      {
        IOSurfaceDecrementUseCount(v21);
      }

      v15.n128_f64[0] = x;
      v16.n128_f64[0] = y;
      v17.n128_f64[0] = width;
      v18.n128_f64[0] = height;
      (*(a5 + 2))(a5, a3, v15, v16, v17, v18);
    }

    else
    {
      if (a3)
      {
        IOSurfaceDecrementUseCount(a3);
      }

      v15.n128_u64[0] = 0;
      v16.n128_u64[0] = 0;
      v17.n128_f64[0] = v12;
      v18.n128_f64[0] = v13;
      (*(a5 + 2))(a5, v21, v15, v16, v17, v18);
    }

    CFRelease(v21);
  }

  else
  {
    (*(a5 + 2))(a5, a3, x, y, width, height);
  }
}

- (void)_decodeImageRectangle:(CGRect)a3 forLevel:(int)a4 zoomScale:(double)a5 requestId:(unsigned int)a6 completionHandler:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v100 = *MEMORY[0x1E69E9840];
  [(CMPhotoTiledLayer *)self _prepareForDecodeSynchronous];
  if (!self->_err)
  {
    v59 = a5;
    v60 = a7;
    v16 = self->_tileSize.width;
    v17 = self->_tileSize.height;
    v67 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v62 = [MEMORY[0x1E695DF70] array];
    if (!self->_isHDROutput || self->_metalConverter || self->_vimageConverter)
    {
      v20 = MEMORY[0x1E696AD98];
      decodePixelFormat = self->_decodePixelFormat;
    }

    else
    {
      chromaSubsampling = self->_chromaSubsampling;
      if (chromaSubsampling == 3)
      {
        v58 = 2019963442;
      }

      else
      {
        v58 = 2019963440;
      }

      if (chromaSubsampling == 1)
      {
        decodePixelFormat = 2019963956;
      }

      else
      {
        decodePixelFormat = v58;
      }

      v20 = MEMORY[0x1E696AD98];
    }

    [v19 setObject:objc_msgSend(v20 forKeyedSubscript:{"numberWithUnsignedInt:", decodePixelFormat), @"OutputPixelFormat"}];
    [v19 setObject:&unk_1F194A1F8 forKeyedSubscript:@"TiledDownsampling"];
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ForceHighSpeedDecode"];
    if (self->_containerFormat == 1)
    {
      [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_shouldTile), @"AccelerationMode"}];
    }

    v64 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    [v19 setObject:? forKeyedSubscript:?];
    theDict = v19;
    [(CMPhotoTiledLayer *)self _setHDROptions:v19];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v66 = self;
    visibleTileKeys = self->_visibleTileKeys;
    v23 = [(NSMutableSet *)visibleTileKeys countByEnumeratingWithState:&v90 objects:v99 count:16];
    v65 = v16 << a4;
    v61 = v17 << a4;
    v68 = (y / v61);
    v69 = ((x + width + -1.0) / v65);
    v70 = (x / v65);
    v24 = ((y + height + -1.0) / v61);
    if (v23)
    {
      v25 = *v91;
      do
      {
        v26 = 0;
        do
        {
          if (*v91 != v25)
          {
            objc_enumerationMutation(visibleTileKeys);
          }

          v27 = *(*(&v90 + 1) + 8 * v26);
          v28 = [v27 bytes];
          if (v28[2] == a4 && (*v28 >= v70 ? (v29 = *v28 <= v69) : (v29 = 0), v29 && ((v30 = v28[1], v30 >= v68) ? (v31 = v30 <= v24) : (v31 = 0), v31)))
          {
            [(NSMutableSet *)v67 addObject:v27];
          }

          else
          {
            v32 = objc_alloc_init(CMPhotoTile);
            [(CMPhotoTile *)v32 setVisible:0];
            [(CMPhotoTile *)v32 setKey:v27];
            [v18 addObject:v32];
          }

          ++v26;
        }

        while (v23 != v26);
        v33 = [(NSMutableSet *)visibleTileKeys countByEnumeratingWithState:&v90 objects:v99 count:16];
        v23 = v33;
      }

      while (v33);
    }

    v84 = 0;
    v85 = &v84;
    v86 = 0x3052000000;
    v87 = __Block_byref_object_copy_;
    v88 = __Block_byref_object_dispose_;
    v89 = 0;
    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x2020000000;
    v83 = 0;
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v81 = 0;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    shouldTile = v66->_shouldTile;
    v78[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke;
    v78[3] = &__block_descriptor_36_e1698_i40__0__CMPhotoDecompressionSession____CFRuntimeBase_QAQ__os_unfair_lock_s_I_Q____CFSet_____C_______CFArray_i____C_______CFArray_i____C_______CFArray_i____C_______CFArray_i____Ci_os_unfair_lock_s_I______CFArray____CMPhotoSurfacePool___CMPhotoScaleAndRotateSession___CMPhotoCodecSessionPool___CMPhotoCodecSessionPool____vQ_8__CMPhotoDecompressionContainer____CFRuntimeBase_QAQ___CMPhotoDecompressionSession_CCCCC__CMPhotoDecompressionContainerVTable___________CFAllocator___OpaqueFigPictureCollection___OpaqueFigFormatReader_____Cqq__CGImageMetadata_____CFDictionary_i____C____CFArray_____Cqq____CC____CCC____CC_________CFAllocator____CCq___OpaqueFigFormatReader_____CFDictionary_________CFArray_____CFArray__C________CFAllocator____i____v____CFURL_____IOSurface_____CFData___OpaqueCMBlockBuffer____OpaqueCMByteStream____OpaqueFigSimpleMutex_______C____CFArray_____CMPhotoUnifiedJPEGDecoder____C___QQ_iCCi____CFData_____CC______QQ_iiI__CGImageMetadata_____CFString_____CFDictionary____qQ_Ci____CFData___CGColorSpace_____CFDictionary__qQ________CC___qQ_iC___C___QQ_i___qQ_i_____CCC___qQ_____CC___qQ_____CFData_____CC___qQ_____CFData_____CC____CFData_____CC____CFData__________CFAllocator____i____v____CFURL_____IOSurface_____CFData___OpaqueCMBlockBuffer____OpaqueCMByteStream_____CFData_____C___iIIIIffifiiiiIIIIi___II____IIIi_II_100C____CGColorSpace_____CFData_____CFString_____CFString_____CFArray_____CFArray__________CFAllocator____i____v____CFURL_____IOSurface_____CFData___OpaqueCMBlockBuffer____OpaqueCMByteStream_____CFData_____Q____________CFArray_____CFArray_______DicomDecoderStruct____QQ___Cq____Cq_i_______CFArray__q_qqqq________CFDictionary_____CFDictionary_____CFDictionary___16Q24_v32l;
    v35 = a6;
    v79 = a6;
    if (!shouldTile || (v36 = CMPhotoDecompressionSetAsyncPreDecodeCallback(v66->_decodeSession, v78, &v66->_requestID), (v66->_err = v36) == 0))
    {
      if (v68 <= v24)
      {
        while (v70 > v69)
        {
LABEL_48:
          v44 = v68++ == v24;
          if (v44)
          {
            goto LABEL_52;
          }
        }

        v37 = v70 * v65;
        v38 = v70;
        while (1)
        {
          v39 = atomic_load(&v66->_requestID);
          if (v39 != v35)
          {
            break;
          }

          v94 = __PAIR64__(v68, v38);
          LODWORD(v95) = a4;
          v40 = [MEMORY[0x1E695DEF0] dataWithBytes:&v94 length:12];
          ItemForKey = CMPhotoCacheGetItemForKey(v66->_tileCache);
          if (([(NSMutableSet *)v66->_visibleTileKeys containsObject:v40]& 1) == 0)
          {
            if (ItemForKey)
            {
              [ItemForKey setVisible:1];
              os_unfair_lock_lock(&v66->_lock);
              [v18 addObject:ItemForKey];
              [(NSMutableSet *)v67 addObject:v40];
              os_unfair_lock_unlock(&v66->_lock);
            }

            else
            {
              v101.origin.x = v37;
              v103.size.width = v66->_imageSize.width;
              v103.size.height = v66->_imageSize.height;
              v103.origin.x = 0.0;
              v103.origin.y = 0.0;
              v101.origin.y = (v68 * v61);
              v101.size.width = v65;
              v101.size.height = v61;
              v102 = CGRectIntersection(v101, v103);
              v42 = v102.size.width;
              v43 = v102.size.height;
              if (v102.size.width)
              {
                v44 = v102.size.height == 0;
              }

              else
              {
                v44 = 1;
              }

              if (!v44)
              {
                v45 = v102.origin.x;
                v46 = v102.origin.y;
                v75 = 0;
                v76[0] = MEMORY[0x1E69E9820];
                v76[1] = 3221225472;
                v76[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_2;
                v76[3] = &unk_1E77A2C60;
                v77 = v102;
                v76[4] = v40;
                v76[5] = v66;
                v76[6] = v18;
                v76[7] = v67;
                v47 = CMPhotoDecompressionSessionReserveRequestID(v66->_decodeSession, &v75);
                v66->_err = v47;
                if (v47)
                {
                  goto LABEL_48;
                }

                v48 = objc_autoreleasePoolPush();
                v35 = a6;
                [v64 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v45), @"X"}];
                [v64 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v46), @"Y"}];
                [v64 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v42), @"Width"}];
                [v64 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v43), @"Height"}];
                if (v42 <= v43)
                {
                  v49 = v43;
                }

                else
                {
                  v49 = v42;
                }

                -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:vcvtmd_u64_f64(1.0 / (1 << a4) * v49)], @"MaxPixelSize");
                -[__CFDictionary setObject:forKeyedSubscript:](theDict, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:v75], @"RequestIDOverride");
                objc_autoreleasePoolPop(v48);
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_3;
                aBlock[3] = &unk_1E77A2CB0;
                aBlock[4] = v66;
                aBlock[5] = v76;
                aBlock[6] = v80;
                aBlock[7] = &v84;
                aBlock[8] = v82;
                schedulingQueue = v66->_schedulingQueue;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_5;
                block[3] = &unk_1E77A2CD8;
                block[4] = v62;
                block[5] = v82;
                block[6] = v75;
                dispatch_sync(schedulingQueue, block);
                v51 = CMPhotoDecompressionContainerDecodeImageForIndexAsync(v66->_container, v66->_imageIndex, theDict, 2, &v75, aBlock);
                if (v51)
                {
                  v66->_err = v51;
                  goto LABEL_48;
                }

                if (v66->_err)
                {
                  goto LABEL_48;
                }
              }
            }
          }

          ++v38;
          v37 += v65;
          if (v69 + 1 == v38)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_52:
    v52 = v66->_schedulingQueue;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_6;
    v72[3] = &unk_1E77A2C88;
    v72[4] = v82;
    v72[5] = v80;
    v72[6] = &v84;
    dispatch_sync(v52, v72);
    v53 = v85[5];
    if (v53)
    {
      dispatch_semaphore_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
      v54 = v85[5];
      if (v54)
      {
        dispatch_release(v54);
        v85[5] = 0;
      }
    }

    metalQueue = v66->_metalQueue;
    if (metalQueue)
    {
      v94 = MEMORY[0x1E69E9820];
      v95 = 3221225472;
      v96 = __CMPhotoDispatchSync_block_invoke;
      v97 = &unk_1E77A2D78;
      v98 = &__block_literal_global_91;
      dispatch_sync(metalQueue, &v94);
    }

    CMPhotoDecompressionSetAsyncPreDecodeCallback(v66->_decodeSession, 0, 0);
    v56 = atomic_load(&v66->_requestID);
    if (v56 == v35)
    {

      v66->_visibleTileKeys = v67;
      v66->_zoomLevel = a4;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_8;
      v71[3] = &unk_1E77A2D00;
      v71[4] = v66;
      v71[5] = v18;
      *&v71[7] = v59;
      v71[6] = v60;
      v94 = MEMORY[0x1E69E9820];
      v95 = 3221225472;
      v96 = __CMPhotoDispatchAsync_block_invoke;
      v97 = &unk_1E77A2D78;
      v98 = v71;
      dispatch_async(MEMORY[0x1E69E96A0], &v94);
    }

    else
    {
    }

    _Block_object_dispose(v80, 8);
    _Block_object_dispose(v82, 8);
    _Block_object_dispose(&v84, 8);
  }
}

uint64_t __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *(a1 + 32);
  v6 = atomic_load(a5);
  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return 4294950191;
  }
}

void __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_2(uint64_t a1, IOSurfaceRef buffer, double a3, double a4, double a5, double a6)
{
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  v14 = a4 / Height;
  v15 = a6 / Height;
  v17 = objc_alloc_init(CMPhotoTile);
  [(CMPhotoTile *)v17 setDecodedSurface:buffer];
  [(CMPhotoTile *)v17 setVisible:1];
  [(CMPhotoTile *)v17 setKey:*(a1 + 32)];
  [(CMPhotoTile *)v17 setImageRect:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];
  [(CMPhotoTile *)v17 setContentsRect:a3 / Width, v14, a5 / Width, v15];
  v16 = CMPhotoCacheAddItemForKey(*(*(a1 + 40) + 160), *(a1 + 32), v17);
  if (v16)
  {
    *(*(a1 + 40) + 156) = v16;
  }

  os_unfair_lock_lock((*(a1 + 40) + 240));
  [*(a1 + 48) addObject:v17];
  [*(a1 + 56) addObject:*(a1 + 32)];
  os_unfair_lock_unlock((*(a1 + 40) + 240));
}

NSObject *__90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_4(void *a1)
{
  ++*(*(a1[4] + 8) + 24);
  result = *(*(a1[5] + 8) + 40);
  if (result)
  {
    if (*(*(a1[4] + 8) + 24) == *(*(a1[6] + 8) + 24))
    {
      return dispatch_semaphore_signal(result);
    }
  }

  return result;
}

uint64_t __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_5(void *a1)
{
  v1 = a1[6];
  ++*(*(a1[5] + 8) + 24);
  v2 = a1[4];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v1];

  return [v2 addObject:v3];
}

dispatch_semaphore_t __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_6(dispatch_semaphore_t result)
{
  if (*(*(result[4].isa + 1) + 24) != *(*(result[5].isa + 1) + 24))
  {
    v1 = result;
    result = dispatch_semaphore_create(0);
    *(*(v1[6].isa + 1) + 40) = result;
  }

  return result;
}

uint64_t __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _updateSubLayers:*(a1 + 40) zoomScale:*(a1 + 56)];

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_removeAllTiles
{
  visibleTileKeys = self->_visibleTileKeys;
  self->_visibleTileKeys = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__CMPhotoTiledLayer__removeAllTiles__block_invoke;
  v4[3] = &unk_1E77A2D28;
  v4[4] = visibleTileKeys;
  v4[5] = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMPhotoDispatchAsync_block_invoke;
  block[3] = &unk_1E77A2D78;
  block[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __36__CMPhotoTiledLayer__removeAllTiles__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979520] begin];
  [MEMORY[0x1E6979520] setDisableActions:1];
  [MEMORY[0x1E6979520] setAnimationDuration:0.0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 184) objectForKey:v7];
        [v8 removeFromSuperlayer];
        [v8 setContents:0];
        [*(*(a1 + 40) + 184) removeObjectForKey:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [MEMORY[0x1E6979520] commit];
}

- (BOOL)_visibleTileRegionHasChanged:(CGRect)a3 level:(int)a4
{
  v4 = 0;
  lastZoomScale = self->_lastZoomScale;
  if (lastZoomScale < 0.5 && self->_shouldTile)
  {
    v4 = 0;
    v6 = 0.5;
    do
    {
      v6 = v6 * 0.5;
      ++v4;
    }

    while (v6 > lastZoomScale);
  }

  if (v4 >= 3)
  {
    v4 = 3;
  }

  result = v4 != a4 || (v7 = self->_tileSize.width << a4, x = self->_lastVisibleRect.origin.x, a3.origin.x / v7 != x / v7) || (v9 = self->_tileSize.height << a4, y = self->_lastVisibleRect.origin.y, a3.origin.y / v9 != y / v9) || (a3.size.width + a3.origin.x - 1) / v7 != (x + self->_lastVisibleRect.size.width - 1) / v7 || (a3.size.height + a3.origin.y - 1) / v9 != (self->_lastVisibleRect.size.height + y - 1) / v9;
  return result;
}

- (void)setVisibleRectangle:(CGRect)a3 zoomScale:(double)a4 completionHandler:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = 0;
  if (a4 < 0.5 && self->_shouldTile)
  {
    v12 = 0;
    v13 = 0.5;
    do
    {
      v13 = v13 * 0.5;
      ++v12;
    }

    while (v13 > a4);
  }

  if (v12 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = v12;
  }

  v15 = [(CMPhotoTiledLayer *)self _visibleTileRegionHasChanged:v14 level:a3.origin.x, y, a3.size.width, a3.size.height];
  lastZoomScale = self->_lastZoomScale;
  v17 = a4 <= 1.0;
  if (lastZoomScale <= 1.0)
  {
    v17 = 0;
  }

  if (a4 > 1.0 && lastZoomScale <= 1.0)
  {
    v17 = 1;
  }

  zoomStartScale = self->_zoomStartScale;
  lastAboveZoomThreshold = self->_lastAboveZoomThreshold;
  v21 = zoomStartScale < a4;
  self->_lastVisibleRect.origin.x = x;
  self->_lastVisibleRect.origin.y = y;
  self->_lastVisibleRect.size.width = width;
  self->_lastVisibleRect.size.height = height;
  self->_lastZoomScale = a4;
  self->_lastAboveZoomThreshold = v21;
  v22 = v21 != lastAboveZoomThreshold || v15;
  if (v17 || (v22 & 1) != 0)
  {
    add = atomic_fetch_add(&self->_requestID, 1u);
    if (zoomStartScale >= a4)
    {
      updateQueue = self->_updateQueue;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __69__CMPhotoTiledLayer_setVisibleRectangle_zoomScale_completionHandler___block_invoke;
      v28[3] = &unk_1E77A2620;
      v28[4] = self;
      block = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __CMPhotoDispatchAsync_block_invoke;
      v32 = &unk_1E77A2D78;
      v33 = v28;
    }

    else
    {
      if (self->_err)
      {
        return;
      }

      updateQueue = self->_updateQueue;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __69__CMPhotoTiledLayer_setVisibleRectangle_zoomScale_completionHandler___block_invoke_2;
      v25[3] = &unk_1E77A2D50;
      *&v25[6] = x;
      *&v25[7] = y;
      *&v25[8] = width;
      *&v25[9] = height;
      *&v25[10] = a4;
      v26 = v14;
      v27 = add + 1;
      v25[4] = self;
      v25[5] = a5;
      block = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __CMPhotoDispatchAsync_block_invoke;
      v32 = &unk_1E77A2D78;
      v33 = v25;
    }
  }

  else
  {
    if (!a5)
    {
      return;
    }

    block = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __CMPhotoDispatchAsync_block_invoke;
    v32 = &unk_1E77A2D78;
    v33 = a5;
    updateQueue = MEMORY[0x1E69E96A0];
  }

  dispatch_async(updateQueue, &block);
}

- (void)setFlexGTCColorSpace:(CGColorSpace *)a3
{
  colorSpaceFlexGTC = self->_colorSpaceFlexGTC;
  if (colorSpaceFlexGTC)
  {
    CFRelease(colorSpaceFlexGTC);
  }

  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_colorSpaceFlexGTC = v6;
}

- (void)setDecodeToHDROutputMode:(int)a3
{
  self->_decodeToHDROutputMode = a3;
  v3 = (a3 - 1) < 5 && ((0x1Du >> (a3 - 1)) & 1) != 0 || self->_isHDRFile;
  self->_isHDROutput = v3;
}

- (void)sizeToFit
{
  [(CMPhotoTiledLayer *)self frame];
  v4 = v3;
  [(CMPhotoTiledLayer *)self frame];

  [(CMPhotoTiledLayer *)self setFrame:v4];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CMPhotoTiledLayer)initWithContainer:(id)a3 containerImageIndex:(int64_t)a4 backgroundImageSize:(CGSize)a5 screenSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = a5.height;
  v10 = a5.width;
  v78[4] = *MEMORY[0x1E69E9840];
  cf = 0;
  theDict = 0;
  v74.receiver = self;
  v74.super_class = CMPhotoTiledLayer;
  v12 = [(CMPhotoTiledLayer *)&v74 init];
  v15 = v12;
  if (!v12)
  {
    v28 = 1;
    goto LABEL_72;
  }

  if (!CMPhotoDecompressionDetectContainerFormat(a3, &v12->_containerFormat, v13, v14) || (v15->_hasExtendedColorDisplay = MGGetBoolAnswer(), v15->_imageIndex = a4, v15->_decodePixelFormat = 875704422, v15->_chromaSubsampling = 0, v15->_decodeToHDROutputMode = 0, v15->_decodeToHDROutputModePreferMeteor = 0, v16 = dispatch_queue_create("com.apple.coremedia.tiledlayer.update", 0), v15->_updateQueue = v16, dispatch_queue_set_specific(v16, kUpdateQueueID, kUpdateQueueID, 0), v15->_schedulingQueue = dispatch_queue_create("com.apple.CMPhoto.tiledlayer.scheduling", 0), v17 = *MEMORY[0x1E695E480], CMPhotoDecompressionSessionCreate(*MEMORY[0x1E695E480], 0, &v15->_decodeSession)) || CMPhotoDecompressionSessionCreateContainer(v15->_decodeSession, 0, a3, 0, &v15->_container) || (v73 = 0uLL, v72 = 0, v18 = OUTLINED_FUNCTION_1_23(), CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v18), v19))
  {
    v28 = 0;
    goto LABEL_72;
  }

  p_width = &v15->_imageSize.width;
  v15->_imageSize = vcvtq_f64_u64(v73);
  v15->_imageOrientation = v72;
  v21 = OUTLINED_FUNCTION_1_23();
  CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions(v21);
  v71 = 0;
  v22 = OUTLINED_FUNCTION_1_23();
  CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions(v22, v23, 0, &v71);
  if (v24)
  {
    goto LABEL_69;
  }

  if (v71 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = OUTLINED_FUNCTION_1_23();
      CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions(v26);
      if (v27)
      {
        goto LABEL_69;
      }
    }

    while (++v25 < v71);
  }

  v29 = OUTLINED_FUNCTION_1_23();
  CMPhotoDecompressionContainerCopyCGColorSpaceForIndexWithOptions(v29);
  if (v30)
  {
    v31 = v30 == -16993;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    if (!cf || v15->_hasAlpha)
    {
      v32 = 0;
LABEL_25:
      v34 = OUTLINED_FUNCTION_1_23();
      CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions(v34);
      if (!v35)
      {
        v36 = width * height >= 1000000.0 ? 512.0 : 256.0;
        v37 = &v15->_tileSize.width;
        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E696DF28]);
        if (Value)
        {
          v39 = Value;
          v40 = CFDictionaryGetValue(Value, *MEMORY[0x1E696DF78]);
          v41 = CFDictionaryGetValue(v39, *MEMORY[0x1E696DF70]);
          v42 = v17;
          if (v40 && (v43 = v41) != 0)
          {
            v44 = [v40 integerValue];
            v45 = [v43 integerValue];
            v46 = v45;
            if (v36 > v44)
            {
              v44 = (floor(v36 / v44) + 1.0) * v44;
            }

            v36 = v36 <= v46 ? v45 : (floor(v36 / v46) + 1.0) * v46;
          }

          else
          {
            v44 = v36;
          }
        }

        else
        {
          v44 = v36;
          v42 = v17;
        }

        *v37 = v44;
        v15->_tileSize.height = v36;
        v47 = width / (v44 * 0.5) + 1;
        v48 = v47 + v47 * (height / (v36 * 0.5));
        v49 = (v48 / 4 + v48) / 10 + v48 / 4 + v48;
        v51 = *p_width;
        v50 = v15->_imageSize.height;
        v52 = (v36 * v44);
        if (v15->_decodePixelFormat == 875704422)
        {
          v53 = 3 * v52 / 2;
          v54 = (v51 * v50);
          v55 = 3 * v54 / 2;
        }

        else
        {
          v53 = 4 * v52;
          v54 = (v51 * v50);
          v55 = 4 * v54;
        }

        v56 = v53 * v49;
        if (v51 <= v50)
        {
          v57 = v15->_imageSize.height;
        }

        else
        {
          v57 = *p_width;
        }

        v59 = v57 >= 4096.0 || v56 < v55;
        v60 = v32 | v59;
        if (v32 && !v59)
        {
          if (v15->_conversionPixelFormat == 875704422)
          {
            v61 = 3 * v54 / 2;
          }

          else
          {
            v61 = 4 * v54;
          }

          v60 = v56 < v61 + v55;
        }

        if (width >= height)
        {
          v62 = height;
        }

        else
        {
          v62 = width;
        }

        v63 = v57 / v62;
        v15->_shouldTile = (v63 > 2.0) | v60 & 1;
        if (!((v63 > 2.0) | v60 & 1))
        {
          if (v44 > v51)
          {
            v51 = v44;
          }

          if (v36 > v50)
          {
            v50 = v36;
          }

          *v37 = v51;
          v15->_tileSize.height = v50;
          v49 = 1;
        }

        v77[0] = @"HighWaterBytes";
        v77[1] = @"LowWaterBytes";
        v78[0] = &unk_1F194A1E0;
        v78[1] = &unk_1F194A1E0;
        v77[2] = @"HighWaterBufferCount";
        v78[2] = [MEMORY[0x1E696AD98] numberWithInt:{(2 * v49 + 50), v17}];
        v77[3] = @"LowWaterBufferCount";
        v78[3] = [MEMORY[0x1E696AD98] numberWithInt:(2 * v49)];
        if (!CMPhotoSurfacePoolCreate(v42, [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:4], &v15->_surfacePool) && !CMPhotoDecompressionSessionSetSurfacePool(v15->_decodeSession, v15->_surfacePool))
        {
          [(CMPhotoTiledLayer *)v15 setFrame:0.0, 0.0, *p_width, v15->_imageSize.height];
          if (!CMPhotoCacheCreate(v42, v49, &v15->_tileCache))
          {
            v15->_visibleTileKeys = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
            v15->_subLayers = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
            v15->_zoomLevel = -1;
            v15->_lock._os_unfair_lock_opaque = 0;
            [(CMPhotoTiledLayer *)v15 _zoomStartScaleForImage:*p_width placeholderImageSize:v15->_imageSize.height, v10, v9];
            v15->_zoomStartScale = v64;
            v65 = *(MEMORY[0x1E695F050] + 16);
            v15->_lastVisibleRect.origin = *MEMORY[0x1E695F050];
            v15->_lastVisibleRect.size = v65;
            v15->_lastAboveZoomThreshold = 0;
            v15->_showTileBorders = 0;
            v28 = 1;
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    v33 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v33 && (CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      if (v15->_hasExtendedColorDisplay)
      {
        if (CGColorSpaceUsesITUR_2100TF(cf))
        {
          if (_getEnableHDRPreferences_onceToken != -1)
          {
            dispatch_once(&_getEnableHDRPreferences_onceToken, &__block_literal_global_220);
          }

          v32 = 0;
          chromaSubsampling = v15->_chromaSubsampling;
          if (chromaSubsampling == 3)
          {
            v68 = 2019963442;
          }

          else
          {
            v68 = 2019963440;
          }

          v31 = chromaSubsampling == 1;
          v69 = 2019963956;
          if (!v31)
          {
            v69 = v68;
          }

          v15->_decodePixelFormat = v69;
          v15->_isHDRFile = 1;
          v15->_isHDROutput = 1;
          goto LABEL_24;
        }
      }

      else
      {
        [(CMPhotoTiledLayer *)v15 _setupConverterForSourceColorSpace:cf destinationColorSpace:v33];
        if (v15->_metalConverter || v15->_vimageConverter)
        {
          v15->_decodePixelFormat = 1111970369;
          if (v15->_hasExtendedColorDisplay)
          {
            v70 = 1999843442;
          }

          else
          {
            v70 = 1111970369;
          }

          v15->_conversionPixelFormat = v70;
          v32 = 1;
          goto LABEL_24;
        }
      }
    }

    v32 = 0;
LABEL_24:
    CGColorSpaceRelease(v33);
    goto LABEL_25;
  }

LABEL_69:
  v28 = 0;
LABEL_70:
  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_72:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v28 & 1) == 0)
  {

    return 0;
  }

  return v15;
}

void __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, __CVBuffer *a6)
{
  if (!a4 && a5 == 2)
  {
    CMPhotoGetPixelBufferCLAPAsRect(a6);
    if (*(*(a1 + 32) + 152) != 1 || !CMPhotoPixelBufferPremultiplyWithAlpha(a6))
    {
      IOSurface = CVPixelBufferGetIOSurface(a6);
      if (IOSurface)
      {
        IOSurfaceIncrementUseCount(IOSurface);
        v9 = *(a1 + 32);
        if (*(v9 + 136))
        {
          v10 = OUTLINED_FUNCTION_0_5();
          [v11 _runMetalConversionOnSurface:v10 cropRect:? completionHandler:?];
        }

        else if (*(v9 + 144))
        {
          v12 = OUTLINED_FUNCTION_0_5();
          [v13 _runVImageConversionOnSurface:v12 cropRect:? completionHandler:?];
        }

        else
        {
          v14 = OUTLINED_FUNCTION_0_5();
          v15(v14);
        }
      }
    }
  }

  v16 = *(*(a1 + 32) + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CMPhotoTiledLayer__decodeImageRectangle_forLevel_zoomScale_requestId_completionHandler___block_invoke_4;
  block[3] = &unk_1E77A2C88;
  v18 = *(a1 + 48);
  v19 = *(a1 + 64);
  dispatch_sync(v16, block);
}

@end