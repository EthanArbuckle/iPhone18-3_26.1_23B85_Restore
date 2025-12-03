@interface TabSnapshotImageView
+ (CGRect)contentsRectWithSnapshotSize:(CGSize)size imageViewSize:(CGSize)viewSize imagePosition:(CGPoint)position cropInsets:(UIEdgeInsets)insets;
+ (CGSize)imageSizeOnScreen:(id)screen;
+ (double)imageScaleRatioWithOnScreenImageSize:(CGSize)size imageViewSize:(CGSize)viewSize cropInsets:(UIEdgeInsets)insets;
- (CGPoint)imagePosition;
- (TabSnapshotImageView)initWithFrame:(CGRect)frame;
- (TabSnapshotImageView)initWithImage:(id)image;
- (UIEdgeInsets)cropInsets;
- (double)imageScaleRatio;
- (void)layoutSubviews;
- (void)setCropInsets:(UIEdgeInsets)insets;
- (void)setImage:(id)image;
- (void)setImagePosition:(CGPoint)position;
- (void)updateImageAlignment;
@end

@implementation TabSnapshotImageView

- (TabSnapshotImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TabSnapshotImageView;
  v3 = [(TabSnapshotImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TabSnapshotImageView *)v3 _setUpImageView];
    v5 = v4;
  }

  return v4;
}

- (TabSnapshotImageView)initWithImage:(id)image
{
  v7.receiver = self;
  v7.super_class = TabSnapshotImageView;
  v3 = [(TabSnapshotImageView *)&v7 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(TabSnapshotImageView *)v3 _setUpImageView];
    v5 = v4;
  }

  return v4;
}

- (void)setCropInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_cropInsets.top, v3), vceqq_f64(*&self->_cropInsets.bottom, v4)))) & 1) == 0)
  {
    self->_cropInsets = insets;
    if (self->_keepImageAligned)
    {
      [(TabSnapshotImageView *)self updateImageAlignment];
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(TabSnapshotImageView *)self image];

  if (image != imageCopy)
  {
    v6.receiver = self;
    v6.super_class = TabSnapshotImageView;
    [(TabSnapshotImageView *)&v6 setImage:imageCopy];
    if (self->_keepImageAligned)
    {
      [(TabSnapshotImageView *)self updateImageAlignment];
    }
  }
}

- (void)setImagePosition:(CGPoint)position
{
  if (position.x != self->_imagePosition.x || position.y != self->_imagePosition.y)
  {
    self->_imagePosition = position;
    if (self->_keepImageAligned)
    {
      [(TabSnapshotImageView *)self updateImageAlignment];
    }
  }
}

- (void)updateImageAlignment
{
  v3 = objc_opt_class();
  image = [(TabSnapshotImageView *)self image];
  v4 = imageSizeOnScreen(image);
  v6 = v5;
  [(TabSnapshotImageView *)self bounds];
  [v3 contentsRectWithSnapshotSize:v4 imageViewSize:v6 imagePosition:*&self->_cropInsets.top cropInsets:{*&self->_cropInsets.left, *&self->_cropInsets.bottom, *&self->_cropInsets.right}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  layer = [(TabSnapshotImageView *)self layer];
  [layer setContentsRect:{v8, v10, v12, v14}];
}

- (double)imageScaleRatio
{
  image = [(TabSnapshotImageView *)self image];
  [image size];
  v5 = v4;
  v7 = v6;
  [(TabSnapshotImageView *)self bounds];
  v12 = 1.0;
  if (image)
  {
    if (v5 != 0.0 && v7 != 0.0)
    {
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v16 = v11;
      if (CGRectGetWidth(*&v8) != 0.0)
      {
        v20.origin.x = v13;
        v20.origin.y = v14;
        v20.size.width = v15;
        v20.size.height = v16;
        if (CGRectGetHeight(v20) != 0.0)
        {
          v17 = objc_opt_class();
          [v17 imageScaleRatioWithOnScreenImageSize:imageSizeOnScreen(image) imageViewSize:? cropInsets:?];
          v12 = v18;
        }
      }
    }
  }

  return v12;
}

+ (CGSize)imageSizeOnScreen:(id)screen
{
  v3 = imageSizeOnScreen(screen);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (double)imageScaleRatioWithOnScreenImageSize:(CGSize)size imageViewSize:(CGSize)viewSize cropInsets:(UIEdgeInsets)insets
{
  v5 = viewSize.height / (size.height - insets.top - insets.bottom);
  result = viewSize.width / (size.width - insets.left - insets.right);
  if (v5 > result)
  {
    return v5;
  }

  return result;
}

+ (CGRect)contentsRectWithSnapshotSize:(CGSize)size imageViewSize:(CGSize)viewSize imagePosition:(CGPoint)position cropInsets:(UIEdgeInsets)insets
{
  height = viewSize.height;
  v7 = 1.0;
  v8 = 1.0;
  v9 = 0.0;
  v10 = 0.0;
  if (size.width != 0.0)
  {
    v11 = size.height;
    if (size.height != 0.0 && viewSize.width != 0.0 && height != 0.0)
    {
      width = size.width;
      [objc_opt_class() imageScaleRatioWithOnScreenImageSize:size.width imageViewSize:size.height cropInsets:{viewSize.width, height, insets.top, insets.left, insets.bottom, insets.right}];
      v13 = width - insets.left - insets.right;
      v15 = (v11 - insets.top - insets.bottom) * v14;
      v10 = position.x / (v13 * v14);
      v9 = (position.y + (v15 - height) * -0.5) / v15;
      v8 = v13 / width;
      _SFRoundFloatToPixels();
      v7 = 1.0 - fmax(v16 / v15, 0.0);
    }
  }

  v17 = v10;
  v18 = v9;
  v19 = v8;
  result.size.height = v7;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TabSnapshotImageView;
  [(TabSnapshotImageView *)&v3 layoutSubviews];
  if (self->_keepImageAligned)
  {
    [(TabSnapshotImageView *)self updateImageAlignment];
  }
}

- (CGPoint)imagePosition
{
  x = self->_imagePosition.x;
  y = self->_imagePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)cropInsets
{
  top = self->_cropInsets.top;
  left = self->_cropInsets.left;
  bottom = self->_cropInsets.bottom;
  right = self->_cropInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end