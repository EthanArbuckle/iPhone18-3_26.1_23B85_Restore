@interface NUImageRenderRequest
- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)tileSize;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_commonInit;
@end

@implementation NUImageRenderRequest

- ($0AC6E346AE4835514AAA8AC86D8F4844)borderSize
{
  p_borderSize = &self->_borderSize;
  width = self->_borderSize.width;
  height = p_borderSize->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)tileSize
{
  p_tileSize = &self->_tileSize;
  width = self->_tileSize.width;
  height = p_tileSize->height;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (NSString)description
{
  v16.receiver = self;
  v16.super_class = NUImageRenderRequest;
  v3 = [(NURenderRequest *)&v16 description];
  v4 = [(NUImageRenderRequest *)self colorSpace];
  [(NUImageRenderRequest *)self currentEDRHeadroom];
  v6 = v5;
  [(NUImageRenderRequest *)self maxEDRHeadroom];
  v8 = v7;
  v9 = [(NUImageRenderRequest *)self scalePolicy];
  v10 = [(NUImageRenderRequest *)self regionPolicy];
  v11 = [(NUImageRenderRequest *)self auxiliaryImageType];
  if (v11 > 0xB)
  {
    v12 = @"Invalid";
  }

  else
  {
    v12 = off_1E8109908[v11];
  }

  v13 = v12;
  v14 = [v3 stringByAppendingFormat:@" Color Space: %@ EDR: %.1f/%.1f, Scale: %@ Region: %@, Aux: %@", v4, v6, v8, v9, v10, v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NUImageRenderRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 20, self->_colorSpace);
    v5[21] = *&self->_maxEDRHeadroom;
    v5[22] = *&self->_currentEDRHeadroom;
    objc_storeStrong(v5 + 26, self->_pixelFormat);
    *(v5 + 29) = self->_tileSize;
    *(v5 + 31) = self->_borderSize;
    objc_storeStrong(v5 + 23, self->_regionPolicy);
    objc_storeStrong(v5 + 24, self->_scalePolicy);
    objc_storeStrong(v5 + 25, self->_extentPolicy);
    v5[27] = self->_auxiliaryImageType;
  }

  return v5;
}

- (void)_commonInit
{
  v16.receiver = self;
  v16.super_class = NUImageRenderRequest;
  [(NURenderRequest *)&v16 _commonInit];
  v3 = +[NUColorSpace sRGBColorSpace];
  colorSpace = self->_colorSpace;
  self->_colorSpace = v3;

  self->_maxEDRHeadroom = 1.0;
  self->_currentEDRHeadroom = 1.0;
  v5 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v5;

  v7 = objc_alloc_init(NUFullExtentRegionPolicy);
  regionPolicy = self->_regionPolicy;
  self->_regionPolicy = v7;

  v9 = objc_alloc_init(NUFullExtentPolicy);
  extentPolicy = self->_extentPolicy;
  self->_extentPolicy = v9;

  v11 = +[NUPixelFormat BGRA8];
  pixelFormat = self->_pixelFormat;
  self->_pixelFormat = v11;

  v13 = +[NUGlobalSettings imageTileSize];
  if (v13 < 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [v14 handleFailureInFunction:v15 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  self->_tileSize.width = v13;
  self->_tileSize.height = v13;
  self->_auxiliaryImageType = 1;
}

@end