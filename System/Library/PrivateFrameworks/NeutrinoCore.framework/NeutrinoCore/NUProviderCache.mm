@interface NUProviderCache
- (id)outputImage;
- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info;
@end

@implementation NUProviderCache

- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info
{
  v33 = *MEMORY[0x1E69E9840];
  pixelFormat = [(NUProcessorCache *)self pixelFormat];
  cIFormat = [pixelFormat CIFormat];

  textureCacheQueue = self->super._textureCacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NUProviderCache_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(textureCacheQueue, block);
  v19 = [objc_alloc(MEMORY[0x1E695F678]) initWithBitmapData:data width:size height:a8 bytesPerRow:row format:cIFormat];
  [v19 setFlipped:0];
  colorSpace = [(NUProcessorCache *)self colorSpace];
  [v19 setColorSpace:{objc_msgSend(colorSpace, "CGColorSpace")}];

  [v19 setAlphaMode:0];
  ctx = self->_ctx;
  inputImage = [(NUProcessorCache *)self inputImage];
  v29 = 0;
  v23 = [(CIContext *)ctx startTaskToRender:inputImage fromRect:v19 toDestination:&v29 atPoint:origin error:a6, size, a8, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v24 = v29;

  v28 = v24;
  v25 = [v23 waitUntilCompletedAndReturnError:&v28];
  v26 = v28;

  if (!v25)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_102);
    }

    v27 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v26;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "NUProviderCache: failed to render: %@", buf, 0xCu);
    }
  }
}

void __71__NUProviderCache_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 64))
  {
    v2 = MEMORY[0x1E695F620];
    v7 = *MEMORY[0x1E695F7F0];
    v8[0] = MEMORY[0x1E695E110];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [v2 contextWithOptions:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;
  }
}

- (id)outputImage
{
  v24[4] = *MEMORY[0x1E69E9840];
  inputImage = [(NUProcessorCache *)self inputImage];
  [inputImage extent];
  v22.origin.x = v4;
  v22.origin.y = v5;
  v22.size.width = v6;
  v22.size.height = v7;
  NU::RectT<long>::RectT(&v20, &v22, 3);
  v19 = v21;

  pixelFormat = [(NUProcessorCache *)self pixelFormat];
  cIFormat = [pixelFormat CIFormat];

  colorSpace = [(NUProcessorCache *)self colorSpace];
  cGColorSpace = [colorSpace CGColorSpace];

  v12 = objc_alloc(MEMORY[0x1E695F658]);
  v23[0] = *MEMORY[0x1E695F9F0];
  label = [(NUProcessorCache *)self label];
  v14 = *MEMORY[0x1E695F9F8];
  v24[0] = label;
  v24[1] = &unk_1F3F826F8;
  v15 = *MEMORY[0x1E695F9B8];
  v23[1] = v14;
  v23[2] = v15;
  v23[3] = *MEMORY[0x1E695F940];
  v24[2] = MEMORY[0x1E695E110];
  v24[3] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v17 = [v12 initWithImageProvider:self size:v19 :cIFormat format:cGColorSpace colorSpace:v16 options:?];

  return v17;
}

@end