@interface CKAcknowledgmentGlyphImageView
- (CKAcknowledgmentGlyphImageView)initWithImage:(id)image;
- (void)setImage:(id)image;
- (void)sizeToFit;
@end

@implementation CKAcknowledgmentGlyphImageView

- (CKAcknowledgmentGlyphImageView)initWithImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = CKAcknowledgmentGlyphImageView;
  v5 = [(CKAcknowledgmentGlyphImageView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(CKAcknowledgmentGlyphImageView *)v5 setImage:imageCopy];
  }

  return v6;
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  cGImage = [imageCopy CGImage];

  layer = [(CKAcknowledgmentGlyphImageView *)self layer];
  [layer setContents:cGImage];
}

- (void)sizeToFit
{
  image = [(CKAcknowledgmentGlyphImageView *)self image];

  if (image)
  {
    [(CKAcknowledgmentGlyphImageView *)self bounds];
    v5 = v4;
    v7 = v6;
    image2 = [(CKAcknowledgmentGlyphImageView *)self image];
    [image2 size];
    v10 = v9;
    v12 = v11;

    [(CKAcknowledgmentGlyphImageView *)self setBounds:v5, v7, v10, v12];
  }
}

@end