@interface CUICatalogCSIGenerator
- (CUICatalogCSIGenerator)initWithLayerStackData:(id)a3 type:(int64_t)a4 withCanvasSize:(CGSize)a5 isOpaque:(BOOL)a6 allowsWide:(BOOL)a7 atScale:(int64_t)a8;
- (void)addLayerReference:(id)a3 withImage:(CGImage *)a4 atScale:(int64_t)a5;
- (void)dealloc;
@end

@implementation CUICatalogCSIGenerator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUICatalogCSIGenerator;
  [(CSIGenerator *)&v3 dealloc];
}

- (CUICatalogCSIGenerator)initWithLayerStackData:(id)a3 type:(int64_t)a4 withCanvasSize:(CGSize)a5 isOpaque:(BOOL)a6 allowsWide:(BOOL)a7 atScale:(int64_t)a8
{
  v9 = a7;
  v10 = a6;
  height = a5.height;
  width = a5.width;
  v19.receiver = self;
  v19.super_class = CUICatalogCSIGenerator;
  v14 = [CSIGenerator initWithLayerStackData:sel_initWithLayerStackData_type_withCanvasSize_ type:a3 withCanvasSize:?];
  v15 = v14;
  if ((a4 - 1021) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [(CSIGenerator *)v14 setScaleFactor:a8];
    v16 = [[CSIBitmapWrapper alloc] initWithPixelWidth:(width * a8) pixelHeight:(height * a8)];
    v17 = v16;
    if (v10)
    {
      [(CSIBitmapWrapper *)v16 setSourceAlphaInfo:6];
    }

    if (v9)
    {
      [(CSIBitmapWrapper *)v17 setPixelFormat:1380401751];
      [(CSIBitmapWrapper *)v17 setColorSpaceID:4];
    }

    [(CUICatalogCSIGenerator *)v15 setFlattenedBitmap:v17];
  }

  return v15;
}

- (void)addLayerReference:(id)a3 withImage:(CGImage *)a4 atScale:(int64_t)a5
{
  v19.receiver = self;
  v19.super_class = CUICatalogCSIGenerator;
  [(CSIGenerator *)&v19 addLayerReference:?];
  v9 = [(CUICatalogCSIGenerator *)self flattenedBitmap];
  if (v9)
  {
    v10 = [(CSIBitmapWrapper *)v9 bitmapContext];
    CGContextSetBlendMode(v10, [a3 blendMode]);
    [a3 opacity];
    CGContextSetAlpha(v10, v11);
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, a5, a5);
    [a3 frame];
    v17 = v18;
    v21 = CGRectApplyAffineTransform(v20, &v17);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    [(CSIGenerator *)self size];
    v22.origin.y = -(y + height - v16 * a5);
    v22.origin.x = x;
    v22.size.width = width;
    v22.size.height = height;
    CGContextDrawImage(v10, v22, a4);
  }
}

@end