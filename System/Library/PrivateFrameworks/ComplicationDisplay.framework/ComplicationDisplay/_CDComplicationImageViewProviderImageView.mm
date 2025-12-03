@interface _CDComplicationImageViewProviderImageView
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)sizeToFit;
@end

@implementation _CDComplicationImageViewProviderImageView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_CDComplicationImageViewProviderImageView *)self image:fits.width];
  [v4 size];

  width = self->_maxSize.width;
  height = self->_maxSize.height;
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];

  CLKFloorForDevice();
  v10 = v9;
  CLKFloorForDevice();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)sizeToFit
{
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];

  [(_CDComplicationImageViewProviderImageView *)self transform];
  if (CGAffineTransformIsIdentity(&v9))
  {
    [(_CDComplicationImageViewProviderImageView *)self frame];
    [(_CDComplicationImageViewProviderImageView *)self sizeThatFits:v5, v6];
    CLKPixelAlignRectForDevice();
    [(_CDComplicationImageViewProviderImageView *)self setFrame:?];
  }

  else
  {
    [(_CDComplicationImageViewProviderImageView *)self bounds];
    [(_CDComplicationImageViewProviderImageView *)self sizeThatFits:v7, v8];
    CLKPixelAlignRectForDevice();
    [(_CDComplicationImageViewProviderImageView *)self setBounds:?];
  }
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end