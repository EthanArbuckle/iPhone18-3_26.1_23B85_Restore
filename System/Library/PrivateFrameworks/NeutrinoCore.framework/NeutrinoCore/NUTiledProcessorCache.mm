@interface NUTiledProcessorCache
- (NUTiledProcessorCache)initWithImage:(id)image;
- (void)_render:(id)_render;
@end

@implementation NUTiledProcessorCache

- (void)_render:(id)_render
{
  _renderCopy = _render;
  inputImage = [(NUProcessorCache *)self inputImage];
  [inputImage extent];
  v52.origin.x = v6;
  v52.origin.y = v7;
  v52.size.width = v8;
  v52.size.height = v9;
  NU::RectT<long>::RectT(&v56, &v52, 3);
  size = v56.size;
  origin = v56.origin;

  metalCommandBuffer = [_renderCopy metalCommandBuffer];
  device = [metalCommandBuffer device];
  v12 = +[NUPlatform currentPlatform];
  v13 = [v12 deviceForMetalDevice:device];

  [_renderCopy region];
  v52.origin.x = v14;
  v52.origin.y = v15;
  v52.size.width = v16;
  v52.size.height = v17;
  NU::RectT<long>::RectT(&v56, &v52, 3);
  v29 = v56.size;
  v30 = v56.origin;
  v52 = v56;
  v56.origin = origin;
  v56.size = size;
  NU::RectT<long>::Intersection(&v55, &v52, &v56);
  v27 = v55.size;
  v28 = v55.origin;
  v52 = v55;
  v18 = [NURegion regionWithRect:&v52];
  v56.origin.x = 0.0;
  *&v56.origin.y = &v56;
  v56.size = 0x2020000000uLL;
  v52.origin.x = 0.0;
  *&v52.origin.y = &v52;
  *&v52.size.width = 0x3032000000;
  *&v52.size.height = __Block_byref_object_copy__18207;
  v53 = __Block_byref_object_dispose__18208;
  v19 = v18;
  v54 = v19;
  textureCacheQueue = self->super._textureCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__NUTiledProcessorCache__render___block_invoke;
  block[3] = &unk_1E810AAC0;
  block[4] = self;
  v46 = origin;
  v47 = size;
  v21 = device;
  v39 = v21;
  v22 = v19;
  v40 = v22;
  v23 = _renderCopy;
  v41 = v23;
  v48 = v28;
  v49 = v27;
  v50 = v30;
  v51 = v29;
  v24 = v13;
  v42 = v24;
  v25 = metalCommandBuffer;
  v43 = v25;
  v44 = &v52;
  v45 = &v56;
  dispatch_sync(textureCacheQueue, block);
  if (![*(*&v52.origin.y + 40) isEmpty])
  {
    [v25 encodeWaitForEvent:self->super._textureCachedEvent value:*(*&v56.origin.y + 24)];
    cachedTiledImage = self->_cachedTiledImage;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __33__NUTiledProcessorCache__render___block_invoke_2;
    v33[3] = &unk_1E810AA98;
    v36 = v30;
    v37 = v29;
    v34 = v23;
    v35 = v25;
    [(NUMutablePurgeableSurfaceImage *)cachedTiledImage readTextureRegion:v22 device:v24 withBlock:v33];
  }

  [(NUMutablePurgeableSurfaceImage *)self->_cachedTiledImage endAccessRegion:v22];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
}

void __33__NUTiledProcessorCache__render___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    v4 = [NUImageLayout tiledLayoutForImageSize:*(a1 + 112) tileSize:*(a1 + 120), v2[9], v2[10]];
    v5 = [*(a1 + 32) pixelFormat];
    v6 = [NUImageFactory surfaceImageWithLayout:v4 format:v5 colorSpace:*(*(a1 + 32) + 88)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;

    v9 = [*(a1 + 40) newEvent];
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = v9;

    [*(*(a1 + 32) + 64) endAccess];
    v3 = *(*(a1 + 32) + 64);
  }

  [v3 beginAccessRegion:*(a1 + 48)];
  v12 = [*(a1 + 48) mutableCopy];
  v13 = [*(*(a1 + 32) + 64) validRegion];
  v14 = [v12 regionByRemovingRegion:v13];

  if (![v14 isEmpty])
  {
    v15 = objc_alloc(MEMORY[0x1E695F678]);
    v16 = [*(a1 + 56) metalTexture];
    v17 = [v15 initWithMTLTexture:v16 commandBuffer:0];

    [v17 setFlipped:1];
    [v17 setColorSpace:0];
    [v17 setAlphaMode:0];
    v18 = *(a1 + 128);
    v19 = *(a1 + 136);
    v20 = v18;
    v21 = v19;
    v22 = *(a1 + 144);
    v23 = *(a1 + 152);
    v24 = (v18 - *(a1 + 160));
    v25 = (v19 - *(a1 + 168));
    v26 = [*(a1 + 56) metalContext];
    v27 = [*(a1 + 32) inputImage];
    v42 = 0;
    v28 = [v26 startTaskToRender:v27 fromRect:v17 toDestination:&v42 atPoint:v20 error:{v21, v22, v23, v24, v25}];
    v29 = v42;

    if (!v28)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_102);
      }

      v30 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v29;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "NUTiledProcessorCache: failed to render: %@", buf, 0xCu);
      }
    }

    v31 = *(*(a1 + 32) + 64);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __33__NUTiledProcessorCache__render___block_invoke_69;
    v37[3] = &unk_1E810AA98;
    v32 = *(a1 + 176);
    v40 = *(a1 + 160);
    v41 = v32;
    v33 = *(a1 + 64);
    v38 = *(a1 + 56);
    v39 = *(a1 + 72);
    [v31 writeTextureRegion:v14 device:v33 withBlock:v37];
    [*(a1 + 72) encodeSignalEvent:*(*(a1 + 32) + 24) value:++*(*(a1 + 32) + 96)];
    v34 = +[NURegion region];
    v35 = *(*(a1 + 80) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;
  }

  *(*(*(a1 + 88) + 8) + 24) = *(*(a1 + 32) + 96);
}

void __33__NUTiledProcessorCache__render___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v6 = 0uLL;
  if (v3)
  {
    [v3 frameRect];
    v6 = v18;
    v5 = v19;
  }

  v7 = *(a1 + 64);
  v15 = *(a1 + 48);
  *v16 = v7;
  v22 = v6;
  v23 = v5;
  NU::RectT<long>::Intersection(&v20, &v15, &v22);
  v14 = v21;
  v8 = vaddq_s64(v20, v21);
  *&v9 = v20.i64[0] - v18;
  *(&v9 + 1) = *(&v19 + 1) + *(&v18 + 1) - v8.i64[1];
  v12 = v9;
  *&v9 = v20.i64[0] - *(a1 + 48);
  *(&v9 + 1) = *(a1 + 72) + *(a1 + 56) - v8.i64[1];
  v13 = v9;
  v10 = [v4 texture];
  v15 = v12;
  *v16 = 0;
  *&v16[8] = v14;
  v17 = 1;
  v11 = [*(a1 + 32) metalTexture];
  v22 = v13;
  *&v23 = 0;
  [NUCopyKernel copyFromTexture:v10 region:&v15 toTexture:v11 atPoint:&v22 withCommandBuffer:*(a1 + 40)];
}

void __33__NUTiledProcessorCache__render___block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v6 = 0uLL;
  if (v3)
  {
    [v3 frameRect];
    v6 = v18;
    v5 = v19;
  }

  v7 = *(a1 + 64);
  v15 = *(a1 + 48);
  *v16 = v7;
  v22 = v6;
  v23 = v5;
  NU::RectT<long>::Intersection(&v20, &v15, &v22);
  v14 = v21;
  v8 = vaddq_s64(v20, v21);
  *&v9 = v20.i64[0] - v18;
  *(&v9 + 1) = *(&v19 + 1) + *(&v18 + 1) - v8.i64[1];
  v13 = v9;
  *&v9 = v20.i64[0] - *(a1 + 48);
  *(&v9 + 1) = *(a1 + 72) + *(a1 + 56) - v8.i64[1];
  v12 = v9;
  v10 = [*(a1 + 32) metalTexture];
  v15 = v12;
  *v16 = 0;
  *&v16[8] = v14;
  v17 = 1;
  v11 = [v4 texture];
  v22 = v13;
  *&v23 = 0;
  [NUCopyKernel copyFromTexture:v10 region:&v15 toTexture:v11 atPoint:&v22 withCommandBuffer:*(a1 + 40)];
}

- (NUTiledProcessorCache)initWithImage:(id)image
{
  v7.receiver = self;
  v7.super_class = NUTiledProcessorCache;
  v3 = [(NUProcessorCache *)&v7 initWithImage:image];
  *(v3 + 72) = vdupq_n_s64(0x400uLL);
  v4 = +[NUColorSpace workingColorSpace];
  v5 = *(v3 + 11);
  *(v3 + 11) = v4;

  return v3;
}

@end