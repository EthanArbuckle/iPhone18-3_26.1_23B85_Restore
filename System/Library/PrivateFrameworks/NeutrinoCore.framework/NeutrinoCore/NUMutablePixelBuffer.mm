@interface NUMutablePixelBuffer
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (NUMutablePixelBuffer)initWithSize:(id)size format:(id)format;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newRenderDestination;
- (id)privateInit;
- (void)dealloc;
@end

@implementation NUMutablePixelBuffer

- (id)debugQuickLookObject
{
  v3 = [(NUMutablePixelBuffer *)self size];
  v5 = [NUImageLayout contiguousLayoutForImageSize:v3, v4];
  format = [(NUMutablePixelBuffer *)self format];
  v7 = +[NUColorSpace genericRGBLinearColorSpace];
  v8 = [NUImageFactory bufferImageWithLayout:v5 format:format colorSpace:v7];

  v12[0] = 0;
  v12[1] = 0;
  v12[2] = [(NUMutablePixelBuffer *)self size];
  v12[3] = v9;
  [NUImageUtilities copyPixelsToImage:v8 atPoint:0 fromBuffer:0 inRect:self, v12];
  v10 = [NUImageFactory newCIImageFromBufferImage:v8];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NUMutablePixelBuffer alloc];
  v5 = [(NUMutablePixelBuffer *)self size];
  v7 = v6;
  format = [(NUMutablePixelBuffer *)self format];
  v9 = [(NUMutablePixelBuffer *)v4 initWithSize:v5 format:v7, format];

  storage = v9->_storage;
  v11 = self->_storage;
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = [(NUMutablePixelBuffer *)self size];
  v15[3] = v12;
  v13 = [NURegion regionWithRect:v15];
  [(_NUAbstractBufferStorage *)storage copyFromStorage:v11 region:v13];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NUPixelBuffer alloc];
  privateInit = [(NUPixelBuffer *)v4 privateInit];

  v6 = +[NUFactory sharedFactory];
  bufferFactory = [v6 bufferFactory];
  v8 = [(NUMutablePixelBuffer *)self size];
  v10 = v9;
  format = [(NUMutablePixelBuffer *)self format];
  v12 = [bufferFactory newStorageWithSize:v8 format:{v10, format}];
  v13 = *(privateInit + 8);
  *(privateInit + 8) = v12;

  v14 = *(privateInit + 8);
  storage = self->_storage;
  v26[0] = 0;
  v26[1] = 0;
  v26[2] = [(NUMutablePixelBuffer *)self size];
  v26[3] = v16;
  v17 = [NURegion regionWithRect:v26];
  [v14 copyFromStorage:storage region:v17];

  v18 = [NUBufferAdapter alloc];
  v19 = [(NUMutablePixelBuffer *)self size];
  v21 = v20;
  format2 = [(NUMutablePixelBuffer *)self format];
  v23 = -[NUBufferAdapter initWithSize:format:rowBytes:bytes:](v18, "initWithSize:format:rowBytes:bytes:", v19, v21, format2, [*(privateInit + 8) rowBytes], objc_msgSend(*(privateInit + 8), "bytes"));
  v24 = *(privateInit + 16);
  *(privateInit + 16) = v23;

  return privateInit;
}

- (id)newRenderDestination
{
  newRenderDestination = [(NUMutableBuffer *)self->_buffer newRenderDestination];
  [newRenderDestination setLabel:@"NUPixelBuffer-new"];
  return newRenderDestination;
}

- (id)privateInit
{
  v4.receiver = self;
  v4.super_class = NUMutablePixelBuffer;
  v2 = [(NUMutablePixelBuffer *)&v4 init];

  return v2;
}

- (void)dealloc
{
  v3 = +[NUFactory sharedFactory];
  bufferFactory = [v3 bufferFactory];
  [bufferFactory returnStorage:self->_storage];

  storage = self->_storage;
  self->_storage = 0;

  buffer = self->_buffer;
  self->_buffer = 0;

  v7.receiver = self;
  v7.super_class = NUMutablePixelBuffer;
  [(NUMutablePixelBuffer *)&v7 dealloc];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  v2 = [(NUMutableBuffer *)self->_buffer size];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NUMutablePixelBuffer)initWithSize:(id)size format:(id)format
{
  var1 = size.var1;
  var0 = size.var0;
  v37 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
  {
    v18 = NUAssertLogger_29205();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_29205();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMutablePixelBuffer initWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUPixelBuffer.m", 93, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "format != nil");
  }

  v8 = formatCopy;
  v34.receiver = self;
  v34.super_class = NUMutablePixelBuffer;
  v9 = [(NUMutablePixelBuffer *)&v34 init];
  v10 = +[NUFactory sharedFactory];
  bufferFactory = [v10 bufferFactory];
  v12 = [bufferFactory newStorageWithSize:var0 format:{var1, v8}];
  storage = v9->_storage;
  v9->_storage = v12;

  v14 = v9->_storage;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = var0;
  v36 = var1;
  [(_NUAbstractStorage *)v14 validateRect:buf];
  v15 = [[NUMutableBufferAdapter alloc] initWithSize:var0 format:var1 rowBytes:v8 mutableBytes:[(NUBufferStorage *)v9->_storage rowBytes], [(NUBufferStorage *)v9->_storage mutableBytes]];
  buffer = v9->_buffer;
  v9->_buffer = v15;

  return v9;
}

@end