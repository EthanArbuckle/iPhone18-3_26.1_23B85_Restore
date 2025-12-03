@interface MADVideoSessionPixelBufferAsset
+ (id)assetWithPixelBuffer:(__CVBuffer *)buffer frameProperties:(id)properties;
- (MADVideoSessionPixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest timestamp:(id *)timestamp;
- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation regionOfInterest:(CGRect *)interest;
@end

@implementation MADVideoSessionPixelBufferAsset

- (MADVideoSessionPixelBufferAsset)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest timestamp:(id *)timestamp
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v18.receiver = self;
  v18.super_class = MADVideoSessionPixelBufferAsset;
  v13 = [(MADVideoSessionPixelBufferAsset *)&v18 init];
  if (v13)
  {
    if (buffer)
    {
      v14 = CFRetain(buffer);
    }

    else
    {
      v14 = 0;
    }

    v17 = v14;
    CF<__CVBuffer *>::operator=(v13 + 1, &v17);
    CF<__CVBuffer *>::~CF(&v17);
    *(v13 + 4) = orientation;
    *(v13 + 3) = x;
    *(v13 + 4) = y;
    *(v13 + 5) = width;
    *(v13 + 6) = height;
    v15 = *&timestamp->var0;
    *(v13 + 9) = timestamp->var3;
    *(v13 + 56) = v15;
  }

  return v13;
}

+ (id)assetWithPixelBuffer:(__CVBuffer *)buffer frameProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = [MADVideoSessionPixelBufferAsset alloc];
  orientation = [propertiesCopy orientation];
  [propertiesCopy regionOfInterest];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (propertiesCopy)
  {
    [propertiesCopy timestamp];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v16 = [(MADVideoSessionPixelBufferAsset *)v6 initWithPixelBuffer:buffer orientation:orientation regionOfInterest:v18 timestamp:v9, v11, v13, v15];

  return v16;
}

- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation regionOfInterest:(CGRect *)interest
{
  value = self->_pixelBuffer.value_;
  if (value)
  {
    value = CFRetain(value);
  }

  *buffer = value;
  *orientation = self->_orientation;
  size = self->_regionOfInterest.size;
  interest->origin = self->_regionOfInterest.origin;
  interest->size = size;
  return 0;
}

@end