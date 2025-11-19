@interface NUTiledProviderCache
- (NUTiledProviderCache)initWithImage:(id)a3;
- (void)provideImageData:(void *)a3 bytesPerRow:(unint64_t)a4 origin:(unint64_t)a5 :(unint64_t)a6 size:(unint64_t)a7 :(unint64_t)a8 userInfo:(id)a9;
@end

@implementation NUTiledProviderCache

- (void)provideImageData:(void *)a3 bytesPerRow:(unint64_t)a4 origin:(unint64_t)a5 :(unint64_t)a6 size:(unint64_t)a7 :(unint64_t)a8 userInfo:(id)a9
{
  v16 = [(NUProcessorCache *)self pixelFormat];
  v17 = [v16 CIFormat];

  v18 = [(NUProcessorCache *)self inputImage];
  [v18 extent];
  v52.origin.x = v19;
  v52.origin.y = v20;
  v52.size.width = v21;
  v52.size.height = v22;
  NU::RectT<long>::RectT(&v56, &v52, 3);
  v30 = v57;
  v31 = v56;

  *&v23.x = a5;
  *&v23.y = a6;
  *&v24.width = a7;
  *&v24.height = a8;
  v52.origin = v23;
  v52.size = v24;
  v56 = v31;
  v57 = v30;
  NU::RectT<long>::Intersection(&v55, &v52, &v56);
  size = v55.size;
  origin = v55.origin;
  v52 = v55;
  v25 = [NURegion regionWithRect:&v52];
  v52.origin.x = 0.0;
  *&v52.origin.y = &v52;
  *&v52.size.width = 0x3032000000;
  *&v52.size.height = __Block_byref_object_copy__18207;
  v53 = __Block_byref_object_dispose__18208;
  v54 = v25;
  textureCacheQueue = self->super.super._textureCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__NUTiledProviderCache_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke;
  block[3] = &unk_1E810AAE8;
  v35 = v31;
  v36 = v30;
  block[4] = self;
  v33 = v54;
  v37 = a3;
  v38 = a7;
  v39 = a8;
  v40 = a4;
  v51 = v17;
  v41 = origin;
  v42 = size;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v34 = &v52;
  v27 = v54;
  dispatch_sync(textureCacheQueue, block);

  _Block_object_dispose(&v52, 8);
}

void __76__NUTiledProviderCache_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (!v3)
  {
    v4 = [NUImageLayout tiledLayoutForImageSize:*(a1 + 72) tileSize:*(a1 + 80), v2[10], v2[11]];
    v5 = [*(a1 + 32) pixelFormat];
    v6 = [NUImageFactory bufferImageWithLayout:v4 format:v5 colorSpace:*(*(a1 + 32) + 96)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    v3 = *(*(a1 + 32) + 72);
  }

  [v3 beginAccessRegion:*(a1 + 40)];
  v9 = [*(a1 + 40) mutableCopy];
  v10 = [*(*(a1 + 32) + 72) validRegion];
  v11 = [v9 regionByRemovingRegion:v10];

  if ([v11 isEmpty])
  {
    v12 = *(*(a1 + 32) + 72);
    v13 = *(a1 + 88);
    v14 = *(a1 + 112);
    v15 = *(a1 + 200);
    *buf = *(a1 + 184);
    v43 = v15;
    [NUImageUtilities copyPixelsFromImage:v12 rect:buf destPtr:v13 destPtrRowBytes:v14];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E695F678]) initWithBitmapData:*(a1 + 88) width:*(a1 + 96) height:*(a1 + 104) bytesPerRow:*(a1 + 112) format:*(a1 + 216)];
    [v16 setFlipped:0];
    [v16 setColorSpace:0];
    [v16 setAlphaMode:0];
    v17 = *(a1 + 120);
    v18 = *(a1 + 128);
    v19 = v17;
    v20 = v18;
    v21 = *(a1 + 136);
    v22 = (v17 - *(a1 + 152));
    v23 = (v18 - *(a1 + 160));
    v24 = *(a1 + 144);
    v25 = *(a1 + 32);
    v26 = v25[8];
    v27 = [v25 inputImage];
    v41 = 0;
    v28 = [v26 startTaskToRender:v27 fromRect:v16 toDestination:&v41 atPoint:v19 error:{v20, v21, v24, v22, v23}];
    v29 = v41;

    v40 = v29;
    v30 = [v28 waitUntilCompletedAndReturnError:&v40];
    v31 = v40;

    if (!v30)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_102);
      }

      v32 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v31;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "NUTiledProviderCache: failed to render: %@", buf, 0xCu);
      }
    }

    v33 = *(*(a1 + 32) + 72);
    v34 = *(a1 + 88);
    v35 = *(a1 + 112);
    v36 = *(a1 + 200);
    *buf = *(a1 + 184);
    v43 = v36;
    [NUImageUtilities copyPixelsToImage:v33 rect:buf srcPtr:v34 srcPtrRowBytes:v35];
    v37 = +[NURegion region];
    v38 = *(*(a1 + 48) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;
  }

  [*(*(a1 + 32) + 72) endAccessRegion:*(a1 + 40)];
}

- (NUTiledProviderCache)initWithImage:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NUTiledProviderCache;
  v3 = [(NUProcessorCache *)&v11 initWithImage:a3];
  v3->_tileSize = vdupq_n_s64(0x400uLL);
  v4 = +[NUColorSpace workingColorSpace];
  colorSpace = v3->_colorSpace;
  v3->_colorSpace = v4;

  v6 = MEMORY[0x1E695F620];
  v12 = *MEMORY[0x1E695F7F0];
  v13[0] = MEMORY[0x1E695E110];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [v6 contextWithOptions:v7];
  ctx = v3->super._ctx;
  v3->super._ctx = v8;

  return v3;
}

@end