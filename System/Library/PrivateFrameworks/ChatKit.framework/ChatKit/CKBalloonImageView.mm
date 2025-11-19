@interface CKBalloonImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKBalloonImageView)init;
- (CKBalloonImageView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)setImageHidden:(BOOL)a3;
@end

@implementation CKBalloonImageView

- (CKBalloonImageView)init
{
  result = [(CKBalloonImageView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    result->_contentsTransformAnimationEnabled = 0;
  }

  return result;
}

- (CKBalloonImageView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKBalloonImageView;
  result = [(CKBalloonImageView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_contentsTransformAnimationEnabled = 0;
  }

  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contentsTransform"])
  {
    contentsTransformAnimationEnabled = self->_contentsTransformAnimationEnabled;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKBalloonImageView;
    contentsTransformAnimationEnabled = [(CKBalloonImageView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return contentsTransformAnimationEnabled;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKBalloonImageView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CKBalloonImageView;
  [(CKBalloonImageView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(CKBalloonImageView *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CKBalloonImageView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = CKBalloonImageView;
  [(CKBalloonImageView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(CKBalloonImageView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = [(CKBalloonImageView *)self image];
  v3 = v2;
  if (!v2)
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v14 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_8;
  }

  [v2 alignmentRectInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 imageOrientation];
  if (!v12)
  {
LABEL_7:
    v14 = v7;
    goto LABEL_8;
  }

  v13 = v12;
  if (v12 != 4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIEdgeInsets CKEdgeInsetsWithImageOrientation(UIEdgeInsets, UIImageOrientation)"}];
    [v15 handleFailureInFunction:v16 file:@"CKGeometry.h" lineNumber:443 description:{@"CKEdgeInsetsWithImageOrientation %ld hasn't been implemented", v13}];

    goto LABEL_7;
  }

  v14 = v11;
  v11 = v7;
LABEL_8:

  v17 = v5;
  v18 = v14;
  v19 = v9;
  v20 = v11;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKBalloonImageView;
  [(CKBalloonImageView *)&v22 layoutSubviews];
  v3 = [(CKBalloonImageView *)self layer];
  v4 = [(CKBalloonImageView *)self image];
  if ([(CKBalloonImageView *)self imageHidden]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 setContents:0];
  }

  else
  {
    [v3 setContents:{objc_msgSend(v4, "CGImage")}];
    [v4 scale];
    [v3 setContentsScale:?];
  }

  [v4 size];
  v6 = v5;
  v8 = v7;
  [v4 capInsets];
  [v3 setContentsCenter:{v12 / v6, v9 / v8, (v6 - v12 - v10) / v6, (v8 - v9 - v11) / v8}];
  if ([v4 imageOrientation] == 4)
  {
    [(CKBalloonImageView *)self bounds];
    v21 = 0uLL;
    v14 = v13;
    v15 = -1.0;
    v16 = 1.0;
  }

  else
  {
    v15 = *MEMORY[0x1E695EFD0];
    v21 = *(MEMORY[0x1E695EFD0] + 8);
    v16 = *(MEMORY[0x1E695EFD0] + 24);
    v14 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v17 = v15;
  v18 = v21;
  v19 = v16;
  v20 = v14;
  [v3 setContentsTransform:&v17];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(CKBalloonImageView *)self image:a3.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)prepareForReuse
{
  [(CKBalloonImageView *)self setImageHidden:0];

  [(CKBalloonImageView *)self setCurrentFrameIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)setImageHidden:(BOOL)a3
{
  if (self->_imageHidden != a3)
  {
    self->_imageHidden = a3;
    [(CKBalloonImageView *)self setNeedsLayout];
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if (self->_image != v4)
  {
    v6 = v4;
    v5 = [(UIImage *)v4 copy];

    objc_storeStrong(&self->_image, v5);
    [(CKBalloonImageView *)self setNeedsLayout];
    v4 = v5;
  }
}

@end