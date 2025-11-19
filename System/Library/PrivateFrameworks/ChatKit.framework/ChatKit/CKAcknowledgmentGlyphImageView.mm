@interface CKAcknowledgmentGlyphImageView
- (CKAcknowledgmentGlyphImageView)initWithImage:(id)a3;
- (void)setImage:(id)a3;
- (void)sizeToFit;
@end

@implementation CKAcknowledgmentGlyphImageView

- (CKAcknowledgmentGlyphImageView)initWithImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKAcknowledgmentGlyphImageView;
  v5 = [(CKAcknowledgmentGlyphImageView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(CKAcknowledgmentGlyphImageView *)v5 setImage:v4];
  }

  return v6;
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [v5 CGImage];

  v7 = [(CKAcknowledgmentGlyphImageView *)self layer];
  [v7 setContents:v6];
}

- (void)sizeToFit
{
  v3 = [(CKAcknowledgmentGlyphImageView *)self image];

  if (v3)
  {
    [(CKAcknowledgmentGlyphImageView *)self bounds];
    v5 = v4;
    v7 = v6;
    v8 = [(CKAcknowledgmentGlyphImageView *)self image];
    [v8 size];
    v10 = v9;
    v12 = v11;

    [(CKAcknowledgmentGlyphImageView *)self setBounds:v5, v7, v10, v12];
  }
}

@end