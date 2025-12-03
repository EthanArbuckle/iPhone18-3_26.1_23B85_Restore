@interface SUUIParallaxImageView
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIParallaxImageView)initWithFrame:(CGRect)frame;
- (void)_updateInnerImageView;
- (void)setFrame:(CGRect)frame;
- (void)setImagePadding:(UIEdgeInsets)padding;
- (void)setImageSize:(CGSize)size;
- (void)updateForChangedDistanceFromVanishingPoint;
@end

@implementation SUUIParallaxImageView

- (SUUIParallaxImageView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUUIParallaxImageView;
  v3 = [(SUUIParallaxImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [SUUIImageView alloc];
    [(SUUIParallaxImageView *)v3 bounds];
    v5 = [(SUUIImageView *)v4 initWithFrame:?];
    innerImageView = v3->_innerImageView;
    v3->_innerImageView = v5;

    [(SUUIParallaxImageView *)v3 addSubview:v3->_innerImageView];
    [(SUUIParallaxImageView *)v3 setClipsToBounds:1];
  }

  return v3;
}

- (void)setImagePadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_imagePadding.top), vceqq_f64(v4, *&self->_imagePadding.bottom)))) & 1) == 0)
  {
    self->_imagePadding = padding;
    [(SUUIParallaxImageView *)self _updateInnerImageView];

    [(SUUIParallaxImageView *)self setNeedsLayout];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setImageSize:(CGSize)size
{
  if (size.width != self->_imageSize.width || size.height != self->_imageSize.height)
  {
    self->_imageSize = size;
    [(SUUIParallaxImageView *)self _updateInnerImageView];

    [(SUUIParallaxImageView *)self setNeedsLayout];
  }
}

- (void)updateForChangedDistanceFromVanishingPoint
{
  [(SUUIParallaxImageView *)self frame];
  v4 = v3;
  v6 = v5;
  window = [(SUUIParallaxImageView *)self window];
  [(SUUIParallaxImageView *)self convertPoint:window toView:v4, v6];
  v9 = v8;
  v11 = v10;

  window2 = [(SUUIParallaxImageView *)self window];
  [window2 frame];
  v13 = v9 / CGRectGetWidth(v30);

  window3 = [(SUUIParallaxImageView *)self window];
  [window3 frame];
  v15 = (v11 + -64.0) / (CGRectGetHeight(v31) + -128.0);

  v16 = 1.0;
  if (v13 <= 1.0)
  {
    v17 = v13;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = fmax(v17, 0.0);
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  v19 = fmax(v16, 0.0);
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  innerImageView = self->_innerImageView;
  if (innerImageView)
  {
    [(SUUIImageView *)innerImageView transform];
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
  }

  top = self->_imagePadding.top;
  left = self->_imagePadding.left;
  bottom = self->_imagePadding.bottom;
  right = self->_imagePadding.right;
  *&v29 = v18 * (left + right);
  *(&v29 + 1) = v19 * (top + bottom);
  if (right > 0.00000011920929 && left < 0.00000011920929)
  {
    *&v29 = -(v18 * (left + right));
  }

  if (bottom > 0.00000011920929 && top < 0.00000011920929)
  {
    *(&v29 + 1) = -(v19 * (top + bottom));
  }

  v25 = self->_innerImageView;
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  [(SUUIImageView *)v25 setTransform:v26];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SUUIParallaxImageView *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = SUUIParallaxImageView;
    [(SUUIParallaxImageView *)&v12 setFrame:x, y, width, height];
    [(SUUIParallaxImageView *)self _updateInnerImageView];
    [(SUUIParallaxImageView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateInnerImageView
{
  [(SUUIParallaxImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = self->_imagePadding.left + self->_imagePadding.right;
  v9 = v8 + v7;
  v10 = self->_imagePadding.top + self->_imagePadding.bottom;
  v12 = v11 + v10;
  [(SUUIImageView *)self->_innerImageView setImageSize:v7 + self->_imageSize.width, v10 + self->_imageSize.height];
  innerImageView = self->_innerImageView;

  [(SUUIImageView *)innerImageView setFrame:v4, v6, v9, v12];
}

@end