@interface MPUImageStackItemView
- (CGAffineTransform)imageTransform;
- (CGRect)imageContentsRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPUImageStackItemView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setImageAlpha:(double)alpha;
- (void)setImageContentsRect:(CGRect)rect;
- (void)setImageTransform:(CGAffineTransform *)transform;
@end

@implementation MPUImageStackItemView

- (MPUImageStackItemView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = MPUImageStackItemView;
  v3 = [(MPUImageStackItemView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v3->_imageTransform.a = *MEMORY[0x277CBF2C0];
    *&v3->_imageTransform.c = v6;
    *&v3->_imageTransform.tx = *(v5 + 32);
    v3->_imageAlpha = 1.0;
    [(MPUImageStackItemView *)v3 bounds];
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
    imageView = v4->_imageView;
    v4->_imageView = v11;

    [(MPUImageStackItemView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MPUImageStackItemView;
  [(MPUImageStackItemView *)&v4 layoutSubviews];
  imageView = self->_imageView;
  [(MPUImageStackItemView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImageView *)self->_imageView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(UIImageView *)self->_imageView setImage:self->_image];
    [(UIImageView *)self->_imageView setHidden:self->_image == 0];
    v6 = self->_imageAlpha + -1.0;
    [(UIImageView *)self->_imageView setOpaque:fabsf(v6) < 0.00000011921];
    [MEMORY[0x277CD9FF0] commit];
    imageCopy = v7;
  }
}

- (void)setImageAlpha:(double)alpha
{
  if (self->_imageAlpha != alpha)
  {
    self->_imageAlpha = alpha;
    [(UIImageView *)self->_imageView setAlpha:?];
    imageView = self->_imageView;
    v5 = self->_imageAlpha + -1.0;
    v6 = fabsf(v5) < 0.00000011921;

    [(UIImageView *)imageView setOpaque:v6];
  }
}

- (void)setImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_imageContentsRect = &self->_imageContentsRect;
  if (!CGRectEqualToRect(self->_imageContentsRect, rect))
  {
    p_imageContentsRect->origin.x = x;
    p_imageContentsRect->origin.y = y;
    p_imageContentsRect->size.width = width;
    p_imageContentsRect->size.height = height;
    layer = [(UIImageView *)self->_imageView layer];
    [layer setContentsRect:{p_imageContentsRect->origin.x, p_imageContentsRect->origin.y, p_imageContentsRect->size.width, p_imageContentsRect->size.height}];
  }
}

- (void)setImageTransform:(CGAffineTransform *)transform
{
  p_imageTransform = &self->_imageTransform;
  v6 = *&self->_imageTransform.c;
  *&t1.a = *&self->_imageTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_imageTransform.tx;
  v7 = *&transform->c;
  *&v12.a = *&transform->a;
  *&v12.c = v7;
  *&v12.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_imageTransform->c = *&transform->c;
    *&p_imageTransform->tx = v9;
    *&p_imageTransform->a = v8;
    layer = [(UIImageView *)self->_imageView layer];
    v11 = *&p_imageTransform->c;
    *&t1.a = *&p_imageTransform->a;
    *&t1.c = v11;
    *&t1.tx = *&p_imageTransform->tx;
    [layer setAffineTransform:&t1];
  }
}

- (CGRect)imageContentsRect
{
  x = self->_imageContentsRect.origin.x;
  y = self->_imageContentsRect.origin.y;
  width = self->_imageContentsRect.size.width;
  height = self->_imageContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)imageTransform
{
  v3 = *&self[10].a;
  *&retstr->a = *&self[9].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].c;
  return self;
}

@end