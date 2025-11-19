@interface CEKMultiplyImageView
- (CEKMultiplyImageView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (void)setContentsMultiplyColor:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation CEKMultiplyImageView

- (CEKMultiplyImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CEKMultiplyImageView;
  v3 = [(CEKMultiplyImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CEKMultiplyImageView *)v3 setUserInteractionEnabled:0];
    v5 = v4;
  }

  return v4;
}

- (void)setContentsMultiplyColor:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_contentsMultiplyColor] & 1) == 0)
  {
    objc_storeStrong(&self->_contentsMultiplyColor, a3);
    v5 = [v7 CGColor];
    v6 = [(CEKMultiplyImageView *)self layer];
    [v6 setContentsMultiplyColor:v5];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    objc_storeStrong(&self->_image, a3);
    v6 = [(UIImage *)v5 imageOrientation];
    v7 = *MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v18.a = *MEMORY[0x1E695EFD0];
    *&v18.c = v8;
    v9 = *(MEMORY[0x1E695EFD0] + 32);
    *&v18.tx = v9;
    if (v6)
    {
      *&v13.a = v7;
      *&v13.c = v8;
      *&v13.tx = v9;
      [(UIImage *)v5 size];
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

    v12 = [(CEKMultiplyImageView *)self layer];
    [v12 setContents:{-[UIImage CGImage](v5, "CGImage")}];
    v17 = v18;
    [v12 setContentsTransform:&v17];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CEKMultiplyImageView *)self image];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end