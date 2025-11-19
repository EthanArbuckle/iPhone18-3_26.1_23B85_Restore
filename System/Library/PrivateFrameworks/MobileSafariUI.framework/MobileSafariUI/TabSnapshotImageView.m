@interface TabSnapshotImageView
+ (CGRect)contentsRectWithSnapshotSize:(CGSize)a3 imageViewSize:(CGSize)a4 imagePosition:(CGPoint)a5 cropInsets:(UIEdgeInsets)a6;
+ (CGSize)imageSizeOnScreen:(id)a3;
+ (double)imageScaleRatioWithOnScreenImageSize:(CGSize)a3 imageViewSize:(CGSize)a4 cropInsets:(UIEdgeInsets)a5;
- (CGPoint)imagePosition;
- (TabSnapshotImageView)initWithFrame:(CGRect)a3;
- (TabSnapshotImageView)initWithImage:(id)a3;
- (UIEdgeInsets)cropInsets;
- (double)imageScaleRatio;
- (void)layoutSubviews;
- (void)setCropInsets:(UIEdgeInsets)a3;
- (void)setImage:(id)a3;
- (void)setImagePosition:(CGPoint)a3;
- (void)updateImageAlignment;
@end

@implementation TabSnapshotImageView

- (TabSnapshotImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = TabSnapshotImageView;
  v3 = [(TabSnapshotImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TabSnapshotImageView *)v3 _setUpImageView];
    v5 = v4;
  }

  return v4;
}

- (TabSnapshotImageView)initWithImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = TabSnapshotImageView;
  v3 = [(TabSnapshotImageView *)&v7 initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    [(TabSnapshotImageView *)v3 _setUpImageView];
    v5 = v4;
  }

  return v4;
}

- (void)setCropInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_cropInsets.top, v3), vceqq_f64(*&self->_cropInsets.bottom, v4)))) & 1) == 0)
  {
    self->_cropInsets = a3;
    if (self->_keepImageAligned)
    {
      [(TabSnapshotImageView *)self updateImageAlignment];
    }
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(TabSnapshotImageView *)self image];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = TabSnapshotImageView;
    [(TabSnapshotImageView *)&v6 setImage:v4];
    if (self->_keepImageAligned)
    {
      [(TabSnapshotImageView *)self updateImageAlignment];
    }
  }
}

- (void)setImagePosition:(CGPoint)a3
{
  if (a3.x != self->_imagePosition.x || a3.y != self->_imagePosition.y)
  {
    self->_imagePosition = a3;
    if (self->_keepImageAligned)
    {
      [(TabSnapshotImageView *)self updateImageAlignment];
    }
  }
}

- (void)updateImageAlignment
{
  v3 = objc_opt_class();
  v16 = [(TabSnapshotImageView *)self image];
  v4 = imageSizeOnScreen(v16);
  v6 = v5;
  [(TabSnapshotImageView *)self bounds];
  [v3 contentsRectWithSnapshotSize:v4 imageViewSize:v6 imagePosition:*&self->_cropInsets.top cropInsets:{*&self->_cropInsets.left, *&self->_cropInsets.bottom, *&self->_cropInsets.right}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(TabSnapshotImageView *)self layer];
  [v15 setContentsRect:{v8, v10, v12, v14}];
}

- (double)imageScaleRatio
{
  v3 = [(TabSnapshotImageView *)self image];
  [v3 size];
  v5 = v4;
  v7 = v6;
  [(TabSnapshotImageView *)self bounds];
  v12 = 1.0;
  if (v3)
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
          [v17 imageScaleRatioWithOnScreenImageSize:imageSizeOnScreen(v3) imageViewSize:? cropInsets:?];
          v12 = v18;
        }
      }
    }
  }

  return v12;
}

+ (CGSize)imageSizeOnScreen:(id)a3
{
  v3 = imageSizeOnScreen(a3);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (double)imageScaleRatioWithOnScreenImageSize:(CGSize)a3 imageViewSize:(CGSize)a4 cropInsets:(UIEdgeInsets)a5
{
  v5 = a4.height / (a3.height - a5.top - a5.bottom);
  result = a4.width / (a3.width - a5.left - a5.right);
  if (v5 > result)
  {
    return v5;
  }

  return result;
}

+ (CGRect)contentsRectWithSnapshotSize:(CGSize)a3 imageViewSize:(CGSize)a4 imagePosition:(CGPoint)a5 cropInsets:(UIEdgeInsets)a6
{
  height = a4.height;
  v7 = 1.0;
  v8 = 1.0;
  v9 = 0.0;
  v10 = 0.0;
  if (a3.width != 0.0)
  {
    v11 = a3.height;
    if (a3.height != 0.0 && a4.width != 0.0 && height != 0.0)
    {
      width = a3.width;
      [objc_opt_class() imageScaleRatioWithOnScreenImageSize:a3.width imageViewSize:a3.height cropInsets:{a4.width, height, a6.top, a6.left, a6.bottom, a6.right}];
      v13 = width - a6.left - a6.right;
      v15 = (v11 - a6.top - a6.bottom) * v14;
      v10 = a5.x / (v13 * v14);
      v9 = (a5.y + (v15 - height) * -0.5) / v15;
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