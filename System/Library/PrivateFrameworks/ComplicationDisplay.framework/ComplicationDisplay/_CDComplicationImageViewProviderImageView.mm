@interface _CDComplicationImageViewProviderImageView
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)sizeToFit;
@end

@implementation _CDComplicationImageViewProviderImageView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(_CDComplicationImageViewProviderImageView *)self image:a3.width];
  [v4 size];

  width = self->_maxSize.width;
  height = self->_maxSize.height;
  v7 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v8 = [v7 device];

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
  v3 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v4 = [v3 device];

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