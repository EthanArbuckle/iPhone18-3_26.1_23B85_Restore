@interface MADVideoSessionPixelBufferAsset
+ (id)assetWithPixelBuffer:(__CVBuffer *)a3 frameProperties:(id)a4;
- (MADVideoSessionPixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 regionOfInterest:(CGRect)a5 timestamp:(id *)a6;
- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4 regionOfInterest:(CGRect *)a5;
@end

@implementation MADVideoSessionPixelBufferAsset

- (MADVideoSessionPixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 regionOfInterest:(CGRect)a5 timestamp:(id *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18.receiver = self;
  v18.super_class = MADVideoSessionPixelBufferAsset;
  v13 = [(MADVideoSessionPixelBufferAsset *)&v18 init];
  if (v13)
  {
    if (a3)
    {
      v14 = CFRetain(a3);
    }

    else
    {
      v14 = 0;
    }

    v17 = v14;
    CF<__CVBuffer *>::operator=(v13 + 1, &v17);
    CF<__CVBuffer *>::~CF(&v17);
    *(v13 + 4) = a4;
    *(v13 + 3) = x;
    *(v13 + 4) = y;
    *(v13 + 5) = width;
    *(v13 + 6) = height;
    v15 = *&a6->var0;
    *(v13 + 9) = a6->var3;
    *(v13 + 56) = v15;
  }

  return v13;
}

+ (id)assetWithPixelBuffer:(__CVBuffer *)a3 frameProperties:(id)a4
{
  v5 = a4;
  v6 = [MADVideoSessionPixelBufferAsset alloc];
  v7 = [v5 orientation];
  [v5 regionOfInterest];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v5)
  {
    [v5 timestamp];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v16 = [(MADVideoSessionPixelBufferAsset *)v6 initWithPixelBuffer:a3 orientation:v7 regionOfInterest:v18 timestamp:v9, v11, v13, v15];

  return v16;
}

- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4 regionOfInterest:(CGRect *)a5
{
  value = self->_pixelBuffer.value_;
  if (value)
  {
    value = CFRetain(value);
  }

  *a3 = value;
  *a4 = self->_orientation;
  size = self->_regionOfInterest.size;
  a5->origin = self->_regionOfInterest.origin;
  a5->size = size;
  return 0;
}

@end