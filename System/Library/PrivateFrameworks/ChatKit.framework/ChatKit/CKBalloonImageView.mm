@interface CKBalloonImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKBalloonImageView)init;
- (CKBalloonImageView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setImageHidden:(BOOL)hidden;
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

- (CKBalloonImageView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKBalloonImageView;
  result = [(CKBalloonImageView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_contentsTransformAnimationEnabled = 0;
  }

  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contentsTransform"])
  {
    contentsTransformAnimationEnabled = self->_contentsTransformAnimationEnabled;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKBalloonImageView;
    contentsTransformAnimationEnabled = [(CKBalloonImageView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return contentsTransformAnimationEnabled;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
  image = [(CKBalloonImageView *)self image];
  v3 = image;
  if (!image)
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v14 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_8;
  }

  [image alignmentRectInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageOrientation = [v3 imageOrientation];
  if (!imageOrientation)
  {
LABEL_7:
    v14 = v7;
    goto LABEL_8;
  }

  v13 = imageOrientation;
  if (imageOrientation != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIEdgeInsets CKEdgeInsetsWithImageOrientation(UIEdgeInsets, UIImageOrientation)"}];
    [currentHandler handleFailureInFunction:v16 file:@"CKGeometry.h" lineNumber:443 description:{@"CKEdgeInsetsWithImageOrientation %ld hasn't been implemented", v13}];

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
  layer = [(CKBalloonImageView *)self layer];
  image = [(CKBalloonImageView *)self image];
  if ([(CKBalloonImageView *)self imageHidden]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [layer setContents:0];
  }

  else
  {
    [layer setContents:{objc_msgSend(image, "CGImage")}];
    [image scale];
    [layer setContentsScale:?];
  }

  [image size];
  v6 = v5;
  v8 = v7;
  [image capInsets];
  [layer setContentsCenter:{v12 / v6, v9 / v8, (v6 - v12 - v10) / v6, (v8 - v9 - v11) / v8}];
  if ([image imageOrientation] == 4)
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
  [layer setContentsTransform:&v17];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(CKBalloonImageView *)self image:fits.width];
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

- (void)setImageHidden:(BOOL)hidden
{
  if (self->_imageHidden != hidden)
  {
    self->_imageHidden = hidden;
    [(CKBalloonImageView *)self setNeedsLayout];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    v5 = [(UIImage *)imageCopy copy];

    objc_storeStrong(&self->_image, v5);
    [(CKBalloonImageView *)self setNeedsLayout];
    imageCopy = v5;
  }
}

@end