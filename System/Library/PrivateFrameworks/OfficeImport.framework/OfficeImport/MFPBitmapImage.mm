@interface MFPBitmapImage
- (CGSize)pixelSize;
- (CGSize)pointSize;
- (MFPBitmapImage)initWithBitmapData:(id)data;
- (void)drawInRect:(CGRect)rect fromRect:(CGRect)fromRect unit:(int)unit effect:(id)effect;
@end

@implementation MFPBitmapImage

- (MFPBitmapImage)initWithBitmapData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = MFPBitmapImage;
  v6 = [(MFPBitmapImage *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mBitmapData, data);
    v8 = [[OITSUImage alloc] initWithData:dataCopy];
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

- (void)drawInRect:(CGRect)rect fromRect:(CGRect)fromRect unit:(int)unit effect:(id)effect
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  [MFPGraphics unitsPerInch:*&unit, effect];
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