@interface NUPixelBuffer
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)privateInit;
- (void)dealloc;
@end

@implementation NUPixelBuffer

- (id)debugQuickLookObject
{
  v3 = [(NUPixelBuffer *)self size];
  v5 = [NUImageLayout contiguousLayoutForImageSize:v3, v4];
  format = [(NUPixelBuffer *)self format];
  v7 = +[NUColorSpace genericRGBLinearColorSpace];
  v8 = [NUImageFactory bufferImageWithLayout:v5 format:format colorSpace:v7];

  v12[0] = 0;
  v12[1] = 0;
  v12[2] = [(NUPixelBuffer *)self size];
  v12[3] = v9;
  [NUImageUtilities copyPixelsToImage:v8 atPoint:0 fromBuffer:0 inRect:self, v12];
  v10 = [NUImageFactory newCIImageFromBufferImage:v8];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NUMutablePixelBuffer alloc];
  v5 = [(NUPixelBuffer *)self size];
  v7 = v6;
  format = [(NUPixelBuffer *)self format];
  v9 = [(NUMutablePixelBuffer *)v4 initWithSize:v5 format:v7, format];

  storage = v9->_storage;
  v11 = self->_storage;
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = [(NUPixelBuffer *)self size];
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
  v8 = [(NUPixelBuffer *)self size];
  v10 = v9;
  format = [(NUPixelBuffer *)self format];
  v12 = [bufferFactory newStorageWithSize:v8 format:{v10, format}];
  v13 = *(privateInit + 8);
  *(privateInit + 8) = v12;

  v14 = *(privateInit + 8);
  storage = self->_storage;
  v26[0] = 0;
  v26[1] = 0;
  v26[2] = [(NUPixelBuffer *)self size];
  v26[3] = v16;
  v17 = [NURegion regionWithRect:v26];
  [v14 copyFromStorage:storage region:v17];

  v18 = [NUBufferAdapter alloc];
  v19 = [(NUPixelBuffer *)self size];
  v21 = v20;
  format2 = [(NUPixelBuffer *)self format];
  v23 = -[NUBufferAdapter initWithSize:format:rowBytes:bytes:](v18, "initWithSize:format:rowBytes:bytes:", v19, v21, format2, [*(privateInit + 8) rowBytes], objc_msgSend(*(privateInit + 8), "bytes"));
  v24 = *(privateInit + 16);
  *(privateInit + 16) = v23;

  return privateInit;
}

- (id)privateInit
{
  v4.receiver = self;
  v4.super_class = NUPixelBuffer;
  v2 = [(NUPixelBuffer *)&v4 init];

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
  v7.super_class = NUPixelBuffer;
  [(NUPixelBuffer *)&v7 dealloc];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  v2 = [(NUBuffer *)self->_buffer size];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end