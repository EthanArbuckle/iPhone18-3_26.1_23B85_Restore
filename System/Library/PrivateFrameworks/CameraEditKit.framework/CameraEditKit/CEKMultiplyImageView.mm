@interface CEKMultiplyImageView
- (CEKMultiplyImageView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (void)setContentsMultiplyColor:(id)color;
- (void)setImage:(id)image;
@end

@implementation CEKMultiplyImageView

- (CEKMultiplyImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CEKMultiplyImageView;
  v3 = [(CEKMultiplyImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKMultiplyImageView *)v3 setUserInteractionEnabled:0];
    v5 = v4;
  }

  return v4;
}

- (void)setContentsMultiplyColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_contentsMultiplyColor] & 1) == 0)
  {
    objc_storeStrong(&self->_contentsMultiplyColor, color);
    cGColor = [colorCopy CGColor];
    layer = [(CEKMultiplyImageView *)self layer];
    [layer setContentsMultiplyColor:cGColor];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    imageOrientation = [(UIImage *)imageCopy imageOrientation];
    v7 = *MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v18.a = *MEMORY[0x1E695EFD0];
    *&v18.c = v8;
    v9 = *(MEMORY[0x1E695EFD0] + 32);
    *&v18.tx = v9;
    if (imageOrientation)
    {
      *&v13.a = v7;
      *&v13.c = v8;
      *&v13.tx = v9;
      [(UIImage *)imageCopy size];
      memset(&v17, 0, sizeof(v17));
      CGAffineTransformMakeTranslation(&v17, v10 * -0.5, v11 * -0.5);
      t1 = v13;
      t2 = v17;
      CGAffineTransformConcat(&v18, &t1, &t2);
      PLTransformForImageOrientation();
      v14 = v18;
      CGAffineTransformConcat(&t1, &v14, &t2);
      v18 = t1;
      t1 = v17;
      CGAffineTransformInvert(&t2, &t1);
      v14 = v18;
      CGAffineTransformConcat(&t1, &v14, &t2);
      v18 = t1;
    }

    layer = [(CEKMultiplyImageView *)self layer];
    [layer setContents:{-[UIImage CGImage](imageCopy, "CGImage")}];
    v17 = v18;
    [layer setContentsTransform:&v17];
  }
}

- (CGSize)intrinsicContentSize
{
  image = [(CEKMultiplyImageView *)self image];
  [image size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end