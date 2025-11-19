@interface MFPBitmapImage
- (CGSize)pixelSize;
- (CGSize)pointSize;
- (MFPBitmapImage)initWithBitmapData:(id)a3;
- (void)drawInRect:(CGRect)a3 fromRect:(CGRect)a4 unit:(int)a5 effect:(id)a6;
@end

@implementation MFPBitmapImage

- (MFPBitmapImage)initWithBitmapData:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MFPBitmapImage;
  v6 = [(MFPBitmapImage *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mBitmapData, a3);
    v8 = [[OITSUImage alloc] initWithData:v5];
    mPhoneBitmapImage = v7->mPhoneBitmapImage;
    v7->mPhoneBitmapImage = v8;

    v7->mPixelSize.width = CGImageGetWidth([(OITSUImage *)v7->mPhoneBitmapImage CGImage]);
    v7->mPixelSize.height = CGImageGetHeight([(OITSUImage *)v7->mPhoneBitmapImage CGImage]);
    [(OITSUImage *)v7->mPhoneBitmapImage size];
    v7->mPointSize.width = v10;
    v7->mPointSize.height = v11;
  }

  return v7;
}

- (void)drawInRect:(CGRect)a3 fromRect:(CGRect)a4 unit:(int)a5 effect:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  [MFPGraphics unitsPerInch:*&a5, a6];
  if ((v15 / 72.0) == 0.0)
  {
    v20 = self->mPointSize.width / self->mPixelSize.width;
    v16 = NSScaleRect2(x, y, width, height, v20);
  }

  else
  {
    v16 = NSScaleRect(x, y, width, height, v15 / 72.0);
  }

  mPhoneBitmapImage = self->mPhoneBitmapImage;

  [(OITSUImage *)mPhoneBitmapImage drawInRect:1 fromRect:v13 isFlipped:v12, v11, v10, v16, v17, v18, v19];
}

- (CGSize)pixelSize
{
  width = self->mPixelSize.width;
  height = self->mPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pointSize
{
  width = self->mPointSize.width;
  height = self->mPointSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end