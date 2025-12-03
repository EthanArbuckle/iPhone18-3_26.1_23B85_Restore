@interface CUICatalogCSIGenerator
- (CUICatalogCSIGenerator)initWithLayerStackData:(id)data type:(int64_t)type withCanvasSize:(CGSize)size isOpaque:(BOOL)opaque allowsWide:(BOOL)wide atScale:(int64_t)scale;
- (void)addLayerReference:(id)reference withImage:(CGImage *)image atScale:(int64_t)scale;
- (void)dealloc;
@end

@implementation CUICatalogCSIGenerator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUICatalogCSIGenerator;
  [(CSIGenerator *)&v3 dealloc];
}

- (CUICatalogCSIGenerator)initWithLayerStackData:(id)data type:(int64_t)type withCanvasSize:(CGSize)size isOpaque:(BOOL)opaque allowsWide:(BOOL)wide atScale:(int64_t)scale
{
  wideCopy = wide;
  opaqueCopy = opaque;
  height = size.height;
  width = size.width;
  v19.receiver = self;
  v19.super_class = CUICatalogCSIGenerator;
  v14 = [CSIGenerator initWithLayerStackData:sel_initWithLayerStackData_type_withCanvasSize_ type:data withCanvasSize:?];
  v15 = v14;
  if ((type - 1021) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [(CSIGenerator *)v14 setScaleFactor:scale];
    v16 = [[CSIBitmapWrapper alloc] initWithPixelWidth:(width * scale) pixelHeight:(height * scale)];
    v17 = v16;
    if (opaqueCopy)
    {
      [(CSIBitmapWrapper *)v16 setSourceAlphaInfo:6];
    }

    if (wideCopy)
    {
      [(CSIBitmapWrapper *)v17 setPixelFormat:1380401751];
      [(CSIBitmapWrapper *)v17 setColorSpaceID:4];
    }

    [(CUICatalogCSIGenerator *)v15 setFlattenedBitmap:v17];
  }

  return v15;
}

- (void)addLayerReference:(id)reference withImage:(CGImage *)image atScale:(int64_t)scale
{
  v19.receiver = self;
  v19.super_class = CUICatalogCSIGenerator;
  [(CSIGenerator *)&v19 addLayerReference:?];
  flattenedBitmap = [(CUICatalogCSIGenerator *)self flattenedBitmap];
  if (flattenedBitmap)
  {
    bitmapContext = [(CSIBitmapWrapper *)flattenedBitmap bitmapContext];
    CGContextSetBlendMode(bitmapContext, [reference blendMode]);
    [reference opacity];
    CGContextSetAlpha(bitmapContext, v11);
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, scale, scale);
    [reference frame];
    v17 = v18;
    v21 = CGRectApplyAffineTransform(v20, &v17);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    [(CSIGenerator *)self size];
    v22.origin.y = -(y + height - v16 * scale);
    v22.origin.x = x;
    v22.size.width = width;
    v22.size.height = height;
    CGContextDrawImage(bitmapContext, v22, image);
  }
}

@end